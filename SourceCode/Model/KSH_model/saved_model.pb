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
dense_238/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_238/kernel
u
$dense_238/kernel/Read/ReadVariableOpReadVariableOpdense_238/kernel*
_output_shapes

:
*
dtype0
t
dense_238/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_238/bias
m
"dense_238/bias/Read/ReadVariableOpReadVariableOpdense_238/bias*
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
lstm_714/lstm_cell_714/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_714/lstm_cell_714/kernel
?
1lstm_714/lstm_cell_714/kernel/Read/ReadVariableOpReadVariableOplstm_714/lstm_cell_714/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_714/lstm_cell_714/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_714/lstm_cell_714/recurrent_kernel
?
;lstm_714/lstm_cell_714/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_714/lstm_cell_714/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_714/lstm_cell_714/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_714/lstm_cell_714/bias
?
/lstm_714/lstm_cell_714/bias/Read/ReadVariableOpReadVariableOplstm_714/lstm_cell_714/bias*
_output_shapes	
:?*
dtype0
?
lstm_715/lstm_cell_715/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_715/lstm_cell_715/kernel
?
1lstm_715/lstm_cell_715/kernel/Read/ReadVariableOpReadVariableOplstm_715/lstm_cell_715/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_715/lstm_cell_715/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_715/lstm_cell_715/recurrent_kernel
?
;lstm_715/lstm_cell_715/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_715/lstm_cell_715/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_715/lstm_cell_715/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_715/lstm_cell_715/bias
?
/lstm_715/lstm_cell_715/bias/Read/ReadVariableOpReadVariableOplstm_715/lstm_cell_715/bias*
_output_shapes	
:?*
dtype0
?
lstm_716/lstm_cell_716/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_716/lstm_cell_716/kernel
?
1lstm_716/lstm_cell_716/kernel/Read/ReadVariableOpReadVariableOplstm_716/lstm_cell_716/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_716/lstm_cell_716/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_716/lstm_cell_716/recurrent_kernel
?
;lstm_716/lstm_cell_716/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_716/lstm_cell_716/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_716/lstm_cell_716/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_716/lstm_cell_716/bias
?
/lstm_716/lstm_cell_716/bias/Read/ReadVariableOpReadVariableOplstm_716/lstm_cell_716/bias*
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
Adam/dense_238/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_238/kernel/m
?
+Adam/dense_238/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_238/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_238/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_238/bias/m
{
)Adam/dense_238/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_238/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_714/lstm_cell_714/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_714/lstm_cell_714/kernel/m
?
8Adam/lstm_714/lstm_cell_714/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_714/lstm_cell_714/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_714/lstm_cell_714/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_714/lstm_cell_714/recurrent_kernel/m
?
BAdam/lstm_714/lstm_cell_714/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_714/lstm_cell_714/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_714/lstm_cell_714/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_714/lstm_cell_714/bias/m
?
6Adam/lstm_714/lstm_cell_714/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_714/lstm_cell_714/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_715/lstm_cell_715/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_715/lstm_cell_715/kernel/m
?
8Adam/lstm_715/lstm_cell_715/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_715/lstm_cell_715/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_715/lstm_cell_715/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_715/lstm_cell_715/recurrent_kernel/m
?
BAdam/lstm_715/lstm_cell_715/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_715/lstm_cell_715/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_715/lstm_cell_715/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_715/lstm_cell_715/bias/m
?
6Adam/lstm_715/lstm_cell_715/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_715/lstm_cell_715/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_716/lstm_cell_716/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_716/lstm_cell_716/kernel/m
?
8Adam/lstm_716/lstm_cell_716/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_716/lstm_cell_716/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_716/lstm_cell_716/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_716/lstm_cell_716/recurrent_kernel/m
?
BAdam/lstm_716/lstm_cell_716/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_716/lstm_cell_716/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_716/lstm_cell_716/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_716/lstm_cell_716/bias/m
?
6Adam/lstm_716/lstm_cell_716/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_716/lstm_cell_716/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_238/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_238/kernel/v
?
+Adam/dense_238/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_238/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_238/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_238/bias/v
{
)Adam/dense_238/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_238/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_714/lstm_cell_714/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_714/lstm_cell_714/kernel/v
?
8Adam/lstm_714/lstm_cell_714/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_714/lstm_cell_714/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_714/lstm_cell_714/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_714/lstm_cell_714/recurrent_kernel/v
?
BAdam/lstm_714/lstm_cell_714/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_714/lstm_cell_714/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_714/lstm_cell_714/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_714/lstm_cell_714/bias/v
?
6Adam/lstm_714/lstm_cell_714/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_714/lstm_cell_714/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_715/lstm_cell_715/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_715/lstm_cell_715/kernel/v
?
8Adam/lstm_715/lstm_cell_715/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_715/lstm_cell_715/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_715/lstm_cell_715/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_715/lstm_cell_715/recurrent_kernel/v
?
BAdam/lstm_715/lstm_cell_715/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_715/lstm_cell_715/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_715/lstm_cell_715/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_715/lstm_cell_715/bias/v
?
6Adam/lstm_715/lstm_cell_715/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_715/lstm_cell_715/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_716/lstm_cell_716/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_716/lstm_cell_716/kernel/v
?
8Adam/lstm_716/lstm_cell_716/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_716/lstm_cell_716/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_716/lstm_cell_716/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_716/lstm_cell_716/recurrent_kernel/v
?
BAdam/lstm_716/lstm_cell_716/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_716/lstm_cell_716/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_716/lstm_cell_716/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_716/lstm_cell_716/bias/v
?
6Adam/lstm_716/lstm_cell_716/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_716/lstm_cell_716/bias/v*
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
VARIABLE_VALUEdense_238/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_238/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_714/lstm_cell_714/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_714/lstm_cell_714/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_714/lstm_cell_714/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_715/lstm_cell_715/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_715/lstm_cell_715/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_715/lstm_cell_715/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_716/lstm_cell_716/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_716/lstm_cell_716/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_716/lstm_cell_716/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_238/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_238/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_714/lstm_cell_714/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_714/lstm_cell_714/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_714/lstm_cell_714/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_715/lstm_cell_715/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_715/lstm_cell_715/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_715/lstm_cell_715/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_716/lstm_cell_716/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_716/lstm_cell_716/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_716/lstm_cell_716/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_238/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_238/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_714/lstm_cell_714/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_714/lstm_cell_714/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_714/lstm_cell_714/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_715/lstm_cell_715/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_715/lstm_cell_715/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_715/lstm_cell_715/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_716/lstm_cell_716/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_716/lstm_cell_716/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_716/lstm_cell_716/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_714_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_714_inputlstm_714/lstm_cell_714/kernel'lstm_714/lstm_cell_714/recurrent_kernellstm_714/lstm_cell_714/biaslstm_715/lstm_cell_715/kernel'lstm_715/lstm_cell_715/recurrent_kernellstm_715/lstm_cell_715/biaslstm_716/lstm_cell_716/kernel'lstm_716/lstm_cell_716/recurrent_kernellstm_716/lstm_cell_716/biasdense_238/kerneldense_238/bias*
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
%__inference_signature_wrapper_4458116
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_238/kernel/Read/ReadVariableOp"dense_238/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_714/lstm_cell_714/kernel/Read/ReadVariableOp;lstm_714/lstm_cell_714/recurrent_kernel/Read/ReadVariableOp/lstm_714/lstm_cell_714/bias/Read/ReadVariableOp1lstm_715/lstm_cell_715/kernel/Read/ReadVariableOp;lstm_715/lstm_cell_715/recurrent_kernel/Read/ReadVariableOp/lstm_715/lstm_cell_715/bias/Read/ReadVariableOp1lstm_716/lstm_cell_716/kernel/Read/ReadVariableOp;lstm_716/lstm_cell_716/recurrent_kernel/Read/ReadVariableOp/lstm_716/lstm_cell_716/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_238/kernel/m/Read/ReadVariableOp)Adam/dense_238/bias/m/Read/ReadVariableOp8Adam/lstm_714/lstm_cell_714/kernel/m/Read/ReadVariableOpBAdam/lstm_714/lstm_cell_714/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_714/lstm_cell_714/bias/m/Read/ReadVariableOp8Adam/lstm_715/lstm_cell_715/kernel/m/Read/ReadVariableOpBAdam/lstm_715/lstm_cell_715/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_715/lstm_cell_715/bias/m/Read/ReadVariableOp8Adam/lstm_716/lstm_cell_716/kernel/m/Read/ReadVariableOpBAdam/lstm_716/lstm_cell_716/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_716/lstm_cell_716/bias/m/Read/ReadVariableOp+Adam/dense_238/kernel/v/Read/ReadVariableOp)Adam/dense_238/bias/v/Read/ReadVariableOp8Adam/lstm_714/lstm_cell_714/kernel/v/Read/ReadVariableOpBAdam/lstm_714/lstm_cell_714/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_714/lstm_cell_714/bias/v/Read/ReadVariableOp8Adam/lstm_715/lstm_cell_715/kernel/v/Read/ReadVariableOpBAdam/lstm_715/lstm_cell_715/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_715/lstm_cell_715/bias/v/Read/ReadVariableOp8Adam/lstm_716/lstm_cell_716/kernel/v/Read/ReadVariableOpBAdam/lstm_716/lstm_cell_716/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_716/lstm_cell_716/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4461328
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_238/kerneldense_238/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_714/lstm_cell_714/kernel'lstm_714/lstm_cell_714/recurrent_kernellstm_714/lstm_cell_714/biaslstm_715/lstm_cell_715/kernel'lstm_715/lstm_cell_715/recurrent_kernellstm_715/lstm_cell_715/biaslstm_716/lstm_cell_716/kernel'lstm_716/lstm_cell_716/recurrent_kernellstm_716/lstm_cell_716/biastotalcountAdam/dense_238/kernel/mAdam/dense_238/bias/m$Adam/lstm_714/lstm_cell_714/kernel/m.Adam/lstm_714/lstm_cell_714/recurrent_kernel/m"Adam/lstm_714/lstm_cell_714/bias/m$Adam/lstm_715/lstm_cell_715/kernel/m.Adam/lstm_715/lstm_cell_715/recurrent_kernel/m"Adam/lstm_715/lstm_cell_715/bias/m$Adam/lstm_716/lstm_cell_716/kernel/m.Adam/lstm_716/lstm_cell_716/recurrent_kernel/m"Adam/lstm_716/lstm_cell_716/bias/mAdam/dense_238/kernel/vAdam/dense_238/bias/v$Adam/lstm_714/lstm_cell_714/kernel/v.Adam/lstm_714/lstm_cell_714/recurrent_kernel/v"Adam/lstm_714/lstm_cell_714/bias/v$Adam/lstm_715/lstm_cell_715/kernel/v.Adam/lstm_715/lstm_cell_715/recurrent_kernel/v"Adam/lstm_715/lstm_cell_715/bias/v$Adam/lstm_716/lstm_cell_716/kernel/v.Adam/lstm_716/lstm_cell_716/recurrent_kernel/v"Adam/lstm_716/lstm_cell_716/bias/v*4
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
#__inference__traced_restore_4461458??+
?
?
/__inference_lstm_cell_716_layer_call_fn_4461104

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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456623o
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4459827
inputs_0?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4459743*
condR
while_cond_4459742*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?T
?
*sequential_238_lstm_714_while_body_4455488L
Hsequential_238_lstm_714_while_sequential_238_lstm_714_while_loop_counterR
Nsequential_238_lstm_714_while_sequential_238_lstm_714_while_maximum_iterations-
)sequential_238_lstm_714_while_placeholder/
+sequential_238_lstm_714_while_placeholder_1/
+sequential_238_lstm_714_while_placeholder_2/
+sequential_238_lstm_714_while_placeholder_3K
Gsequential_238_lstm_714_while_sequential_238_lstm_714_strided_slice_1_0?
?sequential_238_lstm_714_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_714_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_238_lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0:	?a
Nsequential_238_lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?\
Msequential_238_lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0:	?*
&sequential_238_lstm_714_while_identity,
(sequential_238_lstm_714_while_identity_1,
(sequential_238_lstm_714_while_identity_2,
(sequential_238_lstm_714_while_identity_3,
(sequential_238_lstm_714_while_identity_4,
(sequential_238_lstm_714_while_identity_5I
Esequential_238_lstm_714_while_sequential_238_lstm_714_strided_slice_1?
?sequential_238_lstm_714_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_714_tensorarrayunstack_tensorlistfromtensor]
Jsequential_238_lstm_714_while_lstm_cell_714_matmul_readvariableop_resource:	?_
Lsequential_238_lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource:	d?Z
Ksequential_238_lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource:	???Bsequential_238/lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp?Asequential_238/lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp?Csequential_238/lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp?
Osequential_238/lstm_714/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_238/lstm_714/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_238_lstm_714_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_714_tensorarrayunstack_tensorlistfromtensor_0)sequential_238_lstm_714_while_placeholderXsequential_238/lstm_714/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_238/lstm_714/while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOpLsequential_238_lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_238/lstm_714/while/lstm_cell_714/MatMulMatMulHsequential_238/lstm_714/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_238/lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_238/lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOpNsequential_238_lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_238/lstm_714/while/lstm_cell_714/MatMul_1MatMul+sequential_238_lstm_714_while_placeholder_2Ksequential_238/lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_238/lstm_714/while/lstm_cell_714/addAddV2<sequential_238/lstm_714/while/lstm_cell_714/MatMul:product:0>sequential_238/lstm_714/while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_238/lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOpMsequential_238_lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_238/lstm_714/while/lstm_cell_714/BiasAddBiasAdd3sequential_238/lstm_714/while/lstm_cell_714/add:z:0Jsequential_238/lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_238/lstm_714/while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_238/lstm_714/while/lstm_cell_714/splitSplitDsequential_238/lstm_714/while/lstm_cell_714/split/split_dim:output:0<sequential_238/lstm_714/while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_238/lstm_714/while/lstm_cell_714/SigmoidSigmoid:sequential_238/lstm_714/while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_238/lstm_714/while/lstm_cell_714/Sigmoid_1Sigmoid:sequential_238/lstm_714/while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_238/lstm_714/while/lstm_cell_714/mulMul9sequential_238/lstm_714/while/lstm_cell_714/Sigmoid_1:y:0+sequential_238_lstm_714_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_238/lstm_714/while/lstm_cell_714/ReluRelu:sequential_238/lstm_714/while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_238/lstm_714/while/lstm_cell_714/mul_1Mul7sequential_238/lstm_714/while/lstm_cell_714/Sigmoid:y:0>sequential_238/lstm_714/while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_238/lstm_714/while/lstm_cell_714/add_1AddV23sequential_238/lstm_714/while/lstm_cell_714/mul:z:05sequential_238/lstm_714/while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_238/lstm_714/while/lstm_cell_714/Sigmoid_2Sigmoid:sequential_238/lstm_714/while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_238/lstm_714/while/lstm_cell_714/Relu_1Relu5sequential_238/lstm_714/while/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_238/lstm_714/while/lstm_cell_714/mul_2Mul9sequential_238/lstm_714/while/lstm_cell_714/Sigmoid_2:y:0@sequential_238/lstm_714/while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_238/lstm_714/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_238_lstm_714_while_placeholder_1)sequential_238_lstm_714_while_placeholder5sequential_238/lstm_714/while/lstm_cell_714/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_238/lstm_714/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_238/lstm_714/while/addAddV2)sequential_238_lstm_714_while_placeholder,sequential_238/lstm_714/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_238/lstm_714/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_238/lstm_714/while/add_1AddV2Hsequential_238_lstm_714_while_sequential_238_lstm_714_while_loop_counter.sequential_238/lstm_714/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_238/lstm_714/while/IdentityIdentity'sequential_238/lstm_714/while/add_1:z:0#^sequential_238/lstm_714/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_714/while/Identity_1IdentityNsequential_238_lstm_714_while_sequential_238_lstm_714_while_maximum_iterations#^sequential_238/lstm_714/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_714/while/Identity_2Identity%sequential_238/lstm_714/while/add:z:0#^sequential_238/lstm_714/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_714/while/Identity_3IdentityRsequential_238/lstm_714/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_238/lstm_714/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_714/while/Identity_4Identity5sequential_238/lstm_714/while/lstm_cell_714/mul_2:z:0#^sequential_238/lstm_714/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_238/lstm_714/while/Identity_5Identity5sequential_238/lstm_714/while/lstm_cell_714/add_1:z:0#^sequential_238/lstm_714/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_238/lstm_714/while/NoOpNoOpC^sequential_238/lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOpB^sequential_238/lstm_714/while/lstm_cell_714/MatMul/ReadVariableOpD^sequential_238/lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_238_lstm_714_while_identity/sequential_238/lstm_714/while/Identity:output:0"]
(sequential_238_lstm_714_while_identity_11sequential_238/lstm_714/while/Identity_1:output:0"]
(sequential_238_lstm_714_while_identity_21sequential_238/lstm_714/while/Identity_2:output:0"]
(sequential_238_lstm_714_while_identity_31sequential_238/lstm_714/while/Identity_3:output:0"]
(sequential_238_lstm_714_while_identity_41sequential_238/lstm_714/while/Identity_4:output:0"]
(sequential_238_lstm_714_while_identity_51sequential_238/lstm_714/while/Identity_5:output:0"?
Ksequential_238_lstm_714_while_lstm_cell_714_biasadd_readvariableop_resourceMsequential_238_lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0"?
Lsequential_238_lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resourceNsequential_238_lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0"?
Jsequential_238_lstm_714_while_lstm_cell_714_matmul_readvariableop_resourceLsequential_238_lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0"?
Esequential_238_lstm_714_while_sequential_238_lstm_714_strided_slice_1Gsequential_238_lstm_714_while_sequential_238_lstm_714_strided_slice_1_0"?
?sequential_238_lstm_714_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_714_tensorarrayunstack_tensorlistfromtensor?sequential_238_lstm_714_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_714_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_238/lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOpBsequential_238/lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp2?
Asequential_238/lstm_714/while/lstm_cell_714/MatMul/ReadVariableOpAsequential_238/lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp2?
Csequential_238/lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOpCsequential_238/lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_238_lstm_716_while_cond_4455765L
Hsequential_238_lstm_716_while_sequential_238_lstm_716_while_loop_counterR
Nsequential_238_lstm_716_while_sequential_238_lstm_716_while_maximum_iterations-
)sequential_238_lstm_716_while_placeholder/
+sequential_238_lstm_716_while_placeholder_1/
+sequential_238_lstm_716_while_placeholder_2/
+sequential_238_lstm_716_while_placeholder_3N
Jsequential_238_lstm_716_while_less_sequential_238_lstm_716_strided_slice_1e
asequential_238_lstm_716_while_sequential_238_lstm_716_while_cond_4455765___redundant_placeholder0e
asequential_238_lstm_716_while_sequential_238_lstm_716_while_cond_4455765___redundant_placeholder1e
asequential_238_lstm_716_while_sequential_238_lstm_716_while_cond_4455765___redundant_placeholder2e
asequential_238_lstm_716_while_sequential_238_lstm_716_while_cond_4455765___redundant_placeholder3*
&sequential_238_lstm_716_while_identity
?
"sequential_238/lstm_716/while/LessLess)sequential_238_lstm_716_while_placeholderJsequential_238_lstm_716_while_less_sequential_238_lstm_716_strided_slice_1*
T0*
_output_shapes
: {
&sequential_238/lstm_716/while/IdentityIdentity&sequential_238/lstm_716/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_238_lstm_716_while_identity/sequential_238/lstm_716/while/Identity:output:0*(
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
lstm_715_while_cond_4458794.
*lstm_715_while_lstm_715_while_loop_counter4
0lstm_715_while_lstm_715_while_maximum_iterations
lstm_715_while_placeholder 
lstm_715_while_placeholder_1 
lstm_715_while_placeholder_2 
lstm_715_while_placeholder_30
,lstm_715_while_less_lstm_715_strided_slice_1G
Clstm_715_while_lstm_715_while_cond_4458794___redundant_placeholder0G
Clstm_715_while_lstm_715_while_cond_4458794___redundant_placeholder1G
Clstm_715_while_lstm_715_while_cond_4458794___redundant_placeholder2G
Clstm_715_while_lstm_715_while_cond_4458794___redundant_placeholder3
lstm_715_while_identity
?
lstm_715/while/LessLesslstm_715_while_placeholder,lstm_715_while_less_lstm_715_strided_slice_1*
T0*
_output_shapes
: ]
lstm_715/while/IdentityIdentitylstm_715/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_715_while_identity lstm_715/while/Identity:output:0*(
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4456706

inputs'
lstm_cell_716_4456624:2('
lstm_cell_716_4456626:
(#
lstm_cell_716_4456628:(
identity??%lstm_cell_716/StatefulPartitionedCall?while;
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
%lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_716_4456624lstm_cell_716_4456626lstm_cell_716_4456628*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456623n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_716_4456624lstm_cell_716_4456626lstm_cell_716_4456628*
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
while_body_4456637*
condR
while_cond_4456636*K
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
NoOpNoOp&^lstm_cell_716/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_716/StatefulPartitionedCall%lstm_cell_716/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4456970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4456970___redundant_placeholder05
1while_while_cond_4456970___redundant_placeholder15
1while_while_cond_4456970___redundant_placeholder25
1while_while_cond_4456970___redundant_placeholder3
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

lstm_716_while_body_4458934.
*lstm_716_while_lstm_716_while_loop_counter4
0lstm_716_while_lstm_716_while_maximum_iterations
lstm_716_while_placeholder 
lstm_716_while_placeholder_1 
lstm_716_while_placeholder_2 
lstm_716_while_placeholder_3-
)lstm_716_while_lstm_716_strided_slice_1_0i
elstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0:2(Q
?lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(L
>lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0:(
lstm_716_while_identity
lstm_716_while_identity_1
lstm_716_while_identity_2
lstm_716_while_identity_3
lstm_716_while_identity_4
lstm_716_while_identity_5+
'lstm_716_while_lstm_716_strided_slice_1g
clstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensorM
;lstm_716_while_lstm_cell_716_matmul_readvariableop_resource:2(O
=lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource:
(J
<lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource:(??3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp?2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp?4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp?
@lstm_716/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_716/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensor_0lstm_716_while_placeholderIlstm_716/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp=lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_716/while/lstm_cell_716/MatMulMatMul9lstm_716/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp?lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_716/while/lstm_cell_716/MatMul_1MatMullstm_716_while_placeholder_2<lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_716/while/lstm_cell_716/addAddV2-lstm_716/while/lstm_cell_716/MatMul:product:0/lstm_716/while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp>lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_716/while/lstm_cell_716/BiasAddBiasAdd$lstm_716/while/lstm_cell_716/add:z:0;lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_716/while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_716/while/lstm_cell_716/splitSplit5lstm_716/while/lstm_cell_716/split/split_dim:output:0-lstm_716/while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_716/while/lstm_cell_716/SigmoidSigmoid+lstm_716/while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_716/while/lstm_cell_716/Sigmoid_1Sigmoid+lstm_716/while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_716/while/lstm_cell_716/mulMul*lstm_716/while/lstm_cell_716/Sigmoid_1:y:0lstm_716_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_716/while/lstm_cell_716/ReluRelu+lstm_716/while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_716/while/lstm_cell_716/mul_1Mul(lstm_716/while/lstm_cell_716/Sigmoid:y:0/lstm_716/while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_716/while/lstm_cell_716/add_1AddV2$lstm_716/while/lstm_cell_716/mul:z:0&lstm_716/while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_716/while/lstm_cell_716/Sigmoid_2Sigmoid+lstm_716/while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_716/while/lstm_cell_716/Relu_1Relu&lstm_716/while/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_716/while/lstm_cell_716/mul_2Mul*lstm_716/while/lstm_cell_716/Sigmoid_2:y:01lstm_716/while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_716/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_716_while_placeholder_1lstm_716_while_placeholder&lstm_716/while/lstm_cell_716/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_716/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_716/while/addAddV2lstm_716_while_placeholderlstm_716/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_716/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_716/while/add_1AddV2*lstm_716_while_lstm_716_while_loop_counterlstm_716/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_716/while/IdentityIdentitylstm_716/while/add_1:z:0^lstm_716/while/NoOp*
T0*
_output_shapes
: ?
lstm_716/while/Identity_1Identity0lstm_716_while_lstm_716_while_maximum_iterations^lstm_716/while/NoOp*
T0*
_output_shapes
: t
lstm_716/while/Identity_2Identitylstm_716/while/add:z:0^lstm_716/while/NoOp*
T0*
_output_shapes
: ?
lstm_716/while/Identity_3IdentityClstm_716/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_716/while/NoOp*
T0*
_output_shapes
: ?
lstm_716/while/Identity_4Identity&lstm_716/while/lstm_cell_716/mul_2:z:0^lstm_716/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_716/while/Identity_5Identity&lstm_716/while/lstm_cell_716/add_1:z:0^lstm_716/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_716/while/NoOpNoOp4^lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp3^lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp5^lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_716_while_identity lstm_716/while/Identity:output:0"?
lstm_716_while_identity_1"lstm_716/while/Identity_1:output:0"?
lstm_716_while_identity_2"lstm_716/while/Identity_2:output:0"?
lstm_716_while_identity_3"lstm_716/while/Identity_3:output:0"?
lstm_716_while_identity_4"lstm_716/while/Identity_4:output:0"?
lstm_716_while_identity_5"lstm_716/while/Identity_5:output:0"T
'lstm_716_while_lstm_716_strided_slice_1)lstm_716_while_lstm_716_strided_slice_1_0"~
<lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource>lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0"?
=lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource?lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0"|
;lstm_716_while_lstm_cell_716_matmul_readvariableop_resource=lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0"?
clstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensorelstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp2h
2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp2l
4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4460645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4456971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4459127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458051
lstm_714_input#
lstm_714_4458024:	?#
lstm_714_4458026:	d?
lstm_714_4458028:	?#
lstm_715_4458031:	d?#
lstm_715_4458033:	2?
lstm_715_4458035:	?"
lstm_716_4458038:2("
lstm_716_4458040:
(
lstm_716_4458042:(#
dense_238_4458045:

dense_238_4458047:
identity??!dense_238/StatefulPartitionedCall? lstm_714/StatefulPartitionedCall? lstm_715/StatefulPartitionedCall? lstm_716/StatefulPartitionedCall?
 lstm_714/StatefulPartitionedCallStatefulPartitionedCalllstm_714_inputlstm_714_4458024lstm_714_4458026lstm_714_4458028*
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457055?
 lstm_715/StatefulPartitionedCallStatefulPartitionedCall)lstm_714/StatefulPartitionedCall:output:0lstm_715_4458031lstm_715_4458033lstm_715_4458035*
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457205?
 lstm_716/StatefulPartitionedCallStatefulPartitionedCall)lstm_715/StatefulPartitionedCall:output:0lstm_716_4458038lstm_716_4458040lstm_716_4458042*
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457355?
!dense_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_716/StatefulPartitionedCall:output:0dense_238_4458045dense_238_4458047*
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4457373y
IdentityIdentity*dense_238/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_238/StatefulPartitionedCall!^lstm_714/StatefulPartitionedCall!^lstm_715/StatefulPartitionedCall!^lstm_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_238/StatefulPartitionedCall!dense_238/StatefulPartitionedCall2D
 lstm_714/StatefulPartitionedCall lstm_714/StatefulPartitionedCall2D
 lstm_715/StatefulPartitionedCall lstm_715/StatefulPartitionedCall2D
 lstm_716/StatefulPartitionedCall lstm_716/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_714_input
?8
?
E__inference_lstm_716_layer_call_and_return_conditional_losses_4456897

inputs'
lstm_cell_716_4456815:2('
lstm_cell_716_4456817:
(#
lstm_cell_716_4456819:(
identity??%lstm_cell_716/StatefulPartitionedCall?while;
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
%lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_716_4456815lstm_cell_716_4456817lstm_cell_716_4456819*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456769n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_716_4456815lstm_cell_716_4456817lstm_cell_716_4456819*
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
while_body_4456828*
condR
while_cond_4456827*K
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
NoOpNoOp&^lstm_cell_716/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_716/StatefulPartitionedCall%lstm_cell_716/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4459270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4460172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4460359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_714_while_body_4458229.
*lstm_714_while_lstm_714_while_loop_counter4
0lstm_714_while_lstm_714_while_maximum_iterations
lstm_714_while_placeholder 
lstm_714_while_placeholder_1 
lstm_714_while_placeholder_2 
lstm_714_while_placeholder_3-
)lstm_714_while_lstm_714_strided_slice_1_0i
elstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0:	?R
?lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?M
>lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
lstm_714_while_identity
lstm_714_while_identity_1
lstm_714_while_identity_2
lstm_714_while_identity_3
lstm_714_while_identity_4
lstm_714_while_identity_5+
'lstm_714_while_lstm_714_strided_slice_1g
clstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensorN
;lstm_714_while_lstm_cell_714_matmul_readvariableop_resource:	?P
=lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource:	d?K
<lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource:	???3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp?2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp?4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp?
@lstm_714/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_714/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensor_0lstm_714_while_placeholderIlstm_714/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp=lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_714/while/lstm_cell_714/MatMulMatMul9lstm_714/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp?lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_714/while/lstm_cell_714/MatMul_1MatMullstm_714_while_placeholder_2<lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_714/while/lstm_cell_714/addAddV2-lstm_714/while/lstm_cell_714/MatMul:product:0/lstm_714/while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp>lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_714/while/lstm_cell_714/BiasAddBiasAdd$lstm_714/while/lstm_cell_714/add:z:0;lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_714/while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_714/while/lstm_cell_714/splitSplit5lstm_714/while/lstm_cell_714/split/split_dim:output:0-lstm_714/while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_714/while/lstm_cell_714/SigmoidSigmoid+lstm_714/while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_714/while/lstm_cell_714/Sigmoid_1Sigmoid+lstm_714/while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_714/while/lstm_cell_714/mulMul*lstm_714/while/lstm_cell_714/Sigmoid_1:y:0lstm_714_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_714/while/lstm_cell_714/ReluRelu+lstm_714/while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_714/while/lstm_cell_714/mul_1Mul(lstm_714/while/lstm_cell_714/Sigmoid:y:0/lstm_714/while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_714/while/lstm_cell_714/add_1AddV2$lstm_714/while/lstm_cell_714/mul:z:0&lstm_714/while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_714/while/lstm_cell_714/Sigmoid_2Sigmoid+lstm_714/while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_714/while/lstm_cell_714/Relu_1Relu&lstm_714/while/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_714/while/lstm_cell_714/mul_2Mul*lstm_714/while/lstm_cell_714/Sigmoid_2:y:01lstm_714/while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_714/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_714_while_placeholder_1lstm_714_while_placeholder&lstm_714/while/lstm_cell_714/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_714/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_714/while/addAddV2lstm_714_while_placeholderlstm_714/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_714/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_714/while/add_1AddV2*lstm_714_while_lstm_714_while_loop_counterlstm_714/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_714/while/IdentityIdentitylstm_714/while/add_1:z:0^lstm_714/while/NoOp*
T0*
_output_shapes
: ?
lstm_714/while/Identity_1Identity0lstm_714_while_lstm_714_while_maximum_iterations^lstm_714/while/NoOp*
T0*
_output_shapes
: t
lstm_714/while/Identity_2Identitylstm_714/while/add:z:0^lstm_714/while/NoOp*
T0*
_output_shapes
: ?
lstm_714/while/Identity_3IdentityClstm_714/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_714/while/NoOp*
T0*
_output_shapes
: ?
lstm_714/while/Identity_4Identity&lstm_714/while/lstm_cell_714/mul_2:z:0^lstm_714/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_714/while/Identity_5Identity&lstm_714/while/lstm_cell_714/add_1:z:0^lstm_714/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_714/while/NoOpNoOp4^lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp3^lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp5^lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_714_while_identity lstm_714/while/Identity:output:0"?
lstm_714_while_identity_1"lstm_714/while/Identity_1:output:0"?
lstm_714_while_identity_2"lstm_714/while/Identity_2:output:0"?
lstm_714_while_identity_3"lstm_714/while/Identity_3:output:0"?
lstm_714_while_identity_4"lstm_714/while/Identity_4:output:0"?
lstm_714_while_identity_5"lstm_714/while/Identity_5:output:0"T
'lstm_714_while_lstm_714_strided_slice_1)lstm_714_while_lstm_714_strided_slice_1_0"~
<lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource>lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0"?
=lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource?lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0"|
;lstm_714_while_lstm_cell_714_matmul_readvariableop_resource=lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0"?
clstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensorelstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp2h
2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp2l
4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458597

inputsH
5lstm_714_lstm_cell_714_matmul_readvariableop_resource:	?J
7lstm_714_lstm_cell_714_matmul_1_readvariableop_resource:	d?E
6lstm_714_lstm_cell_714_biasadd_readvariableop_resource:	?H
5lstm_715_lstm_cell_715_matmul_readvariableop_resource:	d?J
7lstm_715_lstm_cell_715_matmul_1_readvariableop_resource:	2?E
6lstm_715_lstm_cell_715_biasadd_readvariableop_resource:	?G
5lstm_716_lstm_cell_716_matmul_readvariableop_resource:2(I
7lstm_716_lstm_cell_716_matmul_1_readvariableop_resource:
(D
6lstm_716_lstm_cell_716_biasadd_readvariableop_resource:(:
(dense_238_matmul_readvariableop_resource:
7
)dense_238_biasadd_readvariableop_resource:
identity?? dense_238/BiasAdd/ReadVariableOp?dense_238/MatMul/ReadVariableOp?-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp?,lstm_714/lstm_cell_714/MatMul/ReadVariableOp?.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp?lstm_714/while?-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp?,lstm_715/lstm_cell_715/MatMul/ReadVariableOp?.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp?lstm_715/while?-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp?,lstm_716/lstm_cell_716/MatMul/ReadVariableOp?.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp?lstm_716/whileD
lstm_714/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_714/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_714/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_714/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_sliceStridedSlicelstm_714/Shape:output:0%lstm_714/strided_slice/stack:output:0'lstm_714/strided_slice/stack_1:output:0'lstm_714/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_714/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_714/zeros/packedPacklstm_714/strided_slice:output:0 lstm_714/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_714/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_714/zerosFilllstm_714/zeros/packed:output:0lstm_714/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_714/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_714/zeros_1/packedPacklstm_714/strided_slice:output:0"lstm_714/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_714/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_714/zeros_1Fill lstm_714/zeros_1/packed:output:0lstm_714/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_714/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_714/transpose	Transposeinputs lstm_714/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_714/Shape_1Shapelstm_714/transpose:y:0*
T0*
_output_shapes
:h
lstm_714/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_714/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_714/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_slice_1StridedSlicelstm_714/Shape_1:output:0'lstm_714/strided_slice_1/stack:output:0)lstm_714/strided_slice_1/stack_1:output:0)lstm_714/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_714/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_714/TensorArrayV2TensorListReserve-lstm_714/TensorArrayV2/element_shape:output:0!lstm_714/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_714/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_714/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_714/transpose:y:0Glstm_714/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_714/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_714/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_714/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_slice_2StridedSlicelstm_714/transpose:y:0'lstm_714/strided_slice_2/stack:output:0)lstm_714/strided_slice_2/stack_1:output:0)lstm_714/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_714/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp5lstm_714_lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_714/lstm_cell_714/MatMulMatMul!lstm_714/strided_slice_2:output:04lstm_714/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp7lstm_714_lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_714/lstm_cell_714/MatMul_1MatMullstm_714/zeros:output:06lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_714/lstm_cell_714/addAddV2'lstm_714/lstm_cell_714/MatMul:product:0)lstm_714/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp6lstm_714_lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_714/lstm_cell_714/BiasAddBiasAddlstm_714/lstm_cell_714/add:z:05lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_714/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_714/lstm_cell_714/splitSplit/lstm_714/lstm_cell_714/split/split_dim:output:0'lstm_714/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_714/lstm_cell_714/SigmoidSigmoid%lstm_714/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_714/lstm_cell_714/Sigmoid_1Sigmoid%lstm_714/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/mulMul$lstm_714/lstm_cell_714/Sigmoid_1:y:0lstm_714/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_714/lstm_cell_714/ReluRelu%lstm_714/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/mul_1Mul"lstm_714/lstm_cell_714/Sigmoid:y:0)lstm_714/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/add_1AddV2lstm_714/lstm_cell_714/mul:z:0 lstm_714/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_714/lstm_cell_714/Sigmoid_2Sigmoid%lstm_714/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_714/lstm_cell_714/Relu_1Relu lstm_714/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/mul_2Mul$lstm_714/lstm_cell_714/Sigmoid_2:y:0+lstm_714/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_714/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_714/TensorArrayV2_1TensorListReserve/lstm_714/TensorArrayV2_1/element_shape:output:0!lstm_714/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_714/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_714/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_714/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_714/whileWhile$lstm_714/while/loop_counter:output:0*lstm_714/while/maximum_iterations:output:0lstm_714/time:output:0!lstm_714/TensorArrayV2_1:handle:0lstm_714/zeros:output:0lstm_714/zeros_1:output:0!lstm_714/strided_slice_1:output:0@lstm_714/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_714_lstm_cell_714_matmul_readvariableop_resource7lstm_714_lstm_cell_714_matmul_1_readvariableop_resource6lstm_714_lstm_cell_714_biasadd_readvariableop_resource*
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
lstm_714_while_body_4458229*'
condR
lstm_714_while_cond_4458228*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_714/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_714/TensorArrayV2Stack/TensorListStackTensorListStacklstm_714/while:output:3Blstm_714/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_714/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_714/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_714/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_slice_3StridedSlice4lstm_714/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_714/strided_slice_3/stack:output:0)lstm_714/strided_slice_3/stack_1:output:0)lstm_714/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_714/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_714/transpose_1	Transpose4lstm_714/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_714/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_714/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_715/ShapeShapelstm_714/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_715/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_715/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_715/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_sliceStridedSlicelstm_715/Shape:output:0%lstm_715/strided_slice/stack:output:0'lstm_715/strided_slice/stack_1:output:0'lstm_715/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_715/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_715/zeros/packedPacklstm_715/strided_slice:output:0 lstm_715/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_715/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_715/zerosFilllstm_715/zeros/packed:output:0lstm_715/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_715/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_715/zeros_1/packedPacklstm_715/strided_slice:output:0"lstm_715/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_715/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_715/zeros_1Fill lstm_715/zeros_1/packed:output:0lstm_715/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_715/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_715/transpose	Transposelstm_714/transpose_1:y:0 lstm_715/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_715/Shape_1Shapelstm_715/transpose:y:0*
T0*
_output_shapes
:h
lstm_715/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_715/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_715/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_slice_1StridedSlicelstm_715/Shape_1:output:0'lstm_715/strided_slice_1/stack:output:0)lstm_715/strided_slice_1/stack_1:output:0)lstm_715/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_715/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_715/TensorArrayV2TensorListReserve-lstm_715/TensorArrayV2/element_shape:output:0!lstm_715/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_715/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_715/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_715/transpose:y:0Glstm_715/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_715/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_715/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_715/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_slice_2StridedSlicelstm_715/transpose:y:0'lstm_715/strided_slice_2/stack:output:0)lstm_715/strided_slice_2/stack_1:output:0)lstm_715/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_715/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp5lstm_715_lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_715/lstm_cell_715/MatMulMatMul!lstm_715/strided_slice_2:output:04lstm_715/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp7lstm_715_lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_715/lstm_cell_715/MatMul_1MatMullstm_715/zeros:output:06lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_715/lstm_cell_715/addAddV2'lstm_715/lstm_cell_715/MatMul:product:0)lstm_715/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp6lstm_715_lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_715/lstm_cell_715/BiasAddBiasAddlstm_715/lstm_cell_715/add:z:05lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_715/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_715/lstm_cell_715/splitSplit/lstm_715/lstm_cell_715/split/split_dim:output:0'lstm_715/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_715/lstm_cell_715/SigmoidSigmoid%lstm_715/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_715/lstm_cell_715/Sigmoid_1Sigmoid%lstm_715/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/mulMul$lstm_715/lstm_cell_715/Sigmoid_1:y:0lstm_715/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_715/lstm_cell_715/ReluRelu%lstm_715/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/mul_1Mul"lstm_715/lstm_cell_715/Sigmoid:y:0)lstm_715/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/add_1AddV2lstm_715/lstm_cell_715/mul:z:0 lstm_715/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_715/lstm_cell_715/Sigmoid_2Sigmoid%lstm_715/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_715/lstm_cell_715/Relu_1Relu lstm_715/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/mul_2Mul$lstm_715/lstm_cell_715/Sigmoid_2:y:0+lstm_715/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_715/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_715/TensorArrayV2_1TensorListReserve/lstm_715/TensorArrayV2_1/element_shape:output:0!lstm_715/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_715/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_715/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_715/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_715/whileWhile$lstm_715/while/loop_counter:output:0*lstm_715/while/maximum_iterations:output:0lstm_715/time:output:0!lstm_715/TensorArrayV2_1:handle:0lstm_715/zeros:output:0lstm_715/zeros_1:output:0!lstm_715/strided_slice_1:output:0@lstm_715/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_715_lstm_cell_715_matmul_readvariableop_resource7lstm_715_lstm_cell_715_matmul_1_readvariableop_resource6lstm_715_lstm_cell_715_biasadd_readvariableop_resource*
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
lstm_715_while_body_4458368*'
condR
lstm_715_while_cond_4458367*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_715/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_715/TensorArrayV2Stack/TensorListStackTensorListStacklstm_715/while:output:3Blstm_715/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_715/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_715/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_715/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_slice_3StridedSlice4lstm_715/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_715/strided_slice_3/stack:output:0)lstm_715/strided_slice_3/stack_1:output:0)lstm_715/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_715/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_715/transpose_1	Transpose4lstm_715/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_715/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_715/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_716/ShapeShapelstm_715/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_716/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_716/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_716/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_sliceStridedSlicelstm_716/Shape:output:0%lstm_716/strided_slice/stack:output:0'lstm_716/strided_slice/stack_1:output:0'lstm_716/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_716/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_716/zeros/packedPacklstm_716/strided_slice:output:0 lstm_716/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_716/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_716/zerosFilllstm_716/zeros/packed:output:0lstm_716/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_716/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_716/zeros_1/packedPacklstm_716/strided_slice:output:0"lstm_716/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_716/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_716/zeros_1Fill lstm_716/zeros_1/packed:output:0lstm_716/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_716/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_716/transpose	Transposelstm_715/transpose_1:y:0 lstm_716/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_716/Shape_1Shapelstm_716/transpose:y:0*
T0*
_output_shapes
:h
lstm_716/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_716/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_716/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_slice_1StridedSlicelstm_716/Shape_1:output:0'lstm_716/strided_slice_1/stack:output:0)lstm_716/strided_slice_1/stack_1:output:0)lstm_716/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_716/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_716/TensorArrayV2TensorListReserve-lstm_716/TensorArrayV2/element_shape:output:0!lstm_716/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_716/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_716/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_716/transpose:y:0Glstm_716/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_716/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_716/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_716/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_slice_2StridedSlicelstm_716/transpose:y:0'lstm_716/strided_slice_2/stack:output:0)lstm_716/strided_slice_2/stack_1:output:0)lstm_716/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_716/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp5lstm_716_lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_716/lstm_cell_716/MatMulMatMul!lstm_716/strided_slice_2:output:04lstm_716/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp7lstm_716_lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_716/lstm_cell_716/MatMul_1MatMullstm_716/zeros:output:06lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_716/lstm_cell_716/addAddV2'lstm_716/lstm_cell_716/MatMul:product:0)lstm_716/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp6lstm_716_lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_716/lstm_cell_716/BiasAddBiasAddlstm_716/lstm_cell_716/add:z:05lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_716/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_716/lstm_cell_716/splitSplit/lstm_716/lstm_cell_716/split/split_dim:output:0'lstm_716/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_716/lstm_cell_716/SigmoidSigmoid%lstm_716/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_716/lstm_cell_716/Sigmoid_1Sigmoid%lstm_716/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/mulMul$lstm_716/lstm_cell_716/Sigmoid_1:y:0lstm_716/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_716/lstm_cell_716/ReluRelu%lstm_716/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/mul_1Mul"lstm_716/lstm_cell_716/Sigmoid:y:0)lstm_716/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/add_1AddV2lstm_716/lstm_cell_716/mul:z:0 lstm_716/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_716/lstm_cell_716/Sigmoid_2Sigmoid%lstm_716/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_716/lstm_cell_716/Relu_1Relu lstm_716/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/mul_2Mul$lstm_716/lstm_cell_716/Sigmoid_2:y:0+lstm_716/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_716/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_716/TensorArrayV2_1TensorListReserve/lstm_716/TensorArrayV2_1/element_shape:output:0!lstm_716/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_716/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_716/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_716/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_716/whileWhile$lstm_716/while/loop_counter:output:0*lstm_716/while/maximum_iterations:output:0lstm_716/time:output:0!lstm_716/TensorArrayV2_1:handle:0lstm_716/zeros:output:0lstm_716/zeros_1:output:0!lstm_716/strided_slice_1:output:0@lstm_716/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_716_lstm_cell_716_matmul_readvariableop_resource7lstm_716_lstm_cell_716_matmul_1_readvariableop_resource6lstm_716_lstm_cell_716_biasadd_readvariableop_resource*
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
lstm_716_while_body_4458507*'
condR
lstm_716_while_cond_4458506*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_716/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_716/TensorArrayV2Stack/TensorListStackTensorListStacklstm_716/while:output:3Blstm_716/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_716/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_716/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_716/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_slice_3StridedSlice4lstm_716/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_716/strided_slice_3/stack:output:0)lstm_716/strided_slice_3/stack_1:output:0)lstm_716/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_716/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_716/transpose_1	Transpose4lstm_716/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_716/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_716/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_238/MatMul/ReadVariableOpReadVariableOp(dense_238_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_238/MatMulMatMul!lstm_716/strided_slice_3:output:0'dense_238/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_238/BiasAdd/ReadVariableOpReadVariableOp)dense_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_238/BiasAddBiasAdddense_238/MatMul:product:0(dense_238/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_238/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_238/BiasAdd/ReadVariableOp ^dense_238/MatMul/ReadVariableOp.^lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp-^lstm_714/lstm_cell_714/MatMul/ReadVariableOp/^lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp^lstm_714/while.^lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp-^lstm_715/lstm_cell_715/MatMul/ReadVariableOp/^lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp^lstm_715/while.^lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp-^lstm_716/lstm_cell_716/MatMul/ReadVariableOp/^lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp^lstm_716/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_238/BiasAdd/ReadVariableOp dense_238/BiasAdd/ReadVariableOp2B
dense_238/MatMul/ReadVariableOpdense_238/MatMul/ReadVariableOp2^
-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp2\
,lstm_714/lstm_cell_714/MatMul/ReadVariableOp,lstm_714/lstm_cell_714/MatMul/ReadVariableOp2`
.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp2 
lstm_714/whilelstm_714/while2^
-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp2\
,lstm_715/lstm_cell_715/MatMul/ReadVariableOp,lstm_715/lstm_cell_715/MatMul/ReadVariableOp2`
.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp2 
lstm_715/whilelstm_715/while2^
-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp2\
,lstm_716/lstm_cell_716/MatMul/ReadVariableOp,lstm_716/lstm_cell_716/MatMul/ReadVariableOp2`
.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp2 
lstm_716/whilelstm_716/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4459412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459412___redundant_placeholder05
1while_while_cond_4459412___redundant_placeholder15
1while_while_cond_4459412___redundant_placeholder25
1while_while_cond_4459412___redundant_placeholder3
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

lstm_714_while_body_4458656.
*lstm_714_while_lstm_714_while_loop_counter4
0lstm_714_while_lstm_714_while_maximum_iterations
lstm_714_while_placeholder 
lstm_714_while_placeholder_1 
lstm_714_while_placeholder_2 
lstm_714_while_placeholder_3-
)lstm_714_while_lstm_714_strided_slice_1_0i
elstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0:	?R
?lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?M
>lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
lstm_714_while_identity
lstm_714_while_identity_1
lstm_714_while_identity_2
lstm_714_while_identity_3
lstm_714_while_identity_4
lstm_714_while_identity_5+
'lstm_714_while_lstm_714_strided_slice_1g
clstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensorN
;lstm_714_while_lstm_cell_714_matmul_readvariableop_resource:	?P
=lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource:	d?K
<lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource:	???3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp?2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp?4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp?
@lstm_714/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_714/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensor_0lstm_714_while_placeholderIlstm_714/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp=lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_714/while/lstm_cell_714/MatMulMatMul9lstm_714/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp?lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_714/while/lstm_cell_714/MatMul_1MatMullstm_714_while_placeholder_2<lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_714/while/lstm_cell_714/addAddV2-lstm_714/while/lstm_cell_714/MatMul:product:0/lstm_714/while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp>lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_714/while/lstm_cell_714/BiasAddBiasAdd$lstm_714/while/lstm_cell_714/add:z:0;lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_714/while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_714/while/lstm_cell_714/splitSplit5lstm_714/while/lstm_cell_714/split/split_dim:output:0-lstm_714/while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_714/while/lstm_cell_714/SigmoidSigmoid+lstm_714/while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_714/while/lstm_cell_714/Sigmoid_1Sigmoid+lstm_714/while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_714/while/lstm_cell_714/mulMul*lstm_714/while/lstm_cell_714/Sigmoid_1:y:0lstm_714_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_714/while/lstm_cell_714/ReluRelu+lstm_714/while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_714/while/lstm_cell_714/mul_1Mul(lstm_714/while/lstm_cell_714/Sigmoid:y:0/lstm_714/while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_714/while/lstm_cell_714/add_1AddV2$lstm_714/while/lstm_cell_714/mul:z:0&lstm_714/while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_714/while/lstm_cell_714/Sigmoid_2Sigmoid+lstm_714/while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_714/while/lstm_cell_714/Relu_1Relu&lstm_714/while/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_714/while/lstm_cell_714/mul_2Mul*lstm_714/while/lstm_cell_714/Sigmoid_2:y:01lstm_714/while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_714/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_714_while_placeholder_1lstm_714_while_placeholder&lstm_714/while/lstm_cell_714/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_714/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_714/while/addAddV2lstm_714_while_placeholderlstm_714/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_714/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_714/while/add_1AddV2*lstm_714_while_lstm_714_while_loop_counterlstm_714/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_714/while/IdentityIdentitylstm_714/while/add_1:z:0^lstm_714/while/NoOp*
T0*
_output_shapes
: ?
lstm_714/while/Identity_1Identity0lstm_714_while_lstm_714_while_maximum_iterations^lstm_714/while/NoOp*
T0*
_output_shapes
: t
lstm_714/while/Identity_2Identitylstm_714/while/add:z:0^lstm_714/while/NoOp*
T0*
_output_shapes
: ?
lstm_714/while/Identity_3IdentityClstm_714/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_714/while/NoOp*
T0*
_output_shapes
: ?
lstm_714/while/Identity_4Identity&lstm_714/while/lstm_cell_714/mul_2:z:0^lstm_714/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_714/while/Identity_5Identity&lstm_714/while/lstm_cell_714/add_1:z:0^lstm_714/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_714/while/NoOpNoOp4^lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp3^lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp5^lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_714_while_identity lstm_714/while/Identity:output:0"?
lstm_714_while_identity_1"lstm_714/while/Identity_1:output:0"?
lstm_714_while_identity_2"lstm_714/while/Identity_2:output:0"?
lstm_714_while_identity_3"lstm_714/while/Identity_3:output:0"?
lstm_714_while_identity_4"lstm_714/while/Identity_4:output:0"?
lstm_714_while_identity_5"lstm_714/while/Identity_5:output:0"T
'lstm_714_while_lstm_714_strided_slice_1)lstm_714_while_lstm_714_strided_slice_1_0"~
<lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource>lstm_714_while_lstm_cell_714_biasadd_readvariableop_resource_0"?
=lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource?lstm_714_while_lstm_cell_714_matmul_1_readvariableop_resource_0"|
;lstm_714_while_lstm_cell_714_matmul_readvariableop_resource=lstm_714_while_lstm_cell_714_matmul_readvariableop_resource_0"?
clstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensorelstm_714_while_tensorarrayv2read_tensorlistgetitem_lstm_714_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp3lstm_714/while/lstm_cell_714/BiasAdd/ReadVariableOp2h
2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp2lstm_714/while/lstm_cell_714/MatMul/ReadVariableOp2l
4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp4lstm_714/while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4459970
inputs_0?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4459886*
condR
while_cond_4459885*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460872

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4460788*
condR
while_cond_4460787*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4461153

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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4460256

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4460172*
condR
while_cond_4460171*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_714_layer_call_fn_4460925

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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4456069o
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
while_body_4459886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4457373

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
while_cond_4460787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460787___redundant_placeholder05
1while_while_cond_4460787___redundant_placeholder15
1while_while_cond_4460787___redundant_placeholder25
1while_while_cond_4460787___redundant_placeholder3
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4460891

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
while_cond_4459555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459555___redundant_placeholder05
1while_while_cond_4459555___redundant_placeholder15
1while_while_cond_4459555___redundant_placeholder25
1while_while_cond_4459555___redundant_placeholder3
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
*__inference_lstm_716_layer_call_fn_4460267
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4456706o
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4461185

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
while_cond_4457120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4457120___redundant_placeholder05
1while_while_cond_4457120___redundant_placeholder15
1while_while_cond_4457120___redundant_placeholder25
1while_while_cond_4457120___redundant_placeholder3
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
?
K__inference_sequential_238_layer_call_and_return_conditional_losses_4457380

inputs#
lstm_714_4457056:	?#
lstm_714_4457058:	d?
lstm_714_4457060:	?#
lstm_715_4457206:	d?#
lstm_715_4457208:	2?
lstm_715_4457210:	?"
lstm_716_4457356:2("
lstm_716_4457358:
(
lstm_716_4457360:(#
dense_238_4457374:

dense_238_4457376:
identity??!dense_238/StatefulPartitionedCall? lstm_714/StatefulPartitionedCall? lstm_715/StatefulPartitionedCall? lstm_716/StatefulPartitionedCall?
 lstm_714/StatefulPartitionedCallStatefulPartitionedCallinputslstm_714_4457056lstm_714_4457058lstm_714_4457060*
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457055?
 lstm_715/StatefulPartitionedCallStatefulPartitionedCall)lstm_714/StatefulPartitionedCall:output:0lstm_715_4457206lstm_715_4457208lstm_715_4457210*
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457205?
 lstm_716/StatefulPartitionedCallStatefulPartitionedCall)lstm_715/StatefulPartitionedCall:output:0lstm_716_4457356lstm_716_4457358lstm_716_4457360*
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457355?
!dense_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_716/StatefulPartitionedCall:output:0dense_238_4457374dense_238_4457376*
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4457373y
IdentityIdentity*dense_238/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_238/StatefulPartitionedCall!^lstm_714/StatefulPartitionedCall!^lstm_715/StatefulPartitionedCall!^lstm_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_238/StatefulPartitionedCall!dense_238/StatefulPartitionedCall2D
 lstm_714/StatefulPartitionedCall lstm_714/StatefulPartitionedCall2D
 lstm_715/StatefulPartitionedCall lstm_715/StatefulPartitionedCall2D
 lstm_716/StatefulPartitionedCall lstm_716/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459497

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4459413*
condR
while_cond_4459412*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4457816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4457816___redundant_placeholder05
1while_while_cond_4457816___redundant_placeholder15
1while_while_cond_4457816___redundant_placeholder25
1while_while_cond_4457816___redundant_placeholder3
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
while_body_4456128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_714_4456152_0:	?0
while_lstm_cell_714_4456154_0:	d?,
while_lstm_cell_714_4456156_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_714_4456152:	?.
while_lstm_cell_714_4456154:	d?*
while_lstm_cell_714_4456156:	???+while/lstm_cell_714/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_714_4456152_0while_lstm_cell_714_4456154_0while_lstm_cell_714_4456156_0*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4456069?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_714/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_714/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_714/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_714/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_714_4456152while_lstm_cell_714_4456152_0"<
while_lstm_cell_714_4456154while_lstm_cell_714_4456154_0"<
while_lstm_cell_714_4456156while_lstm_cell_714_4456156_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_714/StatefulPartitionedCall+while/lstm_cell_714/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4459556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4460028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460028___redundant_placeholder05
1while_while_cond_4460028___redundant_placeholder15
1while_while_cond_4460028___redundant_placeholder25
1while_while_cond_4460028___redundant_placeholder3
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4459024

inputsH
5lstm_714_lstm_cell_714_matmul_readvariableop_resource:	?J
7lstm_714_lstm_cell_714_matmul_1_readvariableop_resource:	d?E
6lstm_714_lstm_cell_714_biasadd_readvariableop_resource:	?H
5lstm_715_lstm_cell_715_matmul_readvariableop_resource:	d?J
7lstm_715_lstm_cell_715_matmul_1_readvariableop_resource:	2?E
6lstm_715_lstm_cell_715_biasadd_readvariableop_resource:	?G
5lstm_716_lstm_cell_716_matmul_readvariableop_resource:2(I
7lstm_716_lstm_cell_716_matmul_1_readvariableop_resource:
(D
6lstm_716_lstm_cell_716_biasadd_readvariableop_resource:(:
(dense_238_matmul_readvariableop_resource:
7
)dense_238_biasadd_readvariableop_resource:
identity?? dense_238/BiasAdd/ReadVariableOp?dense_238/MatMul/ReadVariableOp?-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp?,lstm_714/lstm_cell_714/MatMul/ReadVariableOp?.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp?lstm_714/while?-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp?,lstm_715/lstm_cell_715/MatMul/ReadVariableOp?.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp?lstm_715/while?-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp?,lstm_716/lstm_cell_716/MatMul/ReadVariableOp?.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp?lstm_716/whileD
lstm_714/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_714/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_714/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_714/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_sliceStridedSlicelstm_714/Shape:output:0%lstm_714/strided_slice/stack:output:0'lstm_714/strided_slice/stack_1:output:0'lstm_714/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_714/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_714/zeros/packedPacklstm_714/strided_slice:output:0 lstm_714/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_714/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_714/zerosFilllstm_714/zeros/packed:output:0lstm_714/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_714/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_714/zeros_1/packedPacklstm_714/strided_slice:output:0"lstm_714/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_714/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_714/zeros_1Fill lstm_714/zeros_1/packed:output:0lstm_714/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_714/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_714/transpose	Transposeinputs lstm_714/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_714/Shape_1Shapelstm_714/transpose:y:0*
T0*
_output_shapes
:h
lstm_714/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_714/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_714/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_slice_1StridedSlicelstm_714/Shape_1:output:0'lstm_714/strided_slice_1/stack:output:0)lstm_714/strided_slice_1/stack_1:output:0)lstm_714/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_714/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_714/TensorArrayV2TensorListReserve-lstm_714/TensorArrayV2/element_shape:output:0!lstm_714/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_714/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_714/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_714/transpose:y:0Glstm_714/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_714/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_714/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_714/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_slice_2StridedSlicelstm_714/transpose:y:0'lstm_714/strided_slice_2/stack:output:0)lstm_714/strided_slice_2/stack_1:output:0)lstm_714/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_714/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp5lstm_714_lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_714/lstm_cell_714/MatMulMatMul!lstm_714/strided_slice_2:output:04lstm_714/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp7lstm_714_lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_714/lstm_cell_714/MatMul_1MatMullstm_714/zeros:output:06lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_714/lstm_cell_714/addAddV2'lstm_714/lstm_cell_714/MatMul:product:0)lstm_714/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp6lstm_714_lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_714/lstm_cell_714/BiasAddBiasAddlstm_714/lstm_cell_714/add:z:05lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_714/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_714/lstm_cell_714/splitSplit/lstm_714/lstm_cell_714/split/split_dim:output:0'lstm_714/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_714/lstm_cell_714/SigmoidSigmoid%lstm_714/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_714/lstm_cell_714/Sigmoid_1Sigmoid%lstm_714/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/mulMul$lstm_714/lstm_cell_714/Sigmoid_1:y:0lstm_714/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_714/lstm_cell_714/ReluRelu%lstm_714/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/mul_1Mul"lstm_714/lstm_cell_714/Sigmoid:y:0)lstm_714/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/add_1AddV2lstm_714/lstm_cell_714/mul:z:0 lstm_714/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_714/lstm_cell_714/Sigmoid_2Sigmoid%lstm_714/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_714/lstm_cell_714/Relu_1Relu lstm_714/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_714/lstm_cell_714/mul_2Mul$lstm_714/lstm_cell_714/Sigmoid_2:y:0+lstm_714/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_714/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_714/TensorArrayV2_1TensorListReserve/lstm_714/TensorArrayV2_1/element_shape:output:0!lstm_714/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_714/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_714/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_714/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_714/whileWhile$lstm_714/while/loop_counter:output:0*lstm_714/while/maximum_iterations:output:0lstm_714/time:output:0!lstm_714/TensorArrayV2_1:handle:0lstm_714/zeros:output:0lstm_714/zeros_1:output:0!lstm_714/strided_slice_1:output:0@lstm_714/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_714_lstm_cell_714_matmul_readvariableop_resource7lstm_714_lstm_cell_714_matmul_1_readvariableop_resource6lstm_714_lstm_cell_714_biasadd_readvariableop_resource*
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
lstm_714_while_body_4458656*'
condR
lstm_714_while_cond_4458655*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_714/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_714/TensorArrayV2Stack/TensorListStackTensorListStacklstm_714/while:output:3Blstm_714/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_714/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_714/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_714/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_714/strided_slice_3StridedSlice4lstm_714/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_714/strided_slice_3/stack:output:0)lstm_714/strided_slice_3/stack_1:output:0)lstm_714/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_714/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_714/transpose_1	Transpose4lstm_714/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_714/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_714/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_715/ShapeShapelstm_714/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_715/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_715/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_715/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_sliceStridedSlicelstm_715/Shape:output:0%lstm_715/strided_slice/stack:output:0'lstm_715/strided_slice/stack_1:output:0'lstm_715/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_715/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_715/zeros/packedPacklstm_715/strided_slice:output:0 lstm_715/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_715/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_715/zerosFilllstm_715/zeros/packed:output:0lstm_715/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_715/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_715/zeros_1/packedPacklstm_715/strided_slice:output:0"lstm_715/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_715/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_715/zeros_1Fill lstm_715/zeros_1/packed:output:0lstm_715/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_715/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_715/transpose	Transposelstm_714/transpose_1:y:0 lstm_715/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_715/Shape_1Shapelstm_715/transpose:y:0*
T0*
_output_shapes
:h
lstm_715/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_715/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_715/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_slice_1StridedSlicelstm_715/Shape_1:output:0'lstm_715/strided_slice_1/stack:output:0)lstm_715/strided_slice_1/stack_1:output:0)lstm_715/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_715/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_715/TensorArrayV2TensorListReserve-lstm_715/TensorArrayV2/element_shape:output:0!lstm_715/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_715/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_715/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_715/transpose:y:0Glstm_715/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_715/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_715/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_715/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_slice_2StridedSlicelstm_715/transpose:y:0'lstm_715/strided_slice_2/stack:output:0)lstm_715/strided_slice_2/stack_1:output:0)lstm_715/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_715/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp5lstm_715_lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_715/lstm_cell_715/MatMulMatMul!lstm_715/strided_slice_2:output:04lstm_715/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp7lstm_715_lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_715/lstm_cell_715/MatMul_1MatMullstm_715/zeros:output:06lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_715/lstm_cell_715/addAddV2'lstm_715/lstm_cell_715/MatMul:product:0)lstm_715/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp6lstm_715_lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_715/lstm_cell_715/BiasAddBiasAddlstm_715/lstm_cell_715/add:z:05lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_715/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_715/lstm_cell_715/splitSplit/lstm_715/lstm_cell_715/split/split_dim:output:0'lstm_715/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_715/lstm_cell_715/SigmoidSigmoid%lstm_715/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_715/lstm_cell_715/Sigmoid_1Sigmoid%lstm_715/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/mulMul$lstm_715/lstm_cell_715/Sigmoid_1:y:0lstm_715/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_715/lstm_cell_715/ReluRelu%lstm_715/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/mul_1Mul"lstm_715/lstm_cell_715/Sigmoid:y:0)lstm_715/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/add_1AddV2lstm_715/lstm_cell_715/mul:z:0 lstm_715/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_715/lstm_cell_715/Sigmoid_2Sigmoid%lstm_715/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_715/lstm_cell_715/Relu_1Relu lstm_715/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_715/lstm_cell_715/mul_2Mul$lstm_715/lstm_cell_715/Sigmoid_2:y:0+lstm_715/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_715/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_715/TensorArrayV2_1TensorListReserve/lstm_715/TensorArrayV2_1/element_shape:output:0!lstm_715/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_715/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_715/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_715/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_715/whileWhile$lstm_715/while/loop_counter:output:0*lstm_715/while/maximum_iterations:output:0lstm_715/time:output:0!lstm_715/TensorArrayV2_1:handle:0lstm_715/zeros:output:0lstm_715/zeros_1:output:0!lstm_715/strided_slice_1:output:0@lstm_715/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_715_lstm_cell_715_matmul_readvariableop_resource7lstm_715_lstm_cell_715_matmul_1_readvariableop_resource6lstm_715_lstm_cell_715_biasadd_readvariableop_resource*
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
lstm_715_while_body_4458795*'
condR
lstm_715_while_cond_4458794*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_715/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_715/TensorArrayV2Stack/TensorListStackTensorListStacklstm_715/while:output:3Blstm_715/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_715/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_715/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_715/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_715/strided_slice_3StridedSlice4lstm_715/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_715/strided_slice_3/stack:output:0)lstm_715/strided_slice_3/stack_1:output:0)lstm_715/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_715/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_715/transpose_1	Transpose4lstm_715/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_715/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_715/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_716/ShapeShapelstm_715/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_716/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_716/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_716/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_sliceStridedSlicelstm_716/Shape:output:0%lstm_716/strided_slice/stack:output:0'lstm_716/strided_slice/stack_1:output:0'lstm_716/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_716/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_716/zeros/packedPacklstm_716/strided_slice:output:0 lstm_716/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_716/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_716/zerosFilllstm_716/zeros/packed:output:0lstm_716/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_716/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_716/zeros_1/packedPacklstm_716/strided_slice:output:0"lstm_716/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_716/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_716/zeros_1Fill lstm_716/zeros_1/packed:output:0lstm_716/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_716/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_716/transpose	Transposelstm_715/transpose_1:y:0 lstm_716/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_716/Shape_1Shapelstm_716/transpose:y:0*
T0*
_output_shapes
:h
lstm_716/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_716/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_716/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_slice_1StridedSlicelstm_716/Shape_1:output:0'lstm_716/strided_slice_1/stack:output:0)lstm_716/strided_slice_1/stack_1:output:0)lstm_716/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_716/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_716/TensorArrayV2TensorListReserve-lstm_716/TensorArrayV2/element_shape:output:0!lstm_716/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_716/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_716/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_716/transpose:y:0Glstm_716/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_716/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_716/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_716/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_slice_2StridedSlicelstm_716/transpose:y:0'lstm_716/strided_slice_2/stack:output:0)lstm_716/strided_slice_2/stack_1:output:0)lstm_716/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_716/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp5lstm_716_lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_716/lstm_cell_716/MatMulMatMul!lstm_716/strided_slice_2:output:04lstm_716/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp7lstm_716_lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_716/lstm_cell_716/MatMul_1MatMullstm_716/zeros:output:06lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_716/lstm_cell_716/addAddV2'lstm_716/lstm_cell_716/MatMul:product:0)lstm_716/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp6lstm_716_lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_716/lstm_cell_716/BiasAddBiasAddlstm_716/lstm_cell_716/add:z:05lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_716/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_716/lstm_cell_716/splitSplit/lstm_716/lstm_cell_716/split/split_dim:output:0'lstm_716/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_716/lstm_cell_716/SigmoidSigmoid%lstm_716/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_716/lstm_cell_716/Sigmoid_1Sigmoid%lstm_716/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/mulMul$lstm_716/lstm_cell_716/Sigmoid_1:y:0lstm_716/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_716/lstm_cell_716/ReluRelu%lstm_716/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/mul_1Mul"lstm_716/lstm_cell_716/Sigmoid:y:0)lstm_716/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/add_1AddV2lstm_716/lstm_cell_716/mul:z:0 lstm_716/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_716/lstm_cell_716/Sigmoid_2Sigmoid%lstm_716/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_716/lstm_cell_716/Relu_1Relu lstm_716/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_716/lstm_cell_716/mul_2Mul$lstm_716/lstm_cell_716/Sigmoid_2:y:0+lstm_716/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_716/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_716/TensorArrayV2_1TensorListReserve/lstm_716/TensorArrayV2_1/element_shape:output:0!lstm_716/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_716/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_716/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_716/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_716/whileWhile$lstm_716/while/loop_counter:output:0*lstm_716/while/maximum_iterations:output:0lstm_716/time:output:0!lstm_716/TensorArrayV2_1:handle:0lstm_716/zeros:output:0lstm_716/zeros_1:output:0!lstm_716/strided_slice_1:output:0@lstm_716/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_716_lstm_cell_716_matmul_readvariableop_resource7lstm_716_lstm_cell_716_matmul_1_readvariableop_resource6lstm_716_lstm_cell_716_biasadd_readvariableop_resource*
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
lstm_716_while_body_4458934*'
condR
lstm_716_while_cond_4458933*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_716/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_716/TensorArrayV2Stack/TensorListStackTensorListStacklstm_716/while:output:3Blstm_716/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_716/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_716/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_716/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_716/strided_slice_3StridedSlice4lstm_716/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_716/strided_slice_3/stack:output:0)lstm_716/strided_slice_3/stack_1:output:0)lstm_716/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_716/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_716/transpose_1	Transpose4lstm_716/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_716/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_716/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_238/MatMul/ReadVariableOpReadVariableOp(dense_238_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_238/MatMulMatMul!lstm_716/strided_slice_3:output:0'dense_238/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_238/BiasAdd/ReadVariableOpReadVariableOp)dense_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_238/BiasAddBiasAdddense_238/MatMul:product:0(dense_238/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_238/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_238/BiasAdd/ReadVariableOp ^dense_238/MatMul/ReadVariableOp.^lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp-^lstm_714/lstm_cell_714/MatMul/ReadVariableOp/^lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp^lstm_714/while.^lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp-^lstm_715/lstm_cell_715/MatMul/ReadVariableOp/^lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp^lstm_715/while.^lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp-^lstm_716/lstm_cell_716/MatMul/ReadVariableOp/^lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp^lstm_716/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_238/BiasAdd/ReadVariableOp dense_238/BiasAdd/ReadVariableOp2B
dense_238/MatMul/ReadVariableOpdense_238/MatMul/ReadVariableOp2^
-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp-lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp2\
,lstm_714/lstm_cell_714/MatMul/ReadVariableOp,lstm_714/lstm_cell_714/MatMul/ReadVariableOp2`
.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp.lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp2 
lstm_714/whilelstm_714/while2^
-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp-lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp2\
,lstm_715/lstm_cell_715/MatMul/ReadVariableOp,lstm_715/lstm_cell_715/MatMul/ReadVariableOp2`
.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp.lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp2 
lstm_715/whilelstm_715/while2^
-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp-lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp2\
,lstm_716/lstm_cell_716/MatMul/ReadVariableOp,lstm_716/lstm_cell_716/MatMul/ReadVariableOp2`
.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp.lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp2 
lstm_716/whilelstm_716/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_714_while_cond_4458655.
*lstm_714_while_lstm_714_while_loop_counter4
0lstm_714_while_lstm_714_while_maximum_iterations
lstm_714_while_placeholder 
lstm_714_while_placeholder_1 
lstm_714_while_placeholder_2 
lstm_714_while_placeholder_30
,lstm_714_while_less_lstm_714_strided_slice_1G
Clstm_714_while_lstm_714_while_cond_4458655___redundant_placeholder0G
Clstm_714_while_lstm_714_while_cond_4458655___redundant_placeholder1G
Clstm_714_while_lstm_714_while_cond_4458655___redundant_placeholder2G
Clstm_714_while_lstm_714_while_cond_4458655___redundant_placeholder3
lstm_714_while_identity
?
lstm_714/while/LessLesslstm_714_while_placeholder,lstm_714_while_less_lstm_714_strided_slice_1*
T0*
_output_shapes
: ]
lstm_714/while/IdentityIdentitylstm_714/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_714_while_identity lstm_714/while/Identity:output:0*(
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4457969

inputs#
lstm_714_4457942:	?#
lstm_714_4457944:	d?
lstm_714_4457946:	?#
lstm_715_4457949:	d?#
lstm_715_4457951:	2?
lstm_715_4457953:	?"
lstm_716_4457956:2("
lstm_716_4457958:
(
lstm_716_4457960:(#
dense_238_4457963:

dense_238_4457965:
identity??!dense_238/StatefulPartitionedCall? lstm_714/StatefulPartitionedCall? lstm_715/StatefulPartitionedCall? lstm_716/StatefulPartitionedCall?
 lstm_714/StatefulPartitionedCallStatefulPartitionedCallinputslstm_714_4457942lstm_714_4457944lstm_714_4457946*
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457901?
 lstm_715/StatefulPartitionedCallStatefulPartitionedCall)lstm_714/StatefulPartitionedCall:output:0lstm_715_4457949lstm_715_4457951lstm_715_4457953*
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457736?
 lstm_716/StatefulPartitionedCallStatefulPartitionedCall)lstm_715/StatefulPartitionedCall:output:0lstm_716_4457956lstm_716_4457958lstm_716_4457960*
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457571?
!dense_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_716/StatefulPartitionedCall:output:0dense_238_4457963dense_238_4457965*
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4457373y
IdentityIdentity*dense_238/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_238/StatefulPartitionedCall!^lstm_714/StatefulPartitionedCall!^lstm_715/StatefulPartitionedCall!^lstm_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_238/StatefulPartitionedCall!dense_238/StatefulPartitionedCall2D
 lstm_714/StatefulPartitionedCall lstm_714/StatefulPartitionedCall2D
 lstm_715/StatefulPartitionedCall lstm_715/StatefulPartitionedCall2D
 lstm_716/StatefulPartitionedCall lstm_716/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_714_layer_call_fn_4459046
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4456197|
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
0__inference_sequential_238_layer_call_fn_4457405
lstm_714_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_714_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4457380o
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
_user_specified_namelstm_714_input
?C
?

lstm_715_while_body_4458368.
*lstm_715_while_lstm_715_while_loop_counter4
0lstm_715_while_lstm_715_while_maximum_iterations
lstm_715_while_placeholder 
lstm_715_while_placeholder_1 
lstm_715_while_placeholder_2 
lstm_715_while_placeholder_3-
)lstm_715_while_lstm_715_strided_slice_1_0i
elstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0:	d?R
?lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?M
>lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
lstm_715_while_identity
lstm_715_while_identity_1
lstm_715_while_identity_2
lstm_715_while_identity_3
lstm_715_while_identity_4
lstm_715_while_identity_5+
'lstm_715_while_lstm_715_strided_slice_1g
clstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensorN
;lstm_715_while_lstm_cell_715_matmul_readvariableop_resource:	d?P
=lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource:	2?K
<lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource:	???3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp?2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp?4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp?
@lstm_715/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_715/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensor_0lstm_715_while_placeholderIlstm_715/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp=lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_715/while/lstm_cell_715/MatMulMatMul9lstm_715/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp?lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_715/while/lstm_cell_715/MatMul_1MatMullstm_715_while_placeholder_2<lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_715/while/lstm_cell_715/addAddV2-lstm_715/while/lstm_cell_715/MatMul:product:0/lstm_715/while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp>lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_715/while/lstm_cell_715/BiasAddBiasAdd$lstm_715/while/lstm_cell_715/add:z:0;lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_715/while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_715/while/lstm_cell_715/splitSplit5lstm_715/while/lstm_cell_715/split/split_dim:output:0-lstm_715/while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_715/while/lstm_cell_715/SigmoidSigmoid+lstm_715/while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_715/while/lstm_cell_715/Sigmoid_1Sigmoid+lstm_715/while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_715/while/lstm_cell_715/mulMul*lstm_715/while/lstm_cell_715/Sigmoid_1:y:0lstm_715_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_715/while/lstm_cell_715/ReluRelu+lstm_715/while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_715/while/lstm_cell_715/mul_1Mul(lstm_715/while/lstm_cell_715/Sigmoid:y:0/lstm_715/while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_715/while/lstm_cell_715/add_1AddV2$lstm_715/while/lstm_cell_715/mul:z:0&lstm_715/while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_715/while/lstm_cell_715/Sigmoid_2Sigmoid+lstm_715/while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_715/while/lstm_cell_715/Relu_1Relu&lstm_715/while/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_715/while/lstm_cell_715/mul_2Mul*lstm_715/while/lstm_cell_715/Sigmoid_2:y:01lstm_715/while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_715/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_715_while_placeholder_1lstm_715_while_placeholder&lstm_715/while/lstm_cell_715/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_715/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_715/while/addAddV2lstm_715_while_placeholderlstm_715/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_715/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_715/while/add_1AddV2*lstm_715_while_lstm_715_while_loop_counterlstm_715/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_715/while/IdentityIdentitylstm_715/while/add_1:z:0^lstm_715/while/NoOp*
T0*
_output_shapes
: ?
lstm_715/while/Identity_1Identity0lstm_715_while_lstm_715_while_maximum_iterations^lstm_715/while/NoOp*
T0*
_output_shapes
: t
lstm_715/while/Identity_2Identitylstm_715/while/add:z:0^lstm_715/while/NoOp*
T0*
_output_shapes
: ?
lstm_715/while/Identity_3IdentityClstm_715/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_715/while/NoOp*
T0*
_output_shapes
: ?
lstm_715/while/Identity_4Identity&lstm_715/while/lstm_cell_715/mul_2:z:0^lstm_715/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_715/while/Identity_5Identity&lstm_715/while/lstm_cell_715/add_1:z:0^lstm_715/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_715/while/NoOpNoOp4^lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp3^lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp5^lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_715_while_identity lstm_715/while/Identity:output:0"?
lstm_715_while_identity_1"lstm_715/while/Identity_1:output:0"?
lstm_715_while_identity_2"lstm_715/while/Identity_2:output:0"?
lstm_715_while_identity_3"lstm_715/while/Identity_3:output:0"?
lstm_715_while_identity_4"lstm_715/while/Identity_4:output:0"?
lstm_715_while_identity_5"lstm_715/while/Identity_5:output:0"T
'lstm_715_while_lstm_715_strided_slice_1)lstm_715_while_lstm_715_strided_slice_1_0"~
<lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource>lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0"?
=lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource?lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0"|
;lstm_715_while_lstm_cell_715_matmul_readvariableop_resource=lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0"?
clstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensorelstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp2h
2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp2l
4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_715_layer_call_fn_4459684

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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457736s
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
while_cond_4456286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4456286___redundant_placeholder05
1while_while_cond_4456286___redundant_placeholder15
1while_while_cond_4456286___redundant_placeholder25
1while_while_cond_4456286___redundant_placeholder3
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
while_body_4457271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_715_layer_call_fn_4459651
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4456356|
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
?
while_body_4460029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_238_layer_call_fn_4458143

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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4457380o
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4456197

inputs(
lstm_cell_714_4456115:	?(
lstm_cell_714_4456117:	d?$
lstm_cell_714_4456119:	?
identity??%lstm_cell_714/StatefulPartitionedCall?while;
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
%lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_714_4456115lstm_cell_714_4456117lstm_cell_714_4456119*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4456069n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_714_4456115lstm_cell_714_4456117lstm_cell_714_4456119*
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
while_body_4456128*
condR
while_cond_4456127*K
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
NoOpNoOp&^lstm_cell_714/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_714/StatefulPartitionedCall%lstm_cell_714/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?T
?
*sequential_238_lstm_715_while_body_4455627L
Hsequential_238_lstm_715_while_sequential_238_lstm_715_while_loop_counterR
Nsequential_238_lstm_715_while_sequential_238_lstm_715_while_maximum_iterations-
)sequential_238_lstm_715_while_placeholder/
+sequential_238_lstm_715_while_placeholder_1/
+sequential_238_lstm_715_while_placeholder_2/
+sequential_238_lstm_715_while_placeholder_3K
Gsequential_238_lstm_715_while_sequential_238_lstm_715_strided_slice_1_0?
?sequential_238_lstm_715_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_715_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_238_lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0:	d?a
Nsequential_238_lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?\
Msequential_238_lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0:	?*
&sequential_238_lstm_715_while_identity,
(sequential_238_lstm_715_while_identity_1,
(sequential_238_lstm_715_while_identity_2,
(sequential_238_lstm_715_while_identity_3,
(sequential_238_lstm_715_while_identity_4,
(sequential_238_lstm_715_while_identity_5I
Esequential_238_lstm_715_while_sequential_238_lstm_715_strided_slice_1?
?sequential_238_lstm_715_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_715_tensorarrayunstack_tensorlistfromtensor]
Jsequential_238_lstm_715_while_lstm_cell_715_matmul_readvariableop_resource:	d?_
Lsequential_238_lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource:	2?Z
Ksequential_238_lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource:	???Bsequential_238/lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp?Asequential_238/lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp?Csequential_238/lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp?
Osequential_238/lstm_715/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_238/lstm_715/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_238_lstm_715_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_715_tensorarrayunstack_tensorlistfromtensor_0)sequential_238_lstm_715_while_placeholderXsequential_238/lstm_715/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_238/lstm_715/while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOpLsequential_238_lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_238/lstm_715/while/lstm_cell_715/MatMulMatMulHsequential_238/lstm_715/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_238/lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_238/lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOpNsequential_238_lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_238/lstm_715/while/lstm_cell_715/MatMul_1MatMul+sequential_238_lstm_715_while_placeholder_2Ksequential_238/lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_238/lstm_715/while/lstm_cell_715/addAddV2<sequential_238/lstm_715/while/lstm_cell_715/MatMul:product:0>sequential_238/lstm_715/while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_238/lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOpMsequential_238_lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_238/lstm_715/while/lstm_cell_715/BiasAddBiasAdd3sequential_238/lstm_715/while/lstm_cell_715/add:z:0Jsequential_238/lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_238/lstm_715/while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_238/lstm_715/while/lstm_cell_715/splitSplitDsequential_238/lstm_715/while/lstm_cell_715/split/split_dim:output:0<sequential_238/lstm_715/while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_238/lstm_715/while/lstm_cell_715/SigmoidSigmoid:sequential_238/lstm_715/while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_238/lstm_715/while/lstm_cell_715/Sigmoid_1Sigmoid:sequential_238/lstm_715/while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_238/lstm_715/while/lstm_cell_715/mulMul9sequential_238/lstm_715/while/lstm_cell_715/Sigmoid_1:y:0+sequential_238_lstm_715_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_238/lstm_715/while/lstm_cell_715/ReluRelu:sequential_238/lstm_715/while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_238/lstm_715/while/lstm_cell_715/mul_1Mul7sequential_238/lstm_715/while/lstm_cell_715/Sigmoid:y:0>sequential_238/lstm_715/while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_238/lstm_715/while/lstm_cell_715/add_1AddV23sequential_238/lstm_715/while/lstm_cell_715/mul:z:05sequential_238/lstm_715/while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_238/lstm_715/while/lstm_cell_715/Sigmoid_2Sigmoid:sequential_238/lstm_715/while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_238/lstm_715/while/lstm_cell_715/Relu_1Relu5sequential_238/lstm_715/while/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_238/lstm_715/while/lstm_cell_715/mul_2Mul9sequential_238/lstm_715/while/lstm_cell_715/Sigmoid_2:y:0@sequential_238/lstm_715/while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_238/lstm_715/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_238_lstm_715_while_placeholder_1)sequential_238_lstm_715_while_placeholder5sequential_238/lstm_715/while/lstm_cell_715/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_238/lstm_715/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_238/lstm_715/while/addAddV2)sequential_238_lstm_715_while_placeholder,sequential_238/lstm_715/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_238/lstm_715/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_238/lstm_715/while/add_1AddV2Hsequential_238_lstm_715_while_sequential_238_lstm_715_while_loop_counter.sequential_238/lstm_715/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_238/lstm_715/while/IdentityIdentity'sequential_238/lstm_715/while/add_1:z:0#^sequential_238/lstm_715/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_715/while/Identity_1IdentityNsequential_238_lstm_715_while_sequential_238_lstm_715_while_maximum_iterations#^sequential_238/lstm_715/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_715/while/Identity_2Identity%sequential_238/lstm_715/while/add:z:0#^sequential_238/lstm_715/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_715/while/Identity_3IdentityRsequential_238/lstm_715/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_238/lstm_715/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_715/while/Identity_4Identity5sequential_238/lstm_715/while/lstm_cell_715/mul_2:z:0#^sequential_238/lstm_715/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_238/lstm_715/while/Identity_5Identity5sequential_238/lstm_715/while/lstm_cell_715/add_1:z:0#^sequential_238/lstm_715/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_238/lstm_715/while/NoOpNoOpC^sequential_238/lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOpB^sequential_238/lstm_715/while/lstm_cell_715/MatMul/ReadVariableOpD^sequential_238/lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_238_lstm_715_while_identity/sequential_238/lstm_715/while/Identity:output:0"]
(sequential_238_lstm_715_while_identity_11sequential_238/lstm_715/while/Identity_1:output:0"]
(sequential_238_lstm_715_while_identity_21sequential_238/lstm_715/while/Identity_2:output:0"]
(sequential_238_lstm_715_while_identity_31sequential_238/lstm_715/while/Identity_3:output:0"]
(sequential_238_lstm_715_while_identity_41sequential_238/lstm_715/while/Identity_4:output:0"]
(sequential_238_lstm_715_while_identity_51sequential_238/lstm_715/while/Identity_5:output:0"?
Ksequential_238_lstm_715_while_lstm_cell_715_biasadd_readvariableop_resourceMsequential_238_lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0"?
Lsequential_238_lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resourceNsequential_238_lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0"?
Jsequential_238_lstm_715_while_lstm_cell_715_matmul_readvariableop_resourceLsequential_238_lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0"?
Esequential_238_lstm_715_while_sequential_238_lstm_715_strided_slice_1Gsequential_238_lstm_715_while_sequential_238_lstm_715_strided_slice_1_0"?
?sequential_238_lstm_715_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_715_tensorarrayunstack_tensorlistfromtensor?sequential_238_lstm_715_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_715_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_238/lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOpBsequential_238/lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp2?
Asequential_238/lstm_715/while/lstm_cell_715/MatMul/ReadVariableOpAsequential_238/lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp2?
Csequential_238/lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOpCsequential_238/lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460443
inputs_0>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4460359*
condR
while_cond_4460358*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4457487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457901

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4457817*
condR
while_cond_4457816*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456419

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
?
while_cond_4456636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4456636___redundant_placeholder05
1while_while_cond_4456636___redundant_placeholder15
1while_while_cond_4456636___redundant_placeholder25
1while_while_cond_4456636___redundant_placeholder3
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457205

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4457121*
condR
while_cond_4457120*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4460788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456769

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
/__inference_lstm_cell_714_layer_call_fn_4460908

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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4455923o
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
?#
?
while_body_4455937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_714_4455961_0:	?0
while_lstm_cell_714_4455963_0:	d?,
while_lstm_cell_714_4455965_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_714_4455961:	?.
while_lstm_cell_714_4455963:	d?*
while_lstm_cell_714_4455965:	???+while/lstm_cell_714/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_714_4455961_0while_lstm_cell_714_4455963_0while_lstm_cell_714_4455965_0*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4455923?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_714/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_714/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_714/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_714/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_714_4455961while_lstm_cell_714_4455961_0"<
while_lstm_cell_714_4455963while_lstm_cell_714_4455963_0"<
while_lstm_cell_714_4455965while_lstm_cell_714_4455965_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_714/StatefulPartitionedCall+while/lstm_cell_714/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4461055

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
?C
?

lstm_716_while_body_4458507.
*lstm_716_while_lstm_716_while_loop_counter4
0lstm_716_while_lstm_716_while_maximum_iterations
lstm_716_while_placeholder 
lstm_716_while_placeholder_1 
lstm_716_while_placeholder_2 
lstm_716_while_placeholder_3-
)lstm_716_while_lstm_716_strided_slice_1_0i
elstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0:2(Q
?lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(L
>lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0:(
lstm_716_while_identity
lstm_716_while_identity_1
lstm_716_while_identity_2
lstm_716_while_identity_3
lstm_716_while_identity_4
lstm_716_while_identity_5+
'lstm_716_while_lstm_716_strided_slice_1g
clstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensorM
;lstm_716_while_lstm_cell_716_matmul_readvariableop_resource:2(O
=lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource:
(J
<lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource:(??3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp?2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp?4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp?
@lstm_716/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_716/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensor_0lstm_716_while_placeholderIlstm_716/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp=lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_716/while/lstm_cell_716/MatMulMatMul9lstm_716/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp?lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_716/while/lstm_cell_716/MatMul_1MatMullstm_716_while_placeholder_2<lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_716/while/lstm_cell_716/addAddV2-lstm_716/while/lstm_cell_716/MatMul:product:0/lstm_716/while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp>lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_716/while/lstm_cell_716/BiasAddBiasAdd$lstm_716/while/lstm_cell_716/add:z:0;lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_716/while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_716/while/lstm_cell_716/splitSplit5lstm_716/while/lstm_cell_716/split/split_dim:output:0-lstm_716/while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_716/while/lstm_cell_716/SigmoidSigmoid+lstm_716/while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_716/while/lstm_cell_716/Sigmoid_1Sigmoid+lstm_716/while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_716/while/lstm_cell_716/mulMul*lstm_716/while/lstm_cell_716/Sigmoid_1:y:0lstm_716_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_716/while/lstm_cell_716/ReluRelu+lstm_716/while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_716/while/lstm_cell_716/mul_1Mul(lstm_716/while/lstm_cell_716/Sigmoid:y:0/lstm_716/while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_716/while/lstm_cell_716/add_1AddV2$lstm_716/while/lstm_cell_716/mul:z:0&lstm_716/while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_716/while/lstm_cell_716/Sigmoid_2Sigmoid+lstm_716/while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_716/while/lstm_cell_716/Relu_1Relu&lstm_716/while/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_716/while/lstm_cell_716/mul_2Mul*lstm_716/while/lstm_cell_716/Sigmoid_2:y:01lstm_716/while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_716/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_716_while_placeholder_1lstm_716_while_placeholder&lstm_716/while/lstm_cell_716/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_716/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_716/while/addAddV2lstm_716_while_placeholderlstm_716/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_716/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_716/while/add_1AddV2*lstm_716_while_lstm_716_while_loop_counterlstm_716/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_716/while/IdentityIdentitylstm_716/while/add_1:z:0^lstm_716/while/NoOp*
T0*
_output_shapes
: ?
lstm_716/while/Identity_1Identity0lstm_716_while_lstm_716_while_maximum_iterations^lstm_716/while/NoOp*
T0*
_output_shapes
: t
lstm_716/while/Identity_2Identitylstm_716/while/add:z:0^lstm_716/while/NoOp*
T0*
_output_shapes
: ?
lstm_716/while/Identity_3IdentityClstm_716/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_716/while/NoOp*
T0*
_output_shapes
: ?
lstm_716/while/Identity_4Identity&lstm_716/while/lstm_cell_716/mul_2:z:0^lstm_716/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_716/while/Identity_5Identity&lstm_716/while/lstm_cell_716/add_1:z:0^lstm_716/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_716/while/NoOpNoOp4^lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp3^lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp5^lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_716_while_identity lstm_716/while/Identity:output:0"?
lstm_716_while_identity_1"lstm_716/while/Identity_1:output:0"?
lstm_716_while_identity_2"lstm_716/while/Identity_2:output:0"?
lstm_716_while_identity_3"lstm_716/while/Identity_3:output:0"?
lstm_716_while_identity_4"lstm_716/while/Identity_4:output:0"?
lstm_716_while_identity_5"lstm_716/while/Identity_5:output:0"T
'lstm_716_while_lstm_716_strided_slice_1)lstm_716_while_lstm_716_strided_slice_1_0"~
<lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource>lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0"?
=lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource?lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0"|
;lstm_716_while_lstm_cell_716_matmul_readvariableop_resource=lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0"?
clstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensorelstm_716_while_tensorarrayv2read_tensorlistgetitem_lstm_716_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp3lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp2h
2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp2lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp2l
4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp4lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4456637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_716_4456661_0:2(/
while_lstm_cell_716_4456663_0:
(+
while_lstm_cell_716_4456665_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_716_4456661:2(-
while_lstm_cell_716_4456663:
()
while_lstm_cell_716_4456665:(??+while/lstm_cell_716/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_716_4456661_0while_lstm_cell_716_4456663_0while_lstm_cell_716_4456665_0*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456623?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_716/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_716/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_716/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_716_4456661while_lstm_cell_716_4456661_0"<
while_lstm_cell_716_4456663while_lstm_cell_716_4456663_0"<
while_lstm_cell_716_4456665while_lstm_cell_716_4456665_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_716/StatefulPartitionedCall+while/lstm_cell_716/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457571

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4457487*
condR
while_cond_4457486*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4456478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_715_4456502_0:	d?0
while_lstm_cell_715_4456504_0:	2?,
while_lstm_cell_715_4456506_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_715_4456502:	d?.
while_lstm_cell_715_4456504:	2?*
while_lstm_cell_715_4456506:	???+while/lstm_cell_715/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_715_4456502_0while_lstm_cell_715_4456504_0while_lstm_cell_715_4456506_0*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456419?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_715/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_715/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_715/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_715/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_715_4456502while_lstm_cell_715_4456502_0"<
while_lstm_cell_715_4456504while_lstm_cell_715_4456504_0"<
while_lstm_cell_715_4456506while_lstm_cell_715_4456506_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_715/StatefulPartitionedCall+while/lstm_cell_715/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_715_while_body_4458795.
*lstm_715_while_lstm_715_while_loop_counter4
0lstm_715_while_lstm_715_while_maximum_iterations
lstm_715_while_placeholder 
lstm_715_while_placeholder_1 
lstm_715_while_placeholder_2 
lstm_715_while_placeholder_3-
)lstm_715_while_lstm_715_strided_slice_1_0i
elstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0:	d?R
?lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?M
>lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
lstm_715_while_identity
lstm_715_while_identity_1
lstm_715_while_identity_2
lstm_715_while_identity_3
lstm_715_while_identity_4
lstm_715_while_identity_5+
'lstm_715_while_lstm_715_strided_slice_1g
clstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensorN
;lstm_715_while_lstm_cell_715_matmul_readvariableop_resource:	d?P
=lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource:	2?K
<lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource:	???3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp?2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp?4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp?
@lstm_715/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_715/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensor_0lstm_715_while_placeholderIlstm_715/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp=lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_715/while/lstm_cell_715/MatMulMatMul9lstm_715/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp?lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_715/while/lstm_cell_715/MatMul_1MatMullstm_715_while_placeholder_2<lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_715/while/lstm_cell_715/addAddV2-lstm_715/while/lstm_cell_715/MatMul:product:0/lstm_715/while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp>lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_715/while/lstm_cell_715/BiasAddBiasAdd$lstm_715/while/lstm_cell_715/add:z:0;lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_715/while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_715/while/lstm_cell_715/splitSplit5lstm_715/while/lstm_cell_715/split/split_dim:output:0-lstm_715/while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_715/while/lstm_cell_715/SigmoidSigmoid+lstm_715/while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_715/while/lstm_cell_715/Sigmoid_1Sigmoid+lstm_715/while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_715/while/lstm_cell_715/mulMul*lstm_715/while/lstm_cell_715/Sigmoid_1:y:0lstm_715_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_715/while/lstm_cell_715/ReluRelu+lstm_715/while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_715/while/lstm_cell_715/mul_1Mul(lstm_715/while/lstm_cell_715/Sigmoid:y:0/lstm_715/while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_715/while/lstm_cell_715/add_1AddV2$lstm_715/while/lstm_cell_715/mul:z:0&lstm_715/while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_715/while/lstm_cell_715/Sigmoid_2Sigmoid+lstm_715/while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_715/while/lstm_cell_715/Relu_1Relu&lstm_715/while/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_715/while/lstm_cell_715/mul_2Mul*lstm_715/while/lstm_cell_715/Sigmoid_2:y:01lstm_715/while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_715/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_715_while_placeholder_1lstm_715_while_placeholder&lstm_715/while/lstm_cell_715/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_715/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_715/while/addAddV2lstm_715_while_placeholderlstm_715/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_715/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_715/while/add_1AddV2*lstm_715_while_lstm_715_while_loop_counterlstm_715/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_715/while/IdentityIdentitylstm_715/while/add_1:z:0^lstm_715/while/NoOp*
T0*
_output_shapes
: ?
lstm_715/while/Identity_1Identity0lstm_715_while_lstm_715_while_maximum_iterations^lstm_715/while/NoOp*
T0*
_output_shapes
: t
lstm_715/while/Identity_2Identitylstm_715/while/add:z:0^lstm_715/while/NoOp*
T0*
_output_shapes
: ?
lstm_715/while/Identity_3IdentityClstm_715/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_715/while/NoOp*
T0*
_output_shapes
: ?
lstm_715/while/Identity_4Identity&lstm_715/while/lstm_cell_715/mul_2:z:0^lstm_715/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_715/while/Identity_5Identity&lstm_715/while/lstm_cell_715/add_1:z:0^lstm_715/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_715/while/NoOpNoOp4^lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp3^lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp5^lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_715_while_identity lstm_715/while/Identity:output:0"?
lstm_715_while_identity_1"lstm_715/while/Identity_1:output:0"?
lstm_715_while_identity_2"lstm_715/while/Identity_2:output:0"?
lstm_715_while_identity_3"lstm_715/while/Identity_3:output:0"?
lstm_715_while_identity_4"lstm_715/while/Identity_4:output:0"?
lstm_715_while_identity_5"lstm_715/while/Identity_5:output:0"T
'lstm_715_while_lstm_715_strided_slice_1)lstm_715_while_lstm_715_strided_slice_1_0"~
<lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource>lstm_715_while_lstm_cell_715_biasadd_readvariableop_resource_0"?
=lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource?lstm_715_while_lstm_cell_715_matmul_1_readvariableop_resource_0"|
;lstm_715_while_lstm_cell_715_matmul_readvariableop_resource=lstm_715_while_lstm_cell_715_matmul_readvariableop_resource_0"?
clstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensorelstm_715_while_tensorarrayv2read_tensorlistgetitem_lstm_715_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp3lstm_715/while/lstm_cell_715/BiasAdd/ReadVariableOp2h
2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp2lstm_715/while/lstm_cell_715/MatMul/ReadVariableOp2l
4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp4lstm_715/while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_4461458
file_prefix3
!assignvariableop_dense_238_kernel:
/
!assignvariableop_1_dense_238_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_714_lstm_cell_714_kernel:	?M
:assignvariableop_8_lstm_714_lstm_cell_714_recurrent_kernel:	d?=
.assignvariableop_9_lstm_714_lstm_cell_714_bias:	?D
1assignvariableop_10_lstm_715_lstm_cell_715_kernel:	d?N
;assignvariableop_11_lstm_715_lstm_cell_715_recurrent_kernel:	2?>
/assignvariableop_12_lstm_715_lstm_cell_715_bias:	?C
1assignvariableop_13_lstm_716_lstm_cell_716_kernel:2(M
;assignvariableop_14_lstm_716_lstm_cell_716_recurrent_kernel:
(=
/assignvariableop_15_lstm_716_lstm_cell_716_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_238_kernel_m:
7
)assignvariableop_19_adam_dense_238_bias_m:K
8assignvariableop_20_adam_lstm_714_lstm_cell_714_kernel_m:	?U
Bassignvariableop_21_adam_lstm_714_lstm_cell_714_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_714_lstm_cell_714_bias_m:	?K
8assignvariableop_23_adam_lstm_715_lstm_cell_715_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_715_lstm_cell_715_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_715_lstm_cell_715_bias_m:	?J
8assignvariableop_26_adam_lstm_716_lstm_cell_716_kernel_m:2(T
Bassignvariableop_27_adam_lstm_716_lstm_cell_716_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_716_lstm_cell_716_bias_m:(=
+assignvariableop_29_adam_dense_238_kernel_v:
7
)assignvariableop_30_adam_dense_238_bias_v:K
8assignvariableop_31_adam_lstm_714_lstm_cell_714_kernel_v:	?U
Bassignvariableop_32_adam_lstm_714_lstm_cell_714_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_714_lstm_cell_714_bias_v:	?K
8assignvariableop_34_adam_lstm_715_lstm_cell_715_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_715_lstm_cell_715_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_715_lstm_cell_715_bias_v:	?J
8assignvariableop_37_adam_lstm_716_lstm_cell_716_kernel_v:2(T
Bassignvariableop_38_adam_lstm_716_lstm_cell_716_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_716_lstm_cell_716_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_238_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_238_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_714_lstm_cell_714_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_714_lstm_cell_714_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_714_lstm_cell_714_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_715_lstm_cell_715_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_715_lstm_cell_715_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_715_lstm_cell_715_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_716_lstm_cell_716_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_716_lstm_cell_716_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_716_lstm_cell_716_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_238_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_238_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_714_lstm_cell_714_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_714_lstm_cell_714_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_714_lstm_cell_714_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_715_lstm_cell_715_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_715_lstm_cell_715_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_715_lstm_cell_715_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_716_lstm_cell_716_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_716_lstm_cell_716_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_716_lstm_cell_716_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_238_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_238_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_714_lstm_cell_714_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_714_lstm_cell_714_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_714_lstm_cell_714_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_715_lstm_cell_715_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_715_lstm_cell_715_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_715_lstm_cell_715_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_716_lstm_cell_716_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_716_lstm_cell_716_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_716_lstm_cell_716_bias_vIdentity_39:output:0"/device:CPU:0*
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
*__inference_lstm_714_layer_call_fn_4459035
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4456006|
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
while_cond_4455936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4455936___redundant_placeholder05
1while_while_cond_4455936___redundant_placeholder15
1while_while_cond_4455936___redundant_placeholder25
1while_while_cond_4455936___redundant_placeholder3
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4461087

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
lstm_715_while_cond_4458367.
*lstm_715_while_lstm_715_while_loop_counter4
0lstm_715_while_lstm_715_while_maximum_iterations
lstm_715_while_placeholder 
lstm_715_while_placeholder_1 
lstm_715_while_placeholder_2 
lstm_715_while_placeholder_30
,lstm_715_while_less_lstm_715_strided_slice_1G
Clstm_715_while_lstm_715_while_cond_4458367___redundant_placeholder0G
Clstm_715_while_lstm_715_while_cond_4458367___redundant_placeholder1G
Clstm_715_while_lstm_715_while_cond_4458367___redundant_placeholder2G
Clstm_715_while_lstm_715_while_cond_4458367___redundant_placeholder3
lstm_715_while_identity
?
lstm_715/while/LessLesslstm_715_while_placeholder,lstm_715_while_less_lstm_715_strided_slice_1*
T0*
_output_shapes
: ]
lstm_715/while/IdentityIdentitylstm_715/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_715_while_identity lstm_715/while/Identity:output:0*(
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
while_cond_4459269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459269___redundant_placeholder05
1while_while_cond_4459269___redundant_placeholder15
1while_while_cond_4459269___redundant_placeholder25
1while_while_cond_4459269___redundant_placeholder3
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
*__inference_lstm_715_layer_call_fn_4459662
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4456547|
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460729

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4460645*
condR
while_cond_4460644*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4460957

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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459640

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4459556*
condR
while_cond_4459555*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458081
lstm_714_input#
lstm_714_4458054:	?#
lstm_714_4458056:	d?
lstm_714_4458058:	?#
lstm_715_4458061:	d?#
lstm_715_4458063:	2?
lstm_715_4458065:	?"
lstm_716_4458068:2("
lstm_716_4458070:
(
lstm_716_4458072:(#
dense_238_4458075:

dense_238_4458077:
identity??!dense_238/StatefulPartitionedCall? lstm_714/StatefulPartitionedCall? lstm_715/StatefulPartitionedCall? lstm_716/StatefulPartitionedCall?
 lstm_714/StatefulPartitionedCallStatefulPartitionedCalllstm_714_inputlstm_714_4458054lstm_714_4458056lstm_714_4458058*
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457901?
 lstm_715/StatefulPartitionedCallStatefulPartitionedCall)lstm_714/StatefulPartitionedCall:output:0lstm_715_4458061lstm_715_4458063lstm_715_4458065*
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457736?
 lstm_716/StatefulPartitionedCallStatefulPartitionedCall)lstm_715/StatefulPartitionedCall:output:0lstm_716_4458068lstm_716_4458070lstm_716_4458072*
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457571?
!dense_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_716/StatefulPartitionedCall:output:0dense_238_4458075dense_238_4458077*
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4457373y
IdentityIdentity*dense_238/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_238/StatefulPartitionedCall!^lstm_714/StatefulPartitionedCall!^lstm_715/StatefulPartitionedCall!^lstm_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_238/StatefulPartitionedCall!dense_238/StatefulPartitionedCall2D
 lstm_714/StatefulPartitionedCall lstm_714/StatefulPartitionedCall2D
 lstm_715/StatefulPartitionedCall lstm_715/StatefulPartitionedCall2D
 lstm_716/StatefulPartitionedCall lstm_716/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_714_input
?8
?
while_body_4459743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459211
inputs_0?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4459127*
condR
while_cond_4459126*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4460989

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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4455923

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
%__inference_signature_wrapper_4458116
lstm_714_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_714_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4455856o
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
_user_specified_namelstm_714_input
?
?
*sequential_238_lstm_714_while_cond_4455487L
Hsequential_238_lstm_714_while_sequential_238_lstm_714_while_loop_counterR
Nsequential_238_lstm_714_while_sequential_238_lstm_714_while_maximum_iterations-
)sequential_238_lstm_714_while_placeholder/
+sequential_238_lstm_714_while_placeholder_1/
+sequential_238_lstm_714_while_placeholder_2/
+sequential_238_lstm_714_while_placeholder_3N
Jsequential_238_lstm_714_while_less_sequential_238_lstm_714_strided_slice_1e
asequential_238_lstm_714_while_sequential_238_lstm_714_while_cond_4455487___redundant_placeholder0e
asequential_238_lstm_714_while_sequential_238_lstm_714_while_cond_4455487___redundant_placeholder1e
asequential_238_lstm_714_while_sequential_238_lstm_714_while_cond_4455487___redundant_placeholder2e
asequential_238_lstm_714_while_sequential_238_lstm_714_while_cond_4455487___redundant_placeholder3*
&sequential_238_lstm_714_while_identity
?
"sequential_238/lstm_714/while/LessLess)sequential_238_lstm_714_while_placeholderJsequential_238_lstm_714_while_less_sequential_238_lstm_714_strided_slice_1*
T0*
_output_shapes
: {
&sequential_238/lstm_714/while/IdentityIdentity&sequential_238/lstm_714/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_238_lstm_714_while_identity/sequential_238/lstm_714/while/Identity:output:0*(
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459354
inputs_0?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4459270*
condR
while_cond_4459269*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457355

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4457271*
condR
while_cond_4457270*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4460171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460171___redundant_placeholder05
1while_while_cond_4460171___redundant_placeholder15
1while_while_cond_4460171___redundant_placeholder25
1while_while_cond_4460171___redundant_placeholder3
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
while_cond_4457486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4457486___redundant_placeholder05
1while_while_cond_4457486___redundant_placeholder15
1while_while_cond_4457486___redundant_placeholder25
1while_while_cond_4457486___redundant_placeholder3
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
*sequential_238_lstm_715_while_cond_4455626L
Hsequential_238_lstm_715_while_sequential_238_lstm_715_while_loop_counterR
Nsequential_238_lstm_715_while_sequential_238_lstm_715_while_maximum_iterations-
)sequential_238_lstm_715_while_placeholder/
+sequential_238_lstm_715_while_placeholder_1/
+sequential_238_lstm_715_while_placeholder_2/
+sequential_238_lstm_715_while_placeholder_3N
Jsequential_238_lstm_715_while_less_sequential_238_lstm_715_strided_slice_1e
asequential_238_lstm_715_while_sequential_238_lstm_715_while_cond_4455626___redundant_placeholder0e
asequential_238_lstm_715_while_sequential_238_lstm_715_while_cond_4455626___redundant_placeholder1e
asequential_238_lstm_715_while_sequential_238_lstm_715_while_cond_4455626___redundant_placeholder2e
asequential_238_lstm_715_while_sequential_238_lstm_715_while_cond_4455626___redundant_placeholder3*
&sequential_238_lstm_715_while_identity
?
"sequential_238/lstm_715/while/LessLess)sequential_238_lstm_715_while_placeholderJsequential_238_lstm_715_while_less_sequential_238_lstm_715_strided_slice_1*
T0*
_output_shapes
: {
&sequential_238/lstm_715/while/IdentityIdentity&sequential_238/lstm_715/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_238_lstm_715_while_identity/sequential_238/lstm_715/while/Identity:output:0*(
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
while_body_4456287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_715_4456311_0:	d?0
while_lstm_cell_715_4456313_0:	2?,
while_lstm_cell_715_4456315_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_715_4456311:	d?.
while_lstm_cell_715_4456313:	2?*
while_lstm_cell_715_4456315:	???+while/lstm_cell_715/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_715_4456311_0while_lstm_cell_715_4456313_0while_lstm_cell_715_4456315_0*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456273?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_715/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_715/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_715/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_715/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_715_4456311while_lstm_cell_715_4456311_0"<
while_lstm_cell_715_4456313while_lstm_cell_715_4456313_0"<
while_lstm_cell_715_4456315while_lstm_cell_715_4456315_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_715/StatefulPartitionedCall+while/lstm_cell_715/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_238_layer_call_fn_4458021
lstm_714_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_714_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4457969o
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
_user_specified_namelstm_714_input
?8
?
while_body_4457652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460586
inputs_0>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4460502*
condR
while_cond_4460501*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_716_while_cond_4458506.
*lstm_716_while_lstm_716_while_loop_counter4
0lstm_716_while_lstm_716_while_maximum_iterations
lstm_716_while_placeholder 
lstm_716_while_placeholder_1 
lstm_716_while_placeholder_2 
lstm_716_while_placeholder_30
,lstm_716_while_less_lstm_716_strided_slice_1G
Clstm_716_while_lstm_716_while_cond_4458506___redundant_placeholder0G
Clstm_716_while_lstm_716_while_cond_4458506___redundant_placeholder1G
Clstm_716_while_lstm_716_while_cond_4458506___redundant_placeholder2G
Clstm_716_while_lstm_716_while_cond_4458506___redundant_placeholder3
lstm_716_while_identity
?
lstm_716/while/LessLesslstm_716_while_placeholder,lstm_716_while_less_lstm_716_strided_slice_1*
T0*
_output_shapes
: ]
lstm_716/while/IdentityIdentitylstm_716/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_716_while_identity lstm_716/while/Identity:output:0*(
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
while_cond_4457270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4457270___redundant_placeholder05
1while_while_cond_4457270___redundant_placeholder15
1while_while_cond_4457270___redundant_placeholder25
1while_while_cond_4457270___redundant_placeholder3
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
/__inference_lstm_cell_715_layer_call_fn_4461006

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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456273o
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
while_cond_4456827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4456827___redundant_placeholder05
1while_while_cond_4456827___redundant_placeholder15
1while_while_cond_4456827___redundant_placeholder25
1while_while_cond_4456827___redundant_placeholder3
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
while_body_4460502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4455856
lstm_714_inputW
Dsequential_238_lstm_714_lstm_cell_714_matmul_readvariableop_resource:	?Y
Fsequential_238_lstm_714_lstm_cell_714_matmul_1_readvariableop_resource:	d?T
Esequential_238_lstm_714_lstm_cell_714_biasadd_readvariableop_resource:	?W
Dsequential_238_lstm_715_lstm_cell_715_matmul_readvariableop_resource:	d?Y
Fsequential_238_lstm_715_lstm_cell_715_matmul_1_readvariableop_resource:	2?T
Esequential_238_lstm_715_lstm_cell_715_biasadd_readvariableop_resource:	?V
Dsequential_238_lstm_716_lstm_cell_716_matmul_readvariableop_resource:2(X
Fsequential_238_lstm_716_lstm_cell_716_matmul_1_readvariableop_resource:
(S
Esequential_238_lstm_716_lstm_cell_716_biasadd_readvariableop_resource:(I
7sequential_238_dense_238_matmul_readvariableop_resource:
F
8sequential_238_dense_238_biasadd_readvariableop_resource:
identity??/sequential_238/dense_238/BiasAdd/ReadVariableOp?.sequential_238/dense_238/MatMul/ReadVariableOp?<sequential_238/lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp?;sequential_238/lstm_714/lstm_cell_714/MatMul/ReadVariableOp?=sequential_238/lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp?sequential_238/lstm_714/while?<sequential_238/lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp?;sequential_238/lstm_715/lstm_cell_715/MatMul/ReadVariableOp?=sequential_238/lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp?sequential_238/lstm_715/while?<sequential_238/lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp?;sequential_238/lstm_716/lstm_cell_716/MatMul/ReadVariableOp?=sequential_238/lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp?sequential_238/lstm_716/while[
sequential_238/lstm_714/ShapeShapelstm_714_input*
T0*
_output_shapes
:u
+sequential_238/lstm_714/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_238/lstm_714/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_238/lstm_714/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_238/lstm_714/strided_sliceStridedSlice&sequential_238/lstm_714/Shape:output:04sequential_238/lstm_714/strided_slice/stack:output:06sequential_238/lstm_714/strided_slice/stack_1:output:06sequential_238/lstm_714/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_238/lstm_714/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_238/lstm_714/zeros/packedPack.sequential_238/lstm_714/strided_slice:output:0/sequential_238/lstm_714/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_238/lstm_714/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_238/lstm_714/zerosFill-sequential_238/lstm_714/zeros/packed:output:0,sequential_238/lstm_714/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_238/lstm_714/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_238/lstm_714/zeros_1/packedPack.sequential_238/lstm_714/strided_slice:output:01sequential_238/lstm_714/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_238/lstm_714/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_238/lstm_714/zeros_1Fill/sequential_238/lstm_714/zeros_1/packed:output:0.sequential_238/lstm_714/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_238/lstm_714/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_238/lstm_714/transpose	Transposelstm_714_input/sequential_238/lstm_714/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_238/lstm_714/Shape_1Shape%sequential_238/lstm_714/transpose:y:0*
T0*
_output_shapes
:w
-sequential_238/lstm_714/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_714/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_238/lstm_714/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_714/strided_slice_1StridedSlice(sequential_238/lstm_714/Shape_1:output:06sequential_238/lstm_714/strided_slice_1/stack:output:08sequential_238/lstm_714/strided_slice_1/stack_1:output:08sequential_238/lstm_714/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_238/lstm_714/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_238/lstm_714/TensorArrayV2TensorListReserve<sequential_238/lstm_714/TensorArrayV2/element_shape:output:00sequential_238/lstm_714/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_238/lstm_714/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_238/lstm_714/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_238/lstm_714/transpose:y:0Vsequential_238/lstm_714/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_238/lstm_714/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_714/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_238/lstm_714/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_714/strided_slice_2StridedSlice%sequential_238/lstm_714/transpose:y:06sequential_238/lstm_714/strided_slice_2/stack:output:08sequential_238/lstm_714/strided_slice_2/stack_1:output:08sequential_238/lstm_714/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_238/lstm_714/lstm_cell_714/MatMul/ReadVariableOpReadVariableOpDsequential_238_lstm_714_lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_238/lstm_714/lstm_cell_714/MatMulMatMul0sequential_238/lstm_714/strided_slice_2:output:0Csequential_238/lstm_714/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_238/lstm_714/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOpFsequential_238_lstm_714_lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_238/lstm_714/lstm_cell_714/MatMul_1MatMul&sequential_238/lstm_714/zeros:output:0Esequential_238/lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_238/lstm_714/lstm_cell_714/addAddV26sequential_238/lstm_714/lstm_cell_714/MatMul:product:08sequential_238/lstm_714/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_238/lstm_714/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOpEsequential_238_lstm_714_lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_238/lstm_714/lstm_cell_714/BiasAddBiasAdd-sequential_238/lstm_714/lstm_cell_714/add:z:0Dsequential_238/lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_238/lstm_714/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_238/lstm_714/lstm_cell_714/splitSplit>sequential_238/lstm_714/lstm_cell_714/split/split_dim:output:06sequential_238/lstm_714/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_238/lstm_714/lstm_cell_714/SigmoidSigmoid4sequential_238/lstm_714/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_238/lstm_714/lstm_cell_714/Sigmoid_1Sigmoid4sequential_238/lstm_714/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_238/lstm_714/lstm_cell_714/mulMul3sequential_238/lstm_714/lstm_cell_714/Sigmoid_1:y:0(sequential_238/lstm_714/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_238/lstm_714/lstm_cell_714/ReluRelu4sequential_238/lstm_714/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_238/lstm_714/lstm_cell_714/mul_1Mul1sequential_238/lstm_714/lstm_cell_714/Sigmoid:y:08sequential_238/lstm_714/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_238/lstm_714/lstm_cell_714/add_1AddV2-sequential_238/lstm_714/lstm_cell_714/mul:z:0/sequential_238/lstm_714/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_238/lstm_714/lstm_cell_714/Sigmoid_2Sigmoid4sequential_238/lstm_714/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_238/lstm_714/lstm_cell_714/Relu_1Relu/sequential_238/lstm_714/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_238/lstm_714/lstm_cell_714/mul_2Mul3sequential_238/lstm_714/lstm_cell_714/Sigmoid_2:y:0:sequential_238/lstm_714/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_238/lstm_714/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_238/lstm_714/TensorArrayV2_1TensorListReserve>sequential_238/lstm_714/TensorArrayV2_1/element_shape:output:00sequential_238/lstm_714/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_238/lstm_714/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_238/lstm_714/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_238/lstm_714/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_238/lstm_714/whileWhile3sequential_238/lstm_714/while/loop_counter:output:09sequential_238/lstm_714/while/maximum_iterations:output:0%sequential_238/lstm_714/time:output:00sequential_238/lstm_714/TensorArrayV2_1:handle:0&sequential_238/lstm_714/zeros:output:0(sequential_238/lstm_714/zeros_1:output:00sequential_238/lstm_714/strided_slice_1:output:0Osequential_238/lstm_714/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_238_lstm_714_lstm_cell_714_matmul_readvariableop_resourceFsequential_238_lstm_714_lstm_cell_714_matmul_1_readvariableop_resourceEsequential_238_lstm_714_lstm_cell_714_biasadd_readvariableop_resource*
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
*sequential_238_lstm_714_while_body_4455488*6
cond.R,
*sequential_238_lstm_714_while_cond_4455487*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_238/lstm_714/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_238/lstm_714/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_238/lstm_714/while:output:3Qsequential_238/lstm_714/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_238/lstm_714/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_238/lstm_714/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_714/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_714/strided_slice_3StridedSliceCsequential_238/lstm_714/TensorArrayV2Stack/TensorListStack:tensor:06sequential_238/lstm_714/strided_slice_3/stack:output:08sequential_238/lstm_714/strided_slice_3/stack_1:output:08sequential_238/lstm_714/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_238/lstm_714/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_238/lstm_714/transpose_1	TransposeCsequential_238/lstm_714/TensorArrayV2Stack/TensorListStack:tensor:01sequential_238/lstm_714/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_238/lstm_714/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_238/lstm_715/ShapeShape'sequential_238/lstm_714/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_238/lstm_715/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_238/lstm_715/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_238/lstm_715/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_238/lstm_715/strided_sliceStridedSlice&sequential_238/lstm_715/Shape:output:04sequential_238/lstm_715/strided_slice/stack:output:06sequential_238/lstm_715/strided_slice/stack_1:output:06sequential_238/lstm_715/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_238/lstm_715/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_238/lstm_715/zeros/packedPack.sequential_238/lstm_715/strided_slice:output:0/sequential_238/lstm_715/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_238/lstm_715/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_238/lstm_715/zerosFill-sequential_238/lstm_715/zeros/packed:output:0,sequential_238/lstm_715/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_238/lstm_715/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_238/lstm_715/zeros_1/packedPack.sequential_238/lstm_715/strided_slice:output:01sequential_238/lstm_715/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_238/lstm_715/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_238/lstm_715/zeros_1Fill/sequential_238/lstm_715/zeros_1/packed:output:0.sequential_238/lstm_715/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_238/lstm_715/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_238/lstm_715/transpose	Transpose'sequential_238/lstm_714/transpose_1:y:0/sequential_238/lstm_715/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_238/lstm_715/Shape_1Shape%sequential_238/lstm_715/transpose:y:0*
T0*
_output_shapes
:w
-sequential_238/lstm_715/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_715/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_238/lstm_715/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_715/strided_slice_1StridedSlice(sequential_238/lstm_715/Shape_1:output:06sequential_238/lstm_715/strided_slice_1/stack:output:08sequential_238/lstm_715/strided_slice_1/stack_1:output:08sequential_238/lstm_715/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_238/lstm_715/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_238/lstm_715/TensorArrayV2TensorListReserve<sequential_238/lstm_715/TensorArrayV2/element_shape:output:00sequential_238/lstm_715/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_238/lstm_715/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_238/lstm_715/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_238/lstm_715/transpose:y:0Vsequential_238/lstm_715/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_238/lstm_715/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_715/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_238/lstm_715/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_715/strided_slice_2StridedSlice%sequential_238/lstm_715/transpose:y:06sequential_238/lstm_715/strided_slice_2/stack:output:08sequential_238/lstm_715/strided_slice_2/stack_1:output:08sequential_238/lstm_715/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_238/lstm_715/lstm_cell_715/MatMul/ReadVariableOpReadVariableOpDsequential_238_lstm_715_lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_238/lstm_715/lstm_cell_715/MatMulMatMul0sequential_238/lstm_715/strided_slice_2:output:0Csequential_238/lstm_715/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_238/lstm_715/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOpFsequential_238_lstm_715_lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_238/lstm_715/lstm_cell_715/MatMul_1MatMul&sequential_238/lstm_715/zeros:output:0Esequential_238/lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_238/lstm_715/lstm_cell_715/addAddV26sequential_238/lstm_715/lstm_cell_715/MatMul:product:08sequential_238/lstm_715/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_238/lstm_715/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOpEsequential_238_lstm_715_lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_238/lstm_715/lstm_cell_715/BiasAddBiasAdd-sequential_238/lstm_715/lstm_cell_715/add:z:0Dsequential_238/lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_238/lstm_715/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_238/lstm_715/lstm_cell_715/splitSplit>sequential_238/lstm_715/lstm_cell_715/split/split_dim:output:06sequential_238/lstm_715/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_238/lstm_715/lstm_cell_715/SigmoidSigmoid4sequential_238/lstm_715/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_238/lstm_715/lstm_cell_715/Sigmoid_1Sigmoid4sequential_238/lstm_715/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_238/lstm_715/lstm_cell_715/mulMul3sequential_238/lstm_715/lstm_cell_715/Sigmoid_1:y:0(sequential_238/lstm_715/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_238/lstm_715/lstm_cell_715/ReluRelu4sequential_238/lstm_715/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_238/lstm_715/lstm_cell_715/mul_1Mul1sequential_238/lstm_715/lstm_cell_715/Sigmoid:y:08sequential_238/lstm_715/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_238/lstm_715/lstm_cell_715/add_1AddV2-sequential_238/lstm_715/lstm_cell_715/mul:z:0/sequential_238/lstm_715/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_238/lstm_715/lstm_cell_715/Sigmoid_2Sigmoid4sequential_238/lstm_715/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_238/lstm_715/lstm_cell_715/Relu_1Relu/sequential_238/lstm_715/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_238/lstm_715/lstm_cell_715/mul_2Mul3sequential_238/lstm_715/lstm_cell_715/Sigmoid_2:y:0:sequential_238/lstm_715/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_238/lstm_715/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_238/lstm_715/TensorArrayV2_1TensorListReserve>sequential_238/lstm_715/TensorArrayV2_1/element_shape:output:00sequential_238/lstm_715/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_238/lstm_715/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_238/lstm_715/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_238/lstm_715/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_238/lstm_715/whileWhile3sequential_238/lstm_715/while/loop_counter:output:09sequential_238/lstm_715/while/maximum_iterations:output:0%sequential_238/lstm_715/time:output:00sequential_238/lstm_715/TensorArrayV2_1:handle:0&sequential_238/lstm_715/zeros:output:0(sequential_238/lstm_715/zeros_1:output:00sequential_238/lstm_715/strided_slice_1:output:0Osequential_238/lstm_715/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_238_lstm_715_lstm_cell_715_matmul_readvariableop_resourceFsequential_238_lstm_715_lstm_cell_715_matmul_1_readvariableop_resourceEsequential_238_lstm_715_lstm_cell_715_biasadd_readvariableop_resource*
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
*sequential_238_lstm_715_while_body_4455627*6
cond.R,
*sequential_238_lstm_715_while_cond_4455626*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_238/lstm_715/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_238/lstm_715/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_238/lstm_715/while:output:3Qsequential_238/lstm_715/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_238/lstm_715/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_238/lstm_715/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_715/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_715/strided_slice_3StridedSliceCsequential_238/lstm_715/TensorArrayV2Stack/TensorListStack:tensor:06sequential_238/lstm_715/strided_slice_3/stack:output:08sequential_238/lstm_715/strided_slice_3/stack_1:output:08sequential_238/lstm_715/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_238/lstm_715/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_238/lstm_715/transpose_1	TransposeCsequential_238/lstm_715/TensorArrayV2Stack/TensorListStack:tensor:01sequential_238/lstm_715/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_238/lstm_715/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_238/lstm_716/ShapeShape'sequential_238/lstm_715/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_238/lstm_716/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_238/lstm_716/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_238/lstm_716/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_238/lstm_716/strided_sliceStridedSlice&sequential_238/lstm_716/Shape:output:04sequential_238/lstm_716/strided_slice/stack:output:06sequential_238/lstm_716/strided_slice/stack_1:output:06sequential_238/lstm_716/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_238/lstm_716/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_238/lstm_716/zeros/packedPack.sequential_238/lstm_716/strided_slice:output:0/sequential_238/lstm_716/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_238/lstm_716/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_238/lstm_716/zerosFill-sequential_238/lstm_716/zeros/packed:output:0,sequential_238/lstm_716/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_238/lstm_716/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_238/lstm_716/zeros_1/packedPack.sequential_238/lstm_716/strided_slice:output:01sequential_238/lstm_716/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_238/lstm_716/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_238/lstm_716/zeros_1Fill/sequential_238/lstm_716/zeros_1/packed:output:0.sequential_238/lstm_716/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_238/lstm_716/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_238/lstm_716/transpose	Transpose'sequential_238/lstm_715/transpose_1:y:0/sequential_238/lstm_716/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_238/lstm_716/Shape_1Shape%sequential_238/lstm_716/transpose:y:0*
T0*
_output_shapes
:w
-sequential_238/lstm_716/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_716/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_238/lstm_716/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_716/strided_slice_1StridedSlice(sequential_238/lstm_716/Shape_1:output:06sequential_238/lstm_716/strided_slice_1/stack:output:08sequential_238/lstm_716/strided_slice_1/stack_1:output:08sequential_238/lstm_716/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_238/lstm_716/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_238/lstm_716/TensorArrayV2TensorListReserve<sequential_238/lstm_716/TensorArrayV2/element_shape:output:00sequential_238/lstm_716/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_238/lstm_716/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_238/lstm_716/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_238/lstm_716/transpose:y:0Vsequential_238/lstm_716/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_238/lstm_716/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_716/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_238/lstm_716/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_716/strided_slice_2StridedSlice%sequential_238/lstm_716/transpose:y:06sequential_238/lstm_716/strided_slice_2/stack:output:08sequential_238/lstm_716/strided_slice_2/stack_1:output:08sequential_238/lstm_716/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_238/lstm_716/lstm_cell_716/MatMul/ReadVariableOpReadVariableOpDsequential_238_lstm_716_lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_238/lstm_716/lstm_cell_716/MatMulMatMul0sequential_238/lstm_716/strided_slice_2:output:0Csequential_238/lstm_716/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_238/lstm_716/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOpFsequential_238_lstm_716_lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_238/lstm_716/lstm_cell_716/MatMul_1MatMul&sequential_238/lstm_716/zeros:output:0Esequential_238/lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_238/lstm_716/lstm_cell_716/addAddV26sequential_238/lstm_716/lstm_cell_716/MatMul:product:08sequential_238/lstm_716/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_238/lstm_716/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOpEsequential_238_lstm_716_lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_238/lstm_716/lstm_cell_716/BiasAddBiasAdd-sequential_238/lstm_716/lstm_cell_716/add:z:0Dsequential_238/lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_238/lstm_716/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_238/lstm_716/lstm_cell_716/splitSplit>sequential_238/lstm_716/lstm_cell_716/split/split_dim:output:06sequential_238/lstm_716/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_238/lstm_716/lstm_cell_716/SigmoidSigmoid4sequential_238/lstm_716/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_238/lstm_716/lstm_cell_716/Sigmoid_1Sigmoid4sequential_238/lstm_716/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_238/lstm_716/lstm_cell_716/mulMul3sequential_238/lstm_716/lstm_cell_716/Sigmoid_1:y:0(sequential_238/lstm_716/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_238/lstm_716/lstm_cell_716/ReluRelu4sequential_238/lstm_716/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_238/lstm_716/lstm_cell_716/mul_1Mul1sequential_238/lstm_716/lstm_cell_716/Sigmoid:y:08sequential_238/lstm_716/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_238/lstm_716/lstm_cell_716/add_1AddV2-sequential_238/lstm_716/lstm_cell_716/mul:z:0/sequential_238/lstm_716/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_238/lstm_716/lstm_cell_716/Sigmoid_2Sigmoid4sequential_238/lstm_716/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_238/lstm_716/lstm_cell_716/Relu_1Relu/sequential_238/lstm_716/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_238/lstm_716/lstm_cell_716/mul_2Mul3sequential_238/lstm_716/lstm_cell_716/Sigmoid_2:y:0:sequential_238/lstm_716/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_238/lstm_716/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_238/lstm_716/TensorArrayV2_1TensorListReserve>sequential_238/lstm_716/TensorArrayV2_1/element_shape:output:00sequential_238/lstm_716/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_238/lstm_716/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_238/lstm_716/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_238/lstm_716/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_238/lstm_716/whileWhile3sequential_238/lstm_716/while/loop_counter:output:09sequential_238/lstm_716/while/maximum_iterations:output:0%sequential_238/lstm_716/time:output:00sequential_238/lstm_716/TensorArrayV2_1:handle:0&sequential_238/lstm_716/zeros:output:0(sequential_238/lstm_716/zeros_1:output:00sequential_238/lstm_716/strided_slice_1:output:0Osequential_238/lstm_716/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_238_lstm_716_lstm_cell_716_matmul_readvariableop_resourceFsequential_238_lstm_716_lstm_cell_716_matmul_1_readvariableop_resourceEsequential_238_lstm_716_lstm_cell_716_biasadd_readvariableop_resource*
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
*sequential_238_lstm_716_while_body_4455766*6
cond.R,
*sequential_238_lstm_716_while_cond_4455765*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_238/lstm_716/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_238/lstm_716/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_238/lstm_716/while:output:3Qsequential_238/lstm_716/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_238/lstm_716/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_238/lstm_716/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_238/lstm_716/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_238/lstm_716/strided_slice_3StridedSliceCsequential_238/lstm_716/TensorArrayV2Stack/TensorListStack:tensor:06sequential_238/lstm_716/strided_slice_3/stack:output:08sequential_238/lstm_716/strided_slice_3/stack_1:output:08sequential_238/lstm_716/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_238/lstm_716/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_238/lstm_716/transpose_1	TransposeCsequential_238/lstm_716/TensorArrayV2Stack/TensorListStack:tensor:01sequential_238/lstm_716/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_238/lstm_716/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_238/dense_238/MatMul/ReadVariableOpReadVariableOp7sequential_238_dense_238_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_238/dense_238/MatMulMatMul0sequential_238/lstm_716/strided_slice_3:output:06sequential_238/dense_238/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_238/dense_238/BiasAdd/ReadVariableOpReadVariableOp8sequential_238_dense_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_238/dense_238/BiasAddBiasAdd)sequential_238/dense_238/MatMul:product:07sequential_238/dense_238/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_238/dense_238/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_238/dense_238/BiasAdd/ReadVariableOp/^sequential_238/dense_238/MatMul/ReadVariableOp=^sequential_238/lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp<^sequential_238/lstm_714/lstm_cell_714/MatMul/ReadVariableOp>^sequential_238/lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp^sequential_238/lstm_714/while=^sequential_238/lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp<^sequential_238/lstm_715/lstm_cell_715/MatMul/ReadVariableOp>^sequential_238/lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp^sequential_238/lstm_715/while=^sequential_238/lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp<^sequential_238/lstm_716/lstm_cell_716/MatMul/ReadVariableOp>^sequential_238/lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp^sequential_238/lstm_716/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_238/dense_238/BiasAdd/ReadVariableOp/sequential_238/dense_238/BiasAdd/ReadVariableOp2`
.sequential_238/dense_238/MatMul/ReadVariableOp.sequential_238/dense_238/MatMul/ReadVariableOp2|
<sequential_238/lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp<sequential_238/lstm_714/lstm_cell_714/BiasAdd/ReadVariableOp2z
;sequential_238/lstm_714/lstm_cell_714/MatMul/ReadVariableOp;sequential_238/lstm_714/lstm_cell_714/MatMul/ReadVariableOp2~
=sequential_238/lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp=sequential_238/lstm_714/lstm_cell_714/MatMul_1/ReadVariableOp2>
sequential_238/lstm_714/whilesequential_238/lstm_714/while2|
<sequential_238/lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp<sequential_238/lstm_715/lstm_cell_715/BiasAdd/ReadVariableOp2z
;sequential_238/lstm_715/lstm_cell_715/MatMul/ReadVariableOp;sequential_238/lstm_715/lstm_cell_715/MatMul/ReadVariableOp2~
=sequential_238/lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp=sequential_238/lstm_715/lstm_cell_715/MatMul_1/ReadVariableOp2>
sequential_238/lstm_715/whilesequential_238/lstm_715/while2|
<sequential_238/lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp<sequential_238/lstm_716/lstm_cell_716/BiasAdd/ReadVariableOp2z
;sequential_238/lstm_716/lstm_cell_716/MatMul/ReadVariableOp;sequential_238/lstm_716/lstm_cell_716/MatMul/ReadVariableOp2~
=sequential_238/lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp=sequential_238/lstm_716/lstm_cell_716/MatMul_1/ReadVariableOp2>
sequential_238/lstm_716/whilesequential_238/lstm_716/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_714_input
?
?
*__inference_lstm_714_layer_call_fn_4459057

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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457055s
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457736

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4457652*
condR
while_cond_4457651*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_715_layer_call_fn_4459673

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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4457205s
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
*__inference_lstm_716_layer_call_fn_4460278
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4456897o
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
/__inference_lstm_cell_716_layer_call_fn_4461121

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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456769o
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
while_cond_4457651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4457651___redundant_placeholder05
1while_while_cond_4457651___redundant_placeholder15
1while_while_cond_4457651___redundant_placeholder25
1while_while_cond_4457651___redundant_placeholder3
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
+__inference_dense_238_layer_call_fn_4460881

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
F__inference_dense_238_layer_call_and_return_conditional_losses_4457373o
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456273

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
?
while_cond_4460358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460358___redundant_placeholder05
1while_while_cond_4460358___redundant_placeholder15
1while_while_cond_4460358___redundant_placeholder25
1while_while_cond_4460358___redundant_placeholder3
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
while_body_4457121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4456069

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
while_cond_4459742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459742___redundant_placeholder05
1while_while_cond_4459742___redundant_placeholder15
1while_while_cond_4459742___redundant_placeholder25
1while_while_cond_4459742___redundant_placeholder3
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4460113

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4460029*
condR
while_cond_4460028*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456623

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
while_cond_4456127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4456127___redundant_placeholder05
1while_while_cond_4456127___redundant_placeholder15
1while_while_cond_4456127___redundant_placeholder25
1while_while_cond_4456127___redundant_placeholder3
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
lstm_714_while_cond_4458228.
*lstm_714_while_lstm_714_while_loop_counter4
0lstm_714_while_lstm_714_while_maximum_iterations
lstm_714_while_placeholder 
lstm_714_while_placeholder_1 
lstm_714_while_placeholder_2 
lstm_714_while_placeholder_30
,lstm_714_while_less_lstm_714_strided_slice_1G
Clstm_714_while_lstm_714_while_cond_4458228___redundant_placeholder0G
Clstm_714_while_lstm_714_while_cond_4458228___redundant_placeholder1G
Clstm_714_while_lstm_714_while_cond_4458228___redundant_placeholder2G
Clstm_714_while_lstm_714_while_cond_4458228___redundant_placeholder3
lstm_714_while_identity
?
lstm_714/while/LessLesslstm_714_while_placeholder,lstm_714_while_less_lstm_714_strided_slice_1*
T0*
_output_shapes
: ]
lstm_714/while/IdentityIdentitylstm_714/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_714_while_identity lstm_714/while/Identity:output:0*(
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
while_cond_4459885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459885___redundant_placeholder05
1while_while_cond_4459885___redundant_placeholder15
1while_while_cond_4459885___redundant_placeholder25
1while_while_cond_4459885___redundant_placeholder3
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
?W
?
 __inference__traced_save_4461328
file_prefix/
+savev2_dense_238_kernel_read_readvariableop-
)savev2_dense_238_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_714_lstm_cell_714_kernel_read_readvariableopF
Bsavev2_lstm_714_lstm_cell_714_recurrent_kernel_read_readvariableop:
6savev2_lstm_714_lstm_cell_714_bias_read_readvariableop<
8savev2_lstm_715_lstm_cell_715_kernel_read_readvariableopF
Bsavev2_lstm_715_lstm_cell_715_recurrent_kernel_read_readvariableop:
6savev2_lstm_715_lstm_cell_715_bias_read_readvariableop<
8savev2_lstm_716_lstm_cell_716_kernel_read_readvariableopF
Bsavev2_lstm_716_lstm_cell_716_recurrent_kernel_read_readvariableop:
6savev2_lstm_716_lstm_cell_716_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_238_kernel_m_read_readvariableop4
0savev2_adam_dense_238_bias_m_read_readvariableopC
?savev2_adam_lstm_714_lstm_cell_714_kernel_m_read_readvariableopM
Isavev2_adam_lstm_714_lstm_cell_714_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_714_lstm_cell_714_bias_m_read_readvariableopC
?savev2_adam_lstm_715_lstm_cell_715_kernel_m_read_readvariableopM
Isavev2_adam_lstm_715_lstm_cell_715_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_715_lstm_cell_715_bias_m_read_readvariableopC
?savev2_adam_lstm_716_lstm_cell_716_kernel_m_read_readvariableopM
Isavev2_adam_lstm_716_lstm_cell_716_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_716_lstm_cell_716_bias_m_read_readvariableop6
2savev2_adam_dense_238_kernel_v_read_readvariableop4
0savev2_adam_dense_238_bias_v_read_readvariableopC
?savev2_adam_lstm_714_lstm_cell_714_kernel_v_read_readvariableopM
Isavev2_adam_lstm_714_lstm_cell_714_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_714_lstm_cell_714_bias_v_read_readvariableopC
?savev2_adam_lstm_715_lstm_cell_715_kernel_v_read_readvariableopM
Isavev2_adam_lstm_715_lstm_cell_715_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_715_lstm_cell_715_bias_v_read_readvariableopC
?savev2_adam_lstm_716_lstm_cell_716_kernel_v_read_readvariableopM
Isavev2_adam_lstm_716_lstm_cell_716_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_716_lstm_cell_716_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_238_kernel_read_readvariableop)savev2_dense_238_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_714_lstm_cell_714_kernel_read_readvariableopBsavev2_lstm_714_lstm_cell_714_recurrent_kernel_read_readvariableop6savev2_lstm_714_lstm_cell_714_bias_read_readvariableop8savev2_lstm_715_lstm_cell_715_kernel_read_readvariableopBsavev2_lstm_715_lstm_cell_715_recurrent_kernel_read_readvariableop6savev2_lstm_715_lstm_cell_715_bias_read_readvariableop8savev2_lstm_716_lstm_cell_716_kernel_read_readvariableopBsavev2_lstm_716_lstm_cell_716_recurrent_kernel_read_readvariableop6savev2_lstm_716_lstm_cell_716_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_238_kernel_m_read_readvariableop0savev2_adam_dense_238_bias_m_read_readvariableop?savev2_adam_lstm_714_lstm_cell_714_kernel_m_read_readvariableopIsavev2_adam_lstm_714_lstm_cell_714_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_714_lstm_cell_714_bias_m_read_readvariableop?savev2_adam_lstm_715_lstm_cell_715_kernel_m_read_readvariableopIsavev2_adam_lstm_715_lstm_cell_715_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_715_lstm_cell_715_bias_m_read_readvariableop?savev2_adam_lstm_716_lstm_cell_716_kernel_m_read_readvariableopIsavev2_adam_lstm_716_lstm_cell_716_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_716_lstm_cell_716_bias_m_read_readvariableop2savev2_adam_dense_238_kernel_v_read_readvariableop0savev2_adam_dense_238_bias_v_read_readvariableop?savev2_adam_lstm_714_lstm_cell_714_kernel_v_read_readvariableopIsavev2_adam_lstm_714_lstm_cell_714_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_714_lstm_cell_714_bias_v_read_readvariableop?savev2_adam_lstm_715_lstm_cell_715_kernel_v_read_readvariableopIsavev2_adam_lstm_715_lstm_cell_715_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_715_lstm_cell_715_bias_v_read_readvariableop?savev2_adam_lstm_716_lstm_cell_716_kernel_v_read_readvariableopIsavev2_adam_lstm_716_lstm_cell_716_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_716_lstm_cell_716_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
lstm_716_while_cond_4458933.
*lstm_716_while_lstm_716_while_loop_counter4
0lstm_716_while_lstm_716_while_maximum_iterations
lstm_716_while_placeholder 
lstm_716_while_placeholder_1 
lstm_716_while_placeholder_2 
lstm_716_while_placeholder_30
,lstm_716_while_less_lstm_716_strided_slice_1G
Clstm_716_while_lstm_716_while_cond_4458933___redundant_placeholder0G
Clstm_716_while_lstm_716_while_cond_4458933___redundant_placeholder1G
Clstm_716_while_lstm_716_while_cond_4458933___redundant_placeholder2G
Clstm_716_while_lstm_716_while_cond_4458933___redundant_placeholder3
lstm_716_while_identity
?
lstm_716/while/LessLesslstm_716_while_placeholder,lstm_716_while_less_lstm_716_strided_slice_1*
T0*
_output_shapes
: ]
lstm_716/while/IdentityIdentitylstm_716/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_716_while_identity lstm_716/while/Identity:output:0*(
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4456547

inputs(
lstm_cell_715_4456465:	d?(
lstm_cell_715_4456467:	2?$
lstm_cell_715_4456469:	?
identity??%lstm_cell_715/StatefulPartitionedCall?while;
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
%lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_715_4456465lstm_cell_715_4456467lstm_cell_715_4456469*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456419n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_715_4456465lstm_cell_715_4456467lstm_cell_715_4456469*
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
while_body_4456478*
condR
while_cond_4456477*K
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
NoOpNoOp&^lstm_cell_715/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_715/StatefulPartitionedCall%lstm_cell_715/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_716_layer_call_fn_4460300

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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457571o
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
?J
?
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457055

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4456971*
condR
while_cond_4456970*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_714_layer_call_and_return_conditional_losses_4456006

inputs(
lstm_cell_714_4455924:	?(
lstm_cell_714_4455926:	d?$
lstm_cell_714_4455928:	?
identity??%lstm_cell_714/StatefulPartitionedCall?while;
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
%lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_714_4455924lstm_cell_714_4455926lstm_cell_714_4455928*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4455923n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_714_4455924lstm_cell_714_4455926lstm_cell_714_4455928*
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
while_body_4455937*
condR
while_cond_4455936*K
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
NoOpNoOp&^lstm_cell_714/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_714/StatefulPartitionedCall%lstm_cell_714/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_715_layer_call_fn_4461023

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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456419o
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

?
0__inference_sequential_238_layer_call_fn_4458170

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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4457969o
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
*__inference_lstm_714_layer_call_fn_4459068

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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4457901s
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
?
?
*__inference_lstm_716_layer_call_fn_4460289

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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4457355o
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
while_cond_4459126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459126___redundant_placeholder05
1while_while_cond_4459126___redundant_placeholder15
1while_while_cond_4459126___redundant_placeholder25
1while_while_cond_4459126___redundant_placeholder3
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
while_cond_4460644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460644___redundant_placeholder05
1while_while_cond_4460644___redundant_placeholder15
1while_while_cond_4460644___redundant_placeholder25
1while_while_cond_4460644___redundant_placeholder3
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
while_body_4456828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_716_4456852_0:2(/
while_lstm_cell_716_4456854_0:
(+
while_lstm_cell_716_4456856_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_716_4456852:2(-
while_lstm_cell_716_4456854:
()
while_lstm_cell_716_4456856:(??+while/lstm_cell_716/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_716_4456852_0while_lstm_cell_716_4456854_0while_lstm_cell_716_4456856_0*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4456769?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_716/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_716/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_716/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_716_4456852while_lstm_cell_716_4456852_0"<
while_lstm_cell_716_4456854while_lstm_cell_716_4456854_0"<
while_lstm_cell_716_4456856while_lstm_cell_716_4456856_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_716/StatefulPartitionedCall+while/lstm_cell_716/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_238_lstm_716_while_body_4455766L
Hsequential_238_lstm_716_while_sequential_238_lstm_716_while_loop_counterR
Nsequential_238_lstm_716_while_sequential_238_lstm_716_while_maximum_iterations-
)sequential_238_lstm_716_while_placeholder/
+sequential_238_lstm_716_while_placeholder_1/
+sequential_238_lstm_716_while_placeholder_2/
+sequential_238_lstm_716_while_placeholder_3K
Gsequential_238_lstm_716_while_sequential_238_lstm_716_strided_slice_1_0?
?sequential_238_lstm_716_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_716_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_238_lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0:2(`
Nsequential_238_lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0:
([
Msequential_238_lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0:(*
&sequential_238_lstm_716_while_identity,
(sequential_238_lstm_716_while_identity_1,
(sequential_238_lstm_716_while_identity_2,
(sequential_238_lstm_716_while_identity_3,
(sequential_238_lstm_716_while_identity_4,
(sequential_238_lstm_716_while_identity_5I
Esequential_238_lstm_716_while_sequential_238_lstm_716_strided_slice_1?
?sequential_238_lstm_716_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_716_tensorarrayunstack_tensorlistfromtensor\
Jsequential_238_lstm_716_while_lstm_cell_716_matmul_readvariableop_resource:2(^
Lsequential_238_lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource:
(Y
Ksequential_238_lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource:(??Bsequential_238/lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp?Asequential_238/lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp?Csequential_238/lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp?
Osequential_238/lstm_716/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_238/lstm_716/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_238_lstm_716_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_716_tensorarrayunstack_tensorlistfromtensor_0)sequential_238_lstm_716_while_placeholderXsequential_238/lstm_716/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_238/lstm_716/while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOpLsequential_238_lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_238/lstm_716/while/lstm_cell_716/MatMulMatMulHsequential_238/lstm_716/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_238/lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_238/lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOpNsequential_238_lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_238/lstm_716/while/lstm_cell_716/MatMul_1MatMul+sequential_238_lstm_716_while_placeholder_2Ksequential_238/lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_238/lstm_716/while/lstm_cell_716/addAddV2<sequential_238/lstm_716/while/lstm_cell_716/MatMul:product:0>sequential_238/lstm_716/while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_238/lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOpMsequential_238_lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_238/lstm_716/while/lstm_cell_716/BiasAddBiasAdd3sequential_238/lstm_716/while/lstm_cell_716/add:z:0Jsequential_238/lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_238/lstm_716/while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_238/lstm_716/while/lstm_cell_716/splitSplitDsequential_238/lstm_716/while/lstm_cell_716/split/split_dim:output:0<sequential_238/lstm_716/while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_238/lstm_716/while/lstm_cell_716/SigmoidSigmoid:sequential_238/lstm_716/while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_238/lstm_716/while/lstm_cell_716/Sigmoid_1Sigmoid:sequential_238/lstm_716/while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_238/lstm_716/while/lstm_cell_716/mulMul9sequential_238/lstm_716/while/lstm_cell_716/Sigmoid_1:y:0+sequential_238_lstm_716_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_238/lstm_716/while/lstm_cell_716/ReluRelu:sequential_238/lstm_716/while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_238/lstm_716/while/lstm_cell_716/mul_1Mul7sequential_238/lstm_716/while/lstm_cell_716/Sigmoid:y:0>sequential_238/lstm_716/while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_238/lstm_716/while/lstm_cell_716/add_1AddV23sequential_238/lstm_716/while/lstm_cell_716/mul:z:05sequential_238/lstm_716/while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_238/lstm_716/while/lstm_cell_716/Sigmoid_2Sigmoid:sequential_238/lstm_716/while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_238/lstm_716/while/lstm_cell_716/Relu_1Relu5sequential_238/lstm_716/while/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_238/lstm_716/while/lstm_cell_716/mul_2Mul9sequential_238/lstm_716/while/lstm_cell_716/Sigmoid_2:y:0@sequential_238/lstm_716/while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_238/lstm_716/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_238_lstm_716_while_placeholder_1)sequential_238_lstm_716_while_placeholder5sequential_238/lstm_716/while/lstm_cell_716/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_238/lstm_716/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_238/lstm_716/while/addAddV2)sequential_238_lstm_716_while_placeholder,sequential_238/lstm_716/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_238/lstm_716/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_238/lstm_716/while/add_1AddV2Hsequential_238_lstm_716_while_sequential_238_lstm_716_while_loop_counter.sequential_238/lstm_716/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_238/lstm_716/while/IdentityIdentity'sequential_238/lstm_716/while/add_1:z:0#^sequential_238/lstm_716/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_716/while/Identity_1IdentityNsequential_238_lstm_716_while_sequential_238_lstm_716_while_maximum_iterations#^sequential_238/lstm_716/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_716/while/Identity_2Identity%sequential_238/lstm_716/while/add:z:0#^sequential_238/lstm_716/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_716/while/Identity_3IdentityRsequential_238/lstm_716/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_238/lstm_716/while/NoOp*
T0*
_output_shapes
: ?
(sequential_238/lstm_716/while/Identity_4Identity5sequential_238/lstm_716/while/lstm_cell_716/mul_2:z:0#^sequential_238/lstm_716/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_238/lstm_716/while/Identity_5Identity5sequential_238/lstm_716/while/lstm_cell_716/add_1:z:0#^sequential_238/lstm_716/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_238/lstm_716/while/NoOpNoOpC^sequential_238/lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOpB^sequential_238/lstm_716/while/lstm_cell_716/MatMul/ReadVariableOpD^sequential_238/lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_238_lstm_716_while_identity/sequential_238/lstm_716/while/Identity:output:0"]
(sequential_238_lstm_716_while_identity_11sequential_238/lstm_716/while/Identity_1:output:0"]
(sequential_238_lstm_716_while_identity_21sequential_238/lstm_716/while/Identity_2:output:0"]
(sequential_238_lstm_716_while_identity_31sequential_238/lstm_716/while/Identity_3:output:0"]
(sequential_238_lstm_716_while_identity_41sequential_238/lstm_716/while/Identity_4:output:0"]
(sequential_238_lstm_716_while_identity_51sequential_238/lstm_716/while/Identity_5:output:0"?
Ksequential_238_lstm_716_while_lstm_cell_716_biasadd_readvariableop_resourceMsequential_238_lstm_716_while_lstm_cell_716_biasadd_readvariableop_resource_0"?
Lsequential_238_lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resourceNsequential_238_lstm_716_while_lstm_cell_716_matmul_1_readvariableop_resource_0"?
Jsequential_238_lstm_716_while_lstm_cell_716_matmul_readvariableop_resourceLsequential_238_lstm_716_while_lstm_cell_716_matmul_readvariableop_resource_0"?
Esequential_238_lstm_716_while_sequential_238_lstm_716_strided_slice_1Gsequential_238_lstm_716_while_sequential_238_lstm_716_strided_slice_1_0"?
?sequential_238_lstm_716_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_716_tensorarrayunstack_tensorlistfromtensor?sequential_238_lstm_716_while_tensorarrayv2read_tensorlistgetitem_sequential_238_lstm_716_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_238/lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOpBsequential_238/lstm_716/while/lstm_cell_716/BiasAdd/ReadVariableOp2?
Asequential_238/lstm_716/while/lstm_cell_716/MatMul/ReadVariableOpAsequential_238/lstm_716/while/lstm_cell_716/MatMul/ReadVariableOp2?
Csequential_238/lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOpCsequential_238/lstm_716/while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4456477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4456477___redundant_placeholder05
1while_while_cond_4456477___redundant_placeholder15
1while_while_cond_4456477___redundant_placeholder25
1while_while_cond_4456477___redundant_placeholder3
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
while_cond_4460501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460501___redundant_placeholder05
1while_while_cond_4460501___redundant_placeholder15
1while_while_cond_4460501___redundant_placeholder25
1while_while_cond_4460501___redundant_placeholder3
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4456356

inputs(
lstm_cell_715_4456274:	d?(
lstm_cell_715_4456276:	2?$
lstm_cell_715_4456278:	?
identity??%lstm_cell_715/StatefulPartitionedCall?while;
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
%lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_715_4456274lstm_cell_715_4456276lstm_cell_715_4456278*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4456273n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_715_4456274lstm_cell_715_4456276lstm_cell_715_4456278*
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
while_body_4456287*
condR
while_cond_4456286*K
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
NoOpNoOp&^lstm_cell_715/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_715/StatefulPartitionedCall%lstm_cell_715/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4457817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4459413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_714_input;
 serving_default_lstm_714_input:0?????????=
	dense_2380
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
2dense_238/kernel
:2dense_238/bias
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
0:.	?2lstm_714/lstm_cell_714/kernel
::8	d?2'lstm_714/lstm_cell_714/recurrent_kernel
*:(?2lstm_714/lstm_cell_714/bias
0:.	d?2lstm_715/lstm_cell_715/kernel
::8	2?2'lstm_715/lstm_cell_715/recurrent_kernel
*:(?2lstm_715/lstm_cell_715/bias
/:-2(2lstm_716/lstm_cell_716/kernel
9:7
(2'lstm_716/lstm_cell_716/recurrent_kernel
):'(2lstm_716/lstm_cell_716/bias
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
2Adam/dense_238/kernel/m
!:2Adam/dense_238/bias/m
5:3	?2$Adam/lstm_714/lstm_cell_714/kernel/m
?:=	d?2.Adam/lstm_714/lstm_cell_714/recurrent_kernel/m
/:-?2"Adam/lstm_714/lstm_cell_714/bias/m
5:3	d?2$Adam/lstm_715/lstm_cell_715/kernel/m
?:=	2?2.Adam/lstm_715/lstm_cell_715/recurrent_kernel/m
/:-?2"Adam/lstm_715/lstm_cell_715/bias/m
4:22(2$Adam/lstm_716/lstm_cell_716/kernel/m
>:<
(2.Adam/lstm_716/lstm_cell_716/recurrent_kernel/m
.:,(2"Adam/lstm_716/lstm_cell_716/bias/m
':%
2Adam/dense_238/kernel/v
!:2Adam/dense_238/bias/v
5:3	?2$Adam/lstm_714/lstm_cell_714/kernel/v
?:=	d?2.Adam/lstm_714/lstm_cell_714/recurrent_kernel/v
/:-?2"Adam/lstm_714/lstm_cell_714/bias/v
5:3	d?2$Adam/lstm_715/lstm_cell_715/kernel/v
?:=	2?2.Adam/lstm_715/lstm_cell_715/recurrent_kernel/v
/:-?2"Adam/lstm_715/lstm_cell_715/bias/v
4:22(2$Adam/lstm_716/lstm_cell_716/kernel/v
>:<
(2.Adam/lstm_716/lstm_cell_716/recurrent_kernel/v
.:,(2"Adam/lstm_716/lstm_cell_716/bias/v
?2?
0__inference_sequential_238_layer_call_fn_4457405
0__inference_sequential_238_layer_call_fn_4458143
0__inference_sequential_238_layer_call_fn_4458170
0__inference_sequential_238_layer_call_fn_4458021?
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458597
K__inference_sequential_238_layer_call_and_return_conditional_losses_4459024
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458051
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458081?
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
"__inference__wrapped_model_4455856lstm_714_input"?
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
*__inference_lstm_714_layer_call_fn_4459035
*__inference_lstm_714_layer_call_fn_4459046
*__inference_lstm_714_layer_call_fn_4459057
*__inference_lstm_714_layer_call_fn_4459068?
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459211
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459354
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459497
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459640?
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
*__inference_lstm_715_layer_call_fn_4459651
*__inference_lstm_715_layer_call_fn_4459662
*__inference_lstm_715_layer_call_fn_4459673
*__inference_lstm_715_layer_call_fn_4459684?
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4459827
E__inference_lstm_715_layer_call_and_return_conditional_losses_4459970
E__inference_lstm_715_layer_call_and_return_conditional_losses_4460113
E__inference_lstm_715_layer_call_and_return_conditional_losses_4460256?
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
*__inference_lstm_716_layer_call_fn_4460267
*__inference_lstm_716_layer_call_fn_4460278
*__inference_lstm_716_layer_call_fn_4460289
*__inference_lstm_716_layer_call_fn_4460300?
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460443
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460586
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460729
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460872?
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
+__inference_dense_238_layer_call_fn_4460881?
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
F__inference_dense_238_layer_call_and_return_conditional_losses_4460891?
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
%__inference_signature_wrapper_4458116lstm_714_input"?
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
/__inference_lstm_cell_714_layer_call_fn_4460908
/__inference_lstm_cell_714_layer_call_fn_4460925?
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4460957
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4460989?
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
/__inference_lstm_cell_715_layer_call_fn_4461006
/__inference_lstm_cell_715_layer_call_fn_4461023?
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4461055
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4461087?
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
/__inference_lstm_cell_716_layer_call_fn_4461104
/__inference_lstm_cell_716_layer_call_fn_4461121?
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4461153
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4461185?
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
"__inference__wrapped_model_4455856?()*+,-./0;?8
1?.
,?)
lstm_714_input?????????
? "5?2
0
	dense_238#? 
	dense_238??????????
F__inference_dense_238_layer_call_and_return_conditional_losses_4460891\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_238_layer_call_fn_4460881O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459211?()*O?L
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459354?()*O?L
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459497q()*??<
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
E__inference_lstm_714_layer_call_and_return_conditional_losses_4459640q()*??<
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
*__inference_lstm_714_layer_call_fn_4459035}()*O?L
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
*__inference_lstm_714_layer_call_fn_4459046}()*O?L
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
*__inference_lstm_714_layer_call_fn_4459057d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_714_layer_call_fn_4459068d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_715_layer_call_and_return_conditional_losses_4459827?+,-O?L
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4459970?+,-O?L
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4460113q+,-??<
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
E__inference_lstm_715_layer_call_and_return_conditional_losses_4460256q+,-??<
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
*__inference_lstm_715_layer_call_fn_4459651}+,-O?L
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
*__inference_lstm_715_layer_call_fn_4459662}+,-O?L
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
*__inference_lstm_715_layer_call_fn_4459673d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_715_layer_call_fn_4459684d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460443}./0O?L
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460586}./0O?L
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460729m./0??<
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
E__inference_lstm_716_layer_call_and_return_conditional_losses_4460872m./0??<
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
*__inference_lstm_716_layer_call_fn_4460267p./0O?L
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
*__inference_lstm_716_layer_call_fn_4460278p./0O?L
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
*__inference_lstm_716_layer_call_fn_4460289`./0??<
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
*__inference_lstm_716_layer_call_fn_4460300`./0??<
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4460957?()*??}
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4460989?()*??}
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
/__inference_lstm_cell_714_layer_call_fn_4460908?()*??}
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
/__inference_lstm_cell_714_layer_call_fn_4460925?()*??}
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4461055?+,-??}
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4461087?+,-??}
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
/__inference_lstm_cell_715_layer_call_fn_4461006?+,-??}
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
/__inference_lstm_cell_715_layer_call_fn_4461023?+,-??}
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4461153?./0??}
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4461185?./0??}
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
/__inference_lstm_cell_716_layer_call_fn_4461104?./0??}
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
/__inference_lstm_cell_716_layer_call_fn_4461121?./0??}
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458051y()*+,-./0C?@
9?6
,?)
lstm_714_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458081y()*+,-./0C?@
9?6
,?)
lstm_714_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_238_layer_call_and_return_conditional_losses_4458597q()*+,-./0;?8
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
K__inference_sequential_238_layer_call_and_return_conditional_losses_4459024q()*+,-./0;?8
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
0__inference_sequential_238_layer_call_fn_4457405l()*+,-./0C?@
9?6
,?)
lstm_714_input?????????
p 

 
? "???????????
0__inference_sequential_238_layer_call_fn_4458021l()*+,-./0C?@
9?6
,?)
lstm_714_input?????????
p

 
? "???????????
0__inference_sequential_238_layer_call_fn_4458143d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_238_layer_call_fn_4458170d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4458116?()*+,-./0M?J
? 
C?@
>
lstm_714_input,?)
lstm_714_input?????????"5?2
0
	dense_238#? 
	dense_238?????????