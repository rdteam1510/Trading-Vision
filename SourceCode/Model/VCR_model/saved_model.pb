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
dense_283/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_283/kernel
u
$dense_283/kernel/Read/ReadVariableOpReadVariableOpdense_283/kernel*
_output_shapes

:
*
dtype0
t
dense_283/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_283/bias
m
"dense_283/bias/Read/ReadVariableOpReadVariableOpdense_283/bias*
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
lstm_849/lstm_cell_849/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_849/lstm_cell_849/kernel
?
1lstm_849/lstm_cell_849/kernel/Read/ReadVariableOpReadVariableOplstm_849/lstm_cell_849/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_849/lstm_cell_849/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_849/lstm_cell_849/recurrent_kernel
?
;lstm_849/lstm_cell_849/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_849/lstm_cell_849/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_849/lstm_cell_849/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_849/lstm_cell_849/bias
?
/lstm_849/lstm_cell_849/bias/Read/ReadVariableOpReadVariableOplstm_849/lstm_cell_849/bias*
_output_shapes	
:?*
dtype0
?
lstm_850/lstm_cell_850/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_850/lstm_cell_850/kernel
?
1lstm_850/lstm_cell_850/kernel/Read/ReadVariableOpReadVariableOplstm_850/lstm_cell_850/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_850/lstm_cell_850/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_850/lstm_cell_850/recurrent_kernel
?
;lstm_850/lstm_cell_850/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_850/lstm_cell_850/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_850/lstm_cell_850/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_850/lstm_cell_850/bias
?
/lstm_850/lstm_cell_850/bias/Read/ReadVariableOpReadVariableOplstm_850/lstm_cell_850/bias*
_output_shapes	
:?*
dtype0
?
lstm_851/lstm_cell_851/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_851/lstm_cell_851/kernel
?
1lstm_851/lstm_cell_851/kernel/Read/ReadVariableOpReadVariableOplstm_851/lstm_cell_851/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_851/lstm_cell_851/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_851/lstm_cell_851/recurrent_kernel
?
;lstm_851/lstm_cell_851/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_851/lstm_cell_851/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_851/lstm_cell_851/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_851/lstm_cell_851/bias
?
/lstm_851/lstm_cell_851/bias/Read/ReadVariableOpReadVariableOplstm_851/lstm_cell_851/bias*
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
Adam/dense_283/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_283/kernel/m
?
+Adam/dense_283/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_283/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_283/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_283/bias/m
{
)Adam/dense_283/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_283/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_849/lstm_cell_849/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_849/lstm_cell_849/kernel/m
?
8Adam/lstm_849/lstm_cell_849/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_849/lstm_cell_849/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_849/lstm_cell_849/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_849/lstm_cell_849/recurrent_kernel/m
?
BAdam/lstm_849/lstm_cell_849/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_849/lstm_cell_849/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_849/lstm_cell_849/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_849/lstm_cell_849/bias/m
?
6Adam/lstm_849/lstm_cell_849/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_849/lstm_cell_849/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_850/lstm_cell_850/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_850/lstm_cell_850/kernel/m
?
8Adam/lstm_850/lstm_cell_850/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_850/lstm_cell_850/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_850/lstm_cell_850/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_850/lstm_cell_850/recurrent_kernel/m
?
BAdam/lstm_850/lstm_cell_850/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_850/lstm_cell_850/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_850/lstm_cell_850/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_850/lstm_cell_850/bias/m
?
6Adam/lstm_850/lstm_cell_850/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_850/lstm_cell_850/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_851/lstm_cell_851/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_851/lstm_cell_851/kernel/m
?
8Adam/lstm_851/lstm_cell_851/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_851/lstm_cell_851/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_851/lstm_cell_851/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_851/lstm_cell_851/recurrent_kernel/m
?
BAdam/lstm_851/lstm_cell_851/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_851/lstm_cell_851/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_851/lstm_cell_851/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_851/lstm_cell_851/bias/m
?
6Adam/lstm_851/lstm_cell_851/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_851/lstm_cell_851/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_283/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_283/kernel/v
?
+Adam/dense_283/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_283/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_283/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_283/bias/v
{
)Adam/dense_283/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_283/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_849/lstm_cell_849/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_849/lstm_cell_849/kernel/v
?
8Adam/lstm_849/lstm_cell_849/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_849/lstm_cell_849/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_849/lstm_cell_849/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_849/lstm_cell_849/recurrent_kernel/v
?
BAdam/lstm_849/lstm_cell_849/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_849/lstm_cell_849/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_849/lstm_cell_849/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_849/lstm_cell_849/bias/v
?
6Adam/lstm_849/lstm_cell_849/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_849/lstm_cell_849/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_850/lstm_cell_850/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_850/lstm_cell_850/kernel/v
?
8Adam/lstm_850/lstm_cell_850/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_850/lstm_cell_850/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_850/lstm_cell_850/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_850/lstm_cell_850/recurrent_kernel/v
?
BAdam/lstm_850/lstm_cell_850/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_850/lstm_cell_850/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_850/lstm_cell_850/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_850/lstm_cell_850/bias/v
?
6Adam/lstm_850/lstm_cell_850/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_850/lstm_cell_850/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_851/lstm_cell_851/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_851/lstm_cell_851/kernel/v
?
8Adam/lstm_851/lstm_cell_851/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_851/lstm_cell_851/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_851/lstm_cell_851/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_851/lstm_cell_851/recurrent_kernel/v
?
BAdam/lstm_851/lstm_cell_851/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_851/lstm_cell_851/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_851/lstm_cell_851/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_851/lstm_cell_851/bias/v
?
6Adam/lstm_851/lstm_cell_851/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_851/lstm_cell_851/bias/v*
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
VARIABLE_VALUEdense_283/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_283/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_849/lstm_cell_849/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_849/lstm_cell_849/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_849/lstm_cell_849/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_850/lstm_cell_850/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_850/lstm_cell_850/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_850/lstm_cell_850/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_851/lstm_cell_851/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_851/lstm_cell_851/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_851/lstm_cell_851/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_283/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_283/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_849/lstm_cell_849/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_849/lstm_cell_849/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_849/lstm_cell_849/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_850/lstm_cell_850/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_850/lstm_cell_850/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_850/lstm_cell_850/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_851/lstm_cell_851/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_851/lstm_cell_851/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_851/lstm_cell_851/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_283/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_283/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_849/lstm_cell_849/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_849/lstm_cell_849/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_849/lstm_cell_849/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_850/lstm_cell_850/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_850/lstm_cell_850/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_850/lstm_cell_850/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_851/lstm_cell_851/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_851/lstm_cell_851/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_851/lstm_cell_851/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_849_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_849_inputlstm_849/lstm_cell_849/kernel'lstm_849/lstm_cell_849/recurrent_kernellstm_849/lstm_cell_849/biaslstm_850/lstm_cell_850/kernel'lstm_850/lstm_cell_850/recurrent_kernellstm_850/lstm_cell_850/biaslstm_851/lstm_cell_851/kernel'lstm_851/lstm_cell_851/recurrent_kernellstm_851/lstm_cell_851/biasdense_283/kerneldense_283/bias*
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
%__inference_signature_wrapper_5108081
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_283/kernel/Read/ReadVariableOp"dense_283/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_849/lstm_cell_849/kernel/Read/ReadVariableOp;lstm_849/lstm_cell_849/recurrent_kernel/Read/ReadVariableOp/lstm_849/lstm_cell_849/bias/Read/ReadVariableOp1lstm_850/lstm_cell_850/kernel/Read/ReadVariableOp;lstm_850/lstm_cell_850/recurrent_kernel/Read/ReadVariableOp/lstm_850/lstm_cell_850/bias/Read/ReadVariableOp1lstm_851/lstm_cell_851/kernel/Read/ReadVariableOp;lstm_851/lstm_cell_851/recurrent_kernel/Read/ReadVariableOp/lstm_851/lstm_cell_851/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_283/kernel/m/Read/ReadVariableOp)Adam/dense_283/bias/m/Read/ReadVariableOp8Adam/lstm_849/lstm_cell_849/kernel/m/Read/ReadVariableOpBAdam/lstm_849/lstm_cell_849/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_849/lstm_cell_849/bias/m/Read/ReadVariableOp8Adam/lstm_850/lstm_cell_850/kernel/m/Read/ReadVariableOpBAdam/lstm_850/lstm_cell_850/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_850/lstm_cell_850/bias/m/Read/ReadVariableOp8Adam/lstm_851/lstm_cell_851/kernel/m/Read/ReadVariableOpBAdam/lstm_851/lstm_cell_851/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_851/lstm_cell_851/bias/m/Read/ReadVariableOp+Adam/dense_283/kernel/v/Read/ReadVariableOp)Adam/dense_283/bias/v/Read/ReadVariableOp8Adam/lstm_849/lstm_cell_849/kernel/v/Read/ReadVariableOpBAdam/lstm_849/lstm_cell_849/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_849/lstm_cell_849/bias/v/Read/ReadVariableOp8Adam/lstm_850/lstm_cell_850/kernel/v/Read/ReadVariableOpBAdam/lstm_850/lstm_cell_850/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_850/lstm_cell_850/bias/v/Read/ReadVariableOp8Adam/lstm_851/lstm_cell_851/kernel/v/Read/ReadVariableOpBAdam/lstm_851/lstm_cell_851/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_851/lstm_cell_851/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5111293
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_283/kerneldense_283/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_849/lstm_cell_849/kernel'lstm_849/lstm_cell_849/recurrent_kernellstm_849/lstm_cell_849/biaslstm_850/lstm_cell_850/kernel'lstm_850/lstm_cell_850/recurrent_kernellstm_850/lstm_cell_850/biaslstm_851/lstm_cell_851/kernel'lstm_851/lstm_cell_851/recurrent_kernellstm_851/lstm_cell_851/biastotalcountAdam/dense_283/kernel/mAdam/dense_283/bias/m$Adam/lstm_849/lstm_cell_849/kernel/m.Adam/lstm_849/lstm_cell_849/recurrent_kernel/m"Adam/lstm_849/lstm_cell_849/bias/m$Adam/lstm_850/lstm_cell_850/kernel/m.Adam/lstm_850/lstm_cell_850/recurrent_kernel/m"Adam/lstm_850/lstm_cell_850/bias/m$Adam/lstm_851/lstm_cell_851/kernel/m.Adam/lstm_851/lstm_cell_851/recurrent_kernel/m"Adam/lstm_851/lstm_cell_851/bias/mAdam/dense_283/kernel/vAdam/dense_283/bias/v$Adam/lstm_849/lstm_cell_849/kernel/v.Adam/lstm_849/lstm_cell_849/recurrent_kernel/v"Adam/lstm_849/lstm_cell_849/bias/v$Adam/lstm_850/lstm_cell_850/kernel/v.Adam/lstm_850/lstm_cell_850/recurrent_kernel/v"Adam/lstm_850/lstm_cell_850/bias/v$Adam/lstm_851/lstm_cell_851/kernel/v.Adam/lstm_851/lstm_cell_851/recurrent_kernel/v"Adam/lstm_851/lstm_cell_851/bias/v*4
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
#__inference__traced_restore_5111423??+
?#
?
while_body_5106793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_851_5106817_0:2(/
while_lstm_cell_851_5106819_0:
(+
while_lstm_cell_851_5106821_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_851_5106817:2(-
while_lstm_cell_851_5106819:
()
while_lstm_cell_851_5106821:(??+while/lstm_cell_851/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_851/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_851_5106817_0while_lstm_cell_851_5106819_0while_lstm_cell_851_5106821_0*
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106734?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_851/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_851/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_851/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_851/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_851_5106817while_lstm_cell_851_5106817_0"<
while_lstm_cell_851_5106819while_lstm_cell_851_5106819_0"<
while_lstm_cell_851_5106821while_lstm_cell_851_5106821_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_851/StatefulPartitionedCall+while/lstm_cell_851/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5109708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_850_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_850_matmul_readvariableop_resource:	d?G
4while_lstm_cell_850_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_850_biasadd_readvariableop_resource:	???*while/lstm_cell_850/BiasAdd/ReadVariableOp?)while/lstm_cell_850/MatMul/ReadVariableOp?+while/lstm_cell_850/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_850/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_850/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_850/addAddV2$while/lstm_cell_850/MatMul:product:0&while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_850/BiasAddBiasAddwhile/lstm_cell_850/add:z:02while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_850/splitSplit,while/lstm_cell_850/split/split_dim:output:0$while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_850/SigmoidSigmoid"while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_1Sigmoid"while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mulMul!while/lstm_cell_850/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_850/ReluRelu"while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_1Mulwhile/lstm_cell_850/Sigmoid:y:0&while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/add_1AddV2while/lstm_cell_850/mul:z:0while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_2Sigmoid"while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_850/Relu_1Reluwhile/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_2Mul!while/lstm_cell_850/Sigmoid_2:y:0(while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_850/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_850/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_850/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_850/BiasAdd/ReadVariableOp*^while/lstm_cell_850/MatMul/ReadVariableOp,^while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_850_biasadd_readvariableop_resource5while_lstm_cell_850_biasadd_readvariableop_resource_0"n
4while_lstm_cell_850_matmul_1_readvariableop_resource6while_lstm_cell_850_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_850_matmul_readvariableop_resource4while_lstm_cell_850_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_850/BiasAdd/ReadVariableOp*while/lstm_cell_850/BiasAdd/ReadVariableOp2V
)while/lstm_cell_850/MatMul/ReadVariableOp)while/lstm_cell_850/MatMul/ReadVariableOp2Z
+while/lstm_cell_850/MatMul_1/ReadVariableOp+while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_851_layer_call_fn_5110254

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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107320o
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107020

inputs?
,lstm_cell_849_matmul_readvariableop_resource:	?A
.lstm_cell_849_matmul_1_readvariableop_resource:	d?<
-lstm_cell_849_biasadd_readvariableop_resource:	?
identity??$lstm_cell_849/BiasAdd/ReadVariableOp?#lstm_cell_849/MatMul/ReadVariableOp?%lstm_cell_849/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_849/MatMul/ReadVariableOpReadVariableOp,lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_849/MatMulMatMulstrided_slice_2:output:0+lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_849/MatMul_1MatMulzeros:output:0-lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_849/addAddV2lstm_cell_849/MatMul:product:0 lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_849/BiasAddBiasAddlstm_cell_849/add:z:0,lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_849/splitSplit&lstm_cell_849/split/split_dim:output:0lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_849/SigmoidSigmoidlstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_1Sigmoidlstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_849/mulMullstm_cell_849/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_849/ReluRelulstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_1Mullstm_cell_849/Sigmoid:y:0 lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_849/add_1AddV2lstm_cell_849/mul:z:0lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_2Sigmoidlstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_849/Relu_1Relulstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_2Mullstm_cell_849/Sigmoid_2:y:0"lstm_cell_849/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_849_matmul_readvariableop_resource.lstm_cell_849_matmul_1_readvariableop_resource-lstm_cell_849_biasadd_readvariableop_resource*
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
while_body_5106936*
condR
while_cond_5106935*K
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
NoOpNoOp%^lstm_cell_849/BiasAdd/ReadVariableOp$^lstm_cell_849/MatMul/ReadVariableOp&^lstm_cell_849/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_849/BiasAdd/ReadVariableOp$lstm_cell_849/BiasAdd/ReadVariableOp2J
#lstm_cell_849/MatMul/ReadVariableOp#lstm_cell_849/MatMul/ReadVariableOp2N
%lstm_cell_849/MatMul_1/ReadVariableOp%lstm_cell_849/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5107451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5107451___redundant_placeholder05
1while_while_cond_5107451___redundant_placeholder15
1while_while_cond_5107451___redundant_placeholder25
1while_while_cond_5107451___redundant_placeholder3
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
F__inference_dense_283_layer_call_and_return_conditional_losses_5107338

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
?K
?
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109319
inputs_0?
,lstm_cell_849_matmul_readvariableop_resource:	?A
.lstm_cell_849_matmul_1_readvariableop_resource:	d?<
-lstm_cell_849_biasadd_readvariableop_resource:	?
identity??$lstm_cell_849/BiasAdd/ReadVariableOp?#lstm_cell_849/MatMul/ReadVariableOp?%lstm_cell_849/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_849/MatMul/ReadVariableOpReadVariableOp,lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_849/MatMulMatMulstrided_slice_2:output:0+lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_849/MatMul_1MatMulzeros:output:0-lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_849/addAddV2lstm_cell_849/MatMul:product:0 lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_849/BiasAddBiasAddlstm_cell_849/add:z:0,lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_849/splitSplit&lstm_cell_849/split/split_dim:output:0lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_849/SigmoidSigmoidlstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_1Sigmoidlstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_849/mulMullstm_cell_849/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_849/ReluRelulstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_1Mullstm_cell_849/Sigmoid:y:0 lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_849/add_1AddV2lstm_cell_849/mul:z:0lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_2Sigmoidlstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_849/Relu_1Relulstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_2Mullstm_cell_849/Sigmoid_2:y:0"lstm_cell_849/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_849_matmul_readvariableop_resource.lstm_cell_849_matmul_1_readvariableop_resource-lstm_cell_849_biasadd_readvariableop_resource*
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
while_body_5109235*
condR
while_cond_5109234*K
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
NoOpNoOp%^lstm_cell_849/BiasAdd/ReadVariableOp$^lstm_cell_849/MatMul/ReadVariableOp&^lstm_cell_849/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_849/BiasAdd/ReadVariableOp$lstm_cell_849/BiasAdd/ReadVariableOp2J
#lstm_cell_849/MatMul/ReadVariableOp#lstm_cell_849/MatMul/ReadVariableOp2N
%lstm_cell_849/MatMul_1/ReadVariableOp%lstm_cell_849/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5106442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5106442___redundant_placeholder05
1while_while_cond_5106442___redundant_placeholder15
1while_while_cond_5106442___redundant_placeholder25
1while_while_cond_5106442___redundant_placeholder3
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110551
inputs_0>
,lstm_cell_851_matmul_readvariableop_resource:2(@
.lstm_cell_851_matmul_1_readvariableop_resource:
(;
-lstm_cell_851_biasadd_readvariableop_resource:(
identity??$lstm_cell_851/BiasAdd/ReadVariableOp?#lstm_cell_851/MatMul/ReadVariableOp?%lstm_cell_851/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_851/MatMul/ReadVariableOpReadVariableOp,lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_851/MatMulMatMulstrided_slice_2:output:0+lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_851/MatMul_1MatMulzeros:output:0-lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_851/addAddV2lstm_cell_851/MatMul:product:0 lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_851/BiasAddBiasAddlstm_cell_851/add:z:0,lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_851/splitSplit&lstm_cell_851/split/split_dim:output:0lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_851/SigmoidSigmoidlstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_1Sigmoidlstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_851/mulMullstm_cell_851/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_851/ReluRelulstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_1Mullstm_cell_851/Sigmoid:y:0 lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_851/add_1AddV2lstm_cell_851/mul:z:0lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_2Sigmoidlstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_851/Relu_1Relulstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_2Mullstm_cell_851/Sigmoid_2:y:0"lstm_cell_851/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_851_matmul_readvariableop_resource.lstm_cell_851_matmul_1_readvariableop_resource-lstm_cell_851_biasadd_readvariableop_resource*
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
while_body_5110467*
condR
while_cond_5110466*K
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
NoOpNoOp%^lstm_cell_851/BiasAdd/ReadVariableOp$^lstm_cell_851/MatMul/ReadVariableOp&^lstm_cell_851/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_851/BiasAdd/ReadVariableOp$lstm_cell_851/BiasAdd/ReadVariableOp2J
#lstm_cell_851/MatMul/ReadVariableOp#lstm_cell_851/MatMul/ReadVariableOp2N
%lstm_cell_851/MatMul_1/ReadVariableOp%lstm_cell_851/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_851_while_cond_5108898.
*lstm_851_while_lstm_851_while_loop_counter4
0lstm_851_while_lstm_851_while_maximum_iterations
lstm_851_while_placeholder 
lstm_851_while_placeholder_1 
lstm_851_while_placeholder_2 
lstm_851_while_placeholder_30
,lstm_851_while_less_lstm_851_strided_slice_1G
Clstm_851_while_lstm_851_while_cond_5108898___redundant_placeholder0G
Clstm_851_while_lstm_851_while_cond_5108898___redundant_placeholder1G
Clstm_851_while_lstm_851_while_cond_5108898___redundant_placeholder2G
Clstm_851_while_lstm_851_while_cond_5108898___redundant_placeholder3
lstm_851_while_identity
?
lstm_851/while/LessLesslstm_851_while_placeholder,lstm_851_while_less_lstm_851_strided_slice_1*
T0*
_output_shapes
: ]
lstm_851/while/IdentityIdentitylstm_851/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_851_while_identity lstm_851/while/Identity:output:0*(
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
while_cond_5109520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109520___redundant_placeholder05
1while_while_cond_5109520___redundant_placeholder15
1while_while_cond_5109520___redundant_placeholder25
1while_while_cond_5109520___redundant_placeholder3
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
while_cond_5106251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5106251___redundant_placeholder05
1while_while_cond_5106251___redundant_placeholder15
1while_while_cond_5106251___redundant_placeholder25
1while_while_cond_5106251___redundant_placeholder3
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5109792
inputs_0?
,lstm_cell_850_matmul_readvariableop_resource:	d?A
.lstm_cell_850_matmul_1_readvariableop_resource:	2?<
-lstm_cell_850_biasadd_readvariableop_resource:	?
identity??$lstm_cell_850/BiasAdd/ReadVariableOp?#lstm_cell_850/MatMul/ReadVariableOp?%lstm_cell_850/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_850/MatMul/ReadVariableOpReadVariableOp,lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_850/MatMulMatMulstrided_slice_2:output:0+lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_850/MatMul_1MatMulzeros:output:0-lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_850/addAddV2lstm_cell_850/MatMul:product:0 lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_850/BiasAddBiasAddlstm_cell_850/add:z:0,lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_850/splitSplit&lstm_cell_850/split/split_dim:output:0lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_850/SigmoidSigmoidlstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_1Sigmoidlstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_850/mulMullstm_cell_850/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_850/ReluRelulstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_1Mullstm_cell_850/Sigmoid:y:0 lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_850/add_1AddV2lstm_cell_850/mul:z:0lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_2Sigmoidlstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_850/Relu_1Relulstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_2Mullstm_cell_850/Sigmoid_2:y:0"lstm_cell_850/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_850_matmul_readvariableop_resource.lstm_cell_850_matmul_1_readvariableop_resource-lstm_cell_850_biasadd_readvariableop_resource*
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
while_body_5109708*
condR
while_cond_5109707*K
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
NoOpNoOp%^lstm_cell_850/BiasAdd/ReadVariableOp$^lstm_cell_850/MatMul/ReadVariableOp&^lstm_cell_850/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_850/BiasAdd/ReadVariableOp$lstm_cell_850/BiasAdd/ReadVariableOp2J
#lstm_cell_850/MatMul/ReadVariableOp#lstm_cell_850/MatMul/ReadVariableOp2N
%lstm_cell_850/MatMul_1/ReadVariableOp%lstm_cell_850/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107170

inputs?
,lstm_cell_850_matmul_readvariableop_resource:	d?A
.lstm_cell_850_matmul_1_readvariableop_resource:	2?<
-lstm_cell_850_biasadd_readvariableop_resource:	?
identity??$lstm_cell_850/BiasAdd/ReadVariableOp?#lstm_cell_850/MatMul/ReadVariableOp?%lstm_cell_850/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_850/MatMul/ReadVariableOpReadVariableOp,lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_850/MatMulMatMulstrided_slice_2:output:0+lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_850/MatMul_1MatMulzeros:output:0-lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_850/addAddV2lstm_cell_850/MatMul:product:0 lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_850/BiasAddBiasAddlstm_cell_850/add:z:0,lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_850/splitSplit&lstm_cell_850/split/split_dim:output:0lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_850/SigmoidSigmoidlstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_1Sigmoidlstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_850/mulMullstm_cell_850/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_850/ReluRelulstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_1Mullstm_cell_850/Sigmoid:y:0 lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_850/add_1AddV2lstm_cell_850/mul:z:0lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_2Sigmoidlstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_850/Relu_1Relulstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_2Mullstm_cell_850/Sigmoid_2:y:0"lstm_cell_850/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_850_matmul_readvariableop_resource.lstm_cell_850_matmul_1_readvariableop_resource-lstm_cell_850_biasadd_readvariableop_resource*
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
while_body_5107086*
condR
while_cond_5107085*K
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
NoOpNoOp%^lstm_cell_850/BiasAdd/ReadVariableOp$^lstm_cell_850/MatMul/ReadVariableOp&^lstm_cell_850/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_850/BiasAdd/ReadVariableOp$lstm_cell_850/BiasAdd/ReadVariableOp2J
#lstm_cell_850/MatMul/ReadVariableOp#lstm_cell_850/MatMul/ReadVariableOp2N
%lstm_cell_850/MatMul_1/ReadVariableOp%lstm_cell_850/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_851_layer_call_fn_5110232
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5106671o
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
while_cond_5110136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5110136___redundant_placeholder05
1while_while_cond_5110136___redundant_placeholder15
1while_while_cond_5110136___redundant_placeholder25
1while_while_cond_5110136___redundant_placeholder3
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5107345

inputs#
lstm_849_5107021:	?#
lstm_849_5107023:	d?
lstm_849_5107025:	?#
lstm_850_5107171:	d?#
lstm_850_5107173:	2?
lstm_850_5107175:	?"
lstm_851_5107321:2("
lstm_851_5107323:
(
lstm_851_5107325:(#
dense_283_5107339:

dense_283_5107341:
identity??!dense_283/StatefulPartitionedCall? lstm_849/StatefulPartitionedCall? lstm_850/StatefulPartitionedCall? lstm_851/StatefulPartitionedCall?
 lstm_849/StatefulPartitionedCallStatefulPartitionedCallinputslstm_849_5107021lstm_849_5107023lstm_849_5107025*
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107020?
 lstm_850/StatefulPartitionedCallStatefulPartitionedCall)lstm_849/StatefulPartitionedCall:output:0lstm_850_5107171lstm_850_5107173lstm_850_5107175*
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107170?
 lstm_851/StatefulPartitionedCallStatefulPartitionedCall)lstm_850/StatefulPartitionedCall:output:0lstm_851_5107321lstm_851_5107323lstm_851_5107325*
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107320?
!dense_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_851/StatefulPartitionedCall:output:0dense_283_5107339dense_283_5107341*
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
F__inference_dense_283_layer_call_and_return_conditional_losses_5107338y
IdentityIdentity*dense_283/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_283/StatefulPartitionedCall!^lstm_849/StatefulPartitionedCall!^lstm_850/StatefulPartitionedCall!^lstm_851/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_283/StatefulPartitionedCall!dense_283/StatefulPartitionedCall2D
 lstm_849/StatefulPartitionedCall lstm_849/StatefulPartitionedCall2D
 lstm_850/StatefulPartitionedCall lstm_850/StatefulPartitionedCall2D
 lstm_851/StatefulPartitionedCall lstm_851/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_5106252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_850_5106276_0:	d?0
while_lstm_cell_850_5106278_0:	2?,
while_lstm_cell_850_5106280_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_850_5106276:	d?.
while_lstm_cell_850_5106278:	2?*
while_lstm_cell_850_5106280:	???+while/lstm_cell_850/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_850/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_850_5106276_0while_lstm_cell_850_5106278_0while_lstm_cell_850_5106280_0*
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106238?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_850/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_850/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_850/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_850/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_850_5106276while_lstm_cell_850_5106276_0"<
while_lstm_cell_850_5106278while_lstm_cell_850_5106278_0"<
while_lstm_cell_850_5106280while_lstm_cell_850_5106280_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_850/StatefulPartitionedCall+while/lstm_cell_850/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5110466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5110466___redundant_placeholder05
1while_while_cond_5110466___redundant_placeholder15
1while_while_cond_5110466___redundant_placeholder25
1while_while_cond_5110466___redundant_placeholder3
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
*sequential_283_lstm_850_while_body_5105592L
Hsequential_283_lstm_850_while_sequential_283_lstm_850_while_loop_counterR
Nsequential_283_lstm_850_while_sequential_283_lstm_850_while_maximum_iterations-
)sequential_283_lstm_850_while_placeholder/
+sequential_283_lstm_850_while_placeholder_1/
+sequential_283_lstm_850_while_placeholder_2/
+sequential_283_lstm_850_while_placeholder_3K
Gsequential_283_lstm_850_while_sequential_283_lstm_850_strided_slice_1_0?
?sequential_283_lstm_850_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_850_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_283_lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0:	d?a
Nsequential_283_lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?\
Msequential_283_lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0:	?*
&sequential_283_lstm_850_while_identity,
(sequential_283_lstm_850_while_identity_1,
(sequential_283_lstm_850_while_identity_2,
(sequential_283_lstm_850_while_identity_3,
(sequential_283_lstm_850_while_identity_4,
(sequential_283_lstm_850_while_identity_5I
Esequential_283_lstm_850_while_sequential_283_lstm_850_strided_slice_1?
?sequential_283_lstm_850_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_850_tensorarrayunstack_tensorlistfromtensor]
Jsequential_283_lstm_850_while_lstm_cell_850_matmul_readvariableop_resource:	d?_
Lsequential_283_lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource:	2?Z
Ksequential_283_lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource:	???Bsequential_283/lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp?Asequential_283/lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp?Csequential_283/lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp?
Osequential_283/lstm_850/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_283/lstm_850/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_283_lstm_850_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_850_tensorarrayunstack_tensorlistfromtensor_0)sequential_283_lstm_850_while_placeholderXsequential_283/lstm_850/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_283/lstm_850/while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOpLsequential_283_lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_283/lstm_850/while/lstm_cell_850/MatMulMatMulHsequential_283/lstm_850/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_283/lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_283/lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOpNsequential_283_lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_283/lstm_850/while/lstm_cell_850/MatMul_1MatMul+sequential_283_lstm_850_while_placeholder_2Ksequential_283/lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_283/lstm_850/while/lstm_cell_850/addAddV2<sequential_283/lstm_850/while/lstm_cell_850/MatMul:product:0>sequential_283/lstm_850/while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_283/lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOpMsequential_283_lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_283/lstm_850/while/lstm_cell_850/BiasAddBiasAdd3sequential_283/lstm_850/while/lstm_cell_850/add:z:0Jsequential_283/lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_283/lstm_850/while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_283/lstm_850/while/lstm_cell_850/splitSplitDsequential_283/lstm_850/while/lstm_cell_850/split/split_dim:output:0<sequential_283/lstm_850/while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_283/lstm_850/while/lstm_cell_850/SigmoidSigmoid:sequential_283/lstm_850/while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_283/lstm_850/while/lstm_cell_850/Sigmoid_1Sigmoid:sequential_283/lstm_850/while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_283/lstm_850/while/lstm_cell_850/mulMul9sequential_283/lstm_850/while/lstm_cell_850/Sigmoid_1:y:0+sequential_283_lstm_850_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_283/lstm_850/while/lstm_cell_850/ReluRelu:sequential_283/lstm_850/while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_283/lstm_850/while/lstm_cell_850/mul_1Mul7sequential_283/lstm_850/while/lstm_cell_850/Sigmoid:y:0>sequential_283/lstm_850/while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_283/lstm_850/while/lstm_cell_850/add_1AddV23sequential_283/lstm_850/while/lstm_cell_850/mul:z:05sequential_283/lstm_850/while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_283/lstm_850/while/lstm_cell_850/Sigmoid_2Sigmoid:sequential_283/lstm_850/while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_283/lstm_850/while/lstm_cell_850/Relu_1Relu5sequential_283/lstm_850/while/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_283/lstm_850/while/lstm_cell_850/mul_2Mul9sequential_283/lstm_850/while/lstm_cell_850/Sigmoid_2:y:0@sequential_283/lstm_850/while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_283/lstm_850/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_283_lstm_850_while_placeholder_1)sequential_283_lstm_850_while_placeholder5sequential_283/lstm_850/while/lstm_cell_850/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_283/lstm_850/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_283/lstm_850/while/addAddV2)sequential_283_lstm_850_while_placeholder,sequential_283/lstm_850/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_283/lstm_850/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_283/lstm_850/while/add_1AddV2Hsequential_283_lstm_850_while_sequential_283_lstm_850_while_loop_counter.sequential_283/lstm_850/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_283/lstm_850/while/IdentityIdentity'sequential_283/lstm_850/while/add_1:z:0#^sequential_283/lstm_850/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_850/while/Identity_1IdentityNsequential_283_lstm_850_while_sequential_283_lstm_850_while_maximum_iterations#^sequential_283/lstm_850/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_850/while/Identity_2Identity%sequential_283/lstm_850/while/add:z:0#^sequential_283/lstm_850/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_850/while/Identity_3IdentityRsequential_283/lstm_850/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_283/lstm_850/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_850/while/Identity_4Identity5sequential_283/lstm_850/while/lstm_cell_850/mul_2:z:0#^sequential_283/lstm_850/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_283/lstm_850/while/Identity_5Identity5sequential_283/lstm_850/while/lstm_cell_850/add_1:z:0#^sequential_283/lstm_850/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_283/lstm_850/while/NoOpNoOpC^sequential_283/lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOpB^sequential_283/lstm_850/while/lstm_cell_850/MatMul/ReadVariableOpD^sequential_283/lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_283_lstm_850_while_identity/sequential_283/lstm_850/while/Identity:output:0"]
(sequential_283_lstm_850_while_identity_11sequential_283/lstm_850/while/Identity_1:output:0"]
(sequential_283_lstm_850_while_identity_21sequential_283/lstm_850/while/Identity_2:output:0"]
(sequential_283_lstm_850_while_identity_31sequential_283/lstm_850/while/Identity_3:output:0"]
(sequential_283_lstm_850_while_identity_41sequential_283/lstm_850/while/Identity_4:output:0"]
(sequential_283_lstm_850_while_identity_51sequential_283/lstm_850/while/Identity_5:output:0"?
Ksequential_283_lstm_850_while_lstm_cell_850_biasadd_readvariableop_resourceMsequential_283_lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0"?
Lsequential_283_lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resourceNsequential_283_lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0"?
Jsequential_283_lstm_850_while_lstm_cell_850_matmul_readvariableop_resourceLsequential_283_lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0"?
Esequential_283_lstm_850_while_sequential_283_lstm_850_strided_slice_1Gsequential_283_lstm_850_while_sequential_283_lstm_850_strided_slice_1_0"?
?sequential_283_lstm_850_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_850_tensorarrayunstack_tensorlistfromtensor?sequential_283_lstm_850_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_850_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_283/lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOpBsequential_283/lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp2?
Asequential_283/lstm_850/while/lstm_cell_850/MatMul/ReadVariableOpAsequential_283/lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp2?
Csequential_283/lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOpCsequential_283/lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_849_layer_call_fn_5109033

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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107866s
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
while_cond_5105901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5105901___redundant_placeholder05
1while_while_cond_5105901___redundant_placeholder15
1while_while_cond_5105901___redundant_placeholder25
1while_while_cond_5105901___redundant_placeholder3
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
/__inference_lstm_cell_850_layer_call_fn_5110988

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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106384o
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
*__inference_lstm_850_layer_call_fn_5109649

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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107701s
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
while_cond_5107235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5107235___redundant_placeholder05
1while_while_cond_5107235___redundant_placeholder15
1while_while_cond_5107235___redundant_placeholder25
1while_while_cond_5107235___redundant_placeholder3
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
?
?
*__inference_lstm_851_layer_call_fn_5110265

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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107536o
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
??
?
#__inference__traced_restore_5111423
file_prefix3
!assignvariableop_dense_283_kernel:
/
!assignvariableop_1_dense_283_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_849_lstm_cell_849_kernel:	?M
:assignvariableop_8_lstm_849_lstm_cell_849_recurrent_kernel:	d?=
.assignvariableop_9_lstm_849_lstm_cell_849_bias:	?D
1assignvariableop_10_lstm_850_lstm_cell_850_kernel:	d?N
;assignvariableop_11_lstm_850_lstm_cell_850_recurrent_kernel:	2?>
/assignvariableop_12_lstm_850_lstm_cell_850_bias:	?C
1assignvariableop_13_lstm_851_lstm_cell_851_kernel:2(M
;assignvariableop_14_lstm_851_lstm_cell_851_recurrent_kernel:
(=
/assignvariableop_15_lstm_851_lstm_cell_851_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_283_kernel_m:
7
)assignvariableop_19_adam_dense_283_bias_m:K
8assignvariableop_20_adam_lstm_849_lstm_cell_849_kernel_m:	?U
Bassignvariableop_21_adam_lstm_849_lstm_cell_849_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_849_lstm_cell_849_bias_m:	?K
8assignvariableop_23_adam_lstm_850_lstm_cell_850_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_850_lstm_cell_850_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_850_lstm_cell_850_bias_m:	?J
8assignvariableop_26_adam_lstm_851_lstm_cell_851_kernel_m:2(T
Bassignvariableop_27_adam_lstm_851_lstm_cell_851_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_851_lstm_cell_851_bias_m:(=
+assignvariableop_29_adam_dense_283_kernel_v:
7
)assignvariableop_30_adam_dense_283_bias_v:K
8assignvariableop_31_adam_lstm_849_lstm_cell_849_kernel_v:	?U
Bassignvariableop_32_adam_lstm_849_lstm_cell_849_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_849_lstm_cell_849_bias_v:	?K
8assignvariableop_34_adam_lstm_850_lstm_cell_850_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_850_lstm_cell_850_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_850_lstm_cell_850_bias_v:	?J
8assignvariableop_37_adam_lstm_851_lstm_cell_851_kernel_v:2(T
Bassignvariableop_38_adam_lstm_851_lstm_cell_851_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_851_lstm_cell_851_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_283_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_283_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_849_lstm_cell_849_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_849_lstm_cell_849_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_849_lstm_cell_849_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_850_lstm_cell_850_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_850_lstm_cell_850_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_850_lstm_cell_850_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_851_lstm_cell_851_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_851_lstm_cell_851_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_851_lstm_cell_851_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_283_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_283_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_849_lstm_cell_849_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_849_lstm_cell_849_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_849_lstm_cell_849_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_850_lstm_cell_850_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_850_lstm_cell_850_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_850_lstm_cell_850_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_851_lstm_cell_851_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_851_lstm_cell_851_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_851_lstm_cell_851_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_283_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_283_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_849_lstm_cell_849_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_849_lstm_cell_849_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_849_lstm_cell_849_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_850_lstm_cell_850_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_850_lstm_cell_850_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_850_lstm_cell_850_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_851_lstm_cell_851_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_851_lstm_cell_851_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_851_lstm_cell_851_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
%__inference_signature_wrapper_5108081
lstm_849_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_849_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5105821o
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
_user_specified_namelstm_849_input
?8
?
while_body_5107236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_851_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_851_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_851_matmul_readvariableop_resource:2(F
4while_lstm_cell_851_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_851_biasadd_readvariableop_resource:(??*while/lstm_cell_851/BiasAdd/ReadVariableOp?)while/lstm_cell_851/MatMul/ReadVariableOp?+while/lstm_cell_851/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_851/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_851/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_851/addAddV2$while/lstm_cell_851/MatMul:product:0&while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_851/BiasAddBiasAddwhile/lstm_cell_851/add:z:02while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_851/splitSplit,while/lstm_cell_851/split/split_dim:output:0$while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_851/SigmoidSigmoid"while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_1Sigmoid"while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mulMul!while/lstm_cell_851/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_851/ReluRelu"while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_1Mulwhile/lstm_cell_851/Sigmoid:y:0&while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/add_1AddV2while/lstm_cell_851/mul:z:0while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_2Sigmoid"while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_851/Relu_1Reluwhile/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_2Mul!while/lstm_cell_851/Sigmoid_2:y:0(while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_851/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_851/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_851/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_851/BiasAdd/ReadVariableOp*^while/lstm_cell_851/MatMul/ReadVariableOp,^while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_851_biasadd_readvariableop_resource5while_lstm_cell_851_biasadd_readvariableop_resource_0"n
4while_lstm_cell_851_matmul_1_readvariableop_resource6while_lstm_cell_851_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_851_matmul_readvariableop_resource4while_lstm_cell_851_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_851/BiasAdd/ReadVariableOp*while/lstm_cell_851/BiasAdd/ReadVariableOp2V
)while/lstm_cell_851/MatMul/ReadVariableOp)while/lstm_cell_851/MatMul/ReadVariableOp2Z
+while/lstm_cell_851/MatMul_1/ReadVariableOp+while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5107782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_849_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_849_matmul_readvariableop_resource:	?G
4while_lstm_cell_849_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_849_biasadd_readvariableop_resource:	???*while/lstm_cell_849/BiasAdd/ReadVariableOp?)while/lstm_cell_849/MatMul/ReadVariableOp?+while/lstm_cell_849/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_849/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_849/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_849/addAddV2$while/lstm_cell_849/MatMul:product:0&while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_849/BiasAddBiasAddwhile/lstm_cell_849/add:z:02while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_849/splitSplit,while/lstm_cell_849/split/split_dim:output:0$while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_849/SigmoidSigmoid"while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_1Sigmoid"while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mulMul!while/lstm_cell_849/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_849/ReluRelu"while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_1Mulwhile/lstm_cell_849/Sigmoid:y:0&while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/add_1AddV2while/lstm_cell_849/mul:z:0while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_2Sigmoid"while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_849/Relu_1Reluwhile/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_2Mul!while/lstm_cell_849/Sigmoid_2:y:0(while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_849/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_849/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_849/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_849/BiasAdd/ReadVariableOp*^while/lstm_cell_849/MatMul/ReadVariableOp,^while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_849_biasadd_readvariableop_resource5while_lstm_cell_849_biasadd_readvariableop_resource_0"n
4while_lstm_cell_849_matmul_1_readvariableop_resource6while_lstm_cell_849_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_849_matmul_readvariableop_resource4while_lstm_cell_849_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_849/BiasAdd/ReadVariableOp*while/lstm_cell_849/BiasAdd/ReadVariableOp2V
)while/lstm_cell_849/MatMul/ReadVariableOp)while/lstm_cell_849/MatMul/ReadVariableOp2Z
+while/lstm_cell_849/MatMul_1/ReadVariableOp+while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5111052

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
while_body_5110753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_851_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_851_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_851_matmul_readvariableop_resource:2(F
4while_lstm_cell_851_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_851_biasadd_readvariableop_resource:(??*while/lstm_cell_851/BiasAdd/ReadVariableOp?)while/lstm_cell_851/MatMul/ReadVariableOp?+while/lstm_cell_851/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_851/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_851/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_851/addAddV2$while/lstm_cell_851/MatMul:product:0&while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_851/BiasAddBiasAddwhile/lstm_cell_851/add:z:02while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_851/splitSplit,while/lstm_cell_851/split/split_dim:output:0$while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_851/SigmoidSigmoid"while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_1Sigmoid"while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mulMul!while/lstm_cell_851/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_851/ReluRelu"while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_1Mulwhile/lstm_cell_851/Sigmoid:y:0&while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/add_1AddV2while/lstm_cell_851/mul:z:0while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_2Sigmoid"while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_851/Relu_1Reluwhile/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_2Mul!while/lstm_cell_851/Sigmoid_2:y:0(while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_851/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_851/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_851/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_851/BiasAdd/ReadVariableOp*^while/lstm_cell_851/MatMul/ReadVariableOp,^while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_851_biasadd_readvariableop_resource5while_lstm_cell_851_biasadd_readvariableop_resource_0"n
4while_lstm_cell_851_matmul_1_readvariableop_resource6while_lstm_cell_851_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_851_matmul_readvariableop_resource4while_lstm_cell_851_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_851/BiasAdd/ReadVariableOp*while/lstm_cell_851/BiasAdd/ReadVariableOp2V
)while/lstm_cell_851/MatMul/ReadVariableOp)while/lstm_cell_851/MatMul/ReadVariableOp2Z
+while/lstm_cell_851/MatMul_1/ReadVariableOp+while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_283_lstm_850_while_cond_5105591L
Hsequential_283_lstm_850_while_sequential_283_lstm_850_while_loop_counterR
Nsequential_283_lstm_850_while_sequential_283_lstm_850_while_maximum_iterations-
)sequential_283_lstm_850_while_placeholder/
+sequential_283_lstm_850_while_placeholder_1/
+sequential_283_lstm_850_while_placeholder_2/
+sequential_283_lstm_850_while_placeholder_3N
Jsequential_283_lstm_850_while_less_sequential_283_lstm_850_strided_slice_1e
asequential_283_lstm_850_while_sequential_283_lstm_850_while_cond_5105591___redundant_placeholder0e
asequential_283_lstm_850_while_sequential_283_lstm_850_while_cond_5105591___redundant_placeholder1e
asequential_283_lstm_850_while_sequential_283_lstm_850_while_cond_5105591___redundant_placeholder2e
asequential_283_lstm_850_while_sequential_283_lstm_850_while_cond_5105591___redundant_placeholder3*
&sequential_283_lstm_850_while_identity
?
"sequential_283/lstm_850/while/LessLess)sequential_283_lstm_850_while_placeholderJsequential_283_lstm_850_while_less_sequential_283_lstm_850_strided_slice_1*
T0*
_output_shapes
: {
&sequential_283/lstm_850/while/IdentityIdentity&sequential_283/lstm_850/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_283_lstm_850_while_identity/sequential_283/lstm_850/while/Identity:output:0*(
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
*__inference_lstm_850_layer_call_fn_5109616
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5106321|
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
while_body_5110324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_851_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_851_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_851_matmul_readvariableop_resource:2(F
4while_lstm_cell_851_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_851_biasadd_readvariableop_resource:(??*while/lstm_cell_851/BiasAdd/ReadVariableOp?)while/lstm_cell_851/MatMul/ReadVariableOp?+while/lstm_cell_851/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_851/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_851/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_851/addAddV2$while/lstm_cell_851/MatMul:product:0&while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_851/BiasAddBiasAddwhile/lstm_cell_851/add:z:02while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_851/splitSplit,while/lstm_cell_851/split/split_dim:output:0$while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_851/SigmoidSigmoid"while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_1Sigmoid"while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mulMul!while/lstm_cell_851/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_851/ReluRelu"while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_1Mulwhile/lstm_cell_851/Sigmoid:y:0&while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/add_1AddV2while/lstm_cell_851/mul:z:0while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_2Sigmoid"while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_851/Relu_1Reluwhile/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_2Mul!while/lstm_cell_851/Sigmoid_2:y:0(while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_851/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_851/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_851/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_851/BiasAdd/ReadVariableOp*^while/lstm_cell_851/MatMul/ReadVariableOp,^while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_851_biasadd_readvariableop_resource5while_lstm_cell_851_biasadd_readvariableop_resource_0"n
4while_lstm_cell_851_matmul_1_readvariableop_resource6while_lstm_cell_851_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_851_matmul_readvariableop_resource4while_lstm_cell_851_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_851/BiasAdd/ReadVariableOp*while/lstm_cell_851/BiasAdd/ReadVariableOp2V
)while/lstm_cell_851/MatMul/ReadVariableOp)while/lstm_cell_851/MatMul/ReadVariableOp2Z
+while/lstm_cell_851/MatMul_1/ReadVariableOp+while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5111020

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
?W
?
 __inference__traced_save_5111293
file_prefix/
+savev2_dense_283_kernel_read_readvariableop-
)savev2_dense_283_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_849_lstm_cell_849_kernel_read_readvariableopF
Bsavev2_lstm_849_lstm_cell_849_recurrent_kernel_read_readvariableop:
6savev2_lstm_849_lstm_cell_849_bias_read_readvariableop<
8savev2_lstm_850_lstm_cell_850_kernel_read_readvariableopF
Bsavev2_lstm_850_lstm_cell_850_recurrent_kernel_read_readvariableop:
6savev2_lstm_850_lstm_cell_850_bias_read_readvariableop<
8savev2_lstm_851_lstm_cell_851_kernel_read_readvariableopF
Bsavev2_lstm_851_lstm_cell_851_recurrent_kernel_read_readvariableop:
6savev2_lstm_851_lstm_cell_851_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_283_kernel_m_read_readvariableop4
0savev2_adam_dense_283_bias_m_read_readvariableopC
?savev2_adam_lstm_849_lstm_cell_849_kernel_m_read_readvariableopM
Isavev2_adam_lstm_849_lstm_cell_849_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_849_lstm_cell_849_bias_m_read_readvariableopC
?savev2_adam_lstm_850_lstm_cell_850_kernel_m_read_readvariableopM
Isavev2_adam_lstm_850_lstm_cell_850_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_850_lstm_cell_850_bias_m_read_readvariableopC
?savev2_adam_lstm_851_lstm_cell_851_kernel_m_read_readvariableopM
Isavev2_adam_lstm_851_lstm_cell_851_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_851_lstm_cell_851_bias_m_read_readvariableop6
2savev2_adam_dense_283_kernel_v_read_readvariableop4
0savev2_adam_dense_283_bias_v_read_readvariableopC
?savev2_adam_lstm_849_lstm_cell_849_kernel_v_read_readvariableopM
Isavev2_adam_lstm_849_lstm_cell_849_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_849_lstm_cell_849_bias_v_read_readvariableopC
?savev2_adam_lstm_850_lstm_cell_850_kernel_v_read_readvariableopM
Isavev2_adam_lstm_850_lstm_cell_850_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_850_lstm_cell_850_bias_v_read_readvariableopC
?savev2_adam_lstm_851_lstm_cell_851_kernel_v_read_readvariableopM
Isavev2_adam_lstm_851_lstm_cell_851_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_851_lstm_cell_851_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_283_kernel_read_readvariableop)savev2_dense_283_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_849_lstm_cell_849_kernel_read_readvariableopBsavev2_lstm_849_lstm_cell_849_recurrent_kernel_read_readvariableop6savev2_lstm_849_lstm_cell_849_bias_read_readvariableop8savev2_lstm_850_lstm_cell_850_kernel_read_readvariableopBsavev2_lstm_850_lstm_cell_850_recurrent_kernel_read_readvariableop6savev2_lstm_850_lstm_cell_850_bias_read_readvariableop8savev2_lstm_851_lstm_cell_851_kernel_read_readvariableopBsavev2_lstm_851_lstm_cell_851_recurrent_kernel_read_readvariableop6savev2_lstm_851_lstm_cell_851_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_283_kernel_m_read_readvariableop0savev2_adam_dense_283_bias_m_read_readvariableop?savev2_adam_lstm_849_lstm_cell_849_kernel_m_read_readvariableopIsavev2_adam_lstm_849_lstm_cell_849_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_849_lstm_cell_849_bias_m_read_readvariableop?savev2_adam_lstm_850_lstm_cell_850_kernel_m_read_readvariableopIsavev2_adam_lstm_850_lstm_cell_850_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_850_lstm_cell_850_bias_m_read_readvariableop?savev2_adam_lstm_851_lstm_cell_851_kernel_m_read_readvariableopIsavev2_adam_lstm_851_lstm_cell_851_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_851_lstm_cell_851_bias_m_read_readvariableop2savev2_adam_dense_283_kernel_v_read_readvariableop0savev2_adam_dense_283_bias_v_read_readvariableop?savev2_adam_lstm_849_lstm_cell_849_kernel_v_read_readvariableopIsavev2_adam_lstm_849_lstm_cell_849_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_849_lstm_cell_849_bias_v_read_readvariableop?savev2_adam_lstm_850_lstm_cell_850_kernel_v_read_readvariableopIsavev2_adam_lstm_850_lstm_cell_850_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_850_lstm_cell_850_bias_v_read_readvariableop?savev2_adam_lstm_851_lstm_cell_851_kernel_v_read_readvariableopIsavev2_adam_lstm_851_lstm_cell_851_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_851_lstm_cell_851_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_5109850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109850___redundant_placeholder05
1while_while_cond_5109850___redundant_placeholder15
1while_while_cond_5109850___redundant_placeholder25
1while_while_cond_5109850___redundant_placeholder3
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

?
lstm_850_while_cond_5108332.
*lstm_850_while_lstm_850_while_loop_counter4
0lstm_850_while_lstm_850_while_maximum_iterations
lstm_850_while_placeholder 
lstm_850_while_placeholder_1 
lstm_850_while_placeholder_2 
lstm_850_while_placeholder_30
,lstm_850_while_less_lstm_850_strided_slice_1G
Clstm_850_while_lstm_850_while_cond_5108332___redundant_placeholder0G
Clstm_850_while_lstm_850_while_cond_5108332___redundant_placeholder1G
Clstm_850_while_lstm_850_while_cond_5108332___redundant_placeholder2G
Clstm_850_while_lstm_850_while_cond_5108332___redundant_placeholder3
lstm_850_while_identity
?
lstm_850/while/LessLesslstm_850_while_placeholder,lstm_850_while_less_lstm_850_strided_slice_1*
T0*
_output_shapes
: ]
lstm_850/while/IdentityIdentitylstm_850/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_850_while_identity lstm_850/while/Identity:output:0*(
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
while_cond_5107616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5107616___redundant_placeholder05
1while_while_cond_5107616___redundant_placeholder15
1while_while_cond_5107616___redundant_placeholder25
1while_while_cond_5107616___redundant_placeholder3
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106588

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
?
*sequential_283_lstm_851_while_cond_5105730L
Hsequential_283_lstm_851_while_sequential_283_lstm_851_while_loop_counterR
Nsequential_283_lstm_851_while_sequential_283_lstm_851_while_maximum_iterations-
)sequential_283_lstm_851_while_placeholder/
+sequential_283_lstm_851_while_placeholder_1/
+sequential_283_lstm_851_while_placeholder_2/
+sequential_283_lstm_851_while_placeholder_3N
Jsequential_283_lstm_851_while_less_sequential_283_lstm_851_strided_slice_1e
asequential_283_lstm_851_while_sequential_283_lstm_851_while_cond_5105730___redundant_placeholder0e
asequential_283_lstm_851_while_sequential_283_lstm_851_while_cond_5105730___redundant_placeholder1e
asequential_283_lstm_851_while_sequential_283_lstm_851_while_cond_5105730___redundant_placeholder2e
asequential_283_lstm_851_while_sequential_283_lstm_851_while_cond_5105730___redundant_placeholder3*
&sequential_283_lstm_851_while_identity
?
"sequential_283/lstm_851/while/LessLess)sequential_283_lstm_851_while_placeholderJsequential_283_lstm_851_while_less_sequential_283_lstm_851_strided_slice_1*
T0*
_output_shapes
: {
&sequential_283/lstm_851/while/IdentityIdentity&sequential_283/lstm_851/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_283_lstm_851_while_identity/sequential_283/lstm_851/while/Identity:output:0*(
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
/__inference_lstm_cell_850_layer_call_fn_5110971

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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106238o
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
while_body_5106936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_849_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_849_matmul_readvariableop_resource:	?G
4while_lstm_cell_849_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_849_biasadd_readvariableop_resource:	???*while/lstm_cell_849/BiasAdd/ReadVariableOp?)while/lstm_cell_849/MatMul/ReadVariableOp?+while/lstm_cell_849/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_849/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_849/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_849/addAddV2$while/lstm_cell_849/MatMul:product:0&while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_849/BiasAddBiasAddwhile/lstm_cell_849/add:z:02while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_849/splitSplit,while/lstm_cell_849/split/split_dim:output:0$while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_849/SigmoidSigmoid"while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_1Sigmoid"while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mulMul!while/lstm_cell_849/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_849/ReluRelu"while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_1Mulwhile/lstm_cell_849/Sigmoid:y:0&while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/add_1AddV2while/lstm_cell_849/mul:z:0while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_2Sigmoid"while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_849/Relu_1Reluwhile/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_2Mul!while/lstm_cell_849/Sigmoid_2:y:0(while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_849/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_849/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_849/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_849/BiasAdd/ReadVariableOp*^while/lstm_cell_849/MatMul/ReadVariableOp,^while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_849_biasadd_readvariableop_resource5while_lstm_cell_849_biasadd_readvariableop_resource_0"n
4while_lstm_cell_849_matmul_1_readvariableop_resource6while_lstm_cell_849_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_849_matmul_readvariableop_resource4while_lstm_cell_849_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_849/BiasAdd/ReadVariableOp*while/lstm_cell_849/BiasAdd/ReadVariableOp2V
)while/lstm_cell_849/MatMul/ReadVariableOp)while/lstm_cell_849/MatMul/ReadVariableOp2Z
+while/lstm_cell_849/MatMul_1/ReadVariableOp+while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_849_while_body_5108621.
*lstm_849_while_lstm_849_while_loop_counter4
0lstm_849_while_lstm_849_while_maximum_iterations
lstm_849_while_placeholder 
lstm_849_while_placeholder_1 
lstm_849_while_placeholder_2 
lstm_849_while_placeholder_3-
)lstm_849_while_lstm_849_strided_slice_1_0i
elstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0:	?R
?lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?M
>lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
lstm_849_while_identity
lstm_849_while_identity_1
lstm_849_while_identity_2
lstm_849_while_identity_3
lstm_849_while_identity_4
lstm_849_while_identity_5+
'lstm_849_while_lstm_849_strided_slice_1g
clstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensorN
;lstm_849_while_lstm_cell_849_matmul_readvariableop_resource:	?P
=lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource:	d?K
<lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource:	???3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp?2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp?4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp?
@lstm_849/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_849/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensor_0lstm_849_while_placeholderIlstm_849/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp=lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_849/while/lstm_cell_849/MatMulMatMul9lstm_849/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp?lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_849/while/lstm_cell_849/MatMul_1MatMullstm_849_while_placeholder_2<lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_849/while/lstm_cell_849/addAddV2-lstm_849/while/lstm_cell_849/MatMul:product:0/lstm_849/while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp>lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_849/while/lstm_cell_849/BiasAddBiasAdd$lstm_849/while/lstm_cell_849/add:z:0;lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_849/while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_849/while/lstm_cell_849/splitSplit5lstm_849/while/lstm_cell_849/split/split_dim:output:0-lstm_849/while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_849/while/lstm_cell_849/SigmoidSigmoid+lstm_849/while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_849/while/lstm_cell_849/Sigmoid_1Sigmoid+lstm_849/while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_849/while/lstm_cell_849/mulMul*lstm_849/while/lstm_cell_849/Sigmoid_1:y:0lstm_849_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_849/while/lstm_cell_849/ReluRelu+lstm_849/while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_849/while/lstm_cell_849/mul_1Mul(lstm_849/while/lstm_cell_849/Sigmoid:y:0/lstm_849/while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_849/while/lstm_cell_849/add_1AddV2$lstm_849/while/lstm_cell_849/mul:z:0&lstm_849/while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_849/while/lstm_cell_849/Sigmoid_2Sigmoid+lstm_849/while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_849/while/lstm_cell_849/Relu_1Relu&lstm_849/while/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_849/while/lstm_cell_849/mul_2Mul*lstm_849/while/lstm_cell_849/Sigmoid_2:y:01lstm_849/while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_849/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_849_while_placeholder_1lstm_849_while_placeholder&lstm_849/while/lstm_cell_849/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_849/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_849/while/addAddV2lstm_849_while_placeholderlstm_849/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_849/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_849/while/add_1AddV2*lstm_849_while_lstm_849_while_loop_counterlstm_849/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_849/while/IdentityIdentitylstm_849/while/add_1:z:0^lstm_849/while/NoOp*
T0*
_output_shapes
: ?
lstm_849/while/Identity_1Identity0lstm_849_while_lstm_849_while_maximum_iterations^lstm_849/while/NoOp*
T0*
_output_shapes
: t
lstm_849/while/Identity_2Identitylstm_849/while/add:z:0^lstm_849/while/NoOp*
T0*
_output_shapes
: ?
lstm_849/while/Identity_3IdentityClstm_849/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_849/while/NoOp*
T0*
_output_shapes
: ?
lstm_849/while/Identity_4Identity&lstm_849/while/lstm_cell_849/mul_2:z:0^lstm_849/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_849/while/Identity_5Identity&lstm_849/while/lstm_cell_849/add_1:z:0^lstm_849/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_849/while/NoOpNoOp4^lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp3^lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp5^lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_849_while_identity lstm_849/while/Identity:output:0"?
lstm_849_while_identity_1"lstm_849/while/Identity_1:output:0"?
lstm_849_while_identity_2"lstm_849/while/Identity_2:output:0"?
lstm_849_while_identity_3"lstm_849/while/Identity_3:output:0"?
lstm_849_while_identity_4"lstm_849/while/Identity_4:output:0"?
lstm_849_while_identity_5"lstm_849/while/Identity_5:output:0"T
'lstm_849_while_lstm_849_strided_slice_1)lstm_849_while_lstm_849_strided_slice_1_0"~
<lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource>lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0"?
=lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource?lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0"|
;lstm_849_while_lstm_cell_849_matmul_readvariableop_resource=lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0"?
clstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensorelstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp2h
2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp2l
4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_849_layer_call_fn_5109011
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5106162|
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
?T
?
*sequential_283_lstm_851_while_body_5105731L
Hsequential_283_lstm_851_while_sequential_283_lstm_851_while_loop_counterR
Nsequential_283_lstm_851_while_sequential_283_lstm_851_while_maximum_iterations-
)sequential_283_lstm_851_while_placeholder/
+sequential_283_lstm_851_while_placeholder_1/
+sequential_283_lstm_851_while_placeholder_2/
+sequential_283_lstm_851_while_placeholder_3K
Gsequential_283_lstm_851_while_sequential_283_lstm_851_strided_slice_1_0?
?sequential_283_lstm_851_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_851_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_283_lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0:2(`
Nsequential_283_lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0:
([
Msequential_283_lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0:(*
&sequential_283_lstm_851_while_identity,
(sequential_283_lstm_851_while_identity_1,
(sequential_283_lstm_851_while_identity_2,
(sequential_283_lstm_851_while_identity_3,
(sequential_283_lstm_851_while_identity_4,
(sequential_283_lstm_851_while_identity_5I
Esequential_283_lstm_851_while_sequential_283_lstm_851_strided_slice_1?
?sequential_283_lstm_851_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_851_tensorarrayunstack_tensorlistfromtensor\
Jsequential_283_lstm_851_while_lstm_cell_851_matmul_readvariableop_resource:2(^
Lsequential_283_lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource:
(Y
Ksequential_283_lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource:(??Bsequential_283/lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp?Asequential_283/lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp?Csequential_283/lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp?
Osequential_283/lstm_851/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_283/lstm_851/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_283_lstm_851_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_851_tensorarrayunstack_tensorlistfromtensor_0)sequential_283_lstm_851_while_placeholderXsequential_283/lstm_851/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_283/lstm_851/while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOpLsequential_283_lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_283/lstm_851/while/lstm_cell_851/MatMulMatMulHsequential_283/lstm_851/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_283/lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_283/lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOpNsequential_283_lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_283/lstm_851/while/lstm_cell_851/MatMul_1MatMul+sequential_283_lstm_851_while_placeholder_2Ksequential_283/lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_283/lstm_851/while/lstm_cell_851/addAddV2<sequential_283/lstm_851/while/lstm_cell_851/MatMul:product:0>sequential_283/lstm_851/while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_283/lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOpMsequential_283_lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_283/lstm_851/while/lstm_cell_851/BiasAddBiasAdd3sequential_283/lstm_851/while/lstm_cell_851/add:z:0Jsequential_283/lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_283/lstm_851/while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_283/lstm_851/while/lstm_cell_851/splitSplitDsequential_283/lstm_851/while/lstm_cell_851/split/split_dim:output:0<sequential_283/lstm_851/while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_283/lstm_851/while/lstm_cell_851/SigmoidSigmoid:sequential_283/lstm_851/while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_283/lstm_851/while/lstm_cell_851/Sigmoid_1Sigmoid:sequential_283/lstm_851/while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_283/lstm_851/while/lstm_cell_851/mulMul9sequential_283/lstm_851/while/lstm_cell_851/Sigmoid_1:y:0+sequential_283_lstm_851_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_283/lstm_851/while/lstm_cell_851/ReluRelu:sequential_283/lstm_851/while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_283/lstm_851/while/lstm_cell_851/mul_1Mul7sequential_283/lstm_851/while/lstm_cell_851/Sigmoid:y:0>sequential_283/lstm_851/while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_283/lstm_851/while/lstm_cell_851/add_1AddV23sequential_283/lstm_851/while/lstm_cell_851/mul:z:05sequential_283/lstm_851/while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_283/lstm_851/while/lstm_cell_851/Sigmoid_2Sigmoid:sequential_283/lstm_851/while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_283/lstm_851/while/lstm_cell_851/Relu_1Relu5sequential_283/lstm_851/while/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_283/lstm_851/while/lstm_cell_851/mul_2Mul9sequential_283/lstm_851/while/lstm_cell_851/Sigmoid_2:y:0@sequential_283/lstm_851/while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_283/lstm_851/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_283_lstm_851_while_placeholder_1)sequential_283_lstm_851_while_placeholder5sequential_283/lstm_851/while/lstm_cell_851/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_283/lstm_851/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_283/lstm_851/while/addAddV2)sequential_283_lstm_851_while_placeholder,sequential_283/lstm_851/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_283/lstm_851/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_283/lstm_851/while/add_1AddV2Hsequential_283_lstm_851_while_sequential_283_lstm_851_while_loop_counter.sequential_283/lstm_851/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_283/lstm_851/while/IdentityIdentity'sequential_283/lstm_851/while/add_1:z:0#^sequential_283/lstm_851/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_851/while/Identity_1IdentityNsequential_283_lstm_851_while_sequential_283_lstm_851_while_maximum_iterations#^sequential_283/lstm_851/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_851/while/Identity_2Identity%sequential_283/lstm_851/while/add:z:0#^sequential_283/lstm_851/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_851/while/Identity_3IdentityRsequential_283/lstm_851/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_283/lstm_851/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_851/while/Identity_4Identity5sequential_283/lstm_851/while/lstm_cell_851/mul_2:z:0#^sequential_283/lstm_851/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_283/lstm_851/while/Identity_5Identity5sequential_283/lstm_851/while/lstm_cell_851/add_1:z:0#^sequential_283/lstm_851/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_283/lstm_851/while/NoOpNoOpC^sequential_283/lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOpB^sequential_283/lstm_851/while/lstm_cell_851/MatMul/ReadVariableOpD^sequential_283/lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_283_lstm_851_while_identity/sequential_283/lstm_851/while/Identity:output:0"]
(sequential_283_lstm_851_while_identity_11sequential_283/lstm_851/while/Identity_1:output:0"]
(sequential_283_lstm_851_while_identity_21sequential_283/lstm_851/while/Identity_2:output:0"]
(sequential_283_lstm_851_while_identity_31sequential_283/lstm_851/while/Identity_3:output:0"]
(sequential_283_lstm_851_while_identity_41sequential_283/lstm_851/while/Identity_4:output:0"]
(sequential_283_lstm_851_while_identity_51sequential_283/lstm_851/while/Identity_5:output:0"?
Ksequential_283_lstm_851_while_lstm_cell_851_biasadd_readvariableop_resourceMsequential_283_lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0"?
Lsequential_283_lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resourceNsequential_283_lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0"?
Jsequential_283_lstm_851_while_lstm_cell_851_matmul_readvariableop_resourceLsequential_283_lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0"?
Esequential_283_lstm_851_while_sequential_283_lstm_851_strided_slice_1Gsequential_283_lstm_851_while_sequential_283_lstm_851_strided_slice_1_0"?
?sequential_283_lstm_851_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_851_tensorarrayunstack_tensorlistfromtensor?sequential_283_lstm_851_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_851_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_283/lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOpBsequential_283/lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp2?
Asequential_283/lstm_851/while/lstm_cell_851/MatMul/ReadVariableOpAsequential_283/lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp2?
Csequential_283/lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOpCsequential_283/lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_283_layer_call_fn_5110846

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
F__inference_dense_283_layer_call_and_return_conditional_losses_5107338o
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
while_body_5110467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_851_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_851_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_851_matmul_readvariableop_resource:2(F
4while_lstm_cell_851_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_851_biasadd_readvariableop_resource:(??*while/lstm_cell_851/BiasAdd/ReadVariableOp?)while/lstm_cell_851/MatMul/ReadVariableOp?+while/lstm_cell_851/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_851/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_851/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_851/addAddV2$while/lstm_cell_851/MatMul:product:0&while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_851/BiasAddBiasAddwhile/lstm_cell_851/add:z:02while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_851/splitSplit,while/lstm_cell_851/split/split_dim:output:0$while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_851/SigmoidSigmoid"while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_1Sigmoid"while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mulMul!while/lstm_cell_851/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_851/ReluRelu"while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_1Mulwhile/lstm_cell_851/Sigmoid:y:0&while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/add_1AddV2while/lstm_cell_851/mul:z:0while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_2Sigmoid"while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_851/Relu_1Reluwhile/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_2Mul!while/lstm_cell_851/Sigmoid_2:y:0(while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_851/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_851/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_851/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_851/BiasAdd/ReadVariableOp*^while/lstm_cell_851/MatMul/ReadVariableOp,^while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_851_biasadd_readvariableop_resource5while_lstm_cell_851_biasadd_readvariableop_resource_0"n
4while_lstm_cell_851_matmul_1_readvariableop_resource6while_lstm_cell_851_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_851_matmul_readvariableop_resource4while_lstm_cell_851_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_851/BiasAdd/ReadVariableOp*while/lstm_cell_851/BiasAdd/ReadVariableOp2V
)while/lstm_cell_851/MatMul/ReadVariableOp)while/lstm_cell_851/MatMul/ReadVariableOp2Z
+while/lstm_cell_851/MatMul_1/ReadVariableOp+while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5110323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5110323___redundant_placeholder05
1while_while_cond_5110323___redundant_placeholder15
1while_while_cond_5110323___redundant_placeholder25
1while_while_cond_5110323___redundant_placeholder3
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106734

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
while_body_5110610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_851_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_851_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_851_matmul_readvariableop_resource:2(F
4while_lstm_cell_851_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_851_biasadd_readvariableop_resource:(??*while/lstm_cell_851/BiasAdd/ReadVariableOp?)while/lstm_cell_851/MatMul/ReadVariableOp?+while/lstm_cell_851/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_851/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_851/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_851/addAddV2$while/lstm_cell_851/MatMul:product:0&while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_851/BiasAddBiasAddwhile/lstm_cell_851/add:z:02while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_851/splitSplit,while/lstm_cell_851/split/split_dim:output:0$while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_851/SigmoidSigmoid"while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_1Sigmoid"while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mulMul!while/lstm_cell_851/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_851/ReluRelu"while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_1Mulwhile/lstm_cell_851/Sigmoid:y:0&while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/add_1AddV2while/lstm_cell_851/mul:z:0while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_2Sigmoid"while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_851/Relu_1Reluwhile/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_2Mul!while/lstm_cell_851/Sigmoid_2:y:0(while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_851/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_851/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_851/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_851/BiasAdd/ReadVariableOp*^while/lstm_cell_851/MatMul/ReadVariableOp,^while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_851_biasadd_readvariableop_resource5while_lstm_cell_851_biasadd_readvariableop_resource_0"n
4while_lstm_cell_851_matmul_1_readvariableop_resource6while_lstm_cell_851_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_851_matmul_readvariableop_resource4while_lstm_cell_851_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_851/BiasAdd/ReadVariableOp*while/lstm_cell_851/BiasAdd/ReadVariableOp2V
)while/lstm_cell_851/MatMul/ReadVariableOp)while/lstm_cell_851/MatMul/ReadVariableOp2Z
+while/lstm_cell_851/MatMul_1/ReadVariableOp+while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5111118

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
while_cond_5107085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5107085___redundant_placeholder05
1while_while_cond_5107085___redundant_placeholder15
1while_while_cond_5107085___redundant_placeholder25
1while_while_cond_5107085___redundant_placeholder3
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110694

inputs>
,lstm_cell_851_matmul_readvariableop_resource:2(@
.lstm_cell_851_matmul_1_readvariableop_resource:
(;
-lstm_cell_851_biasadd_readvariableop_resource:(
identity??$lstm_cell_851/BiasAdd/ReadVariableOp?#lstm_cell_851/MatMul/ReadVariableOp?%lstm_cell_851/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_851/MatMul/ReadVariableOpReadVariableOp,lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_851/MatMulMatMulstrided_slice_2:output:0+lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_851/MatMul_1MatMulzeros:output:0-lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_851/addAddV2lstm_cell_851/MatMul:product:0 lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_851/BiasAddBiasAddlstm_cell_851/add:z:0,lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_851/splitSplit&lstm_cell_851/split/split_dim:output:0lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_851/SigmoidSigmoidlstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_1Sigmoidlstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_851/mulMullstm_cell_851/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_851/ReluRelulstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_1Mullstm_cell_851/Sigmoid:y:0 lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_851/add_1AddV2lstm_cell_851/mul:z:0lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_2Sigmoidlstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_851/Relu_1Relulstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_2Mullstm_cell_851/Sigmoid_2:y:0"lstm_cell_851/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_851_matmul_readvariableop_resource.lstm_cell_851_matmul_1_readvariableop_resource-lstm_cell_851_biasadd_readvariableop_resource*
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
while_body_5110610*
condR
while_cond_5110609*K
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
NoOpNoOp%^lstm_cell_851/BiasAdd/ReadVariableOp$^lstm_cell_851/MatMul/ReadVariableOp&^lstm_cell_851/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_851/BiasAdd/ReadVariableOp$lstm_cell_851/BiasAdd/ReadVariableOp2J
#lstm_cell_851/MatMul/ReadVariableOp#lstm_cell_851/MatMul/ReadVariableOp2N
%lstm_cell_851/MatMul_1/ReadVariableOp%lstm_cell_851/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_5107617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_850_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_850_matmul_readvariableop_resource:	d?G
4while_lstm_cell_850_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_850_biasadd_readvariableop_resource:	???*while/lstm_cell_850/BiasAdd/ReadVariableOp?)while/lstm_cell_850/MatMul/ReadVariableOp?+while/lstm_cell_850/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_850/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_850/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_850/addAddV2$while/lstm_cell_850/MatMul:product:0&while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_850/BiasAddBiasAddwhile/lstm_cell_850/add:z:02while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_850/splitSplit,while/lstm_cell_850/split/split_dim:output:0$while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_850/SigmoidSigmoid"while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_1Sigmoid"while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mulMul!while/lstm_cell_850/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_850/ReluRelu"while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_1Mulwhile/lstm_cell_850/Sigmoid:y:0&while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/add_1AddV2while/lstm_cell_850/mul:z:0while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_2Sigmoid"while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_850/Relu_1Reluwhile/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_2Mul!while/lstm_cell_850/Sigmoid_2:y:0(while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_850/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_850/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_850/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_850/BiasAdd/ReadVariableOp*^while/lstm_cell_850/MatMul/ReadVariableOp,^while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_850_biasadd_readvariableop_resource5while_lstm_cell_850_biasadd_readvariableop_resource_0"n
4while_lstm_cell_850_matmul_1_readvariableop_resource6while_lstm_cell_850_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_850_matmul_readvariableop_resource4while_lstm_cell_850_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_850/BiasAdd/ReadVariableOp*while/lstm_cell_850/BiasAdd/ReadVariableOp2V
)while/lstm_cell_850/MatMul/ReadVariableOp)while/lstm_cell_850/MatMul/ReadVariableOp2Z
+while/lstm_cell_850/MatMul_1/ReadVariableOp+while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5110137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_850_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_850_matmul_readvariableop_resource:	d?G
4while_lstm_cell_850_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_850_biasadd_readvariableop_resource:	???*while/lstm_cell_850/BiasAdd/ReadVariableOp?)while/lstm_cell_850/MatMul/ReadVariableOp?+while/lstm_cell_850/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_850/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_850/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_850/addAddV2$while/lstm_cell_850/MatMul:product:0&while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_850/BiasAddBiasAddwhile/lstm_cell_850/add:z:02while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_850/splitSplit,while/lstm_cell_850/split/split_dim:output:0$while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_850/SigmoidSigmoid"while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_1Sigmoid"while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mulMul!while/lstm_cell_850/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_850/ReluRelu"while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_1Mulwhile/lstm_cell_850/Sigmoid:y:0&while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/add_1AddV2while/lstm_cell_850/mul:z:0while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_2Sigmoid"while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_850/Relu_1Reluwhile/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_2Mul!while/lstm_cell_850/Sigmoid_2:y:0(while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_850/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_850/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_850/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_850/BiasAdd/ReadVariableOp*^while/lstm_cell_850/MatMul/ReadVariableOp,^while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_850_biasadd_readvariableop_resource5while_lstm_cell_850_biasadd_readvariableop_resource_0"n
4while_lstm_cell_850_matmul_1_readvariableop_resource6while_lstm_cell_850_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_850_matmul_readvariableop_resource4while_lstm_cell_850_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_850/BiasAdd/ReadVariableOp*while/lstm_cell_850/BiasAdd/ReadVariableOp2V
)while/lstm_cell_850/MatMul/ReadVariableOp)while/lstm_cell_850/MatMul/ReadVariableOp2Z
+while/lstm_cell_850/MatMul_1/ReadVariableOp+while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_851_while_body_5108472.
*lstm_851_while_lstm_851_while_loop_counter4
0lstm_851_while_lstm_851_while_maximum_iterations
lstm_851_while_placeholder 
lstm_851_while_placeholder_1 
lstm_851_while_placeholder_2 
lstm_851_while_placeholder_3-
)lstm_851_while_lstm_851_strided_slice_1_0i
elstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0:2(Q
?lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(L
>lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0:(
lstm_851_while_identity
lstm_851_while_identity_1
lstm_851_while_identity_2
lstm_851_while_identity_3
lstm_851_while_identity_4
lstm_851_while_identity_5+
'lstm_851_while_lstm_851_strided_slice_1g
clstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensorM
;lstm_851_while_lstm_cell_851_matmul_readvariableop_resource:2(O
=lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource:
(J
<lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource:(??3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp?2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp?4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp?
@lstm_851/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_851/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensor_0lstm_851_while_placeholderIlstm_851/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp=lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_851/while/lstm_cell_851/MatMulMatMul9lstm_851/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp?lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_851/while/lstm_cell_851/MatMul_1MatMullstm_851_while_placeholder_2<lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_851/while/lstm_cell_851/addAddV2-lstm_851/while/lstm_cell_851/MatMul:product:0/lstm_851/while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp>lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_851/while/lstm_cell_851/BiasAddBiasAdd$lstm_851/while/lstm_cell_851/add:z:0;lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_851/while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_851/while/lstm_cell_851/splitSplit5lstm_851/while/lstm_cell_851/split/split_dim:output:0-lstm_851/while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_851/while/lstm_cell_851/SigmoidSigmoid+lstm_851/while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_851/while/lstm_cell_851/Sigmoid_1Sigmoid+lstm_851/while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_851/while/lstm_cell_851/mulMul*lstm_851/while/lstm_cell_851/Sigmoid_1:y:0lstm_851_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_851/while/lstm_cell_851/ReluRelu+lstm_851/while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_851/while/lstm_cell_851/mul_1Mul(lstm_851/while/lstm_cell_851/Sigmoid:y:0/lstm_851/while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_851/while/lstm_cell_851/add_1AddV2$lstm_851/while/lstm_cell_851/mul:z:0&lstm_851/while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_851/while/lstm_cell_851/Sigmoid_2Sigmoid+lstm_851/while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_851/while/lstm_cell_851/Relu_1Relu&lstm_851/while/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_851/while/lstm_cell_851/mul_2Mul*lstm_851/while/lstm_cell_851/Sigmoid_2:y:01lstm_851/while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_851/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_851_while_placeholder_1lstm_851_while_placeholder&lstm_851/while/lstm_cell_851/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_851/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_851/while/addAddV2lstm_851_while_placeholderlstm_851/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_851/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_851/while/add_1AddV2*lstm_851_while_lstm_851_while_loop_counterlstm_851/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_851/while/IdentityIdentitylstm_851/while/add_1:z:0^lstm_851/while/NoOp*
T0*
_output_shapes
: ?
lstm_851/while/Identity_1Identity0lstm_851_while_lstm_851_while_maximum_iterations^lstm_851/while/NoOp*
T0*
_output_shapes
: t
lstm_851/while/Identity_2Identitylstm_851/while/add:z:0^lstm_851/while/NoOp*
T0*
_output_shapes
: ?
lstm_851/while/Identity_3IdentityClstm_851/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_851/while/NoOp*
T0*
_output_shapes
: ?
lstm_851/while/Identity_4Identity&lstm_851/while/lstm_cell_851/mul_2:z:0^lstm_851/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_851/while/Identity_5Identity&lstm_851/while/lstm_cell_851/add_1:z:0^lstm_851/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_851/while/NoOpNoOp4^lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp3^lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp5^lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_851_while_identity lstm_851/while/Identity:output:0"?
lstm_851_while_identity_1"lstm_851/while/Identity_1:output:0"?
lstm_851_while_identity_2"lstm_851/while/Identity_2:output:0"?
lstm_851_while_identity_3"lstm_851/while/Identity_3:output:0"?
lstm_851_while_identity_4"lstm_851/while/Identity_4:output:0"?
lstm_851_while_identity_5"lstm_851/while/Identity_5:output:0"T
'lstm_851_while_lstm_851_strided_slice_1)lstm_851_while_lstm_851_strided_slice_1_0"~
<lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource>lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0"?
=lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource?lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0"|
;lstm_851_while_lstm_cell_851_matmul_readvariableop_resource=lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0"?
clstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensorelstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp2h
2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp2l
4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109605

inputs?
,lstm_cell_849_matmul_readvariableop_resource:	?A
.lstm_cell_849_matmul_1_readvariableop_resource:	d?<
-lstm_cell_849_biasadd_readvariableop_resource:	?
identity??$lstm_cell_849/BiasAdd/ReadVariableOp?#lstm_cell_849/MatMul/ReadVariableOp?%lstm_cell_849/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_849/MatMul/ReadVariableOpReadVariableOp,lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_849/MatMulMatMulstrided_slice_2:output:0+lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_849/MatMul_1MatMulzeros:output:0-lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_849/addAddV2lstm_cell_849/MatMul:product:0 lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_849/BiasAddBiasAddlstm_cell_849/add:z:0,lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_849/splitSplit&lstm_cell_849/split/split_dim:output:0lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_849/SigmoidSigmoidlstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_1Sigmoidlstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_849/mulMullstm_cell_849/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_849/ReluRelulstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_1Mullstm_cell_849/Sigmoid:y:0 lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_849/add_1AddV2lstm_cell_849/mul:z:0lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_2Sigmoidlstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_849/Relu_1Relulstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_2Mullstm_cell_849/Sigmoid_2:y:0"lstm_cell_849/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_849_matmul_readvariableop_resource.lstm_cell_849_matmul_1_readvariableop_resource-lstm_cell_849_biasadd_readvariableop_resource*
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
while_body_5109521*
condR
while_cond_5109520*K
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
NoOpNoOp%^lstm_cell_849/BiasAdd/ReadVariableOp$^lstm_cell_849/MatMul/ReadVariableOp&^lstm_cell_849/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_849/BiasAdd/ReadVariableOp$lstm_cell_849/BiasAdd/ReadVariableOp2J
#lstm_cell_849/MatMul/ReadVariableOp#lstm_cell_849/MatMul/ReadVariableOp2N
%lstm_cell_849/MatMul_1/ReadVariableOp%lstm_cell_849/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_849_layer_call_fn_5109000
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5105971|
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
?#
?
while_body_5106443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_850_5106467_0:	d?0
while_lstm_cell_850_5106469_0:	2?,
while_lstm_cell_850_5106471_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_850_5106467:	d?.
while_lstm_cell_850_5106469:	2?*
while_lstm_cell_850_5106471:	???+while/lstm_cell_850/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_850/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_850_5106467_0while_lstm_cell_850_5106469_0while_lstm_cell_850_5106471_0*
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106384?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_850/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_850/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_850/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_850/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_850_5106467while_lstm_cell_850_5106467_0"<
while_lstm_cell_850_5106469while_lstm_cell_850_5106469_0"<
while_lstm_cell_850_5106471while_lstm_cell_850_5106471_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_850/StatefulPartitionedCall+while/lstm_cell_850/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5107934

inputs#
lstm_849_5107907:	?#
lstm_849_5107909:	d?
lstm_849_5107911:	?#
lstm_850_5107914:	d?#
lstm_850_5107916:	2?
lstm_850_5107918:	?"
lstm_851_5107921:2("
lstm_851_5107923:
(
lstm_851_5107925:(#
dense_283_5107928:

dense_283_5107930:
identity??!dense_283/StatefulPartitionedCall? lstm_849/StatefulPartitionedCall? lstm_850/StatefulPartitionedCall? lstm_851/StatefulPartitionedCall?
 lstm_849/StatefulPartitionedCallStatefulPartitionedCallinputslstm_849_5107907lstm_849_5107909lstm_849_5107911*
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107866?
 lstm_850/StatefulPartitionedCallStatefulPartitionedCall)lstm_849/StatefulPartitionedCall:output:0lstm_850_5107914lstm_850_5107916lstm_850_5107918*
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107701?
 lstm_851/StatefulPartitionedCallStatefulPartitionedCall)lstm_850/StatefulPartitionedCall:output:0lstm_851_5107921lstm_851_5107923lstm_851_5107925*
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107536?
!dense_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_851/StatefulPartitionedCall:output:0dense_283_5107928dense_283_5107930*
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
F__inference_dense_283_layer_call_and_return_conditional_losses_5107338y
IdentityIdentity*dense_283/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_283/StatefulPartitionedCall!^lstm_849/StatefulPartitionedCall!^lstm_850/StatefulPartitionedCall!^lstm_851/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_283/StatefulPartitionedCall!dense_283/StatefulPartitionedCall2D
 lstm_849/StatefulPartitionedCall lstm_849/StatefulPartitionedCall2D
 lstm_850/StatefulPartitionedCall lstm_850/StatefulPartitionedCall2D
 lstm_851/StatefulPartitionedCall lstm_851/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5109851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_850_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_850_matmul_readvariableop_resource:	d?G
4while_lstm_cell_850_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_850_biasadd_readvariableop_resource:	???*while/lstm_cell_850/BiasAdd/ReadVariableOp?)while/lstm_cell_850/MatMul/ReadVariableOp?+while/lstm_cell_850/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_850/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_850/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_850/addAddV2$while/lstm_cell_850/MatMul:product:0&while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_850/BiasAddBiasAddwhile/lstm_cell_850/add:z:02while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_850/splitSplit,while/lstm_cell_850/split/split_dim:output:0$while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_850/SigmoidSigmoid"while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_1Sigmoid"while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mulMul!while/lstm_cell_850/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_850/ReluRelu"while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_1Mulwhile/lstm_cell_850/Sigmoid:y:0&while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/add_1AddV2while/lstm_cell_850/mul:z:0while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_2Sigmoid"while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_850/Relu_1Reluwhile/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_2Mul!while/lstm_cell_850/Sigmoid_2:y:0(while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_850/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_850/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_850/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_850/BiasAdd/ReadVariableOp*^while/lstm_cell_850/MatMul/ReadVariableOp,^while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_850_biasadd_readvariableop_resource5while_lstm_cell_850_biasadd_readvariableop_resource_0"n
4while_lstm_cell_850_matmul_1_readvariableop_resource6while_lstm_cell_850_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_850_matmul_readvariableop_resource4while_lstm_cell_850_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_850/BiasAdd/ReadVariableOp*while/lstm_cell_850/BiasAdd/ReadVariableOp2V
)while/lstm_cell_850/MatMul/ReadVariableOp)while/lstm_cell_850/MatMul/ReadVariableOp2Z
+while/lstm_cell_850/MatMul_1/ReadVariableOp+while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5106671

inputs'
lstm_cell_851_5106589:2('
lstm_cell_851_5106591:
(#
lstm_cell_851_5106593:(
identity??%lstm_cell_851/StatefulPartitionedCall?while;
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
%lstm_cell_851/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_851_5106589lstm_cell_851_5106591lstm_cell_851_5106593*
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106588n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_851_5106589lstm_cell_851_5106591lstm_cell_851_5106593*
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
while_body_5106602*
condR
while_cond_5106601*K
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
NoOpNoOp&^lstm_cell_851/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_851/StatefulPartitionedCall%lstm_cell_851/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_283_layer_call_and_return_conditional_losses_5110856

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
while_body_5109092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_849_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_849_matmul_readvariableop_resource:	?G
4while_lstm_cell_849_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_849_biasadd_readvariableop_resource:	???*while/lstm_cell_849/BiasAdd/ReadVariableOp?)while/lstm_cell_849/MatMul/ReadVariableOp?+while/lstm_cell_849/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_849/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_849/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_849/addAddV2$while/lstm_cell_849/MatMul:product:0&while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_849/BiasAddBiasAddwhile/lstm_cell_849/add:z:02while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_849/splitSplit,while/lstm_cell_849/split/split_dim:output:0$while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_849/SigmoidSigmoid"while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_1Sigmoid"while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mulMul!while/lstm_cell_849/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_849/ReluRelu"while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_1Mulwhile/lstm_cell_849/Sigmoid:y:0&while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/add_1AddV2while/lstm_cell_849/mul:z:0while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_2Sigmoid"while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_849/Relu_1Reluwhile/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_2Mul!while/lstm_cell_849/Sigmoid_2:y:0(while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_849/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_849/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_849/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_849/BiasAdd/ReadVariableOp*^while/lstm_cell_849/MatMul/ReadVariableOp,^while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_849_biasadd_readvariableop_resource5while_lstm_cell_849_biasadd_readvariableop_resource_0"n
4while_lstm_cell_849_matmul_1_readvariableop_resource6while_lstm_cell_849_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_849_matmul_readvariableop_resource4while_lstm_cell_849_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_849/BiasAdd/ReadVariableOp*while/lstm_cell_849/BiasAdd/ReadVariableOp2V
)while/lstm_cell_849/MatMul/ReadVariableOp)while/lstm_cell_849/MatMul/ReadVariableOp2Z
+while/lstm_cell_849/MatMul_1/ReadVariableOp+while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107536

inputs>
,lstm_cell_851_matmul_readvariableop_resource:2(@
.lstm_cell_851_matmul_1_readvariableop_resource:
(;
-lstm_cell_851_biasadd_readvariableop_resource:(
identity??$lstm_cell_851/BiasAdd/ReadVariableOp?#lstm_cell_851/MatMul/ReadVariableOp?%lstm_cell_851/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_851/MatMul/ReadVariableOpReadVariableOp,lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_851/MatMulMatMulstrided_slice_2:output:0+lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_851/MatMul_1MatMulzeros:output:0-lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_851/addAddV2lstm_cell_851/MatMul:product:0 lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_851/BiasAddBiasAddlstm_cell_851/add:z:0,lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_851/splitSplit&lstm_cell_851/split/split_dim:output:0lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_851/SigmoidSigmoidlstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_1Sigmoidlstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_851/mulMullstm_cell_851/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_851/ReluRelulstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_1Mullstm_cell_851/Sigmoid:y:0 lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_851/add_1AddV2lstm_cell_851/mul:z:0lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_2Sigmoidlstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_851/Relu_1Relulstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_2Mullstm_cell_851/Sigmoid_2:y:0"lstm_cell_851/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_851_matmul_readvariableop_resource.lstm_cell_851_matmul_1_readvariableop_resource-lstm_cell_851_biasadd_readvariableop_resource*
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
while_body_5107452*
condR
while_cond_5107451*K
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
NoOpNoOp%^lstm_cell_851/BiasAdd/ReadVariableOp$^lstm_cell_851/MatMul/ReadVariableOp&^lstm_cell_851/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_851/BiasAdd/ReadVariableOp$lstm_cell_851/BiasAdd/ReadVariableOp2J
#lstm_cell_851/MatMul/ReadVariableOp#lstm_cell_851/MatMul/ReadVariableOp2N
%lstm_cell_851/MatMul_1/ReadVariableOp%lstm_cell_851/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_5109378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_849_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_849_matmul_readvariableop_resource:	?G
4while_lstm_cell_849_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_849_biasadd_readvariableop_resource:	???*while/lstm_cell_849/BiasAdd/ReadVariableOp?)while/lstm_cell_849/MatMul/ReadVariableOp?+while/lstm_cell_849/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_849/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_849/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_849/addAddV2$while/lstm_cell_849/MatMul:product:0&while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_849/BiasAddBiasAddwhile/lstm_cell_849/add:z:02while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_849/splitSplit,while/lstm_cell_849/split/split_dim:output:0$while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_849/SigmoidSigmoid"while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_1Sigmoid"while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mulMul!while/lstm_cell_849/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_849/ReluRelu"while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_1Mulwhile/lstm_cell_849/Sigmoid:y:0&while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/add_1AddV2while/lstm_cell_849/mul:z:0while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_2Sigmoid"while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_849/Relu_1Reluwhile/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_2Mul!while/lstm_cell_849/Sigmoid_2:y:0(while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_849/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_849/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_849/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_849/BiasAdd/ReadVariableOp*^while/lstm_cell_849/MatMul/ReadVariableOp,^while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_849_biasadd_readvariableop_resource5while_lstm_cell_849_biasadd_readvariableop_resource_0"n
4while_lstm_cell_849_matmul_1_readvariableop_resource6while_lstm_cell_849_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_849_matmul_readvariableop_resource4while_lstm_cell_849_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_849/BiasAdd/ReadVariableOp*while/lstm_cell_849/BiasAdd/ReadVariableOp2V
)while/lstm_cell_849/MatMul/ReadVariableOp)while/lstm_cell_849/MatMul/ReadVariableOp2Z
+while/lstm_cell_849/MatMul_1/ReadVariableOp+while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5109234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109234___redundant_placeholder05
1while_while_cond_5109234___redundant_placeholder15
1while_while_cond_5109234___redundant_placeholder25
1while_while_cond_5109234___redundant_placeholder3
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108562

inputsH
5lstm_849_lstm_cell_849_matmul_readvariableop_resource:	?J
7lstm_849_lstm_cell_849_matmul_1_readvariableop_resource:	d?E
6lstm_849_lstm_cell_849_biasadd_readvariableop_resource:	?H
5lstm_850_lstm_cell_850_matmul_readvariableop_resource:	d?J
7lstm_850_lstm_cell_850_matmul_1_readvariableop_resource:	2?E
6lstm_850_lstm_cell_850_biasadd_readvariableop_resource:	?G
5lstm_851_lstm_cell_851_matmul_readvariableop_resource:2(I
7lstm_851_lstm_cell_851_matmul_1_readvariableop_resource:
(D
6lstm_851_lstm_cell_851_biasadd_readvariableop_resource:(:
(dense_283_matmul_readvariableop_resource:
7
)dense_283_biasadd_readvariableop_resource:
identity?? dense_283/BiasAdd/ReadVariableOp?dense_283/MatMul/ReadVariableOp?-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp?,lstm_849/lstm_cell_849/MatMul/ReadVariableOp?.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp?lstm_849/while?-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp?,lstm_850/lstm_cell_850/MatMul/ReadVariableOp?.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp?lstm_850/while?-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp?,lstm_851/lstm_cell_851/MatMul/ReadVariableOp?.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp?lstm_851/whileD
lstm_849/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_849/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_849/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_849/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_sliceStridedSlicelstm_849/Shape:output:0%lstm_849/strided_slice/stack:output:0'lstm_849/strided_slice/stack_1:output:0'lstm_849/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_849/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_849/zeros/packedPacklstm_849/strided_slice:output:0 lstm_849/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_849/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_849/zerosFilllstm_849/zeros/packed:output:0lstm_849/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_849/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_849/zeros_1/packedPacklstm_849/strided_slice:output:0"lstm_849/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_849/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_849/zeros_1Fill lstm_849/zeros_1/packed:output:0lstm_849/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_849/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_849/transpose	Transposeinputs lstm_849/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_849/Shape_1Shapelstm_849/transpose:y:0*
T0*
_output_shapes
:h
lstm_849/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_849/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_849/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_slice_1StridedSlicelstm_849/Shape_1:output:0'lstm_849/strided_slice_1/stack:output:0)lstm_849/strided_slice_1/stack_1:output:0)lstm_849/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_849/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_849/TensorArrayV2TensorListReserve-lstm_849/TensorArrayV2/element_shape:output:0!lstm_849/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_849/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_849/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_849/transpose:y:0Glstm_849/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_849/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_849/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_849/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_slice_2StridedSlicelstm_849/transpose:y:0'lstm_849/strided_slice_2/stack:output:0)lstm_849/strided_slice_2/stack_1:output:0)lstm_849/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_849/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp5lstm_849_lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_849/lstm_cell_849/MatMulMatMul!lstm_849/strided_slice_2:output:04lstm_849/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp7lstm_849_lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_849/lstm_cell_849/MatMul_1MatMullstm_849/zeros:output:06lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_849/lstm_cell_849/addAddV2'lstm_849/lstm_cell_849/MatMul:product:0)lstm_849/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp6lstm_849_lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_849/lstm_cell_849/BiasAddBiasAddlstm_849/lstm_cell_849/add:z:05lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_849/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_849/lstm_cell_849/splitSplit/lstm_849/lstm_cell_849/split/split_dim:output:0'lstm_849/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_849/lstm_cell_849/SigmoidSigmoid%lstm_849/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_849/lstm_cell_849/Sigmoid_1Sigmoid%lstm_849/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/mulMul$lstm_849/lstm_cell_849/Sigmoid_1:y:0lstm_849/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_849/lstm_cell_849/ReluRelu%lstm_849/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/mul_1Mul"lstm_849/lstm_cell_849/Sigmoid:y:0)lstm_849/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/add_1AddV2lstm_849/lstm_cell_849/mul:z:0 lstm_849/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_849/lstm_cell_849/Sigmoid_2Sigmoid%lstm_849/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_849/lstm_cell_849/Relu_1Relu lstm_849/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/mul_2Mul$lstm_849/lstm_cell_849/Sigmoid_2:y:0+lstm_849/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_849/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_849/TensorArrayV2_1TensorListReserve/lstm_849/TensorArrayV2_1/element_shape:output:0!lstm_849/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_849/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_849/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_849/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_849/whileWhile$lstm_849/while/loop_counter:output:0*lstm_849/while/maximum_iterations:output:0lstm_849/time:output:0!lstm_849/TensorArrayV2_1:handle:0lstm_849/zeros:output:0lstm_849/zeros_1:output:0!lstm_849/strided_slice_1:output:0@lstm_849/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_849_lstm_cell_849_matmul_readvariableop_resource7lstm_849_lstm_cell_849_matmul_1_readvariableop_resource6lstm_849_lstm_cell_849_biasadd_readvariableop_resource*
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
lstm_849_while_body_5108194*'
condR
lstm_849_while_cond_5108193*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_849/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_849/TensorArrayV2Stack/TensorListStackTensorListStacklstm_849/while:output:3Blstm_849/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_849/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_849/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_849/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_slice_3StridedSlice4lstm_849/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_849/strided_slice_3/stack:output:0)lstm_849/strided_slice_3/stack_1:output:0)lstm_849/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_849/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_849/transpose_1	Transpose4lstm_849/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_849/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_849/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_850/ShapeShapelstm_849/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_850/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_850/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_850/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_sliceStridedSlicelstm_850/Shape:output:0%lstm_850/strided_slice/stack:output:0'lstm_850/strided_slice/stack_1:output:0'lstm_850/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_850/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_850/zeros/packedPacklstm_850/strided_slice:output:0 lstm_850/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_850/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_850/zerosFilllstm_850/zeros/packed:output:0lstm_850/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_850/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_850/zeros_1/packedPacklstm_850/strided_slice:output:0"lstm_850/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_850/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_850/zeros_1Fill lstm_850/zeros_1/packed:output:0lstm_850/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_850/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_850/transpose	Transposelstm_849/transpose_1:y:0 lstm_850/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_850/Shape_1Shapelstm_850/transpose:y:0*
T0*
_output_shapes
:h
lstm_850/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_850/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_850/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_slice_1StridedSlicelstm_850/Shape_1:output:0'lstm_850/strided_slice_1/stack:output:0)lstm_850/strided_slice_1/stack_1:output:0)lstm_850/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_850/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_850/TensorArrayV2TensorListReserve-lstm_850/TensorArrayV2/element_shape:output:0!lstm_850/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_850/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_850/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_850/transpose:y:0Glstm_850/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_850/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_850/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_850/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_slice_2StridedSlicelstm_850/transpose:y:0'lstm_850/strided_slice_2/stack:output:0)lstm_850/strided_slice_2/stack_1:output:0)lstm_850/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_850/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp5lstm_850_lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_850/lstm_cell_850/MatMulMatMul!lstm_850/strided_slice_2:output:04lstm_850/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp7lstm_850_lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_850/lstm_cell_850/MatMul_1MatMullstm_850/zeros:output:06lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_850/lstm_cell_850/addAddV2'lstm_850/lstm_cell_850/MatMul:product:0)lstm_850/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp6lstm_850_lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_850/lstm_cell_850/BiasAddBiasAddlstm_850/lstm_cell_850/add:z:05lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_850/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_850/lstm_cell_850/splitSplit/lstm_850/lstm_cell_850/split/split_dim:output:0'lstm_850/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_850/lstm_cell_850/SigmoidSigmoid%lstm_850/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_850/lstm_cell_850/Sigmoid_1Sigmoid%lstm_850/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/mulMul$lstm_850/lstm_cell_850/Sigmoid_1:y:0lstm_850/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_850/lstm_cell_850/ReluRelu%lstm_850/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/mul_1Mul"lstm_850/lstm_cell_850/Sigmoid:y:0)lstm_850/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/add_1AddV2lstm_850/lstm_cell_850/mul:z:0 lstm_850/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_850/lstm_cell_850/Sigmoid_2Sigmoid%lstm_850/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_850/lstm_cell_850/Relu_1Relu lstm_850/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/mul_2Mul$lstm_850/lstm_cell_850/Sigmoid_2:y:0+lstm_850/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_850/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_850/TensorArrayV2_1TensorListReserve/lstm_850/TensorArrayV2_1/element_shape:output:0!lstm_850/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_850/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_850/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_850/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_850/whileWhile$lstm_850/while/loop_counter:output:0*lstm_850/while/maximum_iterations:output:0lstm_850/time:output:0!lstm_850/TensorArrayV2_1:handle:0lstm_850/zeros:output:0lstm_850/zeros_1:output:0!lstm_850/strided_slice_1:output:0@lstm_850/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_850_lstm_cell_850_matmul_readvariableop_resource7lstm_850_lstm_cell_850_matmul_1_readvariableop_resource6lstm_850_lstm_cell_850_biasadd_readvariableop_resource*
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
lstm_850_while_body_5108333*'
condR
lstm_850_while_cond_5108332*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_850/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_850/TensorArrayV2Stack/TensorListStackTensorListStacklstm_850/while:output:3Blstm_850/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_850/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_850/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_850/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_slice_3StridedSlice4lstm_850/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_850/strided_slice_3/stack:output:0)lstm_850/strided_slice_3/stack_1:output:0)lstm_850/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_850/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_850/transpose_1	Transpose4lstm_850/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_850/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_850/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_851/ShapeShapelstm_850/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_851/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_851/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_851/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_sliceStridedSlicelstm_851/Shape:output:0%lstm_851/strided_slice/stack:output:0'lstm_851/strided_slice/stack_1:output:0'lstm_851/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_851/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_851/zeros/packedPacklstm_851/strided_slice:output:0 lstm_851/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_851/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_851/zerosFilllstm_851/zeros/packed:output:0lstm_851/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_851/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_851/zeros_1/packedPacklstm_851/strided_slice:output:0"lstm_851/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_851/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_851/zeros_1Fill lstm_851/zeros_1/packed:output:0lstm_851/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_851/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_851/transpose	Transposelstm_850/transpose_1:y:0 lstm_851/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_851/Shape_1Shapelstm_851/transpose:y:0*
T0*
_output_shapes
:h
lstm_851/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_851/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_851/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_slice_1StridedSlicelstm_851/Shape_1:output:0'lstm_851/strided_slice_1/stack:output:0)lstm_851/strided_slice_1/stack_1:output:0)lstm_851/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_851/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_851/TensorArrayV2TensorListReserve-lstm_851/TensorArrayV2/element_shape:output:0!lstm_851/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_851/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_851/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_851/transpose:y:0Glstm_851/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_851/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_851/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_851/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_slice_2StridedSlicelstm_851/transpose:y:0'lstm_851/strided_slice_2/stack:output:0)lstm_851/strided_slice_2/stack_1:output:0)lstm_851/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_851/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp5lstm_851_lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_851/lstm_cell_851/MatMulMatMul!lstm_851/strided_slice_2:output:04lstm_851/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp7lstm_851_lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_851/lstm_cell_851/MatMul_1MatMullstm_851/zeros:output:06lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_851/lstm_cell_851/addAddV2'lstm_851/lstm_cell_851/MatMul:product:0)lstm_851/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp6lstm_851_lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_851/lstm_cell_851/BiasAddBiasAddlstm_851/lstm_cell_851/add:z:05lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_851/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_851/lstm_cell_851/splitSplit/lstm_851/lstm_cell_851/split/split_dim:output:0'lstm_851/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_851/lstm_cell_851/SigmoidSigmoid%lstm_851/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_851/lstm_cell_851/Sigmoid_1Sigmoid%lstm_851/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/mulMul$lstm_851/lstm_cell_851/Sigmoid_1:y:0lstm_851/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_851/lstm_cell_851/ReluRelu%lstm_851/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/mul_1Mul"lstm_851/lstm_cell_851/Sigmoid:y:0)lstm_851/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/add_1AddV2lstm_851/lstm_cell_851/mul:z:0 lstm_851/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_851/lstm_cell_851/Sigmoid_2Sigmoid%lstm_851/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_851/lstm_cell_851/Relu_1Relu lstm_851/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/mul_2Mul$lstm_851/lstm_cell_851/Sigmoid_2:y:0+lstm_851/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_851/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_851/TensorArrayV2_1TensorListReserve/lstm_851/TensorArrayV2_1/element_shape:output:0!lstm_851/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_851/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_851/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_851/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_851/whileWhile$lstm_851/while/loop_counter:output:0*lstm_851/while/maximum_iterations:output:0lstm_851/time:output:0!lstm_851/TensorArrayV2_1:handle:0lstm_851/zeros:output:0lstm_851/zeros_1:output:0!lstm_851/strided_slice_1:output:0@lstm_851/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_851_lstm_cell_851_matmul_readvariableop_resource7lstm_851_lstm_cell_851_matmul_1_readvariableop_resource6lstm_851_lstm_cell_851_biasadd_readvariableop_resource*
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
lstm_851_while_body_5108472*'
condR
lstm_851_while_cond_5108471*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_851/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_851/TensorArrayV2Stack/TensorListStackTensorListStacklstm_851/while:output:3Blstm_851/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_851/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_851/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_851/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_slice_3StridedSlice4lstm_851/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_851/strided_slice_3/stack:output:0)lstm_851/strided_slice_3/stack_1:output:0)lstm_851/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_851/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_851/transpose_1	Transpose4lstm_851/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_851/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_851/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_283/MatMul/ReadVariableOpReadVariableOp(dense_283_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_283/MatMulMatMul!lstm_851/strided_slice_3:output:0'dense_283/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_283/BiasAdd/ReadVariableOpReadVariableOp)dense_283_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_283/BiasAddBiasAdddense_283/MatMul:product:0(dense_283/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_283/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_283/BiasAdd/ReadVariableOp ^dense_283/MatMul/ReadVariableOp.^lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp-^lstm_849/lstm_cell_849/MatMul/ReadVariableOp/^lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp^lstm_849/while.^lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp-^lstm_850/lstm_cell_850/MatMul/ReadVariableOp/^lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp^lstm_850/while.^lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp-^lstm_851/lstm_cell_851/MatMul/ReadVariableOp/^lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp^lstm_851/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_283/BiasAdd/ReadVariableOp dense_283/BiasAdd/ReadVariableOp2B
dense_283/MatMul/ReadVariableOpdense_283/MatMul/ReadVariableOp2^
-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp2\
,lstm_849/lstm_cell_849/MatMul/ReadVariableOp,lstm_849/lstm_cell_849/MatMul/ReadVariableOp2`
.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp2 
lstm_849/whilelstm_849/while2^
-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp2\
,lstm_850/lstm_cell_850/MatMul/ReadVariableOp,lstm_850/lstm_cell_850/MatMul/ReadVariableOp2`
.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp2 
lstm_850/whilelstm_850/while2^
-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp2\
,lstm_851/lstm_cell_851/MatMul/ReadVariableOp,lstm_851/lstm_cell_851/MatMul/ReadVariableOp2`
.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp2 
lstm_851/whilelstm_851/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_850_while_body_5108333.
*lstm_850_while_lstm_850_while_loop_counter4
0lstm_850_while_lstm_850_while_maximum_iterations
lstm_850_while_placeholder 
lstm_850_while_placeholder_1 
lstm_850_while_placeholder_2 
lstm_850_while_placeholder_3-
)lstm_850_while_lstm_850_strided_slice_1_0i
elstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0:	d?R
?lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?M
>lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
lstm_850_while_identity
lstm_850_while_identity_1
lstm_850_while_identity_2
lstm_850_while_identity_3
lstm_850_while_identity_4
lstm_850_while_identity_5+
'lstm_850_while_lstm_850_strided_slice_1g
clstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensorN
;lstm_850_while_lstm_cell_850_matmul_readvariableop_resource:	d?P
=lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource:	2?K
<lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource:	???3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp?2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp?4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp?
@lstm_850/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_850/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensor_0lstm_850_while_placeholderIlstm_850/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp=lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_850/while/lstm_cell_850/MatMulMatMul9lstm_850/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp?lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_850/while/lstm_cell_850/MatMul_1MatMullstm_850_while_placeholder_2<lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_850/while/lstm_cell_850/addAddV2-lstm_850/while/lstm_cell_850/MatMul:product:0/lstm_850/while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp>lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_850/while/lstm_cell_850/BiasAddBiasAdd$lstm_850/while/lstm_cell_850/add:z:0;lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_850/while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_850/while/lstm_cell_850/splitSplit5lstm_850/while/lstm_cell_850/split/split_dim:output:0-lstm_850/while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_850/while/lstm_cell_850/SigmoidSigmoid+lstm_850/while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_850/while/lstm_cell_850/Sigmoid_1Sigmoid+lstm_850/while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_850/while/lstm_cell_850/mulMul*lstm_850/while/lstm_cell_850/Sigmoid_1:y:0lstm_850_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_850/while/lstm_cell_850/ReluRelu+lstm_850/while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_850/while/lstm_cell_850/mul_1Mul(lstm_850/while/lstm_cell_850/Sigmoid:y:0/lstm_850/while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_850/while/lstm_cell_850/add_1AddV2$lstm_850/while/lstm_cell_850/mul:z:0&lstm_850/while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_850/while/lstm_cell_850/Sigmoid_2Sigmoid+lstm_850/while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_850/while/lstm_cell_850/Relu_1Relu&lstm_850/while/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_850/while/lstm_cell_850/mul_2Mul*lstm_850/while/lstm_cell_850/Sigmoid_2:y:01lstm_850/while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_850/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_850_while_placeholder_1lstm_850_while_placeholder&lstm_850/while/lstm_cell_850/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_850/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_850/while/addAddV2lstm_850_while_placeholderlstm_850/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_850/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_850/while/add_1AddV2*lstm_850_while_lstm_850_while_loop_counterlstm_850/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_850/while/IdentityIdentitylstm_850/while/add_1:z:0^lstm_850/while/NoOp*
T0*
_output_shapes
: ?
lstm_850/while/Identity_1Identity0lstm_850_while_lstm_850_while_maximum_iterations^lstm_850/while/NoOp*
T0*
_output_shapes
: t
lstm_850/while/Identity_2Identitylstm_850/while/add:z:0^lstm_850/while/NoOp*
T0*
_output_shapes
: ?
lstm_850/while/Identity_3IdentityClstm_850/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_850/while/NoOp*
T0*
_output_shapes
: ?
lstm_850/while/Identity_4Identity&lstm_850/while/lstm_cell_850/mul_2:z:0^lstm_850/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_850/while/Identity_5Identity&lstm_850/while/lstm_cell_850/add_1:z:0^lstm_850/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_850/while/NoOpNoOp4^lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp3^lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp5^lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_850_while_identity lstm_850/while/Identity:output:0"?
lstm_850_while_identity_1"lstm_850/while/Identity_1:output:0"?
lstm_850_while_identity_2"lstm_850/while/Identity_2:output:0"?
lstm_850_while_identity_3"lstm_850/while/Identity_3:output:0"?
lstm_850_while_identity_4"lstm_850/while/Identity_4:output:0"?
lstm_850_while_identity_5"lstm_850/while/Identity_5:output:0"T
'lstm_850_while_lstm_850_strided_slice_1)lstm_850_while_lstm_850_strided_slice_1_0"~
<lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource>lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0"?
=lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource?lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0"|
;lstm_850_while_lstm_cell_850_matmul_readvariableop_resource=lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0"?
clstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensorelstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp2h
2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp2l
4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5109707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109707___redundant_placeholder05
1while_while_cond_5109707___redundant_placeholder15
1while_while_cond_5109707___redundant_placeholder25
1while_while_cond_5109707___redundant_placeholder3
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108046
lstm_849_input#
lstm_849_5108019:	?#
lstm_849_5108021:	d?
lstm_849_5108023:	?#
lstm_850_5108026:	d?#
lstm_850_5108028:	2?
lstm_850_5108030:	?"
lstm_851_5108033:2("
lstm_851_5108035:
(
lstm_851_5108037:(#
dense_283_5108040:

dense_283_5108042:
identity??!dense_283/StatefulPartitionedCall? lstm_849/StatefulPartitionedCall? lstm_850/StatefulPartitionedCall? lstm_851/StatefulPartitionedCall?
 lstm_849/StatefulPartitionedCallStatefulPartitionedCalllstm_849_inputlstm_849_5108019lstm_849_5108021lstm_849_5108023*
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107866?
 lstm_850/StatefulPartitionedCallStatefulPartitionedCall)lstm_849/StatefulPartitionedCall:output:0lstm_850_5108026lstm_850_5108028lstm_850_5108030*
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107701?
 lstm_851/StatefulPartitionedCallStatefulPartitionedCall)lstm_850/StatefulPartitionedCall:output:0lstm_851_5108033lstm_851_5108035lstm_851_5108037*
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107536?
!dense_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_851/StatefulPartitionedCall:output:0dense_283_5108040dense_283_5108042*
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
F__inference_dense_283_layer_call_and_return_conditional_losses_5107338y
IdentityIdentity*dense_283/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_283/StatefulPartitionedCall!^lstm_849/StatefulPartitionedCall!^lstm_850/StatefulPartitionedCall!^lstm_851/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_283/StatefulPartitionedCall!dense_283/StatefulPartitionedCall2D
 lstm_849/StatefulPartitionedCall lstm_849/StatefulPartitionedCall2D
 lstm_850/StatefulPartitionedCall lstm_850/StatefulPartitionedCall2D
 lstm_851/StatefulPartitionedCall lstm_851/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_849_input
?8
?
E__inference_lstm_850_layer_call_and_return_conditional_losses_5106321

inputs(
lstm_cell_850_5106239:	d?(
lstm_cell_850_5106241:	2?$
lstm_cell_850_5106243:	?
identity??%lstm_cell_850/StatefulPartitionedCall?while;
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
%lstm_cell_850/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_850_5106239lstm_cell_850_5106241lstm_cell_850_5106243*
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106238n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_850_5106239lstm_cell_850_5106241lstm_cell_850_5106243*
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
while_body_5106252*
condR
while_cond_5106251*K
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
NoOpNoOp&^lstm_cell_850/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_850/StatefulPartitionedCall%lstm_cell_850/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_283_layer_call_fn_5107370
lstm_849_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_849_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5107345o
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
_user_specified_namelstm_849_input
?#
?
while_body_5106093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_849_5106117_0:	?0
while_lstm_cell_849_5106119_0:	d?,
while_lstm_cell_849_5106121_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_849_5106117:	?.
while_lstm_cell_849_5106119:	d?*
while_lstm_cell_849_5106121:	???+while/lstm_cell_849/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_849/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_849_5106117_0while_lstm_cell_849_5106119_0while_lstm_cell_849_5106121_0*
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5106034?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_849/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_849/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_849/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_849/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_849_5106117while_lstm_cell_849_5106117_0"<
while_lstm_cell_849_5106119while_lstm_cell_849_5106119_0"<
while_lstm_cell_849_5106121while_lstm_cell_849_5106121_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_849/StatefulPartitionedCall+while/lstm_cell_849/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5110078

inputs?
,lstm_cell_850_matmul_readvariableop_resource:	d?A
.lstm_cell_850_matmul_1_readvariableop_resource:	2?<
-lstm_cell_850_biasadd_readvariableop_resource:	?
identity??$lstm_cell_850/BiasAdd/ReadVariableOp?#lstm_cell_850/MatMul/ReadVariableOp?%lstm_cell_850/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_850/MatMul/ReadVariableOpReadVariableOp,lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_850/MatMulMatMulstrided_slice_2:output:0+lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_850/MatMul_1MatMulzeros:output:0-lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_850/addAddV2lstm_cell_850/MatMul:product:0 lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_850/BiasAddBiasAddlstm_cell_850/add:z:0,lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_850/splitSplit&lstm_cell_850/split/split_dim:output:0lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_850/SigmoidSigmoidlstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_1Sigmoidlstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_850/mulMullstm_cell_850/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_850/ReluRelulstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_1Mullstm_cell_850/Sigmoid:y:0 lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_850/add_1AddV2lstm_cell_850/mul:z:0lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_2Sigmoidlstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_850/Relu_1Relulstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_2Mullstm_cell_850/Sigmoid_2:y:0"lstm_cell_850/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_850_matmul_readvariableop_resource.lstm_cell_850_matmul_1_readvariableop_resource-lstm_cell_850_biasadd_readvariableop_resource*
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
while_body_5109994*
condR
while_cond_5109993*K
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
NoOpNoOp%^lstm_cell_850/BiasAdd/ReadVariableOp$^lstm_cell_850/MatMul/ReadVariableOp&^lstm_cell_850/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_850/BiasAdd/ReadVariableOp$lstm_cell_850/BiasAdd/ReadVariableOp2J
#lstm_cell_850/MatMul/ReadVariableOp#lstm_cell_850/MatMul/ReadVariableOp2N
%lstm_cell_850/MatMul_1/ReadVariableOp%lstm_cell_850/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5105888

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
?
E__inference_lstm_849_layer_call_and_return_conditional_losses_5105971

inputs(
lstm_cell_849_5105889:	?(
lstm_cell_849_5105891:	d?$
lstm_cell_849_5105893:	?
identity??%lstm_cell_849/StatefulPartitionedCall?while;
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
%lstm_cell_849/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_849_5105889lstm_cell_849_5105891lstm_cell_849_5105893*
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5105888n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_849_5105889lstm_cell_849_5105891lstm_cell_849_5105893*
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
while_body_5105902*
condR
while_cond_5105901*K
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
NoOpNoOp&^lstm_cell_849/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_849/StatefulPartitionedCall%lstm_cell_849/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_5109091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109091___redundant_placeholder05
1while_while_cond_5109091___redundant_placeholder15
1while_while_cond_5109091___redundant_placeholder25
1while_while_cond_5109091___redundant_placeholder3
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
*sequential_283_lstm_849_while_body_5105453L
Hsequential_283_lstm_849_while_sequential_283_lstm_849_while_loop_counterR
Nsequential_283_lstm_849_while_sequential_283_lstm_849_while_maximum_iterations-
)sequential_283_lstm_849_while_placeholder/
+sequential_283_lstm_849_while_placeholder_1/
+sequential_283_lstm_849_while_placeholder_2/
+sequential_283_lstm_849_while_placeholder_3K
Gsequential_283_lstm_849_while_sequential_283_lstm_849_strided_slice_1_0?
?sequential_283_lstm_849_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_849_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_283_lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0:	?a
Nsequential_283_lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?\
Msequential_283_lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0:	?*
&sequential_283_lstm_849_while_identity,
(sequential_283_lstm_849_while_identity_1,
(sequential_283_lstm_849_while_identity_2,
(sequential_283_lstm_849_while_identity_3,
(sequential_283_lstm_849_while_identity_4,
(sequential_283_lstm_849_while_identity_5I
Esequential_283_lstm_849_while_sequential_283_lstm_849_strided_slice_1?
?sequential_283_lstm_849_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_849_tensorarrayunstack_tensorlistfromtensor]
Jsequential_283_lstm_849_while_lstm_cell_849_matmul_readvariableop_resource:	?_
Lsequential_283_lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource:	d?Z
Ksequential_283_lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource:	???Bsequential_283/lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp?Asequential_283/lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp?Csequential_283/lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp?
Osequential_283/lstm_849/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_283/lstm_849/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_283_lstm_849_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_849_tensorarrayunstack_tensorlistfromtensor_0)sequential_283_lstm_849_while_placeholderXsequential_283/lstm_849/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_283/lstm_849/while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOpLsequential_283_lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_283/lstm_849/while/lstm_cell_849/MatMulMatMulHsequential_283/lstm_849/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_283/lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_283/lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOpNsequential_283_lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_283/lstm_849/while/lstm_cell_849/MatMul_1MatMul+sequential_283_lstm_849_while_placeholder_2Ksequential_283/lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_283/lstm_849/while/lstm_cell_849/addAddV2<sequential_283/lstm_849/while/lstm_cell_849/MatMul:product:0>sequential_283/lstm_849/while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_283/lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOpMsequential_283_lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_283/lstm_849/while/lstm_cell_849/BiasAddBiasAdd3sequential_283/lstm_849/while/lstm_cell_849/add:z:0Jsequential_283/lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_283/lstm_849/while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_283/lstm_849/while/lstm_cell_849/splitSplitDsequential_283/lstm_849/while/lstm_cell_849/split/split_dim:output:0<sequential_283/lstm_849/while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_283/lstm_849/while/lstm_cell_849/SigmoidSigmoid:sequential_283/lstm_849/while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_283/lstm_849/while/lstm_cell_849/Sigmoid_1Sigmoid:sequential_283/lstm_849/while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_283/lstm_849/while/lstm_cell_849/mulMul9sequential_283/lstm_849/while/lstm_cell_849/Sigmoid_1:y:0+sequential_283_lstm_849_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_283/lstm_849/while/lstm_cell_849/ReluRelu:sequential_283/lstm_849/while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_283/lstm_849/while/lstm_cell_849/mul_1Mul7sequential_283/lstm_849/while/lstm_cell_849/Sigmoid:y:0>sequential_283/lstm_849/while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_283/lstm_849/while/lstm_cell_849/add_1AddV23sequential_283/lstm_849/while/lstm_cell_849/mul:z:05sequential_283/lstm_849/while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_283/lstm_849/while/lstm_cell_849/Sigmoid_2Sigmoid:sequential_283/lstm_849/while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_283/lstm_849/while/lstm_cell_849/Relu_1Relu5sequential_283/lstm_849/while/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_283/lstm_849/while/lstm_cell_849/mul_2Mul9sequential_283/lstm_849/while/lstm_cell_849/Sigmoid_2:y:0@sequential_283/lstm_849/while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_283/lstm_849/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_283_lstm_849_while_placeholder_1)sequential_283_lstm_849_while_placeholder5sequential_283/lstm_849/while/lstm_cell_849/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_283/lstm_849/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_283/lstm_849/while/addAddV2)sequential_283_lstm_849_while_placeholder,sequential_283/lstm_849/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_283/lstm_849/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_283/lstm_849/while/add_1AddV2Hsequential_283_lstm_849_while_sequential_283_lstm_849_while_loop_counter.sequential_283/lstm_849/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_283/lstm_849/while/IdentityIdentity'sequential_283/lstm_849/while/add_1:z:0#^sequential_283/lstm_849/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_849/while/Identity_1IdentityNsequential_283_lstm_849_while_sequential_283_lstm_849_while_maximum_iterations#^sequential_283/lstm_849/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_849/while/Identity_2Identity%sequential_283/lstm_849/while/add:z:0#^sequential_283/lstm_849/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_849/while/Identity_3IdentityRsequential_283/lstm_849/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_283/lstm_849/while/NoOp*
T0*
_output_shapes
: ?
(sequential_283/lstm_849/while/Identity_4Identity5sequential_283/lstm_849/while/lstm_cell_849/mul_2:z:0#^sequential_283/lstm_849/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_283/lstm_849/while/Identity_5Identity5sequential_283/lstm_849/while/lstm_cell_849/add_1:z:0#^sequential_283/lstm_849/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_283/lstm_849/while/NoOpNoOpC^sequential_283/lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOpB^sequential_283/lstm_849/while/lstm_cell_849/MatMul/ReadVariableOpD^sequential_283/lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_283_lstm_849_while_identity/sequential_283/lstm_849/while/Identity:output:0"]
(sequential_283_lstm_849_while_identity_11sequential_283/lstm_849/while/Identity_1:output:0"]
(sequential_283_lstm_849_while_identity_21sequential_283/lstm_849/while/Identity_2:output:0"]
(sequential_283_lstm_849_while_identity_31sequential_283/lstm_849/while/Identity_3:output:0"]
(sequential_283_lstm_849_while_identity_41sequential_283/lstm_849/while/Identity_4:output:0"]
(sequential_283_lstm_849_while_identity_51sequential_283/lstm_849/while/Identity_5:output:0"?
Ksequential_283_lstm_849_while_lstm_cell_849_biasadd_readvariableop_resourceMsequential_283_lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0"?
Lsequential_283_lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resourceNsequential_283_lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0"?
Jsequential_283_lstm_849_while_lstm_cell_849_matmul_readvariableop_resourceLsequential_283_lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0"?
Esequential_283_lstm_849_while_sequential_283_lstm_849_strided_slice_1Gsequential_283_lstm_849_while_sequential_283_lstm_849_strided_slice_1_0"?
?sequential_283_lstm_849_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_849_tensorarrayunstack_tensorlistfromtensor?sequential_283_lstm_849_while_tensorarrayv2read_tensorlistgetitem_sequential_283_lstm_849_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_283/lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOpBsequential_283/lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp2?
Asequential_283/lstm_849/while/lstm_cell_849/MatMul/ReadVariableOpAsequential_283/lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp2?
Csequential_283/lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOpCsequential_283/lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_283_lstm_849_while_cond_5105452L
Hsequential_283_lstm_849_while_sequential_283_lstm_849_while_loop_counterR
Nsequential_283_lstm_849_while_sequential_283_lstm_849_while_maximum_iterations-
)sequential_283_lstm_849_while_placeholder/
+sequential_283_lstm_849_while_placeholder_1/
+sequential_283_lstm_849_while_placeholder_2/
+sequential_283_lstm_849_while_placeholder_3N
Jsequential_283_lstm_849_while_less_sequential_283_lstm_849_strided_slice_1e
asequential_283_lstm_849_while_sequential_283_lstm_849_while_cond_5105452___redundant_placeholder0e
asequential_283_lstm_849_while_sequential_283_lstm_849_while_cond_5105452___redundant_placeholder1e
asequential_283_lstm_849_while_sequential_283_lstm_849_while_cond_5105452___redundant_placeholder2e
asequential_283_lstm_849_while_sequential_283_lstm_849_while_cond_5105452___redundant_placeholder3*
&sequential_283_lstm_849_while_identity
?
"sequential_283/lstm_849/while/LessLess)sequential_283_lstm_849_while_placeholderJsequential_283_lstm_849_while_less_sequential_283_lstm_849_strided_slice_1*
T0*
_output_shapes
: {
&sequential_283/lstm_849/while/IdentityIdentity&sequential_283/lstm_849/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_283_lstm_849_while_identity/sequential_283/lstm_849/while/Identity:output:0*(
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
while_body_5109994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_850_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_850_matmul_readvariableop_resource:	d?G
4while_lstm_cell_850_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_850_biasadd_readvariableop_resource:	???*while/lstm_cell_850/BiasAdd/ReadVariableOp?)while/lstm_cell_850/MatMul/ReadVariableOp?+while/lstm_cell_850/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_850/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_850/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_850/addAddV2$while/lstm_cell_850/MatMul:product:0&while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_850/BiasAddBiasAddwhile/lstm_cell_850/add:z:02while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_850/splitSplit,while/lstm_cell_850/split/split_dim:output:0$while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_850/SigmoidSigmoid"while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_1Sigmoid"while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mulMul!while/lstm_cell_850/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_850/ReluRelu"while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_1Mulwhile/lstm_cell_850/Sigmoid:y:0&while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/add_1AddV2while/lstm_cell_850/mul:z:0while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_2Sigmoid"while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_850/Relu_1Reluwhile/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_2Mul!while/lstm_cell_850/Sigmoid_2:y:0(while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_850/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_850/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_850/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_850/BiasAdd/ReadVariableOp*^while/lstm_cell_850/MatMul/ReadVariableOp,^while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_850_biasadd_readvariableop_resource5while_lstm_cell_850_biasadd_readvariableop_resource_0"n
4while_lstm_cell_850_matmul_1_readvariableop_resource6while_lstm_cell_850_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_850_matmul_readvariableop_resource4while_lstm_cell_850_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_850/BiasAdd/ReadVariableOp*while/lstm_cell_850/BiasAdd/ReadVariableOp2V
)while/lstm_cell_850/MatMul/ReadVariableOp)while/lstm_cell_850/MatMul/ReadVariableOp2Z
+while/lstm_cell_850/MatMul_1/ReadVariableOp+while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107701

inputs?
,lstm_cell_850_matmul_readvariableop_resource:	d?A
.lstm_cell_850_matmul_1_readvariableop_resource:	2?<
-lstm_cell_850_biasadd_readvariableop_resource:	?
identity??$lstm_cell_850/BiasAdd/ReadVariableOp?#lstm_cell_850/MatMul/ReadVariableOp?%lstm_cell_850/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_850/MatMul/ReadVariableOpReadVariableOp,lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_850/MatMulMatMulstrided_slice_2:output:0+lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_850/MatMul_1MatMulzeros:output:0-lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_850/addAddV2lstm_cell_850/MatMul:product:0 lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_850/BiasAddBiasAddlstm_cell_850/add:z:0,lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_850/splitSplit&lstm_cell_850/split/split_dim:output:0lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_850/SigmoidSigmoidlstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_1Sigmoidlstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_850/mulMullstm_cell_850/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_850/ReluRelulstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_1Mullstm_cell_850/Sigmoid:y:0 lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_850/add_1AddV2lstm_cell_850/mul:z:0lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_2Sigmoidlstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_850/Relu_1Relulstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_2Mullstm_cell_850/Sigmoid_2:y:0"lstm_cell_850/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_850_matmul_readvariableop_resource.lstm_cell_850_matmul_1_readvariableop_resource-lstm_cell_850_biasadd_readvariableop_resource*
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
while_body_5107617*
condR
while_cond_5107616*K
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
NoOpNoOp%^lstm_cell_850/BiasAdd/ReadVariableOp$^lstm_cell_850/MatMul/ReadVariableOp&^lstm_cell_850/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_850/BiasAdd/ReadVariableOp$lstm_cell_850/BiasAdd/ReadVariableOp2J
#lstm_cell_850/MatMul/ReadVariableOp#lstm_cell_850/MatMul/ReadVariableOp2N
%lstm_cell_850/MatMul_1/ReadVariableOp%lstm_cell_850/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5110954

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
?
E__inference_lstm_851_layer_call_and_return_conditional_losses_5106862

inputs'
lstm_cell_851_5106780:2('
lstm_cell_851_5106782:
(#
lstm_cell_851_5106784:(
identity??%lstm_cell_851/StatefulPartitionedCall?while;
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
%lstm_cell_851/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_851_5106780lstm_cell_851_5106782lstm_cell_851_5106784*
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106734n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_851_5106780lstm_cell_851_5106782lstm_cell_851_5106784*
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
while_body_5106793*
condR
while_cond_5106792*K
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
NoOpNoOp&^lstm_cell_851/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_851/StatefulPartitionedCall%lstm_cell_851/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5110922

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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107866

inputs?
,lstm_cell_849_matmul_readvariableop_resource:	?A
.lstm_cell_849_matmul_1_readvariableop_resource:	d?<
-lstm_cell_849_biasadd_readvariableop_resource:	?
identity??$lstm_cell_849/BiasAdd/ReadVariableOp?#lstm_cell_849/MatMul/ReadVariableOp?%lstm_cell_849/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_849/MatMul/ReadVariableOpReadVariableOp,lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_849/MatMulMatMulstrided_slice_2:output:0+lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_849/MatMul_1MatMulzeros:output:0-lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_849/addAddV2lstm_cell_849/MatMul:product:0 lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_849/BiasAddBiasAddlstm_cell_849/add:z:0,lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_849/splitSplit&lstm_cell_849/split/split_dim:output:0lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_849/SigmoidSigmoidlstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_1Sigmoidlstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_849/mulMullstm_cell_849/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_849/ReluRelulstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_1Mullstm_cell_849/Sigmoid:y:0 lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_849/add_1AddV2lstm_cell_849/mul:z:0lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_2Sigmoidlstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_849/Relu_1Relulstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_2Mullstm_cell_849/Sigmoid_2:y:0"lstm_cell_849/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_849_matmul_readvariableop_resource.lstm_cell_849_matmul_1_readvariableop_resource-lstm_cell_849_biasadd_readvariableop_resource*
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
while_body_5107782*
condR
while_cond_5107781*K
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
NoOpNoOp%^lstm_cell_849/BiasAdd/ReadVariableOp$^lstm_cell_849/MatMul/ReadVariableOp&^lstm_cell_849/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_849/BiasAdd/ReadVariableOp$lstm_cell_849/BiasAdd/ReadVariableOp2J
#lstm_cell_849/MatMul/ReadVariableOp#lstm_cell_849/MatMul/ReadVariableOp2N
%lstm_cell_849/MatMul_1/ReadVariableOp%lstm_cell_849/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106384

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
while_cond_5106935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5106935___redundant_placeholder05
1while_while_cond_5106935___redundant_placeholder15
1while_while_cond_5106935___redundant_placeholder25
1while_while_cond_5106935___redundant_placeholder3
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
while_body_5109235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_849_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_849_matmul_readvariableop_resource:	?G
4while_lstm_cell_849_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_849_biasadd_readvariableop_resource:	???*while/lstm_cell_849/BiasAdd/ReadVariableOp?)while/lstm_cell_849/MatMul/ReadVariableOp?+while/lstm_cell_849/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_849/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_849/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_849/addAddV2$while/lstm_cell_849/MatMul:product:0&while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_849/BiasAddBiasAddwhile/lstm_cell_849/add:z:02while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_849/splitSplit,while/lstm_cell_849/split/split_dim:output:0$while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_849/SigmoidSigmoid"while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_1Sigmoid"while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mulMul!while/lstm_cell_849/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_849/ReluRelu"while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_1Mulwhile/lstm_cell_849/Sigmoid:y:0&while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/add_1AddV2while/lstm_cell_849/mul:z:0while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_2Sigmoid"while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_849/Relu_1Reluwhile/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_2Mul!while/lstm_cell_849/Sigmoid_2:y:0(while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_849/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_849/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_849/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_849/BiasAdd/ReadVariableOp*^while/lstm_cell_849/MatMul/ReadVariableOp,^while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_849_biasadd_readvariableop_resource5while_lstm_cell_849_biasadd_readvariableop_resource_0"n
4while_lstm_cell_849_matmul_1_readvariableop_resource6while_lstm_cell_849_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_849_matmul_readvariableop_resource4while_lstm_cell_849_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_849/BiasAdd/ReadVariableOp*while/lstm_cell_849/BiasAdd/ReadVariableOp2V
)while/lstm_cell_849/MatMul/ReadVariableOp)while/lstm_cell_849/MatMul/ReadVariableOp2Z
+while/lstm_cell_849/MatMul_1/ReadVariableOp+while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_850_layer_call_fn_5109627
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5106512|
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108016
lstm_849_input#
lstm_849_5107989:	?#
lstm_849_5107991:	d?
lstm_849_5107993:	?#
lstm_850_5107996:	d?#
lstm_850_5107998:	2?
lstm_850_5108000:	?"
lstm_851_5108003:2("
lstm_851_5108005:
(
lstm_851_5108007:(#
dense_283_5108010:

dense_283_5108012:
identity??!dense_283/StatefulPartitionedCall? lstm_849/StatefulPartitionedCall? lstm_850/StatefulPartitionedCall? lstm_851/StatefulPartitionedCall?
 lstm_849/StatefulPartitionedCallStatefulPartitionedCalllstm_849_inputlstm_849_5107989lstm_849_5107991lstm_849_5107993*
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107020?
 lstm_850/StatefulPartitionedCallStatefulPartitionedCall)lstm_849/StatefulPartitionedCall:output:0lstm_850_5107996lstm_850_5107998lstm_850_5108000*
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107170?
 lstm_851/StatefulPartitionedCallStatefulPartitionedCall)lstm_850/StatefulPartitionedCall:output:0lstm_851_5108003lstm_851_5108005lstm_851_5108007*
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107320?
!dense_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_851/StatefulPartitionedCall:output:0dense_283_5108010dense_283_5108012*
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
F__inference_dense_283_layer_call_and_return_conditional_losses_5107338y
IdentityIdentity*dense_283/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_283/StatefulPartitionedCall!^lstm_849/StatefulPartitionedCall!^lstm_850/StatefulPartitionedCall!^lstm_851/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_283/StatefulPartitionedCall!dense_283/StatefulPartitionedCall2D
 lstm_849/StatefulPartitionedCall lstm_849/StatefulPartitionedCall2D
 lstm_850/StatefulPartitionedCall lstm_850/StatefulPartitionedCall2D
 lstm_851/StatefulPartitionedCall lstm_851/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_849_input
?#
?
while_body_5106602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_851_5106626_0:2(/
while_lstm_cell_851_5106628_0:
(+
while_lstm_cell_851_5106630_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_851_5106626:2(-
while_lstm_cell_851_5106628:
()
while_lstm_cell_851_5106630:(??+while/lstm_cell_851/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_851/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_851_5106626_0while_lstm_cell_851_5106628_0while_lstm_cell_851_5106630_0*
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106588?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_851/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_851/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_851/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_851/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_851_5106626while_lstm_cell_851_5106626_0"<
while_lstm_cell_851_5106628while_lstm_cell_851_5106628_0"<
while_lstm_cell_851_5106630while_lstm_cell_851_5106630_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_851/StatefulPartitionedCall+while/lstm_cell_851/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5107320

inputs>
,lstm_cell_851_matmul_readvariableop_resource:2(@
.lstm_cell_851_matmul_1_readvariableop_resource:
(;
-lstm_cell_851_biasadd_readvariableop_resource:(
identity??$lstm_cell_851/BiasAdd/ReadVariableOp?#lstm_cell_851/MatMul/ReadVariableOp?%lstm_cell_851/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_851/MatMul/ReadVariableOpReadVariableOp,lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_851/MatMulMatMulstrided_slice_2:output:0+lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_851/MatMul_1MatMulzeros:output:0-lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_851/addAddV2lstm_cell_851/MatMul:product:0 lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_851/BiasAddBiasAddlstm_cell_851/add:z:0,lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_851/splitSplit&lstm_cell_851/split/split_dim:output:0lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_851/SigmoidSigmoidlstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_1Sigmoidlstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_851/mulMullstm_cell_851/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_851/ReluRelulstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_1Mullstm_cell_851/Sigmoid:y:0 lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_851/add_1AddV2lstm_cell_851/mul:z:0lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_2Sigmoidlstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_851/Relu_1Relulstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_2Mullstm_cell_851/Sigmoid_2:y:0"lstm_cell_851/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_851_matmul_readvariableop_resource.lstm_cell_851_matmul_1_readvariableop_resource-lstm_cell_851_biasadd_readvariableop_resource*
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
while_body_5107236*
condR
while_cond_5107235*K
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
NoOpNoOp%^lstm_cell_851/BiasAdd/ReadVariableOp$^lstm_cell_851/MatMul/ReadVariableOp&^lstm_cell_851/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_851/BiasAdd/ReadVariableOp$lstm_cell_851/BiasAdd/ReadVariableOp2J
#lstm_cell_851/MatMul/ReadVariableOp#lstm_cell_851/MatMul/ReadVariableOp2N
%lstm_cell_851/MatMul_1/ReadVariableOp%lstm_cell_851/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_851_layer_call_fn_5110243
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5106862o
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
lstm_851_while_cond_5108471.
*lstm_851_while_lstm_851_while_loop_counter4
0lstm_851_while_lstm_851_while_maximum_iterations
lstm_851_while_placeholder 
lstm_851_while_placeholder_1 
lstm_851_while_placeholder_2 
lstm_851_while_placeholder_30
,lstm_851_while_less_lstm_851_strided_slice_1G
Clstm_851_while_lstm_851_while_cond_5108471___redundant_placeholder0G
Clstm_851_while_lstm_851_while_cond_5108471___redundant_placeholder1G
Clstm_851_while_lstm_851_while_cond_5108471___redundant_placeholder2G
Clstm_851_while_lstm_851_while_cond_5108471___redundant_placeholder3
lstm_851_while_identity
?
lstm_851/while/LessLesslstm_851_while_placeholder,lstm_851_while_less_lstm_851_strided_slice_1*
T0*
_output_shapes
: ]
lstm_851/while/IdentityIdentitylstm_851/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_851_while_identity lstm_851/while/Identity:output:0*(
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
while_cond_5106792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5106792___redundant_placeholder05
1while_while_cond_5106792___redundant_placeholder15
1while_while_cond_5106792___redundant_placeholder25
1while_while_cond_5106792___redundant_placeholder3
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
lstm_850_while_cond_5108759.
*lstm_850_while_lstm_850_while_loop_counter4
0lstm_850_while_lstm_850_while_maximum_iterations
lstm_850_while_placeholder 
lstm_850_while_placeholder_1 
lstm_850_while_placeholder_2 
lstm_850_while_placeholder_30
,lstm_850_while_less_lstm_850_strided_slice_1G
Clstm_850_while_lstm_850_while_cond_5108759___redundant_placeholder0G
Clstm_850_while_lstm_850_while_cond_5108759___redundant_placeholder1G
Clstm_850_while_lstm_850_while_cond_5108759___redundant_placeholder2G
Clstm_850_while_lstm_850_while_cond_5108759___redundant_placeholder3
lstm_850_while_identity
?
lstm_850/while/LessLesslstm_850_while_placeholder,lstm_850_while_less_lstm_850_strided_slice_1*
T0*
_output_shapes
: ]
lstm_850/while/IdentityIdentitylstm_850/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_850_while_identity lstm_850/while/Identity:output:0*(
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
0__inference_sequential_283_layer_call_fn_5108135

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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5107934o
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

lstm_851_while_body_5108899.
*lstm_851_while_lstm_851_while_loop_counter4
0lstm_851_while_lstm_851_while_maximum_iterations
lstm_851_while_placeholder 
lstm_851_while_placeholder_1 
lstm_851_while_placeholder_2 
lstm_851_while_placeholder_3-
)lstm_851_while_lstm_851_strided_slice_1_0i
elstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0:2(Q
?lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(L
>lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0:(
lstm_851_while_identity
lstm_851_while_identity_1
lstm_851_while_identity_2
lstm_851_while_identity_3
lstm_851_while_identity_4
lstm_851_while_identity_5+
'lstm_851_while_lstm_851_strided_slice_1g
clstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensorM
;lstm_851_while_lstm_cell_851_matmul_readvariableop_resource:2(O
=lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource:
(J
<lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource:(??3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp?2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp?4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp?
@lstm_851/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_851/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensor_0lstm_851_while_placeholderIlstm_851/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp=lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_851/while/lstm_cell_851/MatMulMatMul9lstm_851/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp?lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_851/while/lstm_cell_851/MatMul_1MatMullstm_851_while_placeholder_2<lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_851/while/lstm_cell_851/addAddV2-lstm_851/while/lstm_cell_851/MatMul:product:0/lstm_851/while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp>lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_851/while/lstm_cell_851/BiasAddBiasAdd$lstm_851/while/lstm_cell_851/add:z:0;lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_851/while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_851/while/lstm_cell_851/splitSplit5lstm_851/while/lstm_cell_851/split/split_dim:output:0-lstm_851/while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_851/while/lstm_cell_851/SigmoidSigmoid+lstm_851/while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_851/while/lstm_cell_851/Sigmoid_1Sigmoid+lstm_851/while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_851/while/lstm_cell_851/mulMul*lstm_851/while/lstm_cell_851/Sigmoid_1:y:0lstm_851_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_851/while/lstm_cell_851/ReluRelu+lstm_851/while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_851/while/lstm_cell_851/mul_1Mul(lstm_851/while/lstm_cell_851/Sigmoid:y:0/lstm_851/while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_851/while/lstm_cell_851/add_1AddV2$lstm_851/while/lstm_cell_851/mul:z:0&lstm_851/while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_851/while/lstm_cell_851/Sigmoid_2Sigmoid+lstm_851/while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_851/while/lstm_cell_851/Relu_1Relu&lstm_851/while/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_851/while/lstm_cell_851/mul_2Mul*lstm_851/while/lstm_cell_851/Sigmoid_2:y:01lstm_851/while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_851/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_851_while_placeholder_1lstm_851_while_placeholder&lstm_851/while/lstm_cell_851/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_851/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_851/while/addAddV2lstm_851_while_placeholderlstm_851/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_851/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_851/while/add_1AddV2*lstm_851_while_lstm_851_while_loop_counterlstm_851/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_851/while/IdentityIdentitylstm_851/while/add_1:z:0^lstm_851/while/NoOp*
T0*
_output_shapes
: ?
lstm_851/while/Identity_1Identity0lstm_851_while_lstm_851_while_maximum_iterations^lstm_851/while/NoOp*
T0*
_output_shapes
: t
lstm_851/while/Identity_2Identitylstm_851/while/add:z:0^lstm_851/while/NoOp*
T0*
_output_shapes
: ?
lstm_851/while/Identity_3IdentityClstm_851/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_851/while/NoOp*
T0*
_output_shapes
: ?
lstm_851/while/Identity_4Identity&lstm_851/while/lstm_cell_851/mul_2:z:0^lstm_851/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_851/while/Identity_5Identity&lstm_851/while/lstm_cell_851/add_1:z:0^lstm_851/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_851/while/NoOpNoOp4^lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp3^lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp5^lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_851_while_identity lstm_851/while/Identity:output:0"?
lstm_851_while_identity_1"lstm_851/while/Identity_1:output:0"?
lstm_851_while_identity_2"lstm_851/while/Identity_2:output:0"?
lstm_851_while_identity_3"lstm_851/while/Identity_3:output:0"?
lstm_851_while_identity_4"lstm_851/while/Identity_4:output:0"?
lstm_851_while_identity_5"lstm_851/while/Identity_5:output:0"T
'lstm_851_while_lstm_851_strided_slice_1)lstm_851_while_lstm_851_strided_slice_1_0"~
<lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource>lstm_851_while_lstm_cell_851_biasadd_readvariableop_resource_0"?
=lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource?lstm_851_while_lstm_cell_851_matmul_1_readvariableop_resource_0"|
;lstm_851_while_lstm_cell_851_matmul_readvariableop_resource=lstm_851_while_lstm_cell_851_matmul_readvariableop_resource_0"?
clstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensorelstm_851_while_tensorarrayv2read_tensorlistgetitem_lstm_851_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp3lstm_851/while/lstm_cell_851/BiasAdd/ReadVariableOp2h
2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp2lstm_851/while/lstm_cell_851/MatMul/ReadVariableOp2l
4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp4lstm_851/while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_849_layer_call_fn_5110873

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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5105888o
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
while_cond_5106092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5106092___redundant_placeholder05
1while_while_cond_5106092___redundant_placeholder15
1while_while_cond_5106092___redundant_placeholder25
1while_while_cond_5106092___redundant_placeholder3
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
while_body_5105902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_849_5105926_0:	?0
while_lstm_cell_849_5105928_0:	d?,
while_lstm_cell_849_5105930_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_849_5105926:	?.
while_lstm_cell_849_5105928:	d?*
while_lstm_cell_849_5105930:	???+while/lstm_cell_849/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_849/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_849_5105926_0while_lstm_cell_849_5105928_0while_lstm_cell_849_5105930_0*
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5105888?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_849/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_849/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_849/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_849/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_849_5105926while_lstm_cell_849_5105926_0"<
while_lstm_cell_849_5105928while_lstm_cell_849_5105928_0"<
while_lstm_cell_849_5105930while_lstm_cell_849_5105930_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_849/StatefulPartitionedCall+while/lstm_cell_849/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_849_while_cond_5108620.
*lstm_849_while_lstm_849_while_loop_counter4
0lstm_849_while_lstm_849_while_maximum_iterations
lstm_849_while_placeholder 
lstm_849_while_placeholder_1 
lstm_849_while_placeholder_2 
lstm_849_while_placeholder_30
,lstm_849_while_less_lstm_849_strided_slice_1G
Clstm_849_while_lstm_849_while_cond_5108620___redundant_placeholder0G
Clstm_849_while_lstm_849_while_cond_5108620___redundant_placeholder1G
Clstm_849_while_lstm_849_while_cond_5108620___redundant_placeholder2G
Clstm_849_while_lstm_849_while_cond_5108620___redundant_placeholder3
lstm_849_while_identity
?
lstm_849/while/LessLesslstm_849_while_placeholder,lstm_849_while_less_lstm_849_strided_slice_1*
T0*
_output_shapes
: ]
lstm_849/while/IdentityIdentitylstm_849/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_849_while_identity lstm_849/while/Identity:output:0*(
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109462

inputs?
,lstm_cell_849_matmul_readvariableop_resource:	?A
.lstm_cell_849_matmul_1_readvariableop_resource:	d?<
-lstm_cell_849_biasadd_readvariableop_resource:	?
identity??$lstm_cell_849/BiasAdd/ReadVariableOp?#lstm_cell_849/MatMul/ReadVariableOp?%lstm_cell_849/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_849/MatMul/ReadVariableOpReadVariableOp,lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_849/MatMulMatMulstrided_slice_2:output:0+lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_849/MatMul_1MatMulzeros:output:0-lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_849/addAddV2lstm_cell_849/MatMul:product:0 lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_849/BiasAddBiasAddlstm_cell_849/add:z:0,lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_849/splitSplit&lstm_cell_849/split/split_dim:output:0lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_849/SigmoidSigmoidlstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_1Sigmoidlstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_849/mulMullstm_cell_849/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_849/ReluRelulstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_1Mullstm_cell_849/Sigmoid:y:0 lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_849/add_1AddV2lstm_cell_849/mul:z:0lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_2Sigmoidlstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_849/Relu_1Relulstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_2Mullstm_cell_849/Sigmoid_2:y:0"lstm_cell_849/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_849_matmul_readvariableop_resource.lstm_cell_849_matmul_1_readvariableop_resource-lstm_cell_849_biasadd_readvariableop_resource*
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
while_body_5109378*
condR
while_cond_5109377*K
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
NoOpNoOp%^lstm_cell_849/BiasAdd/ReadVariableOp$^lstm_cell_849/MatMul/ReadVariableOp&^lstm_cell_849/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_849/BiasAdd/ReadVariableOp$lstm_cell_849/BiasAdd/ReadVariableOp2J
#lstm_cell_849/MatMul/ReadVariableOp#lstm_cell_849/MatMul/ReadVariableOp2N
%lstm_cell_849/MatMul_1/ReadVariableOp%lstm_cell_849/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_851_layer_call_fn_5111086

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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106734o
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5109935
inputs_0?
,lstm_cell_850_matmul_readvariableop_resource:	d?A
.lstm_cell_850_matmul_1_readvariableop_resource:	2?<
-lstm_cell_850_biasadd_readvariableop_resource:	?
identity??$lstm_cell_850/BiasAdd/ReadVariableOp?#lstm_cell_850/MatMul/ReadVariableOp?%lstm_cell_850/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_850/MatMul/ReadVariableOpReadVariableOp,lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_850/MatMulMatMulstrided_slice_2:output:0+lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_850/MatMul_1MatMulzeros:output:0-lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_850/addAddV2lstm_cell_850/MatMul:product:0 lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_850/BiasAddBiasAddlstm_cell_850/add:z:0,lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_850/splitSplit&lstm_cell_850/split/split_dim:output:0lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_850/SigmoidSigmoidlstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_1Sigmoidlstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_850/mulMullstm_cell_850/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_850/ReluRelulstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_1Mullstm_cell_850/Sigmoid:y:0 lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_850/add_1AddV2lstm_cell_850/mul:z:0lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_2Sigmoidlstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_850/Relu_1Relulstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_2Mullstm_cell_850/Sigmoid_2:y:0"lstm_cell_850/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_850_matmul_readvariableop_resource.lstm_cell_850_matmul_1_readvariableop_resource-lstm_cell_850_biasadd_readvariableop_resource*
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
while_body_5109851*
condR
while_cond_5109850*K
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
NoOpNoOp%^lstm_cell_850/BiasAdd/ReadVariableOp$^lstm_cell_850/MatMul/ReadVariableOp&^lstm_cell_850/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_850/BiasAdd/ReadVariableOp$lstm_cell_850/BiasAdd/ReadVariableOp2J
#lstm_cell_850/MatMul/ReadVariableOp#lstm_cell_850/MatMul/ReadVariableOp2N
%lstm_cell_850/MatMul_1/ReadVariableOp%lstm_cell_850/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110837

inputs>
,lstm_cell_851_matmul_readvariableop_resource:2(@
.lstm_cell_851_matmul_1_readvariableop_resource:
(;
-lstm_cell_851_biasadd_readvariableop_resource:(
identity??$lstm_cell_851/BiasAdd/ReadVariableOp?#lstm_cell_851/MatMul/ReadVariableOp?%lstm_cell_851/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_851/MatMul/ReadVariableOpReadVariableOp,lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_851/MatMulMatMulstrided_slice_2:output:0+lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_851/MatMul_1MatMulzeros:output:0-lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_851/addAddV2lstm_cell_851/MatMul:product:0 lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_851/BiasAddBiasAddlstm_cell_851/add:z:0,lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_851/splitSplit&lstm_cell_851/split/split_dim:output:0lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_851/SigmoidSigmoidlstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_1Sigmoidlstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_851/mulMullstm_cell_851/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_851/ReluRelulstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_1Mullstm_cell_851/Sigmoid:y:0 lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_851/add_1AddV2lstm_cell_851/mul:z:0lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_2Sigmoidlstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_851/Relu_1Relulstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_2Mullstm_cell_851/Sigmoid_2:y:0"lstm_cell_851/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_851_matmul_readvariableop_resource.lstm_cell_851_matmul_1_readvariableop_resource-lstm_cell_851_biasadd_readvariableop_resource*
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
while_body_5110753*
condR
while_cond_5110752*K
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
NoOpNoOp%^lstm_cell_851/BiasAdd/ReadVariableOp$^lstm_cell_851/MatMul/ReadVariableOp&^lstm_cell_851/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_851/BiasAdd/ReadVariableOp$lstm_cell_851/BiasAdd/ReadVariableOp2J
#lstm_cell_851/MatMul/ReadVariableOp#lstm_cell_851/MatMul/ReadVariableOp2N
%lstm_cell_851/MatMul_1/ReadVariableOp%lstm_cell_851/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_849_while_cond_5108193.
*lstm_849_while_lstm_849_while_loop_counter4
0lstm_849_while_lstm_849_while_maximum_iterations
lstm_849_while_placeholder 
lstm_849_while_placeholder_1 
lstm_849_while_placeholder_2 
lstm_849_while_placeholder_30
,lstm_849_while_less_lstm_849_strided_slice_1G
Clstm_849_while_lstm_849_while_cond_5108193___redundant_placeholder0G
Clstm_849_while_lstm_849_while_cond_5108193___redundant_placeholder1G
Clstm_849_while_lstm_849_while_cond_5108193___redundant_placeholder2G
Clstm_849_while_lstm_849_while_cond_5108193___redundant_placeholder3
lstm_849_while_identity
?
lstm_849/while/LessLesslstm_849_while_placeholder,lstm_849_while_less_lstm_849_strided_slice_1*
T0*
_output_shapes
: ]
lstm_849/while/IdentityIdentitylstm_849/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_849_while_identity lstm_849/while/Identity:output:0*(
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110408
inputs_0>
,lstm_cell_851_matmul_readvariableop_resource:2(@
.lstm_cell_851_matmul_1_readvariableop_resource:
(;
-lstm_cell_851_biasadd_readvariableop_resource:(
identity??$lstm_cell_851/BiasAdd/ReadVariableOp?#lstm_cell_851/MatMul/ReadVariableOp?%lstm_cell_851/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_851/MatMul/ReadVariableOpReadVariableOp,lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_851/MatMulMatMulstrided_slice_2:output:0+lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_851/MatMul_1MatMulzeros:output:0-lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_851/addAddV2lstm_cell_851/MatMul:product:0 lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_851/BiasAddBiasAddlstm_cell_851/add:z:0,lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_851/splitSplit&lstm_cell_851/split/split_dim:output:0lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_851/SigmoidSigmoidlstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_1Sigmoidlstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_851/mulMullstm_cell_851/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_851/ReluRelulstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_1Mullstm_cell_851/Sigmoid:y:0 lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_851/add_1AddV2lstm_cell_851/mul:z:0lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_851/Sigmoid_2Sigmoidlstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_851/Relu_1Relulstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_851/mul_2Mullstm_cell_851/Sigmoid_2:y:0"lstm_cell_851/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_851_matmul_readvariableop_resource.lstm_cell_851_matmul_1_readvariableop_resource-lstm_cell_851_biasadd_readvariableop_resource*
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
while_body_5110324*
condR
while_cond_5110323*K
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
NoOpNoOp%^lstm_cell_851/BiasAdd/ReadVariableOp$^lstm_cell_851/MatMul/ReadVariableOp&^lstm_cell_851/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_851/BiasAdd/ReadVariableOp$lstm_cell_851/BiasAdd/ReadVariableOp2J
#lstm_cell_851/MatMul/ReadVariableOp#lstm_cell_851/MatMul/ReadVariableOp2N
%lstm_cell_851/MatMul_1/ReadVariableOp%lstm_cell_851/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_5107086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_850_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_850_matmul_readvariableop_resource:	d?G
4while_lstm_cell_850_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_850_biasadd_readvariableop_resource:	???*while/lstm_cell_850/BiasAdd/ReadVariableOp?)while/lstm_cell_850/MatMul/ReadVariableOp?+while/lstm_cell_850/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_850/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_850/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_850/addAddV2$while/lstm_cell_850/MatMul:product:0&while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_850/BiasAddBiasAddwhile/lstm_cell_850/add:z:02while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_850/splitSplit,while/lstm_cell_850/split/split_dim:output:0$while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_850/SigmoidSigmoid"while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_1Sigmoid"while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mulMul!while/lstm_cell_850/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_850/ReluRelu"while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_1Mulwhile/lstm_cell_850/Sigmoid:y:0&while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/add_1AddV2while/lstm_cell_850/mul:z:0while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_850/Sigmoid_2Sigmoid"while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_850/Relu_1Reluwhile/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_850/mul_2Mul!while/lstm_cell_850/Sigmoid_2:y:0(while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_850/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_850/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_850/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_850/BiasAdd/ReadVariableOp*^while/lstm_cell_850/MatMul/ReadVariableOp,^while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_850_biasadd_readvariableop_resource5while_lstm_cell_850_biasadd_readvariableop_resource_0"n
4while_lstm_cell_850_matmul_1_readvariableop_resource6while_lstm_cell_850_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_850_matmul_readvariableop_resource4while_lstm_cell_850_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_850/BiasAdd/ReadVariableOp*while/lstm_cell_850/BiasAdd/ReadVariableOp2V
)while/lstm_cell_850/MatMul/ReadVariableOp)while/lstm_cell_850/MatMul/ReadVariableOp2Z
+while/lstm_cell_850/MatMul_1/ReadVariableOp+while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5111150

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
while_cond_5109993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109993___redundant_placeholder05
1while_while_cond_5109993___redundant_placeholder15
1while_while_cond_5109993___redundant_placeholder25
1while_while_cond_5109993___redundant_placeholder3
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109176
inputs_0?
,lstm_cell_849_matmul_readvariableop_resource:	?A
.lstm_cell_849_matmul_1_readvariableop_resource:	d?<
-lstm_cell_849_biasadd_readvariableop_resource:	?
identity??$lstm_cell_849/BiasAdd/ReadVariableOp?#lstm_cell_849/MatMul/ReadVariableOp?%lstm_cell_849/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_849/MatMul/ReadVariableOpReadVariableOp,lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_849/MatMulMatMulstrided_slice_2:output:0+lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_849/MatMul_1MatMulzeros:output:0-lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_849/addAddV2lstm_cell_849/MatMul:product:0 lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_849/BiasAddBiasAddlstm_cell_849/add:z:0,lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_849/splitSplit&lstm_cell_849/split/split_dim:output:0lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_849/SigmoidSigmoidlstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_1Sigmoidlstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_849/mulMullstm_cell_849/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_849/ReluRelulstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_1Mullstm_cell_849/Sigmoid:y:0 lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_849/add_1AddV2lstm_cell_849/mul:z:0lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_849/Sigmoid_2Sigmoidlstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_849/Relu_1Relulstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_849/mul_2Mullstm_cell_849/Sigmoid_2:y:0"lstm_cell_849/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_849_matmul_readvariableop_resource.lstm_cell_849_matmul_1_readvariableop_resource-lstm_cell_849_biasadd_readvariableop_resource*
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
while_body_5109092*
condR
while_cond_5109091*K
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
NoOpNoOp%^lstm_cell_849/BiasAdd/ReadVariableOp$^lstm_cell_849/MatMul/ReadVariableOp&^lstm_cell_849/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_849/BiasAdd/ReadVariableOp$lstm_cell_849/BiasAdd/ReadVariableOp2J
#lstm_cell_849/MatMul/ReadVariableOp#lstm_cell_849/MatMul/ReadVariableOp2N
%lstm_cell_849/MatMul_1/ReadVariableOp%lstm_cell_849/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
"__inference__wrapped_model_5105821
lstm_849_inputW
Dsequential_283_lstm_849_lstm_cell_849_matmul_readvariableop_resource:	?Y
Fsequential_283_lstm_849_lstm_cell_849_matmul_1_readvariableop_resource:	d?T
Esequential_283_lstm_849_lstm_cell_849_biasadd_readvariableop_resource:	?W
Dsequential_283_lstm_850_lstm_cell_850_matmul_readvariableop_resource:	d?Y
Fsequential_283_lstm_850_lstm_cell_850_matmul_1_readvariableop_resource:	2?T
Esequential_283_lstm_850_lstm_cell_850_biasadd_readvariableop_resource:	?V
Dsequential_283_lstm_851_lstm_cell_851_matmul_readvariableop_resource:2(X
Fsequential_283_lstm_851_lstm_cell_851_matmul_1_readvariableop_resource:
(S
Esequential_283_lstm_851_lstm_cell_851_biasadd_readvariableop_resource:(I
7sequential_283_dense_283_matmul_readvariableop_resource:
F
8sequential_283_dense_283_biasadd_readvariableop_resource:
identity??/sequential_283/dense_283/BiasAdd/ReadVariableOp?.sequential_283/dense_283/MatMul/ReadVariableOp?<sequential_283/lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp?;sequential_283/lstm_849/lstm_cell_849/MatMul/ReadVariableOp?=sequential_283/lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp?sequential_283/lstm_849/while?<sequential_283/lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp?;sequential_283/lstm_850/lstm_cell_850/MatMul/ReadVariableOp?=sequential_283/lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp?sequential_283/lstm_850/while?<sequential_283/lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp?;sequential_283/lstm_851/lstm_cell_851/MatMul/ReadVariableOp?=sequential_283/lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp?sequential_283/lstm_851/while[
sequential_283/lstm_849/ShapeShapelstm_849_input*
T0*
_output_shapes
:u
+sequential_283/lstm_849/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_283/lstm_849/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_283/lstm_849/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_283/lstm_849/strided_sliceStridedSlice&sequential_283/lstm_849/Shape:output:04sequential_283/lstm_849/strided_slice/stack:output:06sequential_283/lstm_849/strided_slice/stack_1:output:06sequential_283/lstm_849/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_283/lstm_849/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_283/lstm_849/zeros/packedPack.sequential_283/lstm_849/strided_slice:output:0/sequential_283/lstm_849/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_283/lstm_849/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_283/lstm_849/zerosFill-sequential_283/lstm_849/zeros/packed:output:0,sequential_283/lstm_849/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_283/lstm_849/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_283/lstm_849/zeros_1/packedPack.sequential_283/lstm_849/strided_slice:output:01sequential_283/lstm_849/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_283/lstm_849/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_283/lstm_849/zeros_1Fill/sequential_283/lstm_849/zeros_1/packed:output:0.sequential_283/lstm_849/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_283/lstm_849/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_283/lstm_849/transpose	Transposelstm_849_input/sequential_283/lstm_849/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_283/lstm_849/Shape_1Shape%sequential_283/lstm_849/transpose:y:0*
T0*
_output_shapes
:w
-sequential_283/lstm_849/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_849/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_283/lstm_849/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_849/strided_slice_1StridedSlice(sequential_283/lstm_849/Shape_1:output:06sequential_283/lstm_849/strided_slice_1/stack:output:08sequential_283/lstm_849/strided_slice_1/stack_1:output:08sequential_283/lstm_849/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_283/lstm_849/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_283/lstm_849/TensorArrayV2TensorListReserve<sequential_283/lstm_849/TensorArrayV2/element_shape:output:00sequential_283/lstm_849/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_283/lstm_849/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_283/lstm_849/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_283/lstm_849/transpose:y:0Vsequential_283/lstm_849/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_283/lstm_849/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_849/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_283/lstm_849/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_849/strided_slice_2StridedSlice%sequential_283/lstm_849/transpose:y:06sequential_283/lstm_849/strided_slice_2/stack:output:08sequential_283/lstm_849/strided_slice_2/stack_1:output:08sequential_283/lstm_849/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_283/lstm_849/lstm_cell_849/MatMul/ReadVariableOpReadVariableOpDsequential_283_lstm_849_lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_283/lstm_849/lstm_cell_849/MatMulMatMul0sequential_283/lstm_849/strided_slice_2:output:0Csequential_283/lstm_849/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_283/lstm_849/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOpFsequential_283_lstm_849_lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_283/lstm_849/lstm_cell_849/MatMul_1MatMul&sequential_283/lstm_849/zeros:output:0Esequential_283/lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_283/lstm_849/lstm_cell_849/addAddV26sequential_283/lstm_849/lstm_cell_849/MatMul:product:08sequential_283/lstm_849/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_283/lstm_849/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOpEsequential_283_lstm_849_lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_283/lstm_849/lstm_cell_849/BiasAddBiasAdd-sequential_283/lstm_849/lstm_cell_849/add:z:0Dsequential_283/lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_283/lstm_849/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_283/lstm_849/lstm_cell_849/splitSplit>sequential_283/lstm_849/lstm_cell_849/split/split_dim:output:06sequential_283/lstm_849/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_283/lstm_849/lstm_cell_849/SigmoidSigmoid4sequential_283/lstm_849/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_283/lstm_849/lstm_cell_849/Sigmoid_1Sigmoid4sequential_283/lstm_849/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_283/lstm_849/lstm_cell_849/mulMul3sequential_283/lstm_849/lstm_cell_849/Sigmoid_1:y:0(sequential_283/lstm_849/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_283/lstm_849/lstm_cell_849/ReluRelu4sequential_283/lstm_849/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_283/lstm_849/lstm_cell_849/mul_1Mul1sequential_283/lstm_849/lstm_cell_849/Sigmoid:y:08sequential_283/lstm_849/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_283/lstm_849/lstm_cell_849/add_1AddV2-sequential_283/lstm_849/lstm_cell_849/mul:z:0/sequential_283/lstm_849/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_283/lstm_849/lstm_cell_849/Sigmoid_2Sigmoid4sequential_283/lstm_849/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_283/lstm_849/lstm_cell_849/Relu_1Relu/sequential_283/lstm_849/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_283/lstm_849/lstm_cell_849/mul_2Mul3sequential_283/lstm_849/lstm_cell_849/Sigmoid_2:y:0:sequential_283/lstm_849/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_283/lstm_849/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_283/lstm_849/TensorArrayV2_1TensorListReserve>sequential_283/lstm_849/TensorArrayV2_1/element_shape:output:00sequential_283/lstm_849/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_283/lstm_849/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_283/lstm_849/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_283/lstm_849/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_283/lstm_849/whileWhile3sequential_283/lstm_849/while/loop_counter:output:09sequential_283/lstm_849/while/maximum_iterations:output:0%sequential_283/lstm_849/time:output:00sequential_283/lstm_849/TensorArrayV2_1:handle:0&sequential_283/lstm_849/zeros:output:0(sequential_283/lstm_849/zeros_1:output:00sequential_283/lstm_849/strided_slice_1:output:0Osequential_283/lstm_849/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_283_lstm_849_lstm_cell_849_matmul_readvariableop_resourceFsequential_283_lstm_849_lstm_cell_849_matmul_1_readvariableop_resourceEsequential_283_lstm_849_lstm_cell_849_biasadd_readvariableop_resource*
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
*sequential_283_lstm_849_while_body_5105453*6
cond.R,
*sequential_283_lstm_849_while_cond_5105452*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_283/lstm_849/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_283/lstm_849/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_283/lstm_849/while:output:3Qsequential_283/lstm_849/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_283/lstm_849/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_283/lstm_849/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_849/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_849/strided_slice_3StridedSliceCsequential_283/lstm_849/TensorArrayV2Stack/TensorListStack:tensor:06sequential_283/lstm_849/strided_slice_3/stack:output:08sequential_283/lstm_849/strided_slice_3/stack_1:output:08sequential_283/lstm_849/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_283/lstm_849/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_283/lstm_849/transpose_1	TransposeCsequential_283/lstm_849/TensorArrayV2Stack/TensorListStack:tensor:01sequential_283/lstm_849/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_283/lstm_849/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_283/lstm_850/ShapeShape'sequential_283/lstm_849/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_283/lstm_850/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_283/lstm_850/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_283/lstm_850/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_283/lstm_850/strided_sliceStridedSlice&sequential_283/lstm_850/Shape:output:04sequential_283/lstm_850/strided_slice/stack:output:06sequential_283/lstm_850/strided_slice/stack_1:output:06sequential_283/lstm_850/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_283/lstm_850/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_283/lstm_850/zeros/packedPack.sequential_283/lstm_850/strided_slice:output:0/sequential_283/lstm_850/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_283/lstm_850/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_283/lstm_850/zerosFill-sequential_283/lstm_850/zeros/packed:output:0,sequential_283/lstm_850/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_283/lstm_850/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_283/lstm_850/zeros_1/packedPack.sequential_283/lstm_850/strided_slice:output:01sequential_283/lstm_850/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_283/lstm_850/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_283/lstm_850/zeros_1Fill/sequential_283/lstm_850/zeros_1/packed:output:0.sequential_283/lstm_850/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_283/lstm_850/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_283/lstm_850/transpose	Transpose'sequential_283/lstm_849/transpose_1:y:0/sequential_283/lstm_850/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_283/lstm_850/Shape_1Shape%sequential_283/lstm_850/transpose:y:0*
T0*
_output_shapes
:w
-sequential_283/lstm_850/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_850/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_283/lstm_850/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_850/strided_slice_1StridedSlice(sequential_283/lstm_850/Shape_1:output:06sequential_283/lstm_850/strided_slice_1/stack:output:08sequential_283/lstm_850/strided_slice_1/stack_1:output:08sequential_283/lstm_850/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_283/lstm_850/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_283/lstm_850/TensorArrayV2TensorListReserve<sequential_283/lstm_850/TensorArrayV2/element_shape:output:00sequential_283/lstm_850/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_283/lstm_850/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_283/lstm_850/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_283/lstm_850/transpose:y:0Vsequential_283/lstm_850/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_283/lstm_850/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_850/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_283/lstm_850/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_850/strided_slice_2StridedSlice%sequential_283/lstm_850/transpose:y:06sequential_283/lstm_850/strided_slice_2/stack:output:08sequential_283/lstm_850/strided_slice_2/stack_1:output:08sequential_283/lstm_850/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_283/lstm_850/lstm_cell_850/MatMul/ReadVariableOpReadVariableOpDsequential_283_lstm_850_lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_283/lstm_850/lstm_cell_850/MatMulMatMul0sequential_283/lstm_850/strided_slice_2:output:0Csequential_283/lstm_850/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_283/lstm_850/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOpFsequential_283_lstm_850_lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_283/lstm_850/lstm_cell_850/MatMul_1MatMul&sequential_283/lstm_850/zeros:output:0Esequential_283/lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_283/lstm_850/lstm_cell_850/addAddV26sequential_283/lstm_850/lstm_cell_850/MatMul:product:08sequential_283/lstm_850/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_283/lstm_850/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOpEsequential_283_lstm_850_lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_283/lstm_850/lstm_cell_850/BiasAddBiasAdd-sequential_283/lstm_850/lstm_cell_850/add:z:0Dsequential_283/lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_283/lstm_850/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_283/lstm_850/lstm_cell_850/splitSplit>sequential_283/lstm_850/lstm_cell_850/split/split_dim:output:06sequential_283/lstm_850/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_283/lstm_850/lstm_cell_850/SigmoidSigmoid4sequential_283/lstm_850/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_283/lstm_850/lstm_cell_850/Sigmoid_1Sigmoid4sequential_283/lstm_850/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_283/lstm_850/lstm_cell_850/mulMul3sequential_283/lstm_850/lstm_cell_850/Sigmoid_1:y:0(sequential_283/lstm_850/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_283/lstm_850/lstm_cell_850/ReluRelu4sequential_283/lstm_850/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_283/lstm_850/lstm_cell_850/mul_1Mul1sequential_283/lstm_850/lstm_cell_850/Sigmoid:y:08sequential_283/lstm_850/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_283/lstm_850/lstm_cell_850/add_1AddV2-sequential_283/lstm_850/lstm_cell_850/mul:z:0/sequential_283/lstm_850/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_283/lstm_850/lstm_cell_850/Sigmoid_2Sigmoid4sequential_283/lstm_850/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_283/lstm_850/lstm_cell_850/Relu_1Relu/sequential_283/lstm_850/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_283/lstm_850/lstm_cell_850/mul_2Mul3sequential_283/lstm_850/lstm_cell_850/Sigmoid_2:y:0:sequential_283/lstm_850/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_283/lstm_850/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_283/lstm_850/TensorArrayV2_1TensorListReserve>sequential_283/lstm_850/TensorArrayV2_1/element_shape:output:00sequential_283/lstm_850/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_283/lstm_850/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_283/lstm_850/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_283/lstm_850/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_283/lstm_850/whileWhile3sequential_283/lstm_850/while/loop_counter:output:09sequential_283/lstm_850/while/maximum_iterations:output:0%sequential_283/lstm_850/time:output:00sequential_283/lstm_850/TensorArrayV2_1:handle:0&sequential_283/lstm_850/zeros:output:0(sequential_283/lstm_850/zeros_1:output:00sequential_283/lstm_850/strided_slice_1:output:0Osequential_283/lstm_850/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_283_lstm_850_lstm_cell_850_matmul_readvariableop_resourceFsequential_283_lstm_850_lstm_cell_850_matmul_1_readvariableop_resourceEsequential_283_lstm_850_lstm_cell_850_biasadd_readvariableop_resource*
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
*sequential_283_lstm_850_while_body_5105592*6
cond.R,
*sequential_283_lstm_850_while_cond_5105591*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_283/lstm_850/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_283/lstm_850/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_283/lstm_850/while:output:3Qsequential_283/lstm_850/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_283/lstm_850/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_283/lstm_850/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_850/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_850/strided_slice_3StridedSliceCsequential_283/lstm_850/TensorArrayV2Stack/TensorListStack:tensor:06sequential_283/lstm_850/strided_slice_3/stack:output:08sequential_283/lstm_850/strided_slice_3/stack_1:output:08sequential_283/lstm_850/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_283/lstm_850/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_283/lstm_850/transpose_1	TransposeCsequential_283/lstm_850/TensorArrayV2Stack/TensorListStack:tensor:01sequential_283/lstm_850/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_283/lstm_850/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_283/lstm_851/ShapeShape'sequential_283/lstm_850/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_283/lstm_851/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_283/lstm_851/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_283/lstm_851/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_283/lstm_851/strided_sliceStridedSlice&sequential_283/lstm_851/Shape:output:04sequential_283/lstm_851/strided_slice/stack:output:06sequential_283/lstm_851/strided_slice/stack_1:output:06sequential_283/lstm_851/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_283/lstm_851/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_283/lstm_851/zeros/packedPack.sequential_283/lstm_851/strided_slice:output:0/sequential_283/lstm_851/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_283/lstm_851/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_283/lstm_851/zerosFill-sequential_283/lstm_851/zeros/packed:output:0,sequential_283/lstm_851/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_283/lstm_851/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_283/lstm_851/zeros_1/packedPack.sequential_283/lstm_851/strided_slice:output:01sequential_283/lstm_851/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_283/lstm_851/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_283/lstm_851/zeros_1Fill/sequential_283/lstm_851/zeros_1/packed:output:0.sequential_283/lstm_851/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_283/lstm_851/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_283/lstm_851/transpose	Transpose'sequential_283/lstm_850/transpose_1:y:0/sequential_283/lstm_851/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_283/lstm_851/Shape_1Shape%sequential_283/lstm_851/transpose:y:0*
T0*
_output_shapes
:w
-sequential_283/lstm_851/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_851/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_283/lstm_851/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_851/strided_slice_1StridedSlice(sequential_283/lstm_851/Shape_1:output:06sequential_283/lstm_851/strided_slice_1/stack:output:08sequential_283/lstm_851/strided_slice_1/stack_1:output:08sequential_283/lstm_851/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_283/lstm_851/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_283/lstm_851/TensorArrayV2TensorListReserve<sequential_283/lstm_851/TensorArrayV2/element_shape:output:00sequential_283/lstm_851/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_283/lstm_851/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_283/lstm_851/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_283/lstm_851/transpose:y:0Vsequential_283/lstm_851/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_283/lstm_851/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_851/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_283/lstm_851/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_851/strided_slice_2StridedSlice%sequential_283/lstm_851/transpose:y:06sequential_283/lstm_851/strided_slice_2/stack:output:08sequential_283/lstm_851/strided_slice_2/stack_1:output:08sequential_283/lstm_851/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_283/lstm_851/lstm_cell_851/MatMul/ReadVariableOpReadVariableOpDsequential_283_lstm_851_lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_283/lstm_851/lstm_cell_851/MatMulMatMul0sequential_283/lstm_851/strided_slice_2:output:0Csequential_283/lstm_851/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_283/lstm_851/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOpFsequential_283_lstm_851_lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_283/lstm_851/lstm_cell_851/MatMul_1MatMul&sequential_283/lstm_851/zeros:output:0Esequential_283/lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_283/lstm_851/lstm_cell_851/addAddV26sequential_283/lstm_851/lstm_cell_851/MatMul:product:08sequential_283/lstm_851/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_283/lstm_851/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOpEsequential_283_lstm_851_lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_283/lstm_851/lstm_cell_851/BiasAddBiasAdd-sequential_283/lstm_851/lstm_cell_851/add:z:0Dsequential_283/lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_283/lstm_851/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_283/lstm_851/lstm_cell_851/splitSplit>sequential_283/lstm_851/lstm_cell_851/split/split_dim:output:06sequential_283/lstm_851/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_283/lstm_851/lstm_cell_851/SigmoidSigmoid4sequential_283/lstm_851/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_283/lstm_851/lstm_cell_851/Sigmoid_1Sigmoid4sequential_283/lstm_851/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_283/lstm_851/lstm_cell_851/mulMul3sequential_283/lstm_851/lstm_cell_851/Sigmoid_1:y:0(sequential_283/lstm_851/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_283/lstm_851/lstm_cell_851/ReluRelu4sequential_283/lstm_851/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_283/lstm_851/lstm_cell_851/mul_1Mul1sequential_283/lstm_851/lstm_cell_851/Sigmoid:y:08sequential_283/lstm_851/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_283/lstm_851/lstm_cell_851/add_1AddV2-sequential_283/lstm_851/lstm_cell_851/mul:z:0/sequential_283/lstm_851/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_283/lstm_851/lstm_cell_851/Sigmoid_2Sigmoid4sequential_283/lstm_851/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_283/lstm_851/lstm_cell_851/Relu_1Relu/sequential_283/lstm_851/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_283/lstm_851/lstm_cell_851/mul_2Mul3sequential_283/lstm_851/lstm_cell_851/Sigmoid_2:y:0:sequential_283/lstm_851/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_283/lstm_851/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_283/lstm_851/TensorArrayV2_1TensorListReserve>sequential_283/lstm_851/TensorArrayV2_1/element_shape:output:00sequential_283/lstm_851/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_283/lstm_851/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_283/lstm_851/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_283/lstm_851/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_283/lstm_851/whileWhile3sequential_283/lstm_851/while/loop_counter:output:09sequential_283/lstm_851/while/maximum_iterations:output:0%sequential_283/lstm_851/time:output:00sequential_283/lstm_851/TensorArrayV2_1:handle:0&sequential_283/lstm_851/zeros:output:0(sequential_283/lstm_851/zeros_1:output:00sequential_283/lstm_851/strided_slice_1:output:0Osequential_283/lstm_851/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_283_lstm_851_lstm_cell_851_matmul_readvariableop_resourceFsequential_283_lstm_851_lstm_cell_851_matmul_1_readvariableop_resourceEsequential_283_lstm_851_lstm_cell_851_biasadd_readvariableop_resource*
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
*sequential_283_lstm_851_while_body_5105731*6
cond.R,
*sequential_283_lstm_851_while_cond_5105730*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_283/lstm_851/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_283/lstm_851/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_283/lstm_851/while:output:3Qsequential_283/lstm_851/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_283/lstm_851/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_283/lstm_851/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_283/lstm_851/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_283/lstm_851/strided_slice_3StridedSliceCsequential_283/lstm_851/TensorArrayV2Stack/TensorListStack:tensor:06sequential_283/lstm_851/strided_slice_3/stack:output:08sequential_283/lstm_851/strided_slice_3/stack_1:output:08sequential_283/lstm_851/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_283/lstm_851/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_283/lstm_851/transpose_1	TransposeCsequential_283/lstm_851/TensorArrayV2Stack/TensorListStack:tensor:01sequential_283/lstm_851/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_283/lstm_851/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_283/dense_283/MatMul/ReadVariableOpReadVariableOp7sequential_283_dense_283_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_283/dense_283/MatMulMatMul0sequential_283/lstm_851/strided_slice_3:output:06sequential_283/dense_283/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_283/dense_283/BiasAdd/ReadVariableOpReadVariableOp8sequential_283_dense_283_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_283/dense_283/BiasAddBiasAdd)sequential_283/dense_283/MatMul:product:07sequential_283/dense_283/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_283/dense_283/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_283/dense_283/BiasAdd/ReadVariableOp/^sequential_283/dense_283/MatMul/ReadVariableOp=^sequential_283/lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp<^sequential_283/lstm_849/lstm_cell_849/MatMul/ReadVariableOp>^sequential_283/lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp^sequential_283/lstm_849/while=^sequential_283/lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp<^sequential_283/lstm_850/lstm_cell_850/MatMul/ReadVariableOp>^sequential_283/lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp^sequential_283/lstm_850/while=^sequential_283/lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp<^sequential_283/lstm_851/lstm_cell_851/MatMul/ReadVariableOp>^sequential_283/lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp^sequential_283/lstm_851/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_283/dense_283/BiasAdd/ReadVariableOp/sequential_283/dense_283/BiasAdd/ReadVariableOp2`
.sequential_283/dense_283/MatMul/ReadVariableOp.sequential_283/dense_283/MatMul/ReadVariableOp2|
<sequential_283/lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp<sequential_283/lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp2z
;sequential_283/lstm_849/lstm_cell_849/MatMul/ReadVariableOp;sequential_283/lstm_849/lstm_cell_849/MatMul/ReadVariableOp2~
=sequential_283/lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp=sequential_283/lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp2>
sequential_283/lstm_849/whilesequential_283/lstm_849/while2|
<sequential_283/lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp<sequential_283/lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp2z
;sequential_283/lstm_850/lstm_cell_850/MatMul/ReadVariableOp;sequential_283/lstm_850/lstm_cell_850/MatMul/ReadVariableOp2~
=sequential_283/lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp=sequential_283/lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp2>
sequential_283/lstm_850/whilesequential_283/lstm_850/while2|
<sequential_283/lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp<sequential_283/lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp2z
;sequential_283/lstm_851/lstm_cell_851/MatMul/ReadVariableOp;sequential_283/lstm_851/lstm_cell_851/MatMul/ReadVariableOp2~
=sequential_283/lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp=sequential_283/lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp2>
sequential_283/lstm_851/whilesequential_283/lstm_851/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_849_input
?C
?

lstm_849_while_body_5108194.
*lstm_849_while_lstm_849_while_loop_counter4
0lstm_849_while_lstm_849_while_maximum_iterations
lstm_849_while_placeholder 
lstm_849_while_placeholder_1 
lstm_849_while_placeholder_2 
lstm_849_while_placeholder_3-
)lstm_849_while_lstm_849_strided_slice_1_0i
elstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0:	?R
?lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?M
>lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
lstm_849_while_identity
lstm_849_while_identity_1
lstm_849_while_identity_2
lstm_849_while_identity_3
lstm_849_while_identity_4
lstm_849_while_identity_5+
'lstm_849_while_lstm_849_strided_slice_1g
clstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensorN
;lstm_849_while_lstm_cell_849_matmul_readvariableop_resource:	?P
=lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource:	d?K
<lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource:	???3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp?2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp?4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp?
@lstm_849/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_849/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensor_0lstm_849_while_placeholderIlstm_849/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp=lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_849/while/lstm_cell_849/MatMulMatMul9lstm_849/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp?lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_849/while/lstm_cell_849/MatMul_1MatMullstm_849_while_placeholder_2<lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_849/while/lstm_cell_849/addAddV2-lstm_849/while/lstm_cell_849/MatMul:product:0/lstm_849/while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp>lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_849/while/lstm_cell_849/BiasAddBiasAdd$lstm_849/while/lstm_cell_849/add:z:0;lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_849/while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_849/while/lstm_cell_849/splitSplit5lstm_849/while/lstm_cell_849/split/split_dim:output:0-lstm_849/while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_849/while/lstm_cell_849/SigmoidSigmoid+lstm_849/while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_849/while/lstm_cell_849/Sigmoid_1Sigmoid+lstm_849/while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_849/while/lstm_cell_849/mulMul*lstm_849/while/lstm_cell_849/Sigmoid_1:y:0lstm_849_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_849/while/lstm_cell_849/ReluRelu+lstm_849/while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_849/while/lstm_cell_849/mul_1Mul(lstm_849/while/lstm_cell_849/Sigmoid:y:0/lstm_849/while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_849/while/lstm_cell_849/add_1AddV2$lstm_849/while/lstm_cell_849/mul:z:0&lstm_849/while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_849/while/lstm_cell_849/Sigmoid_2Sigmoid+lstm_849/while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_849/while/lstm_cell_849/Relu_1Relu&lstm_849/while/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_849/while/lstm_cell_849/mul_2Mul*lstm_849/while/lstm_cell_849/Sigmoid_2:y:01lstm_849/while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_849/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_849_while_placeholder_1lstm_849_while_placeholder&lstm_849/while/lstm_cell_849/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_849/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_849/while/addAddV2lstm_849_while_placeholderlstm_849/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_849/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_849/while/add_1AddV2*lstm_849_while_lstm_849_while_loop_counterlstm_849/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_849/while/IdentityIdentitylstm_849/while/add_1:z:0^lstm_849/while/NoOp*
T0*
_output_shapes
: ?
lstm_849/while/Identity_1Identity0lstm_849_while_lstm_849_while_maximum_iterations^lstm_849/while/NoOp*
T0*
_output_shapes
: t
lstm_849/while/Identity_2Identitylstm_849/while/add:z:0^lstm_849/while/NoOp*
T0*
_output_shapes
: ?
lstm_849/while/Identity_3IdentityClstm_849/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_849/while/NoOp*
T0*
_output_shapes
: ?
lstm_849/while/Identity_4Identity&lstm_849/while/lstm_cell_849/mul_2:z:0^lstm_849/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_849/while/Identity_5Identity&lstm_849/while/lstm_cell_849/add_1:z:0^lstm_849/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_849/while/NoOpNoOp4^lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp3^lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp5^lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_849_while_identity lstm_849/while/Identity:output:0"?
lstm_849_while_identity_1"lstm_849/while/Identity_1:output:0"?
lstm_849_while_identity_2"lstm_849/while/Identity_2:output:0"?
lstm_849_while_identity_3"lstm_849/while/Identity_3:output:0"?
lstm_849_while_identity_4"lstm_849/while/Identity_4:output:0"?
lstm_849_while_identity_5"lstm_849/while/Identity_5:output:0"T
'lstm_849_while_lstm_849_strided_slice_1)lstm_849_while_lstm_849_strided_slice_1_0"~
<lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource>lstm_849_while_lstm_cell_849_biasadd_readvariableop_resource_0"?
=lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource?lstm_849_while_lstm_cell_849_matmul_1_readvariableop_resource_0"|
;lstm_849_while_lstm_cell_849_matmul_readvariableop_resource=lstm_849_while_lstm_cell_849_matmul_readvariableop_resource_0"?
clstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensorelstm_849_while_tensorarrayv2read_tensorlistgetitem_lstm_849_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp3lstm_849/while/lstm_cell_849/BiasAdd/ReadVariableOp2h
2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp2lstm_849/while/lstm_cell_849/MatMul/ReadVariableOp2l
4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp4lstm_849/while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_849_layer_call_fn_5109022

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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5107020s
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
while_cond_5107781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5107781___redundant_placeholder05
1while_while_cond_5107781___redundant_placeholder15
1while_while_cond_5107781___redundant_placeholder25
1while_while_cond_5107781___redundant_placeholder3
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
while_body_5107452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_851_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_851_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_851_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_851_matmul_readvariableop_resource:2(F
4while_lstm_cell_851_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_851_biasadd_readvariableop_resource:(??*while/lstm_cell_851/BiasAdd/ReadVariableOp?)while/lstm_cell_851/MatMul/ReadVariableOp?+while/lstm_cell_851/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_851_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_851/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_851_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_851/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_851/addAddV2$while/lstm_cell_851/MatMul:product:0&while/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_851_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_851/BiasAddBiasAddwhile/lstm_cell_851/add:z:02while/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_851/splitSplit,while/lstm_cell_851/split/split_dim:output:0$while/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_851/SigmoidSigmoid"while/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_1Sigmoid"while/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mulMul!while/lstm_cell_851/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_851/ReluRelu"while/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_1Mulwhile/lstm_cell_851/Sigmoid:y:0&while/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/add_1AddV2while/lstm_cell_851/mul:z:0while/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_851/Sigmoid_2Sigmoid"while/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_851/Relu_1Reluwhile/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_851/mul_2Mul!while/lstm_cell_851/Sigmoid_2:y:0(while/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_851/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_851/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_851/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_851/BiasAdd/ReadVariableOp*^while/lstm_cell_851/MatMul/ReadVariableOp,^while/lstm_cell_851/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_851_biasadd_readvariableop_resource5while_lstm_cell_851_biasadd_readvariableop_resource_0"n
4while_lstm_cell_851_matmul_1_readvariableop_resource6while_lstm_cell_851_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_851_matmul_readvariableop_resource4while_lstm_cell_851_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_851/BiasAdd/ReadVariableOp*while/lstm_cell_851/BiasAdd/ReadVariableOp2V
)while/lstm_cell_851/MatMul/ReadVariableOp)while/lstm_cell_851/MatMul/ReadVariableOp2Z
+while/lstm_cell_851/MatMul_1/ReadVariableOp+while/lstm_cell_851/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5106512

inputs(
lstm_cell_850_5106430:	d?(
lstm_cell_850_5106432:	2?$
lstm_cell_850_5106434:	?
identity??%lstm_cell_850/StatefulPartitionedCall?while;
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
%lstm_cell_850/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_850_5106430lstm_cell_850_5106432lstm_cell_850_5106434*
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106384n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_850_5106430lstm_cell_850_5106432lstm_cell_850_5106434*
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
while_body_5106443*
condR
while_cond_5106442*K
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
NoOpNoOp&^lstm_cell_850/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_850/StatefulPartitionedCall%lstm_cell_850/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_849_layer_call_and_return_conditional_losses_5106162

inputs(
lstm_cell_849_5106080:	?(
lstm_cell_849_5106082:	d?$
lstm_cell_849_5106084:	?
identity??%lstm_cell_849/StatefulPartitionedCall?while;
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
%lstm_cell_849/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_849_5106080lstm_cell_849_5106082lstm_cell_849_5106084*
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5106034n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_849_5106080lstm_cell_849_5106082lstm_cell_849_5106084*
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
while_body_5106093*
condR
while_cond_5106092*K
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
NoOpNoOp&^lstm_cell_849/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_849/StatefulPartitionedCall%lstm_cell_849/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_850_layer_call_fn_5109638

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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5107170s
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
while_cond_5110752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5110752___redundant_placeholder05
1while_while_cond_5110752___redundant_placeholder15
1while_while_cond_5110752___redundant_placeholder25
1while_while_cond_5110752___redundant_placeholder3
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
/__inference_lstm_cell_851_layer_call_fn_5111069

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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5106588o
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
while_cond_5109377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5109377___redundant_placeholder05
1while_while_cond_5109377___redundant_placeholder15
1while_while_cond_5109377___redundant_placeholder25
1while_while_cond_5109377___redundant_placeholder3
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5106238

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
while_cond_5110609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5110609___redundant_placeholder05
1while_while_cond_5110609___redundant_placeholder15
1while_while_cond_5110609___redundant_placeholder25
1while_while_cond_5110609___redundant_placeholder3
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5110221

inputs?
,lstm_cell_850_matmul_readvariableop_resource:	d?A
.lstm_cell_850_matmul_1_readvariableop_resource:	2?<
-lstm_cell_850_biasadd_readvariableop_resource:	?
identity??$lstm_cell_850/BiasAdd/ReadVariableOp?#lstm_cell_850/MatMul/ReadVariableOp?%lstm_cell_850/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_850/MatMul/ReadVariableOpReadVariableOp,lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_850/MatMulMatMulstrided_slice_2:output:0+lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_850/MatMul_1MatMulzeros:output:0-lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_850/addAddV2lstm_cell_850/MatMul:product:0 lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_850/BiasAddBiasAddlstm_cell_850/add:z:0,lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_850/splitSplit&lstm_cell_850/split/split_dim:output:0lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_850/SigmoidSigmoidlstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_1Sigmoidlstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_850/mulMullstm_cell_850/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_850/ReluRelulstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_1Mullstm_cell_850/Sigmoid:y:0 lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_850/add_1AddV2lstm_cell_850/mul:z:0lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_850/Sigmoid_2Sigmoidlstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_850/Relu_1Relulstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_850/mul_2Mullstm_cell_850/Sigmoid_2:y:0"lstm_cell_850/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_850_matmul_readvariableop_resource.lstm_cell_850_matmul_1_readvariableop_resource-lstm_cell_850_biasadd_readvariableop_resource*
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
while_body_5110137*
condR
while_cond_5110136*K
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
NoOpNoOp%^lstm_cell_850/BiasAdd/ReadVariableOp$^lstm_cell_850/MatMul/ReadVariableOp&^lstm_cell_850/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_850/BiasAdd/ReadVariableOp$lstm_cell_850/BiasAdd/ReadVariableOp2J
#lstm_cell_850/MatMul/ReadVariableOp#lstm_cell_850/MatMul/ReadVariableOp2N
%lstm_cell_850/MatMul_1/ReadVariableOp%lstm_cell_850/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_283_layer_call_fn_5108108

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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5107345o
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
0__inference_sequential_283_layer_call_fn_5107986
lstm_849_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_849_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5107934o
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
_user_specified_namelstm_849_input
??
?
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108989

inputsH
5lstm_849_lstm_cell_849_matmul_readvariableop_resource:	?J
7lstm_849_lstm_cell_849_matmul_1_readvariableop_resource:	d?E
6lstm_849_lstm_cell_849_biasadd_readvariableop_resource:	?H
5lstm_850_lstm_cell_850_matmul_readvariableop_resource:	d?J
7lstm_850_lstm_cell_850_matmul_1_readvariableop_resource:	2?E
6lstm_850_lstm_cell_850_biasadd_readvariableop_resource:	?G
5lstm_851_lstm_cell_851_matmul_readvariableop_resource:2(I
7lstm_851_lstm_cell_851_matmul_1_readvariableop_resource:
(D
6lstm_851_lstm_cell_851_biasadd_readvariableop_resource:(:
(dense_283_matmul_readvariableop_resource:
7
)dense_283_biasadd_readvariableop_resource:
identity?? dense_283/BiasAdd/ReadVariableOp?dense_283/MatMul/ReadVariableOp?-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp?,lstm_849/lstm_cell_849/MatMul/ReadVariableOp?.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp?lstm_849/while?-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp?,lstm_850/lstm_cell_850/MatMul/ReadVariableOp?.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp?lstm_850/while?-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp?,lstm_851/lstm_cell_851/MatMul/ReadVariableOp?.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp?lstm_851/whileD
lstm_849/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_849/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_849/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_849/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_sliceStridedSlicelstm_849/Shape:output:0%lstm_849/strided_slice/stack:output:0'lstm_849/strided_slice/stack_1:output:0'lstm_849/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_849/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_849/zeros/packedPacklstm_849/strided_slice:output:0 lstm_849/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_849/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_849/zerosFilllstm_849/zeros/packed:output:0lstm_849/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_849/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_849/zeros_1/packedPacklstm_849/strided_slice:output:0"lstm_849/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_849/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_849/zeros_1Fill lstm_849/zeros_1/packed:output:0lstm_849/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_849/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_849/transpose	Transposeinputs lstm_849/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_849/Shape_1Shapelstm_849/transpose:y:0*
T0*
_output_shapes
:h
lstm_849/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_849/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_849/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_slice_1StridedSlicelstm_849/Shape_1:output:0'lstm_849/strided_slice_1/stack:output:0)lstm_849/strided_slice_1/stack_1:output:0)lstm_849/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_849/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_849/TensorArrayV2TensorListReserve-lstm_849/TensorArrayV2/element_shape:output:0!lstm_849/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_849/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_849/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_849/transpose:y:0Glstm_849/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_849/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_849/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_849/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_slice_2StridedSlicelstm_849/transpose:y:0'lstm_849/strided_slice_2/stack:output:0)lstm_849/strided_slice_2/stack_1:output:0)lstm_849/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_849/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp5lstm_849_lstm_cell_849_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_849/lstm_cell_849/MatMulMatMul!lstm_849/strided_slice_2:output:04lstm_849/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp7lstm_849_lstm_cell_849_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_849/lstm_cell_849/MatMul_1MatMullstm_849/zeros:output:06lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_849/lstm_cell_849/addAddV2'lstm_849/lstm_cell_849/MatMul:product:0)lstm_849/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp6lstm_849_lstm_cell_849_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_849/lstm_cell_849/BiasAddBiasAddlstm_849/lstm_cell_849/add:z:05lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_849/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_849/lstm_cell_849/splitSplit/lstm_849/lstm_cell_849/split/split_dim:output:0'lstm_849/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_849/lstm_cell_849/SigmoidSigmoid%lstm_849/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_849/lstm_cell_849/Sigmoid_1Sigmoid%lstm_849/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/mulMul$lstm_849/lstm_cell_849/Sigmoid_1:y:0lstm_849/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_849/lstm_cell_849/ReluRelu%lstm_849/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/mul_1Mul"lstm_849/lstm_cell_849/Sigmoid:y:0)lstm_849/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/add_1AddV2lstm_849/lstm_cell_849/mul:z:0 lstm_849/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_849/lstm_cell_849/Sigmoid_2Sigmoid%lstm_849/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_849/lstm_cell_849/Relu_1Relu lstm_849/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_849/lstm_cell_849/mul_2Mul$lstm_849/lstm_cell_849/Sigmoid_2:y:0+lstm_849/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_849/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_849/TensorArrayV2_1TensorListReserve/lstm_849/TensorArrayV2_1/element_shape:output:0!lstm_849/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_849/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_849/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_849/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_849/whileWhile$lstm_849/while/loop_counter:output:0*lstm_849/while/maximum_iterations:output:0lstm_849/time:output:0!lstm_849/TensorArrayV2_1:handle:0lstm_849/zeros:output:0lstm_849/zeros_1:output:0!lstm_849/strided_slice_1:output:0@lstm_849/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_849_lstm_cell_849_matmul_readvariableop_resource7lstm_849_lstm_cell_849_matmul_1_readvariableop_resource6lstm_849_lstm_cell_849_biasadd_readvariableop_resource*
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
lstm_849_while_body_5108621*'
condR
lstm_849_while_cond_5108620*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_849/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_849/TensorArrayV2Stack/TensorListStackTensorListStacklstm_849/while:output:3Blstm_849/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_849/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_849/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_849/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_849/strided_slice_3StridedSlice4lstm_849/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_849/strided_slice_3/stack:output:0)lstm_849/strided_slice_3/stack_1:output:0)lstm_849/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_849/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_849/transpose_1	Transpose4lstm_849/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_849/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_849/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_850/ShapeShapelstm_849/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_850/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_850/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_850/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_sliceStridedSlicelstm_850/Shape:output:0%lstm_850/strided_slice/stack:output:0'lstm_850/strided_slice/stack_1:output:0'lstm_850/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_850/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_850/zeros/packedPacklstm_850/strided_slice:output:0 lstm_850/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_850/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_850/zerosFilllstm_850/zeros/packed:output:0lstm_850/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_850/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_850/zeros_1/packedPacklstm_850/strided_slice:output:0"lstm_850/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_850/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_850/zeros_1Fill lstm_850/zeros_1/packed:output:0lstm_850/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_850/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_850/transpose	Transposelstm_849/transpose_1:y:0 lstm_850/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_850/Shape_1Shapelstm_850/transpose:y:0*
T0*
_output_shapes
:h
lstm_850/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_850/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_850/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_slice_1StridedSlicelstm_850/Shape_1:output:0'lstm_850/strided_slice_1/stack:output:0)lstm_850/strided_slice_1/stack_1:output:0)lstm_850/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_850/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_850/TensorArrayV2TensorListReserve-lstm_850/TensorArrayV2/element_shape:output:0!lstm_850/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_850/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_850/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_850/transpose:y:0Glstm_850/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_850/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_850/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_850/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_slice_2StridedSlicelstm_850/transpose:y:0'lstm_850/strided_slice_2/stack:output:0)lstm_850/strided_slice_2/stack_1:output:0)lstm_850/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_850/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp5lstm_850_lstm_cell_850_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_850/lstm_cell_850/MatMulMatMul!lstm_850/strided_slice_2:output:04lstm_850/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp7lstm_850_lstm_cell_850_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_850/lstm_cell_850/MatMul_1MatMullstm_850/zeros:output:06lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_850/lstm_cell_850/addAddV2'lstm_850/lstm_cell_850/MatMul:product:0)lstm_850/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp6lstm_850_lstm_cell_850_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_850/lstm_cell_850/BiasAddBiasAddlstm_850/lstm_cell_850/add:z:05lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_850/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_850/lstm_cell_850/splitSplit/lstm_850/lstm_cell_850/split/split_dim:output:0'lstm_850/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_850/lstm_cell_850/SigmoidSigmoid%lstm_850/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_850/lstm_cell_850/Sigmoid_1Sigmoid%lstm_850/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/mulMul$lstm_850/lstm_cell_850/Sigmoid_1:y:0lstm_850/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_850/lstm_cell_850/ReluRelu%lstm_850/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/mul_1Mul"lstm_850/lstm_cell_850/Sigmoid:y:0)lstm_850/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/add_1AddV2lstm_850/lstm_cell_850/mul:z:0 lstm_850/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_850/lstm_cell_850/Sigmoid_2Sigmoid%lstm_850/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_850/lstm_cell_850/Relu_1Relu lstm_850/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_850/lstm_cell_850/mul_2Mul$lstm_850/lstm_cell_850/Sigmoid_2:y:0+lstm_850/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_850/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_850/TensorArrayV2_1TensorListReserve/lstm_850/TensorArrayV2_1/element_shape:output:0!lstm_850/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_850/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_850/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_850/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_850/whileWhile$lstm_850/while/loop_counter:output:0*lstm_850/while/maximum_iterations:output:0lstm_850/time:output:0!lstm_850/TensorArrayV2_1:handle:0lstm_850/zeros:output:0lstm_850/zeros_1:output:0!lstm_850/strided_slice_1:output:0@lstm_850/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_850_lstm_cell_850_matmul_readvariableop_resource7lstm_850_lstm_cell_850_matmul_1_readvariableop_resource6lstm_850_lstm_cell_850_biasadd_readvariableop_resource*
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
lstm_850_while_body_5108760*'
condR
lstm_850_while_cond_5108759*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_850/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_850/TensorArrayV2Stack/TensorListStackTensorListStacklstm_850/while:output:3Blstm_850/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_850/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_850/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_850/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_850/strided_slice_3StridedSlice4lstm_850/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_850/strided_slice_3/stack:output:0)lstm_850/strided_slice_3/stack_1:output:0)lstm_850/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_850/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_850/transpose_1	Transpose4lstm_850/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_850/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_850/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_851/ShapeShapelstm_850/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_851/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_851/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_851/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_sliceStridedSlicelstm_851/Shape:output:0%lstm_851/strided_slice/stack:output:0'lstm_851/strided_slice/stack_1:output:0'lstm_851/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_851/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_851/zeros/packedPacklstm_851/strided_slice:output:0 lstm_851/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_851/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_851/zerosFilllstm_851/zeros/packed:output:0lstm_851/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_851/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_851/zeros_1/packedPacklstm_851/strided_slice:output:0"lstm_851/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_851/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_851/zeros_1Fill lstm_851/zeros_1/packed:output:0lstm_851/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_851/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_851/transpose	Transposelstm_850/transpose_1:y:0 lstm_851/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_851/Shape_1Shapelstm_851/transpose:y:0*
T0*
_output_shapes
:h
lstm_851/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_851/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_851/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_slice_1StridedSlicelstm_851/Shape_1:output:0'lstm_851/strided_slice_1/stack:output:0)lstm_851/strided_slice_1/stack_1:output:0)lstm_851/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_851/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_851/TensorArrayV2TensorListReserve-lstm_851/TensorArrayV2/element_shape:output:0!lstm_851/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_851/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_851/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_851/transpose:y:0Glstm_851/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_851/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_851/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_851/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_slice_2StridedSlicelstm_851/transpose:y:0'lstm_851/strided_slice_2/stack:output:0)lstm_851/strided_slice_2/stack_1:output:0)lstm_851/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_851/lstm_cell_851/MatMul/ReadVariableOpReadVariableOp5lstm_851_lstm_cell_851_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_851/lstm_cell_851/MatMulMatMul!lstm_851/strided_slice_2:output:04lstm_851/lstm_cell_851/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOpReadVariableOp7lstm_851_lstm_cell_851_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_851/lstm_cell_851/MatMul_1MatMullstm_851/zeros:output:06lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_851/lstm_cell_851/addAddV2'lstm_851/lstm_cell_851/MatMul:product:0)lstm_851/lstm_cell_851/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOpReadVariableOp6lstm_851_lstm_cell_851_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_851/lstm_cell_851/BiasAddBiasAddlstm_851/lstm_cell_851/add:z:05lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_851/lstm_cell_851/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_851/lstm_cell_851/splitSplit/lstm_851/lstm_cell_851/split/split_dim:output:0'lstm_851/lstm_cell_851/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_851/lstm_cell_851/SigmoidSigmoid%lstm_851/lstm_cell_851/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_851/lstm_cell_851/Sigmoid_1Sigmoid%lstm_851/lstm_cell_851/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/mulMul$lstm_851/lstm_cell_851/Sigmoid_1:y:0lstm_851/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_851/lstm_cell_851/ReluRelu%lstm_851/lstm_cell_851/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/mul_1Mul"lstm_851/lstm_cell_851/Sigmoid:y:0)lstm_851/lstm_cell_851/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/add_1AddV2lstm_851/lstm_cell_851/mul:z:0 lstm_851/lstm_cell_851/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_851/lstm_cell_851/Sigmoid_2Sigmoid%lstm_851/lstm_cell_851/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_851/lstm_cell_851/Relu_1Relu lstm_851/lstm_cell_851/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_851/lstm_cell_851/mul_2Mul$lstm_851/lstm_cell_851/Sigmoid_2:y:0+lstm_851/lstm_cell_851/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_851/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_851/TensorArrayV2_1TensorListReserve/lstm_851/TensorArrayV2_1/element_shape:output:0!lstm_851/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_851/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_851/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_851/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_851/whileWhile$lstm_851/while/loop_counter:output:0*lstm_851/while/maximum_iterations:output:0lstm_851/time:output:0!lstm_851/TensorArrayV2_1:handle:0lstm_851/zeros:output:0lstm_851/zeros_1:output:0!lstm_851/strided_slice_1:output:0@lstm_851/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_851_lstm_cell_851_matmul_readvariableop_resource7lstm_851_lstm_cell_851_matmul_1_readvariableop_resource6lstm_851_lstm_cell_851_biasadd_readvariableop_resource*
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
lstm_851_while_body_5108899*'
condR
lstm_851_while_cond_5108898*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_851/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_851/TensorArrayV2Stack/TensorListStackTensorListStacklstm_851/while:output:3Blstm_851/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_851/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_851/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_851/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_851/strided_slice_3StridedSlice4lstm_851/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_851/strided_slice_3/stack:output:0)lstm_851/strided_slice_3/stack_1:output:0)lstm_851/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_851/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_851/transpose_1	Transpose4lstm_851/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_851/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_851/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_283/MatMul/ReadVariableOpReadVariableOp(dense_283_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_283/MatMulMatMul!lstm_851/strided_slice_3:output:0'dense_283/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_283/BiasAdd/ReadVariableOpReadVariableOp)dense_283_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_283/BiasAddBiasAdddense_283/MatMul:product:0(dense_283/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_283/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_283/BiasAdd/ReadVariableOp ^dense_283/MatMul/ReadVariableOp.^lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp-^lstm_849/lstm_cell_849/MatMul/ReadVariableOp/^lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp^lstm_849/while.^lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp-^lstm_850/lstm_cell_850/MatMul/ReadVariableOp/^lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp^lstm_850/while.^lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp-^lstm_851/lstm_cell_851/MatMul/ReadVariableOp/^lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp^lstm_851/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_283/BiasAdd/ReadVariableOp dense_283/BiasAdd/ReadVariableOp2B
dense_283/MatMul/ReadVariableOpdense_283/MatMul/ReadVariableOp2^
-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp-lstm_849/lstm_cell_849/BiasAdd/ReadVariableOp2\
,lstm_849/lstm_cell_849/MatMul/ReadVariableOp,lstm_849/lstm_cell_849/MatMul/ReadVariableOp2`
.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp.lstm_849/lstm_cell_849/MatMul_1/ReadVariableOp2 
lstm_849/whilelstm_849/while2^
-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp-lstm_850/lstm_cell_850/BiasAdd/ReadVariableOp2\
,lstm_850/lstm_cell_850/MatMul/ReadVariableOp,lstm_850/lstm_cell_850/MatMul/ReadVariableOp2`
.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp.lstm_850/lstm_cell_850/MatMul_1/ReadVariableOp2 
lstm_850/whilelstm_850/while2^
-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp-lstm_851/lstm_cell_851/BiasAdd/ReadVariableOp2\
,lstm_851/lstm_cell_851/MatMul/ReadVariableOp,lstm_851/lstm_cell_851/MatMul/ReadVariableOp2`
.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp.lstm_851/lstm_cell_851/MatMul_1/ReadVariableOp2 
lstm_851/whilelstm_851/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_849_layer_call_fn_5110890

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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5106034o
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5106034

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

lstm_850_while_body_5108760.
*lstm_850_while_lstm_850_while_loop_counter4
0lstm_850_while_lstm_850_while_maximum_iterations
lstm_850_while_placeholder 
lstm_850_while_placeholder_1 
lstm_850_while_placeholder_2 
lstm_850_while_placeholder_3-
)lstm_850_while_lstm_850_strided_slice_1_0i
elstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0:	d?R
?lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0:	2?M
>lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0:	?
lstm_850_while_identity
lstm_850_while_identity_1
lstm_850_while_identity_2
lstm_850_while_identity_3
lstm_850_while_identity_4
lstm_850_while_identity_5+
'lstm_850_while_lstm_850_strided_slice_1g
clstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensorN
;lstm_850_while_lstm_cell_850_matmul_readvariableop_resource:	d?P
=lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource:	2?K
<lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource:	???3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp?2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp?4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp?
@lstm_850/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_850/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensor_0lstm_850_while_placeholderIlstm_850/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOpReadVariableOp=lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_850/while/lstm_cell_850/MatMulMatMul9lstm_850/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOpReadVariableOp?lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_850/while/lstm_cell_850/MatMul_1MatMullstm_850_while_placeholder_2<lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_850/while/lstm_cell_850/addAddV2-lstm_850/while/lstm_cell_850/MatMul:product:0/lstm_850/while/lstm_cell_850/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOpReadVariableOp>lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_850/while/lstm_cell_850/BiasAddBiasAdd$lstm_850/while/lstm_cell_850/add:z:0;lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_850/while/lstm_cell_850/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_850/while/lstm_cell_850/splitSplit5lstm_850/while/lstm_cell_850/split/split_dim:output:0-lstm_850/while/lstm_cell_850/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_850/while/lstm_cell_850/SigmoidSigmoid+lstm_850/while/lstm_cell_850/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_850/while/lstm_cell_850/Sigmoid_1Sigmoid+lstm_850/while/lstm_cell_850/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_850/while/lstm_cell_850/mulMul*lstm_850/while/lstm_cell_850/Sigmoid_1:y:0lstm_850_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_850/while/lstm_cell_850/ReluRelu+lstm_850/while/lstm_cell_850/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_850/while/lstm_cell_850/mul_1Mul(lstm_850/while/lstm_cell_850/Sigmoid:y:0/lstm_850/while/lstm_cell_850/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_850/while/lstm_cell_850/add_1AddV2$lstm_850/while/lstm_cell_850/mul:z:0&lstm_850/while/lstm_cell_850/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_850/while/lstm_cell_850/Sigmoid_2Sigmoid+lstm_850/while/lstm_cell_850/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_850/while/lstm_cell_850/Relu_1Relu&lstm_850/while/lstm_cell_850/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_850/while/lstm_cell_850/mul_2Mul*lstm_850/while/lstm_cell_850/Sigmoid_2:y:01lstm_850/while/lstm_cell_850/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_850/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_850_while_placeholder_1lstm_850_while_placeholder&lstm_850/while/lstm_cell_850/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_850/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_850/while/addAddV2lstm_850_while_placeholderlstm_850/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_850/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_850/while/add_1AddV2*lstm_850_while_lstm_850_while_loop_counterlstm_850/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_850/while/IdentityIdentitylstm_850/while/add_1:z:0^lstm_850/while/NoOp*
T0*
_output_shapes
: ?
lstm_850/while/Identity_1Identity0lstm_850_while_lstm_850_while_maximum_iterations^lstm_850/while/NoOp*
T0*
_output_shapes
: t
lstm_850/while/Identity_2Identitylstm_850/while/add:z:0^lstm_850/while/NoOp*
T0*
_output_shapes
: ?
lstm_850/while/Identity_3IdentityClstm_850/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_850/while/NoOp*
T0*
_output_shapes
: ?
lstm_850/while/Identity_4Identity&lstm_850/while/lstm_cell_850/mul_2:z:0^lstm_850/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_850/while/Identity_5Identity&lstm_850/while/lstm_cell_850/add_1:z:0^lstm_850/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_850/while/NoOpNoOp4^lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp3^lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp5^lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_850_while_identity lstm_850/while/Identity:output:0"?
lstm_850_while_identity_1"lstm_850/while/Identity_1:output:0"?
lstm_850_while_identity_2"lstm_850/while/Identity_2:output:0"?
lstm_850_while_identity_3"lstm_850/while/Identity_3:output:0"?
lstm_850_while_identity_4"lstm_850/while/Identity_4:output:0"?
lstm_850_while_identity_5"lstm_850/while/Identity_5:output:0"T
'lstm_850_while_lstm_850_strided_slice_1)lstm_850_while_lstm_850_strided_slice_1_0"~
<lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource>lstm_850_while_lstm_cell_850_biasadd_readvariableop_resource_0"?
=lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource?lstm_850_while_lstm_cell_850_matmul_1_readvariableop_resource_0"|
;lstm_850_while_lstm_cell_850_matmul_readvariableop_resource=lstm_850_while_lstm_cell_850_matmul_readvariableop_resource_0"?
clstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensorelstm_850_while_tensorarrayv2read_tensorlistgetitem_lstm_850_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp3lstm_850/while/lstm_cell_850/BiasAdd/ReadVariableOp2h
2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp2lstm_850/while/lstm_cell_850/MatMul/ReadVariableOp2l
4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp4lstm_850/while/lstm_cell_850/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5106601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5106601___redundant_placeholder05
1while_while_cond_5106601___redundant_placeholder15
1while_while_cond_5106601___redundant_placeholder25
1while_while_cond_5106601___redundant_placeholder3
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
while_body_5109521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_849_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_849_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_849_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_849_matmul_readvariableop_resource:	?G
4while_lstm_cell_849_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_849_biasadd_readvariableop_resource:	???*while/lstm_cell_849/BiasAdd/ReadVariableOp?)while/lstm_cell_849/MatMul/ReadVariableOp?+while/lstm_cell_849/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_849/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_849_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_849/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_849/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_849/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_849_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_849/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_849/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_849/addAddV2$while/lstm_cell_849/MatMul:product:0&while/lstm_cell_849/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_849/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_849_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_849/BiasAddBiasAddwhile/lstm_cell_849/add:z:02while/lstm_cell_849/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_849/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_849/splitSplit,while/lstm_cell_849/split/split_dim:output:0$while/lstm_cell_849/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_849/SigmoidSigmoid"while/lstm_cell_849/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_1Sigmoid"while/lstm_cell_849/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mulMul!while/lstm_cell_849/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_849/ReluRelu"while/lstm_cell_849/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_1Mulwhile/lstm_cell_849/Sigmoid:y:0&while/lstm_cell_849/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/add_1AddV2while/lstm_cell_849/mul:z:0while/lstm_cell_849/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_849/Sigmoid_2Sigmoid"while/lstm_cell_849/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_849/Relu_1Reluwhile/lstm_cell_849/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_849/mul_2Mul!while/lstm_cell_849/Sigmoid_2:y:0(while/lstm_cell_849/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_849/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_849/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_849/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_849/BiasAdd/ReadVariableOp*^while/lstm_cell_849/MatMul/ReadVariableOp,^while/lstm_cell_849/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_849_biasadd_readvariableop_resource5while_lstm_cell_849_biasadd_readvariableop_resource_0"n
4while_lstm_cell_849_matmul_1_readvariableop_resource6while_lstm_cell_849_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_849_matmul_readvariableop_resource4while_lstm_cell_849_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_849/BiasAdd/ReadVariableOp*while/lstm_cell_849/BiasAdd/ReadVariableOp2V
)while/lstm_cell_849/MatMul/ReadVariableOp)while/lstm_cell_849/MatMul/ReadVariableOp2Z
+while/lstm_cell_849/MatMul_1/ReadVariableOp+while/lstm_cell_849/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_849_input;
 serving_default_lstm_849_input:0?????????=
	dense_2830
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
2dense_283/kernel
:2dense_283/bias
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
0:.	?2lstm_849/lstm_cell_849/kernel
::8	d?2'lstm_849/lstm_cell_849/recurrent_kernel
*:(?2lstm_849/lstm_cell_849/bias
0:.	d?2lstm_850/lstm_cell_850/kernel
::8	2?2'lstm_850/lstm_cell_850/recurrent_kernel
*:(?2lstm_850/lstm_cell_850/bias
/:-2(2lstm_851/lstm_cell_851/kernel
9:7
(2'lstm_851/lstm_cell_851/recurrent_kernel
):'(2lstm_851/lstm_cell_851/bias
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
2Adam/dense_283/kernel/m
!:2Adam/dense_283/bias/m
5:3	?2$Adam/lstm_849/lstm_cell_849/kernel/m
?:=	d?2.Adam/lstm_849/lstm_cell_849/recurrent_kernel/m
/:-?2"Adam/lstm_849/lstm_cell_849/bias/m
5:3	d?2$Adam/lstm_850/lstm_cell_850/kernel/m
?:=	2?2.Adam/lstm_850/lstm_cell_850/recurrent_kernel/m
/:-?2"Adam/lstm_850/lstm_cell_850/bias/m
4:22(2$Adam/lstm_851/lstm_cell_851/kernel/m
>:<
(2.Adam/lstm_851/lstm_cell_851/recurrent_kernel/m
.:,(2"Adam/lstm_851/lstm_cell_851/bias/m
':%
2Adam/dense_283/kernel/v
!:2Adam/dense_283/bias/v
5:3	?2$Adam/lstm_849/lstm_cell_849/kernel/v
?:=	d?2.Adam/lstm_849/lstm_cell_849/recurrent_kernel/v
/:-?2"Adam/lstm_849/lstm_cell_849/bias/v
5:3	d?2$Adam/lstm_850/lstm_cell_850/kernel/v
?:=	2?2.Adam/lstm_850/lstm_cell_850/recurrent_kernel/v
/:-?2"Adam/lstm_850/lstm_cell_850/bias/v
4:22(2$Adam/lstm_851/lstm_cell_851/kernel/v
>:<
(2.Adam/lstm_851/lstm_cell_851/recurrent_kernel/v
.:,(2"Adam/lstm_851/lstm_cell_851/bias/v
?2?
0__inference_sequential_283_layer_call_fn_5107370
0__inference_sequential_283_layer_call_fn_5108108
0__inference_sequential_283_layer_call_fn_5108135
0__inference_sequential_283_layer_call_fn_5107986?
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108562
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108989
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108016
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108046?
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
"__inference__wrapped_model_5105821lstm_849_input"?
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
*__inference_lstm_849_layer_call_fn_5109000
*__inference_lstm_849_layer_call_fn_5109011
*__inference_lstm_849_layer_call_fn_5109022
*__inference_lstm_849_layer_call_fn_5109033?
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109176
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109319
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109462
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109605?
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
*__inference_lstm_850_layer_call_fn_5109616
*__inference_lstm_850_layer_call_fn_5109627
*__inference_lstm_850_layer_call_fn_5109638
*__inference_lstm_850_layer_call_fn_5109649?
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5109792
E__inference_lstm_850_layer_call_and_return_conditional_losses_5109935
E__inference_lstm_850_layer_call_and_return_conditional_losses_5110078
E__inference_lstm_850_layer_call_and_return_conditional_losses_5110221?
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
*__inference_lstm_851_layer_call_fn_5110232
*__inference_lstm_851_layer_call_fn_5110243
*__inference_lstm_851_layer_call_fn_5110254
*__inference_lstm_851_layer_call_fn_5110265?
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110408
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110551
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110694
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110837?
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
+__inference_dense_283_layer_call_fn_5110846?
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
F__inference_dense_283_layer_call_and_return_conditional_losses_5110856?
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
%__inference_signature_wrapper_5108081lstm_849_input"?
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
/__inference_lstm_cell_849_layer_call_fn_5110873
/__inference_lstm_cell_849_layer_call_fn_5110890?
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5110922
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5110954?
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
/__inference_lstm_cell_850_layer_call_fn_5110971
/__inference_lstm_cell_850_layer_call_fn_5110988?
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5111020
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5111052?
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
/__inference_lstm_cell_851_layer_call_fn_5111069
/__inference_lstm_cell_851_layer_call_fn_5111086?
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5111118
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5111150?
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
"__inference__wrapped_model_5105821?()*+,-./0;?8
1?.
,?)
lstm_849_input?????????
? "5?2
0
	dense_283#? 
	dense_283??????????
F__inference_dense_283_layer_call_and_return_conditional_losses_5110856\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_283_layer_call_fn_5110846O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109176?()*O?L
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109319?()*O?L
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109462q()*??<
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
E__inference_lstm_849_layer_call_and_return_conditional_losses_5109605q()*??<
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
*__inference_lstm_849_layer_call_fn_5109000}()*O?L
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
*__inference_lstm_849_layer_call_fn_5109011}()*O?L
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
*__inference_lstm_849_layer_call_fn_5109022d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_849_layer_call_fn_5109033d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_850_layer_call_and_return_conditional_losses_5109792?+,-O?L
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5109935?+,-O?L
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5110078q+,-??<
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
E__inference_lstm_850_layer_call_and_return_conditional_losses_5110221q+,-??<
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
*__inference_lstm_850_layer_call_fn_5109616}+,-O?L
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
*__inference_lstm_850_layer_call_fn_5109627}+,-O?L
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
*__inference_lstm_850_layer_call_fn_5109638d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_850_layer_call_fn_5109649d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110408}./0O?L
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110551}./0O?L
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110694m./0??<
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
E__inference_lstm_851_layer_call_and_return_conditional_losses_5110837m./0??<
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
*__inference_lstm_851_layer_call_fn_5110232p./0O?L
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
*__inference_lstm_851_layer_call_fn_5110243p./0O?L
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
*__inference_lstm_851_layer_call_fn_5110254`./0??<
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
*__inference_lstm_851_layer_call_fn_5110265`./0??<
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5110922?()*??}
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
J__inference_lstm_cell_849_layer_call_and_return_conditional_losses_5110954?()*??}
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
/__inference_lstm_cell_849_layer_call_fn_5110873?()*??}
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
/__inference_lstm_cell_849_layer_call_fn_5110890?()*??}
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5111020?+,-??}
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
J__inference_lstm_cell_850_layer_call_and_return_conditional_losses_5111052?+,-??}
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
/__inference_lstm_cell_850_layer_call_fn_5110971?+,-??}
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
/__inference_lstm_cell_850_layer_call_fn_5110988?+,-??}
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5111118?./0??}
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
J__inference_lstm_cell_851_layer_call_and_return_conditional_losses_5111150?./0??}
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
/__inference_lstm_cell_851_layer_call_fn_5111069?./0??}
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
/__inference_lstm_cell_851_layer_call_fn_5111086?./0??}
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108016y()*+,-./0C?@
9?6
,?)
lstm_849_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108046y()*+,-./0C?@
9?6
,?)
lstm_849_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108562q()*+,-./0;?8
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
K__inference_sequential_283_layer_call_and_return_conditional_losses_5108989q()*+,-./0;?8
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
0__inference_sequential_283_layer_call_fn_5107370l()*+,-./0C?@
9?6
,?)
lstm_849_input?????????
p 

 
? "???????????
0__inference_sequential_283_layer_call_fn_5107986l()*+,-./0C?@
9?6
,?)
lstm_849_input?????????
p

 
? "???????????
0__inference_sequential_283_layer_call_fn_5108108d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_283_layer_call_fn_5108135d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5108081?()*+,-./0M?J
? 
C?@
>
lstm_849_input,?)
lstm_849_input?????????"5?2
0
	dense_283#? 
	dense_283?????????