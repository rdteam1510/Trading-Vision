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
dense_272/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_272/kernel
u
$dense_272/kernel/Read/ReadVariableOpReadVariableOpdense_272/kernel*
_output_shapes

:
*
dtype0
t
dense_272/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_272/bias
m
"dense_272/bias/Read/ReadVariableOpReadVariableOpdense_272/bias*
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
lstm_816/lstm_cell_816/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_816/lstm_cell_816/kernel
?
1lstm_816/lstm_cell_816/kernel/Read/ReadVariableOpReadVariableOplstm_816/lstm_cell_816/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_816/lstm_cell_816/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_816/lstm_cell_816/recurrent_kernel
?
;lstm_816/lstm_cell_816/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_816/lstm_cell_816/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_816/lstm_cell_816/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_816/lstm_cell_816/bias
?
/lstm_816/lstm_cell_816/bias/Read/ReadVariableOpReadVariableOplstm_816/lstm_cell_816/bias*
_output_shapes	
:?*
dtype0
?
lstm_817/lstm_cell_817/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_817/lstm_cell_817/kernel
?
1lstm_817/lstm_cell_817/kernel/Read/ReadVariableOpReadVariableOplstm_817/lstm_cell_817/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_817/lstm_cell_817/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_817/lstm_cell_817/recurrent_kernel
?
;lstm_817/lstm_cell_817/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_817/lstm_cell_817/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_817/lstm_cell_817/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_817/lstm_cell_817/bias
?
/lstm_817/lstm_cell_817/bias/Read/ReadVariableOpReadVariableOplstm_817/lstm_cell_817/bias*
_output_shapes	
:?*
dtype0
?
lstm_818/lstm_cell_818/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_818/lstm_cell_818/kernel
?
1lstm_818/lstm_cell_818/kernel/Read/ReadVariableOpReadVariableOplstm_818/lstm_cell_818/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_818/lstm_cell_818/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_818/lstm_cell_818/recurrent_kernel
?
;lstm_818/lstm_cell_818/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_818/lstm_cell_818/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_818/lstm_cell_818/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_818/lstm_cell_818/bias
?
/lstm_818/lstm_cell_818/bias/Read/ReadVariableOpReadVariableOplstm_818/lstm_cell_818/bias*
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
Adam/dense_272/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_272/kernel/m
?
+Adam/dense_272/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_272/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_272/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_272/bias/m
{
)Adam/dense_272/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_272/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_816/lstm_cell_816/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_816/lstm_cell_816/kernel/m
?
8Adam/lstm_816/lstm_cell_816/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_816/lstm_cell_816/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_816/lstm_cell_816/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_816/lstm_cell_816/recurrent_kernel/m
?
BAdam/lstm_816/lstm_cell_816/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_816/lstm_cell_816/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_816/lstm_cell_816/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_816/lstm_cell_816/bias/m
?
6Adam/lstm_816/lstm_cell_816/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_816/lstm_cell_816/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_817/lstm_cell_817/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_817/lstm_cell_817/kernel/m
?
8Adam/lstm_817/lstm_cell_817/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_817/lstm_cell_817/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_817/lstm_cell_817/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_817/lstm_cell_817/recurrent_kernel/m
?
BAdam/lstm_817/lstm_cell_817/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_817/lstm_cell_817/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_817/lstm_cell_817/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_817/lstm_cell_817/bias/m
?
6Adam/lstm_817/lstm_cell_817/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_817/lstm_cell_817/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_818/lstm_cell_818/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_818/lstm_cell_818/kernel/m
?
8Adam/lstm_818/lstm_cell_818/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_818/lstm_cell_818/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_818/lstm_cell_818/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_818/lstm_cell_818/recurrent_kernel/m
?
BAdam/lstm_818/lstm_cell_818/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_818/lstm_cell_818/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_818/lstm_cell_818/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_818/lstm_cell_818/bias/m
?
6Adam/lstm_818/lstm_cell_818/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_818/lstm_cell_818/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_272/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_272/kernel/v
?
+Adam/dense_272/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_272/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_272/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_272/bias/v
{
)Adam/dense_272/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_272/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_816/lstm_cell_816/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_816/lstm_cell_816/kernel/v
?
8Adam/lstm_816/lstm_cell_816/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_816/lstm_cell_816/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_816/lstm_cell_816/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_816/lstm_cell_816/recurrent_kernel/v
?
BAdam/lstm_816/lstm_cell_816/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_816/lstm_cell_816/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_816/lstm_cell_816/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_816/lstm_cell_816/bias/v
?
6Adam/lstm_816/lstm_cell_816/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_816/lstm_cell_816/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_817/lstm_cell_817/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_817/lstm_cell_817/kernel/v
?
8Adam/lstm_817/lstm_cell_817/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_817/lstm_cell_817/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_817/lstm_cell_817/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_817/lstm_cell_817/recurrent_kernel/v
?
BAdam/lstm_817/lstm_cell_817/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_817/lstm_cell_817/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_817/lstm_cell_817/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_817/lstm_cell_817/bias/v
?
6Adam/lstm_817/lstm_cell_817/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_817/lstm_cell_817/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_818/lstm_cell_818/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_818/lstm_cell_818/kernel/v
?
8Adam/lstm_818/lstm_cell_818/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_818/lstm_cell_818/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_818/lstm_cell_818/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_818/lstm_cell_818/recurrent_kernel/v
?
BAdam/lstm_818/lstm_cell_818/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_818/lstm_cell_818/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_818/lstm_cell_818/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_818/lstm_cell_818/bias/v
?
6Adam/lstm_818/lstm_cell_818/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_818/lstm_cell_818/bias/v*
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
VARIABLE_VALUEdense_272/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_272/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_816/lstm_cell_816/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_816/lstm_cell_816/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_816/lstm_cell_816/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_817/lstm_cell_817/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_817/lstm_cell_817/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_817/lstm_cell_817/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_818/lstm_cell_818/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_818/lstm_cell_818/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_818/lstm_cell_818/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_272/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_272/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_816/lstm_cell_816/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_816/lstm_cell_816/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_816/lstm_cell_816/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_817/lstm_cell_817/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_817/lstm_cell_817/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_817/lstm_cell_817/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_818/lstm_cell_818/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_818/lstm_cell_818/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_818/lstm_cell_818/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_272/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_272/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_816/lstm_cell_816/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_816/lstm_cell_816/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_816/lstm_cell_816/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_817/lstm_cell_817/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_817/lstm_cell_817/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_817/lstm_cell_817/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_818/lstm_cell_818/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_818/lstm_cell_818/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_818/lstm_cell_818/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_816_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_816_inputlstm_816/lstm_cell_816/kernel'lstm_816/lstm_cell_816/recurrent_kernellstm_816/lstm_cell_816/biaslstm_817/lstm_cell_817/kernel'lstm_817/lstm_cell_817/recurrent_kernellstm_817/lstm_cell_817/biaslstm_818/lstm_cell_818/kernel'lstm_818/lstm_cell_818/recurrent_kernellstm_818/lstm_cell_818/biasdense_272/kerneldense_272/bias*
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
%__inference_signature_wrapper_4951494
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_272/kernel/Read/ReadVariableOp"dense_272/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_816/lstm_cell_816/kernel/Read/ReadVariableOp;lstm_816/lstm_cell_816/recurrent_kernel/Read/ReadVariableOp/lstm_816/lstm_cell_816/bias/Read/ReadVariableOp1lstm_817/lstm_cell_817/kernel/Read/ReadVariableOp;lstm_817/lstm_cell_817/recurrent_kernel/Read/ReadVariableOp/lstm_817/lstm_cell_817/bias/Read/ReadVariableOp1lstm_818/lstm_cell_818/kernel/Read/ReadVariableOp;lstm_818/lstm_cell_818/recurrent_kernel/Read/ReadVariableOp/lstm_818/lstm_cell_818/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_272/kernel/m/Read/ReadVariableOp)Adam/dense_272/bias/m/Read/ReadVariableOp8Adam/lstm_816/lstm_cell_816/kernel/m/Read/ReadVariableOpBAdam/lstm_816/lstm_cell_816/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_816/lstm_cell_816/bias/m/Read/ReadVariableOp8Adam/lstm_817/lstm_cell_817/kernel/m/Read/ReadVariableOpBAdam/lstm_817/lstm_cell_817/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_817/lstm_cell_817/bias/m/Read/ReadVariableOp8Adam/lstm_818/lstm_cell_818/kernel/m/Read/ReadVariableOpBAdam/lstm_818/lstm_cell_818/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_818/lstm_cell_818/bias/m/Read/ReadVariableOp+Adam/dense_272/kernel/v/Read/ReadVariableOp)Adam/dense_272/bias/v/Read/ReadVariableOp8Adam/lstm_816/lstm_cell_816/kernel/v/Read/ReadVariableOpBAdam/lstm_816/lstm_cell_816/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_816/lstm_cell_816/bias/v/Read/ReadVariableOp8Adam/lstm_817/lstm_cell_817/kernel/v/Read/ReadVariableOpBAdam/lstm_817/lstm_cell_817/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_817/lstm_cell_817/bias/v/Read/ReadVariableOp8Adam/lstm_818/lstm_cell_818/kernel/v/Read/ReadVariableOpBAdam/lstm_818/lstm_cell_818/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_818/lstm_cell_818/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4954706
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_272/kerneldense_272/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_816/lstm_cell_816/kernel'lstm_816/lstm_cell_816/recurrent_kernellstm_816/lstm_cell_816/biaslstm_817/lstm_cell_817/kernel'lstm_817/lstm_cell_817/recurrent_kernellstm_817/lstm_cell_817/biaslstm_818/lstm_cell_818/kernel'lstm_818/lstm_cell_818/recurrent_kernellstm_818/lstm_cell_818/biastotalcountAdam/dense_272/kernel/mAdam/dense_272/bias/m$Adam/lstm_816/lstm_cell_816/kernel/m.Adam/lstm_816/lstm_cell_816/recurrent_kernel/m"Adam/lstm_816/lstm_cell_816/bias/m$Adam/lstm_817/lstm_cell_817/kernel/m.Adam/lstm_817/lstm_cell_817/recurrent_kernel/m"Adam/lstm_817/lstm_cell_817/bias/m$Adam/lstm_818/lstm_cell_818/kernel/m.Adam/lstm_818/lstm_cell_818/recurrent_kernel/m"Adam/lstm_818/lstm_cell_818/bias/mAdam/dense_272/kernel/vAdam/dense_272/bias/v$Adam/lstm_816/lstm_cell_816/kernel/v.Adam/lstm_816/lstm_cell_816/recurrent_kernel/v"Adam/lstm_816/lstm_cell_816/bias/v$Adam/lstm_817/lstm_cell_817/kernel/v.Adam/lstm_817/lstm_cell_817/recurrent_kernel/v"Adam/lstm_817/lstm_cell_817/bias/v$Adam/lstm_818/lstm_cell_818/kernel/v.Adam/lstm_818/lstm_cell_818/recurrent_kernel/v"Adam/lstm_818/lstm_cell_818/bias/v*4
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
#__inference__traced_restore_4954836??+
?J
?
E__inference_lstm_816_layer_call_and_return_conditional_losses_4950433

