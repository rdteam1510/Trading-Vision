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
dense_284/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_284/kernel
u
$dense_284/kernel/Read/ReadVariableOpReadVariableOpdense_284/kernel*
_output_shapes

:
*
dtype0
t
dense_284/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_284/bias
m
"dense_284/bias/Read/ReadVariableOpReadVariableOpdense_284/bias*
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
lstm_852/lstm_cell_852/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_852/lstm_cell_852/kernel
?
1lstm_852/lstm_cell_852/kernel/Read/ReadVariableOpReadVariableOplstm_852/lstm_cell_852/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_852/lstm_cell_852/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_852/lstm_cell_852/recurrent_kernel
?
;lstm_852/lstm_cell_852/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_852/lstm_cell_852/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_852/lstm_cell_852/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_852/lstm_cell_852/bias
?
/lstm_852/lstm_cell_852/bias/Read/ReadVariableOpReadVariableOplstm_852/lstm_cell_852/bias*
_output_shapes	
:?*
dtype0
?
lstm_853/lstm_cell_853/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_853/lstm_cell_853/kernel
?
1lstm_853/lstm_cell_853/kernel/Read/ReadVariableOpReadVariableOplstm_853/lstm_cell_853/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_853/lstm_cell_853/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_853/lstm_cell_853/recurrent_kernel
?
;lstm_853/lstm_cell_853/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_853/lstm_cell_853/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_853/lstm_cell_853/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_853/lstm_cell_853/bias
?
/lstm_853/lstm_cell_853/bias/Read/ReadVariableOpReadVariableOplstm_853/lstm_cell_853/bias*
_output_shapes	
:?*
dtype0
?
lstm_854/lstm_cell_854/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_854/lstm_cell_854/kernel
?
1lstm_854/lstm_cell_854/kernel/Read/ReadVariableOpReadVariableOplstm_854/lstm_cell_854/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_854/lstm_cell_854/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_854/lstm_cell_854/recurrent_kernel
?
;lstm_854/lstm_cell_854/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_854/lstm_cell_854/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_854/lstm_cell_854/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_854/lstm_cell_854/bias
?
/lstm_854/lstm_cell_854/bias/Read/ReadVariableOpReadVariableOplstm_854/lstm_cell_854/bias*
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
Adam/dense_284/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_284/kernel/m
?
+Adam/dense_284/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_284/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_284/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_284/bias/m
{
)Adam/dense_284/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_284/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_852/lstm_cell_852/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_852/lstm_cell_852/kernel/m
?
8Adam/lstm_852/lstm_cell_852/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_852/lstm_cell_852/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_852/lstm_cell_852/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_852/lstm_cell_852/recurrent_kernel/m
?
BAdam/lstm_852/lstm_cell_852/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_852/lstm_cell_852/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_852/lstm_cell_852/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_852/lstm_cell_852/bias/m
?
6Adam/lstm_852/lstm_cell_852/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_852/lstm_cell_852/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_853/lstm_cell_853/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_853/lstm_cell_853/kernel/m
?
8Adam/lstm_853/lstm_cell_853/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_853/lstm_cell_853/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_853/lstm_cell_853/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_853/lstm_cell_853/recurrent_kernel/m
?
BAdam/lstm_853/lstm_cell_853/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_853/lstm_cell_853/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_853/lstm_cell_853/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_853/lstm_cell_853/bias/m
?
6Adam/lstm_853/lstm_cell_853/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_853/lstm_cell_853/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_854/lstm_cell_854/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_854/lstm_cell_854/kernel/m
?
8Adam/lstm_854/lstm_cell_854/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_854/lstm_cell_854/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_854/lstm_cell_854/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_854/lstm_cell_854/recurrent_kernel/m
?
BAdam/lstm_854/lstm_cell_854/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_854/lstm_cell_854/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_854/lstm_cell_854/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_854/lstm_cell_854/bias/m
?
6Adam/lstm_854/lstm_cell_854/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_854/lstm_cell_854/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_284/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_284/kernel/v
?
+Adam/dense_284/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_284/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_284/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_284/bias/v
{
)Adam/dense_284/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_284/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_852/lstm_cell_852/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_852/lstm_cell_852/kernel/v
?
8Adam/lstm_852/lstm_cell_852/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_852/lstm_cell_852/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_852/lstm_cell_852/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_852/lstm_cell_852/recurrent_kernel/v
?
BAdam/lstm_852/lstm_cell_852/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_852/lstm_cell_852/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_852/lstm_cell_852/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_852/lstm_cell_852/bias/v
?
6Adam/lstm_852/lstm_cell_852/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_852/lstm_cell_852/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_853/lstm_cell_853/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_853/lstm_cell_853/kernel/v
?
8Adam/lstm_853/lstm_cell_853/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_853/lstm_cell_853/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_853/lstm_cell_853/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_853/lstm_cell_853/recurrent_kernel/v
?
BAdam/lstm_853/lstm_cell_853/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_853/lstm_cell_853/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_853/lstm_cell_853/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_853/lstm_cell_853/bias/v
?
6Adam/lstm_853/lstm_cell_853/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_853/lstm_cell_853/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_854/lstm_cell_854/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_854/lstm_cell_854/kernel/v
?
8Adam/lstm_854/lstm_cell_854/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_854/lstm_cell_854/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_854/lstm_cell_854/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_854/lstm_cell_854/recurrent_kernel/v
?
BAdam/lstm_854/lstm_cell_854/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_854/lstm_cell_854/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_854/lstm_cell_854/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_854/lstm_cell_854/bias/v
?
6Adam/lstm_854/lstm_cell_854/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_854/lstm_cell_854/bias/v*
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
VARIABLE_VALUEdense_284/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_284/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_852/lstm_cell_852/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_852/lstm_cell_852/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_852/lstm_cell_852/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_853/lstm_cell_853/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_853/lstm_cell_853/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_853/lstm_cell_853/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_854/lstm_cell_854/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_854/lstm_cell_854/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_854/lstm_cell_854/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_284/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_284/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_852/lstm_cell_852/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_852/lstm_cell_852/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_852/lstm_cell_852/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_853/lstm_cell_853/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_853/lstm_cell_853/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_853/lstm_cell_853/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_854/lstm_cell_854/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_854/lstm_cell_854/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_854/lstm_cell_854/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_284/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_284/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_852/lstm_cell_852/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_852/lstm_cell_852/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_852/lstm_cell_852/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_853/lstm_cell_853/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_853/lstm_cell_853/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_853/lstm_cell_853/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_854/lstm_cell_854/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_854/lstm_cell_854/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_854/lstm_cell_854/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_852_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_852_inputlstm_852/lstm_cell_852/kernel'lstm_852/lstm_cell_852/recurrent_kernellstm_852/lstm_cell_852/biaslstm_853/lstm_cell_853/kernel'lstm_853/lstm_cell_853/recurrent_kernellstm_853/lstm_cell_853/biaslstm_854/lstm_cell_854/kernel'lstm_854/lstm_cell_854/recurrent_kernellstm_854/lstm_cell_854/biasdense_284/kerneldense_284/bias*
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
%__inference_signature_wrapper_5120223
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_284/kernel/Read/ReadVariableOp"dense_284/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_852/lstm_cell_852/kernel/Read/ReadVariableOp;lstm_852/lstm_cell_852/recurrent_kernel/Read/ReadVariableOp/lstm_852/lstm_cell_852/bias/Read/ReadVariableOp1lstm_853/lstm_cell_853/kernel/Read/ReadVariableOp;lstm_853/lstm_cell_853/recurrent_kernel/Read/ReadVariableOp/lstm_853/lstm_cell_853/bias/Read/ReadVariableOp1lstm_854/lstm_cell_854/kernel/Read/ReadVariableOp;lstm_854/lstm_cell_854/recurrent_kernel/Read/ReadVariableOp/lstm_854/lstm_cell_854/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_284/kernel/m/Read/ReadVariableOp)Adam/dense_284/bias/m/Read/ReadVariableOp8Adam/lstm_852/lstm_cell_852/kernel/m/Read/ReadVariableOpBAdam/lstm_852/lstm_cell_852/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_852/lstm_cell_852/bias/m/Read/ReadVariableOp8Adam/lstm_853/lstm_cell_853/kernel/m/Read/ReadVariableOpBAdam/lstm_853/lstm_cell_853/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_853/lstm_cell_853/bias/m/Read/ReadVariableOp8Adam/lstm_854/lstm_cell_854/kernel/m/Read/ReadVariableOpBAdam/lstm_854/lstm_cell_854/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_854/lstm_cell_854/bias/m/Read/ReadVariableOp+Adam/dense_284/kernel/v/Read/ReadVariableOp)Adam/dense_284/bias/v/Read/ReadVariableOp8Adam/lstm_852/lstm_cell_852/kernel/v/Read/ReadVariableOpBAdam/lstm_852/lstm_cell_852/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_852/lstm_cell_852/bias/v/Read/ReadVariableOp8Adam/lstm_853/lstm_cell_853/kernel/v/Read/ReadVariableOpBAdam/lstm_853/lstm_cell_853/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_853/lstm_cell_853/bias/v/Read/ReadVariableOp8Adam/lstm_854/lstm_cell_854/kernel/v/Read/ReadVariableOpBAdam/lstm_854/lstm_cell_854/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_854/lstm_cell_854/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5123435
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_284/kerneldense_284/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_852/lstm_cell_852/kernel'lstm_852/lstm_cell_852/recurrent_kernellstm_852/lstm_cell_852/biaslstm_853/lstm_cell_853/kernel'lstm_853/lstm_cell_853/recurrent_kernellstm_853/lstm_cell_853/biaslstm_854/lstm_cell_854/kernel'lstm_854/lstm_cell_854/recurrent_kernellstm_854/lstm_cell_854/biastotalcountAdam/dense_284/kernel/mAdam/dense_284/bias/m$Adam/lstm_852/lstm_cell_852/kernel/m.Adam/lstm_852/lstm_cell_852/recurrent_kernel/m"Adam/lstm_852/lstm_cell_852/bias/m$Adam/lstm_853/lstm_cell_853/kernel/m.Adam/lstm_853/lstm_cell_853/recurrent_kernel/m"Adam/lstm_853/lstm_cell_853/bias/m$Adam/lstm_854/lstm_cell_854/kernel/m.Adam/lstm_854/lstm_cell_854/recurrent_kernel/m"Adam/lstm_854/lstm_cell_854/bias/mAdam/dense_284/kernel/vAdam/dense_284/bias/v$Adam/lstm_852/lstm_cell_852/kernel/v.Adam/lstm_852/lstm_cell_852/recurrent_kernel/v"Adam/lstm_852/lstm_cell_852/bias/v$Adam/lstm_853/lstm_cell_853/kernel/v.Adam/lstm_853/lstm_cell_853/recurrent_kernel/v"Adam/lstm_853/lstm_cell_853/bias/v$Adam/lstm_854/lstm_cell_854/kernel/v.Adam/lstm_854/lstm_cell_854/recurrent_kernel/v"Adam/lstm_854/lstm_cell_854/bias/v*4
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
#__inference__traced_restore_5123565??+
?

