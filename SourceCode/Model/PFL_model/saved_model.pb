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
dense_251/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_251/kernel
u
$dense_251/kernel/Read/ReadVariableOpReadVariableOpdense_251/kernel*
_output_shapes

:
*
dtype0
t
dense_251/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_251/bias
m
"dense_251/bias/Read/ReadVariableOpReadVariableOpdense_251/bias*
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
lstm_753/lstm_cell_753/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_753/lstm_cell_753/kernel
?
1lstm_753/lstm_cell_753/kernel/Read/ReadVariableOpReadVariableOplstm_753/lstm_cell_753/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_753/lstm_cell_753/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_753/lstm_cell_753/recurrent_kernel
?
;lstm_753/lstm_cell_753/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_753/lstm_cell_753/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_753/lstm_cell_753/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_753/lstm_cell_753/bias
?
/lstm_753/lstm_cell_753/bias/Read/ReadVariableOpReadVariableOplstm_753/lstm_cell_753/bias*
_output_shapes	
:?*
dtype0
?
lstm_754/lstm_cell_754/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_754/lstm_cell_754/kernel
?
1lstm_754/lstm_cell_754/kernel/Read/ReadVariableOpReadVariableOplstm_754/lstm_cell_754/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_754/lstm_cell_754/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_754/lstm_cell_754/recurrent_kernel
?
;lstm_754/lstm_cell_754/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_754/lstm_cell_754/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_754/lstm_cell_754/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_754/lstm_cell_754/bias
?
/lstm_754/lstm_cell_754/bias/Read/ReadVariableOpReadVariableOplstm_754/lstm_cell_754/bias*
_output_shapes	
:?*
dtype0
?
lstm_755/lstm_cell_755/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_755/lstm_cell_755/kernel
?
1lstm_755/lstm_cell_755/kernel/Read/ReadVariableOpReadVariableOplstm_755/lstm_cell_755/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_755/lstm_cell_755/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_755/lstm_cell_755/recurrent_kernel
?
;lstm_755/lstm_cell_755/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_755/lstm_cell_755/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_755/lstm_cell_755/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_755/lstm_cell_755/bias
?
/lstm_755/lstm_cell_755/bias/Read/ReadVariableOpReadVariableOplstm_755/lstm_cell_755/bias*
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
Adam/dense_251/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_251/kernel/m
?
+Adam/dense_251/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_251/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_251/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_251/bias/m
{
)Adam/dense_251/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_251/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_753/lstm_cell_753/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_753/lstm_cell_753/kernel/m
?
8Adam/lstm_753/lstm_cell_753/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_753/lstm_cell_753/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_753/lstm_cell_753/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_753/lstm_cell_753/recurrent_kernel/m
?
BAdam/lstm_753/lstm_cell_753/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_753/lstm_cell_753/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_753/lstm_cell_753/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_753/lstm_cell_753/bias/m
?
6Adam/lstm_753/lstm_cell_753/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_753/lstm_cell_753/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_754/lstm_cell_754/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_754/lstm_cell_754/kernel/m
?
8Adam/lstm_754/lstm_cell_754/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_754/lstm_cell_754/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_754/lstm_cell_754/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_754/lstm_cell_754/recurrent_kernel/m
?
BAdam/lstm_754/lstm_cell_754/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_754/lstm_cell_754/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_754/lstm_cell_754/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_754/lstm_cell_754/bias/m
?
6Adam/lstm_754/lstm_cell_754/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_754/lstm_cell_754/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_755/lstm_cell_755/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_755/lstm_cell_755/kernel/m
?
8Adam/lstm_755/lstm_cell_755/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_755/lstm_cell_755/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_755/lstm_cell_755/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_755/lstm_cell_755/recurrent_kernel/m
?
BAdam/lstm_755/lstm_cell_755/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_755/lstm_cell_755/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_755/lstm_cell_755/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_755/lstm_cell_755/bias/m
?
6Adam/lstm_755/lstm_cell_755/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_755/lstm_cell_755/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_251/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_251/kernel/v
?
+Adam/dense_251/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_251/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_251/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_251/bias/v
{
)Adam/dense_251/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_251/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_753/lstm_cell_753/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_753/lstm_cell_753/kernel/v
?
8Adam/lstm_753/lstm_cell_753/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_753/lstm_cell_753/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_753/lstm_cell_753/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_753/lstm_cell_753/recurrent_kernel/v
?
BAdam/lstm_753/lstm_cell_753/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_753/lstm_cell_753/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_753/lstm_cell_753/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_753/lstm_cell_753/bias/v
?
6Adam/lstm_753/lstm_cell_753/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_753/lstm_cell_753/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_754/lstm_cell_754/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_754/lstm_cell_754/kernel/v
?
8Adam/lstm_754/lstm_cell_754/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_754/lstm_cell_754/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_754/lstm_cell_754/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_754/lstm_cell_754/recurrent_kernel/v
?
BAdam/lstm_754/lstm_cell_754/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_754/lstm_cell_754/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_754/lstm_cell_754/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_754/lstm_cell_754/bias/v
?
6Adam/lstm_754/lstm_cell_754/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_754/lstm_cell_754/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_755/lstm_cell_755/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_755/lstm_cell_755/kernel/v
?
8Adam/lstm_755/lstm_cell_755/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_755/lstm_cell_755/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_755/lstm_cell_755/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_755/lstm_cell_755/recurrent_kernel/v
?
BAdam/lstm_755/lstm_cell_755/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_755/lstm_cell_755/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_755/lstm_cell_755/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_755/lstm_cell_755/bias/v
?
6Adam/lstm_755/lstm_cell_755/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_755/lstm_cell_755/bias/v*
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
VARIABLE_VALUEdense_251/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_251/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_753/lstm_cell_753/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_753/lstm_cell_753/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_753/lstm_cell_753/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_754/lstm_cell_754/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_754/lstm_cell_754/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_754/lstm_cell_754/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_755/lstm_cell_755/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_755/lstm_cell_755/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_755/lstm_cell_755/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_251/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_251/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_753/lstm_cell_753/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_753/lstm_cell_753/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_753/lstm_cell_753/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_754/lstm_cell_754/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_754/lstm_cell_754/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_754/lstm_cell_754/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_755/lstm_cell_755/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_755/lstm_cell_755/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_755/lstm_cell_755/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_251/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_251/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_753/lstm_cell_753/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_753/lstm_cell_753/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_753/lstm_cell_753/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_754/lstm_cell_754/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_754/lstm_cell_754/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_754/lstm_cell_754/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_755/lstm_cell_755/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_755/lstm_cell_755/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_755/lstm_cell_755/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_753_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_753_inputlstm_753/lstm_cell_753/kernel'lstm_753/lstm_cell_753/recurrent_kernellstm_753/lstm_cell_753/biaslstm_754/lstm_cell_754/kernel'lstm_754/lstm_cell_754/recurrent_kernellstm_754/lstm_cell_754/biaslstm_755/lstm_cell_755/kernel'lstm_755/lstm_cell_755/recurrent_kernellstm_755/lstm_cell_755/biasdense_251/kerneldense_251/bias*
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
%__inference_signature_wrapper_4642287
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_251/kernel/Read/ReadVariableOp"dense_251/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_753/lstm_cell_753/kernel/Read/ReadVariableOp;lstm_753/lstm_cell_753/recurrent_kernel/Read/ReadVariableOp/lstm_753/lstm_cell_753/bias/Read/ReadVariableOp1lstm_754/lstm_cell_754/kernel/Read/ReadVariableOp;lstm_754/lstm_cell_754/recurrent_kernel/Read/ReadVariableOp/lstm_754/lstm_cell_754/bias/Read/ReadVariableOp1lstm_755/lstm_cell_755/kernel/Read/ReadVariableOp;lstm_755/lstm_cell_755/recurrent_kernel/Read/ReadVariableOp/lstm_755/lstm_cell_755/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_251/kernel/m/Read/ReadVariableOp)Adam/dense_251/bias/m/Read/ReadVariableOp8Adam/lstm_753/lstm_cell_753/kernel/m/Read/ReadVariableOpBAdam/lstm_753/lstm_cell_753/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_753/lstm_cell_753/bias/m/Read/ReadVariableOp8Adam/lstm_754/lstm_cell_754/kernel/m/Read/ReadVariableOpBAdam/lstm_754/lstm_cell_754/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_754/lstm_cell_754/bias/m/Read/ReadVariableOp8Adam/lstm_755/lstm_cell_755/kernel/m/Read/ReadVariableOpBAdam/lstm_755/lstm_cell_755/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_755/lstm_cell_755/bias/m/Read/ReadVariableOp+Adam/dense_251/kernel/v/Read/ReadVariableOp)Adam/dense_251/bias/v/Read/ReadVariableOp8Adam/lstm_753/lstm_cell_753/kernel/v/Read/ReadVariableOpBAdam/lstm_753/lstm_cell_753/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_753/lstm_cell_753/bias/v/Read/ReadVariableOp8Adam/lstm_754/lstm_cell_754/kernel/v/Read/ReadVariableOpBAdam/lstm_754/lstm_cell_754/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_754/lstm_cell_754/bias/v/Read/ReadVariableOp8Adam/lstm_755/lstm_cell_755/kernel/v/Read/ReadVariableOpBAdam/lstm_755/lstm_cell_755/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_755/lstm_cell_755/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4645499
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_251/kerneldense_251/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_753/lstm_cell_753/kernel'lstm_753/lstm_cell_753/recurrent_kernellstm_753/lstm_cell_753/biaslstm_754/lstm_cell_754/kernel'lstm_754/lstm_cell_754/recurrent_kernellstm_754/lstm_cell_754/biaslstm_755/lstm_cell_755/kernel'lstm_755/lstm_cell_755/recurrent_kernellstm_755/lstm_cell_755/biastotalcountAdam/dense_251/kernel/mAdam/dense_251/bias/m$Adam/lstm_753/lstm_cell_753/kernel/m.Adam/lstm_753/lstm_cell_753/recurrent_kernel/m"Adam/lstm_753/lstm_cell_753/bias/m$Adam/lstm_754/lstm_cell_754/kernel/m.Adam/lstm_754/lstm_cell_754/recurrent_kernel/m"Adam/lstm_754/lstm_cell_754/bias/m$Adam/lstm_755/lstm_cell_755/kernel/m.Adam/lstm_755/lstm_cell_755/recurrent_kernel/m"Adam/lstm_755/lstm_cell_755/bias/mAdam/dense_251/kernel/vAdam/dense_251/bias/v$Adam/lstm_753/lstm_cell_753/kernel/v.Adam/lstm_753/lstm_cell_753/recurrent_kernel/v"Adam/lstm_753/lstm_cell_753/bias/v$Adam/lstm_754/lstm_cell_754/kernel/v.Adam/lstm_754/lstm_cell_754/recurrent_kernel/v"Adam/lstm_754/lstm_cell_754/bias/v$Adam/lstm_755/lstm_cell_755/kernel/v.Adam/lstm_755/lstm_cell_755/recurrent_kernel/v"Adam/lstm_755/lstm_cell_755/bias/v*4
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
#__inference__traced_restore_4645629??+
?8
?
while_body_4644959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4645128

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
*__inference_lstm_754_layer_call_fn_4643822
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4640527|
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
?
*sequential_251_lstm_754_while_cond_4639797L
Hsequential_251_lstm_754_while_sequential_251_lstm_754_while_loop_counterR
Nsequential_251_lstm_754_while_sequential_251_lstm_754_while_maximum_iterations-
)sequential_251_lstm_754_while_placeholder/
+sequential_251_lstm_754_while_placeholder_1/
+sequential_251_lstm_754_while_placeholder_2/
+sequential_251_lstm_754_while_placeholder_3N
Jsequential_251_lstm_754_while_less_sequential_251_lstm_754_strided_slice_1e
asequential_251_lstm_754_while_sequential_251_lstm_754_while_cond_4639797___redundant_placeholder0e
asequential_251_lstm_754_while_sequential_251_lstm_754_while_cond_4639797___redundant_placeholder1e
asequential_251_lstm_754_while_sequential_251_lstm_754_while_cond_4639797___redundant_placeholder2e
asequential_251_lstm_754_while_sequential_251_lstm_754_while_cond_4639797___redundant_placeholder3*
&sequential_251_lstm_754_while_identity
?
"sequential_251/lstm_754/while/LessLess)sequential_251_lstm_754_while_placeholderJsequential_251_lstm_754_while_less_sequential_251_lstm_754_strided_slice_1*
T0*
_output_shapes
: {
&sequential_251/lstm_754/while/IdentityIdentity&sequential_251/lstm_754/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_251_lstm_754_while_identity/sequential_251/lstm_754/while/Identity:output:0*(
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643525
inputs_0?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4643441*
condR
while_cond_4643440*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4644342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644342___redundant_placeholder05
1while_while_cond_4644342___redundant_placeholder15
1while_while_cond_4644342___redundant_placeholder25
1while_while_cond_4644342___redundant_placeholder3
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

lstm_754_while_body_4642539.
*lstm_754_while_lstm_754_while_loop_counter4
0lstm_754_while_lstm_754_while_maximum_iterations
lstm_754_while_placeholder 
lstm_754_while_placeholder_1 
lstm_754_while_placeholder_2 
lstm_754_while_placeholder_3-
)lstm_754_while_lstm_754_strided_slice_1_0i
elstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0:	d?R
?lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?M
>lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
lstm_754_while_identity
lstm_754_while_identity_1
lstm_754_while_identity_2
lstm_754_while_identity_3
lstm_754_while_identity_4
lstm_754_while_identity_5+
'lstm_754_while_lstm_754_strided_slice_1g
clstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensorN
;lstm_754_while_lstm_cell_754_matmul_readvariableop_resource:	d?P
=lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource:	2?K
<lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource:	???3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp?2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp?4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp?
@lstm_754/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_754/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensor_0lstm_754_while_placeholderIlstm_754/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp=lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_754/while/lstm_cell_754/MatMulMatMul9lstm_754/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp?lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_754/while/lstm_cell_754/MatMul_1MatMullstm_754_while_placeholder_2<lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_754/while/lstm_cell_754/addAddV2-lstm_754/while/lstm_cell_754/MatMul:product:0/lstm_754/while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp>lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_754/while/lstm_cell_754/BiasAddBiasAdd$lstm_754/while/lstm_cell_754/add:z:0;lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_754/while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_754/while/lstm_cell_754/splitSplit5lstm_754/while/lstm_cell_754/split/split_dim:output:0-lstm_754/while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_754/while/lstm_cell_754/SigmoidSigmoid+lstm_754/while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_754/while/lstm_cell_754/Sigmoid_1Sigmoid+lstm_754/while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_754/while/lstm_cell_754/mulMul*lstm_754/while/lstm_cell_754/Sigmoid_1:y:0lstm_754_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_754/while/lstm_cell_754/ReluRelu+lstm_754/while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_754/while/lstm_cell_754/mul_1Mul(lstm_754/while/lstm_cell_754/Sigmoid:y:0/lstm_754/while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_754/while/lstm_cell_754/add_1AddV2$lstm_754/while/lstm_cell_754/mul:z:0&lstm_754/while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_754/while/lstm_cell_754/Sigmoid_2Sigmoid+lstm_754/while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_754/while/lstm_cell_754/Relu_1Relu&lstm_754/while/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_754/while/lstm_cell_754/mul_2Mul*lstm_754/while/lstm_cell_754/Sigmoid_2:y:01lstm_754/while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_754/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_754_while_placeholder_1lstm_754_while_placeholder&lstm_754/while/lstm_cell_754/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_754/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_754/while/addAddV2lstm_754_while_placeholderlstm_754/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_754/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_754/while/add_1AddV2*lstm_754_while_lstm_754_while_loop_counterlstm_754/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_754/while/IdentityIdentitylstm_754/while/add_1:z:0^lstm_754/while/NoOp*
T0*
_output_shapes
: ?
lstm_754/while/Identity_1Identity0lstm_754_while_lstm_754_while_maximum_iterations^lstm_754/while/NoOp*
T0*
_output_shapes
: t
lstm_754/while/Identity_2Identitylstm_754/while/add:z:0^lstm_754/while/NoOp*
T0*
_output_shapes
: ?
lstm_754/while/Identity_3IdentityClstm_754/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_754/while/NoOp*
T0*
_output_shapes
: ?
lstm_754/while/Identity_4Identity&lstm_754/while/lstm_cell_754/mul_2:z:0^lstm_754/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_754/while/Identity_5Identity&lstm_754/while/lstm_cell_754/add_1:z:0^lstm_754/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_754/while/NoOpNoOp4^lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp3^lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp5^lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_754_while_identity lstm_754/while/Identity:output:0"?
lstm_754_while_identity_1"lstm_754/while/Identity_1:output:0"?
lstm_754_while_identity_2"lstm_754/while/Identity_2:output:0"?
lstm_754_while_identity_3"lstm_754/while/Identity_3:output:0"?
lstm_754_while_identity_4"lstm_754/while/Identity_4:output:0"?
lstm_754_while_identity_5"lstm_754/while/Identity_5:output:0"T
'lstm_754_while_lstm_754_strided_slice_1)lstm_754_while_lstm_754_strided_slice_1_0"~
<lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource>lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0"?
=lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource?lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0"|
;lstm_754_while_lstm_cell_754_matmul_readvariableop_resource=lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0"?
clstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensorelstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp2h
2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp2l
4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_753_while_cond_4642399.
*lstm_753_while_lstm_753_while_loop_counter4
0lstm_753_while_lstm_753_while_maximum_iterations
lstm_753_while_placeholder 
lstm_753_while_placeholder_1 
lstm_753_while_placeholder_2 
lstm_753_while_placeholder_30
,lstm_753_while_less_lstm_753_strided_slice_1G
Clstm_753_while_lstm_753_while_cond_4642399___redundant_placeholder0G
Clstm_753_while_lstm_753_while_cond_4642399___redundant_placeholder1G
Clstm_753_while_lstm_753_while_cond_4642399___redundant_placeholder2G
Clstm_753_while_lstm_753_while_cond_4642399___redundant_placeholder3
lstm_753_while_identity
?
lstm_753/while/LessLesslstm_753_while_placeholder,lstm_753_while_less_lstm_753_strided_slice_1*
T0*
_output_shapes
: ]
lstm_753/while/IdentityIdentitylstm_753/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_753_while_identity lstm_753/while/Identity:output:0*(
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
while_cond_4641141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641141___redundant_placeholder05
1while_while_cond_4641141___redundant_placeholder15
1while_while_cond_4641141___redundant_placeholder25
1while_while_cond_4641141___redundant_placeholder3
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644900

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4644816*
condR
while_cond_4644815*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_753_layer_call_and_return_conditional_losses_4642072

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4641988*
condR
while_cond_4641987*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_753_while_cond_4642826.
*lstm_753_while_lstm_753_while_loop_counter4
0lstm_753_while_lstm_753_while_maximum_iterations
lstm_753_while_placeholder 
lstm_753_while_placeholder_1 
lstm_753_while_placeholder_2 
lstm_753_while_placeholder_30
,lstm_753_while_less_lstm_753_strided_slice_1G
Clstm_753_while_lstm_753_while_cond_4642826___redundant_placeholder0G
Clstm_753_while_lstm_753_while_cond_4642826___redundant_placeholder1G
Clstm_753_while_lstm_753_while_cond_4642826___redundant_placeholder2G
Clstm_753_while_lstm_753_while_cond_4642826___redundant_placeholder3
lstm_753_while_identity
?
lstm_753/while/LessLesslstm_753_while_placeholder,lstm_753_while_less_lstm_753_strided_slice_1*
T0*
_output_shapes
: ]
lstm_753/while/IdentityIdentitylstm_753/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_753_while_identity lstm_753/while/Identity:output:0*(
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
*__inference_lstm_753_layer_call_fn_4643206
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4640177|
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644284

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4644200*
condR
while_cond_4644199*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4640998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640998___redundant_placeholder05
1while_while_cond_4640998___redundant_placeholder15
1while_while_cond_4640998___redundant_placeholder25
1while_while_cond_4640998___redundant_placeholder3
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
*sequential_251_lstm_755_while_cond_4639936L
Hsequential_251_lstm_755_while_sequential_251_lstm_755_while_loop_counterR
Nsequential_251_lstm_755_while_sequential_251_lstm_755_while_maximum_iterations-
)sequential_251_lstm_755_while_placeholder/
+sequential_251_lstm_755_while_placeholder_1/
+sequential_251_lstm_755_while_placeholder_2/
+sequential_251_lstm_755_while_placeholder_3N
Jsequential_251_lstm_755_while_less_sequential_251_lstm_755_strided_slice_1e
asequential_251_lstm_755_while_sequential_251_lstm_755_while_cond_4639936___redundant_placeholder0e
asequential_251_lstm_755_while_sequential_251_lstm_755_while_cond_4639936___redundant_placeholder1e
asequential_251_lstm_755_while_sequential_251_lstm_755_while_cond_4639936___redundant_placeholder2e
asequential_251_lstm_755_while_sequential_251_lstm_755_while_cond_4639936___redundant_placeholder3*
&sequential_251_lstm_755_while_identity
?
"sequential_251/lstm_755/while/LessLess)sequential_251_lstm_755_while_placeholderJsequential_251_lstm_755_while_less_sequential_251_lstm_755_strided_slice_1*
T0*
_output_shapes
: {
&sequential_251/lstm_755/while/IdentityIdentity&sequential_251/lstm_755/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_251_lstm_755_while_identity/sequential_251/lstm_755/while/Identity:output:0*(
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
while_body_4643298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640094

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
while_cond_4644958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644958___redundant_placeholder05
1while_while_cond_4644958___redundant_placeholder15
1while_while_cond_4644958___redundant_placeholder25
1while_while_cond_4644958___redundant_placeholder3
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
while_body_4640649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_754_4640673_0:	d?0
while_lstm_cell_754_4640675_0:	2?,
while_lstm_cell_754_4640677_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_754_4640673:	d?.
while_lstm_cell_754_4640675:	2?*
while_lstm_cell_754_4640677:	???+while/lstm_cell_754/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_754_4640673_0while_lstm_cell_754_4640675_0while_lstm_cell_754_4640677_0*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640590?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_754/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_754/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_754/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_754/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_754_4640673while_lstm_cell_754_4640673_0"<
while_lstm_cell_754_4640675while_lstm_cell_754_4640675_0"<
while_lstm_cell_754_4640677while_lstm_cell_754_4640677_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_754/StatefulPartitionedCall+while/lstm_cell_754/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4643583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643583___redundant_placeholder05
1while_while_cond_4643583___redundant_placeholder15
1while_while_cond_4643583___redundant_placeholder25
1while_while_cond_4643583___redundant_placeholder3
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
*__inference_lstm_754_layer_call_fn_4643844

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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641376s
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
while_body_4643441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_251_layer_call_fn_4642314

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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4641551o
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
while_body_4643914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643811

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4643727*
condR
while_cond_4643726*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_251_layer_call_fn_4645052

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
F__inference_dense_251_layer_call_and_return_conditional_losses_4641544o
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
?
?
*__inference_lstm_755_layer_call_fn_4644449
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641068o
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640444

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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4643195

inputsH
5lstm_753_lstm_cell_753_matmul_readvariableop_resource:	?J
7lstm_753_lstm_cell_753_matmul_1_readvariableop_resource:	d?E
6lstm_753_lstm_cell_753_biasadd_readvariableop_resource:	?H
5lstm_754_lstm_cell_754_matmul_readvariableop_resource:	d?J
7lstm_754_lstm_cell_754_matmul_1_readvariableop_resource:	2?E
6lstm_754_lstm_cell_754_biasadd_readvariableop_resource:	?G
5lstm_755_lstm_cell_755_matmul_readvariableop_resource:2(I
7lstm_755_lstm_cell_755_matmul_1_readvariableop_resource:
(D
6lstm_755_lstm_cell_755_biasadd_readvariableop_resource:(:
(dense_251_matmul_readvariableop_resource:
7
)dense_251_biasadd_readvariableop_resource:
identity?? dense_251/BiasAdd/ReadVariableOp?dense_251/MatMul/ReadVariableOp?-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp?,lstm_753/lstm_cell_753/MatMul/ReadVariableOp?.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp?lstm_753/while?-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp?,lstm_754/lstm_cell_754/MatMul/ReadVariableOp?.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp?lstm_754/while?-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp?,lstm_755/lstm_cell_755/MatMul/ReadVariableOp?.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp?lstm_755/whileD
lstm_753/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_753/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_753/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_753/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_sliceStridedSlicelstm_753/Shape:output:0%lstm_753/strided_slice/stack:output:0'lstm_753/strided_slice/stack_1:output:0'lstm_753/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_753/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_753/zeros/packedPacklstm_753/strided_slice:output:0 lstm_753/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_753/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_753/zerosFilllstm_753/zeros/packed:output:0lstm_753/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_753/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_753/zeros_1/packedPacklstm_753/strided_slice:output:0"lstm_753/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_753/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_753/zeros_1Fill lstm_753/zeros_1/packed:output:0lstm_753/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_753/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_753/transpose	Transposeinputs lstm_753/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_753/Shape_1Shapelstm_753/transpose:y:0*
T0*
_output_shapes
:h
lstm_753/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_753/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_753/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_slice_1StridedSlicelstm_753/Shape_1:output:0'lstm_753/strided_slice_1/stack:output:0)lstm_753/strided_slice_1/stack_1:output:0)lstm_753/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_753/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_753/TensorArrayV2TensorListReserve-lstm_753/TensorArrayV2/element_shape:output:0!lstm_753/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_753/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_753/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_753/transpose:y:0Glstm_753/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_753/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_753/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_753/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_slice_2StridedSlicelstm_753/transpose:y:0'lstm_753/strided_slice_2/stack:output:0)lstm_753/strided_slice_2/stack_1:output:0)lstm_753/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_753/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp5lstm_753_lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_753/lstm_cell_753/MatMulMatMul!lstm_753/strided_slice_2:output:04lstm_753/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp7lstm_753_lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_753/lstm_cell_753/MatMul_1MatMullstm_753/zeros:output:06lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_753/lstm_cell_753/addAddV2'lstm_753/lstm_cell_753/MatMul:product:0)lstm_753/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp6lstm_753_lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_753/lstm_cell_753/BiasAddBiasAddlstm_753/lstm_cell_753/add:z:05lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_753/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_753/lstm_cell_753/splitSplit/lstm_753/lstm_cell_753/split/split_dim:output:0'lstm_753/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_753/lstm_cell_753/SigmoidSigmoid%lstm_753/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_753/lstm_cell_753/Sigmoid_1Sigmoid%lstm_753/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/mulMul$lstm_753/lstm_cell_753/Sigmoid_1:y:0lstm_753/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_753/lstm_cell_753/ReluRelu%lstm_753/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/mul_1Mul"lstm_753/lstm_cell_753/Sigmoid:y:0)lstm_753/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/add_1AddV2lstm_753/lstm_cell_753/mul:z:0 lstm_753/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_753/lstm_cell_753/Sigmoid_2Sigmoid%lstm_753/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_753/lstm_cell_753/Relu_1Relu lstm_753/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/mul_2Mul$lstm_753/lstm_cell_753/Sigmoid_2:y:0+lstm_753/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_753/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_753/TensorArrayV2_1TensorListReserve/lstm_753/TensorArrayV2_1/element_shape:output:0!lstm_753/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_753/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_753/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_753/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_753/whileWhile$lstm_753/while/loop_counter:output:0*lstm_753/while/maximum_iterations:output:0lstm_753/time:output:0!lstm_753/TensorArrayV2_1:handle:0lstm_753/zeros:output:0lstm_753/zeros_1:output:0!lstm_753/strided_slice_1:output:0@lstm_753/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_753_lstm_cell_753_matmul_readvariableop_resource7lstm_753_lstm_cell_753_matmul_1_readvariableop_resource6lstm_753_lstm_cell_753_biasadd_readvariableop_resource*
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
lstm_753_while_body_4642827*'
condR
lstm_753_while_cond_4642826*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_753/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_753/TensorArrayV2Stack/TensorListStackTensorListStacklstm_753/while:output:3Blstm_753/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_753/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_753/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_753/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_slice_3StridedSlice4lstm_753/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_753/strided_slice_3/stack:output:0)lstm_753/strided_slice_3/stack_1:output:0)lstm_753/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_753/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_753/transpose_1	Transpose4lstm_753/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_753/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_753/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_754/ShapeShapelstm_753/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_754/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_754/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_754/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_sliceStridedSlicelstm_754/Shape:output:0%lstm_754/strided_slice/stack:output:0'lstm_754/strided_slice/stack_1:output:0'lstm_754/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_754/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_754/zeros/packedPacklstm_754/strided_slice:output:0 lstm_754/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_754/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_754/zerosFilllstm_754/zeros/packed:output:0lstm_754/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_754/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_754/zeros_1/packedPacklstm_754/strided_slice:output:0"lstm_754/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_754/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_754/zeros_1Fill lstm_754/zeros_1/packed:output:0lstm_754/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_754/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_754/transpose	Transposelstm_753/transpose_1:y:0 lstm_754/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_754/Shape_1Shapelstm_754/transpose:y:0*
T0*
_output_shapes
:h
lstm_754/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_754/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_754/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_slice_1StridedSlicelstm_754/Shape_1:output:0'lstm_754/strided_slice_1/stack:output:0)lstm_754/strided_slice_1/stack_1:output:0)lstm_754/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_754/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_754/TensorArrayV2TensorListReserve-lstm_754/TensorArrayV2/element_shape:output:0!lstm_754/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_754/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_754/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_754/transpose:y:0Glstm_754/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_754/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_754/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_754/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_slice_2StridedSlicelstm_754/transpose:y:0'lstm_754/strided_slice_2/stack:output:0)lstm_754/strided_slice_2/stack_1:output:0)lstm_754/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_754/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp5lstm_754_lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_754/lstm_cell_754/MatMulMatMul!lstm_754/strided_slice_2:output:04lstm_754/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp7lstm_754_lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_754/lstm_cell_754/MatMul_1MatMullstm_754/zeros:output:06lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_754/lstm_cell_754/addAddV2'lstm_754/lstm_cell_754/MatMul:product:0)lstm_754/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp6lstm_754_lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_754/lstm_cell_754/BiasAddBiasAddlstm_754/lstm_cell_754/add:z:05lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_754/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_754/lstm_cell_754/splitSplit/lstm_754/lstm_cell_754/split/split_dim:output:0'lstm_754/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_754/lstm_cell_754/SigmoidSigmoid%lstm_754/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_754/lstm_cell_754/Sigmoid_1Sigmoid%lstm_754/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/mulMul$lstm_754/lstm_cell_754/Sigmoid_1:y:0lstm_754/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_754/lstm_cell_754/ReluRelu%lstm_754/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/mul_1Mul"lstm_754/lstm_cell_754/Sigmoid:y:0)lstm_754/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/add_1AddV2lstm_754/lstm_cell_754/mul:z:0 lstm_754/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_754/lstm_cell_754/Sigmoid_2Sigmoid%lstm_754/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_754/lstm_cell_754/Relu_1Relu lstm_754/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/mul_2Mul$lstm_754/lstm_cell_754/Sigmoid_2:y:0+lstm_754/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_754/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_754/TensorArrayV2_1TensorListReserve/lstm_754/TensorArrayV2_1/element_shape:output:0!lstm_754/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_754/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_754/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_754/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_754/whileWhile$lstm_754/while/loop_counter:output:0*lstm_754/while/maximum_iterations:output:0lstm_754/time:output:0!lstm_754/TensorArrayV2_1:handle:0lstm_754/zeros:output:0lstm_754/zeros_1:output:0!lstm_754/strided_slice_1:output:0@lstm_754/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_754_lstm_cell_754_matmul_readvariableop_resource7lstm_754_lstm_cell_754_matmul_1_readvariableop_resource6lstm_754_lstm_cell_754_biasadd_readvariableop_resource*
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
lstm_754_while_body_4642966*'
condR
lstm_754_while_cond_4642965*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_754/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_754/TensorArrayV2Stack/TensorListStackTensorListStacklstm_754/while:output:3Blstm_754/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_754/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_754/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_754/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_slice_3StridedSlice4lstm_754/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_754/strided_slice_3/stack:output:0)lstm_754/strided_slice_3/stack_1:output:0)lstm_754/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_754/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_754/transpose_1	Transpose4lstm_754/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_754/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_754/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_755/ShapeShapelstm_754/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_755/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_755/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_755/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_sliceStridedSlicelstm_755/Shape:output:0%lstm_755/strided_slice/stack:output:0'lstm_755/strided_slice/stack_1:output:0'lstm_755/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_755/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_755/zeros/packedPacklstm_755/strided_slice:output:0 lstm_755/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_755/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_755/zerosFilllstm_755/zeros/packed:output:0lstm_755/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_755/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_755/zeros_1/packedPacklstm_755/strided_slice:output:0"lstm_755/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_755/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_755/zeros_1Fill lstm_755/zeros_1/packed:output:0lstm_755/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_755/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_755/transpose	Transposelstm_754/transpose_1:y:0 lstm_755/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_755/Shape_1Shapelstm_755/transpose:y:0*
T0*
_output_shapes
:h
lstm_755/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_755/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_755/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_slice_1StridedSlicelstm_755/Shape_1:output:0'lstm_755/strided_slice_1/stack:output:0)lstm_755/strided_slice_1/stack_1:output:0)lstm_755/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_755/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_755/TensorArrayV2TensorListReserve-lstm_755/TensorArrayV2/element_shape:output:0!lstm_755/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_755/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_755/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_755/transpose:y:0Glstm_755/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_755/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_755/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_755/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_slice_2StridedSlicelstm_755/transpose:y:0'lstm_755/strided_slice_2/stack:output:0)lstm_755/strided_slice_2/stack_1:output:0)lstm_755/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_755/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp5lstm_755_lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_755/lstm_cell_755/MatMulMatMul!lstm_755/strided_slice_2:output:04lstm_755/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp7lstm_755_lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_755/lstm_cell_755/MatMul_1MatMullstm_755/zeros:output:06lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_755/lstm_cell_755/addAddV2'lstm_755/lstm_cell_755/MatMul:product:0)lstm_755/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp6lstm_755_lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_755/lstm_cell_755/BiasAddBiasAddlstm_755/lstm_cell_755/add:z:05lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_755/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_755/lstm_cell_755/splitSplit/lstm_755/lstm_cell_755/split/split_dim:output:0'lstm_755/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_755/lstm_cell_755/SigmoidSigmoid%lstm_755/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_755/lstm_cell_755/Sigmoid_1Sigmoid%lstm_755/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/mulMul$lstm_755/lstm_cell_755/Sigmoid_1:y:0lstm_755/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_755/lstm_cell_755/ReluRelu%lstm_755/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/mul_1Mul"lstm_755/lstm_cell_755/Sigmoid:y:0)lstm_755/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/add_1AddV2lstm_755/lstm_cell_755/mul:z:0 lstm_755/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_755/lstm_cell_755/Sigmoid_2Sigmoid%lstm_755/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_755/lstm_cell_755/Relu_1Relu lstm_755/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/mul_2Mul$lstm_755/lstm_cell_755/Sigmoid_2:y:0+lstm_755/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_755/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_755/TensorArrayV2_1TensorListReserve/lstm_755/TensorArrayV2_1/element_shape:output:0!lstm_755/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_755/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_755/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_755/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_755/whileWhile$lstm_755/while/loop_counter:output:0*lstm_755/while/maximum_iterations:output:0lstm_755/time:output:0!lstm_755/TensorArrayV2_1:handle:0lstm_755/zeros:output:0lstm_755/zeros_1:output:0!lstm_755/strided_slice_1:output:0@lstm_755/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_755_lstm_cell_755_matmul_readvariableop_resource7lstm_755_lstm_cell_755_matmul_1_readvariableop_resource6lstm_755_lstm_cell_755_biasadd_readvariableop_resource*
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
lstm_755_while_body_4643105*'
condR
lstm_755_while_cond_4643104*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_755/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_755/TensorArrayV2Stack/TensorListStackTensorListStacklstm_755/while:output:3Blstm_755/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_755/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_755/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_755/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_slice_3StridedSlice4lstm_755/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_755/strided_slice_3/stack:output:0)lstm_755/strided_slice_3/stack_1:output:0)lstm_755/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_755/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_755/transpose_1	Transpose4lstm_755/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_755/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_755/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_251/MatMul/ReadVariableOpReadVariableOp(dense_251_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_251/MatMulMatMul!lstm_755/strided_slice_3:output:0'dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_251/BiasAdd/ReadVariableOpReadVariableOp)dense_251_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_251/BiasAddBiasAdddense_251/MatMul:product:0(dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_251/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_251/BiasAdd/ReadVariableOp ^dense_251/MatMul/ReadVariableOp.^lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp-^lstm_753/lstm_cell_753/MatMul/ReadVariableOp/^lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp^lstm_753/while.^lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp-^lstm_754/lstm_cell_754/MatMul/ReadVariableOp/^lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp^lstm_754/while.^lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp-^lstm_755/lstm_cell_755/MatMul/ReadVariableOp/^lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp^lstm_755/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_251/BiasAdd/ReadVariableOp dense_251/BiasAdd/ReadVariableOp2B
dense_251/MatMul/ReadVariableOpdense_251/MatMul/ReadVariableOp2^
-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp2\
,lstm_753/lstm_cell_753/MatMul/ReadVariableOp,lstm_753/lstm_cell_753/MatMul/ReadVariableOp2`
.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp2 
lstm_753/whilelstm_753/while2^
-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp2\
,lstm_754/lstm_cell_754/MatMul/ReadVariableOp,lstm_754/lstm_cell_754/MatMul/ReadVariableOp2`
.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp2 
lstm_754/whilelstm_754/while2^
-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp2\
,lstm_755/lstm_cell_755/MatMul/ReadVariableOp,lstm_755/lstm_cell_755/MatMul/ReadVariableOp2`
.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp2 
lstm_755/whilelstm_755/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644427

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4644343*
condR
while_cond_4644342*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_754_while_body_4642966.
*lstm_754_while_lstm_754_while_loop_counter4
0lstm_754_while_lstm_754_while_maximum_iterations
lstm_754_while_placeholder 
lstm_754_while_placeholder_1 
lstm_754_while_placeholder_2 
lstm_754_while_placeholder_3-
)lstm_754_while_lstm_754_strided_slice_1_0i
elstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0:	d?R
?lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?M
>lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
lstm_754_while_identity
lstm_754_while_identity_1
lstm_754_while_identity_2
lstm_754_while_identity_3
lstm_754_while_identity_4
lstm_754_while_identity_5+
'lstm_754_while_lstm_754_strided_slice_1g
clstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensorN
;lstm_754_while_lstm_cell_754_matmul_readvariableop_resource:	d?P
=lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource:	2?K
<lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource:	???3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp?2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp?4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp?
@lstm_754/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_754/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensor_0lstm_754_while_placeholderIlstm_754/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp=lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_754/while/lstm_cell_754/MatMulMatMul9lstm_754/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp?lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_754/while/lstm_cell_754/MatMul_1MatMullstm_754_while_placeholder_2<lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_754/while/lstm_cell_754/addAddV2-lstm_754/while/lstm_cell_754/MatMul:product:0/lstm_754/while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp>lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_754/while/lstm_cell_754/BiasAddBiasAdd$lstm_754/while/lstm_cell_754/add:z:0;lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_754/while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_754/while/lstm_cell_754/splitSplit5lstm_754/while/lstm_cell_754/split/split_dim:output:0-lstm_754/while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_754/while/lstm_cell_754/SigmoidSigmoid+lstm_754/while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_754/while/lstm_cell_754/Sigmoid_1Sigmoid+lstm_754/while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_754/while/lstm_cell_754/mulMul*lstm_754/while/lstm_cell_754/Sigmoid_1:y:0lstm_754_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_754/while/lstm_cell_754/ReluRelu+lstm_754/while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_754/while/lstm_cell_754/mul_1Mul(lstm_754/while/lstm_cell_754/Sigmoid:y:0/lstm_754/while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_754/while/lstm_cell_754/add_1AddV2$lstm_754/while/lstm_cell_754/mul:z:0&lstm_754/while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_754/while/lstm_cell_754/Sigmoid_2Sigmoid+lstm_754/while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_754/while/lstm_cell_754/Relu_1Relu&lstm_754/while/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_754/while/lstm_cell_754/mul_2Mul*lstm_754/while/lstm_cell_754/Sigmoid_2:y:01lstm_754/while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_754/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_754_while_placeholder_1lstm_754_while_placeholder&lstm_754/while/lstm_cell_754/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_754/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_754/while/addAddV2lstm_754_while_placeholderlstm_754/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_754/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_754/while/add_1AddV2*lstm_754_while_lstm_754_while_loop_counterlstm_754/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_754/while/IdentityIdentitylstm_754/while/add_1:z:0^lstm_754/while/NoOp*
T0*
_output_shapes
: ?
lstm_754/while/Identity_1Identity0lstm_754_while_lstm_754_while_maximum_iterations^lstm_754/while/NoOp*
T0*
_output_shapes
: t
lstm_754/while/Identity_2Identitylstm_754/while/add:z:0^lstm_754/while/NoOp*
T0*
_output_shapes
: ?
lstm_754/while/Identity_3IdentityClstm_754/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_754/while/NoOp*
T0*
_output_shapes
: ?
lstm_754/while/Identity_4Identity&lstm_754/while/lstm_cell_754/mul_2:z:0^lstm_754/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_754/while/Identity_5Identity&lstm_754/while/lstm_cell_754/add_1:z:0^lstm_754/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_754/while/NoOpNoOp4^lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp3^lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp5^lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_754_while_identity lstm_754/while/Identity:output:0"?
lstm_754_while_identity_1"lstm_754/while/Identity_1:output:0"?
lstm_754_while_identity_2"lstm_754/while/Identity_2:output:0"?
lstm_754_while_identity_3"lstm_754/while/Identity_3:output:0"?
lstm_754_while_identity_4"lstm_754/while/Identity_4:output:0"?
lstm_754_while_identity_5"lstm_754/while/Identity_5:output:0"T
'lstm_754_while_lstm_754_strided_slice_1)lstm_754_while_lstm_754_strided_slice_1_0"~
<lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource>lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0"?
=lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource?lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0"|
;lstm_754_while_lstm_cell_754_matmul_readvariableop_resource=lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0"?
clstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensorelstm_754_while_tensorarrayv2read_tensorlistgetitem_lstm_754_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp3lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp2h
2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp2lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp2l
4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp4lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4643440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643440___redundant_placeholder05
1while_while_cond_4643440___redundant_placeholder15
1while_while_cond_4643440___redundant_placeholder25
1while_while_cond_4643440___redundant_placeholder3
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
/__inference_lstm_cell_754_layer_call_fn_4645177

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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640444o
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
while_body_4640999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_755_4641023_0:2(/
while_lstm_cell_755_4641025_0:
(+
while_lstm_cell_755_4641027_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_755_4641023:2(-
while_lstm_cell_755_4641025:
()
while_lstm_cell_755_4641027:(??+while/lstm_cell_755/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_755_4641023_0while_lstm_cell_755_4641025_0while_lstm_cell_755_4641027_0*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640940?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_755/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_755/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_755/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_755_4641023while_lstm_cell_755_4641023_0"<
while_lstm_cell_755_4641025while_lstm_cell_755_4641025_0"<
while_lstm_cell_755_4641027while_lstm_cell_755_4641027_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_755/StatefulPartitionedCall+while/lstm_cell_755/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_755_layer_call_fn_4645275

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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640794o
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
?J
?
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641526

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4641442*
condR
while_cond_4641441*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4645258

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
while_cond_4641291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641291___redundant_placeholder05
1while_while_cond_4641291___redundant_placeholder15
1while_while_cond_4641291___redundant_placeholder25
1while_while_cond_4641291___redundant_placeholder3
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4645226

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
?
E__inference_lstm_754_layer_call_and_return_conditional_losses_4640718

inputs(
lstm_cell_754_4640636:	d?(
lstm_cell_754_4640638:	2?$
lstm_cell_754_4640640:	?
identity??%lstm_cell_754/StatefulPartitionedCall?while;
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
%lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_754_4640636lstm_cell_754_4640638lstm_cell_754_4640640*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640590n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_754_4640636lstm_cell_754_4640638lstm_cell_754_4640640*
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
while_body_4640649*
condR
while_cond_4640648*K
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
NoOpNoOp&^lstm_cell_754/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_754/StatefulPartitionedCall%lstm_cell_754/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4641441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641441___redundant_placeholder05
1while_while_cond_4641441___redundant_placeholder15
1while_while_cond_4641441___redundant_placeholder25
1while_while_cond_4641441___redundant_placeholder3
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641907

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4641823*
condR
while_cond_4641822*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_754_layer_call_and_return_conditional_losses_4643998
inputs_0?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4643914*
condR
while_cond_4643913*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641068

inputs'
lstm_cell_755_4640986:2('
lstm_cell_755_4640988:
(#
lstm_cell_755_4640990:(
identity??%lstm_cell_755/StatefulPartitionedCall?while;
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
%lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_755_4640986lstm_cell_755_4640988lstm_cell_755_4640990*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640940n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_755_4640986lstm_cell_755_4640988lstm_cell_755_4640990*
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
while_body_4640999*
condR
while_cond_4640998*K
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
NoOpNoOp&^lstm_cell_755/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_755/StatefulPartitionedCall%lstm_cell_755/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4640107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640107___redundant_placeholder05
1while_while_cond_4640107___redundant_placeholder15
1while_while_cond_4640107___redundant_placeholder25
1while_while_cond_4640107___redundant_placeholder3
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
while_cond_4644056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644056___redundant_placeholder05
1while_while_cond_4644056___redundant_placeholder15
1while_while_cond_4644056___redundant_placeholder25
1while_while_cond_4644056___redundant_placeholder3
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
*__inference_lstm_753_layer_call_fn_4643228

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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4641226s
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
?
*sequential_251_lstm_753_while_cond_4639658L
Hsequential_251_lstm_753_while_sequential_251_lstm_753_while_loop_counterR
Nsequential_251_lstm_753_while_sequential_251_lstm_753_while_maximum_iterations-
)sequential_251_lstm_753_while_placeholder/
+sequential_251_lstm_753_while_placeholder_1/
+sequential_251_lstm_753_while_placeholder_2/
+sequential_251_lstm_753_while_placeholder_3N
Jsequential_251_lstm_753_while_less_sequential_251_lstm_753_strided_slice_1e
asequential_251_lstm_753_while_sequential_251_lstm_753_while_cond_4639658___redundant_placeholder0e
asequential_251_lstm_753_while_sequential_251_lstm_753_while_cond_4639658___redundant_placeholder1e
asequential_251_lstm_753_while_sequential_251_lstm_753_while_cond_4639658___redundant_placeholder2e
asequential_251_lstm_753_while_sequential_251_lstm_753_while_cond_4639658___redundant_placeholder3*
&sequential_251_lstm_753_while_identity
?
"sequential_251/lstm_753/while/LessLess)sequential_251_lstm_753_while_placeholderJsequential_251_lstm_753_while_less_sequential_251_lstm_753_strided_slice_1*
T0*
_output_shapes
: {
&sequential_251/lstm_753/while/IdentityIdentity&sequential_251/lstm_753/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_251_lstm_753_while_identity/sequential_251/lstm_753/while/Identity:output:0*(
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
while_body_4644200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_753_layer_call_fn_4645096

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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640240o
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4645356

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
while_body_4640808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_755_4640832_0:2(/
while_lstm_cell_755_4640834_0:
(+
while_lstm_cell_755_4640836_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_755_4640832:2(-
while_lstm_cell_755_4640834:
()
while_lstm_cell_755_4640836:(??+while/lstm_cell_755/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_755_4640832_0while_lstm_cell_755_4640834_0while_lstm_cell_755_4640836_0*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640794?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_755/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_755/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_755/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_755_4640832while_lstm_cell_755_4640832_0"<
while_lstm_cell_755_4640834while_lstm_cell_755_4640834_0"<
while_lstm_cell_755_4640836while_lstm_cell_755_4640836_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_755/StatefulPartitionedCall+while/lstm_cell_755/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_755_layer_call_fn_4644471

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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641742o
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
while_body_4641142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4641658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642140

inputs#
lstm_753_4642113:	?#
lstm_753_4642115:	d?
lstm_753_4642117:	?#
lstm_754_4642120:	d?#
lstm_754_4642122:	2?
lstm_754_4642124:	?"
lstm_755_4642127:2("
lstm_755_4642129:
(
lstm_755_4642131:(#
dense_251_4642134:

dense_251_4642136:
identity??!dense_251/StatefulPartitionedCall? lstm_753/StatefulPartitionedCall? lstm_754/StatefulPartitionedCall? lstm_755/StatefulPartitionedCall?
 lstm_753/StatefulPartitionedCallStatefulPartitionedCallinputslstm_753_4642113lstm_753_4642115lstm_753_4642117*
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4642072?
 lstm_754/StatefulPartitionedCallStatefulPartitionedCall)lstm_753/StatefulPartitionedCall:output:0lstm_754_4642120lstm_754_4642122lstm_754_4642124*
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641907?
 lstm_755/StatefulPartitionedCallStatefulPartitionedCall)lstm_754/StatefulPartitionedCall:output:0lstm_755_4642127lstm_755_4642129lstm_755_4642131*
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641742?
!dense_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_755/StatefulPartitionedCall:output:0dense_251_4642134dense_251_4642136*
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4641544y
IdentityIdentity*dense_251/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_251/StatefulPartitionedCall!^lstm_753/StatefulPartitionedCall!^lstm_754/StatefulPartitionedCall!^lstm_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2D
 lstm_753/StatefulPartitionedCall lstm_753/StatefulPartitionedCall2D
 lstm_754/StatefulPartitionedCall lstm_754/StatefulPartitionedCall2D
 lstm_755/StatefulPartitionedCall lstm_755/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644141
inputs_0?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4644057*
condR
while_cond_4644056*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_755_while_cond_4642677.
*lstm_755_while_lstm_755_while_loop_counter4
0lstm_755_while_lstm_755_while_maximum_iterations
lstm_755_while_placeholder 
lstm_755_while_placeholder_1 
lstm_755_while_placeholder_2 
lstm_755_while_placeholder_30
,lstm_755_while_less_lstm_755_strided_slice_1G
Clstm_755_while_lstm_755_while_cond_4642677___redundant_placeholder0G
Clstm_755_while_lstm_755_while_cond_4642677___redundant_placeholder1G
Clstm_755_while_lstm_755_while_cond_4642677___redundant_placeholder2G
Clstm_755_while_lstm_755_while_cond_4642677___redundant_placeholder3
lstm_755_while_identity
?
lstm_755/while/LessLesslstm_755_while_placeholder,lstm_755_while_less_lstm_755_strided_slice_1*
T0*
_output_shapes
: ]
lstm_755/while/IdentityIdentitylstm_755/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_755_while_identity lstm_755/while/Identity:output:0*(
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
*__inference_lstm_754_layer_call_fn_4643833
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4640718|
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
while_body_4641988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_754_layer_call_fn_4645194

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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640590o
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
while_body_4644343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_755_layer_call_fn_4644460

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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641526o
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
?
/__inference_lstm_cell_755_layer_call_fn_4645292

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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640940o
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
?
/__inference_lstm_cell_753_layer_call_fn_4645079

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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640094o
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

lstm_753_while_body_4642400.
*lstm_753_while_lstm_753_while_loop_counter4
0lstm_753_while_lstm_753_while_maximum_iterations
lstm_753_while_placeholder 
lstm_753_while_placeholder_1 
lstm_753_while_placeholder_2 
lstm_753_while_placeholder_3-
)lstm_753_while_lstm_753_strided_slice_1_0i
elstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0:	?R
?lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?M
>lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
lstm_753_while_identity
lstm_753_while_identity_1
lstm_753_while_identity_2
lstm_753_while_identity_3
lstm_753_while_identity_4
lstm_753_while_identity_5+
'lstm_753_while_lstm_753_strided_slice_1g
clstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensorN
;lstm_753_while_lstm_cell_753_matmul_readvariableop_resource:	?P
=lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource:	d?K
<lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource:	???3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp?2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp?4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp?
@lstm_753/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_753/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensor_0lstm_753_while_placeholderIlstm_753/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp=lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_753/while/lstm_cell_753/MatMulMatMul9lstm_753/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp?lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_753/while/lstm_cell_753/MatMul_1MatMullstm_753_while_placeholder_2<lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_753/while/lstm_cell_753/addAddV2-lstm_753/while/lstm_cell_753/MatMul:product:0/lstm_753/while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp>lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_753/while/lstm_cell_753/BiasAddBiasAdd$lstm_753/while/lstm_cell_753/add:z:0;lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_753/while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_753/while/lstm_cell_753/splitSplit5lstm_753/while/lstm_cell_753/split/split_dim:output:0-lstm_753/while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_753/while/lstm_cell_753/SigmoidSigmoid+lstm_753/while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_753/while/lstm_cell_753/Sigmoid_1Sigmoid+lstm_753/while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_753/while/lstm_cell_753/mulMul*lstm_753/while/lstm_cell_753/Sigmoid_1:y:0lstm_753_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_753/while/lstm_cell_753/ReluRelu+lstm_753/while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_753/while/lstm_cell_753/mul_1Mul(lstm_753/while/lstm_cell_753/Sigmoid:y:0/lstm_753/while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_753/while/lstm_cell_753/add_1AddV2$lstm_753/while/lstm_cell_753/mul:z:0&lstm_753/while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_753/while/lstm_cell_753/Sigmoid_2Sigmoid+lstm_753/while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_753/while/lstm_cell_753/Relu_1Relu&lstm_753/while/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_753/while/lstm_cell_753/mul_2Mul*lstm_753/while/lstm_cell_753/Sigmoid_2:y:01lstm_753/while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_753/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_753_while_placeholder_1lstm_753_while_placeholder&lstm_753/while/lstm_cell_753/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_753/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_753/while/addAddV2lstm_753_while_placeholderlstm_753/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_753/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_753/while/add_1AddV2*lstm_753_while_lstm_753_while_loop_counterlstm_753/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_753/while/IdentityIdentitylstm_753/while/add_1:z:0^lstm_753/while/NoOp*
T0*
_output_shapes
: ?
lstm_753/while/Identity_1Identity0lstm_753_while_lstm_753_while_maximum_iterations^lstm_753/while/NoOp*
T0*
_output_shapes
: t
lstm_753/while/Identity_2Identitylstm_753/while/add:z:0^lstm_753/while/NoOp*
T0*
_output_shapes
: ?
lstm_753/while/Identity_3IdentityClstm_753/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_753/while/NoOp*
T0*
_output_shapes
: ?
lstm_753/while/Identity_4Identity&lstm_753/while/lstm_cell_753/mul_2:z:0^lstm_753/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_753/while/Identity_5Identity&lstm_753/while/lstm_cell_753/add_1:z:0^lstm_753/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_753/while/NoOpNoOp4^lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp3^lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp5^lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_753_while_identity lstm_753/while/Identity:output:0"?
lstm_753_while_identity_1"lstm_753/while/Identity_1:output:0"?
lstm_753_while_identity_2"lstm_753/while/Identity_2:output:0"?
lstm_753_while_identity_3"lstm_753/while/Identity_3:output:0"?
lstm_753_while_identity_4"lstm_753/while/Identity_4:output:0"?
lstm_753_while_identity_5"lstm_753/while/Identity_5:output:0"T
'lstm_753_while_lstm_753_strided_slice_1)lstm_753_while_lstm_753_strided_slice_1_0"~
<lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource>lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0"?
=lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource?lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0"|
;lstm_753_while_lstm_cell_753_matmul_readvariableop_resource=lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0"?
clstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensorelstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp2h
2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp2l
4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4641823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_753_layer_call_fn_4643217
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4640368|
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
?8
?
E__inference_lstm_754_layer_call_and_return_conditional_losses_4640527

inputs(
lstm_cell_754_4640445:	d?(
lstm_cell_754_4640447:	2?$
lstm_cell_754_4640449:	?
identity??%lstm_cell_754/StatefulPartitionedCall?while;
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
%lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_754_4640445lstm_cell_754_4640447lstm_cell_754_4640449*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640444n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_754_4640445lstm_cell_754_4640447lstm_cell_754_4640449*
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
while_body_4640458*
condR
while_cond_4640457*K
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
NoOpNoOp&^lstm_cell_754/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_754/StatefulPartitionedCall%lstm_cell_754/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_755_while_cond_4643104.
*lstm_755_while_lstm_755_while_loop_counter4
0lstm_755_while_lstm_755_while_maximum_iterations
lstm_755_while_placeholder 
lstm_755_while_placeholder_1 
lstm_755_while_placeholder_2 
lstm_755_while_placeholder_30
,lstm_755_while_less_lstm_755_strided_slice_1G
Clstm_755_while_lstm_755_while_cond_4643104___redundant_placeholder0G
Clstm_755_while_lstm_755_while_cond_4643104___redundant_placeholder1G
Clstm_755_while_lstm_755_while_cond_4643104___redundant_placeholder2G
Clstm_755_while_lstm_755_while_cond_4643104___redundant_placeholder3
lstm_755_while_identity
?
lstm_755/while/LessLesslstm_755_while_placeholder,lstm_755_while_less_lstm_755_strided_slice_1*
T0*
_output_shapes
: ]
lstm_755/while/IdentityIdentitylstm_755/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_755_while_identity lstm_755/while/Identity:output:0*(
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
while_cond_4640457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640457___redundant_placeholder05
1while_while_cond_4640457___redundant_placeholder15
1while_while_cond_4640457___redundant_placeholder25
1while_while_cond_4640457___redundant_placeholder3
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
*sequential_251_lstm_754_while_body_4639798L
Hsequential_251_lstm_754_while_sequential_251_lstm_754_while_loop_counterR
Nsequential_251_lstm_754_while_sequential_251_lstm_754_while_maximum_iterations-
)sequential_251_lstm_754_while_placeholder/
+sequential_251_lstm_754_while_placeholder_1/
+sequential_251_lstm_754_while_placeholder_2/
+sequential_251_lstm_754_while_placeholder_3K
Gsequential_251_lstm_754_while_sequential_251_lstm_754_strided_slice_1_0?
?sequential_251_lstm_754_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_754_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_251_lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0:	d?a
Nsequential_251_lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?\
Msequential_251_lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0:	?*
&sequential_251_lstm_754_while_identity,
(sequential_251_lstm_754_while_identity_1,
(sequential_251_lstm_754_while_identity_2,
(sequential_251_lstm_754_while_identity_3,
(sequential_251_lstm_754_while_identity_4,
(sequential_251_lstm_754_while_identity_5I
Esequential_251_lstm_754_while_sequential_251_lstm_754_strided_slice_1?
?sequential_251_lstm_754_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_754_tensorarrayunstack_tensorlistfromtensor]
Jsequential_251_lstm_754_while_lstm_cell_754_matmul_readvariableop_resource:	d?_
Lsequential_251_lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource:	2?Z
Ksequential_251_lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource:	???Bsequential_251/lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp?Asequential_251/lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp?Csequential_251/lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp?
Osequential_251/lstm_754/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_251/lstm_754/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_251_lstm_754_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_754_tensorarrayunstack_tensorlistfromtensor_0)sequential_251_lstm_754_while_placeholderXsequential_251/lstm_754/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_251/lstm_754/while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOpLsequential_251_lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_251/lstm_754/while/lstm_cell_754/MatMulMatMulHsequential_251/lstm_754/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_251/lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_251/lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOpNsequential_251_lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_251/lstm_754/while/lstm_cell_754/MatMul_1MatMul+sequential_251_lstm_754_while_placeholder_2Ksequential_251/lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_251/lstm_754/while/lstm_cell_754/addAddV2<sequential_251/lstm_754/while/lstm_cell_754/MatMul:product:0>sequential_251/lstm_754/while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_251/lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOpMsequential_251_lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_251/lstm_754/while/lstm_cell_754/BiasAddBiasAdd3sequential_251/lstm_754/while/lstm_cell_754/add:z:0Jsequential_251/lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_251/lstm_754/while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_251/lstm_754/while/lstm_cell_754/splitSplitDsequential_251/lstm_754/while/lstm_cell_754/split/split_dim:output:0<sequential_251/lstm_754/while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_251/lstm_754/while/lstm_cell_754/SigmoidSigmoid:sequential_251/lstm_754/while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_251/lstm_754/while/lstm_cell_754/Sigmoid_1Sigmoid:sequential_251/lstm_754/while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_251/lstm_754/while/lstm_cell_754/mulMul9sequential_251/lstm_754/while/lstm_cell_754/Sigmoid_1:y:0+sequential_251_lstm_754_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_251/lstm_754/while/lstm_cell_754/ReluRelu:sequential_251/lstm_754/while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_251/lstm_754/while/lstm_cell_754/mul_1Mul7sequential_251/lstm_754/while/lstm_cell_754/Sigmoid:y:0>sequential_251/lstm_754/while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_251/lstm_754/while/lstm_cell_754/add_1AddV23sequential_251/lstm_754/while/lstm_cell_754/mul:z:05sequential_251/lstm_754/while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_251/lstm_754/while/lstm_cell_754/Sigmoid_2Sigmoid:sequential_251/lstm_754/while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_251/lstm_754/while/lstm_cell_754/Relu_1Relu5sequential_251/lstm_754/while/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_251/lstm_754/while/lstm_cell_754/mul_2Mul9sequential_251/lstm_754/while/lstm_cell_754/Sigmoid_2:y:0@sequential_251/lstm_754/while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_251/lstm_754/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_251_lstm_754_while_placeholder_1)sequential_251_lstm_754_while_placeholder5sequential_251/lstm_754/while/lstm_cell_754/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_251/lstm_754/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_251/lstm_754/while/addAddV2)sequential_251_lstm_754_while_placeholder,sequential_251/lstm_754/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_251/lstm_754/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_251/lstm_754/while/add_1AddV2Hsequential_251_lstm_754_while_sequential_251_lstm_754_while_loop_counter.sequential_251/lstm_754/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_251/lstm_754/while/IdentityIdentity'sequential_251/lstm_754/while/add_1:z:0#^sequential_251/lstm_754/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_754/while/Identity_1IdentityNsequential_251_lstm_754_while_sequential_251_lstm_754_while_maximum_iterations#^sequential_251/lstm_754/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_754/while/Identity_2Identity%sequential_251/lstm_754/while/add:z:0#^sequential_251/lstm_754/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_754/while/Identity_3IdentityRsequential_251/lstm_754/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_251/lstm_754/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_754/while/Identity_4Identity5sequential_251/lstm_754/while/lstm_cell_754/mul_2:z:0#^sequential_251/lstm_754/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_251/lstm_754/while/Identity_5Identity5sequential_251/lstm_754/while/lstm_cell_754/add_1:z:0#^sequential_251/lstm_754/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_251/lstm_754/while/NoOpNoOpC^sequential_251/lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOpB^sequential_251/lstm_754/while/lstm_cell_754/MatMul/ReadVariableOpD^sequential_251/lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_251_lstm_754_while_identity/sequential_251/lstm_754/while/Identity:output:0"]
(sequential_251_lstm_754_while_identity_11sequential_251/lstm_754/while/Identity_1:output:0"]
(sequential_251_lstm_754_while_identity_21sequential_251/lstm_754/while/Identity_2:output:0"]
(sequential_251_lstm_754_while_identity_31sequential_251/lstm_754/while/Identity_3:output:0"]
(sequential_251_lstm_754_while_identity_41sequential_251/lstm_754/while/Identity_4:output:0"]
(sequential_251_lstm_754_while_identity_51sequential_251/lstm_754/while/Identity_5:output:0"?
Ksequential_251_lstm_754_while_lstm_cell_754_biasadd_readvariableop_resourceMsequential_251_lstm_754_while_lstm_cell_754_biasadd_readvariableop_resource_0"?
Lsequential_251_lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resourceNsequential_251_lstm_754_while_lstm_cell_754_matmul_1_readvariableop_resource_0"?
Jsequential_251_lstm_754_while_lstm_cell_754_matmul_readvariableop_resourceLsequential_251_lstm_754_while_lstm_cell_754_matmul_readvariableop_resource_0"?
Esequential_251_lstm_754_while_sequential_251_lstm_754_strided_slice_1Gsequential_251_lstm_754_while_sequential_251_lstm_754_strided_slice_1_0"?
?sequential_251_lstm_754_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_754_tensorarrayunstack_tensorlistfromtensor?sequential_251_lstm_754_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_754_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_251/lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOpBsequential_251/lstm_754/while/lstm_cell_754/BiasAdd/ReadVariableOp2?
Asequential_251/lstm_754/while/lstm_cell_754/MatMul/ReadVariableOpAsequential_251/lstm_754/while/lstm_cell_754/MatMul/ReadVariableOp2?
Csequential_251/lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOpCsequential_251/lstm_754/while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4640458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_754_4640482_0:	d?0
while_lstm_cell_754_4640484_0:	2?,
while_lstm_cell_754_4640486_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_754_4640482:	d?.
while_lstm_cell_754_4640484:	2?*
while_lstm_cell_754_4640486:	???+while/lstm_cell_754/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_754_4640482_0while_lstm_cell_754_4640484_0while_lstm_cell_754_4640486_0*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640444?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_754/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_754/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_754/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_754/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_754_4640482while_lstm_cell_754_4640482_0"<
while_lstm_cell_754_4640484while_lstm_cell_754_4640484_0"<
while_lstm_cell_754_4640486while_lstm_cell_754_4640486_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_754/StatefulPartitionedCall+while/lstm_cell_754/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4644816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4644530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_251_lstm_755_while_body_4639937L
Hsequential_251_lstm_755_while_sequential_251_lstm_755_while_loop_counterR
Nsequential_251_lstm_755_while_sequential_251_lstm_755_while_maximum_iterations-
)sequential_251_lstm_755_while_placeholder/
+sequential_251_lstm_755_while_placeholder_1/
+sequential_251_lstm_755_while_placeholder_2/
+sequential_251_lstm_755_while_placeholder_3K
Gsequential_251_lstm_755_while_sequential_251_lstm_755_strided_slice_1_0?
?sequential_251_lstm_755_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_755_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_251_lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0:2(`
Nsequential_251_lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0:
([
Msequential_251_lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0:(*
&sequential_251_lstm_755_while_identity,
(sequential_251_lstm_755_while_identity_1,
(sequential_251_lstm_755_while_identity_2,
(sequential_251_lstm_755_while_identity_3,
(sequential_251_lstm_755_while_identity_4,
(sequential_251_lstm_755_while_identity_5I
Esequential_251_lstm_755_while_sequential_251_lstm_755_strided_slice_1?
?sequential_251_lstm_755_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_755_tensorarrayunstack_tensorlistfromtensor\
Jsequential_251_lstm_755_while_lstm_cell_755_matmul_readvariableop_resource:2(^
Lsequential_251_lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource:
(Y
Ksequential_251_lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource:(??Bsequential_251/lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp?Asequential_251/lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp?Csequential_251/lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp?
Osequential_251/lstm_755/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_251/lstm_755/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_251_lstm_755_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_755_tensorarrayunstack_tensorlistfromtensor_0)sequential_251_lstm_755_while_placeholderXsequential_251/lstm_755/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_251/lstm_755/while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOpLsequential_251_lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_251/lstm_755/while/lstm_cell_755/MatMulMatMulHsequential_251/lstm_755/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_251/lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_251/lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOpNsequential_251_lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_251/lstm_755/while/lstm_cell_755/MatMul_1MatMul+sequential_251_lstm_755_while_placeholder_2Ksequential_251/lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_251/lstm_755/while/lstm_cell_755/addAddV2<sequential_251/lstm_755/while/lstm_cell_755/MatMul:product:0>sequential_251/lstm_755/while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_251/lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOpMsequential_251_lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_251/lstm_755/while/lstm_cell_755/BiasAddBiasAdd3sequential_251/lstm_755/while/lstm_cell_755/add:z:0Jsequential_251/lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_251/lstm_755/while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_251/lstm_755/while/lstm_cell_755/splitSplitDsequential_251/lstm_755/while/lstm_cell_755/split/split_dim:output:0<sequential_251/lstm_755/while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_251/lstm_755/while/lstm_cell_755/SigmoidSigmoid:sequential_251/lstm_755/while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_251/lstm_755/while/lstm_cell_755/Sigmoid_1Sigmoid:sequential_251/lstm_755/while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_251/lstm_755/while/lstm_cell_755/mulMul9sequential_251/lstm_755/while/lstm_cell_755/Sigmoid_1:y:0+sequential_251_lstm_755_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_251/lstm_755/while/lstm_cell_755/ReluRelu:sequential_251/lstm_755/while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_251/lstm_755/while/lstm_cell_755/mul_1Mul7sequential_251/lstm_755/while/lstm_cell_755/Sigmoid:y:0>sequential_251/lstm_755/while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_251/lstm_755/while/lstm_cell_755/add_1AddV23sequential_251/lstm_755/while/lstm_cell_755/mul:z:05sequential_251/lstm_755/while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_251/lstm_755/while/lstm_cell_755/Sigmoid_2Sigmoid:sequential_251/lstm_755/while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_251/lstm_755/while/lstm_cell_755/Relu_1Relu5sequential_251/lstm_755/while/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_251/lstm_755/while/lstm_cell_755/mul_2Mul9sequential_251/lstm_755/while/lstm_cell_755/Sigmoid_2:y:0@sequential_251/lstm_755/while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_251/lstm_755/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_251_lstm_755_while_placeholder_1)sequential_251_lstm_755_while_placeholder5sequential_251/lstm_755/while/lstm_cell_755/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_251/lstm_755/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_251/lstm_755/while/addAddV2)sequential_251_lstm_755_while_placeholder,sequential_251/lstm_755/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_251/lstm_755/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_251/lstm_755/while/add_1AddV2Hsequential_251_lstm_755_while_sequential_251_lstm_755_while_loop_counter.sequential_251/lstm_755/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_251/lstm_755/while/IdentityIdentity'sequential_251/lstm_755/while/add_1:z:0#^sequential_251/lstm_755/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_755/while/Identity_1IdentityNsequential_251_lstm_755_while_sequential_251_lstm_755_while_maximum_iterations#^sequential_251/lstm_755/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_755/while/Identity_2Identity%sequential_251/lstm_755/while/add:z:0#^sequential_251/lstm_755/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_755/while/Identity_3IdentityRsequential_251/lstm_755/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_251/lstm_755/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_755/while/Identity_4Identity5sequential_251/lstm_755/while/lstm_cell_755/mul_2:z:0#^sequential_251/lstm_755/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_251/lstm_755/while/Identity_5Identity5sequential_251/lstm_755/while/lstm_cell_755/add_1:z:0#^sequential_251/lstm_755/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_251/lstm_755/while/NoOpNoOpC^sequential_251/lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOpB^sequential_251/lstm_755/while/lstm_cell_755/MatMul/ReadVariableOpD^sequential_251/lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_251_lstm_755_while_identity/sequential_251/lstm_755/while/Identity:output:0"]
(sequential_251_lstm_755_while_identity_11sequential_251/lstm_755/while/Identity_1:output:0"]
(sequential_251_lstm_755_while_identity_21sequential_251/lstm_755/while/Identity_2:output:0"]
(sequential_251_lstm_755_while_identity_31sequential_251/lstm_755/while/Identity_3:output:0"]
(sequential_251_lstm_755_while_identity_41sequential_251/lstm_755/while/Identity_4:output:0"]
(sequential_251_lstm_755_while_identity_51sequential_251/lstm_755/while/Identity_5:output:0"?
Ksequential_251_lstm_755_while_lstm_cell_755_biasadd_readvariableop_resourceMsequential_251_lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0"?
Lsequential_251_lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resourceNsequential_251_lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0"?
Jsequential_251_lstm_755_while_lstm_cell_755_matmul_readvariableop_resourceLsequential_251_lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0"?
Esequential_251_lstm_755_while_sequential_251_lstm_755_strided_slice_1Gsequential_251_lstm_755_while_sequential_251_lstm_755_strided_slice_1_0"?
?sequential_251_lstm_755_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_755_tensorarrayunstack_tensorlistfromtensor?sequential_251_lstm_755_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_755_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_251/lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOpBsequential_251/lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp2?
Asequential_251/lstm_755/while/lstm_cell_755/MatMul/ReadVariableOpAsequential_251/lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp2?
Csequential_251/lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOpCsequential_251/lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641742

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4641658*
condR
while_cond_4641657*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_753_layer_call_and_return_conditional_losses_4640368

inputs(
lstm_cell_753_4640286:	?(
lstm_cell_753_4640288:	d?$
lstm_cell_753_4640290:	?
identity??%lstm_cell_753/StatefulPartitionedCall?while;
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
%lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_753_4640286lstm_cell_753_4640288lstm_cell_753_4640290*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640240n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_753_4640286lstm_cell_753_4640288lstm_cell_753_4640290*
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
while_body_4640299*
condR
while_cond_4640298*K
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
NoOpNoOp&^lstm_cell_753/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_753/StatefulPartitionedCall%lstm_cell_753/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_4645629
file_prefix3
!assignvariableop_dense_251_kernel:
/
!assignvariableop_1_dense_251_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_753_lstm_cell_753_kernel:	?M
:assignvariableop_8_lstm_753_lstm_cell_753_recurrent_kernel:	d?=
.assignvariableop_9_lstm_753_lstm_cell_753_bias:	?D
1assignvariableop_10_lstm_754_lstm_cell_754_kernel:	d?N
;assignvariableop_11_lstm_754_lstm_cell_754_recurrent_kernel:	2?>
/assignvariableop_12_lstm_754_lstm_cell_754_bias:	?C
1assignvariableop_13_lstm_755_lstm_cell_755_kernel:2(M
;assignvariableop_14_lstm_755_lstm_cell_755_recurrent_kernel:
(=
/assignvariableop_15_lstm_755_lstm_cell_755_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_251_kernel_m:
7
)assignvariableop_19_adam_dense_251_bias_m:K
8assignvariableop_20_adam_lstm_753_lstm_cell_753_kernel_m:	?U
Bassignvariableop_21_adam_lstm_753_lstm_cell_753_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_753_lstm_cell_753_bias_m:	?K
8assignvariableop_23_adam_lstm_754_lstm_cell_754_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_754_lstm_cell_754_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_754_lstm_cell_754_bias_m:	?J
8assignvariableop_26_adam_lstm_755_lstm_cell_755_kernel_m:2(T
Bassignvariableop_27_adam_lstm_755_lstm_cell_755_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_755_lstm_cell_755_bias_m:(=
+assignvariableop_29_adam_dense_251_kernel_v:
7
)assignvariableop_30_adam_dense_251_bias_v:K
8assignvariableop_31_adam_lstm_753_lstm_cell_753_kernel_v:	?U
Bassignvariableop_32_adam_lstm_753_lstm_cell_753_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_753_lstm_cell_753_bias_v:	?K
8assignvariableop_34_adam_lstm_754_lstm_cell_754_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_754_lstm_cell_754_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_754_lstm_cell_754_bias_v:	?J
8assignvariableop_37_adam_lstm_755_lstm_cell_755_kernel_v:2(T
Bassignvariableop_38_adam_lstm_755_lstm_cell_755_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_755_lstm_cell_755_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_251_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_251_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_753_lstm_cell_753_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_753_lstm_cell_753_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_753_lstm_cell_753_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_754_lstm_cell_754_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_754_lstm_cell_754_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_754_lstm_cell_754_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_755_lstm_cell_755_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_755_lstm_cell_755_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_755_lstm_cell_755_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_251_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_251_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_753_lstm_cell_753_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_753_lstm_cell_753_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_753_lstm_cell_753_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_754_lstm_cell_754_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_754_lstm_cell_754_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_754_lstm_cell_754_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_755_lstm_cell_755_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_755_lstm_cell_755_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_755_lstm_cell_755_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_251_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_251_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_753_lstm_cell_753_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_753_lstm_cell_753_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_753_lstm_cell_753_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_754_lstm_cell_754_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_754_lstm_cell_754_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_754_lstm_cell_754_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_755_lstm_cell_755_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_755_lstm_cell_755_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_755_lstm_cell_755_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
E__inference_lstm_755_layer_call_and_return_conditional_losses_4640877

inputs'
lstm_cell_755_4640795:2('
lstm_cell_755_4640797:
(#
lstm_cell_755_4640799:(
identity??%lstm_cell_755/StatefulPartitionedCall?while;
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
%lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_755_4640795lstm_cell_755_4640797lstm_cell_755_4640799*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640794n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_755_4640795lstm_cell_755_4640797lstm_cell_755_4640799*
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
while_body_4640808*
condR
while_cond_4640807*K
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
NoOpNoOp&^lstm_cell_755/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_755/StatefulPartitionedCall%lstm_cell_755/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4644529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644529___redundant_placeholder05
1while_while_cond_4644529___redundant_placeholder15
1while_while_cond_4644529___redundant_placeholder25
1while_while_cond_4644529___redundant_placeholder3
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
while_cond_4644815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644815___redundant_placeholder05
1while_while_cond_4644815___redundant_placeholder15
1while_while_cond_4644815___redundant_placeholder25
1while_while_cond_4644815___redundant_placeholder3
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
while_cond_4643726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643726___redundant_placeholder05
1while_while_cond_4643726___redundant_placeholder15
1while_while_cond_4643726___redundant_placeholder25
1while_while_cond_4643726___redundant_placeholder3
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644614
inputs_0>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4644530*
condR
while_cond_4644529*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_251_layer_call_and_return_conditional_losses_4641551

inputs#
lstm_753_4641227:	?#
lstm_753_4641229:	d?
lstm_753_4641231:	?#
lstm_754_4641377:	d?#
lstm_754_4641379:	2?
lstm_754_4641381:	?"
lstm_755_4641527:2("
lstm_755_4641529:
(
lstm_755_4641531:(#
dense_251_4641545:

dense_251_4641547:
identity??!dense_251/StatefulPartitionedCall? lstm_753/StatefulPartitionedCall? lstm_754/StatefulPartitionedCall? lstm_755/StatefulPartitionedCall?
 lstm_753/StatefulPartitionedCallStatefulPartitionedCallinputslstm_753_4641227lstm_753_4641229lstm_753_4641231*
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4641226?
 lstm_754/StatefulPartitionedCallStatefulPartitionedCall)lstm_753/StatefulPartitionedCall:output:0lstm_754_4641377lstm_754_4641379lstm_754_4641381*
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641376?
 lstm_755/StatefulPartitionedCallStatefulPartitionedCall)lstm_754/StatefulPartitionedCall:output:0lstm_755_4641527lstm_755_4641529lstm_755_4641531*
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641526?
!dense_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_755/StatefulPartitionedCall:output:0dense_251_4641545dense_251_4641547*
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4641544y
IdentityIdentity*dense_251/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_251/StatefulPartitionedCall!^lstm_753/StatefulPartitionedCall!^lstm_754/StatefulPartitionedCall!^lstm_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2D
 lstm_753/StatefulPartitionedCall lstm_753/StatefulPartitionedCall2D
 lstm_754/StatefulPartitionedCall lstm_754/StatefulPartitionedCall2D
 lstm_755/StatefulPartitionedCall lstm_755/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4642287
lstm_753_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_753_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4640027o
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
_user_specified_namelstm_753_input
?
?
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642222
lstm_753_input#
lstm_753_4642195:	?#
lstm_753_4642197:	d?
lstm_753_4642199:	?#
lstm_754_4642202:	d?#
lstm_754_4642204:	2?
lstm_754_4642206:	?"
lstm_755_4642209:2("
lstm_755_4642211:
(
lstm_755_4642213:(#
dense_251_4642216:

dense_251_4642218:
identity??!dense_251/StatefulPartitionedCall? lstm_753/StatefulPartitionedCall? lstm_754/StatefulPartitionedCall? lstm_755/StatefulPartitionedCall?
 lstm_753/StatefulPartitionedCallStatefulPartitionedCalllstm_753_inputlstm_753_4642195lstm_753_4642197lstm_753_4642199*
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4641226?
 lstm_754/StatefulPartitionedCallStatefulPartitionedCall)lstm_753/StatefulPartitionedCall:output:0lstm_754_4642202lstm_754_4642204lstm_754_4642206*
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641376?
 lstm_755/StatefulPartitionedCallStatefulPartitionedCall)lstm_754/StatefulPartitionedCall:output:0lstm_755_4642209lstm_755_4642211lstm_755_4642213*
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641526?
!dense_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_755/StatefulPartitionedCall:output:0dense_251_4642216dense_251_4642218*
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4641544y
IdentityIdentity*dense_251/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_251/StatefulPartitionedCall!^lstm_753/StatefulPartitionedCall!^lstm_754/StatefulPartitionedCall!^lstm_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2D
 lstm_753/StatefulPartitionedCall lstm_753/StatefulPartitionedCall2D
 lstm_754/StatefulPartitionedCall lstm_754/StatefulPartitionedCall2D
 lstm_755/StatefulPartitionedCall lstm_755/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_753_input
?
?
while_cond_4640807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640807___redundant_placeholder05
1while_while_cond_4640807___redundant_placeholder15
1while_while_cond_4640807___redundant_placeholder25
1while_while_cond_4640807___redundant_placeholder3
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4640177

inputs(
lstm_cell_753_4640095:	?(
lstm_cell_753_4640097:	d?$
lstm_cell_753_4640099:	?
identity??%lstm_cell_753/StatefulPartitionedCall?while;
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
%lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_753_4640095lstm_cell_753_4640097lstm_cell_753_4640099*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640094n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_753_4640095lstm_cell_753_4640097lstm_cell_753_4640099*
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
while_body_4640108*
condR
while_cond_4640107*K
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
NoOpNoOp&^lstm_cell_753/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_753/StatefulPartitionedCall%lstm_cell_753/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_755_while_body_4643105.
*lstm_755_while_lstm_755_while_loop_counter4
0lstm_755_while_lstm_755_while_maximum_iterations
lstm_755_while_placeholder 
lstm_755_while_placeholder_1 
lstm_755_while_placeholder_2 
lstm_755_while_placeholder_3-
)lstm_755_while_lstm_755_strided_slice_1_0i
elstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0:2(Q
?lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(L
>lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0:(
lstm_755_while_identity
lstm_755_while_identity_1
lstm_755_while_identity_2
lstm_755_while_identity_3
lstm_755_while_identity_4
lstm_755_while_identity_5+
'lstm_755_while_lstm_755_strided_slice_1g
clstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensorM
;lstm_755_while_lstm_cell_755_matmul_readvariableop_resource:2(O
=lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource:
(J
<lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource:(??3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp?2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp?4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp?
@lstm_755/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_755/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensor_0lstm_755_while_placeholderIlstm_755/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp=lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_755/while/lstm_cell_755/MatMulMatMul9lstm_755/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp?lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_755/while/lstm_cell_755/MatMul_1MatMullstm_755_while_placeholder_2<lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_755/while/lstm_cell_755/addAddV2-lstm_755/while/lstm_cell_755/MatMul:product:0/lstm_755/while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp>lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_755/while/lstm_cell_755/BiasAddBiasAdd$lstm_755/while/lstm_cell_755/add:z:0;lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_755/while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_755/while/lstm_cell_755/splitSplit5lstm_755/while/lstm_cell_755/split/split_dim:output:0-lstm_755/while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_755/while/lstm_cell_755/SigmoidSigmoid+lstm_755/while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_755/while/lstm_cell_755/Sigmoid_1Sigmoid+lstm_755/while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_755/while/lstm_cell_755/mulMul*lstm_755/while/lstm_cell_755/Sigmoid_1:y:0lstm_755_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_755/while/lstm_cell_755/ReluRelu+lstm_755/while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_755/while/lstm_cell_755/mul_1Mul(lstm_755/while/lstm_cell_755/Sigmoid:y:0/lstm_755/while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_755/while/lstm_cell_755/add_1AddV2$lstm_755/while/lstm_cell_755/mul:z:0&lstm_755/while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_755/while/lstm_cell_755/Sigmoid_2Sigmoid+lstm_755/while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_755/while/lstm_cell_755/Relu_1Relu&lstm_755/while/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_755/while/lstm_cell_755/mul_2Mul*lstm_755/while/lstm_cell_755/Sigmoid_2:y:01lstm_755/while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_755/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_755_while_placeholder_1lstm_755_while_placeholder&lstm_755/while/lstm_cell_755/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_755/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_755/while/addAddV2lstm_755_while_placeholderlstm_755/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_755/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_755/while/add_1AddV2*lstm_755_while_lstm_755_while_loop_counterlstm_755/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_755/while/IdentityIdentitylstm_755/while/add_1:z:0^lstm_755/while/NoOp*
T0*
_output_shapes
: ?
lstm_755/while/Identity_1Identity0lstm_755_while_lstm_755_while_maximum_iterations^lstm_755/while/NoOp*
T0*
_output_shapes
: t
lstm_755/while/Identity_2Identitylstm_755/while/add:z:0^lstm_755/while/NoOp*
T0*
_output_shapes
: ?
lstm_755/while/Identity_3IdentityClstm_755/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_755/while/NoOp*
T0*
_output_shapes
: ?
lstm_755/while/Identity_4Identity&lstm_755/while/lstm_cell_755/mul_2:z:0^lstm_755/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_755/while/Identity_5Identity&lstm_755/while/lstm_cell_755/add_1:z:0^lstm_755/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_755/while/NoOpNoOp4^lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp3^lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp5^lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_755_while_identity lstm_755/while/Identity:output:0"?
lstm_755_while_identity_1"lstm_755/while/Identity_1:output:0"?
lstm_755_while_identity_2"lstm_755/while/Identity_2:output:0"?
lstm_755_while_identity_3"lstm_755/while/Identity_3:output:0"?
lstm_755_while_identity_4"lstm_755/while/Identity_4:output:0"?
lstm_755_while_identity_5"lstm_755/while/Identity_5:output:0"T
'lstm_755_while_lstm_755_strided_slice_1)lstm_755_while_lstm_755_strided_slice_1_0"~
<lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource>lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0"?
=lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource?lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0"|
;lstm_755_while_lstm_cell_755_matmul_readvariableop_resource=lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0"?
clstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensorelstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp2h
2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp2l
4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4643584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4645062

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

?
0__inference_sequential_251_layer_call_fn_4642341

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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642140o
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
while_body_4641292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4645043

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4644959*
condR
while_cond_4644958*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4645160

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
?#
?
while_body_4640108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_753_4640132_0:	?0
while_lstm_cell_753_4640134_0:	d?,
while_lstm_cell_753_4640136_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_753_4640132:	?.
while_lstm_cell_753_4640134:	d?*
while_lstm_cell_753_4640136:	???+while/lstm_cell_753/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_753_4640132_0while_lstm_cell_753_4640134_0while_lstm_cell_753_4640136_0*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640094?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_753/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_753/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_753/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_753/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_753_4640132while_lstm_cell_753_4640132_0"<
while_lstm_cell_753_4640134while_lstm_cell_753_4640134_0"<
while_lstm_cell_753_4640136while_lstm_cell_753_4640136_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_753/StatefulPartitionedCall+while/lstm_cell_753/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4641544

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
?T
?
*sequential_251_lstm_753_while_body_4639659L
Hsequential_251_lstm_753_while_sequential_251_lstm_753_while_loop_counterR
Nsequential_251_lstm_753_while_sequential_251_lstm_753_while_maximum_iterations-
)sequential_251_lstm_753_while_placeholder/
+sequential_251_lstm_753_while_placeholder_1/
+sequential_251_lstm_753_while_placeholder_2/
+sequential_251_lstm_753_while_placeholder_3K
Gsequential_251_lstm_753_while_sequential_251_lstm_753_strided_slice_1_0?
?sequential_251_lstm_753_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_753_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_251_lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0:	?a
Nsequential_251_lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?\
Msequential_251_lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0:	?*
&sequential_251_lstm_753_while_identity,
(sequential_251_lstm_753_while_identity_1,
(sequential_251_lstm_753_while_identity_2,
(sequential_251_lstm_753_while_identity_3,
(sequential_251_lstm_753_while_identity_4,
(sequential_251_lstm_753_while_identity_5I
Esequential_251_lstm_753_while_sequential_251_lstm_753_strided_slice_1?
?sequential_251_lstm_753_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_753_tensorarrayunstack_tensorlistfromtensor]
Jsequential_251_lstm_753_while_lstm_cell_753_matmul_readvariableop_resource:	?_
Lsequential_251_lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource:	d?Z
Ksequential_251_lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource:	???Bsequential_251/lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp?Asequential_251/lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp?Csequential_251/lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp?
Osequential_251/lstm_753/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_251/lstm_753/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_251_lstm_753_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_753_tensorarrayunstack_tensorlistfromtensor_0)sequential_251_lstm_753_while_placeholderXsequential_251/lstm_753/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_251/lstm_753/while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOpLsequential_251_lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_251/lstm_753/while/lstm_cell_753/MatMulMatMulHsequential_251/lstm_753/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_251/lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_251/lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOpNsequential_251_lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_251/lstm_753/while/lstm_cell_753/MatMul_1MatMul+sequential_251_lstm_753_while_placeholder_2Ksequential_251/lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_251/lstm_753/while/lstm_cell_753/addAddV2<sequential_251/lstm_753/while/lstm_cell_753/MatMul:product:0>sequential_251/lstm_753/while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_251/lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOpMsequential_251_lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_251/lstm_753/while/lstm_cell_753/BiasAddBiasAdd3sequential_251/lstm_753/while/lstm_cell_753/add:z:0Jsequential_251/lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_251/lstm_753/while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_251/lstm_753/while/lstm_cell_753/splitSplitDsequential_251/lstm_753/while/lstm_cell_753/split/split_dim:output:0<sequential_251/lstm_753/while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_251/lstm_753/while/lstm_cell_753/SigmoidSigmoid:sequential_251/lstm_753/while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_251/lstm_753/while/lstm_cell_753/Sigmoid_1Sigmoid:sequential_251/lstm_753/while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_251/lstm_753/while/lstm_cell_753/mulMul9sequential_251/lstm_753/while/lstm_cell_753/Sigmoid_1:y:0+sequential_251_lstm_753_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_251/lstm_753/while/lstm_cell_753/ReluRelu:sequential_251/lstm_753/while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_251/lstm_753/while/lstm_cell_753/mul_1Mul7sequential_251/lstm_753/while/lstm_cell_753/Sigmoid:y:0>sequential_251/lstm_753/while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_251/lstm_753/while/lstm_cell_753/add_1AddV23sequential_251/lstm_753/while/lstm_cell_753/mul:z:05sequential_251/lstm_753/while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_251/lstm_753/while/lstm_cell_753/Sigmoid_2Sigmoid:sequential_251/lstm_753/while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_251/lstm_753/while/lstm_cell_753/Relu_1Relu5sequential_251/lstm_753/while/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_251/lstm_753/while/lstm_cell_753/mul_2Mul9sequential_251/lstm_753/while/lstm_cell_753/Sigmoid_2:y:0@sequential_251/lstm_753/while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_251/lstm_753/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_251_lstm_753_while_placeholder_1)sequential_251_lstm_753_while_placeholder5sequential_251/lstm_753/while/lstm_cell_753/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_251/lstm_753/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_251/lstm_753/while/addAddV2)sequential_251_lstm_753_while_placeholder,sequential_251/lstm_753/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_251/lstm_753/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_251/lstm_753/while/add_1AddV2Hsequential_251_lstm_753_while_sequential_251_lstm_753_while_loop_counter.sequential_251/lstm_753/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_251/lstm_753/while/IdentityIdentity'sequential_251/lstm_753/while/add_1:z:0#^sequential_251/lstm_753/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_753/while/Identity_1IdentityNsequential_251_lstm_753_while_sequential_251_lstm_753_while_maximum_iterations#^sequential_251/lstm_753/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_753/while/Identity_2Identity%sequential_251/lstm_753/while/add:z:0#^sequential_251/lstm_753/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_753/while/Identity_3IdentityRsequential_251/lstm_753/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_251/lstm_753/while/NoOp*
T0*
_output_shapes
: ?
(sequential_251/lstm_753/while/Identity_4Identity5sequential_251/lstm_753/while/lstm_cell_753/mul_2:z:0#^sequential_251/lstm_753/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_251/lstm_753/while/Identity_5Identity5sequential_251/lstm_753/while/lstm_cell_753/add_1:z:0#^sequential_251/lstm_753/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_251/lstm_753/while/NoOpNoOpC^sequential_251/lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOpB^sequential_251/lstm_753/while/lstm_cell_753/MatMul/ReadVariableOpD^sequential_251/lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_251_lstm_753_while_identity/sequential_251/lstm_753/while/Identity:output:0"]
(sequential_251_lstm_753_while_identity_11sequential_251/lstm_753/while/Identity_1:output:0"]
(sequential_251_lstm_753_while_identity_21sequential_251/lstm_753/while/Identity_2:output:0"]
(sequential_251_lstm_753_while_identity_31sequential_251/lstm_753/while/Identity_3:output:0"]
(sequential_251_lstm_753_while_identity_41sequential_251/lstm_753/while/Identity_4:output:0"]
(sequential_251_lstm_753_while_identity_51sequential_251/lstm_753/while/Identity_5:output:0"?
Ksequential_251_lstm_753_while_lstm_cell_753_biasadd_readvariableop_resourceMsequential_251_lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0"?
Lsequential_251_lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resourceNsequential_251_lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0"?
Jsequential_251_lstm_753_while_lstm_cell_753_matmul_readvariableop_resourceLsequential_251_lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0"?
Esequential_251_lstm_753_while_sequential_251_lstm_753_strided_slice_1Gsequential_251_lstm_753_while_sequential_251_lstm_753_strided_slice_1_0"?
?sequential_251_lstm_753_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_753_tensorarrayunstack_tensorlistfromtensor?sequential_251_lstm_753_while_tensorarrayv2read_tensorlistgetitem_sequential_251_lstm_753_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_251/lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOpBsequential_251/lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp2?
Asequential_251/lstm_753/while/lstm_cell_753/MatMul/ReadVariableOpAsequential_251/lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp2?
Csequential_251/lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOpCsequential_251/lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4644199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644199___redundant_placeholder05
1while_while_cond_4644199___redundant_placeholder15
1while_while_cond_4644199___redundant_placeholder25
1while_while_cond_4644199___redundant_placeholder3
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
while_cond_4641987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641987___redundant_placeholder05
1while_while_cond_4641987___redundant_placeholder15
1while_while_cond_4641987___redundant_placeholder25
1while_while_cond_4641987___redundant_placeholder3
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
?
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642252
lstm_753_input#
lstm_753_4642225:	?#
lstm_753_4642227:	d?
lstm_753_4642229:	?#
lstm_754_4642232:	d?#
lstm_754_4642234:	2?
lstm_754_4642236:	?"
lstm_755_4642239:2("
lstm_755_4642241:
(
lstm_755_4642243:(#
dense_251_4642246:

dense_251_4642248:
identity??!dense_251/StatefulPartitionedCall? lstm_753/StatefulPartitionedCall? lstm_754/StatefulPartitionedCall? lstm_755/StatefulPartitionedCall?
 lstm_753/StatefulPartitionedCallStatefulPartitionedCalllstm_753_inputlstm_753_4642225lstm_753_4642227lstm_753_4642229*
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4642072?
 lstm_754/StatefulPartitionedCallStatefulPartitionedCall)lstm_753/StatefulPartitionedCall:output:0lstm_754_4642232lstm_754_4642234lstm_754_4642236*
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641907?
 lstm_755/StatefulPartitionedCallStatefulPartitionedCall)lstm_754/StatefulPartitionedCall:output:0lstm_755_4642239lstm_755_4642241lstm_755_4642243*
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4641742?
!dense_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_755/StatefulPartitionedCall:output:0dense_251_4642246dense_251_4642248*
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4641544y
IdentityIdentity*dense_251/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_251/StatefulPartitionedCall!^lstm_753/StatefulPartitionedCall!^lstm_754/StatefulPartitionedCall!^lstm_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2D
 lstm_753/StatefulPartitionedCall lstm_753/StatefulPartitionedCall2D
 lstm_754/StatefulPartitionedCall lstm_754/StatefulPartitionedCall2D
 lstm_755/StatefulPartitionedCall lstm_755/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_753_input
?
?
*__inference_lstm_753_layer_call_fn_4643239

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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4642072s
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4645324

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
lstm_754_while_cond_4642538.
*lstm_754_while_lstm_754_while_loop_counter4
0lstm_754_while_lstm_754_while_maximum_iterations
lstm_754_while_placeholder 
lstm_754_while_placeholder_1 
lstm_754_while_placeholder_2 
lstm_754_while_placeholder_30
,lstm_754_while_less_lstm_754_strided_slice_1G
Clstm_754_while_lstm_754_while_cond_4642538___redundant_placeholder0G
Clstm_754_while_lstm_754_while_cond_4642538___redundant_placeholder1G
Clstm_754_while_lstm_754_while_cond_4642538___redundant_placeholder2G
Clstm_754_while_lstm_754_while_cond_4642538___redundant_placeholder3
lstm_754_while_identity
?
lstm_754/while/LessLesslstm_754_while_placeholder,lstm_754_while_less_lstm_754_strided_slice_1*
T0*
_output_shapes
: ]
lstm_754/while/IdentityIdentitylstm_754/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_754_while_identity lstm_754/while/Identity:output:0*(
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
0__inference_sequential_251_layer_call_fn_4642192
lstm_753_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_753_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642140o
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
_user_specified_namelstm_753_input
?
?
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640794

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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4640940

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
?#
?
while_body_4640299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_753_4640323_0:	?0
while_lstm_cell_753_4640325_0:	d?,
while_lstm_cell_753_4640327_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_753_4640323:	?.
while_lstm_cell_753_4640325:	d?*
while_lstm_cell_753_4640327:	???+while/lstm_cell_753/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_753_4640323_0while_lstm_cell_753_4640325_0while_lstm_cell_753_4640327_0*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640240?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_753/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_753/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_753/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_753/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_753_4640323while_lstm_cell_753_4640323_0"<
while_lstm_cell_753_4640325while_lstm_cell_753_4640325_0"<
while_lstm_cell_753_4640327while_lstm_cell_753_4640327_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_753/StatefulPartitionedCall+while/lstm_cell_753/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4644673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4641657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641657___redundant_placeholder05
1while_while_cond_4641657___redundant_placeholder15
1while_while_cond_4641657___redundant_placeholder25
1while_while_cond_4641657___redundant_placeholder3
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
"__inference__wrapped_model_4640027
lstm_753_inputW
Dsequential_251_lstm_753_lstm_cell_753_matmul_readvariableop_resource:	?Y
Fsequential_251_lstm_753_lstm_cell_753_matmul_1_readvariableop_resource:	d?T
Esequential_251_lstm_753_lstm_cell_753_biasadd_readvariableop_resource:	?W
Dsequential_251_lstm_754_lstm_cell_754_matmul_readvariableop_resource:	d?Y
Fsequential_251_lstm_754_lstm_cell_754_matmul_1_readvariableop_resource:	2?T
Esequential_251_lstm_754_lstm_cell_754_biasadd_readvariableop_resource:	?V
Dsequential_251_lstm_755_lstm_cell_755_matmul_readvariableop_resource:2(X
Fsequential_251_lstm_755_lstm_cell_755_matmul_1_readvariableop_resource:
(S
Esequential_251_lstm_755_lstm_cell_755_biasadd_readvariableop_resource:(I
7sequential_251_dense_251_matmul_readvariableop_resource:
F
8sequential_251_dense_251_biasadd_readvariableop_resource:
identity??/sequential_251/dense_251/BiasAdd/ReadVariableOp?.sequential_251/dense_251/MatMul/ReadVariableOp?<sequential_251/lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp?;sequential_251/lstm_753/lstm_cell_753/MatMul/ReadVariableOp?=sequential_251/lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp?sequential_251/lstm_753/while?<sequential_251/lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp?;sequential_251/lstm_754/lstm_cell_754/MatMul/ReadVariableOp?=sequential_251/lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp?sequential_251/lstm_754/while?<sequential_251/lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp?;sequential_251/lstm_755/lstm_cell_755/MatMul/ReadVariableOp?=sequential_251/lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp?sequential_251/lstm_755/while[
sequential_251/lstm_753/ShapeShapelstm_753_input*
T0*
_output_shapes
:u
+sequential_251/lstm_753/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_251/lstm_753/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_251/lstm_753/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_251/lstm_753/strided_sliceStridedSlice&sequential_251/lstm_753/Shape:output:04sequential_251/lstm_753/strided_slice/stack:output:06sequential_251/lstm_753/strided_slice/stack_1:output:06sequential_251/lstm_753/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_251/lstm_753/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_251/lstm_753/zeros/packedPack.sequential_251/lstm_753/strided_slice:output:0/sequential_251/lstm_753/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_251/lstm_753/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_251/lstm_753/zerosFill-sequential_251/lstm_753/zeros/packed:output:0,sequential_251/lstm_753/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_251/lstm_753/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_251/lstm_753/zeros_1/packedPack.sequential_251/lstm_753/strided_slice:output:01sequential_251/lstm_753/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_251/lstm_753/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_251/lstm_753/zeros_1Fill/sequential_251/lstm_753/zeros_1/packed:output:0.sequential_251/lstm_753/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_251/lstm_753/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_251/lstm_753/transpose	Transposelstm_753_input/sequential_251/lstm_753/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_251/lstm_753/Shape_1Shape%sequential_251/lstm_753/transpose:y:0*
T0*
_output_shapes
:w
-sequential_251/lstm_753/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_753/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_251/lstm_753/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_753/strided_slice_1StridedSlice(sequential_251/lstm_753/Shape_1:output:06sequential_251/lstm_753/strided_slice_1/stack:output:08sequential_251/lstm_753/strided_slice_1/stack_1:output:08sequential_251/lstm_753/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_251/lstm_753/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_251/lstm_753/TensorArrayV2TensorListReserve<sequential_251/lstm_753/TensorArrayV2/element_shape:output:00sequential_251/lstm_753/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_251/lstm_753/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_251/lstm_753/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_251/lstm_753/transpose:y:0Vsequential_251/lstm_753/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_251/lstm_753/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_753/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_251/lstm_753/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_753/strided_slice_2StridedSlice%sequential_251/lstm_753/transpose:y:06sequential_251/lstm_753/strided_slice_2/stack:output:08sequential_251/lstm_753/strided_slice_2/stack_1:output:08sequential_251/lstm_753/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_251/lstm_753/lstm_cell_753/MatMul/ReadVariableOpReadVariableOpDsequential_251_lstm_753_lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_251/lstm_753/lstm_cell_753/MatMulMatMul0sequential_251/lstm_753/strided_slice_2:output:0Csequential_251/lstm_753/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_251/lstm_753/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOpFsequential_251_lstm_753_lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_251/lstm_753/lstm_cell_753/MatMul_1MatMul&sequential_251/lstm_753/zeros:output:0Esequential_251/lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_251/lstm_753/lstm_cell_753/addAddV26sequential_251/lstm_753/lstm_cell_753/MatMul:product:08sequential_251/lstm_753/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_251/lstm_753/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOpEsequential_251_lstm_753_lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_251/lstm_753/lstm_cell_753/BiasAddBiasAdd-sequential_251/lstm_753/lstm_cell_753/add:z:0Dsequential_251/lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_251/lstm_753/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_251/lstm_753/lstm_cell_753/splitSplit>sequential_251/lstm_753/lstm_cell_753/split/split_dim:output:06sequential_251/lstm_753/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_251/lstm_753/lstm_cell_753/SigmoidSigmoid4sequential_251/lstm_753/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_251/lstm_753/lstm_cell_753/Sigmoid_1Sigmoid4sequential_251/lstm_753/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_251/lstm_753/lstm_cell_753/mulMul3sequential_251/lstm_753/lstm_cell_753/Sigmoid_1:y:0(sequential_251/lstm_753/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_251/lstm_753/lstm_cell_753/ReluRelu4sequential_251/lstm_753/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_251/lstm_753/lstm_cell_753/mul_1Mul1sequential_251/lstm_753/lstm_cell_753/Sigmoid:y:08sequential_251/lstm_753/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_251/lstm_753/lstm_cell_753/add_1AddV2-sequential_251/lstm_753/lstm_cell_753/mul:z:0/sequential_251/lstm_753/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_251/lstm_753/lstm_cell_753/Sigmoid_2Sigmoid4sequential_251/lstm_753/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_251/lstm_753/lstm_cell_753/Relu_1Relu/sequential_251/lstm_753/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_251/lstm_753/lstm_cell_753/mul_2Mul3sequential_251/lstm_753/lstm_cell_753/Sigmoid_2:y:0:sequential_251/lstm_753/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_251/lstm_753/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_251/lstm_753/TensorArrayV2_1TensorListReserve>sequential_251/lstm_753/TensorArrayV2_1/element_shape:output:00sequential_251/lstm_753/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_251/lstm_753/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_251/lstm_753/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_251/lstm_753/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_251/lstm_753/whileWhile3sequential_251/lstm_753/while/loop_counter:output:09sequential_251/lstm_753/while/maximum_iterations:output:0%sequential_251/lstm_753/time:output:00sequential_251/lstm_753/TensorArrayV2_1:handle:0&sequential_251/lstm_753/zeros:output:0(sequential_251/lstm_753/zeros_1:output:00sequential_251/lstm_753/strided_slice_1:output:0Osequential_251/lstm_753/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_251_lstm_753_lstm_cell_753_matmul_readvariableop_resourceFsequential_251_lstm_753_lstm_cell_753_matmul_1_readvariableop_resourceEsequential_251_lstm_753_lstm_cell_753_biasadd_readvariableop_resource*
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
*sequential_251_lstm_753_while_body_4639659*6
cond.R,
*sequential_251_lstm_753_while_cond_4639658*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_251/lstm_753/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_251/lstm_753/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_251/lstm_753/while:output:3Qsequential_251/lstm_753/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_251/lstm_753/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_251/lstm_753/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_753/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_753/strided_slice_3StridedSliceCsequential_251/lstm_753/TensorArrayV2Stack/TensorListStack:tensor:06sequential_251/lstm_753/strided_slice_3/stack:output:08sequential_251/lstm_753/strided_slice_3/stack_1:output:08sequential_251/lstm_753/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_251/lstm_753/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_251/lstm_753/transpose_1	TransposeCsequential_251/lstm_753/TensorArrayV2Stack/TensorListStack:tensor:01sequential_251/lstm_753/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_251/lstm_753/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_251/lstm_754/ShapeShape'sequential_251/lstm_753/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_251/lstm_754/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_251/lstm_754/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_251/lstm_754/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_251/lstm_754/strided_sliceStridedSlice&sequential_251/lstm_754/Shape:output:04sequential_251/lstm_754/strided_slice/stack:output:06sequential_251/lstm_754/strided_slice/stack_1:output:06sequential_251/lstm_754/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_251/lstm_754/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_251/lstm_754/zeros/packedPack.sequential_251/lstm_754/strided_slice:output:0/sequential_251/lstm_754/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_251/lstm_754/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_251/lstm_754/zerosFill-sequential_251/lstm_754/zeros/packed:output:0,sequential_251/lstm_754/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_251/lstm_754/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_251/lstm_754/zeros_1/packedPack.sequential_251/lstm_754/strided_slice:output:01sequential_251/lstm_754/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_251/lstm_754/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_251/lstm_754/zeros_1Fill/sequential_251/lstm_754/zeros_1/packed:output:0.sequential_251/lstm_754/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_251/lstm_754/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_251/lstm_754/transpose	Transpose'sequential_251/lstm_753/transpose_1:y:0/sequential_251/lstm_754/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_251/lstm_754/Shape_1Shape%sequential_251/lstm_754/transpose:y:0*
T0*
_output_shapes
:w
-sequential_251/lstm_754/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_754/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_251/lstm_754/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_754/strided_slice_1StridedSlice(sequential_251/lstm_754/Shape_1:output:06sequential_251/lstm_754/strided_slice_1/stack:output:08sequential_251/lstm_754/strided_slice_1/stack_1:output:08sequential_251/lstm_754/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_251/lstm_754/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_251/lstm_754/TensorArrayV2TensorListReserve<sequential_251/lstm_754/TensorArrayV2/element_shape:output:00sequential_251/lstm_754/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_251/lstm_754/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_251/lstm_754/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_251/lstm_754/transpose:y:0Vsequential_251/lstm_754/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_251/lstm_754/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_754/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_251/lstm_754/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_754/strided_slice_2StridedSlice%sequential_251/lstm_754/transpose:y:06sequential_251/lstm_754/strided_slice_2/stack:output:08sequential_251/lstm_754/strided_slice_2/stack_1:output:08sequential_251/lstm_754/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_251/lstm_754/lstm_cell_754/MatMul/ReadVariableOpReadVariableOpDsequential_251_lstm_754_lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_251/lstm_754/lstm_cell_754/MatMulMatMul0sequential_251/lstm_754/strided_slice_2:output:0Csequential_251/lstm_754/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_251/lstm_754/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOpFsequential_251_lstm_754_lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_251/lstm_754/lstm_cell_754/MatMul_1MatMul&sequential_251/lstm_754/zeros:output:0Esequential_251/lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_251/lstm_754/lstm_cell_754/addAddV26sequential_251/lstm_754/lstm_cell_754/MatMul:product:08sequential_251/lstm_754/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_251/lstm_754/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOpEsequential_251_lstm_754_lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_251/lstm_754/lstm_cell_754/BiasAddBiasAdd-sequential_251/lstm_754/lstm_cell_754/add:z:0Dsequential_251/lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_251/lstm_754/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_251/lstm_754/lstm_cell_754/splitSplit>sequential_251/lstm_754/lstm_cell_754/split/split_dim:output:06sequential_251/lstm_754/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_251/lstm_754/lstm_cell_754/SigmoidSigmoid4sequential_251/lstm_754/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_251/lstm_754/lstm_cell_754/Sigmoid_1Sigmoid4sequential_251/lstm_754/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_251/lstm_754/lstm_cell_754/mulMul3sequential_251/lstm_754/lstm_cell_754/Sigmoid_1:y:0(sequential_251/lstm_754/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_251/lstm_754/lstm_cell_754/ReluRelu4sequential_251/lstm_754/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_251/lstm_754/lstm_cell_754/mul_1Mul1sequential_251/lstm_754/lstm_cell_754/Sigmoid:y:08sequential_251/lstm_754/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_251/lstm_754/lstm_cell_754/add_1AddV2-sequential_251/lstm_754/lstm_cell_754/mul:z:0/sequential_251/lstm_754/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_251/lstm_754/lstm_cell_754/Sigmoid_2Sigmoid4sequential_251/lstm_754/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_251/lstm_754/lstm_cell_754/Relu_1Relu/sequential_251/lstm_754/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_251/lstm_754/lstm_cell_754/mul_2Mul3sequential_251/lstm_754/lstm_cell_754/Sigmoid_2:y:0:sequential_251/lstm_754/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_251/lstm_754/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_251/lstm_754/TensorArrayV2_1TensorListReserve>sequential_251/lstm_754/TensorArrayV2_1/element_shape:output:00sequential_251/lstm_754/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_251/lstm_754/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_251/lstm_754/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_251/lstm_754/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_251/lstm_754/whileWhile3sequential_251/lstm_754/while/loop_counter:output:09sequential_251/lstm_754/while/maximum_iterations:output:0%sequential_251/lstm_754/time:output:00sequential_251/lstm_754/TensorArrayV2_1:handle:0&sequential_251/lstm_754/zeros:output:0(sequential_251/lstm_754/zeros_1:output:00sequential_251/lstm_754/strided_slice_1:output:0Osequential_251/lstm_754/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_251_lstm_754_lstm_cell_754_matmul_readvariableop_resourceFsequential_251_lstm_754_lstm_cell_754_matmul_1_readvariableop_resourceEsequential_251_lstm_754_lstm_cell_754_biasadd_readvariableop_resource*
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
*sequential_251_lstm_754_while_body_4639798*6
cond.R,
*sequential_251_lstm_754_while_cond_4639797*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_251/lstm_754/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_251/lstm_754/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_251/lstm_754/while:output:3Qsequential_251/lstm_754/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_251/lstm_754/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_251/lstm_754/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_754/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_754/strided_slice_3StridedSliceCsequential_251/lstm_754/TensorArrayV2Stack/TensorListStack:tensor:06sequential_251/lstm_754/strided_slice_3/stack:output:08sequential_251/lstm_754/strided_slice_3/stack_1:output:08sequential_251/lstm_754/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_251/lstm_754/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_251/lstm_754/transpose_1	TransposeCsequential_251/lstm_754/TensorArrayV2Stack/TensorListStack:tensor:01sequential_251/lstm_754/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_251/lstm_754/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_251/lstm_755/ShapeShape'sequential_251/lstm_754/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_251/lstm_755/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_251/lstm_755/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_251/lstm_755/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_251/lstm_755/strided_sliceStridedSlice&sequential_251/lstm_755/Shape:output:04sequential_251/lstm_755/strided_slice/stack:output:06sequential_251/lstm_755/strided_slice/stack_1:output:06sequential_251/lstm_755/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_251/lstm_755/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_251/lstm_755/zeros/packedPack.sequential_251/lstm_755/strided_slice:output:0/sequential_251/lstm_755/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_251/lstm_755/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_251/lstm_755/zerosFill-sequential_251/lstm_755/zeros/packed:output:0,sequential_251/lstm_755/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_251/lstm_755/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_251/lstm_755/zeros_1/packedPack.sequential_251/lstm_755/strided_slice:output:01sequential_251/lstm_755/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_251/lstm_755/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_251/lstm_755/zeros_1Fill/sequential_251/lstm_755/zeros_1/packed:output:0.sequential_251/lstm_755/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_251/lstm_755/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_251/lstm_755/transpose	Transpose'sequential_251/lstm_754/transpose_1:y:0/sequential_251/lstm_755/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_251/lstm_755/Shape_1Shape%sequential_251/lstm_755/transpose:y:0*
T0*
_output_shapes
:w
-sequential_251/lstm_755/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_755/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_251/lstm_755/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_755/strided_slice_1StridedSlice(sequential_251/lstm_755/Shape_1:output:06sequential_251/lstm_755/strided_slice_1/stack:output:08sequential_251/lstm_755/strided_slice_1/stack_1:output:08sequential_251/lstm_755/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_251/lstm_755/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_251/lstm_755/TensorArrayV2TensorListReserve<sequential_251/lstm_755/TensorArrayV2/element_shape:output:00sequential_251/lstm_755/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_251/lstm_755/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_251/lstm_755/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_251/lstm_755/transpose:y:0Vsequential_251/lstm_755/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_251/lstm_755/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_755/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_251/lstm_755/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_755/strided_slice_2StridedSlice%sequential_251/lstm_755/transpose:y:06sequential_251/lstm_755/strided_slice_2/stack:output:08sequential_251/lstm_755/strided_slice_2/stack_1:output:08sequential_251/lstm_755/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_251/lstm_755/lstm_cell_755/MatMul/ReadVariableOpReadVariableOpDsequential_251_lstm_755_lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_251/lstm_755/lstm_cell_755/MatMulMatMul0sequential_251/lstm_755/strided_slice_2:output:0Csequential_251/lstm_755/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_251/lstm_755/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOpFsequential_251_lstm_755_lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_251/lstm_755/lstm_cell_755/MatMul_1MatMul&sequential_251/lstm_755/zeros:output:0Esequential_251/lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_251/lstm_755/lstm_cell_755/addAddV26sequential_251/lstm_755/lstm_cell_755/MatMul:product:08sequential_251/lstm_755/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_251/lstm_755/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOpEsequential_251_lstm_755_lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_251/lstm_755/lstm_cell_755/BiasAddBiasAdd-sequential_251/lstm_755/lstm_cell_755/add:z:0Dsequential_251/lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_251/lstm_755/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_251/lstm_755/lstm_cell_755/splitSplit>sequential_251/lstm_755/lstm_cell_755/split/split_dim:output:06sequential_251/lstm_755/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_251/lstm_755/lstm_cell_755/SigmoidSigmoid4sequential_251/lstm_755/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_251/lstm_755/lstm_cell_755/Sigmoid_1Sigmoid4sequential_251/lstm_755/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_251/lstm_755/lstm_cell_755/mulMul3sequential_251/lstm_755/lstm_cell_755/Sigmoid_1:y:0(sequential_251/lstm_755/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_251/lstm_755/lstm_cell_755/ReluRelu4sequential_251/lstm_755/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_251/lstm_755/lstm_cell_755/mul_1Mul1sequential_251/lstm_755/lstm_cell_755/Sigmoid:y:08sequential_251/lstm_755/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_251/lstm_755/lstm_cell_755/add_1AddV2-sequential_251/lstm_755/lstm_cell_755/mul:z:0/sequential_251/lstm_755/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_251/lstm_755/lstm_cell_755/Sigmoid_2Sigmoid4sequential_251/lstm_755/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_251/lstm_755/lstm_cell_755/Relu_1Relu/sequential_251/lstm_755/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_251/lstm_755/lstm_cell_755/mul_2Mul3sequential_251/lstm_755/lstm_cell_755/Sigmoid_2:y:0:sequential_251/lstm_755/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_251/lstm_755/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_251/lstm_755/TensorArrayV2_1TensorListReserve>sequential_251/lstm_755/TensorArrayV2_1/element_shape:output:00sequential_251/lstm_755/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_251/lstm_755/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_251/lstm_755/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_251/lstm_755/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_251/lstm_755/whileWhile3sequential_251/lstm_755/while/loop_counter:output:09sequential_251/lstm_755/while/maximum_iterations:output:0%sequential_251/lstm_755/time:output:00sequential_251/lstm_755/TensorArrayV2_1:handle:0&sequential_251/lstm_755/zeros:output:0(sequential_251/lstm_755/zeros_1:output:00sequential_251/lstm_755/strided_slice_1:output:0Osequential_251/lstm_755/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_251_lstm_755_lstm_cell_755_matmul_readvariableop_resourceFsequential_251_lstm_755_lstm_cell_755_matmul_1_readvariableop_resourceEsequential_251_lstm_755_lstm_cell_755_biasadd_readvariableop_resource*
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
*sequential_251_lstm_755_while_body_4639937*6
cond.R,
*sequential_251_lstm_755_while_cond_4639936*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_251/lstm_755/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_251/lstm_755/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_251/lstm_755/while:output:3Qsequential_251/lstm_755/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_251/lstm_755/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_251/lstm_755/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_251/lstm_755/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_251/lstm_755/strided_slice_3StridedSliceCsequential_251/lstm_755/TensorArrayV2Stack/TensorListStack:tensor:06sequential_251/lstm_755/strided_slice_3/stack:output:08sequential_251/lstm_755/strided_slice_3/stack_1:output:08sequential_251/lstm_755/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_251/lstm_755/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_251/lstm_755/transpose_1	TransposeCsequential_251/lstm_755/TensorArrayV2Stack/TensorListStack:tensor:01sequential_251/lstm_755/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_251/lstm_755/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_251/dense_251/MatMul/ReadVariableOpReadVariableOp7sequential_251_dense_251_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_251/dense_251/MatMulMatMul0sequential_251/lstm_755/strided_slice_3:output:06sequential_251/dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_251/dense_251/BiasAdd/ReadVariableOpReadVariableOp8sequential_251_dense_251_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_251/dense_251/BiasAddBiasAdd)sequential_251/dense_251/MatMul:product:07sequential_251/dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_251/dense_251/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_251/dense_251/BiasAdd/ReadVariableOp/^sequential_251/dense_251/MatMul/ReadVariableOp=^sequential_251/lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp<^sequential_251/lstm_753/lstm_cell_753/MatMul/ReadVariableOp>^sequential_251/lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp^sequential_251/lstm_753/while=^sequential_251/lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp<^sequential_251/lstm_754/lstm_cell_754/MatMul/ReadVariableOp>^sequential_251/lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp^sequential_251/lstm_754/while=^sequential_251/lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp<^sequential_251/lstm_755/lstm_cell_755/MatMul/ReadVariableOp>^sequential_251/lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp^sequential_251/lstm_755/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_251/dense_251/BiasAdd/ReadVariableOp/sequential_251/dense_251/BiasAdd/ReadVariableOp2`
.sequential_251/dense_251/MatMul/ReadVariableOp.sequential_251/dense_251/MatMul/ReadVariableOp2|
<sequential_251/lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp<sequential_251/lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp2z
;sequential_251/lstm_753/lstm_cell_753/MatMul/ReadVariableOp;sequential_251/lstm_753/lstm_cell_753/MatMul/ReadVariableOp2~
=sequential_251/lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp=sequential_251/lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp2>
sequential_251/lstm_753/whilesequential_251/lstm_753/while2|
<sequential_251/lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp<sequential_251/lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp2z
;sequential_251/lstm_754/lstm_cell_754/MatMul/ReadVariableOp;sequential_251/lstm_754/lstm_cell_754/MatMul/ReadVariableOp2~
=sequential_251/lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp=sequential_251/lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp2>
sequential_251/lstm_754/whilesequential_251/lstm_754/while2|
<sequential_251/lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp<sequential_251/lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp2z
;sequential_251/lstm_755/lstm_cell_755/MatMul/ReadVariableOp;sequential_251/lstm_755/lstm_cell_755/MatMul/ReadVariableOp2~
=sequential_251/lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp=sequential_251/lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp2>
sequential_251/lstm_755/whilesequential_251/lstm_755/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_753_input
?C
?

lstm_753_while_body_4642827.
*lstm_753_while_lstm_753_while_loop_counter4
0lstm_753_while_lstm_753_while_maximum_iterations
lstm_753_while_placeholder 
lstm_753_while_placeholder_1 
lstm_753_while_placeholder_2 
lstm_753_while_placeholder_3-
)lstm_753_while_lstm_753_strided_slice_1_0i
elstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0:	?R
?lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?M
>lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
lstm_753_while_identity
lstm_753_while_identity_1
lstm_753_while_identity_2
lstm_753_while_identity_3
lstm_753_while_identity_4
lstm_753_while_identity_5+
'lstm_753_while_lstm_753_strided_slice_1g
clstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensorN
;lstm_753_while_lstm_cell_753_matmul_readvariableop_resource:	?P
=lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource:	d?K
<lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource:	???3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp?2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp?4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp?
@lstm_753/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_753/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensor_0lstm_753_while_placeholderIlstm_753/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp=lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_753/while/lstm_cell_753/MatMulMatMul9lstm_753/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp?lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_753/while/lstm_cell_753/MatMul_1MatMullstm_753_while_placeholder_2<lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_753/while/lstm_cell_753/addAddV2-lstm_753/while/lstm_cell_753/MatMul:product:0/lstm_753/while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp>lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_753/while/lstm_cell_753/BiasAddBiasAdd$lstm_753/while/lstm_cell_753/add:z:0;lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_753/while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_753/while/lstm_cell_753/splitSplit5lstm_753/while/lstm_cell_753/split/split_dim:output:0-lstm_753/while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_753/while/lstm_cell_753/SigmoidSigmoid+lstm_753/while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_753/while/lstm_cell_753/Sigmoid_1Sigmoid+lstm_753/while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_753/while/lstm_cell_753/mulMul*lstm_753/while/lstm_cell_753/Sigmoid_1:y:0lstm_753_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_753/while/lstm_cell_753/ReluRelu+lstm_753/while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_753/while/lstm_cell_753/mul_1Mul(lstm_753/while/lstm_cell_753/Sigmoid:y:0/lstm_753/while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_753/while/lstm_cell_753/add_1AddV2$lstm_753/while/lstm_cell_753/mul:z:0&lstm_753/while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_753/while/lstm_cell_753/Sigmoid_2Sigmoid+lstm_753/while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_753/while/lstm_cell_753/Relu_1Relu&lstm_753/while/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_753/while/lstm_cell_753/mul_2Mul*lstm_753/while/lstm_cell_753/Sigmoid_2:y:01lstm_753/while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_753/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_753_while_placeholder_1lstm_753_while_placeholder&lstm_753/while/lstm_cell_753/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_753/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_753/while/addAddV2lstm_753_while_placeholderlstm_753/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_753/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_753/while/add_1AddV2*lstm_753_while_lstm_753_while_loop_counterlstm_753/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_753/while/IdentityIdentitylstm_753/while/add_1:z:0^lstm_753/while/NoOp*
T0*
_output_shapes
: ?
lstm_753/while/Identity_1Identity0lstm_753_while_lstm_753_while_maximum_iterations^lstm_753/while/NoOp*
T0*
_output_shapes
: t
lstm_753/while/Identity_2Identitylstm_753/while/add:z:0^lstm_753/while/NoOp*
T0*
_output_shapes
: ?
lstm_753/while/Identity_3IdentityClstm_753/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_753/while/NoOp*
T0*
_output_shapes
: ?
lstm_753/while/Identity_4Identity&lstm_753/while/lstm_cell_753/mul_2:z:0^lstm_753/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_753/while/Identity_5Identity&lstm_753/while/lstm_cell_753/add_1:z:0^lstm_753/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_753/while/NoOpNoOp4^lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp3^lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp5^lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_753_while_identity lstm_753/while/Identity:output:0"?
lstm_753_while_identity_1"lstm_753/while/Identity_1:output:0"?
lstm_753_while_identity_2"lstm_753/while/Identity_2:output:0"?
lstm_753_while_identity_3"lstm_753/while/Identity_3:output:0"?
lstm_753_while_identity_4"lstm_753/while/Identity_4:output:0"?
lstm_753_while_identity_5"lstm_753/while/Identity_5:output:0"T
'lstm_753_while_lstm_753_strided_slice_1)lstm_753_while_lstm_753_strided_slice_1_0"~
<lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource>lstm_753_while_lstm_cell_753_biasadd_readvariableop_resource_0"?
=lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource?lstm_753_while_lstm_cell_753_matmul_1_readvariableop_resource_0"|
;lstm_753_while_lstm_cell_753_matmul_readvariableop_resource=lstm_753_while_lstm_cell_753_matmul_readvariableop_resource_0"?
clstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensorelstm_753_while_tensorarrayv2read_tensorlistgetitem_lstm_753_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp3lstm_753/while/lstm_cell_753/BiasAdd/ReadVariableOp2h
2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp2lstm_753/while/lstm_cell_753/MatMul/ReadVariableOp2l
4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp4lstm_753/while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4643727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4641822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641822___redundant_placeholder05
1while_while_cond_4641822___redundant_placeholder15
1while_while_cond_4641822___redundant_placeholder25
1while_while_cond_4641822___redundant_placeholder3
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
while_body_4641442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4640648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640648___redundant_placeholder05
1while_while_cond_4640648___redundant_placeholder15
1while_while_cond_4640648___redundant_placeholder25
1while_while_cond_4640648___redundant_placeholder3
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
while_cond_4643297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643297___redundant_placeholder05
1while_while_cond_4643297___redundant_placeholder15
1while_while_cond_4643297___redundant_placeholder25
1while_while_cond_4643297___redundant_placeholder3
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4641226

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4641142*
condR
while_cond_4641141*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4645499
file_prefix/
+savev2_dense_251_kernel_read_readvariableop-
)savev2_dense_251_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_753_lstm_cell_753_kernel_read_readvariableopF
Bsavev2_lstm_753_lstm_cell_753_recurrent_kernel_read_readvariableop:
6savev2_lstm_753_lstm_cell_753_bias_read_readvariableop<
8savev2_lstm_754_lstm_cell_754_kernel_read_readvariableopF
Bsavev2_lstm_754_lstm_cell_754_recurrent_kernel_read_readvariableop:
6savev2_lstm_754_lstm_cell_754_bias_read_readvariableop<
8savev2_lstm_755_lstm_cell_755_kernel_read_readvariableopF
Bsavev2_lstm_755_lstm_cell_755_recurrent_kernel_read_readvariableop:
6savev2_lstm_755_lstm_cell_755_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_251_kernel_m_read_readvariableop4
0savev2_adam_dense_251_bias_m_read_readvariableopC
?savev2_adam_lstm_753_lstm_cell_753_kernel_m_read_readvariableopM
Isavev2_adam_lstm_753_lstm_cell_753_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_753_lstm_cell_753_bias_m_read_readvariableopC
?savev2_adam_lstm_754_lstm_cell_754_kernel_m_read_readvariableopM
Isavev2_adam_lstm_754_lstm_cell_754_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_754_lstm_cell_754_bias_m_read_readvariableopC
?savev2_adam_lstm_755_lstm_cell_755_kernel_m_read_readvariableopM
Isavev2_adam_lstm_755_lstm_cell_755_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_755_lstm_cell_755_bias_m_read_readvariableop6
2savev2_adam_dense_251_kernel_v_read_readvariableop4
0savev2_adam_dense_251_bias_v_read_readvariableopC
?savev2_adam_lstm_753_lstm_cell_753_kernel_v_read_readvariableopM
Isavev2_adam_lstm_753_lstm_cell_753_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_753_lstm_cell_753_bias_v_read_readvariableopC
?savev2_adam_lstm_754_lstm_cell_754_kernel_v_read_readvariableopM
Isavev2_adam_lstm_754_lstm_cell_754_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_754_lstm_cell_754_bias_v_read_readvariableopC
?savev2_adam_lstm_755_lstm_cell_755_kernel_v_read_readvariableopM
Isavev2_adam_lstm_755_lstm_cell_755_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_755_lstm_cell_755_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_251_kernel_read_readvariableop)savev2_dense_251_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_753_lstm_cell_753_kernel_read_readvariableopBsavev2_lstm_753_lstm_cell_753_recurrent_kernel_read_readvariableop6savev2_lstm_753_lstm_cell_753_bias_read_readvariableop8savev2_lstm_754_lstm_cell_754_kernel_read_readvariableopBsavev2_lstm_754_lstm_cell_754_recurrent_kernel_read_readvariableop6savev2_lstm_754_lstm_cell_754_bias_read_readvariableop8savev2_lstm_755_lstm_cell_755_kernel_read_readvariableopBsavev2_lstm_755_lstm_cell_755_recurrent_kernel_read_readvariableop6savev2_lstm_755_lstm_cell_755_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_251_kernel_m_read_readvariableop0savev2_adam_dense_251_bias_m_read_readvariableop?savev2_adam_lstm_753_lstm_cell_753_kernel_m_read_readvariableopIsavev2_adam_lstm_753_lstm_cell_753_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_753_lstm_cell_753_bias_m_read_readvariableop?savev2_adam_lstm_754_lstm_cell_754_kernel_m_read_readvariableopIsavev2_adam_lstm_754_lstm_cell_754_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_754_lstm_cell_754_bias_m_read_readvariableop?savev2_adam_lstm_755_lstm_cell_755_kernel_m_read_readvariableopIsavev2_adam_lstm_755_lstm_cell_755_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_755_lstm_cell_755_bias_m_read_readvariableop2savev2_adam_dense_251_kernel_v_read_readvariableop0savev2_adam_dense_251_bias_v_read_readvariableop?savev2_adam_lstm_753_lstm_cell_753_kernel_v_read_readvariableopIsavev2_adam_lstm_753_lstm_cell_753_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_753_lstm_cell_753_bias_v_read_readvariableop?savev2_adam_lstm_754_lstm_cell_754_kernel_v_read_readvariableopIsavev2_adam_lstm_754_lstm_cell_754_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_754_lstm_cell_754_bias_v_read_readvariableop?savev2_adam_lstm_755_lstm_cell_755_kernel_v_read_readvariableopIsavev2_adam_lstm_755_lstm_cell_755_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_755_lstm_cell_755_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?C
?

lstm_755_while_body_4642678.
*lstm_755_while_lstm_755_while_loop_counter4
0lstm_755_while_lstm_755_while_maximum_iterations
lstm_755_while_placeholder 
lstm_755_while_placeholder_1 
lstm_755_while_placeholder_2 
lstm_755_while_placeholder_3-
)lstm_755_while_lstm_755_strided_slice_1_0i
elstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0:2(Q
?lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(L
>lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0:(
lstm_755_while_identity
lstm_755_while_identity_1
lstm_755_while_identity_2
lstm_755_while_identity_3
lstm_755_while_identity_4
lstm_755_while_identity_5+
'lstm_755_while_lstm_755_strided_slice_1g
clstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensorM
;lstm_755_while_lstm_cell_755_matmul_readvariableop_resource:2(O
=lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource:
(J
<lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource:(??3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp?2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp?4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp?
@lstm_755/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_755/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensor_0lstm_755_while_placeholderIlstm_755/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp=lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_755/while/lstm_cell_755/MatMulMatMul9lstm_755/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp?lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_755/while/lstm_cell_755/MatMul_1MatMullstm_755_while_placeholder_2<lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_755/while/lstm_cell_755/addAddV2-lstm_755/while/lstm_cell_755/MatMul:product:0/lstm_755/while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp>lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_755/while/lstm_cell_755/BiasAddBiasAdd$lstm_755/while/lstm_cell_755/add:z:0;lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_755/while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_755/while/lstm_cell_755/splitSplit5lstm_755/while/lstm_cell_755/split/split_dim:output:0-lstm_755/while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_755/while/lstm_cell_755/SigmoidSigmoid+lstm_755/while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_755/while/lstm_cell_755/Sigmoid_1Sigmoid+lstm_755/while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_755/while/lstm_cell_755/mulMul*lstm_755/while/lstm_cell_755/Sigmoid_1:y:0lstm_755_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_755/while/lstm_cell_755/ReluRelu+lstm_755/while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_755/while/lstm_cell_755/mul_1Mul(lstm_755/while/lstm_cell_755/Sigmoid:y:0/lstm_755/while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_755/while/lstm_cell_755/add_1AddV2$lstm_755/while/lstm_cell_755/mul:z:0&lstm_755/while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_755/while/lstm_cell_755/Sigmoid_2Sigmoid+lstm_755/while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_755/while/lstm_cell_755/Relu_1Relu&lstm_755/while/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_755/while/lstm_cell_755/mul_2Mul*lstm_755/while/lstm_cell_755/Sigmoid_2:y:01lstm_755/while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_755/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_755_while_placeholder_1lstm_755_while_placeholder&lstm_755/while/lstm_cell_755/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_755/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_755/while/addAddV2lstm_755_while_placeholderlstm_755/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_755/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_755/while/add_1AddV2*lstm_755_while_lstm_755_while_loop_counterlstm_755/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_755/while/IdentityIdentitylstm_755/while/add_1:z:0^lstm_755/while/NoOp*
T0*
_output_shapes
: ?
lstm_755/while/Identity_1Identity0lstm_755_while_lstm_755_while_maximum_iterations^lstm_755/while/NoOp*
T0*
_output_shapes
: t
lstm_755/while/Identity_2Identitylstm_755/while/add:z:0^lstm_755/while/NoOp*
T0*
_output_shapes
: ?
lstm_755/while/Identity_3IdentityClstm_755/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_755/while/NoOp*
T0*
_output_shapes
: ?
lstm_755/while/Identity_4Identity&lstm_755/while/lstm_cell_755/mul_2:z:0^lstm_755/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_755/while/Identity_5Identity&lstm_755/while/lstm_cell_755/add_1:z:0^lstm_755/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_755/while/NoOpNoOp4^lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp3^lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp5^lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_755_while_identity lstm_755/while/Identity:output:0"?
lstm_755_while_identity_1"lstm_755/while/Identity_1:output:0"?
lstm_755_while_identity_2"lstm_755/while/Identity_2:output:0"?
lstm_755_while_identity_3"lstm_755/while/Identity_3:output:0"?
lstm_755_while_identity_4"lstm_755/while/Identity_4:output:0"?
lstm_755_while_identity_5"lstm_755/while/Identity_5:output:0"T
'lstm_755_while_lstm_755_strided_slice_1)lstm_755_while_lstm_755_strided_slice_1_0"~
<lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource>lstm_755_while_lstm_cell_755_biasadd_readvariableop_resource_0"?
=lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource?lstm_755_while_lstm_cell_755_matmul_1_readvariableop_resource_0"|
;lstm_755_while_lstm_cell_755_matmul_readvariableop_resource=lstm_755_while_lstm_cell_755_matmul_readvariableop_resource_0"?
clstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensorelstm_755_while_tensorarrayv2read_tensorlistgetitem_lstm_755_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp3lstm_755/while/lstm_cell_755/BiasAdd/ReadVariableOp2h
2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp2lstm_755/while/lstm_cell_755/MatMul/ReadVariableOp2l
4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp4lstm_755/while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642768

inputsH
5lstm_753_lstm_cell_753_matmul_readvariableop_resource:	?J
7lstm_753_lstm_cell_753_matmul_1_readvariableop_resource:	d?E
6lstm_753_lstm_cell_753_biasadd_readvariableop_resource:	?H
5lstm_754_lstm_cell_754_matmul_readvariableop_resource:	d?J
7lstm_754_lstm_cell_754_matmul_1_readvariableop_resource:	2?E
6lstm_754_lstm_cell_754_biasadd_readvariableop_resource:	?G
5lstm_755_lstm_cell_755_matmul_readvariableop_resource:2(I
7lstm_755_lstm_cell_755_matmul_1_readvariableop_resource:
(D
6lstm_755_lstm_cell_755_biasadd_readvariableop_resource:(:
(dense_251_matmul_readvariableop_resource:
7
)dense_251_biasadd_readvariableop_resource:
identity?? dense_251/BiasAdd/ReadVariableOp?dense_251/MatMul/ReadVariableOp?-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp?,lstm_753/lstm_cell_753/MatMul/ReadVariableOp?.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp?lstm_753/while?-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp?,lstm_754/lstm_cell_754/MatMul/ReadVariableOp?.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp?lstm_754/while?-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp?,lstm_755/lstm_cell_755/MatMul/ReadVariableOp?.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp?lstm_755/whileD
lstm_753/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_753/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_753/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_753/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_sliceStridedSlicelstm_753/Shape:output:0%lstm_753/strided_slice/stack:output:0'lstm_753/strided_slice/stack_1:output:0'lstm_753/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_753/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_753/zeros/packedPacklstm_753/strided_slice:output:0 lstm_753/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_753/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_753/zerosFilllstm_753/zeros/packed:output:0lstm_753/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_753/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_753/zeros_1/packedPacklstm_753/strided_slice:output:0"lstm_753/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_753/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_753/zeros_1Fill lstm_753/zeros_1/packed:output:0lstm_753/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_753/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_753/transpose	Transposeinputs lstm_753/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_753/Shape_1Shapelstm_753/transpose:y:0*
T0*
_output_shapes
:h
lstm_753/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_753/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_753/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_slice_1StridedSlicelstm_753/Shape_1:output:0'lstm_753/strided_slice_1/stack:output:0)lstm_753/strided_slice_1/stack_1:output:0)lstm_753/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_753/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_753/TensorArrayV2TensorListReserve-lstm_753/TensorArrayV2/element_shape:output:0!lstm_753/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_753/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_753/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_753/transpose:y:0Glstm_753/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_753/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_753/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_753/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_slice_2StridedSlicelstm_753/transpose:y:0'lstm_753/strided_slice_2/stack:output:0)lstm_753/strided_slice_2/stack_1:output:0)lstm_753/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_753/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp5lstm_753_lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_753/lstm_cell_753/MatMulMatMul!lstm_753/strided_slice_2:output:04lstm_753/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp7lstm_753_lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_753/lstm_cell_753/MatMul_1MatMullstm_753/zeros:output:06lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_753/lstm_cell_753/addAddV2'lstm_753/lstm_cell_753/MatMul:product:0)lstm_753/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp6lstm_753_lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_753/lstm_cell_753/BiasAddBiasAddlstm_753/lstm_cell_753/add:z:05lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_753/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_753/lstm_cell_753/splitSplit/lstm_753/lstm_cell_753/split/split_dim:output:0'lstm_753/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_753/lstm_cell_753/SigmoidSigmoid%lstm_753/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_753/lstm_cell_753/Sigmoid_1Sigmoid%lstm_753/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/mulMul$lstm_753/lstm_cell_753/Sigmoid_1:y:0lstm_753/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_753/lstm_cell_753/ReluRelu%lstm_753/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/mul_1Mul"lstm_753/lstm_cell_753/Sigmoid:y:0)lstm_753/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/add_1AddV2lstm_753/lstm_cell_753/mul:z:0 lstm_753/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_753/lstm_cell_753/Sigmoid_2Sigmoid%lstm_753/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_753/lstm_cell_753/Relu_1Relu lstm_753/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_753/lstm_cell_753/mul_2Mul$lstm_753/lstm_cell_753/Sigmoid_2:y:0+lstm_753/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_753/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_753/TensorArrayV2_1TensorListReserve/lstm_753/TensorArrayV2_1/element_shape:output:0!lstm_753/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_753/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_753/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_753/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_753/whileWhile$lstm_753/while/loop_counter:output:0*lstm_753/while/maximum_iterations:output:0lstm_753/time:output:0!lstm_753/TensorArrayV2_1:handle:0lstm_753/zeros:output:0lstm_753/zeros_1:output:0!lstm_753/strided_slice_1:output:0@lstm_753/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_753_lstm_cell_753_matmul_readvariableop_resource7lstm_753_lstm_cell_753_matmul_1_readvariableop_resource6lstm_753_lstm_cell_753_biasadd_readvariableop_resource*
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
lstm_753_while_body_4642400*'
condR
lstm_753_while_cond_4642399*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_753/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_753/TensorArrayV2Stack/TensorListStackTensorListStacklstm_753/while:output:3Blstm_753/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_753/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_753/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_753/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_753/strided_slice_3StridedSlice4lstm_753/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_753/strided_slice_3/stack:output:0)lstm_753/strided_slice_3/stack_1:output:0)lstm_753/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_753/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_753/transpose_1	Transpose4lstm_753/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_753/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_753/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_754/ShapeShapelstm_753/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_754/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_754/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_754/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_sliceStridedSlicelstm_754/Shape:output:0%lstm_754/strided_slice/stack:output:0'lstm_754/strided_slice/stack_1:output:0'lstm_754/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_754/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_754/zeros/packedPacklstm_754/strided_slice:output:0 lstm_754/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_754/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_754/zerosFilllstm_754/zeros/packed:output:0lstm_754/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_754/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_754/zeros_1/packedPacklstm_754/strided_slice:output:0"lstm_754/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_754/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_754/zeros_1Fill lstm_754/zeros_1/packed:output:0lstm_754/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_754/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_754/transpose	Transposelstm_753/transpose_1:y:0 lstm_754/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_754/Shape_1Shapelstm_754/transpose:y:0*
T0*
_output_shapes
:h
lstm_754/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_754/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_754/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_slice_1StridedSlicelstm_754/Shape_1:output:0'lstm_754/strided_slice_1/stack:output:0)lstm_754/strided_slice_1/stack_1:output:0)lstm_754/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_754/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_754/TensorArrayV2TensorListReserve-lstm_754/TensorArrayV2/element_shape:output:0!lstm_754/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_754/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_754/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_754/transpose:y:0Glstm_754/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_754/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_754/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_754/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_slice_2StridedSlicelstm_754/transpose:y:0'lstm_754/strided_slice_2/stack:output:0)lstm_754/strided_slice_2/stack_1:output:0)lstm_754/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_754/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp5lstm_754_lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_754/lstm_cell_754/MatMulMatMul!lstm_754/strided_slice_2:output:04lstm_754/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp7lstm_754_lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_754/lstm_cell_754/MatMul_1MatMullstm_754/zeros:output:06lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_754/lstm_cell_754/addAddV2'lstm_754/lstm_cell_754/MatMul:product:0)lstm_754/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp6lstm_754_lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_754/lstm_cell_754/BiasAddBiasAddlstm_754/lstm_cell_754/add:z:05lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_754/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_754/lstm_cell_754/splitSplit/lstm_754/lstm_cell_754/split/split_dim:output:0'lstm_754/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_754/lstm_cell_754/SigmoidSigmoid%lstm_754/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_754/lstm_cell_754/Sigmoid_1Sigmoid%lstm_754/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/mulMul$lstm_754/lstm_cell_754/Sigmoid_1:y:0lstm_754/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_754/lstm_cell_754/ReluRelu%lstm_754/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/mul_1Mul"lstm_754/lstm_cell_754/Sigmoid:y:0)lstm_754/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/add_1AddV2lstm_754/lstm_cell_754/mul:z:0 lstm_754/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_754/lstm_cell_754/Sigmoid_2Sigmoid%lstm_754/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_754/lstm_cell_754/Relu_1Relu lstm_754/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_754/lstm_cell_754/mul_2Mul$lstm_754/lstm_cell_754/Sigmoid_2:y:0+lstm_754/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_754/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_754/TensorArrayV2_1TensorListReserve/lstm_754/TensorArrayV2_1/element_shape:output:0!lstm_754/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_754/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_754/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_754/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_754/whileWhile$lstm_754/while/loop_counter:output:0*lstm_754/while/maximum_iterations:output:0lstm_754/time:output:0!lstm_754/TensorArrayV2_1:handle:0lstm_754/zeros:output:0lstm_754/zeros_1:output:0!lstm_754/strided_slice_1:output:0@lstm_754/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_754_lstm_cell_754_matmul_readvariableop_resource7lstm_754_lstm_cell_754_matmul_1_readvariableop_resource6lstm_754_lstm_cell_754_biasadd_readvariableop_resource*
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
lstm_754_while_body_4642539*'
condR
lstm_754_while_cond_4642538*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_754/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_754/TensorArrayV2Stack/TensorListStackTensorListStacklstm_754/while:output:3Blstm_754/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_754/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_754/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_754/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_754/strided_slice_3StridedSlice4lstm_754/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_754/strided_slice_3/stack:output:0)lstm_754/strided_slice_3/stack_1:output:0)lstm_754/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_754/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_754/transpose_1	Transpose4lstm_754/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_754/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_754/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_755/ShapeShapelstm_754/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_755/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_755/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_755/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_sliceStridedSlicelstm_755/Shape:output:0%lstm_755/strided_slice/stack:output:0'lstm_755/strided_slice/stack_1:output:0'lstm_755/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_755/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_755/zeros/packedPacklstm_755/strided_slice:output:0 lstm_755/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_755/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_755/zerosFilllstm_755/zeros/packed:output:0lstm_755/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_755/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_755/zeros_1/packedPacklstm_755/strided_slice:output:0"lstm_755/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_755/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_755/zeros_1Fill lstm_755/zeros_1/packed:output:0lstm_755/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_755/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_755/transpose	Transposelstm_754/transpose_1:y:0 lstm_755/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_755/Shape_1Shapelstm_755/transpose:y:0*
T0*
_output_shapes
:h
lstm_755/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_755/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_755/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_slice_1StridedSlicelstm_755/Shape_1:output:0'lstm_755/strided_slice_1/stack:output:0)lstm_755/strided_slice_1/stack_1:output:0)lstm_755/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_755/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_755/TensorArrayV2TensorListReserve-lstm_755/TensorArrayV2/element_shape:output:0!lstm_755/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_755/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_755/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_755/transpose:y:0Glstm_755/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_755/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_755/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_755/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_slice_2StridedSlicelstm_755/transpose:y:0'lstm_755/strided_slice_2/stack:output:0)lstm_755/strided_slice_2/stack_1:output:0)lstm_755/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_755/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp5lstm_755_lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_755/lstm_cell_755/MatMulMatMul!lstm_755/strided_slice_2:output:04lstm_755/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp7lstm_755_lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_755/lstm_cell_755/MatMul_1MatMullstm_755/zeros:output:06lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_755/lstm_cell_755/addAddV2'lstm_755/lstm_cell_755/MatMul:product:0)lstm_755/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp6lstm_755_lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_755/lstm_cell_755/BiasAddBiasAddlstm_755/lstm_cell_755/add:z:05lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_755/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_755/lstm_cell_755/splitSplit/lstm_755/lstm_cell_755/split/split_dim:output:0'lstm_755/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_755/lstm_cell_755/SigmoidSigmoid%lstm_755/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_755/lstm_cell_755/Sigmoid_1Sigmoid%lstm_755/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/mulMul$lstm_755/lstm_cell_755/Sigmoid_1:y:0lstm_755/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_755/lstm_cell_755/ReluRelu%lstm_755/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/mul_1Mul"lstm_755/lstm_cell_755/Sigmoid:y:0)lstm_755/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/add_1AddV2lstm_755/lstm_cell_755/mul:z:0 lstm_755/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_755/lstm_cell_755/Sigmoid_2Sigmoid%lstm_755/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_755/lstm_cell_755/Relu_1Relu lstm_755/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_755/lstm_cell_755/mul_2Mul$lstm_755/lstm_cell_755/Sigmoid_2:y:0+lstm_755/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_755/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_755/TensorArrayV2_1TensorListReserve/lstm_755/TensorArrayV2_1/element_shape:output:0!lstm_755/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_755/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_755/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_755/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_755/whileWhile$lstm_755/while/loop_counter:output:0*lstm_755/while/maximum_iterations:output:0lstm_755/time:output:0!lstm_755/TensorArrayV2_1:handle:0lstm_755/zeros:output:0lstm_755/zeros_1:output:0!lstm_755/strided_slice_1:output:0@lstm_755/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_755_lstm_cell_755_matmul_readvariableop_resource7lstm_755_lstm_cell_755_matmul_1_readvariableop_resource6lstm_755_lstm_cell_755_biasadd_readvariableop_resource*
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
lstm_755_while_body_4642678*'
condR
lstm_755_while_cond_4642677*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_755/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_755/TensorArrayV2Stack/TensorListStackTensorListStacklstm_755/while:output:3Blstm_755/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_755/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_755/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_755/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_755/strided_slice_3StridedSlice4lstm_755/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_755/strided_slice_3/stack:output:0)lstm_755/strided_slice_3/stack_1:output:0)lstm_755/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_755/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_755/transpose_1	Transpose4lstm_755/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_755/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_755/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_251/MatMul/ReadVariableOpReadVariableOp(dense_251_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_251/MatMulMatMul!lstm_755/strided_slice_3:output:0'dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_251/BiasAdd/ReadVariableOpReadVariableOp)dense_251_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_251/BiasAddBiasAdddense_251/MatMul:product:0(dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_251/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_251/BiasAdd/ReadVariableOp ^dense_251/MatMul/ReadVariableOp.^lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp-^lstm_753/lstm_cell_753/MatMul/ReadVariableOp/^lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp^lstm_753/while.^lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp-^lstm_754/lstm_cell_754/MatMul/ReadVariableOp/^lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp^lstm_754/while.^lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp-^lstm_755/lstm_cell_755/MatMul/ReadVariableOp/^lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp^lstm_755/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_251/BiasAdd/ReadVariableOp dense_251/BiasAdd/ReadVariableOp2B
dense_251/MatMul/ReadVariableOpdense_251/MatMul/ReadVariableOp2^
-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp-lstm_753/lstm_cell_753/BiasAdd/ReadVariableOp2\
,lstm_753/lstm_cell_753/MatMul/ReadVariableOp,lstm_753/lstm_cell_753/MatMul/ReadVariableOp2`
.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp.lstm_753/lstm_cell_753/MatMul_1/ReadVariableOp2 
lstm_753/whilelstm_753/while2^
-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp-lstm_754/lstm_cell_754/BiasAdd/ReadVariableOp2\
,lstm_754/lstm_cell_754/MatMul/ReadVariableOp,lstm_754/lstm_cell_754/MatMul/ReadVariableOp2`
.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp.lstm_754/lstm_cell_754/MatMul_1/ReadVariableOp2 
lstm_754/whilelstm_754/while2^
-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp-lstm_755/lstm_cell_755/BiasAdd/ReadVariableOp2\
,lstm_755/lstm_cell_755/MatMul/ReadVariableOp,lstm_755/lstm_cell_755/MatMul/ReadVariableOp2`
.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp.lstm_755/lstm_cell_755/MatMul_1/ReadVariableOp2 
lstm_755/whilelstm_755/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4640590

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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4640240

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
while_cond_4644672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4644672___redundant_placeholder05
1while_while_cond_4644672___redundant_placeholder15
1while_while_cond_4644672___redundant_placeholder25
1while_while_cond_4644672___redundant_placeholder3
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641376

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4641292*
condR
while_cond_4641291*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_754_while_cond_4642965.
*lstm_754_while_lstm_754_while_loop_counter4
0lstm_754_while_lstm_754_while_maximum_iterations
lstm_754_while_placeholder 
lstm_754_while_placeholder_1 
lstm_754_while_placeholder_2 
lstm_754_while_placeholder_30
,lstm_754_while_less_lstm_754_strided_slice_1G
Clstm_754_while_lstm_754_while_cond_4642965___redundant_placeholder0G
Clstm_754_while_lstm_754_while_cond_4642965___redundant_placeholder1G
Clstm_754_while_lstm_754_while_cond_4642965___redundant_placeholder2G
Clstm_754_while_lstm_754_while_cond_4642965___redundant_placeholder3
lstm_754_while_identity
?
lstm_754/while/LessLesslstm_754_while_placeholder,lstm_754_while_less_lstm_754_strided_slice_1*
T0*
_output_shapes
: ]
lstm_754/while/IdentityIdentitylstm_754/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_754_while_identity lstm_754/while/Identity:output:0*(
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643382
inputs_0?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4643298*
condR
while_cond_4643297*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4644057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_755_layer_call_fn_4644438
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4640877o
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
0__inference_sequential_251_layer_call_fn_4641576
lstm_753_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_753_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4641551o
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
_user_specified_namelstm_753_input
?K
?
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644757
inputs_0>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4644673*
condR
while_cond_4644672*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643668

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4643584*
condR
while_cond_4643583*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4643913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643913___redundant_placeholder05
1while_while_cond_4643913___redundant_placeholder15
1while_while_cond_4643913___redundant_placeholder25
1while_while_cond_4643913___redundant_placeholder3
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
*__inference_lstm_754_layer_call_fn_4643855

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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4641907s
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
while_cond_4640298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640298___redundant_placeholder05
1while_while_cond_4640298___redundant_placeholder15
1while_while_cond_4640298___redundant_placeholder25
1while_while_cond_4640298___redundant_placeholder3
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
lstm_753_input;
 serving_default_lstm_753_input:0?????????=
	dense_2510
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
2dense_251/kernel
:2dense_251/bias
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
0:.	?2lstm_753/lstm_cell_753/kernel
::8	d?2'lstm_753/lstm_cell_753/recurrent_kernel
*:(?2lstm_753/lstm_cell_753/bias
0:.	d?2lstm_754/lstm_cell_754/kernel
::8	2?2'lstm_754/lstm_cell_754/recurrent_kernel
*:(?2lstm_754/lstm_cell_754/bias
/:-2(2lstm_755/lstm_cell_755/kernel
9:7
(2'lstm_755/lstm_cell_755/recurrent_kernel
):'(2lstm_755/lstm_cell_755/bias
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
2Adam/dense_251/kernel/m
!:2Adam/dense_251/bias/m
5:3	?2$Adam/lstm_753/lstm_cell_753/kernel/m
?:=	d?2.Adam/lstm_753/lstm_cell_753/recurrent_kernel/m
/:-?2"Adam/lstm_753/lstm_cell_753/bias/m
5:3	d?2$Adam/lstm_754/lstm_cell_754/kernel/m
?:=	2?2.Adam/lstm_754/lstm_cell_754/recurrent_kernel/m
/:-?2"Adam/lstm_754/lstm_cell_754/bias/m
4:22(2$Adam/lstm_755/lstm_cell_755/kernel/m
>:<
(2.Adam/lstm_755/lstm_cell_755/recurrent_kernel/m
.:,(2"Adam/lstm_755/lstm_cell_755/bias/m
':%
2Adam/dense_251/kernel/v
!:2Adam/dense_251/bias/v
5:3	?2$Adam/lstm_753/lstm_cell_753/kernel/v
?:=	d?2.Adam/lstm_753/lstm_cell_753/recurrent_kernel/v
/:-?2"Adam/lstm_753/lstm_cell_753/bias/v
5:3	d?2$Adam/lstm_754/lstm_cell_754/kernel/v
?:=	2?2.Adam/lstm_754/lstm_cell_754/recurrent_kernel/v
/:-?2"Adam/lstm_754/lstm_cell_754/bias/v
4:22(2$Adam/lstm_755/lstm_cell_755/kernel/v
>:<
(2.Adam/lstm_755/lstm_cell_755/recurrent_kernel/v
.:,(2"Adam/lstm_755/lstm_cell_755/bias/v
?2?
0__inference_sequential_251_layer_call_fn_4641576
0__inference_sequential_251_layer_call_fn_4642314
0__inference_sequential_251_layer_call_fn_4642341
0__inference_sequential_251_layer_call_fn_4642192?
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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642768
K__inference_sequential_251_layer_call_and_return_conditional_losses_4643195
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642222
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642252?
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
"__inference__wrapped_model_4640027lstm_753_input"?
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
*__inference_lstm_753_layer_call_fn_4643206
*__inference_lstm_753_layer_call_fn_4643217
*__inference_lstm_753_layer_call_fn_4643228
*__inference_lstm_753_layer_call_fn_4643239?
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643382
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643525
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643668
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643811?
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
*__inference_lstm_754_layer_call_fn_4643822
*__inference_lstm_754_layer_call_fn_4643833
*__inference_lstm_754_layer_call_fn_4643844
*__inference_lstm_754_layer_call_fn_4643855?
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4643998
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644141
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644284
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644427?
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
*__inference_lstm_755_layer_call_fn_4644438
*__inference_lstm_755_layer_call_fn_4644449
*__inference_lstm_755_layer_call_fn_4644460
*__inference_lstm_755_layer_call_fn_4644471?
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644614
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644757
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644900
E__inference_lstm_755_layer_call_and_return_conditional_losses_4645043?
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
+__inference_dense_251_layer_call_fn_4645052?
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
F__inference_dense_251_layer_call_and_return_conditional_losses_4645062?
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
%__inference_signature_wrapper_4642287lstm_753_input"?
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
/__inference_lstm_cell_753_layer_call_fn_4645079
/__inference_lstm_cell_753_layer_call_fn_4645096?
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4645128
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4645160?
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
/__inference_lstm_cell_754_layer_call_fn_4645177
/__inference_lstm_cell_754_layer_call_fn_4645194?
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4645226
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4645258?
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
/__inference_lstm_cell_755_layer_call_fn_4645275
/__inference_lstm_cell_755_layer_call_fn_4645292?
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4645324
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4645356?
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
"__inference__wrapped_model_4640027?()*+,-./0;?8
1?.
,?)
lstm_753_input?????????
? "5?2
0
	dense_251#? 
	dense_251??????????
F__inference_dense_251_layer_call_and_return_conditional_losses_4645062\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_251_layer_call_fn_4645052O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643382?()*O?L
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643525?()*O?L
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643668q()*??<
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
E__inference_lstm_753_layer_call_and_return_conditional_losses_4643811q()*??<
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
*__inference_lstm_753_layer_call_fn_4643206}()*O?L
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
*__inference_lstm_753_layer_call_fn_4643217}()*O?L
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
*__inference_lstm_753_layer_call_fn_4643228d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_753_layer_call_fn_4643239d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_754_layer_call_and_return_conditional_losses_4643998?+,-O?L
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644141?+,-O?L
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644284q+,-??<
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
E__inference_lstm_754_layer_call_and_return_conditional_losses_4644427q+,-??<
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
*__inference_lstm_754_layer_call_fn_4643822}+,-O?L
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
*__inference_lstm_754_layer_call_fn_4643833}+,-O?L
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
*__inference_lstm_754_layer_call_fn_4643844d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_754_layer_call_fn_4643855d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644614}./0O?L
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644757}./0O?L
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4644900m./0??<
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
E__inference_lstm_755_layer_call_and_return_conditional_losses_4645043m./0??<
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
*__inference_lstm_755_layer_call_fn_4644438p./0O?L
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
*__inference_lstm_755_layer_call_fn_4644449p./0O?L
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
*__inference_lstm_755_layer_call_fn_4644460`./0??<
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
*__inference_lstm_755_layer_call_fn_4644471`./0??<
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4645128?()*??}
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4645160?()*??}
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
/__inference_lstm_cell_753_layer_call_fn_4645079?()*??}
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
/__inference_lstm_cell_753_layer_call_fn_4645096?()*??}
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4645226?+,-??}
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4645258?+,-??}
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
/__inference_lstm_cell_754_layer_call_fn_4645177?+,-??}
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
/__inference_lstm_cell_754_layer_call_fn_4645194?+,-??}
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4645324?./0??}
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4645356?./0??}
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
/__inference_lstm_cell_755_layer_call_fn_4645275?./0??}
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
/__inference_lstm_cell_755_layer_call_fn_4645292?./0??}
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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642222y()*+,-./0C?@
9?6
,?)
lstm_753_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642252y()*+,-./0C?@
9?6
,?)
lstm_753_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_251_layer_call_and_return_conditional_losses_4642768q()*+,-./0;?8
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
K__inference_sequential_251_layer_call_and_return_conditional_losses_4643195q()*+,-./0;?8
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
0__inference_sequential_251_layer_call_fn_4641576l()*+,-./0C?@
9?6
,?)
lstm_753_input?????????
p 

 
? "???????????
0__inference_sequential_251_layer_call_fn_4642192l()*+,-./0C?@
9?6
,?)
lstm_753_input?????????
p

 
? "???????????
0__inference_sequential_251_layer_call_fn_4642314d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_251_layer_call_fn_4642341d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4642287?()*+,-./0M?J
? 
C?@
>
lstm_753_input,?)
lstm_753_input?????????"5?2
0
	dense_251#? 
	dense_251?????????