inputs?
,lstm_cell_816_matmul_readvariableop_resource:	?A
.lstm_cell_816_matmul_1_readvariableop_resource:	d?<
-lstm_cell_816_biasadd_readvariableop_resource:	?
identity??$lstm_cell_816/BiasAdd/ReadVariableOp?#lstm_cell_816/MatMul/ReadVariableOp?%lstm_cell_816/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_816/MatMul/ReadVariableOpReadVariableOp,lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_816/MatMulMatMulstrided_slice_2:output:0+lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_816/MatMul_1MatMulzeros:output:0-lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_816/addAddV2lstm_cell_816/MatMul:product:0 lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_816/BiasAddBiasAddlstm_cell_816/add:z:0,lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_816/splitSplit&lstm_cell_816/split/split_dim:output:0lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_816/SigmoidSigmoidlstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_1Sigmoidlstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_816/mulMullstm_cell_816/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_816/ReluRelulstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_1Mullstm_cell_816/Sigmoid:y:0 lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_816/add_1AddV2lstm_cell_816/mul:z:0lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_2Sigmoidlstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_816/Relu_1Relulstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_2Mullstm_cell_816/Sigmoid_2:y:0"lstm_cell_816/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_816_matmul_readvariableop_resource.lstm_cell_816_matmul_1_readvariableop_resource-lstm_cell_816_biasadd_readvariableop_resource*
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
while_body_4950349*
condR
while_cond_4950348*K
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
NoOpNoOp%^lstm_cell_816/BiasAdd/ReadVariableOp$^lstm_cell_816/MatMul/ReadVariableOp&^lstm_cell_816/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_816/BiasAdd/ReadVariableOp$lstm_cell_816/BiasAdd/ReadVariableOp2J
#lstm_cell_816/MatMul/ReadVariableOp#lstm_cell_816/MatMul/ReadVariableOp2N
%lstm_cell_816/MatMul_1/ReadVariableOp%lstm_cell_816/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_272_lstm_816_while_body_4948866L
Hsequential_272_lstm_816_while_sequential_272_lstm_816_while_loop_counterR
Nsequential_272_lstm_816_while_sequential_272_lstm_816_while_maximum_iterations-
)sequential_272_lstm_816_while_placeholder/
+sequential_272_lstm_816_while_placeholder_1/
+sequential_272_lstm_816_while_placeholder_2/
+sequential_272_lstm_816_while_placeholder_3K
Gsequential_272_lstm_816_while_sequential_272_lstm_816_strided_slice_1_0?
?sequential_272_lstm_816_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_816_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_272_lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0:	?a
Nsequential_272_lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?\
Msequential_272_lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0:	?*
&sequential_272_lstm_816_while_identity,
(sequential_272_lstm_816_while_identity_1,
(sequential_272_lstm_816_while_identity_2,
(sequential_272_lstm_816_while_identity_3,
(sequential_272_lstm_816_while_identity_4,
(sequential_272_lstm_816_while_identity_5I
Esequential_272_lstm_816_while_sequential_272_lstm_816_strided_slice_1?
?sequential_272_lstm_816_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_816_tensorarrayunstack_tensorlistfromtensor]
Jsequential_272_lstm_816_while_lstm_cell_816_matmul_readvariableop_resource:	?_
Lsequential_272_lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource:	d?Z
Ksequential_272_lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource:	???Bsequential_272/lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp?Asequential_272/lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp?Csequential_272/lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp?
Osequential_272/lstm_816/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_272/lstm_816/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_272_lstm_816_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_816_tensorarrayunstack_tensorlistfromtensor_0)sequential_272_lstm_816_while_placeholderXsequential_272/lstm_816/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_272/lstm_816/while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOpLsequential_272_lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_272/lstm_816/while/lstm_cell_816/MatMulMatMulHsequential_272/lstm_816/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_272/lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_272/lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOpNsequential_272_lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_272/lstm_816/while/lstm_cell_816/MatMul_1MatMul+sequential_272_lstm_816_while_placeholder_2Ksequential_272/lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_272/lstm_816/while/lstm_cell_816/addAddV2<sequential_272/lstm_816/while/lstm_cell_816/MatMul:product:0>sequential_272/lstm_816/while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_272/lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOpMsequential_272_lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_272/lstm_816/while/lstm_cell_816/BiasAddBiasAdd3sequential_272/lstm_816/while/lstm_cell_816/add:z:0Jsequential_272/lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_272/lstm_816/while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_272/lstm_816/while/lstm_cell_816/splitSplitDsequential_272/lstm_816/while/lstm_cell_816/split/split_dim:output:0<sequential_272/lstm_816/while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_272/lstm_816/while/lstm_cell_816/SigmoidSigmoid:sequential_272/lstm_816/while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_272/lstm_816/while/lstm_cell_816/Sigmoid_1Sigmoid:sequential_272/lstm_816/while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_272/lstm_816/while/lstm_cell_816/mulMul9sequential_272/lstm_816/while/lstm_cell_816/Sigmoid_1:y:0+sequential_272_lstm_816_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_272/lstm_816/while/lstm_cell_816/ReluRelu:sequential_272/lstm_816/while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_272/lstm_816/while/lstm_cell_816/mul_1Mul7sequential_272/lstm_816/while/lstm_cell_816/Sigmoid:y:0>sequential_272/lstm_816/while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_272/lstm_816/while/lstm_cell_816/add_1AddV23sequential_272/lstm_816/while/lstm_cell_816/mul:z:05sequential_272/lstm_816/while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_272/lstm_816/while/lstm_cell_816/Sigmoid_2Sigmoid:sequential_272/lstm_816/while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_272/lstm_816/while/lstm_cell_816/Relu_1Relu5sequential_272/lstm_816/while/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_272/lstm_816/while/lstm_cell_816/mul_2Mul9sequential_272/lstm_816/while/lstm_cell_816/Sigmoid_2:y:0@sequential_272/lstm_816/while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_272/lstm_816/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_272_lstm_816_while_placeholder_1)sequential_272_lstm_816_while_placeholder5sequential_272/lstm_816/while/lstm_cell_816/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_272/lstm_816/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_272/lstm_816/while/addAddV2)sequential_272_lstm_816_while_placeholder,sequential_272/lstm_816/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_272/lstm_816/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_272/lstm_816/while/add_1AddV2Hsequential_272_lstm_816_while_sequential_272_lstm_816_while_loop_counter.sequential_272/lstm_816/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_272/lstm_816/while/IdentityIdentity'sequential_272/lstm_816/while/add_1:z:0#^sequential_272/lstm_816/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_816/while/Identity_1IdentityNsequential_272_lstm_816_while_sequential_272_lstm_816_while_maximum_iterations#^sequential_272/lstm_816/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_816/while/Identity_2Identity%sequential_272/lstm_816/while/add:z:0#^sequential_272/lstm_816/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_816/while/Identity_3IdentityRsequential_272/lstm_816/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_272/lstm_816/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_816/while/Identity_4Identity5sequential_272/lstm_816/while/lstm_cell_816/mul_2:z:0#^sequential_272/lstm_816/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_272/lstm_816/while/Identity_5Identity5sequential_272/lstm_816/while/lstm_cell_816/add_1:z:0#^sequential_272/lstm_816/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_272/lstm_816/while/NoOpNoOpC^sequential_272/lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOpB^sequential_272/lstm_816/while/lstm_cell_816/MatMul/ReadVariableOpD^sequential_272/lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_272_lstm_816_while_identity/sequential_272/lstm_816/while/Identity:output:0"]
(sequential_272_lstm_816_while_identity_11sequential_272/lstm_816/while/Identity_1:output:0"]
(sequential_272_lstm_816_while_identity_21sequential_272/lstm_816/while/Identity_2:output:0"]
(sequential_272_lstm_816_while_identity_31sequential_272/lstm_816/while/Identity_3:output:0"]
(sequential_272_lstm_816_while_identity_41sequential_272/lstm_816/while/Identity_4:output:0"]
(sequential_272_lstm_816_while_identity_51sequential_272/lstm_816/while/Identity_5:output:0"?
Ksequential_272_lstm_816_while_lstm_cell_816_biasadd_readvariableop_resourceMsequential_272_lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0"?
Lsequential_272_lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resourceNsequential_272_lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0"?
Jsequential_272_lstm_816_while_lstm_cell_816_matmul_readvariableop_resourceLsequential_272_lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0"?
Esequential_272_lstm_816_while_sequential_272_lstm_816_strided_slice_1Gsequential_272_lstm_816_while_sequential_272_lstm_816_strided_slice_1_0"?
?sequential_272_lstm_816_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_816_tensorarrayunstack_tensorlistfromtensor?sequential_272_lstm_816_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_816_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_272/lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOpBsequential_272/lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp2?
Asequential_272/lstm_816/while/lstm_cell_816/MatMul/ReadVariableOpAsequential_272/lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp2?
Csequential_272/lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOpCsequential_272/lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_272_lstm_816_while_cond_4948865L
Hsequential_272_lstm_816_while_sequential_272_lstm_816_while_loop_counterR
Nsequential_272_lstm_816_while_sequential_272_lstm_816_while_maximum_iterations-
)sequential_272_lstm_816_while_placeholder/
+sequential_272_lstm_816_while_placeholder_1/
+sequential_272_lstm_816_while_placeholder_2/
+sequential_272_lstm_816_while_placeholder_3N
Jsequential_272_lstm_816_while_less_sequential_272_lstm_816_strided_slice_1e
asequential_272_lstm_816_while_sequential_272_lstm_816_while_cond_4948865___redundant_placeholder0e
asequential_272_lstm_816_while_sequential_272_lstm_816_while_cond_4948865___redundant_placeholder1e
asequential_272_lstm_816_while_sequential_272_lstm_816_while_cond_4948865___redundant_placeholder2e
asequential_272_lstm_816_while_sequential_272_lstm_816_while_cond_4948865___redundant_placeholder3*
&sequential_272_lstm_816_while_identity
?
"sequential_272/lstm_816/while/LessLess)sequential_272_lstm_816_while_placeholderJsequential_272_lstm_816_while_less_sequential_272_lstm_816_strided_slice_1*
T0*
_output_shapes
: {
&sequential_272/lstm_816/while/IdentityIdentity&sequential_272/lstm_816/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_272_lstm_816_while_identity/sequential_272/lstm_816/while/Identity:output:0*(
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
lstm_817_while_cond_4951745.
*lstm_817_while_lstm_817_while_loop_counter4
0lstm_817_while_lstm_817_while_maximum_iterations
lstm_817_while_placeholder 
lstm_817_while_placeholder_1 
lstm_817_while_placeholder_2 
lstm_817_while_placeholder_30
,lstm_817_while_less_lstm_817_strided_slice_1G
Clstm_817_while_lstm_817_while_cond_4951745___redundant_placeholder0G
Clstm_817_while_lstm_817_while_cond_4951745___redundant_placeholder1G
Clstm_817_while_lstm_817_while_cond_4951745___redundant_placeholder2G
Clstm_817_while_lstm_817_while_cond_4951745___redundant_placeholder3
lstm_817_while_identity
?
lstm_817/while/LessLesslstm_817_while_placeholder,lstm_817_while_less_lstm_817_strided_slice_1*
T0*
_output_shapes
: ]
lstm_817/while/IdentityIdentitylstm_817/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_817_while_identity lstm_817/while/Identity:output:0*(
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
lstm_817_while_cond_4952172.
*lstm_817_while_lstm_817_while_loop_counter4
0lstm_817_while_lstm_817_while_maximum_iterations
lstm_817_while_placeholder 
lstm_817_while_placeholder_1 
lstm_817_while_placeholder_2 
lstm_817_while_placeholder_30
,lstm_817_while_less_lstm_817_strided_slice_1G
Clstm_817_while_lstm_817_while_cond_4952172___redundant_placeholder0G
Clstm_817_while_lstm_817_while_cond_4952172___redundant_placeholder1G
Clstm_817_while_lstm_817_while_cond_4952172___redundant_placeholder2G
Clstm_817_while_lstm_817_while_cond_4952172___redundant_placeholder3
lstm_817_while_identity
?
lstm_817/while/LessLesslstm_817_while_placeholder,lstm_817_while_less_lstm_817_strided_slice_1*
T0*
_output_shapes
: ]
lstm_817/while/IdentityIdentitylstm_817/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_817_while_identity lstm_817/while/Identity:output:0*(
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952589
inputs_0?
,lstm_cell_816_matmul_readvariableop_resource:	?A
.lstm_cell_816_matmul_1_readvariableop_resource:	d?<
-lstm_cell_816_biasadd_readvariableop_resource:	?
identity??$lstm_cell_816/BiasAdd/ReadVariableOp?#lstm_cell_816/MatMul/ReadVariableOp?%lstm_cell_816/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_816/MatMul/ReadVariableOpReadVariableOp,lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_816/MatMulMatMulstrided_slice_2:output:0+lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_816/MatMul_1MatMulzeros:output:0-lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_816/addAddV2lstm_cell_816/MatMul:product:0 lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_816/BiasAddBiasAddlstm_cell_816/add:z:0,lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_816/splitSplit&lstm_cell_816/split/split_dim:output:0lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_816/SigmoidSigmoidlstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_1Sigmoidlstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_816/mulMullstm_cell_816/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_816/ReluRelulstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_1Mullstm_cell_816/Sigmoid:y:0 lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_816/add_1AddV2lstm_cell_816/mul:z:0lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_2Sigmoidlstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_816/Relu_1Relulstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_2Mullstm_cell_816/Sigmoid_2:y:0"lstm_cell_816/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_816_matmul_readvariableop_resource.lstm_cell_816_matmul_1_readvariableop_resource-lstm_cell_816_biasadd_readvariableop_resource*
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
while_body_4952505*
condR
while_cond_4952504*K
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
NoOpNoOp%^lstm_cell_816/BiasAdd/ReadVariableOp$^lstm_cell_816/MatMul/ReadVariableOp&^lstm_cell_816/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_816/BiasAdd/ReadVariableOp$lstm_cell_816/BiasAdd/ReadVariableOp2J
#lstm_cell_816/MatMul/ReadVariableOp#lstm_cell_816/MatMul/ReadVariableOp2N
%lstm_cell_816/MatMul_1/ReadVariableOp%lstm_cell_816/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_272_layer_call_fn_4950783
lstm_816_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_816_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4950758o
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
_user_specified_namelstm_816_input
?T
?
*sequential_272_lstm_817_while_body_4949005L
Hsequential_272_lstm_817_while_sequential_272_lstm_817_while_loop_counterR
Nsequential_272_lstm_817_while_sequential_272_lstm_817_while_maximum_iterations-
)sequential_272_lstm_817_while_placeholder/
+sequential_272_lstm_817_while_placeholder_1/
+sequential_272_lstm_817_while_placeholder_2/
+sequential_272_lstm_817_while_placeholder_3K
Gsequential_272_lstm_817_while_sequential_272_lstm_817_strided_slice_1_0?
?sequential_272_lstm_817_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_817_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_272_lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0:	d?a
Nsequential_272_lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?\
Msequential_272_lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0:	?*
&sequential_272_lstm_817_while_identity,
(sequential_272_lstm_817_while_identity_1,
(sequential_272_lstm_817_while_identity_2,
(sequential_272_lstm_817_while_identity_3,
(sequential_272_lstm_817_while_identity_4,
(sequential_272_lstm_817_while_identity_5I
Esequential_272_lstm_817_while_sequential_272_lstm_817_strided_slice_1?
?sequential_272_lstm_817_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_817_tensorarrayunstack_tensorlistfromtensor]
Jsequential_272_lstm_817_while_lstm_cell_817_matmul_readvariableop_resource:	d?_
Lsequential_272_lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource:	2?Z
Ksequential_272_lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource:	???Bsequential_272/lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp?Asequential_272/lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp?Csequential_272/lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp?
Osequential_272/lstm_817/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_272/lstm_817/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_272_lstm_817_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_817_tensorarrayunstack_tensorlistfromtensor_0)sequential_272_lstm_817_while_placeholderXsequential_272/lstm_817/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_272/lstm_817/while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOpLsequential_272_lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_272/lstm_817/while/lstm_cell_817/MatMulMatMulHsequential_272/lstm_817/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_272/lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_272/lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOpNsequential_272_lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_272/lstm_817/while/lstm_cell_817/MatMul_1MatMul+sequential_272_lstm_817_while_placeholder_2Ksequential_272/lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_272/lstm_817/while/lstm_cell_817/addAddV2<sequential_272/lstm_817/while/lstm_cell_817/MatMul:product:0>sequential_272/lstm_817/while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_272/lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOpMsequential_272_lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_272/lstm_817/while/lstm_cell_817/BiasAddBiasAdd3sequential_272/lstm_817/while/lstm_cell_817/add:z:0Jsequential_272/lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_272/lstm_817/while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_272/lstm_817/while/lstm_cell_817/splitSplitDsequential_272/lstm_817/while/lstm_cell_817/split/split_dim:output:0<sequential_272/lstm_817/while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_272/lstm_817/while/lstm_cell_817/SigmoidSigmoid:sequential_272/lstm_817/while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_272/lstm_817/while/lstm_cell_817/Sigmoid_1Sigmoid:sequential_272/lstm_817/while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_272/lstm_817/while/lstm_cell_817/mulMul9sequential_272/lstm_817/while/lstm_cell_817/Sigmoid_1:y:0+sequential_272_lstm_817_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_272/lstm_817/while/lstm_cell_817/ReluRelu:sequential_272/lstm_817/while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_272/lstm_817/while/lstm_cell_817/mul_1Mul7sequential_272/lstm_817/while/lstm_cell_817/Sigmoid:y:0>sequential_272/lstm_817/while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_272/lstm_817/while/lstm_cell_817/add_1AddV23sequential_272/lstm_817/while/lstm_cell_817/mul:z:05sequential_272/lstm_817/while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_272/lstm_817/while/lstm_cell_817/Sigmoid_2Sigmoid:sequential_272/lstm_817/while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_272/lstm_817/while/lstm_cell_817/Relu_1Relu5sequential_272/lstm_817/while/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_272/lstm_817/while/lstm_cell_817/mul_2Mul9sequential_272/lstm_817/while/lstm_cell_817/Sigmoid_2:y:0@sequential_272/lstm_817/while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_272/lstm_817/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_272_lstm_817_while_placeholder_1)sequential_272_lstm_817_while_placeholder5sequential_272/lstm_817/while/lstm_cell_817/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_272/lstm_817/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_272/lstm_817/while/addAddV2)sequential_272_lstm_817_while_placeholder,sequential_272/lstm_817/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_272/lstm_817/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_272/lstm_817/while/add_1AddV2Hsequential_272_lstm_817_while_sequential_272_lstm_817_while_loop_counter.sequential_272/lstm_817/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_272/lstm_817/while/IdentityIdentity'sequential_272/lstm_817/while/add_1:z:0#^sequential_272/lstm_817/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_817/while/Identity_1IdentityNsequential_272_lstm_817_while_sequential_272_lstm_817_while_maximum_iterations#^sequential_272/lstm_817/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_817/while/Identity_2Identity%sequential_272/lstm_817/while/add:z:0#^sequential_272/lstm_817/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_817/while/Identity_3IdentityRsequential_272/lstm_817/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_272/lstm_817/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_817/while/Identity_4Identity5sequential_272/lstm_817/while/lstm_cell_817/mul_2:z:0#^sequential_272/lstm_817/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_272/lstm_817/while/Identity_5Identity5sequential_272/lstm_817/while/lstm_cell_817/add_1:z:0#^sequential_272/lstm_817/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_272/lstm_817/while/NoOpNoOpC^sequential_272/lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOpB^sequential_272/lstm_817/while/lstm_cell_817/MatMul/ReadVariableOpD^sequential_272/lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_272_lstm_817_while_identity/sequential_272/lstm_817/while/Identity:output:0"]
(sequential_272_lstm_817_while_identity_11sequential_272/lstm_817/while/Identity_1:output:0"]
(sequential_272_lstm_817_while_identity_21sequential_272/lstm_817/while/Identity_2:output:0"]
(sequential_272_lstm_817_while_identity_31sequential_272/lstm_817/while/Identity_3:output:0"]
(sequential_272_lstm_817_while_identity_41sequential_272/lstm_817/while/Identity_4:output:0"]
(sequential_272_lstm_817_while_identity_51sequential_272/lstm_817/while/Identity_5:output:0"?
Ksequential_272_lstm_817_while_lstm_cell_817_biasadd_readvariableop_resourceMsequential_272_lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0"?
Lsequential_272_lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resourceNsequential_272_lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0"?
Jsequential_272_lstm_817_while_lstm_cell_817_matmul_readvariableop_resourceLsequential_272_lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0"?
Esequential_272_lstm_817_while_sequential_272_lstm_817_strided_slice_1Gsequential_272_lstm_817_while_sequential_272_lstm_817_strided_slice_1_0"?
?sequential_272_lstm_817_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_817_tensorarrayunstack_tensorlistfromtensor?sequential_272_lstm_817_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_817_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_272/lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOpBsequential_272/lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp2?
Asequential_272/lstm_817/while/lstm_cell_817/MatMul/ReadVariableOpAsequential_272/lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp2?
Csequential_272/lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOpCsequential_272/lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4950499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_817_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_817_matmul_readvariableop_resource:	d?G
4while_lstm_cell_817_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_817_biasadd_readvariableop_resource:	???*while/lstm_cell_817/BiasAdd/ReadVariableOp?)while/lstm_cell_817/MatMul/ReadVariableOp?+while/lstm_cell_817/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_817/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_817/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_817/addAddV2$while/lstm_cell_817/MatMul:product:0&while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_817/BiasAddBiasAddwhile/lstm_cell_817/add:z:02while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_817/splitSplit,while/lstm_cell_817/split/split_dim:output:0$while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_817/SigmoidSigmoid"while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_1Sigmoid"while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mulMul!while/lstm_cell_817/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_817/ReluRelu"while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_1Mulwhile/lstm_cell_817/Sigmoid:y:0&while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/add_1AddV2while/lstm_cell_817/mul:z:0while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_2Sigmoid"while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_817/Relu_1Reluwhile/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_2Mul!while/lstm_cell_817/Sigmoid_2:y:0(while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_817/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_817/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_817/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_817/BiasAdd/ReadVariableOp*^while/lstm_cell_817/MatMul/ReadVariableOp,^while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_817_biasadd_readvariableop_resource5while_lstm_cell_817_biasadd_readvariableop_resource_0"n
4while_lstm_cell_817_matmul_1_readvariableop_resource6while_lstm_cell_817_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_817_matmul_readvariableop_resource4while_lstm_cell_817_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_817/BiasAdd/ReadVariableOp*while/lstm_cell_817/BiasAdd/ReadVariableOp2V
)while/lstm_cell_817/MatMul/ReadVariableOp)while/lstm_cell_817/MatMul/ReadVariableOp2Z
+while/lstm_cell_817/MatMul_1/ReadVariableOp+while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4949234
lstm_816_inputW
Dsequential_272_lstm_816_lstm_cell_816_matmul_readvariableop_resource:	?Y
Fsequential_272_lstm_816_lstm_cell_816_matmul_1_readvariableop_resource:	d?T
Esequential_272_lstm_816_lstm_cell_816_biasadd_readvariableop_resource:	?W
Dsequential_272_lstm_817_lstm_cell_817_matmul_readvariableop_resource:	d?Y
Fsequential_272_lstm_817_lstm_cell_817_matmul_1_readvariableop_resource:	2?T
Esequential_272_lstm_817_lstm_cell_817_biasadd_readvariableop_resource:	?V
Dsequential_272_lstm_818_lstm_cell_818_matmul_readvariableop_resource:2(X
Fsequential_272_lstm_818_lstm_cell_818_matmul_1_readvariableop_resource:
(S
Esequential_272_lstm_818_lstm_cell_818_biasadd_readvariableop_resource:(I
7sequential_272_dense_272_matmul_readvariableop_resource:
F
8sequential_272_dense_272_biasadd_readvariableop_resource:
identity??/sequential_272/dense_272/BiasAdd/ReadVariableOp?.sequential_272/dense_272/MatMul/ReadVariableOp?<sequential_272/lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp?;sequential_272/lstm_816/lstm_cell_816/MatMul/ReadVariableOp?=sequential_272/lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp?sequential_272/lstm_816/while?<sequential_272/lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp?;sequential_272/lstm_817/lstm_cell_817/MatMul/ReadVariableOp?=sequential_272/lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp?sequential_272/lstm_817/while?<sequential_272/lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp?;sequential_272/lstm_818/lstm_cell_818/MatMul/ReadVariableOp?=sequential_272/lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp?sequential_272/lstm_818/while[
sequential_272/lstm_816/ShapeShapelstm_816_input*
T0*
_output_shapes
:u
+sequential_272/lstm_816/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_272/lstm_816/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_272/lstm_816/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_272/lstm_816/strided_sliceStridedSlice&sequential_272/lstm_816/Shape:output:04sequential_272/lstm_816/strided_slice/stack:output:06sequential_272/lstm_816/strided_slice/stack_1:output:06sequential_272/lstm_816/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_272/lstm_816/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_272/lstm_816/zeros/packedPack.sequential_272/lstm_816/strided_slice:output:0/sequential_272/lstm_816/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_272/lstm_816/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_272/lstm_816/zerosFill-sequential_272/lstm_816/zeros/packed:output:0,sequential_272/lstm_816/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_272/lstm_816/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_272/lstm_816/zeros_1/packedPack.sequential_272/lstm_816/strided_slice:output:01sequential_272/lstm_816/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_272/lstm_816/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_272/lstm_816/zeros_1Fill/sequential_272/lstm_816/zeros_1/packed:output:0.sequential_272/lstm_816/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_272/lstm_816/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_272/lstm_816/transpose	Transposelstm_816_input/sequential_272/lstm_816/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_272/lstm_816/Shape_1Shape%sequential_272/lstm_816/transpose:y:0*
T0*
_output_shapes
:w
-sequential_272/lstm_816/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_816/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_272/lstm_816/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_816/strided_slice_1StridedSlice(sequential_272/lstm_816/Shape_1:output:06sequential_272/lstm_816/strided_slice_1/stack:output:08sequential_272/lstm_816/strided_slice_1/stack_1:output:08sequential_272/lstm_816/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_272/lstm_816/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_272/lstm_816/TensorArrayV2TensorListReserve<sequential_272/lstm_816/TensorArrayV2/element_shape:output:00sequential_272/lstm_816/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_272/lstm_816/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_272/lstm_816/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_272/lstm_816/transpose:y:0Vsequential_272/lstm_816/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_272/lstm_816/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_816/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_272/lstm_816/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_816/strided_slice_2StridedSlice%sequential_272/lstm_816/transpose:y:06sequential_272/lstm_816/strided_slice_2/stack:output:08sequential_272/lstm_816/strided_slice_2/stack_1:output:08sequential_272/lstm_816/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_272/lstm_816/lstm_cell_816/MatMul/ReadVariableOpReadVariableOpDsequential_272_lstm_816_lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_272/lstm_816/lstm_cell_816/MatMulMatMul0sequential_272/lstm_816/strided_slice_2:output:0Csequential_272/lstm_816/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_272/lstm_816/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOpFsequential_272_lstm_816_lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_272/lstm_816/lstm_cell_816/MatMul_1MatMul&sequential_272/lstm_816/zeros:output:0Esequential_272/lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_272/lstm_816/lstm_cell_816/addAddV26sequential_272/lstm_816/lstm_cell_816/MatMul:product:08sequential_272/lstm_816/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_272/lstm_816/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOpEsequential_272_lstm_816_lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_272/lstm_816/lstm_cell_816/BiasAddBiasAdd-sequential_272/lstm_816/lstm_cell_816/add:z:0Dsequential_272/lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_272/lstm_816/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_272/lstm_816/lstm_cell_816/splitSplit>sequential_272/lstm_816/lstm_cell_816/split/split_dim:output:06sequential_272/lstm_816/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_272/lstm_816/lstm_cell_816/SigmoidSigmoid4sequential_272/lstm_816/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_272/lstm_816/lstm_cell_816/Sigmoid_1Sigmoid4sequential_272/lstm_816/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_272/lstm_816/lstm_cell_816/mulMul3sequential_272/lstm_816/lstm_cell_816/Sigmoid_1:y:0(sequential_272/lstm_816/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_272/lstm_816/lstm_cell_816/ReluRelu4sequential_272/lstm_816/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_272/lstm_816/lstm_cell_816/mul_1Mul1sequential_272/lstm_816/lstm_cell_816/Sigmoid:y:08sequential_272/lstm_816/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_272/lstm_816/lstm_cell_816/add_1AddV2-sequential_272/lstm_816/lstm_cell_816/mul:z:0/sequential_272/lstm_816/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_272/lstm_816/lstm_cell_816/Sigmoid_2Sigmoid4sequential_272/lstm_816/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_272/lstm_816/lstm_cell_816/Relu_1Relu/sequential_272/lstm_816/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_272/lstm_816/lstm_cell_816/mul_2Mul3sequential_272/lstm_816/lstm_cell_816/Sigmoid_2:y:0:sequential_272/lstm_816/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_272/lstm_816/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_272/lstm_816/TensorArrayV2_1TensorListReserve>sequential_272/lstm_816/TensorArrayV2_1/element_shape:output:00sequential_272/lstm_816/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_272/lstm_816/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_272/lstm_816/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_272/lstm_816/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_272/lstm_816/whileWhile3sequential_272/lstm_816/while/loop_counter:output:09sequential_272/lstm_816/while/maximum_iterations:output:0%sequential_272/lstm_816/time:output:00sequential_272/lstm_816/TensorArrayV2_1:handle:0&sequential_272/lstm_816/zeros:output:0(sequential_272/lstm_816/zeros_1:output:00sequential_272/lstm_816/strided_slice_1:output:0Osequential_272/lstm_816/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_272_lstm_816_lstm_cell_816_matmul_readvariableop_resourceFsequential_272_lstm_816_lstm_cell_816_matmul_1_readvariableop_resourceEsequential_272_lstm_816_lstm_cell_816_biasadd_readvariableop_resource*
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
*sequential_272_lstm_816_while_body_4948866*6
cond.R,
*sequential_272_lstm_816_while_cond_4948865*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_272/lstm_816/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_272/lstm_816/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_272/lstm_816/while:output:3Qsequential_272/lstm_816/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_272/lstm_816/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_272/lstm_816/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_816/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_816/strided_slice_3StridedSliceCsequential_272/lstm_816/TensorArrayV2Stack/TensorListStack:tensor:06sequential_272/lstm_816/strided_slice_3/stack:output:08sequential_272/lstm_816/strided_slice_3/stack_1:output:08sequential_272/lstm_816/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_272/lstm_816/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_272/lstm_816/transpose_1	TransposeCsequential_272/lstm_816/TensorArrayV2Stack/TensorListStack:tensor:01sequential_272/lstm_816/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_272/lstm_816/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_272/lstm_817/ShapeShape'sequential_272/lstm_816/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_272/lstm_817/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_272/lstm_817/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_272/lstm_817/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_272/lstm_817/strided_sliceStridedSlice&sequential_272/lstm_817/Shape:output:04sequential_272/lstm_817/strided_slice/stack:output:06sequential_272/lstm_817/strided_slice/stack_1:output:06sequential_272/lstm_817/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_272/lstm_817/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_272/lstm_817/zeros/packedPack.sequential_272/lstm_817/strided_slice:output:0/sequential_272/lstm_817/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_272/lstm_817/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_272/lstm_817/zerosFill-sequential_272/lstm_817/zeros/packed:output:0,sequential_272/lstm_817/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_272/lstm_817/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_272/lstm_817/zeros_1/packedPack.sequential_272/lstm_817/strided_slice:output:01sequential_272/lstm_817/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_272/lstm_817/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_272/lstm_817/zeros_1Fill/sequential_272/lstm_817/zeros_1/packed:output:0.sequential_272/lstm_817/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_272/lstm_817/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_272/lstm_817/transpose	Transpose'sequential_272/lstm_816/transpose_1:y:0/sequential_272/lstm_817/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_272/lstm_817/Shape_1Shape%sequential_272/lstm_817/transpose:y:0*
T0*
_output_shapes
:w
-sequential_272/lstm_817/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_817/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_272/lstm_817/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_817/strided_slice_1StridedSlice(sequential_272/lstm_817/Shape_1:output:06sequential_272/lstm_817/strided_slice_1/stack:output:08sequential_272/lstm_817/strided_slice_1/stack_1:output:08sequential_272/lstm_817/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_272/lstm_817/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_272/lstm_817/TensorArrayV2TensorListReserve<sequential_272/lstm_817/TensorArrayV2/element_shape:output:00sequential_272/lstm_817/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_272/lstm_817/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_272/lstm_817/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_272/lstm_817/transpose:y:0Vsequential_272/lstm_817/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_272/lstm_817/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_817/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_272/lstm_817/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_817/strided_slice_2StridedSlice%sequential_272/lstm_817/transpose:y:06sequential_272/lstm_817/strided_slice_2/stack:output:08sequential_272/lstm_817/strided_slice_2/stack_1:output:08sequential_272/lstm_817/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_272/lstm_817/lstm_cell_817/MatMul/ReadVariableOpReadVariableOpDsequential_272_lstm_817_lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_272/lstm_817/lstm_cell_817/MatMulMatMul0sequential_272/lstm_817/strided_slice_2:output:0Csequential_272/lstm_817/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_272/lstm_817/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOpFsequential_272_lstm_817_lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_272/lstm_817/lstm_cell_817/MatMul_1MatMul&sequential_272/lstm_817/zeros:output:0Esequential_272/lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_272/lstm_817/lstm_cell_817/addAddV26sequential_272/lstm_817/lstm_cell_817/MatMul:product:08sequential_272/lstm_817/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_272/lstm_817/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOpEsequential_272_lstm_817_lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_272/lstm_817/lstm_cell_817/BiasAddBiasAdd-sequential_272/lstm_817/lstm_cell_817/add:z:0Dsequential_272/lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_272/lstm_817/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_272/lstm_817/lstm_cell_817/splitSplit>sequential_272/lstm_817/lstm_cell_817/split/split_dim:output:06sequential_272/lstm_817/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_272/lstm_817/lstm_cell_817/SigmoidSigmoid4sequential_272/lstm_817/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_272/lstm_817/lstm_cell_817/Sigmoid_1Sigmoid4sequential_272/lstm_817/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_272/lstm_817/lstm_cell_817/mulMul3sequential_272/lstm_817/lstm_cell_817/Sigmoid_1:y:0(sequential_272/lstm_817/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_272/lstm_817/lstm_cell_817/ReluRelu4sequential_272/lstm_817/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_272/lstm_817/lstm_cell_817/mul_1Mul1sequential_272/lstm_817/lstm_cell_817/Sigmoid:y:08sequential_272/lstm_817/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_272/lstm_817/lstm_cell_817/add_1AddV2-sequential_272/lstm_817/lstm_cell_817/mul:z:0/sequential_272/lstm_817/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_272/lstm_817/lstm_cell_817/Sigmoid_2Sigmoid4sequential_272/lstm_817/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_272/lstm_817/lstm_cell_817/Relu_1Relu/sequential_272/lstm_817/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_272/lstm_817/lstm_cell_817/mul_2Mul3sequential_272/lstm_817/lstm_cell_817/Sigmoid_2:y:0:sequential_272/lstm_817/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_272/lstm_817/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_272/lstm_817/TensorArrayV2_1TensorListReserve>sequential_272/lstm_817/TensorArrayV2_1/element_shape:output:00sequential_272/lstm_817/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_272/lstm_817/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_272/lstm_817/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_272/lstm_817/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_272/lstm_817/whileWhile3sequential_272/lstm_817/while/loop_counter:output:09sequential_272/lstm_817/while/maximum_iterations:output:0%sequential_272/lstm_817/time:output:00sequential_272/lstm_817/TensorArrayV2_1:handle:0&sequential_272/lstm_817/zeros:output:0(sequential_272/lstm_817/zeros_1:output:00sequential_272/lstm_817/strided_slice_1:output:0Osequential_272/lstm_817/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_272_lstm_817_lstm_cell_817_matmul_readvariableop_resourceFsequential_272_lstm_817_lstm_cell_817_matmul_1_readvariableop_resourceEsequential_272_lstm_817_lstm_cell_817_biasadd_readvariableop_resource*
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
*sequential_272_lstm_817_while_body_4949005*6
cond.R,
*sequential_272_lstm_817_while_cond_4949004*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_272/lstm_817/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_272/lstm_817/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_272/lstm_817/while:output:3Qsequential_272/lstm_817/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_272/lstm_817/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_272/lstm_817/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_817/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_817/strided_slice_3StridedSliceCsequential_272/lstm_817/TensorArrayV2Stack/TensorListStack:tensor:06sequential_272/lstm_817/strided_slice_3/stack:output:08sequential_272/lstm_817/strided_slice_3/stack_1:output:08sequential_272/lstm_817/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_272/lstm_817/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_272/lstm_817/transpose_1	TransposeCsequential_272/lstm_817/TensorArrayV2Stack/TensorListStack:tensor:01sequential_272/lstm_817/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_272/lstm_817/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_272/lstm_818/ShapeShape'sequential_272/lstm_817/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_272/lstm_818/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_272/lstm_818/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_272/lstm_818/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_272/lstm_818/strided_sliceStridedSlice&sequential_272/lstm_818/Shape:output:04sequential_272/lstm_818/strided_slice/stack:output:06sequential_272/lstm_818/strided_slice/stack_1:output:06sequential_272/lstm_818/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_272/lstm_818/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_272/lstm_818/zeros/packedPack.sequential_272/lstm_818/strided_slice:output:0/sequential_272/lstm_818/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_272/lstm_818/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_272/lstm_818/zerosFill-sequential_272/lstm_818/zeros/packed:output:0,sequential_272/lstm_818/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_272/lstm_818/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_272/lstm_818/zeros_1/packedPack.sequential_272/lstm_818/strided_slice:output:01sequential_272/lstm_818/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_272/lstm_818/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_272/lstm_818/zeros_1Fill/sequential_272/lstm_818/zeros_1/packed:output:0.sequential_272/lstm_818/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_272/lstm_818/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_272/lstm_818/transpose	Transpose'sequential_272/lstm_817/transpose_1:y:0/sequential_272/lstm_818/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_272/lstm_818/Shape_1Shape%sequential_272/lstm_818/transpose:y:0*
T0*
_output_shapes
:w
-sequential_272/lstm_818/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_818/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_272/lstm_818/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_818/strided_slice_1StridedSlice(sequential_272/lstm_818/Shape_1:output:06sequential_272/lstm_818/strided_slice_1/stack:output:08sequential_272/lstm_818/strided_slice_1/stack_1:output:08sequential_272/lstm_818/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_272/lstm_818/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_272/lstm_818/TensorArrayV2TensorListReserve<sequential_272/lstm_818/TensorArrayV2/element_shape:output:00sequential_272/lstm_818/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_272/lstm_818/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_272/lstm_818/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_272/lstm_818/transpose:y:0Vsequential_272/lstm_818/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_272/lstm_818/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_818/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_272/lstm_818/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_818/strided_slice_2StridedSlice%sequential_272/lstm_818/transpose:y:06sequential_272/lstm_818/strided_slice_2/stack:output:08sequential_272/lstm_818/strided_slice_2/stack_1:output:08sequential_272/lstm_818/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_272/lstm_818/lstm_cell_818/MatMul/ReadVariableOpReadVariableOpDsequential_272_lstm_818_lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_272/lstm_818/lstm_cell_818/MatMulMatMul0sequential_272/lstm_818/strided_slice_2:output:0Csequential_272/lstm_818/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_272/lstm_818/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOpFsequential_272_lstm_818_lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_272/lstm_818/lstm_cell_818/MatMul_1MatMul&sequential_272/lstm_818/zeros:output:0Esequential_272/lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_272/lstm_818/lstm_cell_818/addAddV26sequential_272/lstm_818/lstm_cell_818/MatMul:product:08sequential_272/lstm_818/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_272/lstm_818/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOpEsequential_272_lstm_818_lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_272/lstm_818/lstm_cell_818/BiasAddBiasAdd-sequential_272/lstm_818/lstm_cell_818/add:z:0Dsequential_272/lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_272/lstm_818/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_272/lstm_818/lstm_cell_818/splitSplit>sequential_272/lstm_818/lstm_cell_818/split/split_dim:output:06sequential_272/lstm_818/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_272/lstm_818/lstm_cell_818/SigmoidSigmoid4sequential_272/lstm_818/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_272/lstm_818/lstm_cell_818/Sigmoid_1Sigmoid4sequential_272/lstm_818/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_272/lstm_818/lstm_cell_818/mulMul3sequential_272/lstm_818/lstm_cell_818/Sigmoid_1:y:0(sequential_272/lstm_818/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_272/lstm_818/lstm_cell_818/ReluRelu4sequential_272/lstm_818/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_272/lstm_818/lstm_cell_818/mul_1Mul1sequential_272/lstm_818/lstm_cell_818/Sigmoid:y:08sequential_272/lstm_818/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_272/lstm_818/lstm_cell_818/add_1AddV2-sequential_272/lstm_818/lstm_cell_818/mul:z:0/sequential_272/lstm_818/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_272/lstm_818/lstm_cell_818/Sigmoid_2Sigmoid4sequential_272/lstm_818/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_272/lstm_818/lstm_cell_818/Relu_1Relu/sequential_272/lstm_818/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_272/lstm_818/lstm_cell_818/mul_2Mul3sequential_272/lstm_818/lstm_cell_818/Sigmoid_2:y:0:sequential_272/lstm_818/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_272/lstm_818/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_272/lstm_818/TensorArrayV2_1TensorListReserve>sequential_272/lstm_818/TensorArrayV2_1/element_shape:output:00sequential_272/lstm_818/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_272/lstm_818/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_272/lstm_818/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_272/lstm_818/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_272/lstm_818/whileWhile3sequential_272/lstm_818/while/loop_counter:output:09sequential_272/lstm_818/while/maximum_iterations:output:0%sequential_272/lstm_818/time:output:00sequential_272/lstm_818/TensorArrayV2_1:handle:0&sequential_272/lstm_818/zeros:output:0(sequential_272/lstm_818/zeros_1:output:00sequential_272/lstm_818/strided_slice_1:output:0Osequential_272/lstm_818/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_272_lstm_818_lstm_cell_818_matmul_readvariableop_resourceFsequential_272_lstm_818_lstm_cell_818_matmul_1_readvariableop_resourceEsequential_272_lstm_818_lstm_cell_818_biasadd_readvariableop_resource*
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
*sequential_272_lstm_818_while_body_4949144*6
cond.R,
*sequential_272_lstm_818_while_cond_4949143*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_272/lstm_818/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_272/lstm_818/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_272/lstm_818/while:output:3Qsequential_272/lstm_818/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_272/lstm_818/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_272/lstm_818/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_272/lstm_818/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_272/lstm_818/strided_slice_3StridedSliceCsequential_272/lstm_818/TensorArrayV2Stack/TensorListStack:tensor:06sequential_272/lstm_818/strided_slice_3/stack:output:08sequential_272/lstm_818/strided_slice_3/stack_1:output:08sequential_272/lstm_818/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_272/lstm_818/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_272/lstm_818/transpose_1	TransposeCsequential_272/lstm_818/TensorArrayV2Stack/TensorListStack:tensor:01sequential_272/lstm_818/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_272/lstm_818/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_272/dense_272/MatMul/ReadVariableOpReadVariableOp7sequential_272_dense_272_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_272/dense_272/MatMulMatMul0sequential_272/lstm_818/strided_slice_3:output:06sequential_272/dense_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_272/dense_272/BiasAdd/ReadVariableOpReadVariableOp8sequential_272_dense_272_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_272/dense_272/BiasAddBiasAdd)sequential_272/dense_272/MatMul:product:07sequential_272/dense_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_272/dense_272/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_272/dense_272/BiasAdd/ReadVariableOp/^sequential_272/dense_272/MatMul/ReadVariableOp=^sequential_272/lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp<^sequential_272/lstm_816/lstm_cell_816/MatMul/ReadVariableOp>^sequential_272/lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp^sequential_272/lstm_816/while=^sequential_272/lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp<^sequential_272/lstm_817/lstm_cell_817/MatMul/ReadVariableOp>^sequential_272/lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp^sequential_272/lstm_817/while=^sequential_272/lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp<^sequential_272/lstm_818/lstm_cell_818/MatMul/ReadVariableOp>^sequential_272/lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp^sequential_272/lstm_818/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_272/dense_272/BiasAdd/ReadVariableOp/sequential_272/dense_272/BiasAdd/ReadVariableOp2`
.sequential_272/dense_272/MatMul/ReadVariableOp.sequential_272/dense_272/MatMul/ReadVariableOp2|
<sequential_272/lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp<sequential_272/lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp2z
;sequential_272/lstm_816/lstm_cell_816/MatMul/ReadVariableOp;sequential_272/lstm_816/lstm_cell_816/MatMul/ReadVariableOp2~
=sequential_272/lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp=sequential_272/lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp2>
sequential_272/lstm_816/whilesequential_272/lstm_816/while2|
<sequential_272/lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp<sequential_272/lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp2z
;sequential_272/lstm_817/lstm_cell_817/MatMul/ReadVariableOp;sequential_272/lstm_817/lstm_cell_817/MatMul/ReadVariableOp2~
=sequential_272/lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp=sequential_272/lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp2>
sequential_272/lstm_817/whilesequential_272/lstm_817/while2|
<sequential_272/lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp<sequential_272/lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp2z
;sequential_272/lstm_818/lstm_cell_818/MatMul/ReadVariableOp;sequential_272/lstm_818/lstm_cell_818/MatMul/ReadVariableOp2~
=sequential_272/lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp=sequential_272/lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp2>
sequential_272/lstm_818/whilesequential_272/lstm_818/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_816_input
?

?
lstm_818_while_cond_4951884.
*lstm_818_while_lstm_818_while_loop_counter4
0lstm_818_while_lstm_818_while_maximum_iterations
lstm_818_while_placeholder 
lstm_818_while_placeholder_1 
lstm_818_while_placeholder_2 
lstm_818_while_placeholder_30
,lstm_818_while_less_lstm_818_strided_slice_1G
Clstm_818_while_lstm_818_while_cond_4951884___redundant_placeholder0G
Clstm_818_while_lstm_818_while_cond_4951884___redundant_placeholder1G
Clstm_818_while_lstm_818_while_cond_4951884___redundant_placeholder2G
Clstm_818_while_lstm_818_while_cond_4951884___redundant_placeholder3
lstm_818_while_identity
?
lstm_818/while/LessLesslstm_818_while_placeholder,lstm_818_while_less_lstm_818_strided_slice_1*
T0*
_output_shapes
: ]
lstm_818/while/IdentityIdentitylstm_818/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_818_while_identity lstm_818/while/Identity:output:0*(
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
*__inference_lstm_817_layer_call_fn_4953062

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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4951114s
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
while_body_4953737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_818_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_818_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_818_matmul_readvariableop_resource:2(F
4while_lstm_cell_818_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_818_biasadd_readvariableop_resource:(??*while/lstm_cell_818/BiasAdd/ReadVariableOp?)while/lstm_cell_818/MatMul/ReadVariableOp?+while/lstm_cell_818/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_818/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_818/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_818/addAddV2$while/lstm_cell_818/MatMul:product:0&while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_818/BiasAddBiasAddwhile/lstm_cell_818/add:z:02while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_818/splitSplit,while/lstm_cell_818/split/split_dim:output:0$while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_818/SigmoidSigmoid"while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_1Sigmoid"while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mulMul!while/lstm_cell_818/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_818/ReluRelu"while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_1Mulwhile/lstm_cell_818/Sigmoid:y:0&while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/add_1AddV2while/lstm_cell_818/mul:z:0while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_2Sigmoid"while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_818/Relu_1Reluwhile/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_2Mul!while/lstm_cell_818/Sigmoid_2:y:0(while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_818/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_818/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_818/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_818/BiasAdd/ReadVariableOp*^while/lstm_cell_818/MatMul/ReadVariableOp,^while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_818_biasadd_readvariableop_resource5while_lstm_cell_818_biasadd_readvariableop_resource_0"n
4while_lstm_cell_818_matmul_1_readvariableop_resource6while_lstm_cell_818_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_818_matmul_readvariableop_resource4while_lstm_cell_818_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_818/BiasAdd/ReadVariableOp*while/lstm_cell_818/BiasAdd/ReadVariableOp2V
)while/lstm_cell_818/MatMul/ReadVariableOp)while/lstm_cell_818/MatMul/ReadVariableOp2Z
+while/lstm_cell_818/MatMul_1/ReadVariableOp+while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4950015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_818_4950039_0:2(/
while_lstm_cell_818_4950041_0:
(+
while_lstm_cell_818_4950043_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_818_4950039:2(-
while_lstm_cell_818_4950041:
()
while_lstm_cell_818_4950043:(??+while/lstm_cell_818/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_818/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_818_4950039_0while_lstm_cell_818_4950041_0while_lstm_cell_818_4950043_0*
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950001?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_818/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_818/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_818/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_818/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_818_4950039while_lstm_cell_818_4950039_0"<
while_lstm_cell_818_4950041while_lstm_cell_818_4950041_0"<
while_lstm_cell_818_4950043while_lstm_cell_818_4950043_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_818/StatefulPartitionedCall+while/lstm_cell_818/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_272_layer_call_fn_4954259

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
F__inference_dense_272_layer_call_and_return_conditional_losses_4950751o
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
while_body_4953880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_818_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_818_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_818_matmul_readvariableop_resource:2(F
4while_lstm_cell_818_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_818_biasadd_readvariableop_resource:(??*while/lstm_cell_818/BiasAdd/ReadVariableOp?)while/lstm_cell_818/MatMul/ReadVariableOp?+while/lstm_cell_818/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_818/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_818/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_818/addAddV2$while/lstm_cell_818/MatMul:product:0&while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_818/BiasAddBiasAddwhile/lstm_cell_818/add:z:02while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_818/splitSplit,while/lstm_cell_818/split/split_dim:output:0$while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_818/SigmoidSigmoid"while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_1Sigmoid"while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mulMul!while/lstm_cell_818/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_818/ReluRelu"while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_1Mulwhile/lstm_cell_818/Sigmoid:y:0&while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/add_1AddV2while/lstm_cell_818/mul:z:0while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_2Sigmoid"while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_818/Relu_1Reluwhile/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_2Mul!while/lstm_cell_818/Sigmoid_2:y:0(while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_818/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_818/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_818/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_818/BiasAdd/ReadVariableOp*^while/lstm_cell_818/MatMul/ReadVariableOp,^while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_818_biasadd_readvariableop_resource5while_lstm_cell_818_biasadd_readvariableop_resource_0"n
4while_lstm_cell_818_matmul_1_readvariableop_resource6while_lstm_cell_818_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_818_matmul_readvariableop_resource4while_lstm_cell_818_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_818/BiasAdd/ReadVariableOp*while/lstm_cell_818/BiasAdd/ReadVariableOp2V
)while/lstm_cell_818/MatMul/ReadVariableOp)while/lstm_cell_818/MatMul/ReadVariableOp2Z
+while/lstm_cell_818/MatMul_1/ReadVariableOp+while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4953821
inputs_0>
,lstm_cell_818_matmul_readvariableop_resource:2(@
.lstm_cell_818_matmul_1_readvariableop_resource:
(;
-lstm_cell_818_biasadd_readvariableop_resource:(
identity??$lstm_cell_818/BiasAdd/ReadVariableOp?#lstm_cell_818/MatMul/ReadVariableOp?%lstm_cell_818/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_818/MatMul/ReadVariableOpReadVariableOp,lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_818/MatMulMatMulstrided_slice_2:output:0+lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_818/MatMul_1MatMulzeros:output:0-lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_818/addAddV2lstm_cell_818/MatMul:product:0 lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_818/BiasAddBiasAddlstm_cell_818/add:z:0,lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_818/splitSplit&lstm_cell_818/split/split_dim:output:0lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_818/SigmoidSigmoidlstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_1Sigmoidlstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_818/mulMullstm_cell_818/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_818/ReluRelulstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_1Mullstm_cell_818/Sigmoid:y:0 lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_818/add_1AddV2lstm_cell_818/mul:z:0lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_2Sigmoidlstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_818/Relu_1Relulstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_2Mullstm_cell_818/Sigmoid_2:y:0"lstm_cell_818/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_818_matmul_readvariableop_resource.lstm_cell_818_matmul_1_readvariableop_resource-lstm_cell_818_biasadd_readvariableop_resource*
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
while_body_4953737*
condR
while_cond_4953736*K
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
NoOpNoOp%^lstm_cell_818/BiasAdd/ReadVariableOp$^lstm_cell_818/MatMul/ReadVariableOp&^lstm_cell_818/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_818/BiasAdd/ReadVariableOp$lstm_cell_818/BiasAdd/ReadVariableOp2J
#lstm_cell_818/MatMul/ReadVariableOp#lstm_cell_818/MatMul/ReadVariableOp2N
%lstm_cell_818/MatMul_1/ReadVariableOp%lstm_cell_818/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4952504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4952504___redundant_placeholder05
1while_while_cond_4952504___redundant_placeholder15
1while_while_cond_4952504___redundant_placeholder25
1while_while_cond_4952504___redundant_placeholder3
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
?
?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951347

inputs#
lstm_816_4951320:	?#
lstm_816_4951322:	d?
lstm_816_4951324:	?#
lstm_817_4951327:	d?#
lstm_817_4951329:	2?
lstm_817_4951331:	?"
lstm_818_4951334:2("
lstm_818_4951336:
(
lstm_818_4951338:(#
dense_272_4951341:

dense_272_4951343:
identity??!dense_272/StatefulPartitionedCall? lstm_816/StatefulPartitionedCall? lstm_817/StatefulPartitionedCall? lstm_818/StatefulPartitionedCall?
 lstm_816/StatefulPartitionedCallStatefulPartitionedCallinputslstm_816_4951320lstm_816_4951322lstm_816_4951324*
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4951279?
 lstm_817/StatefulPartitionedCallStatefulPartitionedCall)lstm_816/StatefulPartitionedCall:output:0lstm_817_4951327lstm_817_4951329lstm_817_4951331*
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4951114?
 lstm_818/StatefulPartitionedCallStatefulPartitionedCall)lstm_817/StatefulPartitionedCall:output:0lstm_818_4951334lstm_818_4951336lstm_818_4951338*
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950949?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_818/StatefulPartitionedCall:output:0dense_272_4951341dense_272_4951343*
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
F__inference_dense_272_layer_call_and_return_conditional_losses_4950751y
IdentityIdentity*dense_272/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_272/StatefulPartitionedCall!^lstm_816/StatefulPartitionedCall!^lstm_817/StatefulPartitionedCall!^lstm_818/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2D
 lstm_816/StatefulPartitionedCall lstm_816/StatefulPartitionedCall2D
 lstm_817/StatefulPartitionedCall lstm_817/StatefulPartitionedCall2D
 lstm_818/StatefulPartitionedCall lstm_818/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_818_layer_call_fn_4953645
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950084o
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

?
lstm_816_while_cond_4951606.
*lstm_816_while_lstm_816_while_loop_counter4
0lstm_816_while_lstm_816_while_maximum_iterations
lstm_816_while_placeholder 
lstm_816_while_placeholder_1 
lstm_816_while_placeholder_2 
lstm_816_while_placeholder_30
,lstm_816_while_less_lstm_816_strided_slice_1G
Clstm_816_while_lstm_816_while_cond_4951606___redundant_placeholder0G
Clstm_816_while_lstm_816_while_cond_4951606___redundant_placeholder1G
Clstm_816_while_lstm_816_while_cond_4951606___redundant_placeholder2G
Clstm_816_while_lstm_816_while_cond_4951606___redundant_placeholder3
lstm_816_while_identity
?
lstm_816/while/LessLesslstm_816_while_placeholder,lstm_816_while_less_lstm_816_strided_slice_1*
T0*
_output_shapes
: ]
lstm_816/while/IdentityIdentitylstm_816/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_816_while_identity lstm_816/while/Identity:output:0*(
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
while_cond_4950014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4950014___redundant_placeholder05
1while_while_cond_4950014___redundant_placeholder15
1while_while_cond_4950014___redundant_placeholder25
1while_while_cond_4950014___redundant_placeholder3
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
%__inference_signature_wrapper_4951494
lstm_816_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_816_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4949234o
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
_user_specified_namelstm_816_input
?8
?
E__inference_lstm_817_layer_call_and_return_conditional_losses_4949925

inputs(
lstm_cell_817_4949843:	d?(
lstm_cell_817_4949845:	2?$
lstm_cell_817_4949847:	?
identity??%lstm_cell_817/StatefulPartitionedCall?while;
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
%lstm_cell_817/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_817_4949843lstm_cell_817_4949845lstm_cell_817_4949847*
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949797n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_817_4949843lstm_cell_817_4949845lstm_cell_817_4949847*
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
while_body_4949856*
condR
while_cond_4949855*K
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
NoOpNoOp&^lstm_cell_817/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_817/StatefulPartitionedCall%lstm_cell_817/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?T
?
*sequential_272_lstm_818_while_body_4949144L
Hsequential_272_lstm_818_while_sequential_272_lstm_818_while_loop_counterR
Nsequential_272_lstm_818_while_sequential_272_lstm_818_while_maximum_iterations-
)sequential_272_lstm_818_while_placeholder/
+sequential_272_lstm_818_while_placeholder_1/
+sequential_272_lstm_818_while_placeholder_2/
+sequential_272_lstm_818_while_placeholder_3K
Gsequential_272_lstm_818_while_sequential_272_lstm_818_strided_slice_1_0?
?sequential_272_lstm_818_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_818_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_272_lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0:2(`
Nsequential_272_lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0:
([
Msequential_272_lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0:(*
&sequential_272_lstm_818_while_identity,
(sequential_272_lstm_818_while_identity_1,
(sequential_272_lstm_818_while_identity_2,
(sequential_272_lstm_818_while_identity_3,
(sequential_272_lstm_818_while_identity_4,
(sequential_272_lstm_818_while_identity_5I
Esequential_272_lstm_818_while_sequential_272_lstm_818_strided_slice_1?
?sequential_272_lstm_818_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_818_tensorarrayunstack_tensorlistfromtensor\
Jsequential_272_lstm_818_while_lstm_cell_818_matmul_readvariableop_resource:2(^
Lsequential_272_lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource:
(Y
Ksequential_272_lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource:(??Bsequential_272/lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp?Asequential_272/lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp?Csequential_272/lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp?
Osequential_272/lstm_818/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_272/lstm_818/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_272_lstm_818_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_818_tensorarrayunstack_tensorlistfromtensor_0)sequential_272_lstm_818_while_placeholderXsequential_272/lstm_818/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_272/lstm_818/while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOpLsequential_272_lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_272/lstm_818/while/lstm_cell_818/MatMulMatMulHsequential_272/lstm_818/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_272/lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_272/lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOpNsequential_272_lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_272/lstm_818/while/lstm_cell_818/MatMul_1MatMul+sequential_272_lstm_818_while_placeholder_2Ksequential_272/lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_272/lstm_818/while/lstm_cell_818/addAddV2<sequential_272/lstm_818/while/lstm_cell_818/MatMul:product:0>sequential_272/lstm_818/while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_272/lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOpMsequential_272_lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_272/lstm_818/while/lstm_cell_818/BiasAddBiasAdd3sequential_272/lstm_818/while/lstm_cell_818/add:z:0Jsequential_272/lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_272/lstm_818/while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_272/lstm_818/while/lstm_cell_818/splitSplitDsequential_272/lstm_818/while/lstm_cell_818/split/split_dim:output:0<sequential_272/lstm_818/while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_272/lstm_818/while/lstm_cell_818/SigmoidSigmoid:sequential_272/lstm_818/while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_272/lstm_818/while/lstm_cell_818/Sigmoid_1Sigmoid:sequential_272/lstm_818/while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_272/lstm_818/while/lstm_cell_818/mulMul9sequential_272/lstm_818/while/lstm_cell_818/Sigmoid_1:y:0+sequential_272_lstm_818_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_272/lstm_818/while/lstm_cell_818/ReluRelu:sequential_272/lstm_818/while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_272/lstm_818/while/lstm_cell_818/mul_1Mul7sequential_272/lstm_818/while/lstm_cell_818/Sigmoid:y:0>sequential_272/lstm_818/while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_272/lstm_818/while/lstm_cell_818/add_1AddV23sequential_272/lstm_818/while/lstm_cell_818/mul:z:05sequential_272/lstm_818/while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_272/lstm_818/while/lstm_cell_818/Sigmoid_2Sigmoid:sequential_272/lstm_818/while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_272/lstm_818/while/lstm_cell_818/Relu_1Relu5sequential_272/lstm_818/while/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_272/lstm_818/while/lstm_cell_818/mul_2Mul9sequential_272/lstm_818/while/lstm_cell_818/Sigmoid_2:y:0@sequential_272/lstm_818/while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_272/lstm_818/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_272_lstm_818_while_placeholder_1)sequential_272_lstm_818_while_placeholder5sequential_272/lstm_818/while/lstm_cell_818/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_272/lstm_818/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_272/lstm_818/while/addAddV2)sequential_272_lstm_818_while_placeholder,sequential_272/lstm_818/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_272/lstm_818/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_272/lstm_818/while/add_1AddV2Hsequential_272_lstm_818_while_sequential_272_lstm_818_while_loop_counter.sequential_272/lstm_818/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_272/lstm_818/while/IdentityIdentity'sequential_272/lstm_818/while/add_1:z:0#^sequential_272/lstm_818/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_818/while/Identity_1IdentityNsequential_272_lstm_818_while_sequential_272_lstm_818_while_maximum_iterations#^sequential_272/lstm_818/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_818/while/Identity_2Identity%sequential_272/lstm_818/while/add:z:0#^sequential_272/lstm_818/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_818/while/Identity_3IdentityRsequential_272/lstm_818/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_272/lstm_818/while/NoOp*
T0*
_output_shapes
: ?
(sequential_272/lstm_818/while/Identity_4Identity5sequential_272/lstm_818/while/lstm_cell_818/mul_2:z:0#^sequential_272/lstm_818/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_272/lstm_818/while/Identity_5Identity5sequential_272/lstm_818/while/lstm_cell_818/add_1:z:0#^sequential_272/lstm_818/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_272/lstm_818/while/NoOpNoOpC^sequential_272/lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOpB^sequential_272/lstm_818/while/lstm_cell_818/MatMul/ReadVariableOpD^sequential_272/lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_272_lstm_818_while_identity/sequential_272/lstm_818/while/Identity:output:0"]
(sequential_272_lstm_818_while_identity_11sequential_272/lstm_818/while/Identity_1:output:0"]
(sequential_272_lstm_818_while_identity_21sequential_272/lstm_818/while/Identity_2:output:0"]
(sequential_272_lstm_818_while_identity_31sequential_272/lstm_818/while/Identity_3:output:0"]
(sequential_272_lstm_818_while_identity_41sequential_272/lstm_818/while/Identity_4:output:0"]
(sequential_272_lstm_818_while_identity_51sequential_272/lstm_818/while/Identity_5:output:0"?
Ksequential_272_lstm_818_while_lstm_cell_818_biasadd_readvariableop_resourceMsequential_272_lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0"?
Lsequential_272_lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resourceNsequential_272_lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0"?
Jsequential_272_lstm_818_while_lstm_cell_818_matmul_readvariableop_resourceLsequential_272_lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0"?
Esequential_272_lstm_818_while_sequential_272_lstm_818_strided_slice_1Gsequential_272_lstm_818_while_sequential_272_lstm_818_strided_slice_1_0"?
?sequential_272_lstm_818_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_818_tensorarrayunstack_tensorlistfromtensor?sequential_272_lstm_818_while_tensorarrayv2read_tensorlistgetitem_sequential_272_lstm_818_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_272/lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOpBsequential_272/lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp2?
Asequential_272/lstm_818/while/lstm_cell_818/MatMul/ReadVariableOpAsequential_272/lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp2?
Csequential_272/lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOpCsequential_272/lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949797

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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950733

inputs>
,lstm_cell_818_matmul_readvariableop_resource:2(@
.lstm_cell_818_matmul_1_readvariableop_resource:
(;
-lstm_cell_818_biasadd_readvariableop_resource:(
identity??$lstm_cell_818/BiasAdd/ReadVariableOp?#lstm_cell_818/MatMul/ReadVariableOp?%lstm_cell_818/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_818/MatMul/ReadVariableOpReadVariableOp,lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_818/MatMulMatMulstrided_slice_2:output:0+lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_818/MatMul_1MatMulzeros:output:0-lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_818/addAddV2lstm_cell_818/MatMul:product:0 lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_818/BiasAddBiasAddlstm_cell_818/add:z:0,lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_818/splitSplit&lstm_cell_818/split/split_dim:output:0lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_818/SigmoidSigmoidlstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_1Sigmoidlstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_818/mulMullstm_cell_818/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_818/ReluRelulstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_1Mullstm_cell_818/Sigmoid:y:0 lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_818/add_1AddV2lstm_cell_818/mul:z:0lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_2Sigmoidlstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_818/Relu_1Relulstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_2Mullstm_cell_818/Sigmoid_2:y:0"lstm_cell_818/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_818_matmul_readvariableop_resource.lstm_cell_818_matmul_1_readvariableop_resource-lstm_cell_818_biasadd_readvariableop_resource*
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
while_body_4950649*
condR
while_cond_4950648*K
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
NoOpNoOp%^lstm_cell_818/BiasAdd/ReadVariableOp$^lstm_cell_818/MatMul/ReadVariableOp&^lstm_cell_818/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_818/BiasAdd/ReadVariableOp$lstm_cell_818/BiasAdd/ReadVariableOp2J
#lstm_cell_818/MatMul/ReadVariableOp#lstm_cell_818/MatMul/ReadVariableOp2N
%lstm_cell_818/MatMul_1/ReadVariableOp%lstm_cell_818/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_816_layer_call_fn_4954286

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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949301o
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

lstm_817_while_body_4952173.
*lstm_817_while_lstm_817_while_loop_counter4
0lstm_817_while_lstm_817_while_maximum_iterations
lstm_817_while_placeholder 
lstm_817_while_placeholder_1 
lstm_817_while_placeholder_2 
lstm_817_while_placeholder_3-
)lstm_817_while_lstm_817_strided_slice_1_0i
elstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0:	d?R
?lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?M
>lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
lstm_817_while_identity
lstm_817_while_identity_1
lstm_817_while_identity_2
lstm_817_while_identity_3
lstm_817_while_identity_4
lstm_817_while_identity_5+
'lstm_817_while_lstm_817_strided_slice_1g
clstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensorN
;lstm_817_while_lstm_cell_817_matmul_readvariableop_resource:	d?P
=lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource:	2?K
<lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource:	???3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp?2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp?4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp?
@lstm_817/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_817/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensor_0lstm_817_while_placeholderIlstm_817/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp=lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_817/while/lstm_cell_817/MatMulMatMul9lstm_817/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp?lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_817/while/lstm_cell_817/MatMul_1MatMullstm_817_while_placeholder_2<lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_817/while/lstm_cell_817/addAddV2-lstm_817/while/lstm_cell_817/MatMul:product:0/lstm_817/while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp>lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_817/while/lstm_cell_817/BiasAddBiasAdd$lstm_817/while/lstm_cell_817/add:z:0;lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_817/while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_817/while/lstm_cell_817/splitSplit5lstm_817/while/lstm_cell_817/split/split_dim:output:0-lstm_817/while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_817/while/lstm_cell_817/SigmoidSigmoid+lstm_817/while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_817/while/lstm_cell_817/Sigmoid_1Sigmoid+lstm_817/while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_817/while/lstm_cell_817/mulMul*lstm_817/while/lstm_cell_817/Sigmoid_1:y:0lstm_817_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_817/while/lstm_cell_817/ReluRelu+lstm_817/while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_817/while/lstm_cell_817/mul_1Mul(lstm_817/while/lstm_cell_817/Sigmoid:y:0/lstm_817/while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_817/while/lstm_cell_817/add_1AddV2$lstm_817/while/lstm_cell_817/mul:z:0&lstm_817/while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_817/while/lstm_cell_817/Sigmoid_2Sigmoid+lstm_817/while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_817/while/lstm_cell_817/Relu_1Relu&lstm_817/while/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_817/while/lstm_cell_817/mul_2Mul*lstm_817/while/lstm_cell_817/Sigmoid_2:y:01lstm_817/while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_817/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_817_while_placeholder_1lstm_817_while_placeholder&lstm_817/while/lstm_cell_817/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_817/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_817/while/addAddV2lstm_817_while_placeholderlstm_817/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_817/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_817/while/add_1AddV2*lstm_817_while_lstm_817_while_loop_counterlstm_817/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_817/while/IdentityIdentitylstm_817/while/add_1:z:0^lstm_817/while/NoOp*
T0*
_output_shapes
: ?
lstm_817/while/Identity_1Identity0lstm_817_while_lstm_817_while_maximum_iterations^lstm_817/while/NoOp*
T0*
_output_shapes
: t
lstm_817/while/Identity_2Identitylstm_817/while/add:z:0^lstm_817/while/NoOp*
T0*
_output_shapes
: ?
lstm_817/while/Identity_3IdentityClstm_817/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_817/while/NoOp*
T0*
_output_shapes
: ?
lstm_817/while/Identity_4Identity&lstm_817/while/lstm_cell_817/mul_2:z:0^lstm_817/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_817/while/Identity_5Identity&lstm_817/while/lstm_cell_817/add_1:z:0^lstm_817/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_817/while/NoOpNoOp4^lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp3^lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp5^lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_817_while_identity lstm_817/while/Identity:output:0"?
lstm_817_while_identity_1"lstm_817/while/Identity_1:output:0"?
lstm_817_while_identity_2"lstm_817/while/Identity_2:output:0"?
lstm_817_while_identity_3"lstm_817/while/Identity_3:output:0"?
lstm_817_while_identity_4"lstm_817/while/Identity_4:output:0"?
lstm_817_while_identity_5"lstm_817/while/Identity_5:output:0"T
'lstm_817_while_lstm_817_strided_slice_1)lstm_817_while_lstm_817_strided_slice_1_0"~
<lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource>lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0"?
=lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource?lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0"|
;lstm_817_while_lstm_cell_817_matmul_readvariableop_resource=lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0"?
clstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensorelstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp2h
2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp2l
4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4949384

inputs(
lstm_cell_816_4949302:	?(
lstm_cell_816_4949304:	d?$
lstm_cell_816_4949306:	?
identity??%lstm_cell_816/StatefulPartitionedCall?while;
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
%lstm_cell_816/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_816_4949302lstm_cell_816_4949304lstm_cell_816_4949306*
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949301n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_816_4949302lstm_cell_816_4949304lstm_cell_816_4949306*
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
while_body_4949315*
condR
while_cond_4949314*K
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
NoOpNoOp&^lstm_cell_816/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_816/StatefulPartitionedCall%lstm_cell_816/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_817_layer_call_and_return_conditional_losses_4950583

inputs?
,lstm_cell_817_matmul_readvariableop_resource:	d?A
.lstm_cell_817_matmul_1_readvariableop_resource:	2?<
-lstm_cell_817_biasadd_readvariableop_resource:	?
identity??$lstm_cell_817/BiasAdd/ReadVariableOp?#lstm_cell_817/MatMul/ReadVariableOp?%lstm_cell_817/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_817/MatMul/ReadVariableOpReadVariableOp,lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_817/MatMulMatMulstrided_slice_2:output:0+lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_817/MatMul_1MatMulzeros:output:0-lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_817/addAddV2lstm_cell_817/MatMul:product:0 lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_817/BiasAddBiasAddlstm_cell_817/add:z:0,lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_817/splitSplit&lstm_cell_817/split/split_dim:output:0lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_817/SigmoidSigmoidlstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_1Sigmoidlstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_817/mulMullstm_cell_817/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_817/ReluRelulstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_1Mullstm_cell_817/Sigmoid:y:0 lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_817/add_1AddV2lstm_cell_817/mul:z:0lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_2Sigmoidlstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_817/Relu_1Relulstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_2Mullstm_cell_817/Sigmoid_2:y:0"lstm_cell_817/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_817_matmul_readvariableop_resource.lstm_cell_817_matmul_1_readvariableop_resource-lstm_cell_817_biasadd_readvariableop_resource*
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
while_body_4950499*
condR
while_cond_4950498*K
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
NoOpNoOp%^lstm_cell_817/BiasAdd/ReadVariableOp$^lstm_cell_817/MatMul/ReadVariableOp&^lstm_cell_817/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_817/BiasAdd/ReadVariableOp$lstm_cell_817/BiasAdd/ReadVariableOp2J
#lstm_cell_817/MatMul/ReadVariableOp#lstm_cell_817/MatMul/ReadVariableOp2N
%lstm_cell_817/MatMul_1/ReadVariableOp%lstm_cell_817/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4952648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_816_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_816_matmul_readvariableop_resource:	?G
4while_lstm_cell_816_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_816_biasadd_readvariableop_resource:	???*while/lstm_cell_816/BiasAdd/ReadVariableOp?)while/lstm_cell_816/MatMul/ReadVariableOp?+while/lstm_cell_816/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_816/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_816/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_816/addAddV2$while/lstm_cell_816/MatMul:product:0&while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_816/BiasAddBiasAddwhile/lstm_cell_816/add:z:02while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_816/splitSplit,while/lstm_cell_816/split/split_dim:output:0$while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_816/SigmoidSigmoid"while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_1Sigmoid"while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mulMul!while/lstm_cell_816/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_816/ReluRelu"while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_1Mulwhile/lstm_cell_816/Sigmoid:y:0&while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/add_1AddV2while/lstm_cell_816/mul:z:0while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_2Sigmoid"while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_816/Relu_1Reluwhile/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_2Mul!while/lstm_cell_816/Sigmoid_2:y:0(while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_816/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_816/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_816/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_816/BiasAdd/ReadVariableOp*^while/lstm_cell_816/MatMul/ReadVariableOp,^while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_816_biasadd_readvariableop_resource5while_lstm_cell_816_biasadd_readvariableop_resource_0"n
4while_lstm_cell_816_matmul_1_readvariableop_resource6while_lstm_cell_816_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_816_matmul_readvariableop_resource4while_lstm_cell_816_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_816/BiasAdd/ReadVariableOp*while/lstm_cell_816/BiasAdd/ReadVariableOp2V
)while/lstm_cell_816/MatMul/ReadVariableOp)while/lstm_cell_816/MatMul/ReadVariableOp2Z
+while/lstm_cell_816/MatMul_1/ReadVariableOp+while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4949664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4949664___redundant_placeholder05
1while_while_cond_4949664___redundant_placeholder15
1while_while_cond_4949664___redundant_placeholder25
1while_while_cond_4949664___redundant_placeholder3
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
while_cond_4951029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4951029___redundant_placeholder05
1while_while_cond_4951029___redundant_placeholder15
1while_while_cond_4951029___redundant_placeholder25
1while_while_cond_4951029___redundant_placeholder3
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
while_cond_4953263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4953263___redundant_placeholder05
1while_while_cond_4953263___redundant_placeholder15
1while_while_cond_4953263___redundant_placeholder25
1while_while_cond_4953263___redundant_placeholder3
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4954107

inputs>
,lstm_cell_818_matmul_readvariableop_resource:2(@
.lstm_cell_818_matmul_1_readvariableop_resource:
(;
-lstm_cell_818_biasadd_readvariableop_resource:(
identity??$lstm_cell_818/BiasAdd/ReadVariableOp?#lstm_cell_818/MatMul/ReadVariableOp?%lstm_cell_818/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_818/MatMul/ReadVariableOpReadVariableOp,lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_818/MatMulMatMulstrided_slice_2:output:0+lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_818/MatMul_1MatMulzeros:output:0-lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_818/addAddV2lstm_cell_818/MatMul:product:0 lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_818/BiasAddBiasAddlstm_cell_818/add:z:0,lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_818/splitSplit&lstm_cell_818/split/split_dim:output:0lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_818/SigmoidSigmoidlstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_1Sigmoidlstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_818/mulMullstm_cell_818/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_818/ReluRelulstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_1Mullstm_cell_818/Sigmoid:y:0 lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_818/add_1AddV2lstm_cell_818/mul:z:0lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_2Sigmoidlstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_818/Relu_1Relulstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_2Mullstm_cell_818/Sigmoid_2:y:0"lstm_cell_818/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_818_matmul_readvariableop_resource.lstm_cell_818_matmul_1_readvariableop_resource-lstm_cell_818_biasadd_readvariableop_resource*
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
while_body_4954023*
condR
while_cond_4954022*K
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
NoOpNoOp%^lstm_cell_818/BiasAdd/ReadVariableOp$^lstm_cell_818/MatMul/ReadVariableOp&^lstm_cell_818/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_818/BiasAdd/ReadVariableOp$lstm_cell_818/BiasAdd/ReadVariableOp2J
#lstm_cell_818/MatMul/ReadVariableOp#lstm_cell_818/MatMul/ReadVariableOp2N
%lstm_cell_818/MatMul_1/ReadVariableOp%lstm_cell_818/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_816_while_cond_4952033.
*lstm_816_while_lstm_816_while_loop_counter4
0lstm_816_while_lstm_816_while_maximum_iterations
lstm_816_while_placeholder 
lstm_816_while_placeholder_1 
lstm_816_while_placeholder_2 
lstm_816_while_placeholder_30
,lstm_816_while_less_lstm_816_strided_slice_1G
Clstm_816_while_lstm_816_while_cond_4952033___redundant_placeholder0G
Clstm_816_while_lstm_816_while_cond_4952033___redundant_placeholder1G
Clstm_816_while_lstm_816_while_cond_4952033___redundant_placeholder2G
Clstm_816_while_lstm_816_while_cond_4952033___redundant_placeholder3
lstm_816_while_identity
?
lstm_816/while/LessLesslstm_816_while_placeholder,lstm_816_while_less_lstm_816_strided_slice_1*
T0*
_output_shapes
: ]
lstm_816/while/IdentityIdentitylstm_816/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_816_while_identity lstm_816/while/Identity:output:0*(
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
while_cond_4949314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4949314___redundant_placeholder05
1while_while_cond_4949314___redundant_placeholder15
1while_while_cond_4949314___redundant_placeholder25
1while_while_cond_4949314___redundant_placeholder3
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950084

inputs'
lstm_cell_818_4950002:2('
lstm_cell_818_4950004:
(#
lstm_cell_818_4950006:(
identity??%lstm_cell_818/StatefulPartitionedCall?while;
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
%lstm_cell_818/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_818_4950002lstm_cell_818_4950004lstm_cell_818_4950006*
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950001n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_818_4950002lstm_cell_818_4950004lstm_cell_818_4950006*
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
while_body_4950015*
condR
while_cond_4950014*K
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
NoOpNoOp&^lstm_cell_818/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_818/StatefulPartitionedCall%lstm_cell_818/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_817_layer_call_fn_4953029
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4949734|
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
?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951459
lstm_816_input#
lstm_816_4951432:	?#
lstm_816_4951434:	d?
lstm_816_4951436:	?#
lstm_817_4951439:	d?#
lstm_817_4951441:	2?
lstm_817_4951443:	?"
lstm_818_4951446:2("
lstm_818_4951448:
(
lstm_818_4951450:(#
dense_272_4951453:

dense_272_4951455:
identity??!dense_272/StatefulPartitionedCall? lstm_816/StatefulPartitionedCall? lstm_817/StatefulPartitionedCall? lstm_818/StatefulPartitionedCall?
 lstm_816/StatefulPartitionedCallStatefulPartitionedCalllstm_816_inputlstm_816_4951432lstm_816_4951434lstm_816_4951436*
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4951279?
 lstm_817/StatefulPartitionedCallStatefulPartitionedCall)lstm_816/StatefulPartitionedCall:output:0lstm_817_4951439lstm_817_4951441lstm_817_4951443*
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4951114?
 lstm_818/StatefulPartitionedCallStatefulPartitionedCall)lstm_817/StatefulPartitionedCall:output:0lstm_818_4951446lstm_818_4951448lstm_818_4951450*
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950949?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_818/StatefulPartitionedCall:output:0dense_272_4951453dense_272_4951455*
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
F__inference_dense_272_layer_call_and_return_conditional_losses_4950751y
IdentityIdentity*dense_272/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_272/StatefulPartitionedCall!^lstm_816/StatefulPartitionedCall!^lstm_817/StatefulPartitionedCall!^lstm_818/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2D
 lstm_816/StatefulPartitionedCall lstm_816/StatefulPartitionedCall2D
 lstm_817/StatefulPartitionedCall lstm_817/StatefulPartitionedCall2D
 lstm_818/StatefulPartitionedCall lstm_818/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_816_input
?K
?
E__inference_lstm_818_layer_call_and_return_conditional_losses_4953964
inputs_0>
,lstm_cell_818_matmul_readvariableop_resource:2(@
.lstm_cell_818_matmul_1_readvariableop_resource:
(;
-lstm_cell_818_biasadd_readvariableop_resource:(
identity??$lstm_cell_818/BiasAdd/ReadVariableOp?#lstm_cell_818/MatMul/ReadVariableOp?%lstm_cell_818/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_818/MatMul/ReadVariableOpReadVariableOp,lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_818/MatMulMatMulstrided_slice_2:output:0+lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_818/MatMul_1MatMulzeros:output:0-lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_818/addAddV2lstm_cell_818/MatMul:product:0 lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_818/BiasAddBiasAddlstm_cell_818/add:z:0,lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_818/splitSplit&lstm_cell_818/split/split_dim:output:0lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_818/SigmoidSigmoidlstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_1Sigmoidlstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_818/mulMullstm_cell_818/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_818/ReluRelulstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_1Mullstm_cell_818/Sigmoid:y:0 lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_818/add_1AddV2lstm_cell_818/mul:z:0lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_2Sigmoidlstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_818/Relu_1Relulstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_2Mullstm_cell_818/Sigmoid_2:y:0"lstm_cell_818/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_818_matmul_readvariableop_resource.lstm_cell_818_matmul_1_readvariableop_resource-lstm_cell_818_biasadd_readvariableop_resource*
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
while_body_4953880*
condR
while_cond_4953879*K
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
NoOpNoOp%^lstm_cell_818/BiasAdd/ReadVariableOp$^lstm_cell_818/MatMul/ReadVariableOp&^lstm_cell_818/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_818/BiasAdd/ReadVariableOp$lstm_cell_818/BiasAdd/ReadVariableOp2J
#lstm_cell_818/MatMul/ReadVariableOp#lstm_cell_818/MatMul/ReadVariableOp2N
%lstm_cell_818/MatMul_1/ReadVariableOp%lstm_cell_818/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_818_layer_call_fn_4954482

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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950001o
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953348
inputs_0?
,lstm_cell_817_matmul_readvariableop_resource:	d?A
.lstm_cell_817_matmul_1_readvariableop_resource:	2?<
-lstm_cell_817_biasadd_readvariableop_resource:	?
identity??$lstm_cell_817/BiasAdd/ReadVariableOp?#lstm_cell_817/MatMul/ReadVariableOp?%lstm_cell_817/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_817/MatMul/ReadVariableOpReadVariableOp,lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_817/MatMulMatMulstrided_slice_2:output:0+lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_817/MatMul_1MatMulzeros:output:0-lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_817/addAddV2lstm_cell_817/MatMul:product:0 lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_817/BiasAddBiasAddlstm_cell_817/add:z:0,lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_817/splitSplit&lstm_cell_817/split/split_dim:output:0lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_817/SigmoidSigmoidlstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_1Sigmoidlstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_817/mulMullstm_cell_817/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_817/ReluRelulstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_1Mullstm_cell_817/Sigmoid:y:0 lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_817/add_1AddV2lstm_cell_817/mul:z:0lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_2Sigmoidlstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_817/Relu_1Relulstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_2Mullstm_cell_817/Sigmoid_2:y:0"lstm_cell_817/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_817_matmul_readvariableop_resource.lstm_cell_817_matmul_1_readvariableop_resource-lstm_cell_817_biasadd_readvariableop_resource*
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
while_body_4953264*
condR
while_cond_4953263*K
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
NoOpNoOp%^lstm_cell_817/BiasAdd/ReadVariableOp$^lstm_cell_817/MatMul/ReadVariableOp&^lstm_cell_817/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_817/BiasAdd/ReadVariableOp$lstm_cell_817/BiasAdd/ReadVariableOp2J
#lstm_cell_817/MatMul/ReadVariableOp#lstm_cell_817/MatMul/ReadVariableOp2N
%lstm_cell_817/MatMul_1/ReadVariableOp%lstm_cell_817/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_816_while_body_4952034.
*lstm_816_while_lstm_816_while_loop_counter4
0lstm_816_while_lstm_816_while_maximum_iterations
lstm_816_while_placeholder 
lstm_816_while_placeholder_1 
lstm_816_while_placeholder_2 
lstm_816_while_placeholder_3-
)lstm_816_while_lstm_816_strided_slice_1_0i
elstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0:	?R
?lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?M
>lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
lstm_816_while_identity
lstm_816_while_identity_1
lstm_816_while_identity_2
lstm_816_while_identity_3
lstm_816_while_identity_4
lstm_816_while_identity_5+
'lstm_816_while_lstm_816_strided_slice_1g
clstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensorN
;lstm_816_while_lstm_cell_816_matmul_readvariableop_resource:	?P
=lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource:	d?K
<lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource:	???3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp?2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp?4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp?
@lstm_816/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_816/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensor_0lstm_816_while_placeholderIlstm_816/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp=lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_816/while/lstm_cell_816/MatMulMatMul9lstm_816/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp?lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_816/while/lstm_cell_816/MatMul_1MatMullstm_816_while_placeholder_2<lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_816/while/lstm_cell_816/addAddV2-lstm_816/while/lstm_cell_816/MatMul:product:0/lstm_816/while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp>lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_816/while/lstm_cell_816/BiasAddBiasAdd$lstm_816/while/lstm_cell_816/add:z:0;lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_816/while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_816/while/lstm_cell_816/splitSplit5lstm_816/while/lstm_cell_816/split/split_dim:output:0-lstm_816/while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_816/while/lstm_cell_816/SigmoidSigmoid+lstm_816/while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_816/while/lstm_cell_816/Sigmoid_1Sigmoid+lstm_816/while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_816/while/lstm_cell_816/mulMul*lstm_816/while/lstm_cell_816/Sigmoid_1:y:0lstm_816_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_816/while/lstm_cell_816/ReluRelu+lstm_816/while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_816/while/lstm_cell_816/mul_1Mul(lstm_816/while/lstm_cell_816/Sigmoid:y:0/lstm_816/while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_816/while/lstm_cell_816/add_1AddV2$lstm_816/while/lstm_cell_816/mul:z:0&lstm_816/while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_816/while/lstm_cell_816/Sigmoid_2Sigmoid+lstm_816/while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_816/while/lstm_cell_816/Relu_1Relu&lstm_816/while/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_816/while/lstm_cell_816/mul_2Mul*lstm_816/while/lstm_cell_816/Sigmoid_2:y:01lstm_816/while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_816/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_816_while_placeholder_1lstm_816_while_placeholder&lstm_816/while/lstm_cell_816/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_816/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_816/while/addAddV2lstm_816_while_placeholderlstm_816/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_816/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_816/while/add_1AddV2*lstm_816_while_lstm_816_while_loop_counterlstm_816/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_816/while/IdentityIdentitylstm_816/while/add_1:z:0^lstm_816/while/NoOp*
T0*
_output_shapes
: ?
lstm_816/while/Identity_1Identity0lstm_816_while_lstm_816_while_maximum_iterations^lstm_816/while/NoOp*
T0*
_output_shapes
: t
lstm_816/while/Identity_2Identitylstm_816/while/add:z:0^lstm_816/while/NoOp*
T0*
_output_shapes
: ?
lstm_816/while/Identity_3IdentityClstm_816/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_816/while/NoOp*
T0*
_output_shapes
: ?
lstm_816/while/Identity_4Identity&lstm_816/while/lstm_cell_816/mul_2:z:0^lstm_816/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_816/while/Identity_5Identity&lstm_816/while/lstm_cell_816/add_1:z:0^lstm_816/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_816/while/NoOpNoOp4^lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp3^lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp5^lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_816_while_identity lstm_816/while/Identity:output:0"?
lstm_816_while_identity_1"lstm_816/while/Identity_1:output:0"?
lstm_816_while_identity_2"lstm_816/while/Identity_2:output:0"?
lstm_816_while_identity_3"lstm_816/while/Identity_3:output:0"?
lstm_816_while_identity_4"lstm_816/while/Identity_4:output:0"?
lstm_816_while_identity_5"lstm_816/while/Identity_5:output:0"T
'lstm_816_while_lstm_816_strided_slice_1)lstm_816_while_lstm_816_strided_slice_1_0"~
<lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource>lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0"?
=lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource?lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0"|
;lstm_816_while_lstm_cell_816_matmul_readvariableop_resource=lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0"?
clstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensorelstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp2h
2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp2l
4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4950865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_818_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_818_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_818_matmul_readvariableop_resource:2(F
4while_lstm_cell_818_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_818_biasadd_readvariableop_resource:(??*while/lstm_cell_818/BiasAdd/ReadVariableOp?)while/lstm_cell_818/MatMul/ReadVariableOp?+while/lstm_cell_818/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_818/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_818/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_818/addAddV2$while/lstm_cell_818/MatMul:product:0&while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_818/BiasAddBiasAddwhile/lstm_cell_818/add:z:02while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_818/splitSplit,while/lstm_cell_818/split/split_dim:output:0$while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_818/SigmoidSigmoid"while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_1Sigmoid"while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mulMul!while/lstm_cell_818/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_818/ReluRelu"while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_1Mulwhile/lstm_cell_818/Sigmoid:y:0&while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/add_1AddV2while/lstm_cell_818/mul:z:0while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_2Sigmoid"while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_818/Relu_1Reluwhile/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_2Mul!while/lstm_cell_818/Sigmoid_2:y:0(while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_818/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_818/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_818/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_818/BiasAdd/ReadVariableOp*^while/lstm_cell_818/MatMul/ReadVariableOp,^while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_818_biasadd_readvariableop_resource5while_lstm_cell_818_biasadd_readvariableop_resource_0"n
4while_lstm_cell_818_matmul_1_readvariableop_resource6while_lstm_cell_818_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_818_matmul_readvariableop_resource4while_lstm_cell_818_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_818/BiasAdd/ReadVariableOp*while/lstm_cell_818/BiasAdd/ReadVariableOp2V
)while/lstm_cell_818/MatMul/ReadVariableOp)while/lstm_cell_818/MatMul/ReadVariableOp2Z
+while/lstm_cell_818/MatMul_1/ReadVariableOp+while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4953406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4953406___redundant_placeholder05
1while_while_cond_4953406___redundant_placeholder15
1while_while_cond_4953406___redundant_placeholder25
1while_while_cond_4953406___redundant_placeholder3
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
while_cond_4949855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4949855___redundant_placeholder05
1while_while_cond_4949855___redundant_placeholder15
1while_while_cond_4949855___redundant_placeholder25
1while_while_cond_4949855___redundant_placeholder3
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
while_body_4950349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_816_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_816_matmul_readvariableop_resource:	?G
4while_lstm_cell_816_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_816_biasadd_readvariableop_resource:	???*while/lstm_cell_816/BiasAdd/ReadVariableOp?)while/lstm_cell_816/MatMul/ReadVariableOp?+while/lstm_cell_816/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_816/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_816/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_816/addAddV2$while/lstm_cell_816/MatMul:product:0&while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_816/BiasAddBiasAddwhile/lstm_cell_816/add:z:02while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_816/splitSplit,while/lstm_cell_816/split/split_dim:output:0$while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_816/SigmoidSigmoid"while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_1Sigmoid"while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mulMul!while/lstm_cell_816/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_816/ReluRelu"while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_1Mulwhile/lstm_cell_816/Sigmoid:y:0&while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/add_1AddV2while/lstm_cell_816/mul:z:0while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_2Sigmoid"while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_816/Relu_1Reluwhile/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_2Mul!while/lstm_cell_816/Sigmoid_2:y:0(while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_816/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_816/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_816/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_816/BiasAdd/ReadVariableOp*^while/lstm_cell_816/MatMul/ReadVariableOp,^while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_816_biasadd_readvariableop_resource5while_lstm_cell_816_biasadd_readvariableop_resource_0"n
4while_lstm_cell_816_matmul_1_readvariableop_resource6while_lstm_cell_816_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_816_matmul_readvariableop_resource4while_lstm_cell_816_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_816/BiasAdd/ReadVariableOp*while/lstm_cell_816/BiasAdd/ReadVariableOp2V
)while/lstm_cell_816/MatMul/ReadVariableOp)while/lstm_cell_816/MatMul/ReadVariableOp2Z
+while/lstm_cell_816/MatMul_1/ReadVariableOp+while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950147

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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950001

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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4949575

inputs(
lstm_cell_816_4949493:	?(
lstm_cell_816_4949495:	d?$
lstm_cell_816_4949497:	?
identity??%lstm_cell_816/StatefulPartitionedCall?while;
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
%lstm_cell_816/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_816_4949493lstm_cell_816_4949495lstm_cell_816_4949497*
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949447n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_816_4949493lstm_cell_816_4949495lstm_cell_816_4949497*
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
while_body_4949506*
condR
while_cond_4949505*K
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
NoOpNoOp&^lstm_cell_816/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_816/StatefulPartitionedCall%lstm_cell_816/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4953736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4953736___redundant_placeholder05
1while_while_cond_4953736___redundant_placeholder15
1while_while_cond_4953736___redundant_placeholder25
1while_while_cond_4953736___redundant_placeholder3
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
while_body_4950649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_818_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_818_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_818_matmul_readvariableop_resource:2(F
4while_lstm_cell_818_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_818_biasadd_readvariableop_resource:(??*while/lstm_cell_818/BiasAdd/ReadVariableOp?)while/lstm_cell_818/MatMul/ReadVariableOp?+while/lstm_cell_818/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_818/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_818/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_818/addAddV2$while/lstm_cell_818/MatMul:product:0&while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_818/BiasAddBiasAddwhile/lstm_cell_818/add:z:02while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_818/splitSplit,while/lstm_cell_818/split/split_dim:output:0$while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_818/SigmoidSigmoid"while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_1Sigmoid"while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mulMul!while/lstm_cell_818/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_818/ReluRelu"while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_1Mulwhile/lstm_cell_818/Sigmoid:y:0&while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/add_1AddV2while/lstm_cell_818/mul:z:0while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_2Sigmoid"while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_818/Relu_1Reluwhile/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_2Mul!while/lstm_cell_818/Sigmoid_2:y:0(while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_818/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_818/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_818/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_818/BiasAdd/ReadVariableOp*^while/lstm_cell_818/MatMul/ReadVariableOp,^while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_818_biasadd_readvariableop_resource5while_lstm_cell_818_biasadd_readvariableop_resource_0"n
4while_lstm_cell_818_matmul_1_readvariableop_resource6while_lstm_cell_818_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_818_matmul_readvariableop_resource4while_lstm_cell_818_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_818/BiasAdd/ReadVariableOp*while/lstm_cell_818/BiasAdd/ReadVariableOp2V
)while/lstm_cell_818/MatMul/ReadVariableOp)while/lstm_cell_818/MatMul/ReadVariableOp2Z
+while/lstm_cell_818/MatMul_1/ReadVariableOp+while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_818_layer_call_fn_4953678

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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950949o
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949447

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
*__inference_lstm_817_layer_call_fn_4953040
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4949925|
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
*__inference_lstm_817_layer_call_fn_4953051

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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4950583s
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
while_cond_4950205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4950205___redundant_placeholder05
1while_while_cond_4950205___redundant_placeholder15
1while_while_cond_4950205___redundant_placeholder25
1while_while_cond_4950205___redundant_placeholder3
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4949734

inputs(
lstm_cell_817_4949652:	d?(
lstm_cell_817_4949654:	2?$
lstm_cell_817_4949656:	?
identity??%lstm_cell_817/StatefulPartitionedCall?while;
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
%lstm_cell_817/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_817_4949652lstm_cell_817_4949654lstm_cell_817_4949656*
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949651n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_817_4949652lstm_cell_817_4949654lstm_cell_817_4949656*
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
while_body_4949665*
condR
while_cond_4949664*K
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
NoOpNoOp&^lstm_cell_817/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_817/StatefulPartitionedCall%lstm_cell_817/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950275

inputs'
lstm_cell_818_4950193:2('
lstm_cell_818_4950195:
(#
lstm_cell_818_4950197:(
identity??%lstm_cell_818/StatefulPartitionedCall?while;
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
%lstm_cell_818/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_818_4950193lstm_cell_818_4950195lstm_cell_818_4950197*
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950147n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_818_4950193lstm_cell_818_4950195lstm_cell_818_4950197*
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
while_body_4950206*
condR
while_cond_4950205*K
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
NoOpNoOp&^lstm_cell_818/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_818/StatefulPartitionedCall%lstm_cell_818/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953205
inputs_0?
,lstm_cell_817_matmul_readvariableop_resource:	d?A
.lstm_cell_817_matmul_1_readvariableop_resource:	2?<
-lstm_cell_817_biasadd_readvariableop_resource:	?
identity??$lstm_cell_817/BiasAdd/ReadVariableOp?#lstm_cell_817/MatMul/ReadVariableOp?%lstm_cell_817/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_817/MatMul/ReadVariableOpReadVariableOp,lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_817/MatMulMatMulstrided_slice_2:output:0+lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_817/MatMul_1MatMulzeros:output:0-lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_817/addAddV2lstm_cell_817/MatMul:product:0 lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_817/BiasAddBiasAddlstm_cell_817/add:z:0,lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_817/splitSplit&lstm_cell_817/split/split_dim:output:0lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_817/SigmoidSigmoidlstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_1Sigmoidlstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_817/mulMullstm_cell_817/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_817/ReluRelulstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_1Mullstm_cell_817/Sigmoid:y:0 lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_817/add_1AddV2lstm_cell_817/mul:z:0lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_2Sigmoidlstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_817/Relu_1Relulstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_2Mullstm_cell_817/Sigmoid_2:y:0"lstm_cell_817/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_817_matmul_readvariableop_resource.lstm_cell_817_matmul_1_readvariableop_resource-lstm_cell_817_biasadd_readvariableop_resource*
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
while_body_4953121*
condR
while_cond_4953120*K
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
NoOpNoOp%^lstm_cell_817/BiasAdd/ReadVariableOp$^lstm_cell_817/MatMul/ReadVariableOp&^lstm_cell_817/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_817/BiasAdd/ReadVariableOp$lstm_cell_817/BiasAdd/ReadVariableOp2J
#lstm_cell_817/MatMul/ReadVariableOp#lstm_cell_817/MatMul/ReadVariableOp2N
%lstm_cell_817/MatMul_1/ReadVariableOp%lstm_cell_817/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951975

inputsH
5lstm_816_lstm_cell_816_matmul_readvariableop_resource:	?J
7lstm_816_lstm_cell_816_matmul_1_readvariableop_resource:	d?E
6lstm_816_lstm_cell_816_biasadd_readvariableop_resource:	?H
5lstm_817_lstm_cell_817_matmul_readvariableop_resource:	d?J
7lstm_817_lstm_cell_817_matmul_1_readvariableop_resource:	2?E
6lstm_817_lstm_cell_817_biasadd_readvariableop_resource:	?G
5lstm_818_lstm_cell_818_matmul_readvariableop_resource:2(I
7lstm_818_lstm_cell_818_matmul_1_readvariableop_resource:
(D
6lstm_818_lstm_cell_818_biasadd_readvariableop_resource:(:
(dense_272_matmul_readvariableop_resource:
7
)dense_272_biasadd_readvariableop_resource:
identity?? dense_272/BiasAdd/ReadVariableOp?dense_272/MatMul/ReadVariableOp?-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp?,lstm_816/lstm_cell_816/MatMul/ReadVariableOp?.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp?lstm_816/while?-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp?,lstm_817/lstm_cell_817/MatMul/ReadVariableOp?.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp?lstm_817/while?-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp?,lstm_818/lstm_cell_818/MatMul/ReadVariableOp?.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp?lstm_818/whileD
lstm_816/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_816/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_816/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_816/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_sliceStridedSlicelstm_816/Shape:output:0%lstm_816/strided_slice/stack:output:0'lstm_816/strided_slice/stack_1:output:0'lstm_816/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_816/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_816/zeros/packedPacklstm_816/strided_slice:output:0 lstm_816/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_816/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_816/zerosFilllstm_816/zeros/packed:output:0lstm_816/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_816/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_816/zeros_1/packedPacklstm_816/strided_slice:output:0"lstm_816/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_816/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_816/zeros_1Fill lstm_816/zeros_1/packed:output:0lstm_816/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_816/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_816/transpose	Transposeinputs lstm_816/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_816/Shape_1Shapelstm_816/transpose:y:0*
T0*
_output_shapes
:h
lstm_816/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_816/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_816/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_slice_1StridedSlicelstm_816/Shape_1:output:0'lstm_816/strided_slice_1/stack:output:0)lstm_816/strided_slice_1/stack_1:output:0)lstm_816/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_816/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_816/TensorArrayV2TensorListReserve-lstm_816/TensorArrayV2/element_shape:output:0!lstm_816/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_816/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_816/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_816/transpose:y:0Glstm_816/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_816/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_816/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_816/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_slice_2StridedSlicelstm_816/transpose:y:0'lstm_816/strided_slice_2/stack:output:0)lstm_816/strided_slice_2/stack_1:output:0)lstm_816/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_816/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp5lstm_816_lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_816/lstm_cell_816/MatMulMatMul!lstm_816/strided_slice_2:output:04lstm_816/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp7lstm_816_lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_816/lstm_cell_816/MatMul_1MatMullstm_816/zeros:output:06lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_816/lstm_cell_816/addAddV2'lstm_816/lstm_cell_816/MatMul:product:0)lstm_816/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp6lstm_816_lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_816/lstm_cell_816/BiasAddBiasAddlstm_816/lstm_cell_816/add:z:05lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_816/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_816/lstm_cell_816/splitSplit/lstm_816/lstm_cell_816/split/split_dim:output:0'lstm_816/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_816/lstm_cell_816/SigmoidSigmoid%lstm_816/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_816/lstm_cell_816/Sigmoid_1Sigmoid%lstm_816/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/mulMul$lstm_816/lstm_cell_816/Sigmoid_1:y:0lstm_816/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_816/lstm_cell_816/ReluRelu%lstm_816/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/mul_1Mul"lstm_816/lstm_cell_816/Sigmoid:y:0)lstm_816/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/add_1AddV2lstm_816/lstm_cell_816/mul:z:0 lstm_816/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_816/lstm_cell_816/Sigmoid_2Sigmoid%lstm_816/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_816/lstm_cell_816/Relu_1Relu lstm_816/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/mul_2Mul$lstm_816/lstm_cell_816/Sigmoid_2:y:0+lstm_816/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_816/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_816/TensorArrayV2_1TensorListReserve/lstm_816/TensorArrayV2_1/element_shape:output:0!lstm_816/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_816/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_816/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_816/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_816/whileWhile$lstm_816/while/loop_counter:output:0*lstm_816/while/maximum_iterations:output:0lstm_816/time:output:0!lstm_816/TensorArrayV2_1:handle:0lstm_816/zeros:output:0lstm_816/zeros_1:output:0!lstm_816/strided_slice_1:output:0@lstm_816/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_816_lstm_cell_816_matmul_readvariableop_resource7lstm_816_lstm_cell_816_matmul_1_readvariableop_resource6lstm_816_lstm_cell_816_biasadd_readvariableop_resource*
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
lstm_816_while_body_4951607*'
condR
lstm_816_while_cond_4951606*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_816/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_816/TensorArrayV2Stack/TensorListStackTensorListStacklstm_816/while:output:3Blstm_816/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_816/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_816/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_816/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_slice_3StridedSlice4lstm_816/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_816/strided_slice_3/stack:output:0)lstm_816/strided_slice_3/stack_1:output:0)lstm_816/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_816/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_816/transpose_1	Transpose4lstm_816/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_816/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_816/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_817/ShapeShapelstm_816/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_817/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_817/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_817/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_sliceStridedSlicelstm_817/Shape:output:0%lstm_817/strided_slice/stack:output:0'lstm_817/strided_slice/stack_1:output:0'lstm_817/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_817/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_817/zeros/packedPacklstm_817/strided_slice:output:0 lstm_817/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_817/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_817/zerosFilllstm_817/zeros/packed:output:0lstm_817/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_817/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_817/zeros_1/packedPacklstm_817/strided_slice:output:0"lstm_817/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_817/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_817/zeros_1Fill lstm_817/zeros_1/packed:output:0lstm_817/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_817/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_817/transpose	Transposelstm_816/transpose_1:y:0 lstm_817/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_817/Shape_1Shapelstm_817/transpose:y:0*
T0*
_output_shapes
:h
lstm_817/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_817/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_817/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_slice_1StridedSlicelstm_817/Shape_1:output:0'lstm_817/strided_slice_1/stack:output:0)lstm_817/strided_slice_1/stack_1:output:0)lstm_817/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_817/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_817/TensorArrayV2TensorListReserve-lstm_817/TensorArrayV2/element_shape:output:0!lstm_817/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_817/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_817/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_817/transpose:y:0Glstm_817/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_817/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_817/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_817/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_slice_2StridedSlicelstm_817/transpose:y:0'lstm_817/strided_slice_2/stack:output:0)lstm_817/strided_slice_2/stack_1:output:0)lstm_817/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_817/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp5lstm_817_lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_817/lstm_cell_817/MatMulMatMul!lstm_817/strided_slice_2:output:04lstm_817/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp7lstm_817_lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_817/lstm_cell_817/MatMul_1MatMullstm_817/zeros:output:06lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_817/lstm_cell_817/addAddV2'lstm_817/lstm_cell_817/MatMul:product:0)lstm_817/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp6lstm_817_lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_817/lstm_cell_817/BiasAddBiasAddlstm_817/lstm_cell_817/add:z:05lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_817/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_817/lstm_cell_817/splitSplit/lstm_817/lstm_cell_817/split/split_dim:output:0'lstm_817/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_817/lstm_cell_817/SigmoidSigmoid%lstm_817/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_817/lstm_cell_817/Sigmoid_1Sigmoid%lstm_817/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/mulMul$lstm_817/lstm_cell_817/Sigmoid_1:y:0lstm_817/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_817/lstm_cell_817/ReluRelu%lstm_817/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/mul_1Mul"lstm_817/lstm_cell_817/Sigmoid:y:0)lstm_817/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/add_1AddV2lstm_817/lstm_cell_817/mul:z:0 lstm_817/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_817/lstm_cell_817/Sigmoid_2Sigmoid%lstm_817/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_817/lstm_cell_817/Relu_1Relu lstm_817/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/mul_2Mul$lstm_817/lstm_cell_817/Sigmoid_2:y:0+lstm_817/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_817/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_817/TensorArrayV2_1TensorListReserve/lstm_817/TensorArrayV2_1/element_shape:output:0!lstm_817/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_817/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_817/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_817/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_817/whileWhile$lstm_817/while/loop_counter:output:0*lstm_817/while/maximum_iterations:output:0lstm_817/time:output:0!lstm_817/TensorArrayV2_1:handle:0lstm_817/zeros:output:0lstm_817/zeros_1:output:0!lstm_817/strided_slice_1:output:0@lstm_817/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_817_lstm_cell_817_matmul_readvariableop_resource7lstm_817_lstm_cell_817_matmul_1_readvariableop_resource6lstm_817_lstm_cell_817_biasadd_readvariableop_resource*
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
lstm_817_while_body_4951746*'
condR
lstm_817_while_cond_4951745*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_817/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_817/TensorArrayV2Stack/TensorListStackTensorListStacklstm_817/while:output:3Blstm_817/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_817/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_817/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_817/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_slice_3StridedSlice4lstm_817/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_817/strided_slice_3/stack:output:0)lstm_817/strided_slice_3/stack_1:output:0)lstm_817/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_817/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_817/transpose_1	Transpose4lstm_817/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_817/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_817/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_818/ShapeShapelstm_817/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_818/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_818/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_818/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_sliceStridedSlicelstm_818/Shape:output:0%lstm_818/strided_slice/stack:output:0'lstm_818/strided_slice/stack_1:output:0'lstm_818/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_818/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_818/zeros/packedPacklstm_818/strided_slice:output:0 lstm_818/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_818/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_818/zerosFilllstm_818/zeros/packed:output:0lstm_818/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_818/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_818/zeros_1/packedPacklstm_818/strided_slice:output:0"lstm_818/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_818/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_818/zeros_1Fill lstm_818/zeros_1/packed:output:0lstm_818/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_818/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_818/transpose	Transposelstm_817/transpose_1:y:0 lstm_818/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_818/Shape_1Shapelstm_818/transpose:y:0*
T0*
_output_shapes
:h
lstm_818/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_818/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_818/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_slice_1StridedSlicelstm_818/Shape_1:output:0'lstm_818/strided_slice_1/stack:output:0)lstm_818/strided_slice_1/stack_1:output:0)lstm_818/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_818/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_818/TensorArrayV2TensorListReserve-lstm_818/TensorArrayV2/element_shape:output:0!lstm_818/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_818/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_818/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_818/transpose:y:0Glstm_818/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_818/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_818/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_818/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_slice_2StridedSlicelstm_818/transpose:y:0'lstm_818/strided_slice_2/stack:output:0)lstm_818/strided_slice_2/stack_1:output:0)lstm_818/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_818/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp5lstm_818_lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_818/lstm_cell_818/MatMulMatMul!lstm_818/strided_slice_2:output:04lstm_818/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp7lstm_818_lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_818/lstm_cell_818/MatMul_1MatMullstm_818/zeros:output:06lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_818/lstm_cell_818/addAddV2'lstm_818/lstm_cell_818/MatMul:product:0)lstm_818/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp6lstm_818_lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_818/lstm_cell_818/BiasAddBiasAddlstm_818/lstm_cell_818/add:z:05lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_818/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_818/lstm_cell_818/splitSplit/lstm_818/lstm_cell_818/split/split_dim:output:0'lstm_818/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_818/lstm_cell_818/SigmoidSigmoid%lstm_818/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_818/lstm_cell_818/Sigmoid_1Sigmoid%lstm_818/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/mulMul$lstm_818/lstm_cell_818/Sigmoid_1:y:0lstm_818/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_818/lstm_cell_818/ReluRelu%lstm_818/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/mul_1Mul"lstm_818/lstm_cell_818/Sigmoid:y:0)lstm_818/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/add_1AddV2lstm_818/lstm_cell_818/mul:z:0 lstm_818/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_818/lstm_cell_818/Sigmoid_2Sigmoid%lstm_818/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_818/lstm_cell_818/Relu_1Relu lstm_818/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/mul_2Mul$lstm_818/lstm_cell_818/Sigmoid_2:y:0+lstm_818/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_818/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_818/TensorArrayV2_1TensorListReserve/lstm_818/TensorArrayV2_1/element_shape:output:0!lstm_818/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_818/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_818/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_818/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_818/whileWhile$lstm_818/while/loop_counter:output:0*lstm_818/while/maximum_iterations:output:0lstm_818/time:output:0!lstm_818/TensorArrayV2_1:handle:0lstm_818/zeros:output:0lstm_818/zeros_1:output:0!lstm_818/strided_slice_1:output:0@lstm_818/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_818_lstm_cell_818_matmul_readvariableop_resource7lstm_818_lstm_cell_818_matmul_1_readvariableop_resource6lstm_818_lstm_cell_818_biasadd_readvariableop_resource*
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
lstm_818_while_body_4951885*'
condR
lstm_818_while_cond_4951884*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_818/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_818/TensorArrayV2Stack/TensorListStackTensorListStacklstm_818/while:output:3Blstm_818/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_818/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_818/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_818/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_slice_3StridedSlice4lstm_818/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_818/strided_slice_3/stack:output:0)lstm_818/strided_slice_3/stack_1:output:0)lstm_818/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_818/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_818/transpose_1	Transpose4lstm_818/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_818/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_818/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_272/MatMul/ReadVariableOpReadVariableOp(dense_272_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_272/MatMulMatMul!lstm_818/strided_slice_3:output:0'dense_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_272/BiasAdd/ReadVariableOpReadVariableOp)dense_272_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_272/BiasAddBiasAdddense_272/MatMul:product:0(dense_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_272/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_272/BiasAdd/ReadVariableOp ^dense_272/MatMul/ReadVariableOp.^lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp-^lstm_816/lstm_cell_816/MatMul/ReadVariableOp/^lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp^lstm_816/while.^lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp-^lstm_817/lstm_cell_817/MatMul/ReadVariableOp/^lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp^lstm_817/while.^lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp-^lstm_818/lstm_cell_818/MatMul/ReadVariableOp/^lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp^lstm_818/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_272/BiasAdd/ReadVariableOp dense_272/BiasAdd/ReadVariableOp2B
dense_272/MatMul/ReadVariableOpdense_272/MatMul/ReadVariableOp2^
-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp2\
,lstm_816/lstm_cell_816/MatMul/ReadVariableOp,lstm_816/lstm_cell_816/MatMul/ReadVariableOp2`
.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp2 
lstm_816/whilelstm_816/while2^
-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp2\
,lstm_817/lstm_cell_817/MatMul/ReadVariableOp,lstm_817/lstm_cell_817/MatMul/ReadVariableOp2`
.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp2 
lstm_817/whilelstm_817/while2^
-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp2\
,lstm_818/lstm_cell_818/MatMul/ReadVariableOp,lstm_818/lstm_cell_818/MatMul/ReadVariableOp2`
.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp2 
lstm_818/whilelstm_818/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4950498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4950498___redundant_placeholder05
1while_while_cond_4950498___redundant_placeholder15
1while_while_cond_4950498___redundant_placeholder25
1while_while_cond_4950498___redundant_placeholder3
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
/__inference_lstm_cell_817_layer_call_fn_4954384

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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949651o
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
while_body_4949856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_817_4949880_0:	d?0
while_lstm_cell_817_4949882_0:	2?,
while_lstm_cell_817_4949884_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_817_4949880:	d?.
while_lstm_cell_817_4949882:	2?*
while_lstm_cell_817_4949884:	???+while/lstm_cell_817/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_817/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_817_4949880_0while_lstm_cell_817_4949882_0while_lstm_cell_817_4949884_0*
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949797?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_817/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_817/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_817/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_817/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_817_4949880while_lstm_cell_817_4949880_0"<
while_lstm_cell_817_4949882while_lstm_cell_817_4949882_0"<
while_lstm_cell_817_4949884while_lstm_cell_817_4949884_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_817/StatefulPartitionedCall+while/lstm_cell_817/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4949665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_817_4949689_0:	d?0
while_lstm_cell_817_4949691_0:	2?,
while_lstm_cell_817_4949693_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_817_4949689:	d?.
while_lstm_cell_817_4949691:	2?*
while_lstm_cell_817_4949693:	???+while/lstm_cell_817/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_817/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_817_4949689_0while_lstm_cell_817_4949691_0while_lstm_cell_817_4949693_0*
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949651?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_817/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_817/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_817/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_817/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_817_4949689while_lstm_cell_817_4949689_0"<
while_lstm_cell_817_4949691while_lstm_cell_817_4949691_0"<
while_lstm_cell_817_4949693while_lstm_cell_817_4949693_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_817/StatefulPartitionedCall+while/lstm_cell_817/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_816_layer_call_fn_4954303

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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949447o
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
while_cond_4952647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4952647___redundant_placeholder05
1while_while_cond_4952647___redundant_placeholder15
1while_while_cond_4952647___redundant_placeholder25
1while_while_cond_4952647___redundant_placeholder3
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
while_cond_4949505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4949505___redundant_placeholder05
1while_while_cond_4949505___redundant_placeholder15
1while_while_cond_4949505___redundant_placeholder25
1while_while_cond_4949505___redundant_placeholder3
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
while_body_4951195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_816_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_816_matmul_readvariableop_resource:	?G
4while_lstm_cell_816_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_816_biasadd_readvariableop_resource:	???*while/lstm_cell_816/BiasAdd/ReadVariableOp?)while/lstm_cell_816/MatMul/ReadVariableOp?+while/lstm_cell_816/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_816/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_816/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_816/addAddV2$while/lstm_cell_816/MatMul:product:0&while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_816/BiasAddBiasAddwhile/lstm_cell_816/add:z:02while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_816/splitSplit,while/lstm_cell_816/split/split_dim:output:0$while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_816/SigmoidSigmoid"while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_1Sigmoid"while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mulMul!while/lstm_cell_816/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_816/ReluRelu"while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_1Mulwhile/lstm_cell_816/Sigmoid:y:0&while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/add_1AddV2while/lstm_cell_816/mul:z:0while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_2Sigmoid"while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_816/Relu_1Reluwhile/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_2Mul!while/lstm_cell_816/Sigmoid_2:y:0(while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_816/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_816/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_816/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_816/BiasAdd/ReadVariableOp*^while/lstm_cell_816/MatMul/ReadVariableOp,^while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_816_biasadd_readvariableop_resource5while_lstm_cell_816_biasadd_readvariableop_resource_0"n
4while_lstm_cell_816_matmul_1_readvariableop_resource6while_lstm_cell_816_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_816_matmul_readvariableop_resource4while_lstm_cell_816_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_816/BiasAdd/ReadVariableOp*while/lstm_cell_816/BiasAdd/ReadVariableOp2V
)while/lstm_cell_816/MatMul/ReadVariableOp)while/lstm_cell_816/MatMul/ReadVariableOp2Z
+while/lstm_cell_816/MatMul_1/ReadVariableOp+while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_272_layer_call_fn_4951399
lstm_816_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_816_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951347o
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
_user_specified_namelstm_816_input
?W
?
 __inference__traced_save_4954706
file_prefix/
+savev2_dense_272_kernel_read_readvariableop-
)savev2_dense_272_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_816_lstm_cell_816_kernel_read_readvariableopF
Bsavev2_lstm_816_lstm_cell_816_recurrent_kernel_read_readvariableop:
6savev2_lstm_816_lstm_cell_816_bias_read_readvariableop<
8savev2_lstm_817_lstm_cell_817_kernel_read_readvariableopF
Bsavev2_lstm_817_lstm_cell_817_recurrent_kernel_read_readvariableop:
6savev2_lstm_817_lstm_cell_817_bias_read_readvariableop<
8savev2_lstm_818_lstm_cell_818_kernel_read_readvariableopF
Bsavev2_lstm_818_lstm_cell_818_recurrent_kernel_read_readvariableop:
6savev2_lstm_818_lstm_cell_818_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_272_kernel_m_read_readvariableop4
0savev2_adam_dense_272_bias_m_read_readvariableopC
?savev2_adam_lstm_816_lstm_cell_816_kernel_m_read_readvariableopM
Isavev2_adam_lstm_816_lstm_cell_816_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_816_lstm_cell_816_bias_m_read_readvariableopC
?savev2_adam_lstm_817_lstm_cell_817_kernel_m_read_readvariableopM
Isavev2_adam_lstm_817_lstm_cell_817_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_817_lstm_cell_817_bias_m_read_readvariableopC
?savev2_adam_lstm_818_lstm_cell_818_kernel_m_read_readvariableopM
Isavev2_adam_lstm_818_lstm_cell_818_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_818_lstm_cell_818_bias_m_read_readvariableop6
2savev2_adam_dense_272_kernel_v_read_readvariableop4
0savev2_adam_dense_272_bias_v_read_readvariableopC
?savev2_adam_lstm_816_lstm_cell_816_kernel_v_read_readvariableopM
Isavev2_adam_lstm_816_lstm_cell_816_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_816_lstm_cell_816_bias_v_read_readvariableopC
?savev2_adam_lstm_817_lstm_cell_817_kernel_v_read_readvariableopM
Isavev2_adam_lstm_817_lstm_cell_817_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_817_lstm_cell_817_bias_v_read_readvariableopC
?savev2_adam_lstm_818_lstm_cell_818_kernel_v_read_readvariableopM
Isavev2_adam_lstm_818_lstm_cell_818_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_818_lstm_cell_818_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_272_kernel_read_readvariableop)savev2_dense_272_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_816_lstm_cell_816_kernel_read_readvariableopBsavev2_lstm_816_lstm_cell_816_recurrent_kernel_read_readvariableop6savev2_lstm_816_lstm_cell_816_bias_read_readvariableop8savev2_lstm_817_lstm_cell_817_kernel_read_readvariableopBsavev2_lstm_817_lstm_cell_817_recurrent_kernel_read_readvariableop6savev2_lstm_817_lstm_cell_817_bias_read_readvariableop8savev2_lstm_818_lstm_cell_818_kernel_read_readvariableopBsavev2_lstm_818_lstm_cell_818_recurrent_kernel_read_readvariableop6savev2_lstm_818_lstm_cell_818_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_272_kernel_m_read_readvariableop0savev2_adam_dense_272_bias_m_read_readvariableop?savev2_adam_lstm_816_lstm_cell_816_kernel_m_read_readvariableopIsavev2_adam_lstm_816_lstm_cell_816_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_816_lstm_cell_816_bias_m_read_readvariableop?savev2_adam_lstm_817_lstm_cell_817_kernel_m_read_readvariableopIsavev2_adam_lstm_817_lstm_cell_817_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_817_lstm_cell_817_bias_m_read_readvariableop?savev2_adam_lstm_818_lstm_cell_818_kernel_m_read_readvariableopIsavev2_adam_lstm_818_lstm_cell_818_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_818_lstm_cell_818_bias_m_read_readvariableop2savev2_adam_dense_272_kernel_v_read_readvariableop0savev2_adam_dense_272_bias_v_read_readvariableop?savev2_adam_lstm_816_lstm_cell_816_kernel_v_read_readvariableopIsavev2_adam_lstm_816_lstm_cell_816_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_816_lstm_cell_816_bias_v_read_readvariableop?savev2_adam_lstm_817_lstm_cell_817_kernel_v_read_readvariableopIsavev2_adam_lstm_817_lstm_cell_817_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_817_lstm_cell_817_bias_v_read_readvariableop?savev2_adam_lstm_818_lstm_cell_818_kernel_v_read_readvariableopIsavev2_adam_lstm_818_lstm_cell_818_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_818_lstm_cell_818_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4953879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4953879___redundant_placeholder05
1while_while_cond_4953879___redundant_placeholder15
1while_while_cond_4953879___redundant_placeholder25
1while_while_cond_4953879___redundant_placeholder3
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
while_body_4954166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_818_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_818_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_818_matmul_readvariableop_resource:2(F
4while_lstm_cell_818_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_818_biasadd_readvariableop_resource:(??*while/lstm_cell_818/BiasAdd/ReadVariableOp?)while/lstm_cell_818/MatMul/ReadVariableOp?+while/lstm_cell_818/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_818/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_818/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_818/addAddV2$while/lstm_cell_818/MatMul:product:0&while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_818/BiasAddBiasAddwhile/lstm_cell_818/add:z:02while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_818/splitSplit,while/lstm_cell_818/split/split_dim:output:0$while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_818/SigmoidSigmoid"while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_1Sigmoid"while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mulMul!while/lstm_cell_818/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_818/ReluRelu"while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_1Mulwhile/lstm_cell_818/Sigmoid:y:0&while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/add_1AddV2while/lstm_cell_818/mul:z:0while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_2Sigmoid"while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_818/Relu_1Reluwhile/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_2Mul!while/lstm_cell_818/Sigmoid_2:y:0(while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_818/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_818/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_818/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_818/BiasAdd/ReadVariableOp*^while/lstm_cell_818/MatMul/ReadVariableOp,^while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_818_biasadd_readvariableop_resource5while_lstm_cell_818_biasadd_readvariableop_resource_0"n
4while_lstm_cell_818_matmul_1_readvariableop_resource6while_lstm_cell_818_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_818_matmul_readvariableop_resource4while_lstm_cell_818_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_818/BiasAdd/ReadVariableOp*while/lstm_cell_818/BiasAdd/ReadVariableOp2V
)while/lstm_cell_818/MatMul/ReadVariableOp)while/lstm_cell_818/MatMul/ReadVariableOp2Z
+while/lstm_cell_818/MatMul_1/ReadVariableOp+while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4954563

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
?
*__inference_lstm_816_layer_call_fn_4952413
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4949384|
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
/__inference_lstm_cell_818_layer_call_fn_4954499

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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950147o
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

lstm_816_while_body_4951607.
*lstm_816_while_lstm_816_while_loop_counter4
0lstm_816_while_lstm_816_while_maximum_iterations
lstm_816_while_placeholder 
lstm_816_while_placeholder_1 
lstm_816_while_placeholder_2 
lstm_816_while_placeholder_3-
)lstm_816_while_lstm_816_strided_slice_1_0i
elstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0:	?R
?lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?M
>lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
lstm_816_while_identity
lstm_816_while_identity_1
lstm_816_while_identity_2
lstm_816_while_identity_3
lstm_816_while_identity_4
lstm_816_while_identity_5+
'lstm_816_while_lstm_816_strided_slice_1g
clstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensorN
;lstm_816_while_lstm_cell_816_matmul_readvariableop_resource:	?P
=lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource:	d?K
<lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource:	???3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp?2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp?4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp?
@lstm_816/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_816/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensor_0lstm_816_while_placeholderIlstm_816/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp=lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_816/while/lstm_cell_816/MatMulMatMul9lstm_816/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp?lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_816/while/lstm_cell_816/MatMul_1MatMullstm_816_while_placeholder_2<lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_816/while/lstm_cell_816/addAddV2-lstm_816/while/lstm_cell_816/MatMul:product:0/lstm_816/while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp>lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_816/while/lstm_cell_816/BiasAddBiasAdd$lstm_816/while/lstm_cell_816/add:z:0;lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_816/while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_816/while/lstm_cell_816/splitSplit5lstm_816/while/lstm_cell_816/split/split_dim:output:0-lstm_816/while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_816/while/lstm_cell_816/SigmoidSigmoid+lstm_816/while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_816/while/lstm_cell_816/Sigmoid_1Sigmoid+lstm_816/while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_816/while/lstm_cell_816/mulMul*lstm_816/while/lstm_cell_816/Sigmoid_1:y:0lstm_816_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_816/while/lstm_cell_816/ReluRelu+lstm_816/while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_816/while/lstm_cell_816/mul_1Mul(lstm_816/while/lstm_cell_816/Sigmoid:y:0/lstm_816/while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_816/while/lstm_cell_816/add_1AddV2$lstm_816/while/lstm_cell_816/mul:z:0&lstm_816/while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_816/while/lstm_cell_816/Sigmoid_2Sigmoid+lstm_816/while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_816/while/lstm_cell_816/Relu_1Relu&lstm_816/while/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_816/while/lstm_cell_816/mul_2Mul*lstm_816/while/lstm_cell_816/Sigmoid_2:y:01lstm_816/while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_816/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_816_while_placeholder_1lstm_816_while_placeholder&lstm_816/while/lstm_cell_816/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_816/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_816/while/addAddV2lstm_816_while_placeholderlstm_816/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_816/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_816/while/add_1AddV2*lstm_816_while_lstm_816_while_loop_counterlstm_816/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_816/while/IdentityIdentitylstm_816/while/add_1:z:0^lstm_816/while/NoOp*
T0*
_output_shapes
: ?
lstm_816/while/Identity_1Identity0lstm_816_while_lstm_816_while_maximum_iterations^lstm_816/while/NoOp*
T0*
_output_shapes
: t
lstm_816/while/Identity_2Identitylstm_816/while/add:z:0^lstm_816/while/NoOp*
T0*
_output_shapes
: ?
lstm_816/while/Identity_3IdentityClstm_816/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_816/while/NoOp*
T0*
_output_shapes
: ?
lstm_816/while/Identity_4Identity&lstm_816/while/lstm_cell_816/mul_2:z:0^lstm_816/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_816/while/Identity_5Identity&lstm_816/while/lstm_cell_816/add_1:z:0^lstm_816/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_816/while/NoOpNoOp4^lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp3^lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp5^lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_816_while_identity lstm_816/while/Identity:output:0"?
lstm_816_while_identity_1"lstm_816/while/Identity_1:output:0"?
lstm_816_while_identity_2"lstm_816/while/Identity_2:output:0"?
lstm_816_while_identity_3"lstm_816/while/Identity_3:output:0"?
lstm_816_while_identity_4"lstm_816/while/Identity_4:output:0"?
lstm_816_while_identity_5"lstm_816/while/Identity_5:output:0"T
'lstm_816_while_lstm_816_strided_slice_1)lstm_816_while_lstm_816_strided_slice_1_0"~
<lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource>lstm_816_while_lstm_cell_816_biasadd_readvariableop_resource_0"?
=lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource?lstm_816_while_lstm_cell_816_matmul_1_readvariableop_resource_0"|
;lstm_816_while_lstm_cell_816_matmul_readvariableop_resource=lstm_816_while_lstm_cell_816_matmul_readvariableop_resource_0"?
clstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensorelstm_816_while_tensorarrayv2read_tensorlistgetitem_lstm_816_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp3lstm_816/while/lstm_cell_816/BiasAdd/ReadVariableOp2h
2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp2lstm_816/while/lstm_cell_816/MatMul/ReadVariableOp2l
4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp4lstm_816/while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4952402

inputsH
5lstm_816_lstm_cell_816_matmul_readvariableop_resource:	?J
7lstm_816_lstm_cell_816_matmul_1_readvariableop_resource:	d?E
6lstm_816_lstm_cell_816_biasadd_readvariableop_resource:	?H
5lstm_817_lstm_cell_817_matmul_readvariableop_resource:	d?J
7lstm_817_lstm_cell_817_matmul_1_readvariableop_resource:	2?E
6lstm_817_lstm_cell_817_biasadd_readvariableop_resource:	?G
5lstm_818_lstm_cell_818_matmul_readvariableop_resource:2(I
7lstm_818_lstm_cell_818_matmul_1_readvariableop_resource:
(D
6lstm_818_lstm_cell_818_biasadd_readvariableop_resource:(:
(dense_272_matmul_readvariableop_resource:
7
)dense_272_biasadd_readvariableop_resource:
identity?? dense_272/BiasAdd/ReadVariableOp?dense_272/MatMul/ReadVariableOp?-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp?,lstm_816/lstm_cell_816/MatMul/ReadVariableOp?.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp?lstm_816/while?-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp?,lstm_817/lstm_cell_817/MatMul/ReadVariableOp?.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp?lstm_817/while?-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp?,lstm_818/lstm_cell_818/MatMul/ReadVariableOp?.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp?lstm_818/whileD
lstm_816/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_816/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_816/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_816/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_sliceStridedSlicelstm_816/Shape:output:0%lstm_816/strided_slice/stack:output:0'lstm_816/strided_slice/stack_1:output:0'lstm_816/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_816/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_816/zeros/packedPacklstm_816/strided_slice:output:0 lstm_816/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_816/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_816/zerosFilllstm_816/zeros/packed:output:0lstm_816/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_816/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_816/zeros_1/packedPacklstm_816/strided_slice:output:0"lstm_816/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_816/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_816/zeros_1Fill lstm_816/zeros_1/packed:output:0lstm_816/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_816/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_816/transpose	Transposeinputs lstm_816/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_816/Shape_1Shapelstm_816/transpose:y:0*
T0*
_output_shapes
:h
lstm_816/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_816/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_816/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_slice_1StridedSlicelstm_816/Shape_1:output:0'lstm_816/strided_slice_1/stack:output:0)lstm_816/strided_slice_1/stack_1:output:0)lstm_816/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_816/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_816/TensorArrayV2TensorListReserve-lstm_816/TensorArrayV2/element_shape:output:0!lstm_816/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_816/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_816/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_816/transpose:y:0Glstm_816/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_816/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_816/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_816/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_slice_2StridedSlicelstm_816/transpose:y:0'lstm_816/strided_slice_2/stack:output:0)lstm_816/strided_slice_2/stack_1:output:0)lstm_816/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_816/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp5lstm_816_lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_816/lstm_cell_816/MatMulMatMul!lstm_816/strided_slice_2:output:04lstm_816/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp7lstm_816_lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_816/lstm_cell_816/MatMul_1MatMullstm_816/zeros:output:06lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_816/lstm_cell_816/addAddV2'lstm_816/lstm_cell_816/MatMul:product:0)lstm_816/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp6lstm_816_lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_816/lstm_cell_816/BiasAddBiasAddlstm_816/lstm_cell_816/add:z:05lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_816/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_816/lstm_cell_816/splitSplit/lstm_816/lstm_cell_816/split/split_dim:output:0'lstm_816/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_816/lstm_cell_816/SigmoidSigmoid%lstm_816/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_816/lstm_cell_816/Sigmoid_1Sigmoid%lstm_816/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/mulMul$lstm_816/lstm_cell_816/Sigmoid_1:y:0lstm_816/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_816/lstm_cell_816/ReluRelu%lstm_816/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/mul_1Mul"lstm_816/lstm_cell_816/Sigmoid:y:0)lstm_816/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/add_1AddV2lstm_816/lstm_cell_816/mul:z:0 lstm_816/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_816/lstm_cell_816/Sigmoid_2Sigmoid%lstm_816/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_816/lstm_cell_816/Relu_1Relu lstm_816/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_816/lstm_cell_816/mul_2Mul$lstm_816/lstm_cell_816/Sigmoid_2:y:0+lstm_816/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_816/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_816/TensorArrayV2_1TensorListReserve/lstm_816/TensorArrayV2_1/element_shape:output:0!lstm_816/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_816/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_816/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_816/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_816/whileWhile$lstm_816/while/loop_counter:output:0*lstm_816/while/maximum_iterations:output:0lstm_816/time:output:0!lstm_816/TensorArrayV2_1:handle:0lstm_816/zeros:output:0lstm_816/zeros_1:output:0!lstm_816/strided_slice_1:output:0@lstm_816/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_816_lstm_cell_816_matmul_readvariableop_resource7lstm_816_lstm_cell_816_matmul_1_readvariableop_resource6lstm_816_lstm_cell_816_biasadd_readvariableop_resource*
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
lstm_816_while_body_4952034*'
condR
lstm_816_while_cond_4952033*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_816/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_816/TensorArrayV2Stack/TensorListStackTensorListStacklstm_816/while:output:3Blstm_816/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_816/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_816/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_816/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_816/strided_slice_3StridedSlice4lstm_816/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_816/strided_slice_3/stack:output:0)lstm_816/strided_slice_3/stack_1:output:0)lstm_816/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_816/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_816/transpose_1	Transpose4lstm_816/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_816/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_816/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_817/ShapeShapelstm_816/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_817/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_817/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_817/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_sliceStridedSlicelstm_817/Shape:output:0%lstm_817/strided_slice/stack:output:0'lstm_817/strided_slice/stack_1:output:0'lstm_817/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_817/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_817/zeros/packedPacklstm_817/strided_slice:output:0 lstm_817/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_817/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_817/zerosFilllstm_817/zeros/packed:output:0lstm_817/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_817/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_817/zeros_1/packedPacklstm_817/strided_slice:output:0"lstm_817/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_817/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_817/zeros_1Fill lstm_817/zeros_1/packed:output:0lstm_817/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_817/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_817/transpose	Transposelstm_816/transpose_1:y:0 lstm_817/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_817/Shape_1Shapelstm_817/transpose:y:0*
T0*
_output_shapes
:h
lstm_817/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_817/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_817/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_slice_1StridedSlicelstm_817/Shape_1:output:0'lstm_817/strided_slice_1/stack:output:0)lstm_817/strided_slice_1/stack_1:output:0)lstm_817/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_817/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_817/TensorArrayV2TensorListReserve-lstm_817/TensorArrayV2/element_shape:output:0!lstm_817/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_817/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_817/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_817/transpose:y:0Glstm_817/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_817/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_817/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_817/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_slice_2StridedSlicelstm_817/transpose:y:0'lstm_817/strided_slice_2/stack:output:0)lstm_817/strided_slice_2/stack_1:output:0)lstm_817/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_817/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp5lstm_817_lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_817/lstm_cell_817/MatMulMatMul!lstm_817/strided_slice_2:output:04lstm_817/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp7lstm_817_lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_817/lstm_cell_817/MatMul_1MatMullstm_817/zeros:output:06lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_817/lstm_cell_817/addAddV2'lstm_817/lstm_cell_817/MatMul:product:0)lstm_817/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp6lstm_817_lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_817/lstm_cell_817/BiasAddBiasAddlstm_817/lstm_cell_817/add:z:05lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_817/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_817/lstm_cell_817/splitSplit/lstm_817/lstm_cell_817/split/split_dim:output:0'lstm_817/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_817/lstm_cell_817/SigmoidSigmoid%lstm_817/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_817/lstm_cell_817/Sigmoid_1Sigmoid%lstm_817/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/mulMul$lstm_817/lstm_cell_817/Sigmoid_1:y:0lstm_817/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_817/lstm_cell_817/ReluRelu%lstm_817/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/mul_1Mul"lstm_817/lstm_cell_817/Sigmoid:y:0)lstm_817/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/add_1AddV2lstm_817/lstm_cell_817/mul:z:0 lstm_817/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_817/lstm_cell_817/Sigmoid_2Sigmoid%lstm_817/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_817/lstm_cell_817/Relu_1Relu lstm_817/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_817/lstm_cell_817/mul_2Mul$lstm_817/lstm_cell_817/Sigmoid_2:y:0+lstm_817/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_817/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_817/TensorArrayV2_1TensorListReserve/lstm_817/TensorArrayV2_1/element_shape:output:0!lstm_817/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_817/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_817/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_817/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_817/whileWhile$lstm_817/while/loop_counter:output:0*lstm_817/while/maximum_iterations:output:0lstm_817/time:output:0!lstm_817/TensorArrayV2_1:handle:0lstm_817/zeros:output:0lstm_817/zeros_1:output:0!lstm_817/strided_slice_1:output:0@lstm_817/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_817_lstm_cell_817_matmul_readvariableop_resource7lstm_817_lstm_cell_817_matmul_1_readvariableop_resource6lstm_817_lstm_cell_817_biasadd_readvariableop_resource*
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
lstm_817_while_body_4952173*'
condR
lstm_817_while_cond_4952172*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_817/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_817/TensorArrayV2Stack/TensorListStackTensorListStacklstm_817/while:output:3Blstm_817/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_817/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_817/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_817/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_817/strided_slice_3StridedSlice4lstm_817/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_817/strided_slice_3/stack:output:0)lstm_817/strided_slice_3/stack_1:output:0)lstm_817/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_817/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_817/transpose_1	Transpose4lstm_817/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_817/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_817/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_818/ShapeShapelstm_817/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_818/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_818/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_818/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_sliceStridedSlicelstm_818/Shape:output:0%lstm_818/strided_slice/stack:output:0'lstm_818/strided_slice/stack_1:output:0'lstm_818/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_818/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_818/zeros/packedPacklstm_818/strided_slice:output:0 lstm_818/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_818/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_818/zerosFilllstm_818/zeros/packed:output:0lstm_818/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_818/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_818/zeros_1/packedPacklstm_818/strided_slice:output:0"lstm_818/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_818/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_818/zeros_1Fill lstm_818/zeros_1/packed:output:0lstm_818/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_818/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_818/transpose	Transposelstm_817/transpose_1:y:0 lstm_818/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_818/Shape_1Shapelstm_818/transpose:y:0*
T0*
_output_shapes
:h
lstm_818/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_818/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_818/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_slice_1StridedSlicelstm_818/Shape_1:output:0'lstm_818/strided_slice_1/stack:output:0)lstm_818/strided_slice_1/stack_1:output:0)lstm_818/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_818/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_818/TensorArrayV2TensorListReserve-lstm_818/TensorArrayV2/element_shape:output:0!lstm_818/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_818/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_818/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_818/transpose:y:0Glstm_818/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_818/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_818/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_818/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_slice_2StridedSlicelstm_818/transpose:y:0'lstm_818/strided_slice_2/stack:output:0)lstm_818/strided_slice_2/stack_1:output:0)lstm_818/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_818/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp5lstm_818_lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_818/lstm_cell_818/MatMulMatMul!lstm_818/strided_slice_2:output:04lstm_818/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp7lstm_818_lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_818/lstm_cell_818/MatMul_1MatMullstm_818/zeros:output:06lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_818/lstm_cell_818/addAddV2'lstm_818/lstm_cell_818/MatMul:product:0)lstm_818/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp6lstm_818_lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_818/lstm_cell_818/BiasAddBiasAddlstm_818/lstm_cell_818/add:z:05lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_818/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_818/lstm_cell_818/splitSplit/lstm_818/lstm_cell_818/split/split_dim:output:0'lstm_818/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_818/lstm_cell_818/SigmoidSigmoid%lstm_818/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_818/lstm_cell_818/Sigmoid_1Sigmoid%lstm_818/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/mulMul$lstm_818/lstm_cell_818/Sigmoid_1:y:0lstm_818/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_818/lstm_cell_818/ReluRelu%lstm_818/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/mul_1Mul"lstm_818/lstm_cell_818/Sigmoid:y:0)lstm_818/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/add_1AddV2lstm_818/lstm_cell_818/mul:z:0 lstm_818/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_818/lstm_cell_818/Sigmoid_2Sigmoid%lstm_818/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_818/lstm_cell_818/Relu_1Relu lstm_818/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_818/lstm_cell_818/mul_2Mul$lstm_818/lstm_cell_818/Sigmoid_2:y:0+lstm_818/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_818/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_818/TensorArrayV2_1TensorListReserve/lstm_818/TensorArrayV2_1/element_shape:output:0!lstm_818/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_818/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_818/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_818/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_818/whileWhile$lstm_818/while/loop_counter:output:0*lstm_818/while/maximum_iterations:output:0lstm_818/time:output:0!lstm_818/TensorArrayV2_1:handle:0lstm_818/zeros:output:0lstm_818/zeros_1:output:0!lstm_818/strided_slice_1:output:0@lstm_818/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_818_lstm_cell_818_matmul_readvariableop_resource7lstm_818_lstm_cell_818_matmul_1_readvariableop_resource6lstm_818_lstm_cell_818_biasadd_readvariableop_resource*
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
lstm_818_while_body_4952312*'
condR
lstm_818_while_cond_4952311*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_818/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_818/TensorArrayV2Stack/TensorListStackTensorListStacklstm_818/while:output:3Blstm_818/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_818/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_818/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_818/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_818/strided_slice_3StridedSlice4lstm_818/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_818/strided_slice_3/stack:output:0)lstm_818/strided_slice_3/stack_1:output:0)lstm_818/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_818/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_818/transpose_1	Transpose4lstm_818/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_818/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_818/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_272/MatMul/ReadVariableOpReadVariableOp(dense_272_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_272/MatMulMatMul!lstm_818/strided_slice_3:output:0'dense_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_272/BiasAdd/ReadVariableOpReadVariableOp)dense_272_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_272/BiasAddBiasAdddense_272/MatMul:product:0(dense_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_272/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_272/BiasAdd/ReadVariableOp ^dense_272/MatMul/ReadVariableOp.^lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp-^lstm_816/lstm_cell_816/MatMul/ReadVariableOp/^lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp^lstm_816/while.^lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp-^lstm_817/lstm_cell_817/MatMul/ReadVariableOp/^lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp^lstm_817/while.^lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp-^lstm_818/lstm_cell_818/MatMul/ReadVariableOp/^lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp^lstm_818/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_272/BiasAdd/ReadVariableOp dense_272/BiasAdd/ReadVariableOp2B
dense_272/MatMul/ReadVariableOpdense_272/MatMul/ReadVariableOp2^
-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp-lstm_816/lstm_cell_816/BiasAdd/ReadVariableOp2\
,lstm_816/lstm_cell_816/MatMul/ReadVariableOp,lstm_816/lstm_cell_816/MatMul/ReadVariableOp2`
.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp.lstm_816/lstm_cell_816/MatMul_1/ReadVariableOp2 
lstm_816/whilelstm_816/while2^
-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp-lstm_817/lstm_cell_817/BiasAdd/ReadVariableOp2\
,lstm_817/lstm_cell_817/MatMul/ReadVariableOp,lstm_817/lstm_cell_817/MatMul/ReadVariableOp2`
.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp.lstm_817/lstm_cell_817/MatMul_1/ReadVariableOp2 
lstm_817/whilelstm_817/while2^
-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp-lstm_818/lstm_cell_818/BiasAdd/ReadVariableOp2\
,lstm_818/lstm_cell_818/MatMul/ReadVariableOp,lstm_818/lstm_cell_818/MatMul/ReadVariableOp2`
.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp.lstm_818/lstm_cell_818/MatMul_1/ReadVariableOp2 
lstm_818/whilelstm_818/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4950864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4950864___redundant_placeholder05
1while_while_cond_4950864___redundant_placeholder15
1while_while_cond_4950864___redundant_placeholder25
1while_while_cond_4950864___redundant_placeholder3
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
#__inference__traced_restore_4954836
file_prefix3
!assignvariableop_dense_272_kernel:
/
!assignvariableop_1_dense_272_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_816_lstm_cell_816_kernel:	?M
:assignvariableop_8_lstm_816_lstm_cell_816_recurrent_kernel:	d?=
.assignvariableop_9_lstm_816_lstm_cell_816_bias:	?D
1assignvariableop_10_lstm_817_lstm_cell_817_kernel:	d?N
;assignvariableop_11_lstm_817_lstm_cell_817_recurrent_kernel:	2?>
/assignvariableop_12_lstm_817_lstm_cell_817_bias:	?C
1assignvariableop_13_lstm_818_lstm_cell_818_kernel:2(M
;assignvariableop_14_lstm_818_lstm_cell_818_recurrent_kernel:
(=
/assignvariableop_15_lstm_818_lstm_cell_818_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_272_kernel_m:
7
)assignvariableop_19_adam_dense_272_bias_m:K
8assignvariableop_20_adam_lstm_816_lstm_cell_816_kernel_m:	?U
Bassignvariableop_21_adam_lstm_816_lstm_cell_816_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_816_lstm_cell_816_bias_m:	?K
8assignvariableop_23_adam_lstm_817_lstm_cell_817_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_817_lstm_cell_817_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_817_lstm_cell_817_bias_m:	?J
8assignvariableop_26_adam_lstm_818_lstm_cell_818_kernel_m:2(T
Bassignvariableop_27_adam_lstm_818_lstm_cell_818_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_818_lstm_cell_818_bias_m:(=
+assignvariableop_29_adam_dense_272_kernel_v:
7
)assignvariableop_30_adam_dense_272_bias_v:K
8assignvariableop_31_adam_lstm_816_lstm_cell_816_kernel_v:	?U
Bassignvariableop_32_adam_lstm_816_lstm_cell_816_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_816_lstm_cell_816_bias_v:	?K
8assignvariableop_34_adam_lstm_817_lstm_cell_817_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_817_lstm_cell_817_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_817_lstm_cell_817_bias_v:	?J
8assignvariableop_37_adam_lstm_818_lstm_cell_818_kernel_v:2(T
Bassignvariableop_38_adam_lstm_818_lstm_cell_818_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_818_lstm_cell_818_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_272_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_272_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_816_lstm_cell_816_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_816_lstm_cell_816_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_816_lstm_cell_816_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_817_lstm_cell_817_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_817_lstm_cell_817_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_817_lstm_cell_817_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_818_lstm_cell_818_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_818_lstm_cell_818_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_818_lstm_cell_818_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_272_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_272_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_816_lstm_cell_816_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_816_lstm_cell_816_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_816_lstm_cell_816_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_817_lstm_cell_817_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_817_lstm_cell_817_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_817_lstm_cell_817_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_818_lstm_cell_818_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_818_lstm_cell_818_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_818_lstm_cell_818_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_272_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_272_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_816_lstm_cell_816_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_816_lstm_cell_816_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_816_lstm_cell_816_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_817_lstm_cell_817_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_817_lstm_cell_817_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_817_lstm_cell_817_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_818_lstm_cell_818_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_818_lstm_cell_818_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_818_lstm_cell_818_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4952933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4952933___redundant_placeholder05
1while_while_cond_4952933___redundant_placeholder15
1while_while_cond_4952933___redundant_placeholder25
1while_while_cond_4952933___redundant_placeholder3
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
while_cond_4950648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4950648___redundant_placeholder05
1while_while_cond_4950648___redundant_placeholder15
1while_while_cond_4950648___redundant_placeholder25
1while_while_cond_4950648___redundant_placeholder3
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
while_body_4951030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_817_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_817_matmul_readvariableop_resource:	d?G
4while_lstm_cell_817_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_817_biasadd_readvariableop_resource:	???*while/lstm_cell_817/BiasAdd/ReadVariableOp?)while/lstm_cell_817/MatMul/ReadVariableOp?+while/lstm_cell_817/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_817/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_817/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_817/addAddV2$while/lstm_cell_817/MatMul:product:0&while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_817/BiasAddBiasAddwhile/lstm_cell_817/add:z:02while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_817/splitSplit,while/lstm_cell_817/split/split_dim:output:0$while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_817/SigmoidSigmoid"while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_1Sigmoid"while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mulMul!while/lstm_cell_817/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_817/ReluRelu"while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_1Mulwhile/lstm_cell_817/Sigmoid:y:0&while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/add_1AddV2while/lstm_cell_817/mul:z:0while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_2Sigmoid"while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_817/Relu_1Reluwhile/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_2Mul!while/lstm_cell_817/Sigmoid_2:y:0(while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_817/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_817/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_817/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_817/BiasAdd/ReadVariableOp*^while/lstm_cell_817/MatMul/ReadVariableOp,^while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_817_biasadd_readvariableop_resource5while_lstm_cell_817_biasadd_readvariableop_resource_0"n
4while_lstm_cell_817_matmul_1_readvariableop_resource6while_lstm_cell_817_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_817_matmul_readvariableop_resource4while_lstm_cell_817_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_817/BiasAdd/ReadVariableOp*while/lstm_cell_817/BiasAdd/ReadVariableOp2V
)while/lstm_cell_817/MatMul/ReadVariableOp)while/lstm_cell_817/MatMul/ReadVariableOp2Z
+while/lstm_cell_817/MatMul_1/ReadVariableOp+while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_818_while_body_4952312.
*lstm_818_while_lstm_818_while_loop_counter4
0lstm_818_while_lstm_818_while_maximum_iterations
lstm_818_while_placeholder 
lstm_818_while_placeholder_1 
lstm_818_while_placeholder_2 
lstm_818_while_placeholder_3-
)lstm_818_while_lstm_818_strided_slice_1_0i
elstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0:2(Q
?lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(L
>lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0:(
lstm_818_while_identity
lstm_818_while_identity_1
lstm_818_while_identity_2
lstm_818_while_identity_3
lstm_818_while_identity_4
lstm_818_while_identity_5+
'lstm_818_while_lstm_818_strided_slice_1g
clstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensorM
;lstm_818_while_lstm_cell_818_matmul_readvariableop_resource:2(O
=lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource:
(J
<lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource:(??3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp?2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp?4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp?
@lstm_818/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_818/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensor_0lstm_818_while_placeholderIlstm_818/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp=lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_818/while/lstm_cell_818/MatMulMatMul9lstm_818/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp?lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_818/while/lstm_cell_818/MatMul_1MatMullstm_818_while_placeholder_2<lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_818/while/lstm_cell_818/addAddV2-lstm_818/while/lstm_cell_818/MatMul:product:0/lstm_818/while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp>lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_818/while/lstm_cell_818/BiasAddBiasAdd$lstm_818/while/lstm_cell_818/add:z:0;lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_818/while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_818/while/lstm_cell_818/splitSplit5lstm_818/while/lstm_cell_818/split/split_dim:output:0-lstm_818/while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_818/while/lstm_cell_818/SigmoidSigmoid+lstm_818/while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_818/while/lstm_cell_818/Sigmoid_1Sigmoid+lstm_818/while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_818/while/lstm_cell_818/mulMul*lstm_818/while/lstm_cell_818/Sigmoid_1:y:0lstm_818_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_818/while/lstm_cell_818/ReluRelu+lstm_818/while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_818/while/lstm_cell_818/mul_1Mul(lstm_818/while/lstm_cell_818/Sigmoid:y:0/lstm_818/while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_818/while/lstm_cell_818/add_1AddV2$lstm_818/while/lstm_cell_818/mul:z:0&lstm_818/while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_818/while/lstm_cell_818/Sigmoid_2Sigmoid+lstm_818/while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_818/while/lstm_cell_818/Relu_1Relu&lstm_818/while/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_818/while/lstm_cell_818/mul_2Mul*lstm_818/while/lstm_cell_818/Sigmoid_2:y:01lstm_818/while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_818/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_818_while_placeholder_1lstm_818_while_placeholder&lstm_818/while/lstm_cell_818/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_818/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_818/while/addAddV2lstm_818_while_placeholderlstm_818/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_818/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_818/while/add_1AddV2*lstm_818_while_lstm_818_while_loop_counterlstm_818/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_818/while/IdentityIdentitylstm_818/while/add_1:z:0^lstm_818/while/NoOp*
T0*
_output_shapes
: ?
lstm_818/while/Identity_1Identity0lstm_818_while_lstm_818_while_maximum_iterations^lstm_818/while/NoOp*
T0*
_output_shapes
: t
lstm_818/while/Identity_2Identitylstm_818/while/add:z:0^lstm_818/while/NoOp*
T0*
_output_shapes
: ?
lstm_818/while/Identity_3IdentityClstm_818/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_818/while/NoOp*
T0*
_output_shapes
: ?
lstm_818/while/Identity_4Identity&lstm_818/while/lstm_cell_818/mul_2:z:0^lstm_818/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_818/while/Identity_5Identity&lstm_818/while/lstm_cell_818/add_1:z:0^lstm_818/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_818/while/NoOpNoOp4^lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp3^lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp5^lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_818_while_identity lstm_818/while/Identity:output:0"?
lstm_818_while_identity_1"lstm_818/while/Identity_1:output:0"?
lstm_818_while_identity_2"lstm_818/while/Identity_2:output:0"?
lstm_818_while_identity_3"lstm_818/while/Identity_3:output:0"?
lstm_818_while_identity_4"lstm_818/while/Identity_4:output:0"?
lstm_818_while_identity_5"lstm_818/while/Identity_5:output:0"T
'lstm_818_while_lstm_818_strided_slice_1)lstm_818_while_lstm_818_strided_slice_1_0"~
<lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource>lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0"?
=lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource?lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0"|
;lstm_818_while_lstm_cell_818_matmul_readvariableop_resource=lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0"?
clstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensorelstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp2h
2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp2l
4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952875

inputs?
,lstm_cell_816_matmul_readvariableop_resource:	?A
.lstm_cell_816_matmul_1_readvariableop_resource:	d?<
-lstm_cell_816_biasadd_readvariableop_resource:	?
identity??$lstm_cell_816/BiasAdd/ReadVariableOp?#lstm_cell_816/MatMul/ReadVariableOp?%lstm_cell_816/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_816/MatMul/ReadVariableOpReadVariableOp,lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_816/MatMulMatMulstrided_slice_2:output:0+lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_816/MatMul_1MatMulzeros:output:0-lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_816/addAddV2lstm_cell_816/MatMul:product:0 lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_816/BiasAddBiasAddlstm_cell_816/add:z:0,lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_816/splitSplit&lstm_cell_816/split/split_dim:output:0lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_816/SigmoidSigmoidlstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_1Sigmoidlstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_816/mulMullstm_cell_816/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_816/ReluRelulstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_1Mullstm_cell_816/Sigmoid:y:0 lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_816/add_1AddV2lstm_cell_816/mul:z:0lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_2Sigmoidlstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_816/Relu_1Relulstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_2Mullstm_cell_816/Sigmoid_2:y:0"lstm_cell_816/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_816_matmul_readvariableop_resource.lstm_cell_816_matmul_1_readvariableop_resource-lstm_cell_816_biasadd_readvariableop_resource*
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
while_body_4952791*
condR
while_cond_4952790*K
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
NoOpNoOp%^lstm_cell_816/BiasAdd/ReadVariableOp$^lstm_cell_816/MatMul/ReadVariableOp&^lstm_cell_816/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_816/BiasAdd/ReadVariableOp$lstm_cell_816/BiasAdd/ReadVariableOp2J
#lstm_cell_816/MatMul/ReadVariableOp#lstm_cell_816/MatMul/ReadVariableOp2N
%lstm_cell_816/MatMul_1/ReadVariableOp%lstm_cell_816/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_272_layer_call_and_return_conditional_losses_4954269

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
while_body_4952505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_816_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_816_matmul_readvariableop_resource:	?G
4while_lstm_cell_816_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_816_biasadd_readvariableop_resource:	???*while/lstm_cell_816/BiasAdd/ReadVariableOp?)while/lstm_cell_816/MatMul/ReadVariableOp?+while/lstm_cell_816/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_816/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_816/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_816/addAddV2$while/lstm_cell_816/MatMul:product:0&while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_816/BiasAddBiasAddwhile/lstm_cell_816/add:z:02while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_816/splitSplit,while/lstm_cell_816/split/split_dim:output:0$while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_816/SigmoidSigmoid"while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_1Sigmoid"while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mulMul!while/lstm_cell_816/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_816/ReluRelu"while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_1Mulwhile/lstm_cell_816/Sigmoid:y:0&while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/add_1AddV2while/lstm_cell_816/mul:z:0while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_2Sigmoid"while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_816/Relu_1Reluwhile/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_2Mul!while/lstm_cell_816/Sigmoid_2:y:0(while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_816/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_816/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_816/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_816/BiasAdd/ReadVariableOp*^while/lstm_cell_816/MatMul/ReadVariableOp,^while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_816_biasadd_readvariableop_resource5while_lstm_cell_816_biasadd_readvariableop_resource_0"n
4while_lstm_cell_816_matmul_1_readvariableop_resource6while_lstm_cell_816_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_816_matmul_readvariableop_resource4while_lstm_cell_816_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_816/BiasAdd/ReadVariableOp*while/lstm_cell_816/BiasAdd/ReadVariableOp2V
)while/lstm_cell_816/MatMul/ReadVariableOp)while/lstm_cell_816/MatMul/ReadVariableOp2Z
+while/lstm_cell_816/MatMul_1/ReadVariableOp+while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_817_layer_call_fn_4954401

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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949797o
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949301

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
?
?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951429
lstm_816_input#
lstm_816_4951402:	?#
lstm_816_4951404:	d?
lstm_816_4951406:	?#
lstm_817_4951409:	d?#
lstm_817_4951411:	2?
lstm_817_4951413:	?"
lstm_818_4951416:2("
lstm_818_4951418:
(
lstm_818_4951420:(#
dense_272_4951423:

dense_272_4951425:
identity??!dense_272/StatefulPartitionedCall? lstm_816/StatefulPartitionedCall? lstm_817/StatefulPartitionedCall? lstm_818/StatefulPartitionedCall?
 lstm_816/StatefulPartitionedCallStatefulPartitionedCalllstm_816_inputlstm_816_4951402lstm_816_4951404lstm_816_4951406*
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4950433?
 lstm_817/StatefulPartitionedCallStatefulPartitionedCall)lstm_816/StatefulPartitionedCall:output:0lstm_817_4951409lstm_817_4951411lstm_817_4951413*
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4950583?
 lstm_818/StatefulPartitionedCallStatefulPartitionedCall)lstm_817/StatefulPartitionedCall:output:0lstm_818_4951416lstm_818_4951418lstm_818_4951420*
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950733?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_818/StatefulPartitionedCall:output:0dense_272_4951423dense_272_4951425*
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
F__inference_dense_272_layer_call_and_return_conditional_losses_4950751y
IdentityIdentity*dense_272/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_272/StatefulPartitionedCall!^lstm_816/StatefulPartitionedCall!^lstm_817/StatefulPartitionedCall!^lstm_818/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2D
 lstm_816/StatefulPartitionedCall lstm_816/StatefulPartitionedCall2D
 lstm_817/StatefulPartitionedCall lstm_817/StatefulPartitionedCall2D
 lstm_818/StatefulPartitionedCall lstm_818/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_816_input
?
?
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4954367

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
while_cond_4950348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4950348___redundant_placeholder05
1while_while_cond_4950348___redundant_placeholder15
1while_while_cond_4950348___redundant_placeholder25
1while_while_cond_4950348___redundant_placeholder3
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

?
0__inference_sequential_272_layer_call_fn_4951548

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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951347o
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
?
?
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4949651

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
while_body_4953121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_817_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_817_matmul_readvariableop_resource:	d?G
4while_lstm_cell_817_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_817_biasadd_readvariableop_resource:	???*while/lstm_cell_817/BiasAdd/ReadVariableOp?)while/lstm_cell_817/MatMul/ReadVariableOp?+while/lstm_cell_817/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_817/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_817/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_817/addAddV2$while/lstm_cell_817/MatMul:product:0&while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_817/BiasAddBiasAddwhile/lstm_cell_817/add:z:02while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_817/splitSplit,while/lstm_cell_817/split/split_dim:output:0$while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_817/SigmoidSigmoid"while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_1Sigmoid"while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mulMul!while/lstm_cell_817/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_817/ReluRelu"while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_1Mulwhile/lstm_cell_817/Sigmoid:y:0&while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/add_1AddV2while/lstm_cell_817/mul:z:0while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_2Sigmoid"while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_817/Relu_1Reluwhile/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_2Mul!while/lstm_cell_817/Sigmoid_2:y:0(while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_817/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_817/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_817/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_817/BiasAdd/ReadVariableOp*^while/lstm_cell_817/MatMul/ReadVariableOp,^while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_817_biasadd_readvariableop_resource5while_lstm_cell_817_biasadd_readvariableop_resource_0"n
4while_lstm_cell_817_matmul_1_readvariableop_resource6while_lstm_cell_817_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_817_matmul_readvariableop_resource4while_lstm_cell_817_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_817/BiasAdd/ReadVariableOp*while/lstm_cell_817/BiasAdd/ReadVariableOp2V
)while/lstm_cell_817/MatMul/ReadVariableOp)while/lstm_cell_817/MatMul/ReadVariableOp2Z
+while/lstm_cell_817/MatMul_1/ReadVariableOp+while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4954335

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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953491

inputs?
,lstm_cell_817_matmul_readvariableop_resource:	d?A
.lstm_cell_817_matmul_1_readvariableop_resource:	2?<
-lstm_cell_817_biasadd_readvariableop_resource:	?
identity??$lstm_cell_817/BiasAdd/ReadVariableOp?#lstm_cell_817/MatMul/ReadVariableOp?%lstm_cell_817/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_817/MatMul/ReadVariableOpReadVariableOp,lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_817/MatMulMatMulstrided_slice_2:output:0+lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_817/MatMul_1MatMulzeros:output:0-lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_817/addAddV2lstm_cell_817/MatMul:product:0 lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_817/BiasAddBiasAddlstm_cell_817/add:z:0,lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_817/splitSplit&lstm_cell_817/split/split_dim:output:0lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_817/SigmoidSigmoidlstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_1Sigmoidlstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_817/mulMullstm_cell_817/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_817/ReluRelulstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_1Mullstm_cell_817/Sigmoid:y:0 lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_817/add_1AddV2lstm_cell_817/mul:z:0lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_2Sigmoidlstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_817/Relu_1Relulstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_2Mullstm_cell_817/Sigmoid_2:y:0"lstm_cell_817/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_817_matmul_readvariableop_resource.lstm_cell_817_matmul_1_readvariableop_resource-lstm_cell_817_biasadd_readvariableop_resource*
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
while_body_4953407*
condR
while_cond_4953406*K
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
NoOpNoOp%^lstm_cell_817/BiasAdd/ReadVariableOp$^lstm_cell_817/MatMul/ReadVariableOp&^lstm_cell_817/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_817/BiasAdd/ReadVariableOp$lstm_cell_817/BiasAdd/ReadVariableOp2J
#lstm_cell_817/MatMul/ReadVariableOp#lstm_cell_817/MatMul/ReadVariableOp2N
%lstm_cell_817/MatMul_1/ReadVariableOp%lstm_cell_817/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_817_while_body_4951746.
*lstm_817_while_lstm_817_while_loop_counter4
0lstm_817_while_lstm_817_while_maximum_iterations
lstm_817_while_placeholder 
lstm_817_while_placeholder_1 
lstm_817_while_placeholder_2 
lstm_817_while_placeholder_3-
)lstm_817_while_lstm_817_strided_slice_1_0i
elstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0:	d?R
?lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?M
>lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
lstm_817_while_identity
lstm_817_while_identity_1
lstm_817_while_identity_2
lstm_817_while_identity_3
lstm_817_while_identity_4
lstm_817_while_identity_5+
'lstm_817_while_lstm_817_strided_slice_1g
clstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensorN
;lstm_817_while_lstm_cell_817_matmul_readvariableop_resource:	d?P
=lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource:	2?K
<lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource:	???3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp?2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp?4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp?
@lstm_817/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_817/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensor_0lstm_817_while_placeholderIlstm_817/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp=lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_817/while/lstm_cell_817/MatMulMatMul9lstm_817/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp?lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_817/while/lstm_cell_817/MatMul_1MatMullstm_817_while_placeholder_2<lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_817/while/lstm_cell_817/addAddV2-lstm_817/while/lstm_cell_817/MatMul:product:0/lstm_817/while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp>lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_817/while/lstm_cell_817/BiasAddBiasAdd$lstm_817/while/lstm_cell_817/add:z:0;lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_817/while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_817/while/lstm_cell_817/splitSplit5lstm_817/while/lstm_cell_817/split/split_dim:output:0-lstm_817/while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_817/while/lstm_cell_817/SigmoidSigmoid+lstm_817/while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_817/while/lstm_cell_817/Sigmoid_1Sigmoid+lstm_817/while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_817/while/lstm_cell_817/mulMul*lstm_817/while/lstm_cell_817/Sigmoid_1:y:0lstm_817_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_817/while/lstm_cell_817/ReluRelu+lstm_817/while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_817/while/lstm_cell_817/mul_1Mul(lstm_817/while/lstm_cell_817/Sigmoid:y:0/lstm_817/while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_817/while/lstm_cell_817/add_1AddV2$lstm_817/while/lstm_cell_817/mul:z:0&lstm_817/while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_817/while/lstm_cell_817/Sigmoid_2Sigmoid+lstm_817/while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_817/while/lstm_cell_817/Relu_1Relu&lstm_817/while/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_817/while/lstm_cell_817/mul_2Mul*lstm_817/while/lstm_cell_817/Sigmoid_2:y:01lstm_817/while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_817/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_817_while_placeholder_1lstm_817_while_placeholder&lstm_817/while/lstm_cell_817/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_817/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_817/while/addAddV2lstm_817_while_placeholderlstm_817/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_817/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_817/while/add_1AddV2*lstm_817_while_lstm_817_while_loop_counterlstm_817/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_817/while/IdentityIdentitylstm_817/while/add_1:z:0^lstm_817/while/NoOp*
T0*
_output_shapes
: ?
lstm_817/while/Identity_1Identity0lstm_817_while_lstm_817_while_maximum_iterations^lstm_817/while/NoOp*
T0*
_output_shapes
: t
lstm_817/while/Identity_2Identitylstm_817/while/add:z:0^lstm_817/while/NoOp*
T0*
_output_shapes
: ?
lstm_817/while/Identity_3IdentityClstm_817/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_817/while/NoOp*
T0*
_output_shapes
: ?
lstm_817/while/Identity_4Identity&lstm_817/while/lstm_cell_817/mul_2:z:0^lstm_817/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_817/while/Identity_5Identity&lstm_817/while/lstm_cell_817/add_1:z:0^lstm_817/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_817/while/NoOpNoOp4^lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp3^lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp5^lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_817_while_identity lstm_817/while/Identity:output:0"?
lstm_817_while_identity_1"lstm_817/while/Identity_1:output:0"?
lstm_817_while_identity_2"lstm_817/while/Identity_2:output:0"?
lstm_817_while_identity_3"lstm_817/while/Identity_3:output:0"?
lstm_817_while_identity_4"lstm_817/while/Identity_4:output:0"?
lstm_817_while_identity_5"lstm_817/while/Identity_5:output:0"T
'lstm_817_while_lstm_817_strided_slice_1)lstm_817_while_lstm_817_strided_slice_1_0"~
<lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource>lstm_817_while_lstm_cell_817_biasadd_readvariableop_resource_0"?
=lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource?lstm_817_while_lstm_cell_817_matmul_1_readvariableop_resource_0"|
;lstm_817_while_lstm_cell_817_matmul_readvariableop_resource=lstm_817_while_lstm_cell_817_matmul_readvariableop_resource_0"?
clstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensorelstm_817_while_tensorarrayv2read_tensorlistgetitem_lstm_817_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp3lstm_817/while/lstm_cell_817/BiasAdd/ReadVariableOp2h
2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp2lstm_817/while/lstm_cell_817/MatMul/ReadVariableOp2l
4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp4lstm_817/while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4952791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_816_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_816_matmul_readvariableop_resource:	?G
4while_lstm_cell_816_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_816_biasadd_readvariableop_resource:	???*while/lstm_cell_816/BiasAdd/ReadVariableOp?)while/lstm_cell_816/MatMul/ReadVariableOp?+while/lstm_cell_816/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_816/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_816/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_816/addAddV2$while/lstm_cell_816/MatMul:product:0&while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_816/BiasAddBiasAddwhile/lstm_cell_816/add:z:02while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_816/splitSplit,while/lstm_cell_816/split/split_dim:output:0$while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_816/SigmoidSigmoid"while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_1Sigmoid"while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mulMul!while/lstm_cell_816/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_816/ReluRelu"while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_1Mulwhile/lstm_cell_816/Sigmoid:y:0&while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/add_1AddV2while/lstm_cell_816/mul:z:0while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_2Sigmoid"while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_816/Relu_1Reluwhile/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_2Mul!while/lstm_cell_816/Sigmoid_2:y:0(while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_816/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_816/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_816/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_816/BiasAdd/ReadVariableOp*^while/lstm_cell_816/MatMul/ReadVariableOp,^while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_816_biasadd_readvariableop_resource5while_lstm_cell_816_biasadd_readvariableop_resource_0"n
4while_lstm_cell_816_matmul_1_readvariableop_resource6while_lstm_cell_816_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_816_matmul_readvariableop_resource4while_lstm_cell_816_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_816/BiasAdd/ReadVariableOp*while/lstm_cell_816/BiasAdd/ReadVariableOp2V
)while/lstm_cell_816/MatMul/ReadVariableOp)while/lstm_cell_816/MatMul/ReadVariableOp2Z
+while/lstm_cell_816/MatMul_1/ReadVariableOp+while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4952934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_816_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_816_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_816_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_816_matmul_readvariableop_resource:	?G
4while_lstm_cell_816_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_816_biasadd_readvariableop_resource:	???*while/lstm_cell_816/BiasAdd/ReadVariableOp?)while/lstm_cell_816/MatMul/ReadVariableOp?+while/lstm_cell_816/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_816/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_816_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_816/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_816_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_816/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_816/addAddV2$while/lstm_cell_816/MatMul:product:0&while/lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_816_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_816/BiasAddBiasAddwhile/lstm_cell_816/add:z:02while/lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_816/splitSplit,while/lstm_cell_816/split/split_dim:output:0$while/lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_816/SigmoidSigmoid"while/lstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_1Sigmoid"while/lstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mulMul!while/lstm_cell_816/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_816/ReluRelu"while/lstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_1Mulwhile/lstm_cell_816/Sigmoid:y:0&while/lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/add_1AddV2while/lstm_cell_816/mul:z:0while/lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_816/Sigmoid_2Sigmoid"while/lstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_816/Relu_1Reluwhile/lstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_816/mul_2Mul!while/lstm_cell_816/Sigmoid_2:y:0(while/lstm_cell_816/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_816/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_816/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_816/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_816/BiasAdd/ReadVariableOp*^while/lstm_cell_816/MatMul/ReadVariableOp,^while/lstm_cell_816/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_816_biasadd_readvariableop_resource5while_lstm_cell_816_biasadd_readvariableop_resource_0"n
4while_lstm_cell_816_matmul_1_readvariableop_resource6while_lstm_cell_816_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_816_matmul_readvariableop_resource4while_lstm_cell_816_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_816/BiasAdd/ReadVariableOp*while/lstm_cell_816/BiasAdd/ReadVariableOp2V
)while/lstm_cell_816/MatMul/ReadVariableOp)while/lstm_cell_816/MatMul/ReadVariableOp2Z
+while/lstm_cell_816/MatMul_1/ReadVariableOp+while/lstm_cell_816/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_272_lstm_818_while_cond_4949143L
Hsequential_272_lstm_818_while_sequential_272_lstm_818_while_loop_counterR
Nsequential_272_lstm_818_while_sequential_272_lstm_818_while_maximum_iterations-
)sequential_272_lstm_818_while_placeholder/
+sequential_272_lstm_818_while_placeholder_1/
+sequential_272_lstm_818_while_placeholder_2/
+sequential_272_lstm_818_while_placeholder_3N
Jsequential_272_lstm_818_while_less_sequential_272_lstm_818_strided_slice_1e
asequential_272_lstm_818_while_sequential_272_lstm_818_while_cond_4949143___redundant_placeholder0e
asequential_272_lstm_818_while_sequential_272_lstm_818_while_cond_4949143___redundant_placeholder1e
asequential_272_lstm_818_while_sequential_272_lstm_818_while_cond_4949143___redundant_placeholder2e
asequential_272_lstm_818_while_sequential_272_lstm_818_while_cond_4949143___redundant_placeholder3*
&sequential_272_lstm_818_while_identity
?
"sequential_272/lstm_818/while/LessLess)sequential_272_lstm_818_while_placeholderJsequential_272_lstm_818_while_less_sequential_272_lstm_818_strided_slice_1*
T0*
_output_shapes
: {
&sequential_272/lstm_818/while/IdentityIdentity&sequential_272/lstm_818/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_272_lstm_818_while_identity/sequential_272/lstm_818/while/Identity:output:0*(
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
*__inference_lstm_816_layer_call_fn_4952424
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4949575|
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
lstm_818_while_cond_4952311.
*lstm_818_while_lstm_818_while_loop_counter4
0lstm_818_while_lstm_818_while_maximum_iterations
lstm_818_while_placeholder 
lstm_818_while_placeholder_1 
lstm_818_while_placeholder_2 
lstm_818_while_placeholder_30
,lstm_818_while_less_lstm_818_strided_slice_1G
Clstm_818_while_lstm_818_while_cond_4952311___redundant_placeholder0G
Clstm_818_while_lstm_818_while_cond_4952311___redundant_placeholder1G
Clstm_818_while_lstm_818_while_cond_4952311___redundant_placeholder2G
Clstm_818_while_lstm_818_while_cond_4952311___redundant_placeholder3
lstm_818_while_identity
?
lstm_818/while/LessLesslstm_818_while_placeholder,lstm_818_while_less_lstm_818_strided_slice_1*
T0*
_output_shapes
: ]
lstm_818/while/IdentityIdentitylstm_818/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_818_while_identity lstm_818/while/Identity:output:0*(
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4954531

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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4954465

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
while_cond_4952790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4952790___redundant_placeholder05
1while_while_cond_4952790___redundant_placeholder15
1while_while_cond_4952790___redundant_placeholder25
1while_while_cond_4952790___redundant_placeholder3
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
?
?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4950758

inputs#
lstm_816_4950434:	?#
lstm_816_4950436:	d?
lstm_816_4950438:	?#
lstm_817_4950584:	d?#
lstm_817_4950586:	2?
lstm_817_4950588:	?"
lstm_818_4950734:2("
lstm_818_4950736:
(
lstm_818_4950738:(#
dense_272_4950752:

dense_272_4950754:
identity??!dense_272/StatefulPartitionedCall? lstm_816/StatefulPartitionedCall? lstm_817/StatefulPartitionedCall? lstm_818/StatefulPartitionedCall?
 lstm_816/StatefulPartitionedCallStatefulPartitionedCallinputslstm_816_4950434lstm_816_4950436lstm_816_4950438*
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4950433?
 lstm_817/StatefulPartitionedCallStatefulPartitionedCall)lstm_816/StatefulPartitionedCall:output:0lstm_817_4950584lstm_817_4950586lstm_817_4950588*
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4950583?
 lstm_818/StatefulPartitionedCallStatefulPartitionedCall)lstm_817/StatefulPartitionedCall:output:0lstm_818_4950734lstm_818_4950736lstm_818_4950738*
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950733?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_818/StatefulPartitionedCall:output:0dense_272_4950752dense_272_4950754*
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
F__inference_dense_272_layer_call_and_return_conditional_losses_4950751y
IdentityIdentity*dense_272/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_272/StatefulPartitionedCall!^lstm_816/StatefulPartitionedCall!^lstm_817/StatefulPartitionedCall!^lstm_818/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2D
 lstm_816/StatefulPartitionedCall lstm_816/StatefulPartitionedCall2D
 lstm_817/StatefulPartitionedCall lstm_817/StatefulPartitionedCall2D
 lstm_818/StatefulPartitionedCall lstm_818/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4951194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4951194___redundant_placeholder05
1while_while_cond_4951194___redundant_placeholder15
1while_while_cond_4951194___redundant_placeholder25
1while_while_cond_4951194___redundant_placeholder3
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
*sequential_272_lstm_817_while_cond_4949004L
Hsequential_272_lstm_817_while_sequential_272_lstm_817_while_loop_counterR
Nsequential_272_lstm_817_while_sequential_272_lstm_817_while_maximum_iterations-
)sequential_272_lstm_817_while_placeholder/
+sequential_272_lstm_817_while_placeholder_1/
+sequential_272_lstm_817_while_placeholder_2/
+sequential_272_lstm_817_while_placeholder_3N
Jsequential_272_lstm_817_while_less_sequential_272_lstm_817_strided_slice_1e
asequential_272_lstm_817_while_sequential_272_lstm_817_while_cond_4949004___redundant_placeholder0e
asequential_272_lstm_817_while_sequential_272_lstm_817_while_cond_4949004___redundant_placeholder1e
asequential_272_lstm_817_while_sequential_272_lstm_817_while_cond_4949004___redundant_placeholder2e
asequential_272_lstm_817_while_sequential_272_lstm_817_while_cond_4949004___redundant_placeholder3*
&sequential_272_lstm_817_while_identity
?
"sequential_272/lstm_817/while/LessLess)sequential_272_lstm_817_while_placeholderJsequential_272_lstm_817_while_less_sequential_272_lstm_817_strided_slice_1*
T0*
_output_shapes
: {
&sequential_272/lstm_817/while/IdentityIdentity&sequential_272/lstm_817/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_272_lstm_817_while_identity/sequential_272/lstm_817/while/Identity:output:0*(
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
while_body_4950206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_818_4950230_0:2(/
while_lstm_cell_818_4950232_0:
(+
while_lstm_cell_818_4950234_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_818_4950230:2(-
while_lstm_cell_818_4950232:
()
while_lstm_cell_818_4950234:(??+while/lstm_cell_818/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_818/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_818_4950230_0while_lstm_cell_818_4950232_0while_lstm_cell_818_4950234_0*
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4950147?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_818/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_818/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_818/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_818/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_818_4950230while_lstm_cell_818_4950230_0"<
while_lstm_cell_818_4950232while_lstm_cell_818_4950232_0"<
while_lstm_cell_818_4950234while_lstm_cell_818_4950234_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_818/StatefulPartitionedCall+while/lstm_cell_818/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4954433

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
*__inference_lstm_816_layer_call_fn_4952435

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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4950433s
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
while_cond_4953549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4953549___redundant_placeholder05
1while_while_cond_4953549___redundant_placeholder15
1while_while_cond_4953549___redundant_placeholder25
1while_while_cond_4953549___redundant_placeholder3
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4954250

inputs>
,lstm_cell_818_matmul_readvariableop_resource:2(@
.lstm_cell_818_matmul_1_readvariableop_resource:
(;
-lstm_cell_818_biasadd_readvariableop_resource:(
identity??$lstm_cell_818/BiasAdd/ReadVariableOp?#lstm_cell_818/MatMul/ReadVariableOp?%lstm_cell_818/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_818/MatMul/ReadVariableOpReadVariableOp,lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_818/MatMulMatMulstrided_slice_2:output:0+lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_818/MatMul_1MatMulzeros:output:0-lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_818/addAddV2lstm_cell_818/MatMul:product:0 lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_818/BiasAddBiasAddlstm_cell_818/add:z:0,lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_818/splitSplit&lstm_cell_818/split/split_dim:output:0lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_818/SigmoidSigmoidlstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_1Sigmoidlstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_818/mulMullstm_cell_818/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_818/ReluRelulstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_1Mullstm_cell_818/Sigmoid:y:0 lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_818/add_1AddV2lstm_cell_818/mul:z:0lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_2Sigmoidlstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_818/Relu_1Relulstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_2Mullstm_cell_818/Sigmoid_2:y:0"lstm_cell_818/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_818_matmul_readvariableop_resource.lstm_cell_818_matmul_1_readvariableop_resource-lstm_cell_818_biasadd_readvariableop_resource*
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
while_body_4954166*
condR
while_cond_4954165*K
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
NoOpNoOp%^lstm_cell_818/BiasAdd/ReadVariableOp$^lstm_cell_818/MatMul/ReadVariableOp&^lstm_cell_818/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_818/BiasAdd/ReadVariableOp$lstm_cell_818/BiasAdd/ReadVariableOp2J
#lstm_cell_818/MatMul/ReadVariableOp#lstm_cell_818/MatMul/ReadVariableOp2N
%lstm_cell_818/MatMul_1/ReadVariableOp%lstm_cell_818/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_816_layer_call_and_return_conditional_losses_4953018

inputs?
,lstm_cell_816_matmul_readvariableop_resource:	?A
.lstm_cell_816_matmul_1_readvariableop_resource:	d?<
-lstm_cell_816_biasadd_readvariableop_resource:	?
identity??$lstm_cell_816/BiasAdd/ReadVariableOp?#lstm_cell_816/MatMul/ReadVariableOp?%lstm_cell_816/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_816/MatMul/ReadVariableOpReadVariableOp,lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_816/MatMulMatMulstrided_slice_2:output:0+lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_816/MatMul_1MatMulzeros:output:0-lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_816/addAddV2lstm_cell_816/MatMul:product:0 lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_816/BiasAddBiasAddlstm_cell_816/add:z:0,lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_816/splitSplit&lstm_cell_816/split/split_dim:output:0lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_816/SigmoidSigmoidlstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_1Sigmoidlstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_816/mulMullstm_cell_816/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_816/ReluRelulstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_1Mullstm_cell_816/Sigmoid:y:0 lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_816/add_1AddV2lstm_cell_816/mul:z:0lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_2Sigmoidlstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_816/Relu_1Relulstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_2Mullstm_cell_816/Sigmoid_2:y:0"lstm_cell_816/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_816_matmul_readvariableop_resource.lstm_cell_816_matmul_1_readvariableop_resource-lstm_cell_816_biasadd_readvariableop_resource*
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
while_body_4952934*
condR
while_cond_4952933*K
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
NoOpNoOp%^lstm_cell_816/BiasAdd/ReadVariableOp$^lstm_cell_816/MatMul/ReadVariableOp&^lstm_cell_816/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_816/BiasAdd/ReadVariableOp$lstm_cell_816/BiasAdd/ReadVariableOp2J
#lstm_cell_816/MatMul/ReadVariableOp#lstm_cell_816/MatMul/ReadVariableOp2N
%lstm_cell_816/MatMul_1/ReadVariableOp%lstm_cell_816/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4953264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_817_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_817_matmul_readvariableop_resource:	d?G
4while_lstm_cell_817_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_817_biasadd_readvariableop_resource:	???*while/lstm_cell_817/BiasAdd/ReadVariableOp?)while/lstm_cell_817/MatMul/ReadVariableOp?+while/lstm_cell_817/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_817/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_817/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_817/addAddV2$while/lstm_cell_817/MatMul:product:0&while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_817/BiasAddBiasAddwhile/lstm_cell_817/add:z:02while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_817/splitSplit,while/lstm_cell_817/split/split_dim:output:0$while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_817/SigmoidSigmoid"while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_1Sigmoid"while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mulMul!while/lstm_cell_817/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_817/ReluRelu"while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_1Mulwhile/lstm_cell_817/Sigmoid:y:0&while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/add_1AddV2while/lstm_cell_817/mul:z:0while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_2Sigmoid"while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_817/Relu_1Reluwhile/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_2Mul!while/lstm_cell_817/Sigmoid_2:y:0(while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_817/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_817/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_817/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_817/BiasAdd/ReadVariableOp*^while/lstm_cell_817/MatMul/ReadVariableOp,^while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_817_biasadd_readvariableop_resource5while_lstm_cell_817_biasadd_readvariableop_resource_0"n
4while_lstm_cell_817_matmul_1_readvariableop_resource6while_lstm_cell_817_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_817_matmul_readvariableop_resource4while_lstm_cell_817_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_817/BiasAdd/ReadVariableOp*while/lstm_cell_817/BiasAdd/ReadVariableOp2V
)while/lstm_cell_817/MatMul/ReadVariableOp)while/lstm_cell_817/MatMul/ReadVariableOp2Z
+while/lstm_cell_817/MatMul_1/ReadVariableOp+while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_818_layer_call_fn_4953667

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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950733o
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
while_body_4949506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_816_4949530_0:	?0
while_lstm_cell_816_4949532_0:	d?,
while_lstm_cell_816_4949534_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_816_4949530:	?.
while_lstm_cell_816_4949532:	d?*
while_lstm_cell_816_4949534:	???+while/lstm_cell_816/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_816/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_816_4949530_0while_lstm_cell_816_4949532_0while_lstm_cell_816_4949534_0*
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949447?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_816/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_816/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_816/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_816/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_816_4949530while_lstm_cell_816_4949530_0"<
while_lstm_cell_816_4949532while_lstm_cell_816_4949532_0"<
while_lstm_cell_816_4949534while_lstm_cell_816_4949534_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_816/StatefulPartitionedCall+while/lstm_cell_816/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4949315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_816_4949339_0:	?0
while_lstm_cell_816_4949341_0:	d?,
while_lstm_cell_816_4949343_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_816_4949339:	?.
while_lstm_cell_816_4949341:	d?*
while_lstm_cell_816_4949343:	???+while/lstm_cell_816/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_816/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_816_4949339_0while_lstm_cell_816_4949341_0while_lstm_cell_816_4949343_0*
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4949301?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_816/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_816/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_816/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_816/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_816_4949339while_lstm_cell_816_4949339_0"<
while_lstm_cell_816_4949341while_lstm_cell_816_4949341_0"<
while_lstm_cell_816_4949343while_lstm_cell_816_4949343_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_816/StatefulPartitionedCall+while/lstm_cell_816/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4951114

inputs?
,lstm_cell_817_matmul_readvariableop_resource:	d?A
.lstm_cell_817_matmul_1_readvariableop_resource:	2?<
-lstm_cell_817_biasadd_readvariableop_resource:	?
identity??$lstm_cell_817/BiasAdd/ReadVariableOp?#lstm_cell_817/MatMul/ReadVariableOp?%lstm_cell_817/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_817/MatMul/ReadVariableOpReadVariableOp,lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_817/MatMulMatMulstrided_slice_2:output:0+lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_817/MatMul_1MatMulzeros:output:0-lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_817/addAddV2lstm_cell_817/MatMul:product:0 lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_817/BiasAddBiasAddlstm_cell_817/add:z:0,lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_817/splitSplit&lstm_cell_817/split/split_dim:output:0lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_817/SigmoidSigmoidlstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_1Sigmoidlstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_817/mulMullstm_cell_817/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_817/ReluRelulstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_1Mullstm_cell_817/Sigmoid:y:0 lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_817/add_1AddV2lstm_cell_817/mul:z:0lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_2Sigmoidlstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_817/Relu_1Relulstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_2Mullstm_cell_817/Sigmoid_2:y:0"lstm_cell_817/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_817_matmul_readvariableop_resource.lstm_cell_817_matmul_1_readvariableop_resource-lstm_cell_817_biasadd_readvariableop_resource*
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
while_body_4951030*
condR
while_cond_4951029*K
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
NoOpNoOp%^lstm_cell_817/BiasAdd/ReadVariableOp$^lstm_cell_817/MatMul/ReadVariableOp&^lstm_cell_817/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_817/BiasAdd/ReadVariableOp$lstm_cell_817/BiasAdd/ReadVariableOp2J
#lstm_cell_817/MatMul/ReadVariableOp#lstm_cell_817/MatMul/ReadVariableOp2N
%lstm_cell_817/MatMul_1/ReadVariableOp%lstm_cell_817/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_818_layer_call_fn_4953656
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950275o
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4951279

inputs?
,lstm_cell_816_matmul_readvariableop_resource:	?A
.lstm_cell_816_matmul_1_readvariableop_resource:	d?<
-lstm_cell_816_biasadd_readvariableop_resource:	?
identity??$lstm_cell_816/BiasAdd/ReadVariableOp?#lstm_cell_816/MatMul/ReadVariableOp?%lstm_cell_816/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_816/MatMul/ReadVariableOpReadVariableOp,lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_816/MatMulMatMulstrided_slice_2:output:0+lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_816/MatMul_1MatMulzeros:output:0-lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_816/addAddV2lstm_cell_816/MatMul:product:0 lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_816/BiasAddBiasAddlstm_cell_816/add:z:0,lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_816/splitSplit&lstm_cell_816/split/split_dim:output:0lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_816/SigmoidSigmoidlstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_1Sigmoidlstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_816/mulMullstm_cell_816/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_816/ReluRelulstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_1Mullstm_cell_816/Sigmoid:y:0 lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_816/add_1AddV2lstm_cell_816/mul:z:0lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_2Sigmoidlstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_816/Relu_1Relulstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_2Mullstm_cell_816/Sigmoid_2:y:0"lstm_cell_816/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_816_matmul_readvariableop_resource.lstm_cell_816_matmul_1_readvariableop_resource-lstm_cell_816_biasadd_readvariableop_resource*
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
while_body_4951195*
condR
while_cond_4951194*K
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
NoOpNoOp%^lstm_cell_816/BiasAdd/ReadVariableOp$^lstm_cell_816/MatMul/ReadVariableOp&^lstm_cell_816/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_816/BiasAdd/ReadVariableOp$lstm_cell_816/BiasAdd/ReadVariableOp2J
#lstm_cell_816/MatMul/ReadVariableOp#lstm_cell_816/MatMul/ReadVariableOp2N
%lstm_cell_816/MatMul_1/ReadVariableOp%lstm_cell_816/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_816_layer_call_fn_4952446

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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4951279s
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
while_cond_4953120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4953120___redundant_placeholder05
1while_while_cond_4953120___redundant_placeholder15
1while_while_cond_4953120___redundant_placeholder25
1while_while_cond_4953120___redundant_placeholder3
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952732
inputs_0?
,lstm_cell_816_matmul_readvariableop_resource:	?A
.lstm_cell_816_matmul_1_readvariableop_resource:	d?<
-lstm_cell_816_biasadd_readvariableop_resource:	?
identity??$lstm_cell_816/BiasAdd/ReadVariableOp?#lstm_cell_816/MatMul/ReadVariableOp?%lstm_cell_816/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_816/MatMul/ReadVariableOpReadVariableOp,lstm_cell_816_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_816/MatMulMatMulstrided_slice_2:output:0+lstm_cell_816/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_816/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_816_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_816/MatMul_1MatMulzeros:output:0-lstm_cell_816/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_816/addAddV2lstm_cell_816/MatMul:product:0 lstm_cell_816/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_816/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_816_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_816/BiasAddBiasAddlstm_cell_816/add:z:0,lstm_cell_816/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_816/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_816/splitSplit&lstm_cell_816/split/split_dim:output:0lstm_cell_816/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_816/SigmoidSigmoidlstm_cell_816/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_1Sigmoidlstm_cell_816/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_816/mulMullstm_cell_816/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_816/ReluRelulstm_cell_816/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_1Mullstm_cell_816/Sigmoid:y:0 lstm_cell_816/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_816/add_1AddV2lstm_cell_816/mul:z:0lstm_cell_816/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_816/Sigmoid_2Sigmoidlstm_cell_816/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_816/Relu_1Relulstm_cell_816/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_816/mul_2Mullstm_cell_816/Sigmoid_2:y:0"lstm_cell_816/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_816_matmul_readvariableop_resource.lstm_cell_816_matmul_1_readvariableop_resource-lstm_cell_816_biasadd_readvariableop_resource*
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
while_body_4952648*
condR
while_cond_4952647*K
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
NoOpNoOp%^lstm_cell_816/BiasAdd/ReadVariableOp$^lstm_cell_816/MatMul/ReadVariableOp&^lstm_cell_816/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_816/BiasAdd/ReadVariableOp$lstm_cell_816/BiasAdd/ReadVariableOp2J
#lstm_cell_816/MatMul/ReadVariableOp#lstm_cell_816/MatMul/ReadVariableOp2N
%lstm_cell_816/MatMul_1/ReadVariableOp%lstm_cell_816/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_272_layer_call_fn_4951521

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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4950758o
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
while_body_4954023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_818_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_818_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_818_matmul_readvariableop_resource:2(F
4while_lstm_cell_818_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_818_biasadd_readvariableop_resource:(??*while/lstm_cell_818/BiasAdd/ReadVariableOp?)while/lstm_cell_818/MatMul/ReadVariableOp?+while/lstm_cell_818/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_818/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_818/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_818/addAddV2$while/lstm_cell_818/MatMul:product:0&while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_818/BiasAddBiasAddwhile/lstm_cell_818/add:z:02while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_818/splitSplit,while/lstm_cell_818/split/split_dim:output:0$while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_818/SigmoidSigmoid"while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_1Sigmoid"while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mulMul!while/lstm_cell_818/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_818/ReluRelu"while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_1Mulwhile/lstm_cell_818/Sigmoid:y:0&while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/add_1AddV2while/lstm_cell_818/mul:z:0while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_818/Sigmoid_2Sigmoid"while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_818/Relu_1Reluwhile/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_818/mul_2Mul!while/lstm_cell_818/Sigmoid_2:y:0(while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_818/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_818/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_818/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_818/BiasAdd/ReadVariableOp*^while/lstm_cell_818/MatMul/ReadVariableOp,^while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_818_biasadd_readvariableop_resource5while_lstm_cell_818_biasadd_readvariableop_resource_0"n
4while_lstm_cell_818_matmul_1_readvariableop_resource6while_lstm_cell_818_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_818_matmul_readvariableop_resource4while_lstm_cell_818_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_818/BiasAdd/ReadVariableOp*while/lstm_cell_818/BiasAdd/ReadVariableOp2V
)while/lstm_cell_818/MatMul/ReadVariableOp)while/lstm_cell_818/MatMul/ReadVariableOp2Z
+while/lstm_cell_818/MatMul_1/ReadVariableOp+while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4953550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_817_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_817_matmul_readvariableop_resource:	d?G
4while_lstm_cell_817_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_817_biasadd_readvariableop_resource:	???*while/lstm_cell_817/BiasAdd/ReadVariableOp?)while/lstm_cell_817/MatMul/ReadVariableOp?+while/lstm_cell_817/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_817/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_817/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_817/addAddV2$while/lstm_cell_817/MatMul:product:0&while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_817/BiasAddBiasAddwhile/lstm_cell_817/add:z:02while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_817/splitSplit,while/lstm_cell_817/split/split_dim:output:0$while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_817/SigmoidSigmoid"while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_1Sigmoid"while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mulMul!while/lstm_cell_817/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_817/ReluRelu"while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_1Mulwhile/lstm_cell_817/Sigmoid:y:0&while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/add_1AddV2while/lstm_cell_817/mul:z:0while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_2Sigmoid"while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_817/Relu_1Reluwhile/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_2Mul!while/lstm_cell_817/Sigmoid_2:y:0(while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_817/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_817/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_817/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_817/BiasAdd/ReadVariableOp*^while/lstm_cell_817/MatMul/ReadVariableOp,^while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_817_biasadd_readvariableop_resource5while_lstm_cell_817_biasadd_readvariableop_resource_0"n
4while_lstm_cell_817_matmul_1_readvariableop_resource6while_lstm_cell_817_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_817_matmul_readvariableop_resource4while_lstm_cell_817_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_817/BiasAdd/ReadVariableOp*while/lstm_cell_817/BiasAdd/ReadVariableOp2V
)while/lstm_cell_817/MatMul/ReadVariableOp)while/lstm_cell_817/MatMul/ReadVariableOp2Z
+while/lstm_cell_817/MatMul_1/ReadVariableOp+while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_272_layer_call_and_return_conditional_losses_4950751

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
while_cond_4954165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4954165___redundant_placeholder05
1while_while_cond_4954165___redundant_placeholder15
1while_while_cond_4954165___redundant_placeholder25
1while_while_cond_4954165___redundant_placeholder3
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
while_cond_4954022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4954022___redundant_placeholder05
1while_while_cond_4954022___redundant_placeholder15
1while_while_cond_4954022___redundant_placeholder25
1while_while_cond_4954022___redundant_placeholder3
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

lstm_818_while_body_4951885.
*lstm_818_while_lstm_818_while_loop_counter4
0lstm_818_while_lstm_818_while_maximum_iterations
lstm_818_while_placeholder 
lstm_818_while_placeholder_1 
lstm_818_while_placeholder_2 
lstm_818_while_placeholder_3-
)lstm_818_while_lstm_818_strided_slice_1_0i
elstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0:2(Q
?lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0:
(L
>lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0:(
lstm_818_while_identity
lstm_818_while_identity_1
lstm_818_while_identity_2
lstm_818_while_identity_3
lstm_818_while_identity_4
lstm_818_while_identity_5+
'lstm_818_while_lstm_818_strided_slice_1g
clstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensorM
;lstm_818_while_lstm_cell_818_matmul_readvariableop_resource:2(O
=lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource:
(J
<lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource:(??3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp?2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp?4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp?
@lstm_818/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_818/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensor_0lstm_818_while_placeholderIlstm_818/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOpReadVariableOp=lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_818/while/lstm_cell_818/MatMulMatMul9lstm_818/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp?lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_818/while/lstm_cell_818/MatMul_1MatMullstm_818_while_placeholder_2<lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_818/while/lstm_cell_818/addAddV2-lstm_818/while/lstm_cell_818/MatMul:product:0/lstm_818/while/lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp>lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_818/while/lstm_cell_818/BiasAddBiasAdd$lstm_818/while/lstm_cell_818/add:z:0;lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_818/while/lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_818/while/lstm_cell_818/splitSplit5lstm_818/while/lstm_cell_818/split/split_dim:output:0-lstm_818/while/lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_818/while/lstm_cell_818/SigmoidSigmoid+lstm_818/while/lstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_818/while/lstm_cell_818/Sigmoid_1Sigmoid+lstm_818/while/lstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_818/while/lstm_cell_818/mulMul*lstm_818/while/lstm_cell_818/Sigmoid_1:y:0lstm_818_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_818/while/lstm_cell_818/ReluRelu+lstm_818/while/lstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_818/while/lstm_cell_818/mul_1Mul(lstm_818/while/lstm_cell_818/Sigmoid:y:0/lstm_818/while/lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_818/while/lstm_cell_818/add_1AddV2$lstm_818/while/lstm_cell_818/mul:z:0&lstm_818/while/lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_818/while/lstm_cell_818/Sigmoid_2Sigmoid+lstm_818/while/lstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_818/while/lstm_cell_818/Relu_1Relu&lstm_818/while/lstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_818/while/lstm_cell_818/mul_2Mul*lstm_818/while/lstm_cell_818/Sigmoid_2:y:01lstm_818/while/lstm_cell_818/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_818/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_818_while_placeholder_1lstm_818_while_placeholder&lstm_818/while/lstm_cell_818/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_818/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_818/while/addAddV2lstm_818_while_placeholderlstm_818/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_818/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_818/while/add_1AddV2*lstm_818_while_lstm_818_while_loop_counterlstm_818/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_818/while/IdentityIdentitylstm_818/while/add_1:z:0^lstm_818/while/NoOp*
T0*
_output_shapes
: ?
lstm_818/while/Identity_1Identity0lstm_818_while_lstm_818_while_maximum_iterations^lstm_818/while/NoOp*
T0*
_output_shapes
: t
lstm_818/while/Identity_2Identitylstm_818/while/add:z:0^lstm_818/while/NoOp*
T0*
_output_shapes
: ?
lstm_818/while/Identity_3IdentityClstm_818/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_818/while/NoOp*
T0*
_output_shapes
: ?
lstm_818/while/Identity_4Identity&lstm_818/while/lstm_cell_818/mul_2:z:0^lstm_818/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_818/while/Identity_5Identity&lstm_818/while/lstm_cell_818/add_1:z:0^lstm_818/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_818/while/NoOpNoOp4^lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp3^lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp5^lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_818_while_identity lstm_818/while/Identity:output:0"?
lstm_818_while_identity_1"lstm_818/while/Identity_1:output:0"?
lstm_818_while_identity_2"lstm_818/while/Identity_2:output:0"?
lstm_818_while_identity_3"lstm_818/while/Identity_3:output:0"?
lstm_818_while_identity_4"lstm_818/while/Identity_4:output:0"?
lstm_818_while_identity_5"lstm_818/while/Identity_5:output:0"T
'lstm_818_while_lstm_818_strided_slice_1)lstm_818_while_lstm_818_strided_slice_1_0"~
<lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource>lstm_818_while_lstm_cell_818_biasadd_readvariableop_resource_0"?
=lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource?lstm_818_while_lstm_cell_818_matmul_1_readvariableop_resource_0"|
;lstm_818_while_lstm_cell_818_matmul_readvariableop_resource=lstm_818_while_lstm_cell_818_matmul_readvariableop_resource_0"?
clstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensorelstm_818_while_tensorarrayv2read_tensorlistgetitem_lstm_818_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp3lstm_818/while/lstm_cell_818/BiasAdd/ReadVariableOp2h
2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp2lstm_818/while/lstm_cell_818/MatMul/ReadVariableOp2l
4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp4lstm_818/while/lstm_cell_818/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4953407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_817_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_817_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_817_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_817_matmul_readvariableop_resource:	d?G
4while_lstm_cell_817_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_817_biasadd_readvariableop_resource:	???*while/lstm_cell_817/BiasAdd/ReadVariableOp?)while/lstm_cell_817/MatMul/ReadVariableOp?+while/lstm_cell_817/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_817/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_817_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_817/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_817_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_817/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_817/addAddV2$while/lstm_cell_817/MatMul:product:0&while/lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_817_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_817/BiasAddBiasAddwhile/lstm_cell_817/add:z:02while/lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_817/splitSplit,while/lstm_cell_817/split/split_dim:output:0$while/lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_817/SigmoidSigmoid"while/lstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_1Sigmoid"while/lstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mulMul!while/lstm_cell_817/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_817/ReluRelu"while/lstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_1Mulwhile/lstm_cell_817/Sigmoid:y:0&while/lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/add_1AddV2while/lstm_cell_817/mul:z:0while/lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_817/Sigmoid_2Sigmoid"while/lstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_817/Relu_1Reluwhile/lstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_817/mul_2Mul!while/lstm_cell_817/Sigmoid_2:y:0(while/lstm_cell_817/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_817/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_817/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_817/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_817/BiasAdd/ReadVariableOp*^while/lstm_cell_817/MatMul/ReadVariableOp,^while/lstm_cell_817/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_817_biasadd_readvariableop_resource5while_lstm_cell_817_biasadd_readvariableop_resource_0"n
4while_lstm_cell_817_matmul_1_readvariableop_resource6while_lstm_cell_817_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_817_matmul_readvariableop_resource4while_lstm_cell_817_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_817/BiasAdd/ReadVariableOp*while/lstm_cell_817/BiasAdd/ReadVariableOp2V
)while/lstm_cell_817/MatMul/ReadVariableOp)while/lstm_cell_817/MatMul/ReadVariableOp2Z
+while/lstm_cell_817/MatMul_1/ReadVariableOp+while/lstm_cell_817/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953634

inputs?
,lstm_cell_817_matmul_readvariableop_resource:	d?A
.lstm_cell_817_matmul_1_readvariableop_resource:	2?<
-lstm_cell_817_biasadd_readvariableop_resource:	?
identity??$lstm_cell_817/BiasAdd/ReadVariableOp?#lstm_cell_817/MatMul/ReadVariableOp?%lstm_cell_817/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_817/MatMul/ReadVariableOpReadVariableOp,lstm_cell_817_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_817/MatMulMatMulstrided_slice_2:output:0+lstm_cell_817/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_817/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_817_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_817/MatMul_1MatMulzeros:output:0-lstm_cell_817/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_817/addAddV2lstm_cell_817/MatMul:product:0 lstm_cell_817/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_817/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_817_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_817/BiasAddBiasAddlstm_cell_817/add:z:0,lstm_cell_817/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_817/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_817/splitSplit&lstm_cell_817/split/split_dim:output:0lstm_cell_817/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_817/SigmoidSigmoidlstm_cell_817/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_1Sigmoidlstm_cell_817/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_817/mulMullstm_cell_817/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_817/ReluRelulstm_cell_817/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_1Mullstm_cell_817/Sigmoid:y:0 lstm_cell_817/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_817/add_1AddV2lstm_cell_817/mul:z:0lstm_cell_817/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_817/Sigmoid_2Sigmoidlstm_cell_817/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_817/Relu_1Relulstm_cell_817/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_817/mul_2Mullstm_cell_817/Sigmoid_2:y:0"lstm_cell_817/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_817_matmul_readvariableop_resource.lstm_cell_817_matmul_1_readvariableop_resource-lstm_cell_817_biasadd_readvariableop_resource*
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
while_body_4953550*
condR
while_cond_4953549*K
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
NoOpNoOp%^lstm_cell_817/BiasAdd/ReadVariableOp$^lstm_cell_817/MatMul/ReadVariableOp&^lstm_cell_817/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_817/BiasAdd/ReadVariableOp$lstm_cell_817/BiasAdd/ReadVariableOp2J
#lstm_cell_817/MatMul/ReadVariableOp#lstm_cell_817/MatMul/ReadVariableOp2N
%lstm_cell_817/MatMul_1/ReadVariableOp%lstm_cell_817/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_818_layer_call_and_return_conditional_losses_4950949

inputs>
,lstm_cell_818_matmul_readvariableop_resource:2(@
.lstm_cell_818_matmul_1_readvariableop_resource:
(;
-lstm_cell_818_biasadd_readvariableop_resource:(
identity??$lstm_cell_818/BiasAdd/ReadVariableOp?#lstm_cell_818/MatMul/ReadVariableOp?%lstm_cell_818/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_818/MatMul/ReadVariableOpReadVariableOp,lstm_cell_818_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_818/MatMulMatMulstrided_slice_2:output:0+lstm_cell_818/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_818/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_818_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_818/MatMul_1MatMulzeros:output:0-lstm_cell_818/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_818/addAddV2lstm_cell_818/MatMul:product:0 lstm_cell_818/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_818/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_818_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_818/BiasAddBiasAddlstm_cell_818/add:z:0,lstm_cell_818/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_818/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_818/splitSplit&lstm_cell_818/split/split_dim:output:0lstm_cell_818/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_818/SigmoidSigmoidlstm_cell_818/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_1Sigmoidlstm_cell_818/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_818/mulMullstm_cell_818/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_818/ReluRelulstm_cell_818/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_1Mullstm_cell_818/Sigmoid:y:0 lstm_cell_818/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_818/add_1AddV2lstm_cell_818/mul:z:0lstm_cell_818/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_818/Sigmoid_2Sigmoidlstm_cell_818/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_818/Relu_1Relulstm_cell_818/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_818/mul_2Mullstm_cell_818/Sigmoid_2:y:0"lstm_cell_818/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_818_matmul_readvariableop_resource.lstm_cell_818_matmul_1_readvariableop_resource-lstm_cell_818_biasadd_readvariableop_resource*
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
while_body_4950865*
condR
while_cond_4950864*K
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
NoOpNoOp%^lstm_cell_818/BiasAdd/ReadVariableOp$^lstm_cell_818/MatMul/ReadVariableOp&^lstm_cell_818/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_818/BiasAdd/ReadVariableOp$lstm_cell_818/BiasAdd/ReadVariableOp2J
#lstm_cell_818/MatMul/ReadVariableOp#lstm_cell_818/MatMul/ReadVariableOp2N
%lstm_cell_818/MatMul_1/ReadVariableOp%lstm_cell_818/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
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
lstm_816_input;
 serving_default_lstm_816_input:0?????????=
	dense_2720
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
2dense_272/kernel
:2dense_272/bias
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
0:.	?2lstm_816/lstm_cell_816/kernel
::8	d?2'lstm_816/lstm_cell_816/recurrent_kernel
*:(?2lstm_816/lstm_cell_816/bias
0:.	d?2lstm_817/lstm_cell_817/kernel
::8	2?2'lstm_817/lstm_cell_817/recurrent_kernel
*:(?2lstm_817/lstm_cell_817/bias
/:-2(2lstm_818/lstm_cell_818/kernel
9:7
(2'lstm_818/lstm_cell_818/recurrent_kernel
):'(2lstm_818/lstm_cell_818/bias
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
2Adam/dense_272/kernel/m
!:2Adam/dense_272/bias/m
5:3	?2$Adam/lstm_816/lstm_cell_816/kernel/m
?:=	d?2.Adam/lstm_816/lstm_cell_816/recurrent_kernel/m
/:-?2"Adam/lstm_816/lstm_cell_816/bias/m
5:3	d?2$Adam/lstm_817/lstm_cell_817/kernel/m
?:=	2?2.Adam/lstm_817/lstm_cell_817/recurrent_kernel/m
/:-?2"Adam/lstm_817/lstm_cell_817/bias/m
4:22(2$Adam/lstm_818/lstm_cell_818/kernel/m
>:<
(2.Adam/lstm_818/lstm_cell_818/recurrent_kernel/m
.:,(2"Adam/lstm_818/lstm_cell_818/bias/m
':%
2Adam/dense_272/kernel/v
!:2Adam/dense_272/bias/v
5:3	?2$Adam/lstm_816/lstm_cell_816/kernel/v
?:=	d?2.Adam/lstm_816/lstm_cell_816/recurrent_kernel/v
/:-?2"Adam/lstm_816/lstm_cell_816/bias/v
5:3	d?2$Adam/lstm_817/lstm_cell_817/kernel/v
?:=	2?2.Adam/lstm_817/lstm_cell_817/recurrent_kernel/v
/:-?2"Adam/lstm_817/lstm_cell_817/bias/v
4:22(2$Adam/lstm_818/lstm_cell_818/kernel/v
>:<
(2.Adam/lstm_818/lstm_cell_818/recurrent_kernel/v
.:,(2"Adam/lstm_818/lstm_cell_818/bias/v
?2?
0__inference_sequential_272_layer_call_fn_4950783
0__inference_sequential_272_layer_call_fn_4951521
0__inference_sequential_272_layer_call_fn_4951548
0__inference_sequential_272_layer_call_fn_4951399?
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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951975
K__inference_sequential_272_layer_call_and_return_conditional_losses_4952402
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951429
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951459?
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
"__inference__wrapped_model_4949234lstm_816_input"?
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
*__inference_lstm_816_layer_call_fn_4952413
*__inference_lstm_816_layer_call_fn_4952424
*__inference_lstm_816_layer_call_fn_4952435
*__inference_lstm_816_layer_call_fn_4952446?
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952589
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952732
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952875
E__inference_lstm_816_layer_call_and_return_conditional_losses_4953018?
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
*__inference_lstm_817_layer_call_fn_4953029
*__inference_lstm_817_layer_call_fn_4953040
*__inference_lstm_817_layer_call_fn_4953051
*__inference_lstm_817_layer_call_fn_4953062?
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953205
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953348
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953491
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953634?
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
*__inference_lstm_818_layer_call_fn_4953645
*__inference_lstm_818_layer_call_fn_4953656
*__inference_lstm_818_layer_call_fn_4953667
*__inference_lstm_818_layer_call_fn_4953678?
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4953821
E__inference_lstm_818_layer_call_and_return_conditional_losses_4953964
E__inference_lstm_818_layer_call_and_return_conditional_losses_4954107
E__inference_lstm_818_layer_call_and_return_conditional_losses_4954250?
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
+__inference_dense_272_layer_call_fn_4954259?
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
F__inference_dense_272_layer_call_and_return_conditional_losses_4954269?
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
%__inference_signature_wrapper_4951494lstm_816_input"?
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
/__inference_lstm_cell_816_layer_call_fn_4954286
/__inference_lstm_cell_816_layer_call_fn_4954303?
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4954335
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4954367?
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
/__inference_lstm_cell_817_layer_call_fn_4954384
/__inference_lstm_cell_817_layer_call_fn_4954401?
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4954433
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4954465?
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
/__inference_lstm_cell_818_layer_call_fn_4954482
/__inference_lstm_cell_818_layer_call_fn_4954499?
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4954531
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4954563?
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
"__inference__wrapped_model_4949234?()*+,-./0;?8
1?.
,?)
lstm_816_input?????????
? "5?2
0
	dense_272#? 
	dense_272??????????
F__inference_dense_272_layer_call_and_return_conditional_losses_4954269\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_272_layer_call_fn_4954259O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952589?()*O?L
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952732?()*O?L
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4952875q()*??<
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
E__inference_lstm_816_layer_call_and_return_conditional_losses_4953018q()*??<
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
*__inference_lstm_816_layer_call_fn_4952413}()*O?L
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
*__inference_lstm_816_layer_call_fn_4952424}()*O?L
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
*__inference_lstm_816_layer_call_fn_4952435d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_816_layer_call_fn_4952446d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953205?+,-O?L
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953348?+,-O?L
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953491q+,-??<
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
E__inference_lstm_817_layer_call_and_return_conditional_losses_4953634q+,-??<
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
*__inference_lstm_817_layer_call_fn_4953029}+,-O?L
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
*__inference_lstm_817_layer_call_fn_4953040}+,-O?L
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
*__inference_lstm_817_layer_call_fn_4953051d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_817_layer_call_fn_4953062d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_818_layer_call_and_return_conditional_losses_4953821}./0O?L
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4953964}./0O?L
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4954107m./0??<
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
E__inference_lstm_818_layer_call_and_return_conditional_losses_4954250m./0??<
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
*__inference_lstm_818_layer_call_fn_4953645p./0O?L
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
*__inference_lstm_818_layer_call_fn_4953656p./0O?L
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
*__inference_lstm_818_layer_call_fn_4953667`./0??<
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
*__inference_lstm_818_layer_call_fn_4953678`./0??<
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4954335?()*??}
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
J__inference_lstm_cell_816_layer_call_and_return_conditional_losses_4954367?()*??}
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
/__inference_lstm_cell_816_layer_call_fn_4954286?()*??}
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
/__inference_lstm_cell_816_layer_call_fn_4954303?()*??}
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4954433?+,-??}
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
J__inference_lstm_cell_817_layer_call_and_return_conditional_losses_4954465?+,-??}
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
/__inference_lstm_cell_817_layer_call_fn_4954384?+,-??}
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
/__inference_lstm_cell_817_layer_call_fn_4954401?+,-??}
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4954531?./0??}
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
J__inference_lstm_cell_818_layer_call_and_return_conditional_losses_4954563?./0??}
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
/__inference_lstm_cell_818_layer_call_fn_4954482?./0??}
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
/__inference_lstm_cell_818_layer_call_fn_4954499?./0??}
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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951429y()*+,-./0C?@
9?6
,?)
lstm_816_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951459y()*+,-./0C?@
9?6
,?)
lstm_816_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_272_layer_call_and_return_conditional_losses_4951975q()*+,-./0;?8
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
K__inference_sequential_272_layer_call_and_return_conditional_losses_4952402q()*+,-./0;?8
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
0__inference_sequential_272_layer_call_fn_4950783l()*+,-./0C?@
9?6
,?)
lstm_816_input?????????
p 

 
? "???????????
0__inference_sequential_272_layer_call_fn_4951399l()*+,-./0C?@
9?6
,?)
lstm_816_input?????????
p

 
? "???????????
0__inference_sequential_272_layer_call_fn_4951521d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_272_layer_call_fn_4951548d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4951494?()*+,-./0M?J
? 
C?@
>
lstm_816_input,?)
lstm_816_input?????????"5?2
0
	dense_272#? 
	dense_272?????????