?
0__inference_sequential_284_layer_call_fn_5120250

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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5119487o
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118380

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
while_cond_5121233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5121233___redundant_placeholder05
1while_while_cond_5121233___redundant_placeholder15
1while_while_cond_5121233___redundant_placeholder25
1while_while_cond_5121233___redundant_placeholder3
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
while_cond_5118393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5118393___redundant_placeholder05
1while_while_cond_5118393___redundant_placeholder15
1while_while_cond_5118393___redundant_placeholder25
1while_while_cond_5118393___redundant_placeholder3
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
while_cond_5118234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5118234___redundant_placeholder05
1while_while_cond_5118234___redundant_placeholder15
1while_while_cond_5118234___redundant_placeholder25
1while_while_cond_5118234___redundant_placeholder3
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
*sequential_284_lstm_852_while_body_5117595L
Hsequential_284_lstm_852_while_sequential_284_lstm_852_while_loop_counterR
Nsequential_284_lstm_852_while_sequential_284_lstm_852_while_maximum_iterations-
)sequential_284_lstm_852_while_placeholder/
+sequential_284_lstm_852_while_placeholder_1/
+sequential_284_lstm_852_while_placeholder_2/
+sequential_284_lstm_852_while_placeholder_3K
Gsequential_284_lstm_852_while_sequential_284_lstm_852_strided_slice_1_0?
?sequential_284_lstm_852_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_852_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_284_lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0:	?a
Nsequential_284_lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?\
Msequential_284_lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0:	?*
&sequential_284_lstm_852_while_identity,
(sequential_284_lstm_852_while_identity_1,
(sequential_284_lstm_852_while_identity_2,
(sequential_284_lstm_852_while_identity_3,
(sequential_284_lstm_852_while_identity_4,
(sequential_284_lstm_852_while_identity_5I
Esequential_284_lstm_852_while_sequential_284_lstm_852_strided_slice_1?
?sequential_284_lstm_852_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_852_tensorarrayunstack_tensorlistfromtensor]
Jsequential_284_lstm_852_while_lstm_cell_852_matmul_readvariableop_resource:	?_
Lsequential_284_lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource:	d?Z
Ksequential_284_lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource:	???Bsequential_284/lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp?Asequential_284/lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp?Csequential_284/lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp?
Osequential_284/lstm_852/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_284/lstm_852/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_284_lstm_852_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_852_tensorarrayunstack_tensorlistfromtensor_0)sequential_284_lstm_852_while_placeholderXsequential_284/lstm_852/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_284/lstm_852/while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOpLsequential_284_lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_284/lstm_852/while/lstm_cell_852/MatMulMatMulHsequential_284/lstm_852/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_284/lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_284/lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOpNsequential_284_lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_284/lstm_852/while/lstm_cell_852/MatMul_1MatMul+sequential_284_lstm_852_while_placeholder_2Ksequential_284/lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_284/lstm_852/while/lstm_cell_852/addAddV2<sequential_284/lstm_852/while/lstm_cell_852/MatMul:product:0>sequential_284/lstm_852/while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_284/lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOpMsequential_284_lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_284/lstm_852/while/lstm_cell_852/BiasAddBiasAdd3sequential_284/lstm_852/while/lstm_cell_852/add:z:0Jsequential_284/lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_284/lstm_852/while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_284/lstm_852/while/lstm_cell_852/splitSplitDsequential_284/lstm_852/while/lstm_cell_852/split/split_dim:output:0<sequential_284/lstm_852/while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_284/lstm_852/while/lstm_cell_852/SigmoidSigmoid:sequential_284/lstm_852/while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_284/lstm_852/while/lstm_cell_852/Sigmoid_1Sigmoid:sequential_284/lstm_852/while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_284/lstm_852/while/lstm_cell_852/mulMul9sequential_284/lstm_852/while/lstm_cell_852/Sigmoid_1:y:0+sequential_284_lstm_852_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_284/lstm_852/while/lstm_cell_852/ReluRelu:sequential_284/lstm_852/while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_284/lstm_852/while/lstm_cell_852/mul_1Mul7sequential_284/lstm_852/while/lstm_cell_852/Sigmoid:y:0>sequential_284/lstm_852/while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_284/lstm_852/while/lstm_cell_852/add_1AddV23sequential_284/lstm_852/while/lstm_cell_852/mul:z:05sequential_284/lstm_852/while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_284/lstm_852/while/lstm_cell_852/Sigmoid_2Sigmoid:sequential_284/lstm_852/while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_284/lstm_852/while/lstm_cell_852/Relu_1Relu5sequential_284/lstm_852/while/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_284/lstm_852/while/lstm_cell_852/mul_2Mul9sequential_284/lstm_852/while/lstm_cell_852/Sigmoid_2:y:0@sequential_284/lstm_852/while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_284/lstm_852/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_284_lstm_852_while_placeholder_1)sequential_284_lstm_852_while_placeholder5sequential_284/lstm_852/while/lstm_cell_852/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_284/lstm_852/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_284/lstm_852/while/addAddV2)sequential_284_lstm_852_while_placeholder,sequential_284/lstm_852/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_284/lstm_852/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_284/lstm_852/while/add_1AddV2Hsequential_284_lstm_852_while_sequential_284_lstm_852_while_loop_counter.sequential_284/lstm_852/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_284/lstm_852/while/IdentityIdentity'sequential_284/lstm_852/while/add_1:z:0#^sequential_284/lstm_852/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_852/while/Identity_1IdentityNsequential_284_lstm_852_while_sequential_284_lstm_852_while_maximum_iterations#^sequential_284/lstm_852/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_852/while/Identity_2Identity%sequential_284/lstm_852/while/add:z:0#^sequential_284/lstm_852/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_852/while/Identity_3IdentityRsequential_284/lstm_852/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_284/lstm_852/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_852/while/Identity_4Identity5sequential_284/lstm_852/while/lstm_cell_852/mul_2:z:0#^sequential_284/lstm_852/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_284/lstm_852/while/Identity_5Identity5sequential_284/lstm_852/while/lstm_cell_852/add_1:z:0#^sequential_284/lstm_852/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_284/lstm_852/while/NoOpNoOpC^sequential_284/lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOpB^sequential_284/lstm_852/while/lstm_cell_852/MatMul/ReadVariableOpD^sequential_284/lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_284_lstm_852_while_identity/sequential_284/lstm_852/while/Identity:output:0"]
(sequential_284_lstm_852_while_identity_11sequential_284/lstm_852/while/Identity_1:output:0"]
(sequential_284_lstm_852_while_identity_21sequential_284/lstm_852/while/Identity_2:output:0"]
(sequential_284_lstm_852_while_identity_31sequential_284/lstm_852/while/Identity_3:output:0"]
(sequential_284_lstm_852_while_identity_41sequential_284/lstm_852/while/Identity_4:output:0"]
(sequential_284_lstm_852_while_identity_51sequential_284/lstm_852/while/Identity_5:output:0"?
Ksequential_284_lstm_852_while_lstm_cell_852_biasadd_readvariableop_resourceMsequential_284_lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0"?
Lsequential_284_lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resourceNsequential_284_lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0"?
Jsequential_284_lstm_852_while_lstm_cell_852_matmul_readvariableop_resourceLsequential_284_lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0"?
Esequential_284_lstm_852_while_sequential_284_lstm_852_strided_slice_1Gsequential_284_lstm_852_while_sequential_284_lstm_852_strided_slice_1_0"?
?sequential_284_lstm_852_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_852_tensorarrayunstack_tensorlistfromtensor?sequential_284_lstm_852_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_852_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_284/lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOpBsequential_284/lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp2?
Asequential_284/lstm_852/while/lstm_cell_852/MatMul/ReadVariableOpAsequential_284/lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp2?
Csequential_284/lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOpCsequential_284/lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5120008

inputs?
,lstm_cell_852_matmul_readvariableop_resource:	?A
.lstm_cell_852_matmul_1_readvariableop_resource:	d?<
-lstm_cell_852_biasadd_readvariableop_resource:	?
identity??$lstm_cell_852/BiasAdd/ReadVariableOp?#lstm_cell_852/MatMul/ReadVariableOp?%lstm_cell_852/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_852/MatMul/ReadVariableOpReadVariableOp,lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_852/MatMulMatMulstrided_slice_2:output:0+lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_852/MatMul_1MatMulzeros:output:0-lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_852/addAddV2lstm_cell_852/MatMul:product:0 lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_852/BiasAddBiasAddlstm_cell_852/add:z:0,lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_852/splitSplit&lstm_cell_852/split/split_dim:output:0lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_852/SigmoidSigmoidlstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_1Sigmoidlstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_852/mulMullstm_cell_852/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_852/ReluRelulstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_1Mullstm_cell_852/Sigmoid:y:0 lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_852/add_1AddV2lstm_cell_852/mul:z:0lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_2Sigmoidlstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_852/Relu_1Relulstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_2Mullstm_cell_852/Sigmoid_2:y:0"lstm_cell_852/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_852_matmul_readvariableop_resource.lstm_cell_852_matmul_1_readvariableop_resource-lstm_cell_852_biasadd_readvariableop_resource*
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
while_body_5119924*
condR
while_cond_5119923*K
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
NoOpNoOp%^lstm_cell_852/BiasAdd/ReadVariableOp$^lstm_cell_852/MatMul/ReadVariableOp&^lstm_cell_852/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_852/BiasAdd/ReadVariableOp$lstm_cell_852/BiasAdd/ReadVariableOp2J
#lstm_cell_852/MatMul/ReadVariableOp#lstm_cell_852/MatMul/ReadVariableOp2N
%lstm_cell_852/MatMul_1/ReadVariableOp%lstm_cell_852/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5119924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_852_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_852_matmul_readvariableop_resource:	?G
4while_lstm_cell_852_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_852_biasadd_readvariableop_resource:	???*while/lstm_cell_852/BiasAdd/ReadVariableOp?)while/lstm_cell_852/MatMul/ReadVariableOp?+while/lstm_cell_852/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_852/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_852/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_852/addAddV2$while/lstm_cell_852/MatMul:product:0&while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_852/BiasAddBiasAddwhile/lstm_cell_852/add:z:02while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_852/splitSplit,while/lstm_cell_852/split/split_dim:output:0$while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_852/SigmoidSigmoid"while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_1Sigmoid"while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mulMul!while/lstm_cell_852/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_852/ReluRelu"while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_1Mulwhile/lstm_cell_852/Sigmoid:y:0&while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/add_1AddV2while/lstm_cell_852/mul:z:0while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_2Sigmoid"while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_852/Relu_1Reluwhile/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_2Mul!while/lstm_cell_852/Sigmoid_2:y:0(while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_852/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_852/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_852/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_852/BiasAdd/ReadVariableOp*^while/lstm_cell_852/MatMul/ReadVariableOp,^while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_852_biasadd_readvariableop_resource5while_lstm_cell_852_biasadd_readvariableop_resource_0"n
4while_lstm_cell_852_matmul_1_readvariableop_resource6while_lstm_cell_852_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_852_matmul_readvariableop_resource4while_lstm_cell_852_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_852/BiasAdd/ReadVariableOp*while/lstm_cell_852/BiasAdd/ReadVariableOp2V
)while/lstm_cell_852/MatMul/ReadVariableOp)while/lstm_cell_852/MatMul/ReadVariableOp2Z
+while/lstm_cell_852/MatMul_1/ReadVariableOp+while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5118813

inputs'
lstm_cell_854_5118731:2('
lstm_cell_854_5118733:
(#
lstm_cell_854_5118735:(
identity??%lstm_cell_854/StatefulPartitionedCall?while;
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
%lstm_cell_854/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_854_5118731lstm_cell_854_5118733lstm_cell_854_5118735*
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118730n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_854_5118731lstm_cell_854_5118733lstm_cell_854_5118735*
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
while_body_5118744*
condR
while_cond_5118743*K
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
NoOpNoOp&^lstm_cell_854/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_854/StatefulPartitionedCall%lstm_cell_854/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_5122135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5122135___redundant_placeholder05
1while_while_cond_5122135___redundant_placeholder15
1while_while_cond_5122135___redundant_placeholder25
1while_while_cond_5122135___redundant_placeholder3
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121461
inputs_0?
,lstm_cell_852_matmul_readvariableop_resource:	?A
.lstm_cell_852_matmul_1_readvariableop_resource:	d?<
-lstm_cell_852_biasadd_readvariableop_resource:	?
identity??$lstm_cell_852/BiasAdd/ReadVariableOp?#lstm_cell_852/MatMul/ReadVariableOp?%lstm_cell_852/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_852/MatMul/ReadVariableOpReadVariableOp,lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_852/MatMulMatMulstrided_slice_2:output:0+lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_852/MatMul_1MatMulzeros:output:0-lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_852/addAddV2lstm_cell_852/MatMul:product:0 lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_852/BiasAddBiasAddlstm_cell_852/add:z:0,lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_852/splitSplit&lstm_cell_852/split/split_dim:output:0lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_852/SigmoidSigmoidlstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_1Sigmoidlstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_852/mulMullstm_cell_852/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_852/ReluRelulstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_1Mullstm_cell_852/Sigmoid:y:0 lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_852/add_1AddV2lstm_cell_852/mul:z:0lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_2Sigmoidlstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_852/Relu_1Relulstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_2Mullstm_cell_852/Sigmoid_2:y:0"lstm_cell_852/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_852_matmul_readvariableop_resource.lstm_cell_852_matmul_1_readvariableop_resource-lstm_cell_852_biasadd_readvariableop_resource*
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
while_body_5121377*
condR
while_cond_5121376*K
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
NoOpNoOp%^lstm_cell_852/BiasAdd/ReadVariableOp$^lstm_cell_852/MatMul/ReadVariableOp&^lstm_cell_852/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_852/BiasAdd/ReadVariableOp$lstm_cell_852/BiasAdd/ReadVariableOp2J
#lstm_cell_852/MatMul/ReadVariableOp#lstm_cell_852/MatMul/ReadVariableOp2N
%lstm_cell_852/MatMul_1/ReadVariableOp%lstm_cell_852/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5121849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5121849___redundant_placeholder05
1while_while_cond_5121849___redundant_placeholder15
1while_while_cond_5121849___redundant_placeholder25
1while_while_cond_5121849___redundant_placeholder3
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

lstm_852_while_body_5120336.
*lstm_852_while_lstm_852_while_loop_counter4
0lstm_852_while_lstm_852_while_maximum_iterations
lstm_852_while_placeholder 
lstm_852_while_placeholder_1 
lstm_852_while_placeholder_2 
lstm_852_while_placeholder_3-
)lstm_852_while_lstm_852_strided_slice_1_0i
elstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0:	?R
?lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?M
>lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
lstm_852_while_identity
lstm_852_while_identity_1
lstm_852_while_identity_2
lstm_852_while_identity_3
lstm_852_while_identity_4
lstm_852_while_identity_5+
'lstm_852_while_lstm_852_strided_slice_1g
clstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensorN
;lstm_852_while_lstm_cell_852_matmul_readvariableop_resource:	?P
=lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource:	d?K
<lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource:	???3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp?2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp?4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp?
@lstm_852/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_852/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensor_0lstm_852_while_placeholderIlstm_852/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp=lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_852/while/lstm_cell_852/MatMulMatMul9lstm_852/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp?lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_852/while/lstm_cell_852/MatMul_1MatMullstm_852_while_placeholder_2<lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_852/while/lstm_cell_852/addAddV2-lstm_852/while/lstm_cell_852/MatMul:product:0/lstm_852/while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp>lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_852/while/lstm_cell_852/BiasAddBiasAdd$lstm_852/while/lstm_cell_852/add:z:0;lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_852/while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_852/while/lstm_cell_852/splitSplit5lstm_852/while/lstm_cell_852/split/split_dim:output:0-lstm_852/while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_852/while/lstm_cell_852/SigmoidSigmoid+lstm_852/while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_852/while/lstm_cell_852/Sigmoid_1Sigmoid+lstm_852/while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_852/while/lstm_cell_852/mulMul*lstm_852/while/lstm_cell_852/Sigmoid_1:y:0lstm_852_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_852/while/lstm_cell_852/ReluRelu+lstm_852/while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_852/while/lstm_cell_852/mul_1Mul(lstm_852/while/lstm_cell_852/Sigmoid:y:0/lstm_852/while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_852/while/lstm_cell_852/add_1AddV2$lstm_852/while/lstm_cell_852/mul:z:0&lstm_852/while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_852/while/lstm_cell_852/Sigmoid_2Sigmoid+lstm_852/while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_852/while/lstm_cell_852/Relu_1Relu&lstm_852/while/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_852/while/lstm_cell_852/mul_2Mul*lstm_852/while/lstm_cell_852/Sigmoid_2:y:01lstm_852/while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_852/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_852_while_placeholder_1lstm_852_while_placeholder&lstm_852/while/lstm_cell_852/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_852/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_852/while/addAddV2lstm_852_while_placeholderlstm_852/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_852/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_852/while/add_1AddV2*lstm_852_while_lstm_852_while_loop_counterlstm_852/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_852/while/IdentityIdentitylstm_852/while/add_1:z:0^lstm_852/while/NoOp*
T0*
_output_shapes
: ?
lstm_852/while/Identity_1Identity0lstm_852_while_lstm_852_while_maximum_iterations^lstm_852/while/NoOp*
T0*
_output_shapes
: t
lstm_852/while/Identity_2Identitylstm_852/while/add:z:0^lstm_852/while/NoOp*
T0*
_output_shapes
: ?
lstm_852/while/Identity_3IdentityClstm_852/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_852/while/NoOp*
T0*
_output_shapes
: ?
lstm_852/while/Identity_4Identity&lstm_852/while/lstm_cell_852/mul_2:z:0^lstm_852/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_852/while/Identity_5Identity&lstm_852/while/lstm_cell_852/add_1:z:0^lstm_852/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_852/while/NoOpNoOp4^lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp3^lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp5^lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_852_while_identity lstm_852/while/Identity:output:0"?
lstm_852_while_identity_1"lstm_852/while/Identity_1:output:0"?
lstm_852_while_identity_2"lstm_852/while/Identity_2:output:0"?
lstm_852_while_identity_3"lstm_852/while/Identity_3:output:0"?
lstm_852_while_identity_4"lstm_852/while/Identity_4:output:0"?
lstm_852_while_identity_5"lstm_852/while/Identity_5:output:0"T
'lstm_852_while_lstm_852_strided_slice_1)lstm_852_while_lstm_852_strided_slice_1_0"~
<lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource>lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0"?
=lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource?lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0"|
;lstm_852_while_lstm_cell_852_matmul_readvariableop_resource=lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0"?
clstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensorelstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp2h
2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp2l
4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5122609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_854_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_854_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_854_matmul_readvariableop_resource:2(F
4while_lstm_cell_854_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_854_biasadd_readvariableop_resource:(??*while/lstm_cell_854/BiasAdd/ReadVariableOp?)while/lstm_cell_854/MatMul/ReadVariableOp?+while/lstm_cell_854/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_854/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_854/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_854/addAddV2$while/lstm_cell_854/MatMul:product:0&while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_854/BiasAddBiasAddwhile/lstm_cell_854/add:z:02while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_854/splitSplit,while/lstm_cell_854/split/split_dim:output:0$while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_854/SigmoidSigmoid"while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_1Sigmoid"while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mulMul!while/lstm_cell_854/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_854/ReluRelu"while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_1Mulwhile/lstm_cell_854/Sigmoid:y:0&while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/add_1AddV2while/lstm_cell_854/mul:z:0while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_2Sigmoid"while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_854/Relu_1Reluwhile/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_2Mul!while/lstm_cell_854/Sigmoid_2:y:0(while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_854/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_854/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_854/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_854/BiasAdd/ReadVariableOp*^while/lstm_cell_854/MatMul/ReadVariableOp,^while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_854_biasadd_readvariableop_resource5while_lstm_cell_854_biasadd_readvariableop_resource_0"n
4while_lstm_cell_854_matmul_1_readvariableop_resource6while_lstm_cell_854_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_854_matmul_readvariableop_resource4while_lstm_cell_854_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_854/BiasAdd/ReadVariableOp*while/lstm_cell_854/BiasAdd/ReadVariableOp2V
)while/lstm_cell_854/MatMul/ReadVariableOp)while/lstm_cell_854/MatMul/ReadVariableOp2Z
+while/lstm_cell_854/MatMul_1/ReadVariableOp+while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5119594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_854_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_854_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_854_matmul_readvariableop_resource:2(F
4while_lstm_cell_854_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_854_biasadd_readvariableop_resource:(??*while/lstm_cell_854/BiasAdd/ReadVariableOp?)while/lstm_cell_854/MatMul/ReadVariableOp?+while/lstm_cell_854/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_854/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_854/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_854/addAddV2$while/lstm_cell_854/MatMul:product:0&while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_854/BiasAddBiasAddwhile/lstm_cell_854/add:z:02while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_854/splitSplit,while/lstm_cell_854/split/split_dim:output:0$while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_854/SigmoidSigmoid"while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_1Sigmoid"while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mulMul!while/lstm_cell_854/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_854/ReluRelu"while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_1Mulwhile/lstm_cell_854/Sigmoid:y:0&while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/add_1AddV2while/lstm_cell_854/mul:z:0while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_2Sigmoid"while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_854/Relu_1Reluwhile/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_2Mul!while/lstm_cell_854/Sigmoid_2:y:0(while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_854/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_854/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_854/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_854/BiasAdd/ReadVariableOp*^while/lstm_cell_854/MatMul/ReadVariableOp,^while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_854_biasadd_readvariableop_resource5while_lstm_cell_854_biasadd_readvariableop_resource_0"n
4while_lstm_cell_854_matmul_1_readvariableop_resource6while_lstm_cell_854_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_854_matmul_readvariableop_resource4while_lstm_cell_854_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_854/BiasAdd/ReadVariableOp*while/lstm_cell_854/BiasAdd/ReadVariableOp2V
)while/lstm_cell_854/MatMul/ReadVariableOp)while/lstm_cell_854/MatMul/ReadVariableOp2Z
+while/lstm_cell_854/MatMul_1/ReadVariableOp+while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5121934
inputs_0?
,lstm_cell_853_matmul_readvariableop_resource:	d?A
.lstm_cell_853_matmul_1_readvariableop_resource:	2?<
-lstm_cell_853_biasadd_readvariableop_resource:	?
identity??$lstm_cell_853/BiasAdd/ReadVariableOp?#lstm_cell_853/MatMul/ReadVariableOp?%lstm_cell_853/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_853/MatMul/ReadVariableOpReadVariableOp,lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_853/MatMulMatMulstrided_slice_2:output:0+lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_853/MatMul_1MatMulzeros:output:0-lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_853/addAddV2lstm_cell_853/MatMul:product:0 lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_853/BiasAddBiasAddlstm_cell_853/add:z:0,lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_853/splitSplit&lstm_cell_853/split/split_dim:output:0lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_853/SigmoidSigmoidlstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_1Sigmoidlstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_853/mulMullstm_cell_853/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_853/ReluRelulstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_1Mullstm_cell_853/Sigmoid:y:0 lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_853/add_1AddV2lstm_cell_853/mul:z:0lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_2Sigmoidlstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_853/Relu_1Relulstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_2Mullstm_cell_853/Sigmoid_2:y:0"lstm_cell_853/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_853_matmul_readvariableop_resource.lstm_cell_853_matmul_1_readvariableop_resource-lstm_cell_853_biasadd_readvariableop_resource*
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
while_body_5121850*
condR
while_cond_5121849*K
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
NoOpNoOp%^lstm_cell_853/BiasAdd/ReadVariableOp$^lstm_cell_853/MatMul/ReadVariableOp&^lstm_cell_853/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_853/BiasAdd/ReadVariableOp$lstm_cell_853/BiasAdd/ReadVariableOp2J
#lstm_cell_853/MatMul/ReadVariableOp#lstm_cell_853/MatMul/ReadVariableOp2N
%lstm_cell_853/MatMul_1/ReadVariableOp%lstm_cell_853/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121747

inputs?
,lstm_cell_852_matmul_readvariableop_resource:	?A
.lstm_cell_852_matmul_1_readvariableop_resource:	d?<
-lstm_cell_852_biasadd_readvariableop_resource:	?
identity??$lstm_cell_852/BiasAdd/ReadVariableOp?#lstm_cell_852/MatMul/ReadVariableOp?%lstm_cell_852/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_852/MatMul/ReadVariableOpReadVariableOp,lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_852/MatMulMatMulstrided_slice_2:output:0+lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_852/MatMul_1MatMulzeros:output:0-lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_852/addAddV2lstm_cell_852/MatMul:product:0 lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_852/BiasAddBiasAddlstm_cell_852/add:z:0,lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_852/splitSplit&lstm_cell_852/split/split_dim:output:0lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_852/SigmoidSigmoidlstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_1Sigmoidlstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_852/mulMullstm_cell_852/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_852/ReluRelulstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_1Mullstm_cell_852/Sigmoid:y:0 lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_852/add_1AddV2lstm_cell_852/mul:z:0lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_2Sigmoidlstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_852/Relu_1Relulstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_2Mullstm_cell_852/Sigmoid_2:y:0"lstm_cell_852/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_852_matmul_readvariableop_resource.lstm_cell_852_matmul_1_readvariableop_resource-lstm_cell_852_biasadd_readvariableop_resource*
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
while_body_5121663*
condR
while_cond_5121662*K
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
NoOpNoOp%^lstm_cell_852/BiasAdd/ReadVariableOp$^lstm_cell_852/MatMul/ReadVariableOp&^lstm_cell_852/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_852/BiasAdd/ReadVariableOp$lstm_cell_852/BiasAdd/ReadVariableOp2J
#lstm_cell_852/MatMul/ReadVariableOp#lstm_cell_852/MatMul/ReadVariableOp2N
%lstm_cell_852/MatMul_1/ReadVariableOp%lstm_cell_852/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5122895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_854_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_854_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_854_matmul_readvariableop_resource:2(F
4while_lstm_cell_854_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_854_biasadd_readvariableop_resource:(??*while/lstm_cell_854/BiasAdd/ReadVariableOp?)while/lstm_cell_854/MatMul/ReadVariableOp?+while/lstm_cell_854/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_854/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_854/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_854/addAddV2$while/lstm_cell_854/MatMul:product:0&while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_854/BiasAddBiasAddwhile/lstm_cell_854/add:z:02while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_854/splitSplit,while/lstm_cell_854/split/split_dim:output:0$while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_854/SigmoidSigmoid"while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_1Sigmoid"while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mulMul!while/lstm_cell_854/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_854/ReluRelu"while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_1Mulwhile/lstm_cell_854/Sigmoid:y:0&while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/add_1AddV2while/lstm_cell_854/mul:z:0while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_2Sigmoid"while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_854/Relu_1Reluwhile/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_2Mul!while/lstm_cell_854/Sigmoid_2:y:0(while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_854/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_854/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_854/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_854/BiasAdd/ReadVariableOp*^while/lstm_cell_854/MatMul/ReadVariableOp,^while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_854_biasadd_readvariableop_resource5while_lstm_cell_854_biasadd_readvariableop_resource_0"n
4while_lstm_cell_854_matmul_1_readvariableop_resource6while_lstm_cell_854_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_854_matmul_readvariableop_resource4while_lstm_cell_854_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_854/BiasAdd/ReadVariableOp*while/lstm_cell_854/BiasAdd/ReadVariableOp2V
)while/lstm_cell_854/MatMul/ReadVariableOp)while/lstm_cell_854/MatMul/ReadVariableOp2Z
+while/lstm_cell_854/MatMul_1/ReadVariableOp+while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_852_layer_call_fn_5121175

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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5120008s
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5123292

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
while_body_5119378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_854_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_854_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_854_matmul_readvariableop_resource:2(F
4while_lstm_cell_854_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_854_biasadd_readvariableop_resource:(??*while/lstm_cell_854/BiasAdd/ReadVariableOp?)while/lstm_cell_854/MatMul/ReadVariableOp?+while/lstm_cell_854/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_854/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_854/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_854/addAddV2$while/lstm_cell_854/MatMul:product:0&while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_854/BiasAddBiasAddwhile/lstm_cell_854/add:z:02while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_854/splitSplit,while/lstm_cell_854/split/split_dim:output:0$while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_854/SigmoidSigmoid"while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_1Sigmoid"while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mulMul!while/lstm_cell_854/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_854/ReluRelu"while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_1Mulwhile/lstm_cell_854/Sigmoid:y:0&while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/add_1AddV2while/lstm_cell_854/mul:z:0while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_2Sigmoid"while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_854/Relu_1Reluwhile/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_2Mul!while/lstm_cell_854/Sigmoid_2:y:0(while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_854/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_854/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_854/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_854/BiasAdd/ReadVariableOp*^while/lstm_cell_854/MatMul/ReadVariableOp,^while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_854_biasadd_readvariableop_resource5while_lstm_cell_854_biasadd_readvariableop_resource_0"n
4while_lstm_cell_854_matmul_1_readvariableop_resource6while_lstm_cell_854_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_854_matmul_readvariableop_resource4while_lstm_cell_854_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_854/BiasAdd/ReadVariableOp*while/lstm_cell_854/BiasAdd/ReadVariableOp2V
)while/lstm_cell_854/MatMul/ReadVariableOp)while/lstm_cell_854/MatMul/ReadVariableOp2Z
+while/lstm_cell_854/MatMul_1/ReadVariableOp+while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5118584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5118584___redundant_placeholder05
1while_while_cond_5118584___redundant_placeholder15
1while_while_cond_5118584___redundant_placeholder25
1while_while_cond_5118584___redundant_placeholder3
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
while_cond_5118743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5118743___redundant_placeholder05
1while_while_cond_5118743___redundant_placeholder15
1while_while_cond_5118743___redundant_placeholder25
1while_while_cond_5118743___redundant_placeholder3
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
*sequential_284_lstm_852_while_cond_5117594L
Hsequential_284_lstm_852_while_sequential_284_lstm_852_while_loop_counterR
Nsequential_284_lstm_852_while_sequential_284_lstm_852_while_maximum_iterations-
)sequential_284_lstm_852_while_placeholder/
+sequential_284_lstm_852_while_placeholder_1/
+sequential_284_lstm_852_while_placeholder_2/
+sequential_284_lstm_852_while_placeholder_3N
Jsequential_284_lstm_852_while_less_sequential_284_lstm_852_strided_slice_1e
asequential_284_lstm_852_while_sequential_284_lstm_852_while_cond_5117594___redundant_placeholder0e
asequential_284_lstm_852_while_sequential_284_lstm_852_while_cond_5117594___redundant_placeholder1e
asequential_284_lstm_852_while_sequential_284_lstm_852_while_cond_5117594___redundant_placeholder2e
asequential_284_lstm_852_while_sequential_284_lstm_852_while_cond_5117594___redundant_placeholder3*
&sequential_284_lstm_852_while_identity
?
"sequential_284/lstm_852/while/LessLess)sequential_284_lstm_852_while_placeholderJsequential_284_lstm_852_while_less_sequential_284_lstm_852_strided_slice_1*
T0*
_output_shapes
: {
&sequential_284/lstm_852/while/IdentityIdentity&sequential_284/lstm_852/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_284_lstm_852_while_identity/sequential_284/lstm_852/while/Identity:output:0*(
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
while_cond_5119077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5119077___redundant_placeholder05
1while_while_cond_5119077___redundant_placeholder15
1while_while_cond_5119077___redundant_placeholder25
1while_while_cond_5119077___redundant_placeholder3
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
while_body_5118235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_852_5118259_0:	?0
while_lstm_cell_852_5118261_0:	d?,
while_lstm_cell_852_5118263_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_852_5118259:	?.
while_lstm_cell_852_5118261:	d?*
while_lstm_cell_852_5118263:	???+while/lstm_cell_852/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_852/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_852_5118259_0while_lstm_cell_852_5118261_0while_lstm_cell_852_5118263_0*
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118176?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_852/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_852/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_852/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_852/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_852_5118259while_lstm_cell_852_5118259_0"<
while_lstm_cell_852_5118261while_lstm_cell_852_5118261_0"<
while_lstm_cell_852_5118263while_lstm_cell_852_5118263_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_852/StatefulPartitionedCall+while/lstm_cell_852/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5122278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5122278___redundant_placeholder05
1while_while_cond_5122278___redundant_placeholder15
1while_while_cond_5122278___redundant_placeholder25
1while_while_cond_5122278___redundant_placeholder3
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118030

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

?
lstm_852_while_cond_5120335.
*lstm_852_while_lstm_852_while_loop_counter4
0lstm_852_while_lstm_852_while_maximum_iterations
lstm_852_while_placeholder 
lstm_852_while_placeholder_1 
lstm_852_while_placeholder_2 
lstm_852_while_placeholder_30
,lstm_852_while_less_lstm_852_strided_slice_1G
Clstm_852_while_lstm_852_while_cond_5120335___redundant_placeholder0G
Clstm_852_while_lstm_852_while_cond_5120335___redundant_placeholder1G
Clstm_852_while_lstm_852_while_cond_5120335___redundant_placeholder2G
Clstm_852_while_lstm_852_while_cond_5120335___redundant_placeholder3
lstm_852_while_identity
?
lstm_852/while/LessLesslstm_852_while_placeholder,lstm_852_while_less_lstm_852_strided_slice_1*
T0*
_output_shapes
: ]
lstm_852/while/IdentityIdentitylstm_852/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_852_while_identity lstm_852/while/Identity:output:0*(
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119678

inputs>
,lstm_cell_854_matmul_readvariableop_resource:2(@
.lstm_cell_854_matmul_1_readvariableop_resource:
(;
-lstm_cell_854_biasadd_readvariableop_resource:(
identity??$lstm_cell_854/BiasAdd/ReadVariableOp?#lstm_cell_854/MatMul/ReadVariableOp?%lstm_cell_854/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_854/MatMul/ReadVariableOpReadVariableOp,lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_854/MatMulMatMulstrided_slice_2:output:0+lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_854/MatMul_1MatMulzeros:output:0-lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_854/addAddV2lstm_cell_854/MatMul:product:0 lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_854/BiasAddBiasAddlstm_cell_854/add:z:0,lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_854/splitSplit&lstm_cell_854/split/split_dim:output:0lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_854/SigmoidSigmoidlstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_1Sigmoidlstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_854/mulMullstm_cell_854/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_854/ReluRelulstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_1Mullstm_cell_854/Sigmoid:y:0 lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_854/add_1AddV2lstm_cell_854/mul:z:0lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_2Sigmoidlstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_854/Relu_1Relulstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_2Mullstm_cell_854/Sigmoid_2:y:0"lstm_cell_854/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_854_matmul_readvariableop_resource.lstm_cell_854_matmul_1_readvariableop_resource-lstm_cell_854_biasadd_readvariableop_resource*
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
while_body_5119594*
condR
while_cond_5119593*K
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
NoOpNoOp%^lstm_cell_854/BiasAdd/ReadVariableOp$^lstm_cell_854/MatMul/ReadVariableOp&^lstm_cell_854/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_854/BiasAdd/ReadVariableOp$lstm_cell_854/BiasAdd/ReadVariableOp2J
#lstm_cell_854/MatMul/ReadVariableOp#lstm_cell_854/MatMul/ReadVariableOp2N
%lstm_cell_854/MatMul_1/ReadVariableOp%lstm_cell_854/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_5121519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5121519___redundant_placeholder05
1while_while_cond_5121519___redundant_placeholder15
1while_while_cond_5121519___redundant_placeholder25
1while_while_cond_5121519___redundant_placeholder3
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5123064

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
?
/__inference_lstm_cell_854_layer_call_fn_5123211

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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118730o
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
*__inference_lstm_853_layer_call_fn_5121769
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5118654|
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
*__inference_lstm_854_layer_call_fn_5122374
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5118813o
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119462

inputs>
,lstm_cell_854_matmul_readvariableop_resource:2(@
.lstm_cell_854_matmul_1_readvariableop_resource:
(;
-lstm_cell_854_biasadd_readvariableop_resource:(
identity??$lstm_cell_854/BiasAdd/ReadVariableOp?#lstm_cell_854/MatMul/ReadVariableOp?%lstm_cell_854/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_854/MatMul/ReadVariableOpReadVariableOp,lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_854/MatMulMatMulstrided_slice_2:output:0+lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_854/MatMul_1MatMulzeros:output:0-lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_854/addAddV2lstm_cell_854/MatMul:product:0 lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_854/BiasAddBiasAddlstm_cell_854/add:z:0,lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_854/splitSplit&lstm_cell_854/split/split_dim:output:0lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_854/SigmoidSigmoidlstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_1Sigmoidlstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_854/mulMullstm_cell_854/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_854/ReluRelulstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_1Mullstm_cell_854/Sigmoid:y:0 lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_854/add_1AddV2lstm_cell_854/mul:z:0lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_2Sigmoidlstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_854/Relu_1Relulstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_2Mullstm_cell_854/Sigmoid_2:y:0"lstm_cell_854/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_854_matmul_readvariableop_resource.lstm_cell_854_matmul_1_readvariableop_resource-lstm_cell_854_biasadd_readvariableop_resource*
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
while_body_5119378*
condR
while_cond_5119377*K
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
NoOpNoOp%^lstm_cell_854/BiasAdd/ReadVariableOp$^lstm_cell_854/MatMul/ReadVariableOp&^lstm_cell_854/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_854/BiasAdd/ReadVariableOp$lstm_cell_854/BiasAdd/ReadVariableOp2J
#lstm_cell_854/MatMul/ReadVariableOp#lstm_cell_854/MatMul/ReadVariableOp2N
%lstm_cell_854/MatMul_1/ReadVariableOp%lstm_cell_854/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_5122279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_853_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_853_matmul_readvariableop_resource:	d?G
4while_lstm_cell_853_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_853_biasadd_readvariableop_resource:	???*while/lstm_cell_853/BiasAdd/ReadVariableOp?)while/lstm_cell_853/MatMul/ReadVariableOp?+while/lstm_cell_853/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_853/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_853/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_853/addAddV2$while/lstm_cell_853/MatMul:product:0&while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_853/BiasAddBiasAddwhile/lstm_cell_853/add:z:02while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_853/splitSplit,while/lstm_cell_853/split/split_dim:output:0$while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_853/SigmoidSigmoid"while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_1Sigmoid"while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mulMul!while/lstm_cell_853/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_853/ReluRelu"while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_1Mulwhile/lstm_cell_853/Sigmoid:y:0&while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/add_1AddV2while/lstm_cell_853/mul:z:0while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_2Sigmoid"while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_853/Relu_1Reluwhile/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_2Mul!while/lstm_cell_853/Sigmoid_2:y:0(while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_853/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_853/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_853/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_853/BiasAdd/ReadVariableOp*^while/lstm_cell_853/MatMul/ReadVariableOp,^while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_853_biasadd_readvariableop_resource5while_lstm_cell_853_biasadd_readvariableop_resource_0"n
4while_lstm_cell_853_matmul_1_readvariableop_resource6while_lstm_cell_853_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_853_matmul_readvariableop_resource4while_lstm_cell_853_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_853/BiasAdd/ReadVariableOp*while/lstm_cell_853/BiasAdd/ReadVariableOp2V
)while/lstm_cell_853/MatMul/ReadVariableOp)while/lstm_cell_853/MatMul/ReadVariableOp2Z
+while/lstm_cell_853/MatMul_1/ReadVariableOp+while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_284_lstm_854_while_cond_5117872L
Hsequential_284_lstm_854_while_sequential_284_lstm_854_while_loop_counterR
Nsequential_284_lstm_854_while_sequential_284_lstm_854_while_maximum_iterations-
)sequential_284_lstm_854_while_placeholder/
+sequential_284_lstm_854_while_placeholder_1/
+sequential_284_lstm_854_while_placeholder_2/
+sequential_284_lstm_854_while_placeholder_3N
Jsequential_284_lstm_854_while_less_sequential_284_lstm_854_strided_slice_1e
asequential_284_lstm_854_while_sequential_284_lstm_854_while_cond_5117872___redundant_placeholder0e
asequential_284_lstm_854_while_sequential_284_lstm_854_while_cond_5117872___redundant_placeholder1e
asequential_284_lstm_854_while_sequential_284_lstm_854_while_cond_5117872___redundant_placeholder2e
asequential_284_lstm_854_while_sequential_284_lstm_854_while_cond_5117872___redundant_placeholder3*
&sequential_284_lstm_854_while_identity
?
"sequential_284/lstm_854/while/LessLess)sequential_284_lstm_854_while_placeholderJsequential_284_lstm_854_while_less_sequential_284_lstm_854_strided_slice_1*
T0*
_output_shapes
: {
&sequential_284/lstm_854/while/IdentityIdentity&sequential_284/lstm_854/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_284_lstm_854_while_identity/sequential_284/lstm_854/while/Identity:output:0*(
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
while_cond_5119923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5119923___redundant_placeholder05
1while_while_cond_5119923___redundant_placeholder15
1while_while_cond_5119923___redundant_placeholder25
1while_while_cond_5119923___redundant_placeholder3
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
lstm_854_while_cond_5121040.
*lstm_854_while_lstm_854_while_loop_counter4
0lstm_854_while_lstm_854_while_maximum_iterations
lstm_854_while_placeholder 
lstm_854_while_placeholder_1 
lstm_854_while_placeholder_2 
lstm_854_while_placeholder_30
,lstm_854_while_less_lstm_854_strided_slice_1G
Clstm_854_while_lstm_854_while_cond_5121040___redundant_placeholder0G
Clstm_854_while_lstm_854_while_cond_5121040___redundant_placeholder1G
Clstm_854_while_lstm_854_while_cond_5121040___redundant_placeholder2G
Clstm_854_while_lstm_854_while_cond_5121040___redundant_placeholder3
lstm_854_while_identity
?
lstm_854/while/LessLesslstm_854_while_placeholder,lstm_854_while_less_lstm_854_strided_slice_1*
T0*
_output_shapes
: ]
lstm_854/while/IdentityIdentitylstm_854/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_854_while_identity lstm_854/while/Identity:output:0*(
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121318
inputs_0?
,lstm_cell_852_matmul_readvariableop_resource:	?A
.lstm_cell_852_matmul_1_readvariableop_resource:	d?<
-lstm_cell_852_biasadd_readvariableop_resource:	?
identity??$lstm_cell_852/BiasAdd/ReadVariableOp?#lstm_cell_852/MatMul/ReadVariableOp?%lstm_cell_852/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_852/MatMul/ReadVariableOpReadVariableOp,lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_852/MatMulMatMulstrided_slice_2:output:0+lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_852/MatMul_1MatMulzeros:output:0-lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_852/addAddV2lstm_cell_852/MatMul:product:0 lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_852/BiasAddBiasAddlstm_cell_852/add:z:0,lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_852/splitSplit&lstm_cell_852/split/split_dim:output:0lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_852/SigmoidSigmoidlstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_1Sigmoidlstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_852/mulMullstm_cell_852/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_852/ReluRelulstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_1Mullstm_cell_852/Sigmoid:y:0 lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_852/add_1AddV2lstm_cell_852/mul:z:0lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_2Sigmoidlstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_852/Relu_1Relulstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_2Mullstm_cell_852/Sigmoid_2:y:0"lstm_cell_852/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_852_matmul_readvariableop_resource.lstm_cell_852_matmul_1_readvariableop_resource-lstm_cell_852_biasadd_readvariableop_resource*
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
while_body_5121234*
condR
while_cond_5121233*K
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
NoOpNoOp%^lstm_cell_852/BiasAdd/ReadVariableOp$^lstm_cell_852/MatMul/ReadVariableOp&^lstm_cell_852/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_852/BiasAdd/ReadVariableOp$lstm_cell_852/BiasAdd/ReadVariableOp2J
#lstm_cell_852/MatMul/ReadVariableOp#lstm_cell_852/MatMul/ReadVariableOp2N
%lstm_cell_852/MatMul_1/ReadVariableOp%lstm_cell_852/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5122465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5122465___redundant_placeholder05
1while_while_cond_5122465___redundant_placeholder15
1while_while_cond_5122465___redundant_placeholder25
1while_while_cond_5122465___redundant_placeholder3
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5123162

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
while_cond_5119758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5119758___redundant_placeholder05
1while_while_cond_5119758___redundant_placeholder15
1while_while_cond_5119758___redundant_placeholder25
1while_while_cond_5119758___redundant_placeholder3
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
*__inference_lstm_853_layer_call_fn_5121758
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5118463|
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
?C
?

lstm_853_while_body_5120902.
*lstm_853_while_lstm_853_while_loop_counter4
0lstm_853_while_lstm_853_while_maximum_iterations
lstm_853_while_placeholder 
lstm_853_while_placeholder_1 
lstm_853_while_placeholder_2 
lstm_853_while_placeholder_3-
)lstm_853_while_lstm_853_strided_slice_1_0i
elstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0:	d?R
?lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?M
>lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
lstm_853_while_identity
lstm_853_while_identity_1
lstm_853_while_identity_2
lstm_853_while_identity_3
lstm_853_while_identity_4
lstm_853_while_identity_5+
'lstm_853_while_lstm_853_strided_slice_1g
clstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensorN
;lstm_853_while_lstm_cell_853_matmul_readvariableop_resource:	d?P
=lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource:	2?K
<lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource:	???3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp?2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp?4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp?
@lstm_853/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_853/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensor_0lstm_853_while_placeholderIlstm_853/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp=lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_853/while/lstm_cell_853/MatMulMatMul9lstm_853/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp?lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_853/while/lstm_cell_853/MatMul_1MatMullstm_853_while_placeholder_2<lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_853/while/lstm_cell_853/addAddV2-lstm_853/while/lstm_cell_853/MatMul:product:0/lstm_853/while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp>lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_853/while/lstm_cell_853/BiasAddBiasAdd$lstm_853/while/lstm_cell_853/add:z:0;lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_853/while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_853/while/lstm_cell_853/splitSplit5lstm_853/while/lstm_cell_853/split/split_dim:output:0-lstm_853/while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_853/while/lstm_cell_853/SigmoidSigmoid+lstm_853/while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_853/while/lstm_cell_853/Sigmoid_1Sigmoid+lstm_853/while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_853/while/lstm_cell_853/mulMul*lstm_853/while/lstm_cell_853/Sigmoid_1:y:0lstm_853_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_853/while/lstm_cell_853/ReluRelu+lstm_853/while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_853/while/lstm_cell_853/mul_1Mul(lstm_853/while/lstm_cell_853/Sigmoid:y:0/lstm_853/while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_853/while/lstm_cell_853/add_1AddV2$lstm_853/while/lstm_cell_853/mul:z:0&lstm_853/while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_853/while/lstm_cell_853/Sigmoid_2Sigmoid+lstm_853/while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_853/while/lstm_cell_853/Relu_1Relu&lstm_853/while/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_853/while/lstm_cell_853/mul_2Mul*lstm_853/while/lstm_cell_853/Sigmoid_2:y:01lstm_853/while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_853/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_853_while_placeholder_1lstm_853_while_placeholder&lstm_853/while/lstm_cell_853/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_853/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_853/while/addAddV2lstm_853_while_placeholderlstm_853/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_853/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_853/while/add_1AddV2*lstm_853_while_lstm_853_while_loop_counterlstm_853/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_853/while/IdentityIdentitylstm_853/while/add_1:z:0^lstm_853/while/NoOp*
T0*
_output_shapes
: ?
lstm_853/while/Identity_1Identity0lstm_853_while_lstm_853_while_maximum_iterations^lstm_853/while/NoOp*
T0*
_output_shapes
: t
lstm_853/while/Identity_2Identitylstm_853/while/add:z:0^lstm_853/while/NoOp*
T0*
_output_shapes
: ?
lstm_853/while/Identity_3IdentityClstm_853/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_853/while/NoOp*
T0*
_output_shapes
: ?
lstm_853/while/Identity_4Identity&lstm_853/while/lstm_cell_853/mul_2:z:0^lstm_853/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_853/while/Identity_5Identity&lstm_853/while/lstm_cell_853/add_1:z:0^lstm_853/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_853/while/NoOpNoOp4^lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp3^lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp5^lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_853_while_identity lstm_853/while/Identity:output:0"?
lstm_853_while_identity_1"lstm_853/while/Identity_1:output:0"?
lstm_853_while_identity_2"lstm_853/while/Identity_2:output:0"?
lstm_853_while_identity_3"lstm_853/while/Identity_3:output:0"?
lstm_853_while_identity_4"lstm_853/while/Identity_4:output:0"?
lstm_853_while_identity_5"lstm_853/while/Identity_5:output:0"T
'lstm_853_while_lstm_853_strided_slice_1)lstm_853_while_lstm_853_strided_slice_1_0"~
<lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource>lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0"?
=lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource?lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0"|
;lstm_853_while_lstm_cell_853_matmul_readvariableop_resource=lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0"?
clstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensorelstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp2h
2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp2l
4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_854_layer_call_fn_5122385
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119004o
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
+__inference_dense_284_layer_call_fn_5122988

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
F__inference_dense_284_layer_call_and_return_conditional_losses_5119480o
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
?J
?
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119843

inputs?
,lstm_cell_853_matmul_readvariableop_resource:	d?A
.lstm_cell_853_matmul_1_readvariableop_resource:	2?<
-lstm_cell_853_biasadd_readvariableop_resource:	?
identity??$lstm_cell_853/BiasAdd/ReadVariableOp?#lstm_cell_853/MatMul/ReadVariableOp?%lstm_cell_853/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_853/MatMul/ReadVariableOpReadVariableOp,lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_853/MatMulMatMulstrided_slice_2:output:0+lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_853/MatMul_1MatMulzeros:output:0-lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_853/addAddV2lstm_cell_853/MatMul:product:0 lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_853/BiasAddBiasAddlstm_cell_853/add:z:0,lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_853/splitSplit&lstm_cell_853/split/split_dim:output:0lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_853/SigmoidSigmoidlstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_1Sigmoidlstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_853/mulMullstm_cell_853/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_853/ReluRelulstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_1Mullstm_cell_853/Sigmoid:y:0 lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_853/add_1AddV2lstm_cell_853/mul:z:0lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_2Sigmoidlstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_853/Relu_1Relulstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_2Mullstm_cell_853/Sigmoid_2:y:0"lstm_cell_853/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_853_matmul_readvariableop_resource.lstm_cell_853_matmul_1_readvariableop_resource-lstm_cell_853_biasadd_readvariableop_resource*
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
while_body_5119759*
condR
while_cond_5119758*K
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
NoOpNoOp%^lstm_cell_853/BiasAdd/ReadVariableOp$^lstm_cell_853/MatMul/ReadVariableOp&^lstm_cell_853/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_853/BiasAdd/ReadVariableOp$lstm_cell_853/BiasAdd/ReadVariableOp2J
#lstm_cell_853/MatMul/ReadVariableOp#lstm_cell_853/MatMul/ReadVariableOp2N
%lstm_cell_853/MatMul_1/ReadVariableOp%lstm_cell_853/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_854_layer_call_fn_5122407

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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119678o
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
#__inference__traced_restore_5123565
file_prefix3
!assignvariableop_dense_284_kernel:
/
!assignvariableop_1_dense_284_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_852_lstm_cell_852_kernel:	?M
:assignvariableop_8_lstm_852_lstm_cell_852_recurrent_kernel:	d?=
.assignvariableop_9_lstm_852_lstm_cell_852_bias:	?D
1assignvariableop_10_lstm_853_lstm_cell_853_kernel:	d?N
;assignvariableop_11_lstm_853_lstm_cell_853_recurrent_kernel:	2?>
/assignvariableop_12_lstm_853_lstm_cell_853_bias:	?C
1assignvariableop_13_lstm_854_lstm_cell_854_kernel:2(M
;assignvariableop_14_lstm_854_lstm_cell_854_recurrent_kernel:
(=
/assignvariableop_15_lstm_854_lstm_cell_854_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_284_kernel_m:
7
)assignvariableop_19_adam_dense_284_bias_m:K
8assignvariableop_20_adam_lstm_852_lstm_cell_852_kernel_m:	?U
Bassignvariableop_21_adam_lstm_852_lstm_cell_852_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_852_lstm_cell_852_bias_m:	?K
8assignvariableop_23_adam_lstm_853_lstm_cell_853_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_853_lstm_cell_853_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_853_lstm_cell_853_bias_m:	?J
8assignvariableop_26_adam_lstm_854_lstm_cell_854_kernel_m:2(T
Bassignvariableop_27_adam_lstm_854_lstm_cell_854_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_854_lstm_cell_854_bias_m:(=
+assignvariableop_29_adam_dense_284_kernel_v:
7
)assignvariableop_30_adam_dense_284_bias_v:K
8assignvariableop_31_adam_lstm_852_lstm_cell_852_kernel_v:	?U
Bassignvariableop_32_adam_lstm_852_lstm_cell_852_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_852_lstm_cell_852_bias_v:	?K
8assignvariableop_34_adam_lstm_853_lstm_cell_853_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_853_lstm_cell_853_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_853_lstm_cell_853_bias_v:	?J
8assignvariableop_37_adam_lstm_854_lstm_cell_854_kernel_v:2(T
Bassignvariableop_38_adam_lstm_854_lstm_cell_854_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_854_lstm_cell_854_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_284_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_284_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_852_lstm_cell_852_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_852_lstm_cell_852_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_852_lstm_cell_852_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_853_lstm_cell_853_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_853_lstm_cell_853_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_853_lstm_cell_853_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_854_lstm_cell_854_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_854_lstm_cell_854_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_854_lstm_cell_854_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_284_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_284_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_852_lstm_cell_852_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_852_lstm_cell_852_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_852_lstm_cell_852_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_853_lstm_cell_853_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_853_lstm_cell_853_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_853_lstm_cell_853_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_854_lstm_cell_854_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_854_lstm_cell_854_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_854_lstm_cell_854_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_284_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_284_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_852_lstm_cell_852_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_852_lstm_cell_852_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_852_lstm_cell_852_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_853_lstm_cell_853_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_853_lstm_cell_853_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_853_lstm_cell_853_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_854_lstm_cell_854_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_854_lstm_cell_854_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_854_lstm_cell_854_bias_vIdentity_39:output:0"/device:CPU:0*
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5119480

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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122836

inputs>
,lstm_cell_854_matmul_readvariableop_resource:2(@
.lstm_cell_854_matmul_1_readvariableop_resource:
(;
-lstm_cell_854_biasadd_readvariableop_resource:(
identity??$lstm_cell_854/BiasAdd/ReadVariableOp?#lstm_cell_854/MatMul/ReadVariableOp?%lstm_cell_854/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_854/MatMul/ReadVariableOpReadVariableOp,lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_854/MatMulMatMulstrided_slice_2:output:0+lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_854/MatMul_1MatMulzeros:output:0-lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_854/addAddV2lstm_cell_854/MatMul:product:0 lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_854/BiasAddBiasAddlstm_cell_854/add:z:0,lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_854/splitSplit&lstm_cell_854/split/split_dim:output:0lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_854/SigmoidSigmoidlstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_1Sigmoidlstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_854/mulMullstm_cell_854/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_854/ReluRelulstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_1Mullstm_cell_854/Sigmoid:y:0 lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_854/add_1AddV2lstm_cell_854/mul:z:0lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_2Sigmoidlstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_854/Relu_1Relulstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_2Mullstm_cell_854/Sigmoid_2:y:0"lstm_cell_854/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_854_matmul_readvariableop_resource.lstm_cell_854_matmul_1_readvariableop_resource-lstm_cell_854_biasadd_readvariableop_resource*
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
while_body_5122752*
condR
while_cond_5122751*K
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
NoOpNoOp%^lstm_cell_854/BiasAdd/ReadVariableOp$^lstm_cell_854/MatMul/ReadVariableOp&^lstm_cell_854/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_854/BiasAdd/ReadVariableOp$lstm_cell_854/BiasAdd/ReadVariableOp2J
#lstm_cell_854/MatMul/ReadVariableOp#lstm_cell_854/MatMul/ReadVariableOp2N
%lstm_cell_854/MatMul_1/ReadVariableOp%lstm_cell_854/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5123096

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
?T
?
*sequential_284_lstm_854_while_body_5117873L
Hsequential_284_lstm_854_while_sequential_284_lstm_854_while_loop_counterR
Nsequential_284_lstm_854_while_sequential_284_lstm_854_while_maximum_iterations-
)sequential_284_lstm_854_while_placeholder/
+sequential_284_lstm_854_while_placeholder_1/
+sequential_284_lstm_854_while_placeholder_2/
+sequential_284_lstm_854_while_placeholder_3K
Gsequential_284_lstm_854_while_sequential_284_lstm_854_strided_slice_1_0?
?sequential_284_lstm_854_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_854_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_284_lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0:2(`
Nsequential_284_lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0:
([
Msequential_284_lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0:(*
&sequential_284_lstm_854_while_identity,
(sequential_284_lstm_854_while_identity_1,
(sequential_284_lstm_854_while_identity_2,
(sequential_284_lstm_854_while_identity_3,
(sequential_284_lstm_854_while_identity_4,
(sequential_284_lstm_854_while_identity_5I
Esequential_284_lstm_854_while_sequential_284_lstm_854_strided_slice_1?
?sequential_284_lstm_854_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_854_tensorarrayunstack_tensorlistfromtensor\
Jsequential_284_lstm_854_while_lstm_cell_854_matmul_readvariableop_resource:2(^
Lsequential_284_lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource:
(Y
Ksequential_284_lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource:(??Bsequential_284/lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp?Asequential_284/lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp?Csequential_284/lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp?
Osequential_284/lstm_854/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_284/lstm_854/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_284_lstm_854_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_854_tensorarrayunstack_tensorlistfromtensor_0)sequential_284_lstm_854_while_placeholderXsequential_284/lstm_854/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_284/lstm_854/while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOpLsequential_284_lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_284/lstm_854/while/lstm_cell_854/MatMulMatMulHsequential_284/lstm_854/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_284/lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_284/lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOpNsequential_284_lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_284/lstm_854/while/lstm_cell_854/MatMul_1MatMul+sequential_284_lstm_854_while_placeholder_2Ksequential_284/lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_284/lstm_854/while/lstm_cell_854/addAddV2<sequential_284/lstm_854/while/lstm_cell_854/MatMul:product:0>sequential_284/lstm_854/while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_284/lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOpMsequential_284_lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_284/lstm_854/while/lstm_cell_854/BiasAddBiasAdd3sequential_284/lstm_854/while/lstm_cell_854/add:z:0Jsequential_284/lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_284/lstm_854/while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_284/lstm_854/while/lstm_cell_854/splitSplitDsequential_284/lstm_854/while/lstm_cell_854/split/split_dim:output:0<sequential_284/lstm_854/while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_284/lstm_854/while/lstm_cell_854/SigmoidSigmoid:sequential_284/lstm_854/while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_284/lstm_854/while/lstm_cell_854/Sigmoid_1Sigmoid:sequential_284/lstm_854/while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_284/lstm_854/while/lstm_cell_854/mulMul9sequential_284/lstm_854/while/lstm_cell_854/Sigmoid_1:y:0+sequential_284_lstm_854_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_284/lstm_854/while/lstm_cell_854/ReluRelu:sequential_284/lstm_854/while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_284/lstm_854/while/lstm_cell_854/mul_1Mul7sequential_284/lstm_854/while/lstm_cell_854/Sigmoid:y:0>sequential_284/lstm_854/while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_284/lstm_854/while/lstm_cell_854/add_1AddV23sequential_284/lstm_854/while/lstm_cell_854/mul:z:05sequential_284/lstm_854/while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_284/lstm_854/while/lstm_cell_854/Sigmoid_2Sigmoid:sequential_284/lstm_854/while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_284/lstm_854/while/lstm_cell_854/Relu_1Relu5sequential_284/lstm_854/while/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_284/lstm_854/while/lstm_cell_854/mul_2Mul9sequential_284/lstm_854/while/lstm_cell_854/Sigmoid_2:y:0@sequential_284/lstm_854/while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_284/lstm_854/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_284_lstm_854_while_placeholder_1)sequential_284_lstm_854_while_placeholder5sequential_284/lstm_854/while/lstm_cell_854/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_284/lstm_854/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_284/lstm_854/while/addAddV2)sequential_284_lstm_854_while_placeholder,sequential_284/lstm_854/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_284/lstm_854/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_284/lstm_854/while/add_1AddV2Hsequential_284_lstm_854_while_sequential_284_lstm_854_while_loop_counter.sequential_284/lstm_854/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_284/lstm_854/while/IdentityIdentity'sequential_284/lstm_854/while/add_1:z:0#^sequential_284/lstm_854/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_854/while/Identity_1IdentityNsequential_284_lstm_854_while_sequential_284_lstm_854_while_maximum_iterations#^sequential_284/lstm_854/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_854/while/Identity_2Identity%sequential_284/lstm_854/while/add:z:0#^sequential_284/lstm_854/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_854/while/Identity_3IdentityRsequential_284/lstm_854/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_284/lstm_854/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_854/while/Identity_4Identity5sequential_284/lstm_854/while/lstm_cell_854/mul_2:z:0#^sequential_284/lstm_854/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_284/lstm_854/while/Identity_5Identity5sequential_284/lstm_854/while/lstm_cell_854/add_1:z:0#^sequential_284/lstm_854/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_284/lstm_854/while/NoOpNoOpC^sequential_284/lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOpB^sequential_284/lstm_854/while/lstm_cell_854/MatMul/ReadVariableOpD^sequential_284/lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_284_lstm_854_while_identity/sequential_284/lstm_854/while/Identity:output:0"]
(sequential_284_lstm_854_while_identity_11sequential_284/lstm_854/while/Identity_1:output:0"]
(sequential_284_lstm_854_while_identity_21sequential_284/lstm_854/while/Identity_2:output:0"]
(sequential_284_lstm_854_while_identity_31sequential_284/lstm_854/while/Identity_3:output:0"]
(sequential_284_lstm_854_while_identity_41sequential_284/lstm_854/while/Identity_4:output:0"]
(sequential_284_lstm_854_while_identity_51sequential_284/lstm_854/while/Identity_5:output:0"?
Ksequential_284_lstm_854_while_lstm_cell_854_biasadd_readvariableop_resourceMsequential_284_lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0"?
Lsequential_284_lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resourceNsequential_284_lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0"?
Jsequential_284_lstm_854_while_lstm_cell_854_matmul_readvariableop_resourceLsequential_284_lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0"?
Esequential_284_lstm_854_while_sequential_284_lstm_854_strided_slice_1Gsequential_284_lstm_854_while_sequential_284_lstm_854_strided_slice_1_0"?
?sequential_284_lstm_854_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_854_tensorarrayunstack_tensorlistfromtensor?sequential_284_lstm_854_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_854_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_284/lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOpBsequential_284/lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp2?
Asequential_284/lstm_854/while/lstm_cell_854/MatMul/ReadVariableOpAsequential_284/lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp2?
Csequential_284/lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOpCsequential_284/lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5122894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5122894___redundant_placeholder05
1while_while_cond_5122894___redundant_placeholder15
1while_while_cond_5122894___redundant_placeholder25
1while_while_cond_5122894___redundant_placeholder3
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121604

inputs?
,lstm_cell_852_matmul_readvariableop_resource:	?A
.lstm_cell_852_matmul_1_readvariableop_resource:	d?<
-lstm_cell_852_biasadd_readvariableop_resource:	?
identity??$lstm_cell_852/BiasAdd/ReadVariableOp?#lstm_cell_852/MatMul/ReadVariableOp?%lstm_cell_852/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_852/MatMul/ReadVariableOpReadVariableOp,lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_852/MatMulMatMulstrided_slice_2:output:0+lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_852/MatMul_1MatMulzeros:output:0-lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_852/addAddV2lstm_cell_852/MatMul:product:0 lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_852/BiasAddBiasAddlstm_cell_852/add:z:0,lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_852/splitSplit&lstm_cell_852/split/split_dim:output:0lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_852/SigmoidSigmoidlstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_1Sigmoidlstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_852/mulMullstm_cell_852/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_852/ReluRelulstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_1Mullstm_cell_852/Sigmoid:y:0 lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_852/add_1AddV2lstm_cell_852/mul:z:0lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_2Sigmoidlstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_852/Relu_1Relulstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_2Mullstm_cell_852/Sigmoid_2:y:0"lstm_cell_852/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_852_matmul_readvariableop_resource.lstm_cell_852_matmul_1_readvariableop_resource-lstm_cell_852_biasadd_readvariableop_resource*
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
while_body_5121520*
condR
while_cond_5121519*K
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
NoOpNoOp%^lstm_cell_852/BiasAdd/ReadVariableOp$^lstm_cell_852/MatMul/ReadVariableOp&^lstm_cell_852/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_852/BiasAdd/ReadVariableOp$lstm_cell_852/BiasAdd/ReadVariableOp2J
#lstm_cell_852/MatMul/ReadVariableOp#lstm_cell_852/MatMul/ReadVariableOp2N
%lstm_cell_852/MatMul_1/ReadVariableOp%lstm_cell_852/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_853_layer_call_and_return_conditional_losses_5118654

inputs(
lstm_cell_853_5118572:	d?(
lstm_cell_853_5118574:	2?$
lstm_cell_853_5118576:	?
identity??%lstm_cell_853/StatefulPartitionedCall?while;
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
%lstm_cell_853/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_853_5118572lstm_cell_853_5118574lstm_cell_853_5118576*
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118526n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_853_5118572lstm_cell_853_5118574lstm_cell_853_5118576*
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
while_body_5118585*
condR
while_cond_5118584*K
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
NoOpNoOp&^lstm_cell_853/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_853/StatefulPartitionedCall%lstm_cell_853/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_852_layer_call_fn_5121153
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5118304|
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
?C
?

lstm_854_while_body_5121041.
*lstm_854_while_lstm_854_while_loop_counter4
0lstm_854_while_lstm_854_while_maximum_iterations
lstm_854_while_placeholder 
lstm_854_while_placeholder_1 
lstm_854_while_placeholder_2 
lstm_854_while_placeholder_3-
)lstm_854_while_lstm_854_strided_slice_1_0i
elstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0:2(Q
?lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(L
>lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0:(
lstm_854_while_identity
lstm_854_while_identity_1
lstm_854_while_identity_2
lstm_854_while_identity_3
lstm_854_while_identity_4
lstm_854_while_identity_5+
'lstm_854_while_lstm_854_strided_slice_1g
clstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensorM
;lstm_854_while_lstm_cell_854_matmul_readvariableop_resource:2(O
=lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource:
(J
<lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource:(??3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp?2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp?4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp?
@lstm_854/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_854/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensor_0lstm_854_while_placeholderIlstm_854/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp=lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_854/while/lstm_cell_854/MatMulMatMul9lstm_854/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp?lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_854/while/lstm_cell_854/MatMul_1MatMullstm_854_while_placeholder_2<lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_854/while/lstm_cell_854/addAddV2-lstm_854/while/lstm_cell_854/MatMul:product:0/lstm_854/while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp>lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_854/while/lstm_cell_854/BiasAddBiasAdd$lstm_854/while/lstm_cell_854/add:z:0;lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_854/while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_854/while/lstm_cell_854/splitSplit5lstm_854/while/lstm_cell_854/split/split_dim:output:0-lstm_854/while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_854/while/lstm_cell_854/SigmoidSigmoid+lstm_854/while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_854/while/lstm_cell_854/Sigmoid_1Sigmoid+lstm_854/while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_854/while/lstm_cell_854/mulMul*lstm_854/while/lstm_cell_854/Sigmoid_1:y:0lstm_854_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_854/while/lstm_cell_854/ReluRelu+lstm_854/while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_854/while/lstm_cell_854/mul_1Mul(lstm_854/while/lstm_cell_854/Sigmoid:y:0/lstm_854/while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_854/while/lstm_cell_854/add_1AddV2$lstm_854/while/lstm_cell_854/mul:z:0&lstm_854/while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_854/while/lstm_cell_854/Sigmoid_2Sigmoid+lstm_854/while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_854/while/lstm_cell_854/Relu_1Relu&lstm_854/while/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_854/while/lstm_cell_854/mul_2Mul*lstm_854/while/lstm_cell_854/Sigmoid_2:y:01lstm_854/while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_854/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_854_while_placeholder_1lstm_854_while_placeholder&lstm_854/while/lstm_cell_854/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_854/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_854/while/addAddV2lstm_854_while_placeholderlstm_854/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_854/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_854/while/add_1AddV2*lstm_854_while_lstm_854_while_loop_counterlstm_854/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_854/while/IdentityIdentitylstm_854/while/add_1:z:0^lstm_854/while/NoOp*
T0*
_output_shapes
: ?
lstm_854/while/Identity_1Identity0lstm_854_while_lstm_854_while_maximum_iterations^lstm_854/while/NoOp*
T0*
_output_shapes
: t
lstm_854/while/Identity_2Identitylstm_854/while/add:z:0^lstm_854/while/NoOp*
T0*
_output_shapes
: ?
lstm_854/while/Identity_3IdentityClstm_854/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_854/while/NoOp*
T0*
_output_shapes
: ?
lstm_854/while/Identity_4Identity&lstm_854/while/lstm_cell_854/mul_2:z:0^lstm_854/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_854/while/Identity_5Identity&lstm_854/while/lstm_cell_854/add_1:z:0^lstm_854/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_854/while/NoOpNoOp4^lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp3^lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp5^lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_854_while_identity lstm_854/while/Identity:output:0"?
lstm_854_while_identity_1"lstm_854/while/Identity_1:output:0"?
lstm_854_while_identity_2"lstm_854/while/Identity_2:output:0"?
lstm_854_while_identity_3"lstm_854/while/Identity_3:output:0"?
lstm_854_while_identity_4"lstm_854/while/Identity_4:output:0"?
lstm_854_while_identity_5"lstm_854/while/Identity_5:output:0"T
'lstm_854_while_lstm_854_strided_slice_1)lstm_854_while_lstm_854_strided_slice_1_0"~
<lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource>lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0"?
=lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource?lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0"|
;lstm_854_while_lstm_cell_854_matmul_readvariableop_resource=lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0"?
clstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensorelstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp2h
2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp2l
4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5118304

inputs(
lstm_cell_852_5118222:	?(
lstm_cell_852_5118224:	d?$
lstm_cell_852_5118226:	?
identity??%lstm_cell_852/StatefulPartitionedCall?while;
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
%lstm_cell_852/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_852_5118222lstm_cell_852_5118224lstm_cell_852_5118226*
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118176n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_852_5118222lstm_cell_852_5118224lstm_cell_852_5118226*
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
while_body_5118235*
condR
while_cond_5118234*K
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
NoOpNoOp&^lstm_cell_852/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_852/StatefulPartitionedCall%lstm_cell_852/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_853_while_body_5120475.
*lstm_853_while_lstm_853_while_loop_counter4
0lstm_853_while_lstm_853_while_maximum_iterations
lstm_853_while_placeholder 
lstm_853_while_placeholder_1 
lstm_853_while_placeholder_2 
lstm_853_while_placeholder_3-
)lstm_853_while_lstm_853_strided_slice_1_0i
elstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0:	d?R
?lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?M
>lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
lstm_853_while_identity
lstm_853_while_identity_1
lstm_853_while_identity_2
lstm_853_while_identity_3
lstm_853_while_identity_4
lstm_853_while_identity_5+
'lstm_853_while_lstm_853_strided_slice_1g
clstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensorN
;lstm_853_while_lstm_cell_853_matmul_readvariableop_resource:	d?P
=lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource:	2?K
<lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource:	???3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp?2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp?4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp?
@lstm_853/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_853/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensor_0lstm_853_while_placeholderIlstm_853/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp=lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_853/while/lstm_cell_853/MatMulMatMul9lstm_853/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp?lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_853/while/lstm_cell_853/MatMul_1MatMullstm_853_while_placeholder_2<lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_853/while/lstm_cell_853/addAddV2-lstm_853/while/lstm_cell_853/MatMul:product:0/lstm_853/while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp>lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_853/while/lstm_cell_853/BiasAddBiasAdd$lstm_853/while/lstm_cell_853/add:z:0;lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_853/while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_853/while/lstm_cell_853/splitSplit5lstm_853/while/lstm_cell_853/split/split_dim:output:0-lstm_853/while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_853/while/lstm_cell_853/SigmoidSigmoid+lstm_853/while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_853/while/lstm_cell_853/Sigmoid_1Sigmoid+lstm_853/while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_853/while/lstm_cell_853/mulMul*lstm_853/while/lstm_cell_853/Sigmoid_1:y:0lstm_853_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_853/while/lstm_cell_853/ReluRelu+lstm_853/while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_853/while/lstm_cell_853/mul_1Mul(lstm_853/while/lstm_cell_853/Sigmoid:y:0/lstm_853/while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_853/while/lstm_cell_853/add_1AddV2$lstm_853/while/lstm_cell_853/mul:z:0&lstm_853/while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_853/while/lstm_cell_853/Sigmoid_2Sigmoid+lstm_853/while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_853/while/lstm_cell_853/Relu_1Relu&lstm_853/while/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_853/while/lstm_cell_853/mul_2Mul*lstm_853/while/lstm_cell_853/Sigmoid_2:y:01lstm_853/while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_853/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_853_while_placeholder_1lstm_853_while_placeholder&lstm_853/while/lstm_cell_853/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_853/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_853/while/addAddV2lstm_853_while_placeholderlstm_853/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_853/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_853/while/add_1AddV2*lstm_853_while_lstm_853_while_loop_counterlstm_853/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_853/while/IdentityIdentitylstm_853/while/add_1:z:0^lstm_853/while/NoOp*
T0*
_output_shapes
: ?
lstm_853/while/Identity_1Identity0lstm_853_while_lstm_853_while_maximum_iterations^lstm_853/while/NoOp*
T0*
_output_shapes
: t
lstm_853/while/Identity_2Identitylstm_853/while/add:z:0^lstm_853/while/NoOp*
T0*
_output_shapes
: ?
lstm_853/while/Identity_3IdentityClstm_853/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_853/while/NoOp*
T0*
_output_shapes
: ?
lstm_853/while/Identity_4Identity&lstm_853/while/lstm_cell_853/mul_2:z:0^lstm_853/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_853/while/Identity_5Identity&lstm_853/while/lstm_cell_853/add_1:z:0^lstm_853/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_853/while/NoOpNoOp4^lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp3^lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp5^lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_853_while_identity lstm_853/while/Identity:output:0"?
lstm_853_while_identity_1"lstm_853/while/Identity_1:output:0"?
lstm_853_while_identity_2"lstm_853/while/Identity_2:output:0"?
lstm_853_while_identity_3"lstm_853/while/Identity_3:output:0"?
lstm_853_while_identity_4"lstm_853/while/Identity_4:output:0"?
lstm_853_while_identity_5"lstm_853/while/Identity_5:output:0"T
'lstm_853_while_lstm_853_strided_slice_1)lstm_853_while_lstm_853_strided_slice_1_0"~
<lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource>lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0"?
=lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource?lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0"|
;lstm_853_while_lstm_cell_853_matmul_readvariableop_resource=lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0"?
clstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensorelstm_853_while_tensorarrayv2read_tensorlistgetitem_lstm_853_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp3lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp2h
2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp2lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp2l
4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp4lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122979

inputs>
,lstm_cell_854_matmul_readvariableop_resource:2(@
.lstm_cell_854_matmul_1_readvariableop_resource:
(;
-lstm_cell_854_biasadd_readvariableop_resource:(
identity??$lstm_cell_854/BiasAdd/ReadVariableOp?#lstm_cell_854/MatMul/ReadVariableOp?%lstm_cell_854/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_854/MatMul/ReadVariableOpReadVariableOp,lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_854/MatMulMatMulstrided_slice_2:output:0+lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_854/MatMul_1MatMulzeros:output:0-lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_854/addAddV2lstm_cell_854/MatMul:product:0 lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_854/BiasAddBiasAddlstm_cell_854/add:z:0,lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_854/splitSplit&lstm_cell_854/split/split_dim:output:0lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_854/SigmoidSigmoidlstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_1Sigmoidlstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_854/mulMullstm_cell_854/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_854/ReluRelulstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_1Mullstm_cell_854/Sigmoid:y:0 lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_854/add_1AddV2lstm_cell_854/mul:z:0lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_2Sigmoidlstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_854/Relu_1Relulstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_2Mullstm_cell_854/Sigmoid_2:y:0"lstm_cell_854/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_854_matmul_readvariableop_resource.lstm_cell_854_matmul_1_readvariableop_resource-lstm_cell_854_biasadd_readvariableop_resource*
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
while_body_5122895*
condR
while_cond_5122894*K
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
NoOpNoOp%^lstm_cell_854/BiasAdd/ReadVariableOp$^lstm_cell_854/MatMul/ReadVariableOp&^lstm_cell_854/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_854/BiasAdd/ReadVariableOp$lstm_cell_854/BiasAdd/ReadVariableOp2J
#lstm_cell_854/MatMul/ReadVariableOp#lstm_cell_854/MatMul/ReadVariableOp2N
%lstm_cell_854/MatMul_1/ReadVariableOp%lstm_cell_854/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122220

inputs?
,lstm_cell_853_matmul_readvariableop_resource:	d?A
.lstm_cell_853_matmul_1_readvariableop_resource:	2?<
-lstm_cell_853_biasadd_readvariableop_resource:	?
identity??$lstm_cell_853/BiasAdd/ReadVariableOp?#lstm_cell_853/MatMul/ReadVariableOp?%lstm_cell_853/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_853/MatMul/ReadVariableOpReadVariableOp,lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_853/MatMulMatMulstrided_slice_2:output:0+lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_853/MatMul_1MatMulzeros:output:0-lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_853/addAddV2lstm_cell_853/MatMul:product:0 lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_853/BiasAddBiasAddlstm_cell_853/add:z:0,lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_853/splitSplit&lstm_cell_853/split/split_dim:output:0lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_853/SigmoidSigmoidlstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_1Sigmoidlstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_853/mulMullstm_cell_853/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_853/ReluRelulstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_1Mullstm_cell_853/Sigmoid:y:0 lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_853/add_1AddV2lstm_cell_853/mul:z:0lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_2Sigmoidlstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_853/Relu_1Relulstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_2Mullstm_cell_853/Sigmoid_2:y:0"lstm_cell_853/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_853_matmul_readvariableop_resource.lstm_cell_853_matmul_1_readvariableop_resource-lstm_cell_853_biasadd_readvariableop_resource*
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
while_body_5122136*
condR
while_cond_5122135*K
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
NoOpNoOp%^lstm_cell_853/BiasAdd/ReadVariableOp$^lstm_cell_853/MatMul/ReadVariableOp&^lstm_cell_853/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_853/BiasAdd/ReadVariableOp$lstm_cell_853/BiasAdd/ReadVariableOp2J
#lstm_cell_853/MatMul/ReadVariableOp#lstm_cell_853/MatMul/ReadVariableOp2N
%lstm_cell_853/MatMul_1/ReadVariableOp%lstm_cell_853/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_852_layer_call_fn_5123015

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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118030o
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

?
lstm_853_while_cond_5120901.
*lstm_853_while_lstm_853_while_loop_counter4
0lstm_853_while_lstm_853_while_maximum_iterations
lstm_853_while_placeholder 
lstm_853_while_placeholder_1 
lstm_853_while_placeholder_2 
lstm_853_while_placeholder_30
,lstm_853_while_less_lstm_853_strided_slice_1G
Clstm_853_while_lstm_853_while_cond_5120901___redundant_placeholder0G
Clstm_853_while_lstm_853_while_cond_5120901___redundant_placeholder1G
Clstm_853_while_lstm_853_while_cond_5120901___redundant_placeholder2G
Clstm_853_while_lstm_853_while_cond_5120901___redundant_placeholder3
lstm_853_while_identity
?
lstm_853/while/LessLesslstm_853_while_placeholder,lstm_853_while_less_lstm_853_strided_slice_1*
T0*
_output_shapes
: ]
lstm_853/while/IdentityIdentitylstm_853/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_853_while_identity lstm_853/while/Identity:output:0*(
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120158
lstm_852_input#
lstm_852_5120131:	?#
lstm_852_5120133:	d?
lstm_852_5120135:	?#
lstm_853_5120138:	d?#
lstm_853_5120140:	2?
lstm_853_5120142:	?"
lstm_854_5120145:2("
lstm_854_5120147:
(
lstm_854_5120149:(#
dense_284_5120152:

dense_284_5120154:
identity??!dense_284/StatefulPartitionedCall? lstm_852/StatefulPartitionedCall? lstm_853/StatefulPartitionedCall? lstm_854/StatefulPartitionedCall?
 lstm_852/StatefulPartitionedCallStatefulPartitionedCalllstm_852_inputlstm_852_5120131lstm_852_5120133lstm_852_5120135*
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5119162?
 lstm_853/StatefulPartitionedCallStatefulPartitionedCall)lstm_852/StatefulPartitionedCall:output:0lstm_853_5120138lstm_853_5120140lstm_853_5120142*
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119312?
 lstm_854/StatefulPartitionedCallStatefulPartitionedCall)lstm_853/StatefulPartitionedCall:output:0lstm_854_5120145lstm_854_5120147lstm_854_5120149*
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119462?
!dense_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_854/StatefulPartitionedCall:output:0dense_284_5120152dense_284_5120154*
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5119480y
IdentityIdentity*dense_284/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_284/StatefulPartitionedCall!^lstm_852/StatefulPartitionedCall!^lstm_853/StatefulPartitionedCall!^lstm_854/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_284/StatefulPartitionedCall!dense_284/StatefulPartitionedCall2D
 lstm_852/StatefulPartitionedCall lstm_852/StatefulPartitionedCall2D
 lstm_853/StatefulPartitionedCall lstm_853/StatefulPartitionedCall2D
 lstm_854/StatefulPartitionedCall lstm_854/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_852_input
?#
?
while_body_5118585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_853_5118609_0:	d?0
while_lstm_cell_853_5118611_0:	2?,
while_lstm_cell_853_5118613_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_853_5118609:	d?.
while_lstm_cell_853_5118611:	2?*
while_lstm_cell_853_5118613:	???+while/lstm_cell_853/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_853/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_853_5118609_0while_lstm_cell_853_5118611_0while_lstm_cell_853_5118613_0*
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118526?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_853/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_853/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_853/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_853/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_853_5118609while_lstm_cell_853_5118609_0"<
while_lstm_cell_853_5118611while_lstm_cell_853_5118611_0"<
while_lstm_cell_853_5118613while_lstm_cell_853_5118613_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_853/StatefulPartitionedCall+while/lstm_cell_853/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_854_layer_call_fn_5123228

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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118876o
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
while_cond_5119377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5119377___redundant_placeholder05
1while_while_cond_5119377___redundant_placeholder15
1while_while_cond_5119377___redundant_placeholder25
1while_while_cond_5119377___redundant_placeholder3
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
*__inference_lstm_852_layer_call_fn_5121142
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5118113|
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
while_cond_5122608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5122608___redundant_placeholder05
1while_while_cond_5122608___redundant_placeholder15
1while_while_cond_5122608___redundant_placeholder25
1while_while_cond_5122608___redundant_placeholder3
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

lstm_854_while_body_5120614.
*lstm_854_while_lstm_854_while_loop_counter4
0lstm_854_while_lstm_854_while_maximum_iterations
lstm_854_while_placeholder 
lstm_854_while_placeholder_1 
lstm_854_while_placeholder_2 
lstm_854_while_placeholder_3-
)lstm_854_while_lstm_854_strided_slice_1_0i
elstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0:2(Q
?lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(L
>lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0:(
lstm_854_while_identity
lstm_854_while_identity_1
lstm_854_while_identity_2
lstm_854_while_identity_3
lstm_854_while_identity_4
lstm_854_while_identity_5+
'lstm_854_while_lstm_854_strided_slice_1g
clstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensorM
;lstm_854_while_lstm_cell_854_matmul_readvariableop_resource:2(O
=lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource:
(J
<lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource:(??3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp?2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp?4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp?
@lstm_854/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_854/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensor_0lstm_854_while_placeholderIlstm_854/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp=lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_854/while/lstm_cell_854/MatMulMatMul9lstm_854/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp?lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_854/while/lstm_cell_854/MatMul_1MatMullstm_854_while_placeholder_2<lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_854/while/lstm_cell_854/addAddV2-lstm_854/while/lstm_cell_854/MatMul:product:0/lstm_854/while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp>lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_854/while/lstm_cell_854/BiasAddBiasAdd$lstm_854/while/lstm_cell_854/add:z:0;lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_854/while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_854/while/lstm_cell_854/splitSplit5lstm_854/while/lstm_cell_854/split/split_dim:output:0-lstm_854/while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_854/while/lstm_cell_854/SigmoidSigmoid+lstm_854/while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_854/while/lstm_cell_854/Sigmoid_1Sigmoid+lstm_854/while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_854/while/lstm_cell_854/mulMul*lstm_854/while/lstm_cell_854/Sigmoid_1:y:0lstm_854_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_854/while/lstm_cell_854/ReluRelu+lstm_854/while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_854/while/lstm_cell_854/mul_1Mul(lstm_854/while/lstm_cell_854/Sigmoid:y:0/lstm_854/while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_854/while/lstm_cell_854/add_1AddV2$lstm_854/while/lstm_cell_854/mul:z:0&lstm_854/while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_854/while/lstm_cell_854/Sigmoid_2Sigmoid+lstm_854/while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_854/while/lstm_cell_854/Relu_1Relu&lstm_854/while/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_854/while/lstm_cell_854/mul_2Mul*lstm_854/while/lstm_cell_854/Sigmoid_2:y:01lstm_854/while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_854/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_854_while_placeholder_1lstm_854_while_placeholder&lstm_854/while/lstm_cell_854/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_854/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_854/while/addAddV2lstm_854_while_placeholderlstm_854/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_854/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_854/while/add_1AddV2*lstm_854_while_lstm_854_while_loop_counterlstm_854/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_854/while/IdentityIdentitylstm_854/while/add_1:z:0^lstm_854/while/NoOp*
T0*
_output_shapes
: ?
lstm_854/while/Identity_1Identity0lstm_854_while_lstm_854_while_maximum_iterations^lstm_854/while/NoOp*
T0*
_output_shapes
: t
lstm_854/while/Identity_2Identitylstm_854/while/add:z:0^lstm_854/while/NoOp*
T0*
_output_shapes
: ?
lstm_854/while/Identity_3IdentityClstm_854/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_854/while/NoOp*
T0*
_output_shapes
: ?
lstm_854/while/Identity_4Identity&lstm_854/while/lstm_cell_854/mul_2:z:0^lstm_854/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_854/while/Identity_5Identity&lstm_854/while/lstm_cell_854/add_1:z:0^lstm_854/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_854/while/NoOpNoOp4^lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp3^lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp5^lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_854_while_identity lstm_854/while/Identity:output:0"?
lstm_854_while_identity_1"lstm_854/while/Identity_1:output:0"?
lstm_854_while_identity_2"lstm_854/while/Identity_2:output:0"?
lstm_854_while_identity_3"lstm_854/while/Identity_3:output:0"?
lstm_854_while_identity_4"lstm_854/while/Identity_4:output:0"?
lstm_854_while_identity_5"lstm_854/while/Identity_5:output:0"T
'lstm_854_while_lstm_854_strided_slice_1)lstm_854_while_lstm_854_strided_slice_1_0"~
<lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource>lstm_854_while_lstm_cell_854_biasadd_readvariableop_resource_0"?
=lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource?lstm_854_while_lstm_cell_854_matmul_1_readvariableop_resource_0"|
;lstm_854_while_lstm_cell_854_matmul_readvariableop_resource=lstm_854_while_lstm_cell_854_matmul_readvariableop_resource_0"?
clstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensorelstm_854_while_tensorarrayv2read_tensorlistgetitem_lstm_854_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp3lstm_854/while/lstm_cell_854/BiasAdd/ReadVariableOp2h
2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp2lstm_854/while/lstm_cell_854/MatMul/ReadVariableOp2l
4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp4lstm_854/while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5123194

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
while_body_5118394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_853_5118418_0:	d?0
while_lstm_cell_853_5118420_0:	2?,
while_lstm_cell_853_5118422_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_853_5118418:	d?.
while_lstm_cell_853_5118420:	2?*
while_lstm_cell_853_5118422:	???+while/lstm_cell_853/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_853/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_853_5118418_0while_lstm_cell_853_5118420_0while_lstm_cell_853_5118422_0*
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118380?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_853/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_853/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_853/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_853/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_853_5118418while_lstm_cell_853_5118418_0"<
while_lstm_cell_853_5118420while_lstm_cell_853_5118420_0"<
while_lstm_cell_853_5118422while_lstm_cell_853_5118422_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_853/StatefulPartitionedCall+while/lstm_cell_853/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5118935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_854_5118959_0:2(/
while_lstm_cell_854_5118961_0:
(+
while_lstm_cell_854_5118963_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_854_5118959:2(-
while_lstm_cell_854_5118961:
()
while_lstm_cell_854_5118963:(??+while/lstm_cell_854/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_854/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_854_5118959_0while_lstm_cell_854_5118961_0while_lstm_cell_854_5118963_0*
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118876?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_854/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_854/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_854/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_854/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_854_5118959while_lstm_cell_854_5118959_0"<
while_lstm_cell_854_5118961while_lstm_cell_854_5118961_0"<
while_lstm_cell_854_5118963while_lstm_cell_854_5118963_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_854/StatefulPartitionedCall+while/lstm_cell_854/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5118463

inputs(
lstm_cell_853_5118381:	d?(
lstm_cell_853_5118383:	2?$
lstm_cell_853_5118385:	?
identity??%lstm_cell_853/StatefulPartitionedCall?while;
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
%lstm_cell_853/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_853_5118381lstm_cell_853_5118383lstm_cell_853_5118385*
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118380n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_853_5118381lstm_cell_853_5118383lstm_cell_853_5118385*
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
while_body_5118394*
condR
while_cond_5118393*K
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
NoOpNoOp&^lstm_cell_853/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_853/StatefulPartitionedCall%lstm_cell_853/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_5117963
lstm_852_inputW
Dsequential_284_lstm_852_lstm_cell_852_matmul_readvariableop_resource:	?Y
Fsequential_284_lstm_852_lstm_cell_852_matmul_1_readvariableop_resource:	d?T
Esequential_284_lstm_852_lstm_cell_852_biasadd_readvariableop_resource:	?W
Dsequential_284_lstm_853_lstm_cell_853_matmul_readvariableop_resource:	d?Y
Fsequential_284_lstm_853_lstm_cell_853_matmul_1_readvariableop_resource:	2?T
Esequential_284_lstm_853_lstm_cell_853_biasadd_readvariableop_resource:	?V
Dsequential_284_lstm_854_lstm_cell_854_matmul_readvariableop_resource:2(X
Fsequential_284_lstm_854_lstm_cell_854_matmul_1_readvariableop_resource:
(S
Esequential_284_lstm_854_lstm_cell_854_biasadd_readvariableop_resource:(I
7sequential_284_dense_284_matmul_readvariableop_resource:
F
8sequential_284_dense_284_biasadd_readvariableop_resource:
identity??/sequential_284/dense_284/BiasAdd/ReadVariableOp?.sequential_284/dense_284/MatMul/ReadVariableOp?<sequential_284/lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp?;sequential_284/lstm_852/lstm_cell_852/MatMul/ReadVariableOp?=sequential_284/lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp?sequential_284/lstm_852/while?<sequential_284/lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp?;sequential_284/lstm_853/lstm_cell_853/MatMul/ReadVariableOp?=sequential_284/lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp?sequential_284/lstm_853/while?<sequential_284/lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp?;sequential_284/lstm_854/lstm_cell_854/MatMul/ReadVariableOp?=sequential_284/lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp?sequential_284/lstm_854/while[
sequential_284/lstm_852/ShapeShapelstm_852_input*
T0*
_output_shapes
:u
+sequential_284/lstm_852/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_284/lstm_852/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_284/lstm_852/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_284/lstm_852/strided_sliceStridedSlice&sequential_284/lstm_852/Shape:output:04sequential_284/lstm_852/strided_slice/stack:output:06sequential_284/lstm_852/strided_slice/stack_1:output:06sequential_284/lstm_852/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_284/lstm_852/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_284/lstm_852/zeros/packedPack.sequential_284/lstm_852/strided_slice:output:0/sequential_284/lstm_852/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_284/lstm_852/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_284/lstm_852/zerosFill-sequential_284/lstm_852/zeros/packed:output:0,sequential_284/lstm_852/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_284/lstm_852/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_284/lstm_852/zeros_1/packedPack.sequential_284/lstm_852/strided_slice:output:01sequential_284/lstm_852/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_284/lstm_852/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_284/lstm_852/zeros_1Fill/sequential_284/lstm_852/zeros_1/packed:output:0.sequential_284/lstm_852/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_284/lstm_852/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_284/lstm_852/transpose	Transposelstm_852_input/sequential_284/lstm_852/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_284/lstm_852/Shape_1Shape%sequential_284/lstm_852/transpose:y:0*
T0*
_output_shapes
:w
-sequential_284/lstm_852/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_852/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_284/lstm_852/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_852/strided_slice_1StridedSlice(sequential_284/lstm_852/Shape_1:output:06sequential_284/lstm_852/strided_slice_1/stack:output:08sequential_284/lstm_852/strided_slice_1/stack_1:output:08sequential_284/lstm_852/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_284/lstm_852/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_284/lstm_852/TensorArrayV2TensorListReserve<sequential_284/lstm_852/TensorArrayV2/element_shape:output:00sequential_284/lstm_852/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_284/lstm_852/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_284/lstm_852/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_284/lstm_852/transpose:y:0Vsequential_284/lstm_852/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_284/lstm_852/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_852/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_284/lstm_852/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_852/strided_slice_2StridedSlice%sequential_284/lstm_852/transpose:y:06sequential_284/lstm_852/strided_slice_2/stack:output:08sequential_284/lstm_852/strided_slice_2/stack_1:output:08sequential_284/lstm_852/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_284/lstm_852/lstm_cell_852/MatMul/ReadVariableOpReadVariableOpDsequential_284_lstm_852_lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_284/lstm_852/lstm_cell_852/MatMulMatMul0sequential_284/lstm_852/strided_slice_2:output:0Csequential_284/lstm_852/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_284/lstm_852/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOpFsequential_284_lstm_852_lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_284/lstm_852/lstm_cell_852/MatMul_1MatMul&sequential_284/lstm_852/zeros:output:0Esequential_284/lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_284/lstm_852/lstm_cell_852/addAddV26sequential_284/lstm_852/lstm_cell_852/MatMul:product:08sequential_284/lstm_852/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_284/lstm_852/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOpEsequential_284_lstm_852_lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_284/lstm_852/lstm_cell_852/BiasAddBiasAdd-sequential_284/lstm_852/lstm_cell_852/add:z:0Dsequential_284/lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_284/lstm_852/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_284/lstm_852/lstm_cell_852/splitSplit>sequential_284/lstm_852/lstm_cell_852/split/split_dim:output:06sequential_284/lstm_852/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_284/lstm_852/lstm_cell_852/SigmoidSigmoid4sequential_284/lstm_852/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_284/lstm_852/lstm_cell_852/Sigmoid_1Sigmoid4sequential_284/lstm_852/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_284/lstm_852/lstm_cell_852/mulMul3sequential_284/lstm_852/lstm_cell_852/Sigmoid_1:y:0(sequential_284/lstm_852/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_284/lstm_852/lstm_cell_852/ReluRelu4sequential_284/lstm_852/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_284/lstm_852/lstm_cell_852/mul_1Mul1sequential_284/lstm_852/lstm_cell_852/Sigmoid:y:08sequential_284/lstm_852/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_284/lstm_852/lstm_cell_852/add_1AddV2-sequential_284/lstm_852/lstm_cell_852/mul:z:0/sequential_284/lstm_852/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_284/lstm_852/lstm_cell_852/Sigmoid_2Sigmoid4sequential_284/lstm_852/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_284/lstm_852/lstm_cell_852/Relu_1Relu/sequential_284/lstm_852/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_284/lstm_852/lstm_cell_852/mul_2Mul3sequential_284/lstm_852/lstm_cell_852/Sigmoid_2:y:0:sequential_284/lstm_852/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_284/lstm_852/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_284/lstm_852/TensorArrayV2_1TensorListReserve>sequential_284/lstm_852/TensorArrayV2_1/element_shape:output:00sequential_284/lstm_852/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_284/lstm_852/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_284/lstm_852/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_284/lstm_852/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_284/lstm_852/whileWhile3sequential_284/lstm_852/while/loop_counter:output:09sequential_284/lstm_852/while/maximum_iterations:output:0%sequential_284/lstm_852/time:output:00sequential_284/lstm_852/TensorArrayV2_1:handle:0&sequential_284/lstm_852/zeros:output:0(sequential_284/lstm_852/zeros_1:output:00sequential_284/lstm_852/strided_slice_1:output:0Osequential_284/lstm_852/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_284_lstm_852_lstm_cell_852_matmul_readvariableop_resourceFsequential_284_lstm_852_lstm_cell_852_matmul_1_readvariableop_resourceEsequential_284_lstm_852_lstm_cell_852_biasadd_readvariableop_resource*
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
*sequential_284_lstm_852_while_body_5117595*6
cond.R,
*sequential_284_lstm_852_while_cond_5117594*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_284/lstm_852/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_284/lstm_852/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_284/lstm_852/while:output:3Qsequential_284/lstm_852/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_284/lstm_852/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_284/lstm_852/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_852/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_852/strided_slice_3StridedSliceCsequential_284/lstm_852/TensorArrayV2Stack/TensorListStack:tensor:06sequential_284/lstm_852/strided_slice_3/stack:output:08sequential_284/lstm_852/strided_slice_3/stack_1:output:08sequential_284/lstm_852/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_284/lstm_852/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_284/lstm_852/transpose_1	TransposeCsequential_284/lstm_852/TensorArrayV2Stack/TensorListStack:tensor:01sequential_284/lstm_852/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_284/lstm_852/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_284/lstm_853/ShapeShape'sequential_284/lstm_852/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_284/lstm_853/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_284/lstm_853/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_284/lstm_853/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_284/lstm_853/strided_sliceStridedSlice&sequential_284/lstm_853/Shape:output:04sequential_284/lstm_853/strided_slice/stack:output:06sequential_284/lstm_853/strided_slice/stack_1:output:06sequential_284/lstm_853/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_284/lstm_853/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_284/lstm_853/zeros/packedPack.sequential_284/lstm_853/strided_slice:output:0/sequential_284/lstm_853/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_284/lstm_853/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_284/lstm_853/zerosFill-sequential_284/lstm_853/zeros/packed:output:0,sequential_284/lstm_853/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_284/lstm_853/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_284/lstm_853/zeros_1/packedPack.sequential_284/lstm_853/strided_slice:output:01sequential_284/lstm_853/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_284/lstm_853/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_284/lstm_853/zeros_1Fill/sequential_284/lstm_853/zeros_1/packed:output:0.sequential_284/lstm_853/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_284/lstm_853/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_284/lstm_853/transpose	Transpose'sequential_284/lstm_852/transpose_1:y:0/sequential_284/lstm_853/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_284/lstm_853/Shape_1Shape%sequential_284/lstm_853/transpose:y:0*
T0*
_output_shapes
:w
-sequential_284/lstm_853/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_853/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_284/lstm_853/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_853/strided_slice_1StridedSlice(sequential_284/lstm_853/Shape_1:output:06sequential_284/lstm_853/strided_slice_1/stack:output:08sequential_284/lstm_853/strided_slice_1/stack_1:output:08sequential_284/lstm_853/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_284/lstm_853/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_284/lstm_853/TensorArrayV2TensorListReserve<sequential_284/lstm_853/TensorArrayV2/element_shape:output:00sequential_284/lstm_853/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_284/lstm_853/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_284/lstm_853/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_284/lstm_853/transpose:y:0Vsequential_284/lstm_853/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_284/lstm_853/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_853/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_284/lstm_853/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_853/strided_slice_2StridedSlice%sequential_284/lstm_853/transpose:y:06sequential_284/lstm_853/strided_slice_2/stack:output:08sequential_284/lstm_853/strided_slice_2/stack_1:output:08sequential_284/lstm_853/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_284/lstm_853/lstm_cell_853/MatMul/ReadVariableOpReadVariableOpDsequential_284_lstm_853_lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_284/lstm_853/lstm_cell_853/MatMulMatMul0sequential_284/lstm_853/strided_slice_2:output:0Csequential_284/lstm_853/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_284/lstm_853/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOpFsequential_284_lstm_853_lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_284/lstm_853/lstm_cell_853/MatMul_1MatMul&sequential_284/lstm_853/zeros:output:0Esequential_284/lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_284/lstm_853/lstm_cell_853/addAddV26sequential_284/lstm_853/lstm_cell_853/MatMul:product:08sequential_284/lstm_853/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_284/lstm_853/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOpEsequential_284_lstm_853_lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_284/lstm_853/lstm_cell_853/BiasAddBiasAdd-sequential_284/lstm_853/lstm_cell_853/add:z:0Dsequential_284/lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_284/lstm_853/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_284/lstm_853/lstm_cell_853/splitSplit>sequential_284/lstm_853/lstm_cell_853/split/split_dim:output:06sequential_284/lstm_853/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_284/lstm_853/lstm_cell_853/SigmoidSigmoid4sequential_284/lstm_853/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_284/lstm_853/lstm_cell_853/Sigmoid_1Sigmoid4sequential_284/lstm_853/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_284/lstm_853/lstm_cell_853/mulMul3sequential_284/lstm_853/lstm_cell_853/Sigmoid_1:y:0(sequential_284/lstm_853/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_284/lstm_853/lstm_cell_853/ReluRelu4sequential_284/lstm_853/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_284/lstm_853/lstm_cell_853/mul_1Mul1sequential_284/lstm_853/lstm_cell_853/Sigmoid:y:08sequential_284/lstm_853/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_284/lstm_853/lstm_cell_853/add_1AddV2-sequential_284/lstm_853/lstm_cell_853/mul:z:0/sequential_284/lstm_853/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_284/lstm_853/lstm_cell_853/Sigmoid_2Sigmoid4sequential_284/lstm_853/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_284/lstm_853/lstm_cell_853/Relu_1Relu/sequential_284/lstm_853/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_284/lstm_853/lstm_cell_853/mul_2Mul3sequential_284/lstm_853/lstm_cell_853/Sigmoid_2:y:0:sequential_284/lstm_853/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_284/lstm_853/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_284/lstm_853/TensorArrayV2_1TensorListReserve>sequential_284/lstm_853/TensorArrayV2_1/element_shape:output:00sequential_284/lstm_853/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_284/lstm_853/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_284/lstm_853/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_284/lstm_853/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_284/lstm_853/whileWhile3sequential_284/lstm_853/while/loop_counter:output:09sequential_284/lstm_853/while/maximum_iterations:output:0%sequential_284/lstm_853/time:output:00sequential_284/lstm_853/TensorArrayV2_1:handle:0&sequential_284/lstm_853/zeros:output:0(sequential_284/lstm_853/zeros_1:output:00sequential_284/lstm_853/strided_slice_1:output:0Osequential_284/lstm_853/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_284_lstm_853_lstm_cell_853_matmul_readvariableop_resourceFsequential_284_lstm_853_lstm_cell_853_matmul_1_readvariableop_resourceEsequential_284_lstm_853_lstm_cell_853_biasadd_readvariableop_resource*
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
*sequential_284_lstm_853_while_body_5117734*6
cond.R,
*sequential_284_lstm_853_while_cond_5117733*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_284/lstm_853/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_284/lstm_853/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_284/lstm_853/while:output:3Qsequential_284/lstm_853/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_284/lstm_853/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_284/lstm_853/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_853/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_853/strided_slice_3StridedSliceCsequential_284/lstm_853/TensorArrayV2Stack/TensorListStack:tensor:06sequential_284/lstm_853/strided_slice_3/stack:output:08sequential_284/lstm_853/strided_slice_3/stack_1:output:08sequential_284/lstm_853/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_284/lstm_853/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_284/lstm_853/transpose_1	TransposeCsequential_284/lstm_853/TensorArrayV2Stack/TensorListStack:tensor:01sequential_284/lstm_853/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_284/lstm_853/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_284/lstm_854/ShapeShape'sequential_284/lstm_853/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_284/lstm_854/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_284/lstm_854/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_284/lstm_854/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_284/lstm_854/strided_sliceStridedSlice&sequential_284/lstm_854/Shape:output:04sequential_284/lstm_854/strided_slice/stack:output:06sequential_284/lstm_854/strided_slice/stack_1:output:06sequential_284/lstm_854/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_284/lstm_854/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_284/lstm_854/zeros/packedPack.sequential_284/lstm_854/strided_slice:output:0/sequential_284/lstm_854/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_284/lstm_854/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_284/lstm_854/zerosFill-sequential_284/lstm_854/zeros/packed:output:0,sequential_284/lstm_854/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_284/lstm_854/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_284/lstm_854/zeros_1/packedPack.sequential_284/lstm_854/strided_slice:output:01sequential_284/lstm_854/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_284/lstm_854/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_284/lstm_854/zeros_1Fill/sequential_284/lstm_854/zeros_1/packed:output:0.sequential_284/lstm_854/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_284/lstm_854/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_284/lstm_854/transpose	Transpose'sequential_284/lstm_853/transpose_1:y:0/sequential_284/lstm_854/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_284/lstm_854/Shape_1Shape%sequential_284/lstm_854/transpose:y:0*
T0*
_output_shapes
:w
-sequential_284/lstm_854/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_854/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_284/lstm_854/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_854/strided_slice_1StridedSlice(sequential_284/lstm_854/Shape_1:output:06sequential_284/lstm_854/strided_slice_1/stack:output:08sequential_284/lstm_854/strided_slice_1/stack_1:output:08sequential_284/lstm_854/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_284/lstm_854/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_284/lstm_854/TensorArrayV2TensorListReserve<sequential_284/lstm_854/TensorArrayV2/element_shape:output:00sequential_284/lstm_854/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_284/lstm_854/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_284/lstm_854/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_284/lstm_854/transpose:y:0Vsequential_284/lstm_854/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_284/lstm_854/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_854/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_284/lstm_854/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_854/strided_slice_2StridedSlice%sequential_284/lstm_854/transpose:y:06sequential_284/lstm_854/strided_slice_2/stack:output:08sequential_284/lstm_854/strided_slice_2/stack_1:output:08sequential_284/lstm_854/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_284/lstm_854/lstm_cell_854/MatMul/ReadVariableOpReadVariableOpDsequential_284_lstm_854_lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_284/lstm_854/lstm_cell_854/MatMulMatMul0sequential_284/lstm_854/strided_slice_2:output:0Csequential_284/lstm_854/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_284/lstm_854/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOpFsequential_284_lstm_854_lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_284/lstm_854/lstm_cell_854/MatMul_1MatMul&sequential_284/lstm_854/zeros:output:0Esequential_284/lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_284/lstm_854/lstm_cell_854/addAddV26sequential_284/lstm_854/lstm_cell_854/MatMul:product:08sequential_284/lstm_854/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_284/lstm_854/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOpEsequential_284_lstm_854_lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_284/lstm_854/lstm_cell_854/BiasAddBiasAdd-sequential_284/lstm_854/lstm_cell_854/add:z:0Dsequential_284/lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_284/lstm_854/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_284/lstm_854/lstm_cell_854/splitSplit>sequential_284/lstm_854/lstm_cell_854/split/split_dim:output:06sequential_284/lstm_854/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_284/lstm_854/lstm_cell_854/SigmoidSigmoid4sequential_284/lstm_854/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_284/lstm_854/lstm_cell_854/Sigmoid_1Sigmoid4sequential_284/lstm_854/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_284/lstm_854/lstm_cell_854/mulMul3sequential_284/lstm_854/lstm_cell_854/Sigmoid_1:y:0(sequential_284/lstm_854/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_284/lstm_854/lstm_cell_854/ReluRelu4sequential_284/lstm_854/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_284/lstm_854/lstm_cell_854/mul_1Mul1sequential_284/lstm_854/lstm_cell_854/Sigmoid:y:08sequential_284/lstm_854/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_284/lstm_854/lstm_cell_854/add_1AddV2-sequential_284/lstm_854/lstm_cell_854/mul:z:0/sequential_284/lstm_854/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_284/lstm_854/lstm_cell_854/Sigmoid_2Sigmoid4sequential_284/lstm_854/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_284/lstm_854/lstm_cell_854/Relu_1Relu/sequential_284/lstm_854/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_284/lstm_854/lstm_cell_854/mul_2Mul3sequential_284/lstm_854/lstm_cell_854/Sigmoid_2:y:0:sequential_284/lstm_854/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_284/lstm_854/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_284/lstm_854/TensorArrayV2_1TensorListReserve>sequential_284/lstm_854/TensorArrayV2_1/element_shape:output:00sequential_284/lstm_854/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_284/lstm_854/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_284/lstm_854/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_284/lstm_854/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_284/lstm_854/whileWhile3sequential_284/lstm_854/while/loop_counter:output:09sequential_284/lstm_854/while/maximum_iterations:output:0%sequential_284/lstm_854/time:output:00sequential_284/lstm_854/TensorArrayV2_1:handle:0&sequential_284/lstm_854/zeros:output:0(sequential_284/lstm_854/zeros_1:output:00sequential_284/lstm_854/strided_slice_1:output:0Osequential_284/lstm_854/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_284_lstm_854_lstm_cell_854_matmul_readvariableop_resourceFsequential_284_lstm_854_lstm_cell_854_matmul_1_readvariableop_resourceEsequential_284_lstm_854_lstm_cell_854_biasadd_readvariableop_resource*
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
*sequential_284_lstm_854_while_body_5117873*6
cond.R,
*sequential_284_lstm_854_while_cond_5117872*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_284/lstm_854/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_284/lstm_854/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_284/lstm_854/while:output:3Qsequential_284/lstm_854/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_284/lstm_854/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_284/lstm_854/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_284/lstm_854/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_284/lstm_854/strided_slice_3StridedSliceCsequential_284/lstm_854/TensorArrayV2Stack/TensorListStack:tensor:06sequential_284/lstm_854/strided_slice_3/stack:output:08sequential_284/lstm_854/strided_slice_3/stack_1:output:08sequential_284/lstm_854/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_284/lstm_854/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_284/lstm_854/transpose_1	TransposeCsequential_284/lstm_854/TensorArrayV2Stack/TensorListStack:tensor:01sequential_284/lstm_854/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_284/lstm_854/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_284/dense_284/MatMul/ReadVariableOpReadVariableOp7sequential_284_dense_284_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_284/dense_284/MatMulMatMul0sequential_284/lstm_854/strided_slice_3:output:06sequential_284/dense_284/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_284/dense_284/BiasAdd/ReadVariableOpReadVariableOp8sequential_284_dense_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_284/dense_284/BiasAddBiasAdd)sequential_284/dense_284/MatMul:product:07sequential_284/dense_284/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_284/dense_284/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_284/dense_284/BiasAdd/ReadVariableOp/^sequential_284/dense_284/MatMul/ReadVariableOp=^sequential_284/lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp<^sequential_284/lstm_852/lstm_cell_852/MatMul/ReadVariableOp>^sequential_284/lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp^sequential_284/lstm_852/while=^sequential_284/lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp<^sequential_284/lstm_853/lstm_cell_853/MatMul/ReadVariableOp>^sequential_284/lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp^sequential_284/lstm_853/while=^sequential_284/lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp<^sequential_284/lstm_854/lstm_cell_854/MatMul/ReadVariableOp>^sequential_284/lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp^sequential_284/lstm_854/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_284/dense_284/BiasAdd/ReadVariableOp/sequential_284/dense_284/BiasAdd/ReadVariableOp2`
.sequential_284/dense_284/MatMul/ReadVariableOp.sequential_284/dense_284/MatMul/ReadVariableOp2|
<sequential_284/lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp<sequential_284/lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp2z
;sequential_284/lstm_852/lstm_cell_852/MatMul/ReadVariableOp;sequential_284/lstm_852/lstm_cell_852/MatMul/ReadVariableOp2~
=sequential_284/lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp=sequential_284/lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp2>
sequential_284/lstm_852/whilesequential_284/lstm_852/while2|
<sequential_284/lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp<sequential_284/lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp2z
;sequential_284/lstm_853/lstm_cell_853/MatMul/ReadVariableOp;sequential_284/lstm_853/lstm_cell_853/MatMul/ReadVariableOp2~
=sequential_284/lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp=sequential_284/lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp2>
sequential_284/lstm_853/whilesequential_284/lstm_853/while2|
<sequential_284/lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp<sequential_284/lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp2z
;sequential_284/lstm_854/lstm_cell_854/MatMul/ReadVariableOp;sequential_284/lstm_854/lstm_cell_854/MatMul/ReadVariableOp2~
=sequential_284/lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp=sequential_284/lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp2>
sequential_284/lstm_854/whilesequential_284/lstm_854/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_852_input
?
?
*sequential_284_lstm_853_while_cond_5117733L
Hsequential_284_lstm_853_while_sequential_284_lstm_853_while_loop_counterR
Nsequential_284_lstm_853_while_sequential_284_lstm_853_while_maximum_iterations-
)sequential_284_lstm_853_while_placeholder/
+sequential_284_lstm_853_while_placeholder_1/
+sequential_284_lstm_853_while_placeholder_2/
+sequential_284_lstm_853_while_placeholder_3N
Jsequential_284_lstm_853_while_less_sequential_284_lstm_853_strided_slice_1e
asequential_284_lstm_853_while_sequential_284_lstm_853_while_cond_5117733___redundant_placeholder0e
asequential_284_lstm_853_while_sequential_284_lstm_853_while_cond_5117733___redundant_placeholder1e
asequential_284_lstm_853_while_sequential_284_lstm_853_while_cond_5117733___redundant_placeholder2e
asequential_284_lstm_853_while_sequential_284_lstm_853_while_cond_5117733___redundant_placeholder3*
&sequential_284_lstm_853_while_identity
?
"sequential_284/lstm_853/while/LessLess)sequential_284_lstm_853_while_placeholderJsequential_284_lstm_853_while_less_sequential_284_lstm_853_strided_slice_1*
T0*
_output_shapes
: {
&sequential_284/lstm_853/while/IdentityIdentity&sequential_284/lstm_853/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_284_lstm_853_while_identity/sequential_284/lstm_853/while/Identity:output:0*(
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
while_body_5119759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_853_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_853_matmul_readvariableop_resource:	d?G
4while_lstm_cell_853_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_853_biasadd_readvariableop_resource:	???*while/lstm_cell_853/BiasAdd/ReadVariableOp?)while/lstm_cell_853/MatMul/ReadVariableOp?+while/lstm_cell_853/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_853/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_853/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_853/addAddV2$while/lstm_cell_853/MatMul:product:0&while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_853/BiasAddBiasAddwhile/lstm_cell_853/add:z:02while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_853/splitSplit,while/lstm_cell_853/split/split_dim:output:0$while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_853/SigmoidSigmoid"while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_1Sigmoid"while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mulMul!while/lstm_cell_853/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_853/ReluRelu"while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_1Mulwhile/lstm_cell_853/Sigmoid:y:0&while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/add_1AddV2while/lstm_cell_853/mul:z:0while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_2Sigmoid"while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_853/Relu_1Reluwhile/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_2Mul!while/lstm_cell_853/Sigmoid_2:y:0(while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_853/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_853/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_853/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_853/BiasAdd/ReadVariableOp*^while/lstm_cell_853/MatMul/ReadVariableOp,^while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_853_biasadd_readvariableop_resource5while_lstm_cell_853_biasadd_readvariableop_resource_0"n
4while_lstm_cell_853_matmul_1_readvariableop_resource6while_lstm_cell_853_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_853_matmul_readvariableop_resource4while_lstm_cell_853_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_853/BiasAdd/ReadVariableOp*while/lstm_cell_853/BiasAdd/ReadVariableOp2V
)while/lstm_cell_853/MatMul/ReadVariableOp)while/lstm_cell_853/MatMul/ReadVariableOp2Z
+while/lstm_cell_853/MatMul_1/ReadVariableOp+while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5121520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_852_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_852_matmul_readvariableop_resource:	?G
4while_lstm_cell_852_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_852_biasadd_readvariableop_resource:	???*while/lstm_cell_852/BiasAdd/ReadVariableOp?)while/lstm_cell_852/MatMul/ReadVariableOp?+while/lstm_cell_852/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_852/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_852/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_852/addAddV2$while/lstm_cell_852/MatMul:product:0&while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_852/BiasAddBiasAddwhile/lstm_cell_852/add:z:02while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_852/splitSplit,while/lstm_cell_852/split/split_dim:output:0$while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_852/SigmoidSigmoid"while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_1Sigmoid"while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mulMul!while/lstm_cell_852/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_852/ReluRelu"while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_1Mulwhile/lstm_cell_852/Sigmoid:y:0&while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/add_1AddV2while/lstm_cell_852/mul:z:0while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_2Sigmoid"while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_852/Relu_1Reluwhile/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_2Mul!while/lstm_cell_852/Sigmoid_2:y:0(while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_852/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_852/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_852/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_852/BiasAdd/ReadVariableOp*^while/lstm_cell_852/MatMul/ReadVariableOp,^while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_852_biasadd_readvariableop_resource5while_lstm_cell_852_biasadd_readvariableop_resource_0"n
4while_lstm_cell_852_matmul_1_readvariableop_resource6while_lstm_cell_852_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_852_matmul_readvariableop_resource4while_lstm_cell_852_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_852/BiasAdd/ReadVariableOp*while/lstm_cell_852/BiasAdd/ReadVariableOp2V
)while/lstm_cell_852/MatMul/ReadVariableOp)while/lstm_cell_852/MatMul/ReadVariableOp2Z
+while/lstm_cell_852/MatMul_1/ReadVariableOp+while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5121131

inputsH
5lstm_852_lstm_cell_852_matmul_readvariableop_resource:	?J
7lstm_852_lstm_cell_852_matmul_1_readvariableop_resource:	d?E
6lstm_852_lstm_cell_852_biasadd_readvariableop_resource:	?H
5lstm_853_lstm_cell_853_matmul_readvariableop_resource:	d?J
7lstm_853_lstm_cell_853_matmul_1_readvariableop_resource:	2?E
6lstm_853_lstm_cell_853_biasadd_readvariableop_resource:	?G
5lstm_854_lstm_cell_854_matmul_readvariableop_resource:2(I
7lstm_854_lstm_cell_854_matmul_1_readvariableop_resource:
(D
6lstm_854_lstm_cell_854_biasadd_readvariableop_resource:(:
(dense_284_matmul_readvariableop_resource:
7
)dense_284_biasadd_readvariableop_resource:
identity?? dense_284/BiasAdd/ReadVariableOp?dense_284/MatMul/ReadVariableOp?-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp?,lstm_852/lstm_cell_852/MatMul/ReadVariableOp?.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp?lstm_852/while?-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp?,lstm_853/lstm_cell_853/MatMul/ReadVariableOp?.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp?lstm_853/while?-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp?,lstm_854/lstm_cell_854/MatMul/ReadVariableOp?.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp?lstm_854/whileD
lstm_852/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_852/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_852/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_852/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_sliceStridedSlicelstm_852/Shape:output:0%lstm_852/strided_slice/stack:output:0'lstm_852/strided_slice/stack_1:output:0'lstm_852/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_852/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_852/zeros/packedPacklstm_852/strided_slice:output:0 lstm_852/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_852/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_852/zerosFilllstm_852/zeros/packed:output:0lstm_852/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_852/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_852/zeros_1/packedPacklstm_852/strided_slice:output:0"lstm_852/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_852/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_852/zeros_1Fill lstm_852/zeros_1/packed:output:0lstm_852/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_852/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_852/transpose	Transposeinputs lstm_852/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_852/Shape_1Shapelstm_852/transpose:y:0*
T0*
_output_shapes
:h
lstm_852/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_852/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_852/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_slice_1StridedSlicelstm_852/Shape_1:output:0'lstm_852/strided_slice_1/stack:output:0)lstm_852/strided_slice_1/stack_1:output:0)lstm_852/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_852/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_852/TensorArrayV2TensorListReserve-lstm_852/TensorArrayV2/element_shape:output:0!lstm_852/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_852/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_852/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_852/transpose:y:0Glstm_852/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_852/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_852/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_852/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_slice_2StridedSlicelstm_852/transpose:y:0'lstm_852/strided_slice_2/stack:output:0)lstm_852/strided_slice_2/stack_1:output:0)lstm_852/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_852/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp5lstm_852_lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_852/lstm_cell_852/MatMulMatMul!lstm_852/strided_slice_2:output:04lstm_852/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp7lstm_852_lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_852/lstm_cell_852/MatMul_1MatMullstm_852/zeros:output:06lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_852/lstm_cell_852/addAddV2'lstm_852/lstm_cell_852/MatMul:product:0)lstm_852/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp6lstm_852_lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_852/lstm_cell_852/BiasAddBiasAddlstm_852/lstm_cell_852/add:z:05lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_852/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_852/lstm_cell_852/splitSplit/lstm_852/lstm_cell_852/split/split_dim:output:0'lstm_852/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_852/lstm_cell_852/SigmoidSigmoid%lstm_852/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_852/lstm_cell_852/Sigmoid_1Sigmoid%lstm_852/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/mulMul$lstm_852/lstm_cell_852/Sigmoid_1:y:0lstm_852/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_852/lstm_cell_852/ReluRelu%lstm_852/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/mul_1Mul"lstm_852/lstm_cell_852/Sigmoid:y:0)lstm_852/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/add_1AddV2lstm_852/lstm_cell_852/mul:z:0 lstm_852/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_852/lstm_cell_852/Sigmoid_2Sigmoid%lstm_852/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_852/lstm_cell_852/Relu_1Relu lstm_852/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/mul_2Mul$lstm_852/lstm_cell_852/Sigmoid_2:y:0+lstm_852/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_852/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_852/TensorArrayV2_1TensorListReserve/lstm_852/TensorArrayV2_1/element_shape:output:0!lstm_852/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_852/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_852/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_852/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_852/whileWhile$lstm_852/while/loop_counter:output:0*lstm_852/while/maximum_iterations:output:0lstm_852/time:output:0!lstm_852/TensorArrayV2_1:handle:0lstm_852/zeros:output:0lstm_852/zeros_1:output:0!lstm_852/strided_slice_1:output:0@lstm_852/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_852_lstm_cell_852_matmul_readvariableop_resource7lstm_852_lstm_cell_852_matmul_1_readvariableop_resource6lstm_852_lstm_cell_852_biasadd_readvariableop_resource*
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
lstm_852_while_body_5120763*'
condR
lstm_852_while_cond_5120762*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_852/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_852/TensorArrayV2Stack/TensorListStackTensorListStacklstm_852/while:output:3Blstm_852/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_852/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_852/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_852/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_slice_3StridedSlice4lstm_852/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_852/strided_slice_3/stack:output:0)lstm_852/strided_slice_3/stack_1:output:0)lstm_852/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_852/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_852/transpose_1	Transpose4lstm_852/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_852/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_852/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_853/ShapeShapelstm_852/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_853/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_853/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_853/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_sliceStridedSlicelstm_853/Shape:output:0%lstm_853/strided_slice/stack:output:0'lstm_853/strided_slice/stack_1:output:0'lstm_853/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_853/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_853/zeros/packedPacklstm_853/strided_slice:output:0 lstm_853/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_853/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_853/zerosFilllstm_853/zeros/packed:output:0lstm_853/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_853/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_853/zeros_1/packedPacklstm_853/strided_slice:output:0"lstm_853/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_853/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_853/zeros_1Fill lstm_853/zeros_1/packed:output:0lstm_853/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_853/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_853/transpose	Transposelstm_852/transpose_1:y:0 lstm_853/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_853/Shape_1Shapelstm_853/transpose:y:0*
T0*
_output_shapes
:h
lstm_853/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_853/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_853/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_slice_1StridedSlicelstm_853/Shape_1:output:0'lstm_853/strided_slice_1/stack:output:0)lstm_853/strided_slice_1/stack_1:output:0)lstm_853/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_853/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_853/TensorArrayV2TensorListReserve-lstm_853/TensorArrayV2/element_shape:output:0!lstm_853/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_853/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_853/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_853/transpose:y:0Glstm_853/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_853/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_853/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_853/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_slice_2StridedSlicelstm_853/transpose:y:0'lstm_853/strided_slice_2/stack:output:0)lstm_853/strided_slice_2/stack_1:output:0)lstm_853/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_853/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp5lstm_853_lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_853/lstm_cell_853/MatMulMatMul!lstm_853/strided_slice_2:output:04lstm_853/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp7lstm_853_lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_853/lstm_cell_853/MatMul_1MatMullstm_853/zeros:output:06lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_853/lstm_cell_853/addAddV2'lstm_853/lstm_cell_853/MatMul:product:0)lstm_853/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp6lstm_853_lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_853/lstm_cell_853/BiasAddBiasAddlstm_853/lstm_cell_853/add:z:05lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_853/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_853/lstm_cell_853/splitSplit/lstm_853/lstm_cell_853/split/split_dim:output:0'lstm_853/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_853/lstm_cell_853/SigmoidSigmoid%lstm_853/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_853/lstm_cell_853/Sigmoid_1Sigmoid%lstm_853/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/mulMul$lstm_853/lstm_cell_853/Sigmoid_1:y:0lstm_853/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_853/lstm_cell_853/ReluRelu%lstm_853/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/mul_1Mul"lstm_853/lstm_cell_853/Sigmoid:y:0)lstm_853/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/add_1AddV2lstm_853/lstm_cell_853/mul:z:0 lstm_853/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_853/lstm_cell_853/Sigmoid_2Sigmoid%lstm_853/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_853/lstm_cell_853/Relu_1Relu lstm_853/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/mul_2Mul$lstm_853/lstm_cell_853/Sigmoid_2:y:0+lstm_853/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_853/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_853/TensorArrayV2_1TensorListReserve/lstm_853/TensorArrayV2_1/element_shape:output:0!lstm_853/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_853/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_853/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_853/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_853/whileWhile$lstm_853/while/loop_counter:output:0*lstm_853/while/maximum_iterations:output:0lstm_853/time:output:0!lstm_853/TensorArrayV2_1:handle:0lstm_853/zeros:output:0lstm_853/zeros_1:output:0!lstm_853/strided_slice_1:output:0@lstm_853/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_853_lstm_cell_853_matmul_readvariableop_resource7lstm_853_lstm_cell_853_matmul_1_readvariableop_resource6lstm_853_lstm_cell_853_biasadd_readvariableop_resource*
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
lstm_853_while_body_5120902*'
condR
lstm_853_while_cond_5120901*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_853/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_853/TensorArrayV2Stack/TensorListStackTensorListStacklstm_853/while:output:3Blstm_853/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_853/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_853/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_853/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_slice_3StridedSlice4lstm_853/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_853/strided_slice_3/stack:output:0)lstm_853/strided_slice_3/stack_1:output:0)lstm_853/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_853/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_853/transpose_1	Transpose4lstm_853/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_853/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_853/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_854/ShapeShapelstm_853/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_854/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_854/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_854/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_sliceStridedSlicelstm_854/Shape:output:0%lstm_854/strided_slice/stack:output:0'lstm_854/strided_slice/stack_1:output:0'lstm_854/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_854/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_854/zeros/packedPacklstm_854/strided_slice:output:0 lstm_854/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_854/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_854/zerosFilllstm_854/zeros/packed:output:0lstm_854/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_854/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_854/zeros_1/packedPacklstm_854/strided_slice:output:0"lstm_854/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_854/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_854/zeros_1Fill lstm_854/zeros_1/packed:output:0lstm_854/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_854/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_854/transpose	Transposelstm_853/transpose_1:y:0 lstm_854/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_854/Shape_1Shapelstm_854/transpose:y:0*
T0*
_output_shapes
:h
lstm_854/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_854/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_854/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_slice_1StridedSlicelstm_854/Shape_1:output:0'lstm_854/strided_slice_1/stack:output:0)lstm_854/strided_slice_1/stack_1:output:0)lstm_854/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_854/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_854/TensorArrayV2TensorListReserve-lstm_854/TensorArrayV2/element_shape:output:0!lstm_854/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_854/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_854/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_854/transpose:y:0Glstm_854/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_854/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_854/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_854/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_slice_2StridedSlicelstm_854/transpose:y:0'lstm_854/strided_slice_2/stack:output:0)lstm_854/strided_slice_2/stack_1:output:0)lstm_854/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_854/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp5lstm_854_lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_854/lstm_cell_854/MatMulMatMul!lstm_854/strided_slice_2:output:04lstm_854/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp7lstm_854_lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_854/lstm_cell_854/MatMul_1MatMullstm_854/zeros:output:06lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_854/lstm_cell_854/addAddV2'lstm_854/lstm_cell_854/MatMul:product:0)lstm_854/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp6lstm_854_lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_854/lstm_cell_854/BiasAddBiasAddlstm_854/lstm_cell_854/add:z:05lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_854/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_854/lstm_cell_854/splitSplit/lstm_854/lstm_cell_854/split/split_dim:output:0'lstm_854/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_854/lstm_cell_854/SigmoidSigmoid%lstm_854/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_854/lstm_cell_854/Sigmoid_1Sigmoid%lstm_854/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/mulMul$lstm_854/lstm_cell_854/Sigmoid_1:y:0lstm_854/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_854/lstm_cell_854/ReluRelu%lstm_854/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/mul_1Mul"lstm_854/lstm_cell_854/Sigmoid:y:0)lstm_854/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/add_1AddV2lstm_854/lstm_cell_854/mul:z:0 lstm_854/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_854/lstm_cell_854/Sigmoid_2Sigmoid%lstm_854/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_854/lstm_cell_854/Relu_1Relu lstm_854/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/mul_2Mul$lstm_854/lstm_cell_854/Sigmoid_2:y:0+lstm_854/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_854/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_854/TensorArrayV2_1TensorListReserve/lstm_854/TensorArrayV2_1/element_shape:output:0!lstm_854/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_854/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_854/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_854/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_854/whileWhile$lstm_854/while/loop_counter:output:0*lstm_854/while/maximum_iterations:output:0lstm_854/time:output:0!lstm_854/TensorArrayV2_1:handle:0lstm_854/zeros:output:0lstm_854/zeros_1:output:0!lstm_854/strided_slice_1:output:0@lstm_854/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_854_lstm_cell_854_matmul_readvariableop_resource7lstm_854_lstm_cell_854_matmul_1_readvariableop_resource6lstm_854_lstm_cell_854_biasadd_readvariableop_resource*
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
lstm_854_while_body_5121041*'
condR
lstm_854_while_cond_5121040*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_854/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_854/TensorArrayV2Stack/TensorListStackTensorListStacklstm_854/while:output:3Blstm_854/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_854/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_854/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_854/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_slice_3StridedSlice4lstm_854/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_854/strided_slice_3/stack:output:0)lstm_854/strided_slice_3/stack_1:output:0)lstm_854/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_854/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_854/transpose_1	Transpose4lstm_854/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_854/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_854/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_284/MatMul/ReadVariableOpReadVariableOp(dense_284_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_284/MatMulMatMul!lstm_854/strided_slice_3:output:0'dense_284/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_284/BiasAdd/ReadVariableOpReadVariableOp)dense_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_284/BiasAddBiasAdddense_284/MatMul:product:0(dense_284/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_284/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_284/BiasAdd/ReadVariableOp ^dense_284/MatMul/ReadVariableOp.^lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp-^lstm_852/lstm_cell_852/MatMul/ReadVariableOp/^lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp^lstm_852/while.^lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp-^lstm_853/lstm_cell_853/MatMul/ReadVariableOp/^lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp^lstm_853/while.^lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp-^lstm_854/lstm_cell_854/MatMul/ReadVariableOp/^lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp^lstm_854/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_284/BiasAdd/ReadVariableOp dense_284/BiasAdd/ReadVariableOp2B
dense_284/MatMul/ReadVariableOpdense_284/MatMul/ReadVariableOp2^
-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp2\
,lstm_852/lstm_cell_852/MatMul/ReadVariableOp,lstm_852/lstm_cell_852/MatMul/ReadVariableOp2`
.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp2 
lstm_852/whilelstm_852/while2^
-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp2\
,lstm_853/lstm_cell_853/MatMul/ReadVariableOp,lstm_853/lstm_cell_853/MatMul/ReadVariableOp2`
.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp2 
lstm_853/whilelstm_853/while2^
-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp2\
,lstm_854/lstm_cell_854/MatMul/ReadVariableOp,lstm_854/lstm_cell_854/MatMul/ReadVariableOp2`
.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp2 
lstm_854/whilelstm_854/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5118934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5118934___redundant_placeholder05
1while_while_cond_5118934___redundant_placeholder15
1while_while_cond_5118934___redundant_placeholder25
1while_while_cond_5118934___redundant_placeholder3
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
lstm_853_while_cond_5120474.
*lstm_853_while_lstm_853_while_loop_counter4
0lstm_853_while_lstm_853_while_maximum_iterations
lstm_853_while_placeholder 
lstm_853_while_placeholder_1 
lstm_853_while_placeholder_2 
lstm_853_while_placeholder_30
,lstm_853_while_less_lstm_853_strided_slice_1G
Clstm_853_while_lstm_853_while_cond_5120474___redundant_placeholder0G
Clstm_853_while_lstm_853_while_cond_5120474___redundant_placeholder1G
Clstm_853_while_lstm_853_while_cond_5120474___redundant_placeholder2G
Clstm_853_while_lstm_853_while_cond_5120474___redundant_placeholder3
lstm_853_while_identity
?
lstm_853/while/LessLesslstm_853_while_placeholder,lstm_853_while_less_lstm_853_strided_slice_1*
T0*
_output_shapes
: ]
lstm_853/while/IdentityIdentitylstm_853/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_853_while_identity lstm_853/while/Identity:output:0*(
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
/__inference_lstm_cell_853_layer_call_fn_5123113

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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118380o
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
?C
?

lstm_852_while_body_5120763.
*lstm_852_while_lstm_852_while_loop_counter4
0lstm_852_while_lstm_852_while_maximum_iterations
lstm_852_while_placeholder 
lstm_852_while_placeholder_1 
lstm_852_while_placeholder_2 
lstm_852_while_placeholder_3-
)lstm_852_while_lstm_852_strided_slice_1_0i
elstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0:	?R
?lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?M
>lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
lstm_852_while_identity
lstm_852_while_identity_1
lstm_852_while_identity_2
lstm_852_while_identity_3
lstm_852_while_identity_4
lstm_852_while_identity_5+
'lstm_852_while_lstm_852_strided_slice_1g
clstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensorN
;lstm_852_while_lstm_cell_852_matmul_readvariableop_resource:	?P
=lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource:	d?K
<lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource:	???3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp?2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp?4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp?
@lstm_852/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_852/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensor_0lstm_852_while_placeholderIlstm_852/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp=lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_852/while/lstm_cell_852/MatMulMatMul9lstm_852/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp?lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_852/while/lstm_cell_852/MatMul_1MatMullstm_852_while_placeholder_2<lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_852/while/lstm_cell_852/addAddV2-lstm_852/while/lstm_cell_852/MatMul:product:0/lstm_852/while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp>lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_852/while/lstm_cell_852/BiasAddBiasAdd$lstm_852/while/lstm_cell_852/add:z:0;lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_852/while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_852/while/lstm_cell_852/splitSplit5lstm_852/while/lstm_cell_852/split/split_dim:output:0-lstm_852/while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_852/while/lstm_cell_852/SigmoidSigmoid+lstm_852/while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_852/while/lstm_cell_852/Sigmoid_1Sigmoid+lstm_852/while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_852/while/lstm_cell_852/mulMul*lstm_852/while/lstm_cell_852/Sigmoid_1:y:0lstm_852_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_852/while/lstm_cell_852/ReluRelu+lstm_852/while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_852/while/lstm_cell_852/mul_1Mul(lstm_852/while/lstm_cell_852/Sigmoid:y:0/lstm_852/while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_852/while/lstm_cell_852/add_1AddV2$lstm_852/while/lstm_cell_852/mul:z:0&lstm_852/while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_852/while/lstm_cell_852/Sigmoid_2Sigmoid+lstm_852/while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_852/while/lstm_cell_852/Relu_1Relu&lstm_852/while/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_852/while/lstm_cell_852/mul_2Mul*lstm_852/while/lstm_cell_852/Sigmoid_2:y:01lstm_852/while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_852/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_852_while_placeholder_1lstm_852_while_placeholder&lstm_852/while/lstm_cell_852/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_852/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_852/while/addAddV2lstm_852_while_placeholderlstm_852/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_852/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_852/while/add_1AddV2*lstm_852_while_lstm_852_while_loop_counterlstm_852/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_852/while/IdentityIdentitylstm_852/while/add_1:z:0^lstm_852/while/NoOp*
T0*
_output_shapes
: ?
lstm_852/while/Identity_1Identity0lstm_852_while_lstm_852_while_maximum_iterations^lstm_852/while/NoOp*
T0*
_output_shapes
: t
lstm_852/while/Identity_2Identitylstm_852/while/add:z:0^lstm_852/while/NoOp*
T0*
_output_shapes
: ?
lstm_852/while/Identity_3IdentityClstm_852/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_852/while/NoOp*
T0*
_output_shapes
: ?
lstm_852/while/Identity_4Identity&lstm_852/while/lstm_cell_852/mul_2:z:0^lstm_852/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_852/while/Identity_5Identity&lstm_852/while/lstm_cell_852/add_1:z:0^lstm_852/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_852/while/NoOpNoOp4^lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp3^lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp5^lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_852_while_identity lstm_852/while/Identity:output:0"?
lstm_852_while_identity_1"lstm_852/while/Identity_1:output:0"?
lstm_852_while_identity_2"lstm_852/while/Identity_2:output:0"?
lstm_852_while_identity_3"lstm_852/while/Identity_3:output:0"?
lstm_852_while_identity_4"lstm_852/while/Identity_4:output:0"?
lstm_852_while_identity_5"lstm_852/while/Identity_5:output:0"T
'lstm_852_while_lstm_852_strided_slice_1)lstm_852_while_lstm_852_strided_slice_1_0"~
<lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource>lstm_852_while_lstm_cell_852_biasadd_readvariableop_resource_0"?
=lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource?lstm_852_while_lstm_cell_852_matmul_1_readvariableop_resource_0"|
;lstm_852_while_lstm_cell_852_matmul_readvariableop_resource=lstm_852_while_lstm_cell_852_matmul_readvariableop_resource_0"?
clstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensorelstm_852_while_tensorarrayv2read_tensorlistgetitem_lstm_852_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp3lstm_852/while/lstm_cell_852/BiasAdd/ReadVariableOp2h
2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp2lstm_852/while/lstm_cell_852/MatMul/ReadVariableOp2l
4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp4lstm_852/while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_852_layer_call_fn_5123032

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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118176o
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5122998

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
while_body_5121377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_852_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_852_matmul_readvariableop_resource:	?G
4while_lstm_cell_852_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_852_biasadd_readvariableop_resource:	???*while/lstm_cell_852/BiasAdd/ReadVariableOp?)while/lstm_cell_852/MatMul/ReadVariableOp?+while/lstm_cell_852/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_852/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_852/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_852/addAddV2$while/lstm_cell_852/MatMul:product:0&while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_852/BiasAddBiasAddwhile/lstm_cell_852/add:z:02while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_852/splitSplit,while/lstm_cell_852/split/split_dim:output:0$while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_852/SigmoidSigmoid"while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_1Sigmoid"while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mulMul!while/lstm_cell_852/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_852/ReluRelu"while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_1Mulwhile/lstm_cell_852/Sigmoid:y:0&while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/add_1AddV2while/lstm_cell_852/mul:z:0while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_2Sigmoid"while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_852/Relu_1Reluwhile/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_2Mul!while/lstm_cell_852/Sigmoid_2:y:0(while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_852/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_852/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_852/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_852/BiasAdd/ReadVariableOp*^while/lstm_cell_852/MatMul/ReadVariableOp,^while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_852_biasadd_readvariableop_resource5while_lstm_cell_852_biasadd_readvariableop_resource_0"n
4while_lstm_cell_852_matmul_1_readvariableop_resource6while_lstm_cell_852_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_852_matmul_readvariableop_resource4while_lstm_cell_852_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_852/BiasAdd/ReadVariableOp*while/lstm_cell_852/BiasAdd/ReadVariableOp2V
)while/lstm_cell_852/MatMul/ReadVariableOp)while/lstm_cell_852/MatMul/ReadVariableOp2Z
+while/lstm_cell_852/MatMul_1/ReadVariableOp+while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119004

inputs'
lstm_cell_854_5118922:2('
lstm_cell_854_5118924:
(#
lstm_cell_854_5118926:(
identity??%lstm_cell_854/StatefulPartitionedCall?while;
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
%lstm_cell_854/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_854_5118922lstm_cell_854_5118924lstm_cell_854_5118926*
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118876n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_854_5118922lstm_cell_854_5118924lstm_cell_854_5118926*
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
while_body_5118935*
condR
while_cond_5118934*K
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
NoOpNoOp&^lstm_cell_854/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_854/StatefulPartitionedCall%lstm_cell_854/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_5120223
lstm_852_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_852_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5117963o
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
_user_specified_namelstm_852_input
?
?
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5123260

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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119312

inputs?
,lstm_cell_853_matmul_readvariableop_resource:	d?A
.lstm_cell_853_matmul_1_readvariableop_resource:	2?<
-lstm_cell_853_biasadd_readvariableop_resource:	?
identity??$lstm_cell_853/BiasAdd/ReadVariableOp?#lstm_cell_853/MatMul/ReadVariableOp?%lstm_cell_853/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_853/MatMul/ReadVariableOpReadVariableOp,lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_853/MatMulMatMulstrided_slice_2:output:0+lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_853/MatMul_1MatMulzeros:output:0-lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_853/addAddV2lstm_cell_853/MatMul:product:0 lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_853/BiasAddBiasAddlstm_cell_853/add:z:0,lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_853/splitSplit&lstm_cell_853/split/split_dim:output:0lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_853/SigmoidSigmoidlstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_1Sigmoidlstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_853/mulMullstm_cell_853/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_853/ReluRelulstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_1Mullstm_cell_853/Sigmoid:y:0 lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_853/add_1AddV2lstm_cell_853/mul:z:0lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_2Sigmoidlstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_853/Relu_1Relulstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_2Mullstm_cell_853/Sigmoid_2:y:0"lstm_cell_853/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_853_matmul_readvariableop_resource.lstm_cell_853_matmul_1_readvariableop_resource-lstm_cell_853_biasadd_readvariableop_resource*
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
while_body_5119228*
condR
while_cond_5119227*K
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
NoOpNoOp%^lstm_cell_853/BiasAdd/ReadVariableOp$^lstm_cell_853/MatMul/ReadVariableOp&^lstm_cell_853/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_853/BiasAdd/ReadVariableOp$lstm_cell_853/BiasAdd/ReadVariableOp2J
#lstm_cell_853/MatMul/ReadVariableOp#lstm_cell_853/MatMul/ReadVariableOp2N
%lstm_cell_853/MatMul_1/ReadVariableOp%lstm_cell_853/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5119593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5119593___redundant_placeholder05
1while_while_cond_5119593___redundant_placeholder15
1while_while_cond_5119593___redundant_placeholder25
1while_while_cond_5119593___redundant_placeholder3
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118730

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
0__inference_sequential_284_layer_call_fn_5120128
lstm_852_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_852_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120076o
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
_user_specified_namelstm_852_input
?
?
while_cond_5118043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5118043___redundant_placeholder05
1while_while_cond_5118043___redundant_placeholder15
1while_while_cond_5118043___redundant_placeholder25
1while_while_cond_5118043___redundant_placeholder3
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122363

inputs?
,lstm_cell_853_matmul_readvariableop_resource:	d?A
.lstm_cell_853_matmul_1_readvariableop_resource:	2?<
-lstm_cell_853_biasadd_readvariableop_resource:	?
identity??$lstm_cell_853/BiasAdd/ReadVariableOp?#lstm_cell_853/MatMul/ReadVariableOp?%lstm_cell_853/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_853/MatMul/ReadVariableOpReadVariableOp,lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_853/MatMulMatMulstrided_slice_2:output:0+lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_853/MatMul_1MatMulzeros:output:0-lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_853/addAddV2lstm_cell_853/MatMul:product:0 lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_853/BiasAddBiasAddlstm_cell_853/add:z:0,lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_853/splitSplit&lstm_cell_853/split/split_dim:output:0lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_853/SigmoidSigmoidlstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_1Sigmoidlstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_853/mulMullstm_cell_853/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_853/ReluRelulstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_1Mullstm_cell_853/Sigmoid:y:0 lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_853/add_1AddV2lstm_cell_853/mul:z:0lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_2Sigmoidlstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_853/Relu_1Relulstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_2Mullstm_cell_853/Sigmoid_2:y:0"lstm_cell_853/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_853_matmul_readvariableop_resource.lstm_cell_853_matmul_1_readvariableop_resource-lstm_cell_853_biasadd_readvariableop_resource*
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
while_body_5122279*
condR
while_cond_5122278*K
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
NoOpNoOp%^lstm_cell_853/BiasAdd/ReadVariableOp$^lstm_cell_853/MatMul/ReadVariableOp&^lstm_cell_853/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_853/BiasAdd/ReadVariableOp$lstm_cell_853/BiasAdd/ReadVariableOp2J
#lstm_cell_853/MatMul/ReadVariableOp#lstm_cell_853/MatMul/ReadVariableOp2N
%lstm_cell_853/MatMul_1/ReadVariableOp%lstm_cell_853/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5122751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5122751___redundant_placeholder05
1while_while_cond_5122751___redundant_placeholder15
1while_while_cond_5122751___redundant_placeholder25
1while_while_cond_5122751___redundant_placeholder3
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
lstm_854_while_cond_5120613.
*lstm_854_while_lstm_854_while_loop_counter4
0lstm_854_while_lstm_854_while_maximum_iterations
lstm_854_while_placeholder 
lstm_854_while_placeholder_1 
lstm_854_while_placeholder_2 
lstm_854_while_placeholder_30
,lstm_854_while_less_lstm_854_strided_slice_1G
Clstm_854_while_lstm_854_while_cond_5120613___redundant_placeholder0G
Clstm_854_while_lstm_854_while_cond_5120613___redundant_placeholder1G
Clstm_854_while_lstm_854_while_cond_5120613___redundant_placeholder2G
Clstm_854_while_lstm_854_while_cond_5120613___redundant_placeholder3
lstm_854_while_identity
?
lstm_854/while/LessLesslstm_854_while_placeholder,lstm_854_while_less_lstm_854_strided_slice_1*
T0*
_output_shapes
: ]
lstm_854/while/IdentityIdentitylstm_854/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_854_while_identity lstm_854/while/Identity:output:0*(
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5119162

inputs?
,lstm_cell_852_matmul_readvariableop_resource:	?A
.lstm_cell_852_matmul_1_readvariableop_resource:	d?<
-lstm_cell_852_biasadd_readvariableop_resource:	?
identity??$lstm_cell_852/BiasAdd/ReadVariableOp?#lstm_cell_852/MatMul/ReadVariableOp?%lstm_cell_852/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_852/MatMul/ReadVariableOpReadVariableOp,lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_852/MatMulMatMulstrided_slice_2:output:0+lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_852/MatMul_1MatMulzeros:output:0-lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_852/addAddV2lstm_cell_852/MatMul:product:0 lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_852/BiasAddBiasAddlstm_cell_852/add:z:0,lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_852/splitSplit&lstm_cell_852/split/split_dim:output:0lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_852/SigmoidSigmoidlstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_1Sigmoidlstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_852/mulMullstm_cell_852/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_852/ReluRelulstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_1Mullstm_cell_852/Sigmoid:y:0 lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_852/add_1AddV2lstm_cell_852/mul:z:0lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_852/Sigmoid_2Sigmoidlstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_852/Relu_1Relulstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_852/mul_2Mullstm_cell_852/Sigmoid_2:y:0"lstm_cell_852/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_852_matmul_readvariableop_resource.lstm_cell_852_matmul_1_readvariableop_resource-lstm_cell_852_biasadd_readvariableop_resource*
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
while_body_5119078*
condR
while_cond_5119077*K
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
NoOpNoOp%^lstm_cell_852/BiasAdd/ReadVariableOp$^lstm_cell_852/MatMul/ReadVariableOp&^lstm_cell_852/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_852/BiasAdd/ReadVariableOp$lstm_cell_852/BiasAdd/ReadVariableOp2J
#lstm_cell_852/MatMul/ReadVariableOp#lstm_cell_852/MatMul/ReadVariableOp2N
%lstm_cell_852/MatMul_1/ReadVariableOp%lstm_cell_852/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5121663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_852_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_852_matmul_readvariableop_resource:	?G
4while_lstm_cell_852_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_852_biasadd_readvariableop_resource:	???*while/lstm_cell_852/BiasAdd/ReadVariableOp?)while/lstm_cell_852/MatMul/ReadVariableOp?+while/lstm_cell_852/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_852/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_852/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_852/addAddV2$while/lstm_cell_852/MatMul:product:0&while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_852/BiasAddBiasAddwhile/lstm_cell_852/add:z:02while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_852/splitSplit,while/lstm_cell_852/split/split_dim:output:0$while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_852/SigmoidSigmoid"while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_1Sigmoid"while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mulMul!while/lstm_cell_852/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_852/ReluRelu"while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_1Mulwhile/lstm_cell_852/Sigmoid:y:0&while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/add_1AddV2while/lstm_cell_852/mul:z:0while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_2Sigmoid"while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_852/Relu_1Reluwhile/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_2Mul!while/lstm_cell_852/Sigmoid_2:y:0(while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_852/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_852/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_852/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_852/BiasAdd/ReadVariableOp*^while/lstm_cell_852/MatMul/ReadVariableOp,^while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_852_biasadd_readvariableop_resource5while_lstm_cell_852_biasadd_readvariableop_resource_0"n
4while_lstm_cell_852_matmul_1_readvariableop_resource6while_lstm_cell_852_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_852_matmul_readvariableop_resource4while_lstm_cell_852_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_852/BiasAdd/ReadVariableOp*while/lstm_cell_852/BiasAdd/ReadVariableOp2V
)while/lstm_cell_852/MatMul/ReadVariableOp)while/lstm_cell_852/MatMul/ReadVariableOp2Z
+while/lstm_cell_852/MatMul_1/ReadVariableOp+while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5121662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5121662___redundant_placeholder05
1while_while_cond_5121662___redundant_placeholder15
1while_while_cond_5121662___redundant_placeholder25
1while_while_cond_5121662___redundant_placeholder3
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
*__inference_lstm_853_layer_call_fn_5121780

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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119312s
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
?W
?
 __inference__traced_save_5123435
file_prefix/
+savev2_dense_284_kernel_read_readvariableop-
)savev2_dense_284_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_852_lstm_cell_852_kernel_read_readvariableopF
Bsavev2_lstm_852_lstm_cell_852_recurrent_kernel_read_readvariableop:
6savev2_lstm_852_lstm_cell_852_bias_read_readvariableop<
8savev2_lstm_853_lstm_cell_853_kernel_read_readvariableopF
Bsavev2_lstm_853_lstm_cell_853_recurrent_kernel_read_readvariableop:
6savev2_lstm_853_lstm_cell_853_bias_read_readvariableop<
8savev2_lstm_854_lstm_cell_854_kernel_read_readvariableopF
Bsavev2_lstm_854_lstm_cell_854_recurrent_kernel_read_readvariableop:
6savev2_lstm_854_lstm_cell_854_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_284_kernel_m_read_readvariableop4
0savev2_adam_dense_284_bias_m_read_readvariableopC
?savev2_adam_lstm_852_lstm_cell_852_kernel_m_read_readvariableopM
Isavev2_adam_lstm_852_lstm_cell_852_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_852_lstm_cell_852_bias_m_read_readvariableopC
?savev2_adam_lstm_853_lstm_cell_853_kernel_m_read_readvariableopM
Isavev2_adam_lstm_853_lstm_cell_853_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_853_lstm_cell_853_bias_m_read_readvariableopC
?savev2_adam_lstm_854_lstm_cell_854_kernel_m_read_readvariableopM
Isavev2_adam_lstm_854_lstm_cell_854_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_854_lstm_cell_854_bias_m_read_readvariableop6
2savev2_adam_dense_284_kernel_v_read_readvariableop4
0savev2_adam_dense_284_bias_v_read_readvariableopC
?savev2_adam_lstm_852_lstm_cell_852_kernel_v_read_readvariableopM
Isavev2_adam_lstm_852_lstm_cell_852_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_852_lstm_cell_852_bias_v_read_readvariableopC
?savev2_adam_lstm_853_lstm_cell_853_kernel_v_read_readvariableopM
Isavev2_adam_lstm_853_lstm_cell_853_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_853_lstm_cell_853_bias_v_read_readvariableopC
?savev2_adam_lstm_854_lstm_cell_854_kernel_v_read_readvariableopM
Isavev2_adam_lstm_854_lstm_cell_854_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_854_lstm_cell_854_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_284_kernel_read_readvariableop)savev2_dense_284_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_852_lstm_cell_852_kernel_read_readvariableopBsavev2_lstm_852_lstm_cell_852_recurrent_kernel_read_readvariableop6savev2_lstm_852_lstm_cell_852_bias_read_readvariableop8savev2_lstm_853_lstm_cell_853_kernel_read_readvariableopBsavev2_lstm_853_lstm_cell_853_recurrent_kernel_read_readvariableop6savev2_lstm_853_lstm_cell_853_bias_read_readvariableop8savev2_lstm_854_lstm_cell_854_kernel_read_readvariableopBsavev2_lstm_854_lstm_cell_854_recurrent_kernel_read_readvariableop6savev2_lstm_854_lstm_cell_854_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_284_kernel_m_read_readvariableop0savev2_adam_dense_284_bias_m_read_readvariableop?savev2_adam_lstm_852_lstm_cell_852_kernel_m_read_readvariableopIsavev2_adam_lstm_852_lstm_cell_852_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_852_lstm_cell_852_bias_m_read_readvariableop?savev2_adam_lstm_853_lstm_cell_853_kernel_m_read_readvariableopIsavev2_adam_lstm_853_lstm_cell_853_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_853_lstm_cell_853_bias_m_read_readvariableop?savev2_adam_lstm_854_lstm_cell_854_kernel_m_read_readvariableopIsavev2_adam_lstm_854_lstm_cell_854_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_854_lstm_cell_854_bias_m_read_readvariableop2savev2_adam_dense_284_kernel_v_read_readvariableop0savev2_adam_dense_284_bias_v_read_readvariableop?savev2_adam_lstm_852_lstm_cell_852_kernel_v_read_readvariableopIsavev2_adam_lstm_852_lstm_cell_852_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_852_lstm_cell_852_bias_v_read_readvariableop?savev2_adam_lstm_853_lstm_cell_853_kernel_v_read_readvariableopIsavev2_adam_lstm_853_lstm_cell_853_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_853_lstm_cell_853_bias_v_read_readvariableop?savev2_adam_lstm_854_lstm_cell_854_kernel_v_read_readvariableopIsavev2_adam_lstm_854_lstm_cell_854_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_854_lstm_cell_854_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
*__inference_lstm_853_layer_call_fn_5121791

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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119843s
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
??
?
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120704

inputsH
5lstm_852_lstm_cell_852_matmul_readvariableop_resource:	?J
7lstm_852_lstm_cell_852_matmul_1_readvariableop_resource:	d?E
6lstm_852_lstm_cell_852_biasadd_readvariableop_resource:	?H
5lstm_853_lstm_cell_853_matmul_readvariableop_resource:	d?J
7lstm_853_lstm_cell_853_matmul_1_readvariableop_resource:	2?E
6lstm_853_lstm_cell_853_biasadd_readvariableop_resource:	?G
5lstm_854_lstm_cell_854_matmul_readvariableop_resource:2(I
7lstm_854_lstm_cell_854_matmul_1_readvariableop_resource:
(D
6lstm_854_lstm_cell_854_biasadd_readvariableop_resource:(:
(dense_284_matmul_readvariableop_resource:
7
)dense_284_biasadd_readvariableop_resource:
identity?? dense_284/BiasAdd/ReadVariableOp?dense_284/MatMul/ReadVariableOp?-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp?,lstm_852/lstm_cell_852/MatMul/ReadVariableOp?.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp?lstm_852/while?-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp?,lstm_853/lstm_cell_853/MatMul/ReadVariableOp?.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp?lstm_853/while?-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp?,lstm_854/lstm_cell_854/MatMul/ReadVariableOp?.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp?lstm_854/whileD
lstm_852/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_852/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_852/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_852/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_sliceStridedSlicelstm_852/Shape:output:0%lstm_852/strided_slice/stack:output:0'lstm_852/strided_slice/stack_1:output:0'lstm_852/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_852/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_852/zeros/packedPacklstm_852/strided_slice:output:0 lstm_852/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_852/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_852/zerosFilllstm_852/zeros/packed:output:0lstm_852/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_852/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_852/zeros_1/packedPacklstm_852/strided_slice:output:0"lstm_852/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_852/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_852/zeros_1Fill lstm_852/zeros_1/packed:output:0lstm_852/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_852/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_852/transpose	Transposeinputs lstm_852/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_852/Shape_1Shapelstm_852/transpose:y:0*
T0*
_output_shapes
:h
lstm_852/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_852/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_852/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_slice_1StridedSlicelstm_852/Shape_1:output:0'lstm_852/strided_slice_1/stack:output:0)lstm_852/strided_slice_1/stack_1:output:0)lstm_852/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_852/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_852/TensorArrayV2TensorListReserve-lstm_852/TensorArrayV2/element_shape:output:0!lstm_852/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_852/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_852/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_852/transpose:y:0Glstm_852/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_852/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_852/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_852/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_slice_2StridedSlicelstm_852/transpose:y:0'lstm_852/strided_slice_2/stack:output:0)lstm_852/strided_slice_2/stack_1:output:0)lstm_852/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_852/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp5lstm_852_lstm_cell_852_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_852/lstm_cell_852/MatMulMatMul!lstm_852/strided_slice_2:output:04lstm_852/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp7lstm_852_lstm_cell_852_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_852/lstm_cell_852/MatMul_1MatMullstm_852/zeros:output:06lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_852/lstm_cell_852/addAddV2'lstm_852/lstm_cell_852/MatMul:product:0)lstm_852/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp6lstm_852_lstm_cell_852_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_852/lstm_cell_852/BiasAddBiasAddlstm_852/lstm_cell_852/add:z:05lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_852/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_852/lstm_cell_852/splitSplit/lstm_852/lstm_cell_852/split/split_dim:output:0'lstm_852/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_852/lstm_cell_852/SigmoidSigmoid%lstm_852/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_852/lstm_cell_852/Sigmoid_1Sigmoid%lstm_852/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/mulMul$lstm_852/lstm_cell_852/Sigmoid_1:y:0lstm_852/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_852/lstm_cell_852/ReluRelu%lstm_852/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/mul_1Mul"lstm_852/lstm_cell_852/Sigmoid:y:0)lstm_852/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/add_1AddV2lstm_852/lstm_cell_852/mul:z:0 lstm_852/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_852/lstm_cell_852/Sigmoid_2Sigmoid%lstm_852/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_852/lstm_cell_852/Relu_1Relu lstm_852/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_852/lstm_cell_852/mul_2Mul$lstm_852/lstm_cell_852/Sigmoid_2:y:0+lstm_852/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_852/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_852/TensorArrayV2_1TensorListReserve/lstm_852/TensorArrayV2_1/element_shape:output:0!lstm_852/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_852/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_852/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_852/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_852/whileWhile$lstm_852/while/loop_counter:output:0*lstm_852/while/maximum_iterations:output:0lstm_852/time:output:0!lstm_852/TensorArrayV2_1:handle:0lstm_852/zeros:output:0lstm_852/zeros_1:output:0!lstm_852/strided_slice_1:output:0@lstm_852/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_852_lstm_cell_852_matmul_readvariableop_resource7lstm_852_lstm_cell_852_matmul_1_readvariableop_resource6lstm_852_lstm_cell_852_biasadd_readvariableop_resource*
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
lstm_852_while_body_5120336*'
condR
lstm_852_while_cond_5120335*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_852/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_852/TensorArrayV2Stack/TensorListStackTensorListStacklstm_852/while:output:3Blstm_852/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_852/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_852/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_852/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_852/strided_slice_3StridedSlice4lstm_852/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_852/strided_slice_3/stack:output:0)lstm_852/strided_slice_3/stack_1:output:0)lstm_852/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_852/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_852/transpose_1	Transpose4lstm_852/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_852/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_852/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_853/ShapeShapelstm_852/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_853/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_853/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_853/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_sliceStridedSlicelstm_853/Shape:output:0%lstm_853/strided_slice/stack:output:0'lstm_853/strided_slice/stack_1:output:0'lstm_853/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_853/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_853/zeros/packedPacklstm_853/strided_slice:output:0 lstm_853/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_853/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_853/zerosFilllstm_853/zeros/packed:output:0lstm_853/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_853/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_853/zeros_1/packedPacklstm_853/strided_slice:output:0"lstm_853/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_853/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_853/zeros_1Fill lstm_853/zeros_1/packed:output:0lstm_853/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_853/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_853/transpose	Transposelstm_852/transpose_1:y:0 lstm_853/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_853/Shape_1Shapelstm_853/transpose:y:0*
T0*
_output_shapes
:h
lstm_853/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_853/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_853/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_slice_1StridedSlicelstm_853/Shape_1:output:0'lstm_853/strided_slice_1/stack:output:0)lstm_853/strided_slice_1/stack_1:output:0)lstm_853/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_853/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_853/TensorArrayV2TensorListReserve-lstm_853/TensorArrayV2/element_shape:output:0!lstm_853/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_853/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_853/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_853/transpose:y:0Glstm_853/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_853/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_853/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_853/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_slice_2StridedSlicelstm_853/transpose:y:0'lstm_853/strided_slice_2/stack:output:0)lstm_853/strided_slice_2/stack_1:output:0)lstm_853/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_853/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp5lstm_853_lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_853/lstm_cell_853/MatMulMatMul!lstm_853/strided_slice_2:output:04lstm_853/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp7lstm_853_lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_853/lstm_cell_853/MatMul_1MatMullstm_853/zeros:output:06lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_853/lstm_cell_853/addAddV2'lstm_853/lstm_cell_853/MatMul:product:0)lstm_853/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp6lstm_853_lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_853/lstm_cell_853/BiasAddBiasAddlstm_853/lstm_cell_853/add:z:05lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_853/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_853/lstm_cell_853/splitSplit/lstm_853/lstm_cell_853/split/split_dim:output:0'lstm_853/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_853/lstm_cell_853/SigmoidSigmoid%lstm_853/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_853/lstm_cell_853/Sigmoid_1Sigmoid%lstm_853/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/mulMul$lstm_853/lstm_cell_853/Sigmoid_1:y:0lstm_853/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_853/lstm_cell_853/ReluRelu%lstm_853/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/mul_1Mul"lstm_853/lstm_cell_853/Sigmoid:y:0)lstm_853/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/add_1AddV2lstm_853/lstm_cell_853/mul:z:0 lstm_853/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_853/lstm_cell_853/Sigmoid_2Sigmoid%lstm_853/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_853/lstm_cell_853/Relu_1Relu lstm_853/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_853/lstm_cell_853/mul_2Mul$lstm_853/lstm_cell_853/Sigmoid_2:y:0+lstm_853/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_853/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_853/TensorArrayV2_1TensorListReserve/lstm_853/TensorArrayV2_1/element_shape:output:0!lstm_853/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_853/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_853/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_853/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_853/whileWhile$lstm_853/while/loop_counter:output:0*lstm_853/while/maximum_iterations:output:0lstm_853/time:output:0!lstm_853/TensorArrayV2_1:handle:0lstm_853/zeros:output:0lstm_853/zeros_1:output:0!lstm_853/strided_slice_1:output:0@lstm_853/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_853_lstm_cell_853_matmul_readvariableop_resource7lstm_853_lstm_cell_853_matmul_1_readvariableop_resource6lstm_853_lstm_cell_853_biasadd_readvariableop_resource*
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
lstm_853_while_body_5120475*'
condR
lstm_853_while_cond_5120474*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_853/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_853/TensorArrayV2Stack/TensorListStackTensorListStacklstm_853/while:output:3Blstm_853/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_853/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_853/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_853/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_853/strided_slice_3StridedSlice4lstm_853/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_853/strided_slice_3/stack:output:0)lstm_853/strided_slice_3/stack_1:output:0)lstm_853/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_853/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_853/transpose_1	Transpose4lstm_853/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_853/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_853/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_854/ShapeShapelstm_853/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_854/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_854/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_854/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_sliceStridedSlicelstm_854/Shape:output:0%lstm_854/strided_slice/stack:output:0'lstm_854/strided_slice/stack_1:output:0'lstm_854/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_854/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_854/zeros/packedPacklstm_854/strided_slice:output:0 lstm_854/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_854/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_854/zerosFilllstm_854/zeros/packed:output:0lstm_854/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_854/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_854/zeros_1/packedPacklstm_854/strided_slice:output:0"lstm_854/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_854/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_854/zeros_1Fill lstm_854/zeros_1/packed:output:0lstm_854/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_854/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_854/transpose	Transposelstm_853/transpose_1:y:0 lstm_854/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_854/Shape_1Shapelstm_854/transpose:y:0*
T0*
_output_shapes
:h
lstm_854/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_854/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_854/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_slice_1StridedSlicelstm_854/Shape_1:output:0'lstm_854/strided_slice_1/stack:output:0)lstm_854/strided_slice_1/stack_1:output:0)lstm_854/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_854/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_854/TensorArrayV2TensorListReserve-lstm_854/TensorArrayV2/element_shape:output:0!lstm_854/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_854/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_854/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_854/transpose:y:0Glstm_854/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_854/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_854/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_854/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_slice_2StridedSlicelstm_854/transpose:y:0'lstm_854/strided_slice_2/stack:output:0)lstm_854/strided_slice_2/stack_1:output:0)lstm_854/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_854/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp5lstm_854_lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_854/lstm_cell_854/MatMulMatMul!lstm_854/strided_slice_2:output:04lstm_854/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp7lstm_854_lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_854/lstm_cell_854/MatMul_1MatMullstm_854/zeros:output:06lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_854/lstm_cell_854/addAddV2'lstm_854/lstm_cell_854/MatMul:product:0)lstm_854/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp6lstm_854_lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_854/lstm_cell_854/BiasAddBiasAddlstm_854/lstm_cell_854/add:z:05lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_854/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_854/lstm_cell_854/splitSplit/lstm_854/lstm_cell_854/split/split_dim:output:0'lstm_854/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_854/lstm_cell_854/SigmoidSigmoid%lstm_854/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_854/lstm_cell_854/Sigmoid_1Sigmoid%lstm_854/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/mulMul$lstm_854/lstm_cell_854/Sigmoid_1:y:0lstm_854/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_854/lstm_cell_854/ReluRelu%lstm_854/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/mul_1Mul"lstm_854/lstm_cell_854/Sigmoid:y:0)lstm_854/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/add_1AddV2lstm_854/lstm_cell_854/mul:z:0 lstm_854/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_854/lstm_cell_854/Sigmoid_2Sigmoid%lstm_854/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_854/lstm_cell_854/Relu_1Relu lstm_854/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_854/lstm_cell_854/mul_2Mul$lstm_854/lstm_cell_854/Sigmoid_2:y:0+lstm_854/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_854/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_854/TensorArrayV2_1TensorListReserve/lstm_854/TensorArrayV2_1/element_shape:output:0!lstm_854/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_854/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_854/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_854/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_854/whileWhile$lstm_854/while/loop_counter:output:0*lstm_854/while/maximum_iterations:output:0lstm_854/time:output:0!lstm_854/TensorArrayV2_1:handle:0lstm_854/zeros:output:0lstm_854/zeros_1:output:0!lstm_854/strided_slice_1:output:0@lstm_854/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_854_lstm_cell_854_matmul_readvariableop_resource7lstm_854_lstm_cell_854_matmul_1_readvariableop_resource6lstm_854_lstm_cell_854_biasadd_readvariableop_resource*
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
lstm_854_while_body_5120614*'
condR
lstm_854_while_cond_5120613*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_854/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_854/TensorArrayV2Stack/TensorListStackTensorListStacklstm_854/while:output:3Blstm_854/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_854/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_854/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_854/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_854/strided_slice_3StridedSlice4lstm_854/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_854/strided_slice_3/stack:output:0)lstm_854/strided_slice_3/stack_1:output:0)lstm_854/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_854/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_854/transpose_1	Transpose4lstm_854/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_854/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_854/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_284/MatMul/ReadVariableOpReadVariableOp(dense_284_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_284/MatMulMatMul!lstm_854/strided_slice_3:output:0'dense_284/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_284/BiasAdd/ReadVariableOpReadVariableOp)dense_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_284/BiasAddBiasAdddense_284/MatMul:product:0(dense_284/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_284/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_284/BiasAdd/ReadVariableOp ^dense_284/MatMul/ReadVariableOp.^lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp-^lstm_852/lstm_cell_852/MatMul/ReadVariableOp/^lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp^lstm_852/while.^lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp-^lstm_853/lstm_cell_853/MatMul/ReadVariableOp/^lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp^lstm_853/while.^lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp-^lstm_854/lstm_cell_854/MatMul/ReadVariableOp/^lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp^lstm_854/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_284/BiasAdd/ReadVariableOp dense_284/BiasAdd/ReadVariableOp2B
dense_284/MatMul/ReadVariableOpdense_284/MatMul/ReadVariableOp2^
-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp-lstm_852/lstm_cell_852/BiasAdd/ReadVariableOp2\
,lstm_852/lstm_cell_852/MatMul/ReadVariableOp,lstm_852/lstm_cell_852/MatMul/ReadVariableOp2`
.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp.lstm_852/lstm_cell_852/MatMul_1/ReadVariableOp2 
lstm_852/whilelstm_852/while2^
-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp-lstm_853/lstm_cell_853/BiasAdd/ReadVariableOp2\
,lstm_853/lstm_cell_853/MatMul/ReadVariableOp,lstm_853/lstm_cell_853/MatMul/ReadVariableOp2`
.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp.lstm_853/lstm_cell_853/MatMul_1/ReadVariableOp2 
lstm_853/whilelstm_853/while2^
-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp-lstm_854/lstm_cell_854/BiasAdd/ReadVariableOp2\
,lstm_854/lstm_cell_854/MatMul/ReadVariableOp,lstm_854/lstm_cell_854/MatMul/ReadVariableOp2`
.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp.lstm_854/lstm_cell_854/MatMul_1/ReadVariableOp2 
lstm_854/whilelstm_854/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_5118044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_852_5118068_0:	?0
while_lstm_cell_852_5118070_0:	d?,
while_lstm_cell_852_5118072_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_852_5118068:	?.
while_lstm_cell_852_5118070:	d?*
while_lstm_cell_852_5118072:	???+while/lstm_cell_852/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_852/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_852_5118068_0while_lstm_cell_852_5118070_0while_lstm_cell_852_5118072_0*
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118030?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_852/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_852/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_852/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_852/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_852_5118068while_lstm_cell_852_5118068_0"<
while_lstm_cell_852_5118070while_lstm_cell_852_5118070_0"<
while_lstm_cell_852_5118072while_lstm_cell_852_5118072_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_852/StatefulPartitionedCall+while/lstm_cell_852/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_284_layer_call_fn_5119512
lstm_852_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_852_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5119487o
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
_user_specified_namelstm_852_input
?
?
while_cond_5121992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5121992___redundant_placeholder05
1while_while_cond_5121992___redundant_placeholder15
1while_while_cond_5121992___redundant_placeholder25
1while_while_cond_5121992___redundant_placeholder3
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
while_body_5121234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_852_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_852_matmul_readvariableop_resource:	?G
4while_lstm_cell_852_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_852_biasadd_readvariableop_resource:	???*while/lstm_cell_852/BiasAdd/ReadVariableOp?)while/lstm_cell_852/MatMul/ReadVariableOp?+while/lstm_cell_852/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_852/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_852/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_852/addAddV2$while/lstm_cell_852/MatMul:product:0&while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_852/BiasAddBiasAddwhile/lstm_cell_852/add:z:02while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_852/splitSplit,while/lstm_cell_852/split/split_dim:output:0$while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_852/SigmoidSigmoid"while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_1Sigmoid"while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mulMul!while/lstm_cell_852/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_852/ReluRelu"while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_1Mulwhile/lstm_cell_852/Sigmoid:y:0&while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/add_1AddV2while/lstm_cell_852/mul:z:0while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_2Sigmoid"while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_852/Relu_1Reluwhile/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_2Mul!while/lstm_cell_852/Sigmoid_2:y:0(while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_852/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_852/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_852/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_852/BiasAdd/ReadVariableOp*^while/lstm_cell_852/MatMul/ReadVariableOp,^while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_852_biasadd_readvariableop_resource5while_lstm_cell_852_biasadd_readvariableop_resource_0"n
4while_lstm_cell_852_matmul_1_readvariableop_resource6while_lstm_cell_852_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_852_matmul_readvariableop_resource4while_lstm_cell_852_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_852/BiasAdd/ReadVariableOp*while/lstm_cell_852/BiasAdd/ReadVariableOp2V
)while/lstm_cell_852/MatMul/ReadVariableOp)while/lstm_cell_852/MatMul/ReadVariableOp2Z
+while/lstm_cell_852/MatMul_1/ReadVariableOp+while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122077
inputs_0?
,lstm_cell_853_matmul_readvariableop_resource:	d?A
.lstm_cell_853_matmul_1_readvariableop_resource:	2?<
-lstm_cell_853_biasadd_readvariableop_resource:	?
identity??$lstm_cell_853/BiasAdd/ReadVariableOp?#lstm_cell_853/MatMul/ReadVariableOp?%lstm_cell_853/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_853/MatMul/ReadVariableOpReadVariableOp,lstm_cell_853_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_853/MatMulMatMulstrided_slice_2:output:0+lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_853_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_853/MatMul_1MatMulzeros:output:0-lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_853/addAddV2lstm_cell_853/MatMul:product:0 lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_853_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_853/BiasAddBiasAddlstm_cell_853/add:z:0,lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_853/splitSplit&lstm_cell_853/split/split_dim:output:0lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_853/SigmoidSigmoidlstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_1Sigmoidlstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_853/mulMullstm_cell_853/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_853/ReluRelulstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_1Mullstm_cell_853/Sigmoid:y:0 lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_853/add_1AddV2lstm_cell_853/mul:z:0lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_853/Sigmoid_2Sigmoidlstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_853/Relu_1Relulstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_853/mul_2Mullstm_cell_853/Sigmoid_2:y:0"lstm_cell_853/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_853_matmul_readvariableop_resource.lstm_cell_853_matmul_1_readvariableop_resource-lstm_cell_853_biasadd_readvariableop_resource*
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
while_body_5121993*
condR
while_cond_5121992*K
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
NoOpNoOp%^lstm_cell_853/BiasAdd/ReadVariableOp$^lstm_cell_853/MatMul/ReadVariableOp&^lstm_cell_853/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_853/BiasAdd/ReadVariableOp$lstm_cell_853/BiasAdd/ReadVariableOp2J
#lstm_cell_853/MatMul/ReadVariableOp#lstm_cell_853/MatMul/ReadVariableOp2N
%lstm_cell_853/MatMul_1/ReadVariableOp%lstm_cell_853/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_5121850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_853_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_853_matmul_readvariableop_resource:	d?G
4while_lstm_cell_853_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_853_biasadd_readvariableop_resource:	???*while/lstm_cell_853/BiasAdd/ReadVariableOp?)while/lstm_cell_853/MatMul/ReadVariableOp?+while/lstm_cell_853/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_853/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_853/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_853/addAddV2$while/lstm_cell_853/MatMul:product:0&while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_853/BiasAddBiasAddwhile/lstm_cell_853/add:z:02while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_853/splitSplit,while/lstm_cell_853/split/split_dim:output:0$while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_853/SigmoidSigmoid"while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_1Sigmoid"while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mulMul!while/lstm_cell_853/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_853/ReluRelu"while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_1Mulwhile/lstm_cell_853/Sigmoid:y:0&while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/add_1AddV2while/lstm_cell_853/mul:z:0while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_2Sigmoid"while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_853/Relu_1Reluwhile/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_2Mul!while/lstm_cell_853/Sigmoid_2:y:0(while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_853/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_853/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_853/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_853/BiasAdd/ReadVariableOp*^while/lstm_cell_853/MatMul/ReadVariableOp,^while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_853_biasadd_readvariableop_resource5while_lstm_cell_853_biasadd_readvariableop_resource_0"n
4while_lstm_cell_853_matmul_1_readvariableop_resource6while_lstm_cell_853_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_853_matmul_readvariableop_resource4while_lstm_cell_853_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_853/BiasAdd/ReadVariableOp*while/lstm_cell_853/BiasAdd/ReadVariableOp2V
)while/lstm_cell_853/MatMul/ReadVariableOp)while/lstm_cell_853/MatMul/ReadVariableOp2Z
+while/lstm_cell_853/MatMul_1/ReadVariableOp+while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5118744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_854_5118768_0:2(/
while_lstm_cell_854_5118770_0:
(+
while_lstm_cell_854_5118772_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_854_5118768:2(-
while_lstm_cell_854_5118770:
()
while_lstm_cell_854_5118772:(??+while/lstm_cell_854/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_854/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_854_5118768_0while_lstm_cell_854_5118770_0while_lstm_cell_854_5118772_0*
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118730?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_854/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_854/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_854/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_854/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_854_5118768while_lstm_cell_854_5118768_0"<
while_lstm_cell_854_5118770while_lstm_cell_854_5118770_0"<
while_lstm_cell_854_5118772while_lstm_cell_854_5118772_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_854/StatefulPartitionedCall+while/lstm_cell_854/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120076

inputs#
lstm_852_5120049:	?#
lstm_852_5120051:	d?
lstm_852_5120053:	?#
lstm_853_5120056:	d?#
lstm_853_5120058:	2?
lstm_853_5120060:	?"
lstm_854_5120063:2("
lstm_854_5120065:
(
lstm_854_5120067:(#
dense_284_5120070:

dense_284_5120072:
identity??!dense_284/StatefulPartitionedCall? lstm_852/StatefulPartitionedCall? lstm_853/StatefulPartitionedCall? lstm_854/StatefulPartitionedCall?
 lstm_852/StatefulPartitionedCallStatefulPartitionedCallinputslstm_852_5120049lstm_852_5120051lstm_852_5120053*
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5120008?
 lstm_853/StatefulPartitionedCallStatefulPartitionedCall)lstm_852/StatefulPartitionedCall:output:0lstm_853_5120056lstm_853_5120058lstm_853_5120060*
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119843?
 lstm_854/StatefulPartitionedCallStatefulPartitionedCall)lstm_853/StatefulPartitionedCall:output:0lstm_854_5120063lstm_854_5120065lstm_854_5120067*
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119678?
!dense_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_854/StatefulPartitionedCall:output:0dense_284_5120070dense_284_5120072*
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5119480y
IdentityIdentity*dense_284/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_284/StatefulPartitionedCall!^lstm_852/StatefulPartitionedCall!^lstm_853/StatefulPartitionedCall!^lstm_854/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_284/StatefulPartitionedCall!dense_284/StatefulPartitionedCall2D
 lstm_852/StatefulPartitionedCall lstm_852/StatefulPartitionedCall2D
 lstm_853/StatefulPartitionedCall lstm_853/StatefulPartitionedCall2D
 lstm_854/StatefulPartitionedCall lstm_854/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_852_layer_call_fn_5121164

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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5119162s
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5118876

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
while_cond_5119227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5119227___redundant_placeholder05
1while_while_cond_5119227___redundant_placeholder15
1while_while_cond_5119227___redundant_placeholder25
1while_while_cond_5119227___redundant_placeholder3
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
*sequential_284_lstm_853_while_body_5117734L
Hsequential_284_lstm_853_while_sequential_284_lstm_853_while_loop_counterR
Nsequential_284_lstm_853_while_sequential_284_lstm_853_while_maximum_iterations-
)sequential_284_lstm_853_while_placeholder/
+sequential_284_lstm_853_while_placeholder_1/
+sequential_284_lstm_853_while_placeholder_2/
+sequential_284_lstm_853_while_placeholder_3K
Gsequential_284_lstm_853_while_sequential_284_lstm_853_strided_slice_1_0?
?sequential_284_lstm_853_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_853_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_284_lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0:	d?a
Nsequential_284_lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?\
Msequential_284_lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0:	?*
&sequential_284_lstm_853_while_identity,
(sequential_284_lstm_853_while_identity_1,
(sequential_284_lstm_853_while_identity_2,
(sequential_284_lstm_853_while_identity_3,
(sequential_284_lstm_853_while_identity_4,
(sequential_284_lstm_853_while_identity_5I
Esequential_284_lstm_853_while_sequential_284_lstm_853_strided_slice_1?
?sequential_284_lstm_853_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_853_tensorarrayunstack_tensorlistfromtensor]
Jsequential_284_lstm_853_while_lstm_cell_853_matmul_readvariableop_resource:	d?_
Lsequential_284_lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource:	2?Z
Ksequential_284_lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource:	???Bsequential_284/lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp?Asequential_284/lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp?Csequential_284/lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp?
Osequential_284/lstm_853/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_284/lstm_853/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_284_lstm_853_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_853_tensorarrayunstack_tensorlistfromtensor_0)sequential_284_lstm_853_while_placeholderXsequential_284/lstm_853/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_284/lstm_853/while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOpLsequential_284_lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_284/lstm_853/while/lstm_cell_853/MatMulMatMulHsequential_284/lstm_853/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_284/lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_284/lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOpNsequential_284_lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_284/lstm_853/while/lstm_cell_853/MatMul_1MatMul+sequential_284_lstm_853_while_placeholder_2Ksequential_284/lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_284/lstm_853/while/lstm_cell_853/addAddV2<sequential_284/lstm_853/while/lstm_cell_853/MatMul:product:0>sequential_284/lstm_853/while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_284/lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOpMsequential_284_lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_284/lstm_853/while/lstm_cell_853/BiasAddBiasAdd3sequential_284/lstm_853/while/lstm_cell_853/add:z:0Jsequential_284/lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_284/lstm_853/while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_284/lstm_853/while/lstm_cell_853/splitSplitDsequential_284/lstm_853/while/lstm_cell_853/split/split_dim:output:0<sequential_284/lstm_853/while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_284/lstm_853/while/lstm_cell_853/SigmoidSigmoid:sequential_284/lstm_853/while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_284/lstm_853/while/lstm_cell_853/Sigmoid_1Sigmoid:sequential_284/lstm_853/while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_284/lstm_853/while/lstm_cell_853/mulMul9sequential_284/lstm_853/while/lstm_cell_853/Sigmoid_1:y:0+sequential_284_lstm_853_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_284/lstm_853/while/lstm_cell_853/ReluRelu:sequential_284/lstm_853/while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_284/lstm_853/while/lstm_cell_853/mul_1Mul7sequential_284/lstm_853/while/lstm_cell_853/Sigmoid:y:0>sequential_284/lstm_853/while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_284/lstm_853/while/lstm_cell_853/add_1AddV23sequential_284/lstm_853/while/lstm_cell_853/mul:z:05sequential_284/lstm_853/while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_284/lstm_853/while/lstm_cell_853/Sigmoid_2Sigmoid:sequential_284/lstm_853/while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_284/lstm_853/while/lstm_cell_853/Relu_1Relu5sequential_284/lstm_853/while/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_284/lstm_853/while/lstm_cell_853/mul_2Mul9sequential_284/lstm_853/while/lstm_cell_853/Sigmoid_2:y:0@sequential_284/lstm_853/while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_284/lstm_853/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_284_lstm_853_while_placeholder_1)sequential_284_lstm_853_while_placeholder5sequential_284/lstm_853/while/lstm_cell_853/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_284/lstm_853/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_284/lstm_853/while/addAddV2)sequential_284_lstm_853_while_placeholder,sequential_284/lstm_853/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_284/lstm_853/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_284/lstm_853/while/add_1AddV2Hsequential_284_lstm_853_while_sequential_284_lstm_853_while_loop_counter.sequential_284/lstm_853/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_284/lstm_853/while/IdentityIdentity'sequential_284/lstm_853/while/add_1:z:0#^sequential_284/lstm_853/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_853/while/Identity_1IdentityNsequential_284_lstm_853_while_sequential_284_lstm_853_while_maximum_iterations#^sequential_284/lstm_853/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_853/while/Identity_2Identity%sequential_284/lstm_853/while/add:z:0#^sequential_284/lstm_853/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_853/while/Identity_3IdentityRsequential_284/lstm_853/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_284/lstm_853/while/NoOp*
T0*
_output_shapes
: ?
(sequential_284/lstm_853/while/Identity_4Identity5sequential_284/lstm_853/while/lstm_cell_853/mul_2:z:0#^sequential_284/lstm_853/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_284/lstm_853/while/Identity_5Identity5sequential_284/lstm_853/while/lstm_cell_853/add_1:z:0#^sequential_284/lstm_853/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_284/lstm_853/while/NoOpNoOpC^sequential_284/lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOpB^sequential_284/lstm_853/while/lstm_cell_853/MatMul/ReadVariableOpD^sequential_284/lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_284_lstm_853_while_identity/sequential_284/lstm_853/while/Identity:output:0"]
(sequential_284_lstm_853_while_identity_11sequential_284/lstm_853/while/Identity_1:output:0"]
(sequential_284_lstm_853_while_identity_21sequential_284/lstm_853/while/Identity_2:output:0"]
(sequential_284_lstm_853_while_identity_31sequential_284/lstm_853/while/Identity_3:output:0"]
(sequential_284_lstm_853_while_identity_41sequential_284/lstm_853/while/Identity_4:output:0"]
(sequential_284_lstm_853_while_identity_51sequential_284/lstm_853/while/Identity_5:output:0"?
Ksequential_284_lstm_853_while_lstm_cell_853_biasadd_readvariableop_resourceMsequential_284_lstm_853_while_lstm_cell_853_biasadd_readvariableop_resource_0"?
Lsequential_284_lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resourceNsequential_284_lstm_853_while_lstm_cell_853_matmul_1_readvariableop_resource_0"?
Jsequential_284_lstm_853_while_lstm_cell_853_matmul_readvariableop_resourceLsequential_284_lstm_853_while_lstm_cell_853_matmul_readvariableop_resource_0"?
Esequential_284_lstm_853_while_sequential_284_lstm_853_strided_slice_1Gsequential_284_lstm_853_while_sequential_284_lstm_853_strided_slice_1_0"?
?sequential_284_lstm_853_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_853_tensorarrayunstack_tensorlistfromtensor?sequential_284_lstm_853_while_tensorarrayv2read_tensorlistgetitem_sequential_284_lstm_853_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_284/lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOpBsequential_284/lstm_853/while/lstm_cell_853/BiasAdd/ReadVariableOp2?
Asequential_284/lstm_853/while/lstm_cell_853/MatMul/ReadVariableOpAsequential_284/lstm_853/while/lstm_cell_853/MatMul/ReadVariableOp2?
Csequential_284/lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOpCsequential_284/lstm_853/while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5119228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_853_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_853_matmul_readvariableop_resource:	d?G
4while_lstm_cell_853_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_853_biasadd_readvariableop_resource:	???*while/lstm_cell_853/BiasAdd/ReadVariableOp?)while/lstm_cell_853/MatMul/ReadVariableOp?+while/lstm_cell_853/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_853/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_853/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_853/addAddV2$while/lstm_cell_853/MatMul:product:0&while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_853/BiasAddBiasAddwhile/lstm_cell_853/add:z:02while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_853/splitSplit,while/lstm_cell_853/split/split_dim:output:0$while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_853/SigmoidSigmoid"while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_1Sigmoid"while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mulMul!while/lstm_cell_853/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_853/ReluRelu"while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_1Mulwhile/lstm_cell_853/Sigmoid:y:0&while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/add_1AddV2while/lstm_cell_853/mul:z:0while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_2Sigmoid"while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_853/Relu_1Reluwhile/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_2Mul!while/lstm_cell_853/Sigmoid_2:y:0(while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_853/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_853/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_853/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_853/BiasAdd/ReadVariableOp*^while/lstm_cell_853/MatMul/ReadVariableOp,^while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_853_biasadd_readvariableop_resource5while_lstm_cell_853_biasadd_readvariableop_resource_0"n
4while_lstm_cell_853_matmul_1_readvariableop_resource6while_lstm_cell_853_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_853_matmul_readvariableop_resource4while_lstm_cell_853_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_853/BiasAdd/ReadVariableOp*while/lstm_cell_853/BiasAdd/ReadVariableOp2V
)while/lstm_cell_853/MatMul/ReadVariableOp)while/lstm_cell_853/MatMul/ReadVariableOp2Z
+while/lstm_cell_853/MatMul_1/ReadVariableOp+while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5122136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_853_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_853_matmul_readvariableop_resource:	d?G
4while_lstm_cell_853_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_853_biasadd_readvariableop_resource:	???*while/lstm_cell_853/BiasAdd/ReadVariableOp?)while/lstm_cell_853/MatMul/ReadVariableOp?+while/lstm_cell_853/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_853/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_853/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_853/addAddV2$while/lstm_cell_853/MatMul:product:0&while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_853/BiasAddBiasAddwhile/lstm_cell_853/add:z:02while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_853/splitSplit,while/lstm_cell_853/split/split_dim:output:0$while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_853/SigmoidSigmoid"while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_1Sigmoid"while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mulMul!while/lstm_cell_853/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_853/ReluRelu"while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_1Mulwhile/lstm_cell_853/Sigmoid:y:0&while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/add_1AddV2while/lstm_cell_853/mul:z:0while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_2Sigmoid"while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_853/Relu_1Reluwhile/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_2Mul!while/lstm_cell_853/Sigmoid_2:y:0(while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_853/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_853/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_853/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_853/BiasAdd/ReadVariableOp*^while/lstm_cell_853/MatMul/ReadVariableOp,^while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_853_biasadd_readvariableop_resource5while_lstm_cell_853_biasadd_readvariableop_resource_0"n
4while_lstm_cell_853_matmul_1_readvariableop_resource6while_lstm_cell_853_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_853_matmul_readvariableop_resource4while_lstm_cell_853_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_853/BiasAdd/ReadVariableOp*while/lstm_cell_853/BiasAdd/ReadVariableOp2V
)while/lstm_cell_853/MatMul/ReadVariableOp)while/lstm_cell_853/MatMul/ReadVariableOp2Z
+while/lstm_cell_853/MatMul_1/ReadVariableOp+while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5118113

inputs(
lstm_cell_852_5118031:	?(
lstm_cell_852_5118033:	d?$
lstm_cell_852_5118035:	?
identity??%lstm_cell_852/StatefulPartitionedCall?while;
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
%lstm_cell_852/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_852_5118031lstm_cell_852_5118033lstm_cell_852_5118035*
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118030n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_852_5118031lstm_cell_852_5118033lstm_cell_852_5118035*
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
while_body_5118044*
condR
while_cond_5118043*K
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
NoOpNoOp&^lstm_cell_852/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_852/StatefulPartitionedCall%lstm_cell_852/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_5122466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_854_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_854_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_854_matmul_readvariableop_resource:2(F
4while_lstm_cell_854_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_854_biasadd_readvariableop_resource:(??*while/lstm_cell_854/BiasAdd/ReadVariableOp?)while/lstm_cell_854/MatMul/ReadVariableOp?+while/lstm_cell_854/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_854/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_854/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_854/addAddV2$while/lstm_cell_854/MatMul:product:0&while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_854/BiasAddBiasAddwhile/lstm_cell_854/add:z:02while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_854/splitSplit,while/lstm_cell_854/split/split_dim:output:0$while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_854/SigmoidSigmoid"while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_1Sigmoid"while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mulMul!while/lstm_cell_854/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_854/ReluRelu"while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_1Mulwhile/lstm_cell_854/Sigmoid:y:0&while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/add_1AddV2while/lstm_cell_854/mul:z:0while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_2Sigmoid"while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_854/Relu_1Reluwhile/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_2Mul!while/lstm_cell_854/Sigmoid_2:y:0(while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_854/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_854/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_854/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_854/BiasAdd/ReadVariableOp*^while/lstm_cell_854/MatMul/ReadVariableOp,^while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_854_biasadd_readvariableop_resource5while_lstm_cell_854_biasadd_readvariableop_resource_0"n
4while_lstm_cell_854_matmul_1_readvariableop_resource6while_lstm_cell_854_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_854_matmul_readvariableop_resource4while_lstm_cell_854_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_854/BiasAdd/ReadVariableOp*while/lstm_cell_854/BiasAdd/ReadVariableOp2V
)while/lstm_cell_854/MatMul/ReadVariableOp)while/lstm_cell_854/MatMul/ReadVariableOp2Z
+while/lstm_cell_854/MatMul_1/ReadVariableOp+while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118526

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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122693
inputs_0>
,lstm_cell_854_matmul_readvariableop_resource:2(@
.lstm_cell_854_matmul_1_readvariableop_resource:
(;
-lstm_cell_854_biasadd_readvariableop_resource:(
identity??$lstm_cell_854/BiasAdd/ReadVariableOp?#lstm_cell_854/MatMul/ReadVariableOp?%lstm_cell_854/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_854/MatMul/ReadVariableOpReadVariableOp,lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_854/MatMulMatMulstrided_slice_2:output:0+lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_854/MatMul_1MatMulzeros:output:0-lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_854/addAddV2lstm_cell_854/MatMul:product:0 lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_854/BiasAddBiasAddlstm_cell_854/add:z:0,lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_854/splitSplit&lstm_cell_854/split/split_dim:output:0lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_854/SigmoidSigmoidlstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_1Sigmoidlstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_854/mulMullstm_cell_854/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_854/ReluRelulstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_1Mullstm_cell_854/Sigmoid:y:0 lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_854/add_1AddV2lstm_cell_854/mul:z:0lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_2Sigmoidlstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_854/Relu_1Relulstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_2Mullstm_cell_854/Sigmoid_2:y:0"lstm_cell_854/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_854_matmul_readvariableop_resource.lstm_cell_854_matmul_1_readvariableop_resource-lstm_cell_854_biasadd_readvariableop_resource*
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
while_body_5122609*
condR
while_cond_5122608*K
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
NoOpNoOp%^lstm_cell_854/BiasAdd/ReadVariableOp$^lstm_cell_854/MatMul/ReadVariableOp&^lstm_cell_854/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_854/BiasAdd/ReadVariableOp$lstm_cell_854/BiasAdd/ReadVariableOp2J
#lstm_cell_854/MatMul/ReadVariableOp#lstm_cell_854/MatMul/ReadVariableOp2N
%lstm_cell_854/MatMul_1/ReadVariableOp%lstm_cell_854/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_5119078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_852_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_852_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_852_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_852_matmul_readvariableop_resource:	?G
4while_lstm_cell_852_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_852_biasadd_readvariableop_resource:	???*while/lstm_cell_852/BiasAdd/ReadVariableOp?)while/lstm_cell_852/MatMul/ReadVariableOp?+while/lstm_cell_852/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_852/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_852_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_852/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_852/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_852/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_852_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_852/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_852/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_852/addAddV2$while/lstm_cell_852/MatMul:product:0&while/lstm_cell_852/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_852/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_852_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_852/BiasAddBiasAddwhile/lstm_cell_852/add:z:02while/lstm_cell_852/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_852/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_852/splitSplit,while/lstm_cell_852/split/split_dim:output:0$while/lstm_cell_852/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_852/SigmoidSigmoid"while/lstm_cell_852/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_1Sigmoid"while/lstm_cell_852/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mulMul!while/lstm_cell_852/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_852/ReluRelu"while/lstm_cell_852/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_1Mulwhile/lstm_cell_852/Sigmoid:y:0&while/lstm_cell_852/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/add_1AddV2while/lstm_cell_852/mul:z:0while/lstm_cell_852/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_852/Sigmoid_2Sigmoid"while/lstm_cell_852/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_852/Relu_1Reluwhile/lstm_cell_852/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_852/mul_2Mul!while/lstm_cell_852/Sigmoid_2:y:0(while/lstm_cell_852/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_852/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_852/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_852/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_852/BiasAdd/ReadVariableOp*^while/lstm_cell_852/MatMul/ReadVariableOp,^while/lstm_cell_852/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_852_biasadd_readvariableop_resource5while_lstm_cell_852_biasadd_readvariableop_resource_0"n
4while_lstm_cell_852_matmul_1_readvariableop_resource6while_lstm_cell_852_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_852_matmul_readvariableop_resource4while_lstm_cell_852_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_852/BiasAdd/ReadVariableOp*while/lstm_cell_852/BiasAdd/ReadVariableOp2V
)while/lstm_cell_852/MatMul/ReadVariableOp)while/lstm_cell_852/MatMul/ReadVariableOp2Z
+while/lstm_cell_852/MatMul_1/ReadVariableOp+while/lstm_cell_852/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5119487

inputs#
lstm_852_5119163:	?#
lstm_852_5119165:	d?
lstm_852_5119167:	?#
lstm_853_5119313:	d?#
lstm_853_5119315:	2?
lstm_853_5119317:	?"
lstm_854_5119463:2("
lstm_854_5119465:
(
lstm_854_5119467:(#
dense_284_5119481:

dense_284_5119483:
identity??!dense_284/StatefulPartitionedCall? lstm_852/StatefulPartitionedCall? lstm_853/StatefulPartitionedCall? lstm_854/StatefulPartitionedCall?
 lstm_852/StatefulPartitionedCallStatefulPartitionedCallinputslstm_852_5119163lstm_852_5119165lstm_852_5119167*
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5119162?
 lstm_853/StatefulPartitionedCallStatefulPartitionedCall)lstm_852/StatefulPartitionedCall:output:0lstm_853_5119313lstm_853_5119315lstm_853_5119317*
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119312?
 lstm_854/StatefulPartitionedCallStatefulPartitionedCall)lstm_853/StatefulPartitionedCall:output:0lstm_854_5119463lstm_854_5119465lstm_854_5119467*
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119462?
!dense_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_854/StatefulPartitionedCall:output:0dense_284_5119481dense_284_5119483*
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5119480y
IdentityIdentity*dense_284/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_284/StatefulPartitionedCall!^lstm_852/StatefulPartitionedCall!^lstm_853/StatefulPartitionedCall!^lstm_854/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_284/StatefulPartitionedCall!dense_284/StatefulPartitionedCall2D
 lstm_852/StatefulPartitionedCall lstm_852/StatefulPartitionedCall2D
 lstm_853/StatefulPartitionedCall lstm_853/StatefulPartitionedCall2D
 lstm_854/StatefulPartitionedCall lstm_854/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_853_layer_call_fn_5123130

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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5118526o
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
while_body_5121993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_853_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_853_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_853_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_853_matmul_readvariableop_resource:	d?G
4while_lstm_cell_853_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_853_biasadd_readvariableop_resource:	???*while/lstm_cell_853/BiasAdd/ReadVariableOp?)while/lstm_cell_853/MatMul/ReadVariableOp?+while/lstm_cell_853/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_853/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_853_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_853/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_853/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_853/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_853_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_853/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_853/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_853/addAddV2$while/lstm_cell_853/MatMul:product:0&while/lstm_cell_853/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_853/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_853_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_853/BiasAddBiasAddwhile/lstm_cell_853/add:z:02while/lstm_cell_853/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_853/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_853/splitSplit,while/lstm_cell_853/split/split_dim:output:0$while/lstm_cell_853/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_853/SigmoidSigmoid"while/lstm_cell_853/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_1Sigmoid"while/lstm_cell_853/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mulMul!while/lstm_cell_853/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_853/ReluRelu"while/lstm_cell_853/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_1Mulwhile/lstm_cell_853/Sigmoid:y:0&while/lstm_cell_853/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/add_1AddV2while/lstm_cell_853/mul:z:0while/lstm_cell_853/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_853/Sigmoid_2Sigmoid"while/lstm_cell_853/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_853/Relu_1Reluwhile/lstm_cell_853/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_853/mul_2Mul!while/lstm_cell_853/Sigmoid_2:y:0(while/lstm_cell_853/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_853/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_853/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_853/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_853/BiasAdd/ReadVariableOp*^while/lstm_cell_853/MatMul/ReadVariableOp,^while/lstm_cell_853/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_853_biasadd_readvariableop_resource5while_lstm_cell_853_biasadd_readvariableop_resource_0"n
4while_lstm_cell_853_matmul_1_readvariableop_resource6while_lstm_cell_853_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_853_matmul_readvariableop_resource4while_lstm_cell_853_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_853/BiasAdd/ReadVariableOp*while/lstm_cell_853/BiasAdd/ReadVariableOp2V
)while/lstm_cell_853/MatMul/ReadVariableOp)while/lstm_cell_853/MatMul/ReadVariableOp2Z
+while/lstm_cell_853/MatMul_1/ReadVariableOp+while/lstm_cell_853/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_854_layer_call_fn_5122396

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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119462o
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122550
inputs_0>
,lstm_cell_854_matmul_readvariableop_resource:2(@
.lstm_cell_854_matmul_1_readvariableop_resource:
(;
-lstm_cell_854_biasadd_readvariableop_resource:(
identity??$lstm_cell_854/BiasAdd/ReadVariableOp?#lstm_cell_854/MatMul/ReadVariableOp?%lstm_cell_854/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_854/MatMul/ReadVariableOpReadVariableOp,lstm_cell_854_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_854/MatMulMatMulstrided_slice_2:output:0+lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_854_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_854/MatMul_1MatMulzeros:output:0-lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_854/addAddV2lstm_cell_854/MatMul:product:0 lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_854_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_854/BiasAddBiasAddlstm_cell_854/add:z:0,lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_854/splitSplit&lstm_cell_854/split/split_dim:output:0lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_854/SigmoidSigmoidlstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_1Sigmoidlstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_854/mulMullstm_cell_854/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_854/ReluRelulstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_1Mullstm_cell_854/Sigmoid:y:0 lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_854/add_1AddV2lstm_cell_854/mul:z:0lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_854/Sigmoid_2Sigmoidlstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_854/Relu_1Relulstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_854/mul_2Mullstm_cell_854/Sigmoid_2:y:0"lstm_cell_854/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_854_matmul_readvariableop_resource.lstm_cell_854_matmul_1_readvariableop_resource-lstm_cell_854_biasadd_readvariableop_resource*
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
while_body_5122466*
condR
while_cond_5122465*K
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
NoOpNoOp%^lstm_cell_854/BiasAdd/ReadVariableOp$^lstm_cell_854/MatMul/ReadVariableOp&^lstm_cell_854/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_854/BiasAdd/ReadVariableOp$lstm_cell_854/BiasAdd/ReadVariableOp2J
#lstm_cell_854/MatMul/ReadVariableOp#lstm_cell_854/MatMul/ReadVariableOp2N
%lstm_cell_854/MatMul_1/ReadVariableOp%lstm_cell_854/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_5121376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5121376___redundant_placeholder05
1while_while_cond_5121376___redundant_placeholder15
1while_while_cond_5121376___redundant_placeholder25
1while_while_cond_5121376___redundant_placeholder3
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5118176

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
while_body_5122752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_854_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_854_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_854_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_854_matmul_readvariableop_resource:2(F
4while_lstm_cell_854_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_854_biasadd_readvariableop_resource:(??*while/lstm_cell_854/BiasAdd/ReadVariableOp?)while/lstm_cell_854/MatMul/ReadVariableOp?+while/lstm_cell_854/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_854/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_854_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_854/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_854/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_854/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_854_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_854/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_854/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_854/addAddV2$while/lstm_cell_854/MatMul:product:0&while/lstm_cell_854/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_854/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_854_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_854/BiasAddBiasAddwhile/lstm_cell_854/add:z:02while/lstm_cell_854/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_854/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_854/splitSplit,while/lstm_cell_854/split/split_dim:output:0$while/lstm_cell_854/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_854/SigmoidSigmoid"while/lstm_cell_854/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_1Sigmoid"while/lstm_cell_854/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mulMul!while/lstm_cell_854/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_854/ReluRelu"while/lstm_cell_854/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_1Mulwhile/lstm_cell_854/Sigmoid:y:0&while/lstm_cell_854/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/add_1AddV2while/lstm_cell_854/mul:z:0while/lstm_cell_854/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_854/Sigmoid_2Sigmoid"while/lstm_cell_854/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_854/Relu_1Reluwhile/lstm_cell_854/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_854/mul_2Mul!while/lstm_cell_854/Sigmoid_2:y:0(while/lstm_cell_854/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_854/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_854/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_854/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_854/BiasAdd/ReadVariableOp*^while/lstm_cell_854/MatMul/ReadVariableOp,^while/lstm_cell_854/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_854_biasadd_readvariableop_resource5while_lstm_cell_854_biasadd_readvariableop_resource_0"n
4while_lstm_cell_854_matmul_1_readvariableop_resource6while_lstm_cell_854_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_854_matmul_readvariableop_resource4while_lstm_cell_854_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_854/BiasAdd/ReadVariableOp*while/lstm_cell_854/BiasAdd/ReadVariableOp2V
)while/lstm_cell_854/MatMul/ReadVariableOp)while/lstm_cell_854/MatMul/ReadVariableOp2Z
+while/lstm_cell_854/MatMul_1/ReadVariableOp+while/lstm_cell_854/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_284_layer_call_fn_5120277

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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120076o
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

?
lstm_852_while_cond_5120762.
*lstm_852_while_lstm_852_while_loop_counter4
0lstm_852_while_lstm_852_while_maximum_iterations
lstm_852_while_placeholder 
lstm_852_while_placeholder_1 
lstm_852_while_placeholder_2 
lstm_852_while_placeholder_30
,lstm_852_while_less_lstm_852_strided_slice_1G
Clstm_852_while_lstm_852_while_cond_5120762___redundant_placeholder0G
Clstm_852_while_lstm_852_while_cond_5120762___redundant_placeholder1G
Clstm_852_while_lstm_852_while_cond_5120762___redundant_placeholder2G
Clstm_852_while_lstm_852_while_cond_5120762___redundant_placeholder3
lstm_852_while_identity
?
lstm_852/while/LessLesslstm_852_while_placeholder,lstm_852_while_less_lstm_852_strided_slice_1*
T0*
_output_shapes
: ]
lstm_852/while/IdentityIdentitylstm_852/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_852_while_identity lstm_852/while/Identity:output:0*(
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120188
lstm_852_input#
lstm_852_5120161:	?#
lstm_852_5120163:	d?
lstm_852_5120165:	?#
lstm_853_5120168:	d?#
lstm_853_5120170:	2?
lstm_853_5120172:	?"
lstm_854_5120175:2("
lstm_854_5120177:
(
lstm_854_5120179:(#
dense_284_5120182:

dense_284_5120184:
identity??!dense_284/StatefulPartitionedCall? lstm_852/StatefulPartitionedCall? lstm_853/StatefulPartitionedCall? lstm_854/StatefulPartitionedCall?
 lstm_852/StatefulPartitionedCallStatefulPartitionedCalllstm_852_inputlstm_852_5120161lstm_852_5120163lstm_852_5120165*
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5120008?
 lstm_853/StatefulPartitionedCallStatefulPartitionedCall)lstm_852/StatefulPartitionedCall:output:0lstm_853_5120168lstm_853_5120170lstm_853_5120172*
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5119843?
 lstm_854/StatefulPartitionedCallStatefulPartitionedCall)lstm_853/StatefulPartitionedCall:output:0lstm_854_5120175lstm_854_5120177lstm_854_5120179*
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5119678?
!dense_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_854/StatefulPartitionedCall:output:0dense_284_5120182dense_284_5120184*
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5119480y
IdentityIdentity*dense_284/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_284/StatefulPartitionedCall!^lstm_852/StatefulPartitionedCall!^lstm_853/StatefulPartitionedCall!^lstm_854/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_284/StatefulPartitionedCall!dense_284/StatefulPartitionedCall2D
 lstm_852/StatefulPartitionedCall lstm_852/StatefulPartitionedCall2D
 lstm_853/StatefulPartitionedCall lstm_853/StatefulPartitionedCall2D
 lstm_854/StatefulPartitionedCall lstm_854/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_852_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_852_input;
 serving_default_lstm_852_input:0?????????=
	dense_2840
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
2dense_284/kernel
:2dense_284/bias
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
0:.	?2lstm_852/lstm_cell_852/kernel
::8	d?2'lstm_852/lstm_cell_852/recurrent_kernel
*:(?2lstm_852/lstm_cell_852/bias
0:.	d?2lstm_853/lstm_cell_853/kernel
::8	2?2'lstm_853/lstm_cell_853/recurrent_kernel
*:(?2lstm_853/lstm_cell_853/bias
/:-2(2lstm_854/lstm_cell_854/kernel
9:7
(2'lstm_854/lstm_cell_854/recurrent_kernel
):'(2lstm_854/lstm_cell_854/bias
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
2Adam/dense_284/kernel/m
!:2Adam/dense_284/bias/m
5:3	?2$Adam/lstm_852/lstm_cell_852/kernel/m
?:=	d?2.Adam/lstm_852/lstm_cell_852/recurrent_kernel/m
/:-?2"Adam/lstm_852/lstm_cell_852/bias/m
5:3	d?2$Adam/lstm_853/lstm_cell_853/kernel/m
?:=	2?2.Adam/lstm_853/lstm_cell_853/recurrent_kernel/m
/:-?2"Adam/lstm_853/lstm_cell_853/bias/m
4:22(2$Adam/lstm_854/lstm_cell_854/kernel/m
>:<
(2.Adam/lstm_854/lstm_cell_854/recurrent_kernel/m
.:,(2"Adam/lstm_854/lstm_cell_854/bias/m
':%
2Adam/dense_284/kernel/v
!:2Adam/dense_284/bias/v
5:3	?2$Adam/lstm_852/lstm_cell_852/kernel/v
?:=	d?2.Adam/lstm_852/lstm_cell_852/recurrent_kernel/v
/:-?2"Adam/lstm_852/lstm_cell_852/bias/v
5:3	d?2$Adam/lstm_853/lstm_cell_853/kernel/v
?:=	2?2.Adam/lstm_853/lstm_cell_853/recurrent_kernel/v
/:-?2"Adam/lstm_853/lstm_cell_853/bias/v
4:22(2$Adam/lstm_854/lstm_cell_854/kernel/v
>:<
(2.Adam/lstm_854/lstm_cell_854/recurrent_kernel/v
.:,(2"Adam/lstm_854/lstm_cell_854/bias/v
?2?
0__inference_sequential_284_layer_call_fn_5119512
0__inference_sequential_284_layer_call_fn_5120250
0__inference_sequential_284_layer_call_fn_5120277
0__inference_sequential_284_layer_call_fn_5120128?
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120704
K__inference_sequential_284_layer_call_and_return_conditional_losses_5121131
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120158
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120188?
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
"__inference__wrapped_model_5117963lstm_852_input"?
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
*__inference_lstm_852_layer_call_fn_5121142
*__inference_lstm_852_layer_call_fn_5121153
*__inference_lstm_852_layer_call_fn_5121164
*__inference_lstm_852_layer_call_fn_5121175?
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121318
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121461
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121604
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121747?
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
*__inference_lstm_853_layer_call_fn_5121758
*__inference_lstm_853_layer_call_fn_5121769
*__inference_lstm_853_layer_call_fn_5121780
*__inference_lstm_853_layer_call_fn_5121791?
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5121934
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122077
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122220
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122363?
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
*__inference_lstm_854_layer_call_fn_5122374
*__inference_lstm_854_layer_call_fn_5122385
*__inference_lstm_854_layer_call_fn_5122396
*__inference_lstm_854_layer_call_fn_5122407?
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122550
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122693
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122836
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122979?
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
+__inference_dense_284_layer_call_fn_5122988?
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
F__inference_dense_284_layer_call_and_return_conditional_losses_5122998?
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
%__inference_signature_wrapper_5120223lstm_852_input"?
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
/__inference_lstm_cell_852_layer_call_fn_5123015
/__inference_lstm_cell_852_layer_call_fn_5123032?
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5123064
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5123096?
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
/__inference_lstm_cell_853_layer_call_fn_5123113
/__inference_lstm_cell_853_layer_call_fn_5123130?
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5123162
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5123194?
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
/__inference_lstm_cell_854_layer_call_fn_5123211
/__inference_lstm_cell_854_layer_call_fn_5123228?
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5123260
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5123292?
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
"__inference__wrapped_model_5117963?()*+,-./0;?8
1?.
,?)
lstm_852_input?????????
? "5?2
0
	dense_284#? 
	dense_284??????????
F__inference_dense_284_layer_call_and_return_conditional_losses_5122998\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_284_layer_call_fn_5122988O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121318?()*O?L
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121461?()*O?L
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121604q()*??<
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
E__inference_lstm_852_layer_call_and_return_conditional_losses_5121747q()*??<
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
*__inference_lstm_852_layer_call_fn_5121142}()*O?L
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
*__inference_lstm_852_layer_call_fn_5121153}()*O?L
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
*__inference_lstm_852_layer_call_fn_5121164d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_852_layer_call_fn_5121175d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_853_layer_call_and_return_conditional_losses_5121934?+,-O?L
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122077?+,-O?L
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122220q+,-??<
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
E__inference_lstm_853_layer_call_and_return_conditional_losses_5122363q+,-??<
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
*__inference_lstm_853_layer_call_fn_5121758}+,-O?L
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
*__inference_lstm_853_layer_call_fn_5121769}+,-O?L
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
*__inference_lstm_853_layer_call_fn_5121780d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_853_layer_call_fn_5121791d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122550}./0O?L
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122693}./0O?L
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122836m./0??<
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
E__inference_lstm_854_layer_call_and_return_conditional_losses_5122979m./0??<
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
*__inference_lstm_854_layer_call_fn_5122374p./0O?L
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
*__inference_lstm_854_layer_call_fn_5122385p./0O?L
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
*__inference_lstm_854_layer_call_fn_5122396`./0??<
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
*__inference_lstm_854_layer_call_fn_5122407`./0??<
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5123064?()*??}
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
J__inference_lstm_cell_852_layer_call_and_return_conditional_losses_5123096?()*??}
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
/__inference_lstm_cell_852_layer_call_fn_5123015?()*??}
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
/__inference_lstm_cell_852_layer_call_fn_5123032?()*??}
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5123162?+,-??}
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
J__inference_lstm_cell_853_layer_call_and_return_conditional_losses_5123194?+,-??}
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
/__inference_lstm_cell_853_layer_call_fn_5123113?+,-??}
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
/__inference_lstm_cell_853_layer_call_fn_5123130?+,-??}
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5123260?./0??}
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
J__inference_lstm_cell_854_layer_call_and_return_conditional_losses_5123292?./0??}
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
/__inference_lstm_cell_854_layer_call_fn_5123211?./0??}
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
/__inference_lstm_cell_854_layer_call_fn_5123228?./0??}
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120158y()*+,-./0C?@
9?6
,?)
lstm_852_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120188y()*+,-./0C?@
9?6
,?)
lstm_852_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_284_layer_call_and_return_conditional_losses_5120704q()*+,-./0;?8
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
K__inference_sequential_284_layer_call_and_return_conditional_losses_5121131q()*+,-./0;?8
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
0__inference_sequential_284_layer_call_fn_5119512l()*+,-./0C?@
9?6
,?)
lstm_852_input?????????
p 

 
? "???????????
0__inference_sequential_284_layer_call_fn_5120128l()*+,-./0C?@
9?6
,?)
lstm_852_input?????????
p

 
? "???????????
0__inference_sequential_284_layer_call_fn_5120250d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_284_layer_call_fn_5120277d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5120223?()*+,-./0M?J
? 
C?@
>
lstm_852_input,?)
lstm_852_input?????????"5?2
0
	dense_284#? 
	dense_284?????????