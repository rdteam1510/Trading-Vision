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
dense_274/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_274/kernel
u
$dense_274/kernel/Read/ReadVariableOpReadVariableOpdense_274/kernel*
_output_shapes

:
*
dtype0
t
dense_274/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_274/bias
m
"dense_274/bias/Read/ReadVariableOpReadVariableOpdense_274/bias*
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
lstm_822/lstm_cell_822/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_822/lstm_cell_822/kernel
?
1lstm_822/lstm_cell_822/kernel/Read/ReadVariableOpReadVariableOplstm_822/lstm_cell_822/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_822/lstm_cell_822/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_822/lstm_cell_822/recurrent_kernel
?
;lstm_822/lstm_cell_822/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_822/lstm_cell_822/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_822/lstm_cell_822/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_822/lstm_cell_822/bias
?
/lstm_822/lstm_cell_822/bias/Read/ReadVariableOpReadVariableOplstm_822/lstm_cell_822/bias*
_output_shapes	
:?*
dtype0
?
lstm_823/lstm_cell_823/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_823/lstm_cell_823/kernel
?
1lstm_823/lstm_cell_823/kernel/Read/ReadVariableOpReadVariableOplstm_823/lstm_cell_823/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_823/lstm_cell_823/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_823/lstm_cell_823/recurrent_kernel
?
;lstm_823/lstm_cell_823/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_823/lstm_cell_823/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_823/lstm_cell_823/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_823/lstm_cell_823/bias
?
/lstm_823/lstm_cell_823/bias/Read/ReadVariableOpReadVariableOplstm_823/lstm_cell_823/bias*
_output_shapes	
:?*
dtype0
?
lstm_824/lstm_cell_824/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_824/lstm_cell_824/kernel
?
1lstm_824/lstm_cell_824/kernel/Read/ReadVariableOpReadVariableOplstm_824/lstm_cell_824/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_824/lstm_cell_824/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_824/lstm_cell_824/recurrent_kernel
?
;lstm_824/lstm_cell_824/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_824/lstm_cell_824/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_824/lstm_cell_824/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_824/lstm_cell_824/bias
?
/lstm_824/lstm_cell_824/bias/Read/ReadVariableOpReadVariableOplstm_824/lstm_cell_824/bias*
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
Adam/dense_274/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_274/kernel/m
?
+Adam/dense_274/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_274/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_274/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_274/bias/m
{
)Adam/dense_274/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_274/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_822/lstm_cell_822/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_822/lstm_cell_822/kernel/m
?
8Adam/lstm_822/lstm_cell_822/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_822/lstm_cell_822/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_822/lstm_cell_822/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_822/lstm_cell_822/recurrent_kernel/m
?
BAdam/lstm_822/lstm_cell_822/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_822/lstm_cell_822/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_822/lstm_cell_822/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_822/lstm_cell_822/bias/m
?
6Adam/lstm_822/lstm_cell_822/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_822/lstm_cell_822/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_823/lstm_cell_823/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_823/lstm_cell_823/kernel/m
?
8Adam/lstm_823/lstm_cell_823/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_823/lstm_cell_823/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_823/lstm_cell_823/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_823/lstm_cell_823/recurrent_kernel/m
?
BAdam/lstm_823/lstm_cell_823/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_823/lstm_cell_823/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_823/lstm_cell_823/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_823/lstm_cell_823/bias/m
?
6Adam/lstm_823/lstm_cell_823/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_823/lstm_cell_823/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_824/lstm_cell_824/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_824/lstm_cell_824/kernel/m
?
8Adam/lstm_824/lstm_cell_824/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_824/lstm_cell_824/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_824/lstm_cell_824/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_824/lstm_cell_824/recurrent_kernel/m
?
BAdam/lstm_824/lstm_cell_824/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_824/lstm_cell_824/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_824/lstm_cell_824/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_824/lstm_cell_824/bias/m
?
6Adam/lstm_824/lstm_cell_824/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_824/lstm_cell_824/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_274/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_274/kernel/v
?
+Adam/dense_274/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_274/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_274/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_274/bias/v
{
)Adam/dense_274/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_274/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_822/lstm_cell_822/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_822/lstm_cell_822/kernel/v
?
8Adam/lstm_822/lstm_cell_822/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_822/lstm_cell_822/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_822/lstm_cell_822/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_822/lstm_cell_822/recurrent_kernel/v
?
BAdam/lstm_822/lstm_cell_822/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_822/lstm_cell_822/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_822/lstm_cell_822/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_822/lstm_cell_822/bias/v
?
6Adam/lstm_822/lstm_cell_822/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_822/lstm_cell_822/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_823/lstm_cell_823/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_823/lstm_cell_823/kernel/v
?
8Adam/lstm_823/lstm_cell_823/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_823/lstm_cell_823/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_823/lstm_cell_823/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_823/lstm_cell_823/recurrent_kernel/v
?
BAdam/lstm_823/lstm_cell_823/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_823/lstm_cell_823/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_823/lstm_cell_823/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_823/lstm_cell_823/bias/v
?
6Adam/lstm_823/lstm_cell_823/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_823/lstm_cell_823/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_824/lstm_cell_824/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_824/lstm_cell_824/kernel/v
?
8Adam/lstm_824/lstm_cell_824/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_824/lstm_cell_824/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_824/lstm_cell_824/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_824/lstm_cell_824/recurrent_kernel/v
?
BAdam/lstm_824/lstm_cell_824/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_824/lstm_cell_824/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_824/lstm_cell_824/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_824/lstm_cell_824/bias/v
?
6Adam/lstm_824/lstm_cell_824/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_824/lstm_cell_824/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?A
value?AB?A B?A
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

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_274/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_274/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
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
VARIABLE_VALUElstm_822/lstm_cell_822/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_822/lstm_cell_822/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_822/lstm_cell_822/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_823/lstm_cell_823/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_823/lstm_cell_823/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_823/lstm_cell_823/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_824/lstm_cell_824/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_824/lstm_cell_824/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_824/lstm_cell_824/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
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
t0
u1

v	variables
}
VARIABLE_VALUEAdam/dense_274/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_274/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_822/lstm_cell_822/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_822/lstm_cell_822/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_822/lstm_cell_822/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_823/lstm_cell_823/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_823/lstm_cell_823/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_823/lstm_cell_823/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_824/lstm_cell_824/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_824/lstm_cell_824/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_824/lstm_cell_824/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_274/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_274/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_822/lstm_cell_822/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_822/lstm_cell_822/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_822/lstm_cell_822/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_823/lstm_cell_823/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_823/lstm_cell_823/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_823/lstm_cell_823/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_824/lstm_cell_824/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_824/lstm_cell_824/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_824/lstm_cell_824/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_822_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_822_inputlstm_822/lstm_cell_822/kernel'lstm_822/lstm_cell_822/recurrent_kernellstm_822/lstm_cell_822/biaslstm_823/lstm_cell_823/kernel'lstm_823/lstm_cell_823/recurrent_kernellstm_823/lstm_cell_823/biaslstm_824/lstm_cell_824/kernel'lstm_824/lstm_cell_824/recurrent_kernellstm_824/lstm_cell_824/biasdense_274/kerneldense_274/bias*
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
%__inference_signature_wrapper_4116859
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_274/kernel/Read/ReadVariableOp"dense_274/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_822/lstm_cell_822/kernel/Read/ReadVariableOp;lstm_822/lstm_cell_822/recurrent_kernel/Read/ReadVariableOp/lstm_822/lstm_cell_822/bias/Read/ReadVariableOp1lstm_823/lstm_cell_823/kernel/Read/ReadVariableOp;lstm_823/lstm_cell_823/recurrent_kernel/Read/ReadVariableOp/lstm_823/lstm_cell_823/bias/Read/ReadVariableOp1lstm_824/lstm_cell_824/kernel/Read/ReadVariableOp;lstm_824/lstm_cell_824/recurrent_kernel/Read/ReadVariableOp/lstm_824/lstm_cell_824/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_274/kernel/m/Read/ReadVariableOp)Adam/dense_274/bias/m/Read/ReadVariableOp8Adam/lstm_822/lstm_cell_822/kernel/m/Read/ReadVariableOpBAdam/lstm_822/lstm_cell_822/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_822/lstm_cell_822/bias/m/Read/ReadVariableOp8Adam/lstm_823/lstm_cell_823/kernel/m/Read/ReadVariableOpBAdam/lstm_823/lstm_cell_823/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_823/lstm_cell_823/bias/m/Read/ReadVariableOp8Adam/lstm_824/lstm_cell_824/kernel/m/Read/ReadVariableOpBAdam/lstm_824/lstm_cell_824/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_824/lstm_cell_824/bias/m/Read/ReadVariableOp+Adam/dense_274/kernel/v/Read/ReadVariableOp)Adam/dense_274/bias/v/Read/ReadVariableOp8Adam/lstm_822/lstm_cell_822/kernel/v/Read/ReadVariableOpBAdam/lstm_822/lstm_cell_822/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_822/lstm_cell_822/bias/v/Read/ReadVariableOp8Adam/lstm_823/lstm_cell_823/kernel/v/Read/ReadVariableOpBAdam/lstm_823/lstm_cell_823/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_823/lstm_cell_823/bias/v/Read/ReadVariableOp8Adam/lstm_824/lstm_cell_824/kernel/v/Read/ReadVariableOpBAdam/lstm_824/lstm_cell_824/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_824/lstm_cell_824/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4120071
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_274/kerneldense_274/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_822/lstm_cell_822/kernel'lstm_822/lstm_cell_822/recurrent_kernellstm_822/lstm_cell_822/biaslstm_823/lstm_cell_823/kernel'lstm_823/lstm_cell_823/recurrent_kernellstm_823/lstm_cell_823/biaslstm_824/lstm_cell_824/kernel'lstm_824/lstm_cell_824/recurrent_kernellstm_824/lstm_cell_824/biastotalcountAdam/dense_274/kernel/mAdam/dense_274/bias/m$Adam/lstm_822/lstm_cell_822/kernel/m.Adam/lstm_822/lstm_cell_822/recurrent_kernel/m"Adam/lstm_822/lstm_cell_822/bias/m$Adam/lstm_823/lstm_cell_823/kernel/m.Adam/lstm_823/lstm_cell_823/recurrent_kernel/m"Adam/lstm_823/lstm_cell_823/bias/m$Adam/lstm_824/lstm_cell_824/kernel/m.Adam/lstm_824/lstm_cell_824/recurrent_kernel/m"Adam/lstm_824/lstm_cell_824/bias/mAdam/dense_274/kernel/vAdam/dense_274/bias/v$Adam/lstm_822/lstm_cell_822/kernel/v.Adam/lstm_822/lstm_cell_822/recurrent_kernel/v"Adam/lstm_822/lstm_cell_822/bias/v$Adam/lstm_823/lstm_cell_823/kernel/v.Adam/lstm_823/lstm_cell_823/recurrent_kernel/v"Adam/lstm_823/lstm_cell_823/bias/v$Adam/lstm_824/lstm_cell_824/kernel/v.Adam/lstm_824/lstm_cell_824/recurrent_kernel/v"Adam/lstm_824/lstm_cell_824/bias/v*4
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
#__inference__traced_restore_4120201??+
?K
?
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119329
inputs_0>
,lstm_cell_680_matmul_readvariableop_resource:2(@
.lstm_cell_680_matmul_1_readvariableop_resource:
(;
-lstm_cell_680_biasadd_readvariableop_resource:(
identity??$lstm_cell_680/BiasAdd/ReadVariableOp?#lstm_cell_680/MatMul/ReadVariableOp?%lstm_cell_680/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_680/MatMul/ReadVariableOpReadVariableOp,lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_680/MatMulMatMulstrided_slice_2:output:0+lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_680/MatMul_1MatMulzeros:output:0-lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_680/addAddV2lstm_cell_680/MatMul:product:0 lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_680/BiasAddBiasAddlstm_cell_680/add:z:0,lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_680/splitSplit&lstm_cell_680/split/split_dim:output:0lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_680/SigmoidSigmoidlstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_1Sigmoidlstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_680/mulMullstm_cell_680/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_680/ReluRelulstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_1Mullstm_cell_680/Sigmoid:y:0 lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_680/add_1AddV2lstm_cell_680/mul:z:0lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_2Sigmoidlstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_680/Relu_1Relulstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_2Mullstm_cell_680/Sigmoid_2:y:0"lstm_cell_680/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_680_matmul_readvariableop_resource.lstm_cell_680_matmul_1_readvariableop_resource-lstm_cell_680_biasadd_readvariableop_resource*
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
while_body_4119245*
condR
while_cond_4119244*K
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
NoOpNoOp%^lstm_cell_680/BiasAdd/ReadVariableOp$^lstm_cell_680/MatMul/ReadVariableOp&^lstm_cell_680/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_680/BiasAdd/ReadVariableOp$lstm_cell_680/BiasAdd/ReadVariableOp2J
#lstm_cell_680/MatMul/ReadVariableOp#lstm_cell_680/MatMul/ReadVariableOp2N
%lstm_cell_680/MatMul_1/ReadVariableOp%lstm_cell_680/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_274_layer_call_and_return_conditional_losses_4117340

inputsH
5lstm_822_lstm_cell_678_matmul_readvariableop_resource:	?J
7lstm_822_lstm_cell_678_matmul_1_readvariableop_resource:	d?E
6lstm_822_lstm_cell_678_biasadd_readvariableop_resource:	?H
5lstm_823_lstm_cell_679_matmul_readvariableop_resource:	d?J
7lstm_823_lstm_cell_679_matmul_1_readvariableop_resource:	2?E
6lstm_823_lstm_cell_679_biasadd_readvariableop_resource:	?G
5lstm_824_lstm_cell_680_matmul_readvariableop_resource:2(I
7lstm_824_lstm_cell_680_matmul_1_readvariableop_resource:
(D
6lstm_824_lstm_cell_680_biasadd_readvariableop_resource:(:
(dense_274_matmul_readvariableop_resource:
7
)dense_274_biasadd_readvariableop_resource:
identity?? dense_274/BiasAdd/ReadVariableOp?dense_274/MatMul/ReadVariableOp?-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp?,lstm_822/lstm_cell_678/MatMul/ReadVariableOp?.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp?lstm_822/while?-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp?,lstm_823/lstm_cell_679/MatMul/ReadVariableOp?.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp?lstm_823/while?-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp?,lstm_824/lstm_cell_680/MatMul/ReadVariableOp?.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp?lstm_824/whileD
lstm_822/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_822/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_822/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_822/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_sliceStridedSlicelstm_822/Shape:output:0%lstm_822/strided_slice/stack:output:0'lstm_822/strided_slice/stack_1:output:0'lstm_822/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_822/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_822/zeros/packedPacklstm_822/strided_slice:output:0 lstm_822/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_822/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_822/zerosFilllstm_822/zeros/packed:output:0lstm_822/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_822/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_822/zeros_1/packedPacklstm_822/strided_slice:output:0"lstm_822/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_822/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_822/zeros_1Fill lstm_822/zeros_1/packed:output:0lstm_822/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_822/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_822/transpose	Transposeinputs lstm_822/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_822/Shape_1Shapelstm_822/transpose:y:0*
T0*
_output_shapes
:h
lstm_822/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_822/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_822/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_slice_1StridedSlicelstm_822/Shape_1:output:0'lstm_822/strided_slice_1/stack:output:0)lstm_822/strided_slice_1/stack_1:output:0)lstm_822/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_822/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_822/TensorArrayV2TensorListReserve-lstm_822/TensorArrayV2/element_shape:output:0!lstm_822/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_822/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_822/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_822/transpose:y:0Glstm_822/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_822/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_822/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_822/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_slice_2StridedSlicelstm_822/transpose:y:0'lstm_822/strided_slice_2/stack:output:0)lstm_822/strided_slice_2/stack_1:output:0)lstm_822/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_822/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp5lstm_822_lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_822/lstm_cell_678/MatMulMatMul!lstm_822/strided_slice_2:output:04lstm_822/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp7lstm_822_lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_822/lstm_cell_678/MatMul_1MatMullstm_822/zeros:output:06lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_822/lstm_cell_678/addAddV2'lstm_822/lstm_cell_678/MatMul:product:0)lstm_822/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp6lstm_822_lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_822/lstm_cell_678/BiasAddBiasAddlstm_822/lstm_cell_678/add:z:05lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_822/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_822/lstm_cell_678/splitSplit/lstm_822/lstm_cell_678/split/split_dim:output:0'lstm_822/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_822/lstm_cell_678/SigmoidSigmoid%lstm_822/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_822/lstm_cell_678/Sigmoid_1Sigmoid%lstm_822/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/mulMul$lstm_822/lstm_cell_678/Sigmoid_1:y:0lstm_822/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_822/lstm_cell_678/ReluRelu%lstm_822/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/mul_1Mul"lstm_822/lstm_cell_678/Sigmoid:y:0)lstm_822/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/add_1AddV2lstm_822/lstm_cell_678/mul:z:0 lstm_822/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_822/lstm_cell_678/Sigmoid_2Sigmoid%lstm_822/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_822/lstm_cell_678/Relu_1Relu lstm_822/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/mul_2Mul$lstm_822/lstm_cell_678/Sigmoid_2:y:0+lstm_822/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_822/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_822/TensorArrayV2_1TensorListReserve/lstm_822/TensorArrayV2_1/element_shape:output:0!lstm_822/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_822/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_822/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_822/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_822/whileWhile$lstm_822/while/loop_counter:output:0*lstm_822/while/maximum_iterations:output:0lstm_822/time:output:0!lstm_822/TensorArrayV2_1:handle:0lstm_822/zeros:output:0lstm_822/zeros_1:output:0!lstm_822/strided_slice_1:output:0@lstm_822/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_822_lstm_cell_678_matmul_readvariableop_resource7lstm_822_lstm_cell_678_matmul_1_readvariableop_resource6lstm_822_lstm_cell_678_biasadd_readvariableop_resource*
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
lstm_822_while_body_4116972*'
condR
lstm_822_while_cond_4116971*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_822/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_822/TensorArrayV2Stack/TensorListStackTensorListStacklstm_822/while:output:3Blstm_822/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_822/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_822/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_822/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_slice_3StridedSlice4lstm_822/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_822/strided_slice_3/stack:output:0)lstm_822/strided_slice_3/stack_1:output:0)lstm_822/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_822/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_822/transpose_1	Transpose4lstm_822/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_822/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_822/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_823/ShapeShapelstm_822/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_823/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_823/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_823/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_sliceStridedSlicelstm_823/Shape:output:0%lstm_823/strided_slice/stack:output:0'lstm_823/strided_slice/stack_1:output:0'lstm_823/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_823/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_823/zeros/packedPacklstm_823/strided_slice:output:0 lstm_823/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_823/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_823/zerosFilllstm_823/zeros/packed:output:0lstm_823/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_823/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_823/zeros_1/packedPacklstm_823/strided_slice:output:0"lstm_823/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_823/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_823/zeros_1Fill lstm_823/zeros_1/packed:output:0lstm_823/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_823/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_823/transpose	Transposelstm_822/transpose_1:y:0 lstm_823/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_823/Shape_1Shapelstm_823/transpose:y:0*
T0*
_output_shapes
:h
lstm_823/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_823/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_823/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_slice_1StridedSlicelstm_823/Shape_1:output:0'lstm_823/strided_slice_1/stack:output:0)lstm_823/strided_slice_1/stack_1:output:0)lstm_823/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_823/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_823/TensorArrayV2TensorListReserve-lstm_823/TensorArrayV2/element_shape:output:0!lstm_823/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_823/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_823/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_823/transpose:y:0Glstm_823/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_823/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_823/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_823/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_slice_2StridedSlicelstm_823/transpose:y:0'lstm_823/strided_slice_2/stack:output:0)lstm_823/strided_slice_2/stack_1:output:0)lstm_823/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_823/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp5lstm_823_lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_823/lstm_cell_679/MatMulMatMul!lstm_823/strided_slice_2:output:04lstm_823/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp7lstm_823_lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_823/lstm_cell_679/MatMul_1MatMullstm_823/zeros:output:06lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_823/lstm_cell_679/addAddV2'lstm_823/lstm_cell_679/MatMul:product:0)lstm_823/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp6lstm_823_lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_823/lstm_cell_679/BiasAddBiasAddlstm_823/lstm_cell_679/add:z:05lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_823/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_823/lstm_cell_679/splitSplit/lstm_823/lstm_cell_679/split/split_dim:output:0'lstm_823/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_823/lstm_cell_679/SigmoidSigmoid%lstm_823/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_823/lstm_cell_679/Sigmoid_1Sigmoid%lstm_823/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/mulMul$lstm_823/lstm_cell_679/Sigmoid_1:y:0lstm_823/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_823/lstm_cell_679/ReluRelu%lstm_823/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/mul_1Mul"lstm_823/lstm_cell_679/Sigmoid:y:0)lstm_823/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/add_1AddV2lstm_823/lstm_cell_679/mul:z:0 lstm_823/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_823/lstm_cell_679/Sigmoid_2Sigmoid%lstm_823/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_823/lstm_cell_679/Relu_1Relu lstm_823/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/mul_2Mul$lstm_823/lstm_cell_679/Sigmoid_2:y:0+lstm_823/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_823/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_823/TensorArrayV2_1TensorListReserve/lstm_823/TensorArrayV2_1/element_shape:output:0!lstm_823/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_823/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_823/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_823/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_823/whileWhile$lstm_823/while/loop_counter:output:0*lstm_823/while/maximum_iterations:output:0lstm_823/time:output:0!lstm_823/TensorArrayV2_1:handle:0lstm_823/zeros:output:0lstm_823/zeros_1:output:0!lstm_823/strided_slice_1:output:0@lstm_823/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_823_lstm_cell_679_matmul_readvariableop_resource7lstm_823_lstm_cell_679_matmul_1_readvariableop_resource6lstm_823_lstm_cell_679_biasadd_readvariableop_resource*
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
lstm_823_while_body_4117111*'
condR
lstm_823_while_cond_4117110*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_823/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_823/TensorArrayV2Stack/TensorListStackTensorListStacklstm_823/while:output:3Blstm_823/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_823/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_823/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_823/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_slice_3StridedSlice4lstm_823/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_823/strided_slice_3/stack:output:0)lstm_823/strided_slice_3/stack_1:output:0)lstm_823/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_823/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_823/transpose_1	Transpose4lstm_823/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_823/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_823/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_824/ShapeShapelstm_823/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_824/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_824/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_824/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_sliceStridedSlicelstm_824/Shape:output:0%lstm_824/strided_slice/stack:output:0'lstm_824/strided_slice/stack_1:output:0'lstm_824/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_824/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_824/zeros/packedPacklstm_824/strided_slice:output:0 lstm_824/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_824/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_824/zerosFilllstm_824/zeros/packed:output:0lstm_824/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_824/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_824/zeros_1/packedPacklstm_824/strided_slice:output:0"lstm_824/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_824/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_824/zeros_1Fill lstm_824/zeros_1/packed:output:0lstm_824/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_824/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_824/transpose	Transposelstm_823/transpose_1:y:0 lstm_824/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_824/Shape_1Shapelstm_824/transpose:y:0*
T0*
_output_shapes
:h
lstm_824/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_824/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_824/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_slice_1StridedSlicelstm_824/Shape_1:output:0'lstm_824/strided_slice_1/stack:output:0)lstm_824/strided_slice_1/stack_1:output:0)lstm_824/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_824/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_824/TensorArrayV2TensorListReserve-lstm_824/TensorArrayV2/element_shape:output:0!lstm_824/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_824/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_824/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_824/transpose:y:0Glstm_824/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_824/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_824/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_824/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_slice_2StridedSlicelstm_824/transpose:y:0'lstm_824/strided_slice_2/stack:output:0)lstm_824/strided_slice_2/stack_1:output:0)lstm_824/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_824/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp5lstm_824_lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_824/lstm_cell_680/MatMulMatMul!lstm_824/strided_slice_2:output:04lstm_824/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp7lstm_824_lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_824/lstm_cell_680/MatMul_1MatMullstm_824/zeros:output:06lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_824/lstm_cell_680/addAddV2'lstm_824/lstm_cell_680/MatMul:product:0)lstm_824/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp6lstm_824_lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_824/lstm_cell_680/BiasAddBiasAddlstm_824/lstm_cell_680/add:z:05lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_824/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_824/lstm_cell_680/splitSplit/lstm_824/lstm_cell_680/split/split_dim:output:0'lstm_824/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_824/lstm_cell_680/SigmoidSigmoid%lstm_824/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_824/lstm_cell_680/Sigmoid_1Sigmoid%lstm_824/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/mulMul$lstm_824/lstm_cell_680/Sigmoid_1:y:0lstm_824/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_824/lstm_cell_680/ReluRelu%lstm_824/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/mul_1Mul"lstm_824/lstm_cell_680/Sigmoid:y:0)lstm_824/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/add_1AddV2lstm_824/lstm_cell_680/mul:z:0 lstm_824/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_824/lstm_cell_680/Sigmoid_2Sigmoid%lstm_824/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_824/lstm_cell_680/Relu_1Relu lstm_824/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/mul_2Mul$lstm_824/lstm_cell_680/Sigmoid_2:y:0+lstm_824/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_824/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_824/TensorArrayV2_1TensorListReserve/lstm_824/TensorArrayV2_1/element_shape:output:0!lstm_824/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_824/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_824/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_824/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_824/whileWhile$lstm_824/while/loop_counter:output:0*lstm_824/while/maximum_iterations:output:0lstm_824/time:output:0!lstm_824/TensorArrayV2_1:handle:0lstm_824/zeros:output:0lstm_824/zeros_1:output:0!lstm_824/strided_slice_1:output:0@lstm_824/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_824_lstm_cell_680_matmul_readvariableop_resource7lstm_824_lstm_cell_680_matmul_1_readvariableop_resource6lstm_824_lstm_cell_680_biasadd_readvariableop_resource*
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
lstm_824_while_body_4117250*'
condR
lstm_824_while_cond_4117249*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_824/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_824/TensorArrayV2Stack/TensorListStackTensorListStacklstm_824/while:output:3Blstm_824/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_824/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_824/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_824/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_slice_3StridedSlice4lstm_824/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_824/strided_slice_3/stack:output:0)lstm_824/strided_slice_3/stack_1:output:0)lstm_824/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_824/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_824/transpose_1	Transpose4lstm_824/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_824/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_824/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_274/MatMul/ReadVariableOpReadVariableOp(dense_274_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_274/MatMulMatMul!lstm_824/strided_slice_3:output:0'dense_274/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_274/BiasAdd/ReadVariableOpReadVariableOp)dense_274_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_274/BiasAddBiasAdddense_274/MatMul:product:0(dense_274/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_274/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_274/BiasAdd/ReadVariableOp ^dense_274/MatMul/ReadVariableOp.^lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp-^lstm_822/lstm_cell_678/MatMul/ReadVariableOp/^lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp^lstm_822/while.^lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp-^lstm_823/lstm_cell_679/MatMul/ReadVariableOp/^lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp^lstm_823/while.^lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp-^lstm_824/lstm_cell_680/MatMul/ReadVariableOp/^lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp^lstm_824/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_274/BiasAdd/ReadVariableOp dense_274/BiasAdd/ReadVariableOp2B
dense_274/MatMul/ReadVariableOpdense_274/MatMul/ReadVariableOp2^
-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp2\
,lstm_822/lstm_cell_678/MatMul/ReadVariableOp,lstm_822/lstm_cell_678/MatMul/ReadVariableOp2`
.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp2 
lstm_822/whilelstm_822/while2^
-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp2\
,lstm_823/lstm_cell_679/MatMul/ReadVariableOp,lstm_823/lstm_cell_679/MatMul/ReadVariableOp2`
.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp2 
lstm_823/whilelstm_823/while2^
-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp2\
,lstm_824/lstm_cell_680/MatMul/ReadVariableOp,lstm_824/lstm_cell_680/MatMul/ReadVariableOp2`
.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp2 
lstm_824/whilelstm_824/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4116394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4116394___redundant_placeholder05
1while_while_cond_4116394___redundant_placeholder15
1while_while_cond_4116394___redundant_placeholder25
1while_while_cond_4116394___redundant_placeholder3
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4114940

inputs(
lstm_cell_678_4114858:	?(
lstm_cell_678_4114860:	d?$
lstm_cell_678_4114862:	?
identity??%lstm_cell_678/StatefulPartitionedCall?while;
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
%lstm_cell_678/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_678_4114858lstm_cell_678_4114860lstm_cell_678_4114862*
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114812n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_678_4114858lstm_cell_678_4114860lstm_cell_678_4114862*
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
while_body_4114871*
condR
while_cond_4114870*K
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
NoOpNoOp&^lstm_cell_678/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_678/StatefulPartitionedCall%lstm_cell_678/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_4114599
lstm_822_inputW
Dsequential_274_lstm_822_lstm_cell_678_matmul_readvariableop_resource:	?Y
Fsequential_274_lstm_822_lstm_cell_678_matmul_1_readvariableop_resource:	d?T
Esequential_274_lstm_822_lstm_cell_678_biasadd_readvariableop_resource:	?W
Dsequential_274_lstm_823_lstm_cell_679_matmul_readvariableop_resource:	d?Y
Fsequential_274_lstm_823_lstm_cell_679_matmul_1_readvariableop_resource:	2?T
Esequential_274_lstm_823_lstm_cell_679_biasadd_readvariableop_resource:	?V
Dsequential_274_lstm_824_lstm_cell_680_matmul_readvariableop_resource:2(X
Fsequential_274_lstm_824_lstm_cell_680_matmul_1_readvariableop_resource:
(S
Esequential_274_lstm_824_lstm_cell_680_biasadd_readvariableop_resource:(I
7sequential_274_dense_274_matmul_readvariableop_resource:
F
8sequential_274_dense_274_biasadd_readvariableop_resource:
identity??/sequential_274/dense_274/BiasAdd/ReadVariableOp?.sequential_274/dense_274/MatMul/ReadVariableOp?<sequential_274/lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp?;sequential_274/lstm_822/lstm_cell_678/MatMul/ReadVariableOp?=sequential_274/lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp?sequential_274/lstm_822/while?<sequential_274/lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp?;sequential_274/lstm_823/lstm_cell_679/MatMul/ReadVariableOp?=sequential_274/lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp?sequential_274/lstm_823/while?<sequential_274/lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp?;sequential_274/lstm_824/lstm_cell_680/MatMul/ReadVariableOp?=sequential_274/lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp?sequential_274/lstm_824/while[
sequential_274/lstm_822/ShapeShapelstm_822_input*
T0*
_output_shapes
:u
+sequential_274/lstm_822/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_274/lstm_822/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_274/lstm_822/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_274/lstm_822/strided_sliceStridedSlice&sequential_274/lstm_822/Shape:output:04sequential_274/lstm_822/strided_slice/stack:output:06sequential_274/lstm_822/strided_slice/stack_1:output:06sequential_274/lstm_822/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_274/lstm_822/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_274/lstm_822/zeros/packedPack.sequential_274/lstm_822/strided_slice:output:0/sequential_274/lstm_822/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_274/lstm_822/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_274/lstm_822/zerosFill-sequential_274/lstm_822/zeros/packed:output:0,sequential_274/lstm_822/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_274/lstm_822/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_274/lstm_822/zeros_1/packedPack.sequential_274/lstm_822/strided_slice:output:01sequential_274/lstm_822/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_274/lstm_822/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_274/lstm_822/zeros_1Fill/sequential_274/lstm_822/zeros_1/packed:output:0.sequential_274/lstm_822/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_274/lstm_822/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_274/lstm_822/transpose	Transposelstm_822_input/sequential_274/lstm_822/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_274/lstm_822/Shape_1Shape%sequential_274/lstm_822/transpose:y:0*
T0*
_output_shapes
:w
-sequential_274/lstm_822/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_822/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_274/lstm_822/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_822/strided_slice_1StridedSlice(sequential_274/lstm_822/Shape_1:output:06sequential_274/lstm_822/strided_slice_1/stack:output:08sequential_274/lstm_822/strided_slice_1/stack_1:output:08sequential_274/lstm_822/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_274/lstm_822/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_274/lstm_822/TensorArrayV2TensorListReserve<sequential_274/lstm_822/TensorArrayV2/element_shape:output:00sequential_274/lstm_822/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_274/lstm_822/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_274/lstm_822/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_274/lstm_822/transpose:y:0Vsequential_274/lstm_822/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_274/lstm_822/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_822/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_274/lstm_822/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_822/strided_slice_2StridedSlice%sequential_274/lstm_822/transpose:y:06sequential_274/lstm_822/strided_slice_2/stack:output:08sequential_274/lstm_822/strided_slice_2/stack_1:output:08sequential_274/lstm_822/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_274/lstm_822/lstm_cell_678/MatMul/ReadVariableOpReadVariableOpDsequential_274_lstm_822_lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_274/lstm_822/lstm_cell_678/MatMulMatMul0sequential_274/lstm_822/strided_slice_2:output:0Csequential_274/lstm_822/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_274/lstm_822/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOpFsequential_274_lstm_822_lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_274/lstm_822/lstm_cell_678/MatMul_1MatMul&sequential_274/lstm_822/zeros:output:0Esequential_274/lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_274/lstm_822/lstm_cell_678/addAddV26sequential_274/lstm_822/lstm_cell_678/MatMul:product:08sequential_274/lstm_822/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_274/lstm_822/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOpEsequential_274_lstm_822_lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_274/lstm_822/lstm_cell_678/BiasAddBiasAdd-sequential_274/lstm_822/lstm_cell_678/add:z:0Dsequential_274/lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_274/lstm_822/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_274/lstm_822/lstm_cell_678/splitSplit>sequential_274/lstm_822/lstm_cell_678/split/split_dim:output:06sequential_274/lstm_822/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_274/lstm_822/lstm_cell_678/SigmoidSigmoid4sequential_274/lstm_822/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_274/lstm_822/lstm_cell_678/Sigmoid_1Sigmoid4sequential_274/lstm_822/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_274/lstm_822/lstm_cell_678/mulMul3sequential_274/lstm_822/lstm_cell_678/Sigmoid_1:y:0(sequential_274/lstm_822/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_274/lstm_822/lstm_cell_678/ReluRelu4sequential_274/lstm_822/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_274/lstm_822/lstm_cell_678/mul_1Mul1sequential_274/lstm_822/lstm_cell_678/Sigmoid:y:08sequential_274/lstm_822/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_274/lstm_822/lstm_cell_678/add_1AddV2-sequential_274/lstm_822/lstm_cell_678/mul:z:0/sequential_274/lstm_822/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_274/lstm_822/lstm_cell_678/Sigmoid_2Sigmoid4sequential_274/lstm_822/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_274/lstm_822/lstm_cell_678/Relu_1Relu/sequential_274/lstm_822/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_274/lstm_822/lstm_cell_678/mul_2Mul3sequential_274/lstm_822/lstm_cell_678/Sigmoid_2:y:0:sequential_274/lstm_822/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_274/lstm_822/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_274/lstm_822/TensorArrayV2_1TensorListReserve>sequential_274/lstm_822/TensorArrayV2_1/element_shape:output:00sequential_274/lstm_822/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_274/lstm_822/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_274/lstm_822/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_274/lstm_822/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_274/lstm_822/whileWhile3sequential_274/lstm_822/while/loop_counter:output:09sequential_274/lstm_822/while/maximum_iterations:output:0%sequential_274/lstm_822/time:output:00sequential_274/lstm_822/TensorArrayV2_1:handle:0&sequential_274/lstm_822/zeros:output:0(sequential_274/lstm_822/zeros_1:output:00sequential_274/lstm_822/strided_slice_1:output:0Osequential_274/lstm_822/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_274_lstm_822_lstm_cell_678_matmul_readvariableop_resourceFsequential_274_lstm_822_lstm_cell_678_matmul_1_readvariableop_resourceEsequential_274_lstm_822_lstm_cell_678_biasadd_readvariableop_resource*
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
*sequential_274_lstm_822_while_body_4114231*6
cond.R,
*sequential_274_lstm_822_while_cond_4114230*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_274/lstm_822/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_274/lstm_822/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_274/lstm_822/while:output:3Qsequential_274/lstm_822/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_274/lstm_822/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_274/lstm_822/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_822/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_822/strided_slice_3StridedSliceCsequential_274/lstm_822/TensorArrayV2Stack/TensorListStack:tensor:06sequential_274/lstm_822/strided_slice_3/stack:output:08sequential_274/lstm_822/strided_slice_3/stack_1:output:08sequential_274/lstm_822/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_274/lstm_822/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_274/lstm_822/transpose_1	TransposeCsequential_274/lstm_822/TensorArrayV2Stack/TensorListStack:tensor:01sequential_274/lstm_822/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_274/lstm_822/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_274/lstm_823/ShapeShape'sequential_274/lstm_822/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_274/lstm_823/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_274/lstm_823/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_274/lstm_823/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_274/lstm_823/strided_sliceStridedSlice&sequential_274/lstm_823/Shape:output:04sequential_274/lstm_823/strided_slice/stack:output:06sequential_274/lstm_823/strided_slice/stack_1:output:06sequential_274/lstm_823/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_274/lstm_823/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_274/lstm_823/zeros/packedPack.sequential_274/lstm_823/strided_slice:output:0/sequential_274/lstm_823/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_274/lstm_823/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_274/lstm_823/zerosFill-sequential_274/lstm_823/zeros/packed:output:0,sequential_274/lstm_823/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_274/lstm_823/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_274/lstm_823/zeros_1/packedPack.sequential_274/lstm_823/strided_slice:output:01sequential_274/lstm_823/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_274/lstm_823/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_274/lstm_823/zeros_1Fill/sequential_274/lstm_823/zeros_1/packed:output:0.sequential_274/lstm_823/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_274/lstm_823/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_274/lstm_823/transpose	Transpose'sequential_274/lstm_822/transpose_1:y:0/sequential_274/lstm_823/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_274/lstm_823/Shape_1Shape%sequential_274/lstm_823/transpose:y:0*
T0*
_output_shapes
:w
-sequential_274/lstm_823/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_823/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_274/lstm_823/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_823/strided_slice_1StridedSlice(sequential_274/lstm_823/Shape_1:output:06sequential_274/lstm_823/strided_slice_1/stack:output:08sequential_274/lstm_823/strided_slice_1/stack_1:output:08sequential_274/lstm_823/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_274/lstm_823/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_274/lstm_823/TensorArrayV2TensorListReserve<sequential_274/lstm_823/TensorArrayV2/element_shape:output:00sequential_274/lstm_823/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_274/lstm_823/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_274/lstm_823/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_274/lstm_823/transpose:y:0Vsequential_274/lstm_823/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_274/lstm_823/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_823/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_274/lstm_823/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_823/strided_slice_2StridedSlice%sequential_274/lstm_823/transpose:y:06sequential_274/lstm_823/strided_slice_2/stack:output:08sequential_274/lstm_823/strided_slice_2/stack_1:output:08sequential_274/lstm_823/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_274/lstm_823/lstm_cell_679/MatMul/ReadVariableOpReadVariableOpDsequential_274_lstm_823_lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_274/lstm_823/lstm_cell_679/MatMulMatMul0sequential_274/lstm_823/strided_slice_2:output:0Csequential_274/lstm_823/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_274/lstm_823/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOpFsequential_274_lstm_823_lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_274/lstm_823/lstm_cell_679/MatMul_1MatMul&sequential_274/lstm_823/zeros:output:0Esequential_274/lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_274/lstm_823/lstm_cell_679/addAddV26sequential_274/lstm_823/lstm_cell_679/MatMul:product:08sequential_274/lstm_823/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_274/lstm_823/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOpEsequential_274_lstm_823_lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_274/lstm_823/lstm_cell_679/BiasAddBiasAdd-sequential_274/lstm_823/lstm_cell_679/add:z:0Dsequential_274/lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_274/lstm_823/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_274/lstm_823/lstm_cell_679/splitSplit>sequential_274/lstm_823/lstm_cell_679/split/split_dim:output:06sequential_274/lstm_823/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_274/lstm_823/lstm_cell_679/SigmoidSigmoid4sequential_274/lstm_823/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_274/lstm_823/lstm_cell_679/Sigmoid_1Sigmoid4sequential_274/lstm_823/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_274/lstm_823/lstm_cell_679/mulMul3sequential_274/lstm_823/lstm_cell_679/Sigmoid_1:y:0(sequential_274/lstm_823/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_274/lstm_823/lstm_cell_679/ReluRelu4sequential_274/lstm_823/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_274/lstm_823/lstm_cell_679/mul_1Mul1sequential_274/lstm_823/lstm_cell_679/Sigmoid:y:08sequential_274/lstm_823/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_274/lstm_823/lstm_cell_679/add_1AddV2-sequential_274/lstm_823/lstm_cell_679/mul:z:0/sequential_274/lstm_823/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_274/lstm_823/lstm_cell_679/Sigmoid_2Sigmoid4sequential_274/lstm_823/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_274/lstm_823/lstm_cell_679/Relu_1Relu/sequential_274/lstm_823/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_274/lstm_823/lstm_cell_679/mul_2Mul3sequential_274/lstm_823/lstm_cell_679/Sigmoid_2:y:0:sequential_274/lstm_823/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_274/lstm_823/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_274/lstm_823/TensorArrayV2_1TensorListReserve>sequential_274/lstm_823/TensorArrayV2_1/element_shape:output:00sequential_274/lstm_823/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_274/lstm_823/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_274/lstm_823/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_274/lstm_823/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_274/lstm_823/whileWhile3sequential_274/lstm_823/while/loop_counter:output:09sequential_274/lstm_823/while/maximum_iterations:output:0%sequential_274/lstm_823/time:output:00sequential_274/lstm_823/TensorArrayV2_1:handle:0&sequential_274/lstm_823/zeros:output:0(sequential_274/lstm_823/zeros_1:output:00sequential_274/lstm_823/strided_slice_1:output:0Osequential_274/lstm_823/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_274_lstm_823_lstm_cell_679_matmul_readvariableop_resourceFsequential_274_lstm_823_lstm_cell_679_matmul_1_readvariableop_resourceEsequential_274_lstm_823_lstm_cell_679_biasadd_readvariableop_resource*
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
*sequential_274_lstm_823_while_body_4114370*6
cond.R,
*sequential_274_lstm_823_while_cond_4114369*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_274/lstm_823/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_274/lstm_823/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_274/lstm_823/while:output:3Qsequential_274/lstm_823/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_274/lstm_823/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_274/lstm_823/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_823/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_823/strided_slice_3StridedSliceCsequential_274/lstm_823/TensorArrayV2Stack/TensorListStack:tensor:06sequential_274/lstm_823/strided_slice_3/stack:output:08sequential_274/lstm_823/strided_slice_3/stack_1:output:08sequential_274/lstm_823/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_274/lstm_823/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_274/lstm_823/transpose_1	TransposeCsequential_274/lstm_823/TensorArrayV2Stack/TensorListStack:tensor:01sequential_274/lstm_823/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_274/lstm_823/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_274/lstm_824/ShapeShape'sequential_274/lstm_823/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_274/lstm_824/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_274/lstm_824/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_274/lstm_824/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_274/lstm_824/strided_sliceStridedSlice&sequential_274/lstm_824/Shape:output:04sequential_274/lstm_824/strided_slice/stack:output:06sequential_274/lstm_824/strided_slice/stack_1:output:06sequential_274/lstm_824/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_274/lstm_824/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_274/lstm_824/zeros/packedPack.sequential_274/lstm_824/strided_slice:output:0/sequential_274/lstm_824/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_274/lstm_824/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_274/lstm_824/zerosFill-sequential_274/lstm_824/zeros/packed:output:0,sequential_274/lstm_824/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_274/lstm_824/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_274/lstm_824/zeros_1/packedPack.sequential_274/lstm_824/strided_slice:output:01sequential_274/lstm_824/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_274/lstm_824/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_274/lstm_824/zeros_1Fill/sequential_274/lstm_824/zeros_1/packed:output:0.sequential_274/lstm_824/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_274/lstm_824/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_274/lstm_824/transpose	Transpose'sequential_274/lstm_823/transpose_1:y:0/sequential_274/lstm_824/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_274/lstm_824/Shape_1Shape%sequential_274/lstm_824/transpose:y:0*
T0*
_output_shapes
:w
-sequential_274/lstm_824/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_824/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_274/lstm_824/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_824/strided_slice_1StridedSlice(sequential_274/lstm_824/Shape_1:output:06sequential_274/lstm_824/strided_slice_1/stack:output:08sequential_274/lstm_824/strided_slice_1/stack_1:output:08sequential_274/lstm_824/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_274/lstm_824/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_274/lstm_824/TensorArrayV2TensorListReserve<sequential_274/lstm_824/TensorArrayV2/element_shape:output:00sequential_274/lstm_824/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_274/lstm_824/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_274/lstm_824/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_274/lstm_824/transpose:y:0Vsequential_274/lstm_824/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_274/lstm_824/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_824/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_274/lstm_824/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_824/strided_slice_2StridedSlice%sequential_274/lstm_824/transpose:y:06sequential_274/lstm_824/strided_slice_2/stack:output:08sequential_274/lstm_824/strided_slice_2/stack_1:output:08sequential_274/lstm_824/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_274/lstm_824/lstm_cell_680/MatMul/ReadVariableOpReadVariableOpDsequential_274_lstm_824_lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_274/lstm_824/lstm_cell_680/MatMulMatMul0sequential_274/lstm_824/strided_slice_2:output:0Csequential_274/lstm_824/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_274/lstm_824/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOpFsequential_274_lstm_824_lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_274/lstm_824/lstm_cell_680/MatMul_1MatMul&sequential_274/lstm_824/zeros:output:0Esequential_274/lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_274/lstm_824/lstm_cell_680/addAddV26sequential_274/lstm_824/lstm_cell_680/MatMul:product:08sequential_274/lstm_824/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_274/lstm_824/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOpEsequential_274_lstm_824_lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_274/lstm_824/lstm_cell_680/BiasAddBiasAdd-sequential_274/lstm_824/lstm_cell_680/add:z:0Dsequential_274/lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_274/lstm_824/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_274/lstm_824/lstm_cell_680/splitSplit>sequential_274/lstm_824/lstm_cell_680/split/split_dim:output:06sequential_274/lstm_824/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_274/lstm_824/lstm_cell_680/SigmoidSigmoid4sequential_274/lstm_824/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_274/lstm_824/lstm_cell_680/Sigmoid_1Sigmoid4sequential_274/lstm_824/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_274/lstm_824/lstm_cell_680/mulMul3sequential_274/lstm_824/lstm_cell_680/Sigmoid_1:y:0(sequential_274/lstm_824/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_274/lstm_824/lstm_cell_680/ReluRelu4sequential_274/lstm_824/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_274/lstm_824/lstm_cell_680/mul_1Mul1sequential_274/lstm_824/lstm_cell_680/Sigmoid:y:08sequential_274/lstm_824/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_274/lstm_824/lstm_cell_680/add_1AddV2-sequential_274/lstm_824/lstm_cell_680/mul:z:0/sequential_274/lstm_824/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_274/lstm_824/lstm_cell_680/Sigmoid_2Sigmoid4sequential_274/lstm_824/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_274/lstm_824/lstm_cell_680/Relu_1Relu/sequential_274/lstm_824/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_274/lstm_824/lstm_cell_680/mul_2Mul3sequential_274/lstm_824/lstm_cell_680/Sigmoid_2:y:0:sequential_274/lstm_824/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_274/lstm_824/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_274/lstm_824/TensorArrayV2_1TensorListReserve>sequential_274/lstm_824/TensorArrayV2_1/element_shape:output:00sequential_274/lstm_824/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_274/lstm_824/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_274/lstm_824/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_274/lstm_824/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_274/lstm_824/whileWhile3sequential_274/lstm_824/while/loop_counter:output:09sequential_274/lstm_824/while/maximum_iterations:output:0%sequential_274/lstm_824/time:output:00sequential_274/lstm_824/TensorArrayV2_1:handle:0&sequential_274/lstm_824/zeros:output:0(sequential_274/lstm_824/zeros_1:output:00sequential_274/lstm_824/strided_slice_1:output:0Osequential_274/lstm_824/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_274_lstm_824_lstm_cell_680_matmul_readvariableop_resourceFsequential_274_lstm_824_lstm_cell_680_matmul_1_readvariableop_resourceEsequential_274_lstm_824_lstm_cell_680_biasadd_readvariableop_resource*
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
*sequential_274_lstm_824_while_body_4114509*6
cond.R,
*sequential_274_lstm_824_while_cond_4114508*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_274/lstm_824/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_274/lstm_824/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_274/lstm_824/while:output:3Qsequential_274/lstm_824/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_274/lstm_824/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_274/lstm_824/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_274/lstm_824/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_274/lstm_824/strided_slice_3StridedSliceCsequential_274/lstm_824/TensorArrayV2Stack/TensorListStack:tensor:06sequential_274/lstm_824/strided_slice_3/stack:output:08sequential_274/lstm_824/strided_slice_3/stack_1:output:08sequential_274/lstm_824/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_274/lstm_824/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_274/lstm_824/transpose_1	TransposeCsequential_274/lstm_824/TensorArrayV2Stack/TensorListStack:tensor:01sequential_274/lstm_824/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_274/lstm_824/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_274/dense_274/MatMul/ReadVariableOpReadVariableOp7sequential_274_dense_274_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_274/dense_274/MatMulMatMul0sequential_274/lstm_824/strided_slice_3:output:06sequential_274/dense_274/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_274/dense_274/BiasAdd/ReadVariableOpReadVariableOp8sequential_274_dense_274_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_274/dense_274/BiasAddBiasAdd)sequential_274/dense_274/MatMul:product:07sequential_274/dense_274/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_274/dense_274/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_274/dense_274/BiasAdd/ReadVariableOp/^sequential_274/dense_274/MatMul/ReadVariableOp=^sequential_274/lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp<^sequential_274/lstm_822/lstm_cell_678/MatMul/ReadVariableOp>^sequential_274/lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp^sequential_274/lstm_822/while=^sequential_274/lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp<^sequential_274/lstm_823/lstm_cell_679/MatMul/ReadVariableOp>^sequential_274/lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp^sequential_274/lstm_823/while=^sequential_274/lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp<^sequential_274/lstm_824/lstm_cell_680/MatMul/ReadVariableOp>^sequential_274/lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp^sequential_274/lstm_824/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_274/dense_274/BiasAdd/ReadVariableOp/sequential_274/dense_274/BiasAdd/ReadVariableOp2`
.sequential_274/dense_274/MatMul/ReadVariableOp.sequential_274/dense_274/MatMul/ReadVariableOp2|
<sequential_274/lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp<sequential_274/lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp2z
;sequential_274/lstm_822/lstm_cell_678/MatMul/ReadVariableOp;sequential_274/lstm_822/lstm_cell_678/MatMul/ReadVariableOp2~
=sequential_274/lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp=sequential_274/lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp2>
sequential_274/lstm_822/whilesequential_274/lstm_822/while2|
<sequential_274/lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp<sequential_274/lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp2z
;sequential_274/lstm_823/lstm_cell_679/MatMul/ReadVariableOp;sequential_274/lstm_823/lstm_cell_679/MatMul/ReadVariableOp2~
=sequential_274/lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp=sequential_274/lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp2>
sequential_274/lstm_823/whilesequential_274/lstm_823/while2|
<sequential_274/lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp<sequential_274/lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp2z
;sequential_274/lstm_824/lstm_cell_680/MatMul/ReadVariableOp;sequential_274/lstm_824/lstm_cell_680/MatMul/ReadVariableOp2~
=sequential_274/lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp=sequential_274/lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp2>
sequential_274/lstm_824/whilesequential_274/lstm_824/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_822_input
?K
?
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119186
inputs_0>
,lstm_cell_680_matmul_readvariableop_resource:2(@
.lstm_cell_680_matmul_1_readvariableop_resource:
(;
-lstm_cell_680_biasadd_readvariableop_resource:(
identity??$lstm_cell_680/BiasAdd/ReadVariableOp?#lstm_cell_680/MatMul/ReadVariableOp?%lstm_cell_680/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_680/MatMul/ReadVariableOpReadVariableOp,lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_680/MatMulMatMulstrided_slice_2:output:0+lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_680/MatMul_1MatMulzeros:output:0-lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_680/addAddV2lstm_cell_680/MatMul:product:0 lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_680/BiasAddBiasAddlstm_cell_680/add:z:0,lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_680/splitSplit&lstm_cell_680/split/split_dim:output:0lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_680/SigmoidSigmoidlstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_1Sigmoidlstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_680/mulMullstm_cell_680/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_680/ReluRelulstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_1Mullstm_cell_680/Sigmoid:y:0 lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_680/add_1AddV2lstm_cell_680/mul:z:0lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_2Sigmoidlstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_680/Relu_1Relulstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_2Mullstm_cell_680/Sigmoid_2:y:0"lstm_cell_680/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_680_matmul_readvariableop_resource.lstm_cell_680_matmul_1_readvariableop_resource-lstm_cell_680_biasadd_readvariableop_resource*
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
while_body_4119102*
condR
while_cond_4119101*K
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
NoOpNoOp%^lstm_cell_680/BiasAdd/ReadVariableOp$^lstm_cell_680/MatMul/ReadVariableOp&^lstm_cell_680/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_680/BiasAdd/ReadVariableOp$lstm_cell_680/BiasAdd/ReadVariableOp2J
#lstm_cell_680/MatMul/ReadVariableOp#lstm_cell_680/MatMul/ReadVariableOp2N
%lstm_cell_680/MatMul_1/ReadVariableOp%lstm_cell_680/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4119102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_680_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_680_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_680_matmul_readvariableop_resource:2(F
4while_lstm_cell_680_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_680_biasadd_readvariableop_resource:(??*while/lstm_cell_680/BiasAdd/ReadVariableOp?)while/lstm_cell_680/MatMul/ReadVariableOp?+while/lstm_cell_680/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_680/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_680/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_680/addAddV2$while/lstm_cell_680/MatMul:product:0&while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_680/BiasAddBiasAddwhile/lstm_cell_680/add:z:02while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_680/splitSplit,while/lstm_cell_680/split/split_dim:output:0$while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_680/SigmoidSigmoid"while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_1Sigmoid"while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mulMul!while/lstm_cell_680/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_680/ReluRelu"while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_1Mulwhile/lstm_cell_680/Sigmoid:y:0&while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/add_1AddV2while/lstm_cell_680/mul:z:0while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_2Sigmoid"while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_680/Relu_1Reluwhile/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_2Mul!while/lstm_cell_680/Sigmoid_2:y:0(while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_680/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_680/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_680/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_680/BiasAdd/ReadVariableOp*^while/lstm_cell_680/MatMul/ReadVariableOp,^while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_680_biasadd_readvariableop_resource5while_lstm_cell_680_biasadd_readvariableop_resource_0"n
4while_lstm_cell_680_matmul_1_readvariableop_resource6while_lstm_cell_680_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_680_matmul_readvariableop_resource4while_lstm_cell_680_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_680/BiasAdd/ReadVariableOp*while/lstm_cell_680/BiasAdd/ReadVariableOp2V
)while/lstm_cell_680/MatMul/ReadVariableOp)while/lstm_cell_680/MatMul/ReadVariableOp2Z
+while/lstm_cell_680/MatMul_1/ReadVariableOp+while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4118915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_679_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_679_matmul_readvariableop_resource:	d?G
4while_lstm_cell_679_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_679_biasadd_readvariableop_resource:	???*while/lstm_cell_679/BiasAdd/ReadVariableOp?)while/lstm_cell_679/MatMul/ReadVariableOp?+while/lstm_cell_679/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_679/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_679/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_679/addAddV2$while/lstm_cell_679/MatMul:product:0&while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_679/BiasAddBiasAddwhile/lstm_cell_679/add:z:02while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_679/splitSplit,while/lstm_cell_679/split/split_dim:output:0$while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_679/SigmoidSigmoid"while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_1Sigmoid"while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mulMul!while/lstm_cell_679/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_679/ReluRelu"while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_1Mulwhile/lstm_cell_679/Sigmoid:y:0&while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/add_1AddV2while/lstm_cell_679/mul:z:0while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_2Sigmoid"while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_679/Relu_1Reluwhile/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_2Mul!while/lstm_cell_679/Sigmoid_2:y:0(while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_679/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_679/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_679/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_679/BiasAdd/ReadVariableOp*^while/lstm_cell_679/MatMul/ReadVariableOp,^while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_679_biasadd_readvariableop_resource5while_lstm_cell_679_biasadd_readvariableop_resource_0"n
4while_lstm_cell_679_matmul_1_readvariableop_resource6while_lstm_cell_679_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_679_matmul_readvariableop_resource4while_lstm_cell_679_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_679/BiasAdd/ReadVariableOp*while/lstm_cell_679/BiasAdd/ReadVariableOp2V
)while/lstm_cell_679/MatMul/ReadVariableOp)while/lstm_cell_679/MatMul/ReadVariableOp2Z
+while/lstm_cell_679/MatMul_1/ReadVariableOp+while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118856

inputs?
,lstm_cell_679_matmul_readvariableop_resource:	d?A
.lstm_cell_679_matmul_1_readvariableop_resource:	2?<
-lstm_cell_679_biasadd_readvariableop_resource:	?
identity??$lstm_cell_679/BiasAdd/ReadVariableOp?#lstm_cell_679/MatMul/ReadVariableOp?%lstm_cell_679/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_679/MatMul/ReadVariableOpReadVariableOp,lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_679/MatMulMatMulstrided_slice_2:output:0+lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_679/MatMul_1MatMulzeros:output:0-lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_679/addAddV2lstm_cell_679/MatMul:product:0 lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_679/BiasAddBiasAddlstm_cell_679/add:z:0,lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_679/splitSplit&lstm_cell_679/split/split_dim:output:0lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_679/SigmoidSigmoidlstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_1Sigmoidlstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_679/mulMullstm_cell_679/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_679/ReluRelulstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_1Mullstm_cell_679/Sigmoid:y:0 lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_679/add_1AddV2lstm_cell_679/mul:z:0lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_2Sigmoidlstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_679/Relu_1Relulstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_2Mullstm_cell_679/Sigmoid_2:y:0"lstm_cell_679/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_679_matmul_readvariableop_resource.lstm_cell_679_matmul_1_readvariableop_resource-lstm_cell_679_biasadd_readvariableop_resource*
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
while_body_4118772*
condR
while_cond_4118771*K
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
NoOpNoOp%^lstm_cell_679/BiasAdd/ReadVariableOp$^lstm_cell_679/MatMul/ReadVariableOp&^lstm_cell_679/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_679/BiasAdd/ReadVariableOp$lstm_cell_679/BiasAdd/ReadVariableOp2J
#lstm_cell_679/MatMul/ReadVariableOp#lstm_cell_679/MatMul/ReadVariableOp2N
%lstm_cell_679/MatMul_1/ReadVariableOp%lstm_cell_679/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4118772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_679_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_679_matmul_readvariableop_resource:	d?G
4while_lstm_cell_679_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_679_biasadd_readvariableop_resource:	???*while/lstm_cell_679/BiasAdd/ReadVariableOp?)while/lstm_cell_679/MatMul/ReadVariableOp?+while/lstm_cell_679/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_679/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_679/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_679/addAddV2$while/lstm_cell_679/MatMul:product:0&while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_679/BiasAddBiasAddwhile/lstm_cell_679/add:z:02while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_679/splitSplit,while/lstm_cell_679/split/split_dim:output:0$while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_679/SigmoidSigmoid"while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_1Sigmoid"while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mulMul!while/lstm_cell_679/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_679/ReluRelu"while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_1Mulwhile/lstm_cell_679/Sigmoid:y:0&while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/add_1AddV2while/lstm_cell_679/mul:z:0while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_2Sigmoid"while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_679/Relu_1Reluwhile/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_2Mul!while/lstm_cell_679/Sigmoid_2:y:0(while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_679/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_679/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_679/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_679/BiasAdd/ReadVariableOp*^while/lstm_cell_679/MatMul/ReadVariableOp,^while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_679_biasadd_readvariableop_resource5while_lstm_cell_679_biasadd_readvariableop_resource_0"n
4while_lstm_cell_679_matmul_1_readvariableop_resource6while_lstm_cell_679_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_679_matmul_readvariableop_resource4while_lstm_cell_679_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_679/BiasAdd/ReadVariableOp*while/lstm_cell_679/BiasAdd/ReadVariableOp2V
)while/lstm_cell_679/MatMul/ReadVariableOp)while/lstm_cell_679/MatMul/ReadVariableOp2Z
+while/lstm_cell_679/MatMul_1/ReadVariableOp+while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4118156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_678_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_678_matmul_readvariableop_resource:	?G
4while_lstm_cell_678_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_678_biasadd_readvariableop_resource:	???*while/lstm_cell_678/BiasAdd/ReadVariableOp?)while/lstm_cell_678/MatMul/ReadVariableOp?+while/lstm_cell_678/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_678/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_678/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_678/addAddV2$while/lstm_cell_678/MatMul:product:0&while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_678/BiasAddBiasAddwhile/lstm_cell_678/add:z:02while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_678/splitSplit,while/lstm_cell_678/split/split_dim:output:0$while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_678/SigmoidSigmoid"while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_1Sigmoid"while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mulMul!while/lstm_cell_678/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_678/ReluRelu"while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_1Mulwhile/lstm_cell_678/Sigmoid:y:0&while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/add_1AddV2while/lstm_cell_678/mul:z:0while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_2Sigmoid"while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_678/Relu_1Reluwhile/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_2Mul!while/lstm_cell_678/Sigmoid_2:y:0(while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_678/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_678/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_678/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_678/BiasAdd/ReadVariableOp*^while/lstm_cell_678/MatMul/ReadVariableOp,^while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_678_biasadd_readvariableop_resource5while_lstm_cell_678_biasadd_readvariableop_resource_0"n
4while_lstm_cell_678_matmul_1_readvariableop_resource6while_lstm_cell_678_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_678_matmul_readvariableop_resource4while_lstm_cell_678_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_678/BiasAdd/ReadVariableOp*while/lstm_cell_678/BiasAdd/ReadVariableOp2V
)while/lstm_cell_678/MatMul/ReadVariableOp)while/lstm_cell_678/MatMul/ReadVariableOp2Z
+while/lstm_cell_678/MatMul_1/ReadVariableOp+while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_274_lstm_823_while_body_4114370L
Hsequential_274_lstm_823_while_sequential_274_lstm_823_while_loop_counterR
Nsequential_274_lstm_823_while_sequential_274_lstm_823_while_maximum_iterations-
)sequential_274_lstm_823_while_placeholder/
+sequential_274_lstm_823_while_placeholder_1/
+sequential_274_lstm_823_while_placeholder_2/
+sequential_274_lstm_823_while_placeholder_3K
Gsequential_274_lstm_823_while_sequential_274_lstm_823_strided_slice_1_0?
?sequential_274_lstm_823_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_823_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_274_lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0:	d?a
Nsequential_274_lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?\
Msequential_274_lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0:	?*
&sequential_274_lstm_823_while_identity,
(sequential_274_lstm_823_while_identity_1,
(sequential_274_lstm_823_while_identity_2,
(sequential_274_lstm_823_while_identity_3,
(sequential_274_lstm_823_while_identity_4,
(sequential_274_lstm_823_while_identity_5I
Esequential_274_lstm_823_while_sequential_274_lstm_823_strided_slice_1?
?sequential_274_lstm_823_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_823_tensorarrayunstack_tensorlistfromtensor]
Jsequential_274_lstm_823_while_lstm_cell_679_matmul_readvariableop_resource:	d?_
Lsequential_274_lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource:	2?Z
Ksequential_274_lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource:	???Bsequential_274/lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp?Asequential_274/lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp?Csequential_274/lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp?
Osequential_274/lstm_823/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_274/lstm_823/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_274_lstm_823_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_823_tensorarrayunstack_tensorlistfromtensor_0)sequential_274_lstm_823_while_placeholderXsequential_274/lstm_823/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_274/lstm_823/while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOpLsequential_274_lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_274/lstm_823/while/lstm_cell_679/MatMulMatMulHsequential_274/lstm_823/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_274/lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_274/lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOpNsequential_274_lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_274/lstm_823/while/lstm_cell_679/MatMul_1MatMul+sequential_274_lstm_823_while_placeholder_2Ksequential_274/lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_274/lstm_823/while/lstm_cell_679/addAddV2<sequential_274/lstm_823/while/lstm_cell_679/MatMul:product:0>sequential_274/lstm_823/while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_274/lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOpMsequential_274_lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_274/lstm_823/while/lstm_cell_679/BiasAddBiasAdd3sequential_274/lstm_823/while/lstm_cell_679/add:z:0Jsequential_274/lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_274/lstm_823/while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_274/lstm_823/while/lstm_cell_679/splitSplitDsequential_274/lstm_823/while/lstm_cell_679/split/split_dim:output:0<sequential_274/lstm_823/while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_274/lstm_823/while/lstm_cell_679/SigmoidSigmoid:sequential_274/lstm_823/while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_274/lstm_823/while/lstm_cell_679/Sigmoid_1Sigmoid:sequential_274/lstm_823/while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_274/lstm_823/while/lstm_cell_679/mulMul9sequential_274/lstm_823/while/lstm_cell_679/Sigmoid_1:y:0+sequential_274_lstm_823_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_274/lstm_823/while/lstm_cell_679/ReluRelu:sequential_274/lstm_823/while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_274/lstm_823/while/lstm_cell_679/mul_1Mul7sequential_274/lstm_823/while/lstm_cell_679/Sigmoid:y:0>sequential_274/lstm_823/while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_274/lstm_823/while/lstm_cell_679/add_1AddV23sequential_274/lstm_823/while/lstm_cell_679/mul:z:05sequential_274/lstm_823/while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_274/lstm_823/while/lstm_cell_679/Sigmoid_2Sigmoid:sequential_274/lstm_823/while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_274/lstm_823/while/lstm_cell_679/Relu_1Relu5sequential_274/lstm_823/while/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_274/lstm_823/while/lstm_cell_679/mul_2Mul9sequential_274/lstm_823/while/lstm_cell_679/Sigmoid_2:y:0@sequential_274/lstm_823/while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_274/lstm_823/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_274_lstm_823_while_placeholder_1)sequential_274_lstm_823_while_placeholder5sequential_274/lstm_823/while/lstm_cell_679/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_274/lstm_823/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_274/lstm_823/while/addAddV2)sequential_274_lstm_823_while_placeholder,sequential_274/lstm_823/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_274/lstm_823/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_274/lstm_823/while/add_1AddV2Hsequential_274_lstm_823_while_sequential_274_lstm_823_while_loop_counter.sequential_274/lstm_823/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_274/lstm_823/while/IdentityIdentity'sequential_274/lstm_823/while/add_1:z:0#^sequential_274/lstm_823/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_823/while/Identity_1IdentityNsequential_274_lstm_823_while_sequential_274_lstm_823_while_maximum_iterations#^sequential_274/lstm_823/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_823/while/Identity_2Identity%sequential_274/lstm_823/while/add:z:0#^sequential_274/lstm_823/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_823/while/Identity_3IdentityRsequential_274/lstm_823/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_274/lstm_823/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_823/while/Identity_4Identity5sequential_274/lstm_823/while/lstm_cell_679/mul_2:z:0#^sequential_274/lstm_823/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_274/lstm_823/while/Identity_5Identity5sequential_274/lstm_823/while/lstm_cell_679/add_1:z:0#^sequential_274/lstm_823/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_274/lstm_823/while/NoOpNoOpC^sequential_274/lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOpB^sequential_274/lstm_823/while/lstm_cell_679/MatMul/ReadVariableOpD^sequential_274/lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_274_lstm_823_while_identity/sequential_274/lstm_823/while/Identity:output:0"]
(sequential_274_lstm_823_while_identity_11sequential_274/lstm_823/while/Identity_1:output:0"]
(sequential_274_lstm_823_while_identity_21sequential_274/lstm_823/while/Identity_2:output:0"]
(sequential_274_lstm_823_while_identity_31sequential_274/lstm_823/while/Identity_3:output:0"]
(sequential_274_lstm_823_while_identity_41sequential_274/lstm_823/while/Identity_4:output:0"]
(sequential_274_lstm_823_while_identity_51sequential_274/lstm_823/while/Identity_5:output:0"?
Ksequential_274_lstm_823_while_lstm_cell_679_biasadd_readvariableop_resourceMsequential_274_lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0"?
Lsequential_274_lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resourceNsequential_274_lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0"?
Jsequential_274_lstm_823_while_lstm_cell_679_matmul_readvariableop_resourceLsequential_274_lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0"?
Esequential_274_lstm_823_while_sequential_274_lstm_823_strided_slice_1Gsequential_274_lstm_823_while_sequential_274_lstm_823_strided_slice_1_0"?
?sequential_274_lstm_823_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_823_tensorarrayunstack_tensorlistfromtensor?sequential_274_lstm_823_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_823_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_274/lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOpBsequential_274/lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp2?
Asequential_274/lstm_823/while/lstm_cell_679/MatMul/ReadVariableOpAsequential_274/lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp2?
Csequential_274/lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOpCsequential_274/lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4115863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4115863___redundant_placeholder05
1while_while_cond_4115863___redundant_placeholder15
1while_while_cond_4115863___redundant_placeholder25
1while_while_cond_4115863___redundant_placeholder3
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

lstm_822_while_body_4117399.
*lstm_822_while_lstm_822_while_loop_counter4
0lstm_822_while_lstm_822_while_maximum_iterations
lstm_822_while_placeholder 
lstm_822_while_placeholder_1 
lstm_822_while_placeholder_2 
lstm_822_while_placeholder_3-
)lstm_822_while_lstm_822_strided_slice_1_0i
elstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0:	?R
?lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?M
>lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
lstm_822_while_identity
lstm_822_while_identity_1
lstm_822_while_identity_2
lstm_822_while_identity_3
lstm_822_while_identity_4
lstm_822_while_identity_5+
'lstm_822_while_lstm_822_strided_slice_1g
clstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensorN
;lstm_822_while_lstm_cell_678_matmul_readvariableop_resource:	?P
=lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource:	d?K
<lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource:	???3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp?2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp?4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp?
@lstm_822/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_822/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensor_0lstm_822_while_placeholderIlstm_822/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp=lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_822/while/lstm_cell_678/MatMulMatMul9lstm_822/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp?lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_822/while/lstm_cell_678/MatMul_1MatMullstm_822_while_placeholder_2<lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_822/while/lstm_cell_678/addAddV2-lstm_822/while/lstm_cell_678/MatMul:product:0/lstm_822/while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp>lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_822/while/lstm_cell_678/BiasAddBiasAdd$lstm_822/while/lstm_cell_678/add:z:0;lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_822/while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_822/while/lstm_cell_678/splitSplit5lstm_822/while/lstm_cell_678/split/split_dim:output:0-lstm_822/while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_822/while/lstm_cell_678/SigmoidSigmoid+lstm_822/while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_822/while/lstm_cell_678/Sigmoid_1Sigmoid+lstm_822/while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_822/while/lstm_cell_678/mulMul*lstm_822/while/lstm_cell_678/Sigmoid_1:y:0lstm_822_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_822/while/lstm_cell_678/ReluRelu+lstm_822/while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_822/while/lstm_cell_678/mul_1Mul(lstm_822/while/lstm_cell_678/Sigmoid:y:0/lstm_822/while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_822/while/lstm_cell_678/add_1AddV2$lstm_822/while/lstm_cell_678/mul:z:0&lstm_822/while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_822/while/lstm_cell_678/Sigmoid_2Sigmoid+lstm_822/while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_822/while/lstm_cell_678/Relu_1Relu&lstm_822/while/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_822/while/lstm_cell_678/mul_2Mul*lstm_822/while/lstm_cell_678/Sigmoid_2:y:01lstm_822/while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_822/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_822_while_placeholder_1lstm_822_while_placeholder&lstm_822/while/lstm_cell_678/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_822/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_822/while/addAddV2lstm_822_while_placeholderlstm_822/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_822/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_822/while/add_1AddV2*lstm_822_while_lstm_822_while_loop_counterlstm_822/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_822/while/IdentityIdentitylstm_822/while/add_1:z:0^lstm_822/while/NoOp*
T0*
_output_shapes
: ?
lstm_822/while/Identity_1Identity0lstm_822_while_lstm_822_while_maximum_iterations^lstm_822/while/NoOp*
T0*
_output_shapes
: t
lstm_822/while/Identity_2Identitylstm_822/while/add:z:0^lstm_822/while/NoOp*
T0*
_output_shapes
: ?
lstm_822/while/Identity_3IdentityClstm_822/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_822/while/NoOp*
T0*
_output_shapes
: ?
lstm_822/while/Identity_4Identity&lstm_822/while/lstm_cell_678/mul_2:z:0^lstm_822/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_822/while/Identity_5Identity&lstm_822/while/lstm_cell_678/add_1:z:0^lstm_822/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_822/while/NoOpNoOp4^lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp3^lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp5^lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_822_while_identity lstm_822/while/Identity:output:0"?
lstm_822_while_identity_1"lstm_822/while/Identity_1:output:0"?
lstm_822_while_identity_2"lstm_822/while/Identity_2:output:0"?
lstm_822_while_identity_3"lstm_822/while/Identity_3:output:0"?
lstm_822_while_identity_4"lstm_822/while/Identity_4:output:0"?
lstm_822_while_identity_5"lstm_822/while/Identity_5:output:0"T
'lstm_822_while_lstm_822_strided_slice_1)lstm_822_while_lstm_822_strided_slice_1_0"~
<lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource>lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0"?
=lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource?lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0"|
;lstm_822_while_lstm_cell_678_matmul_readvariableop_resource=lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0"?
clstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensorelstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp2h
2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp2l
4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_824_layer_call_fn_4119021
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4115640o
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
?
while_body_4119388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_680_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_680_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_680_matmul_readvariableop_resource:2(F
4while_lstm_cell_680_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_680_biasadd_readvariableop_resource:(??*while/lstm_cell_680/BiasAdd/ReadVariableOp?)while/lstm_cell_680/MatMul/ReadVariableOp?+while/lstm_cell_680/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_680/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_680/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_680/addAddV2$while/lstm_cell_680/MatMul:product:0&while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_680/BiasAddBiasAddwhile/lstm_cell_680/add:z:02while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_680/splitSplit,while/lstm_cell_680/split/split_dim:output:0$while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_680/SigmoidSigmoid"while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_1Sigmoid"while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mulMul!while/lstm_cell_680/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_680/ReluRelu"while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_1Mulwhile/lstm_cell_680/Sigmoid:y:0&while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/add_1AddV2while/lstm_cell_680/mul:z:0while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_2Sigmoid"while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_680/Relu_1Reluwhile/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_2Mul!while/lstm_cell_680/Sigmoid_2:y:0(while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_680/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_680/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_680/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_680/BiasAdd/ReadVariableOp*^while/lstm_cell_680/MatMul/ReadVariableOp,^while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_680_biasadd_readvariableop_resource5while_lstm_cell_680_biasadd_readvariableop_resource_0"n
4while_lstm_cell_680_matmul_1_readvariableop_resource6while_lstm_cell_680_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_680_matmul_readvariableop_resource4while_lstm_cell_680_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_680/BiasAdd/ReadVariableOp*while/lstm_cell_680/BiasAdd/ReadVariableOp2V
)while/lstm_cell_680/MatMul/ReadVariableOp)while/lstm_cell_680/MatMul/ReadVariableOp2Z
+while/lstm_cell_680/MatMul_1/ReadVariableOp+while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116794
lstm_822_input#
lstm_822_4116767:	?#
lstm_822_4116769:	d?
lstm_822_4116771:	?#
lstm_823_4116774:	d?#
lstm_823_4116776:	2?
lstm_823_4116778:	?"
lstm_824_4116781:2("
lstm_824_4116783:
(
lstm_824_4116785:(#
dense_274_4116788:

dense_274_4116790:
identity??!dense_274/StatefulPartitionedCall? lstm_822/StatefulPartitionedCall? lstm_823/StatefulPartitionedCall? lstm_824/StatefulPartitionedCall?
 lstm_822/StatefulPartitionedCallStatefulPartitionedCalllstm_822_inputlstm_822_4116767lstm_822_4116769lstm_822_4116771*
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4115798?
 lstm_823/StatefulPartitionedCallStatefulPartitionedCall)lstm_822/StatefulPartitionedCall:output:0lstm_823_4116774lstm_823_4116776lstm_823_4116778*
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115948?
 lstm_824/StatefulPartitionedCallStatefulPartitionedCall)lstm_823/StatefulPartitionedCall:output:0lstm_824_4116781lstm_824_4116783lstm_824_4116785*
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116098?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall)lstm_824/StatefulPartitionedCall:output:0dense_274_4116788dense_274_4116790*
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
F__inference_dense_274_layer_call_and_return_conditional_losses_4116116y
IdentityIdentity*dense_274/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_274/StatefulPartitionedCall!^lstm_822/StatefulPartitionedCall!^lstm_823/StatefulPartitionedCall!^lstm_824/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall2D
 lstm_822/StatefulPartitionedCall lstm_822/StatefulPartitionedCall2D
 lstm_823/StatefulPartitionedCall lstm_823/StatefulPartitionedCall2D
 lstm_824/StatefulPartitionedCall lstm_824/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_822_input
?
?
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4119896

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
while_cond_4116559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4116559___redundant_placeholder05
1while_while_cond_4116559___redundant_placeholder15
1while_while_cond_4116559___redundant_placeholder25
1while_while_cond_4116559___redundant_placeholder3
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
*sequential_274_lstm_822_while_cond_4114230L
Hsequential_274_lstm_822_while_sequential_274_lstm_822_while_loop_counterR
Nsequential_274_lstm_822_while_sequential_274_lstm_822_while_maximum_iterations-
)sequential_274_lstm_822_while_placeholder/
+sequential_274_lstm_822_while_placeholder_1/
+sequential_274_lstm_822_while_placeholder_2/
+sequential_274_lstm_822_while_placeholder_3N
Jsequential_274_lstm_822_while_less_sequential_274_lstm_822_strided_slice_1e
asequential_274_lstm_822_while_sequential_274_lstm_822_while_cond_4114230___redundant_placeholder0e
asequential_274_lstm_822_while_sequential_274_lstm_822_while_cond_4114230___redundant_placeholder1e
asequential_274_lstm_822_while_sequential_274_lstm_822_while_cond_4114230___redundant_placeholder2e
asequential_274_lstm_822_while_sequential_274_lstm_822_while_cond_4114230___redundant_placeholder3*
&sequential_274_lstm_822_while_identity
?
"sequential_274/lstm_822/while/LessLess)sequential_274_lstm_822_while_placeholderJsequential_274_lstm_822_while_less_sequential_274_lstm_822_strided_slice_1*
T0*
_output_shapes
: {
&sequential_274/lstm_822/while/IdentityIdentity&sequential_274/lstm_822/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_274_lstm_822_while_identity/sequential_274/lstm_822/while/Identity:output:0*(
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
?W
?
 __inference__traced_save_4120071
file_prefix/
+savev2_dense_274_kernel_read_readvariableop-
)savev2_dense_274_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_822_lstm_cell_822_kernel_read_readvariableopF
Bsavev2_lstm_822_lstm_cell_822_recurrent_kernel_read_readvariableop:
6savev2_lstm_822_lstm_cell_822_bias_read_readvariableop<
8savev2_lstm_823_lstm_cell_823_kernel_read_readvariableopF
Bsavev2_lstm_823_lstm_cell_823_recurrent_kernel_read_readvariableop:
6savev2_lstm_823_lstm_cell_823_bias_read_readvariableop<
8savev2_lstm_824_lstm_cell_824_kernel_read_readvariableopF
Bsavev2_lstm_824_lstm_cell_824_recurrent_kernel_read_readvariableop:
6savev2_lstm_824_lstm_cell_824_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_274_kernel_m_read_readvariableop4
0savev2_adam_dense_274_bias_m_read_readvariableopC
?savev2_adam_lstm_822_lstm_cell_822_kernel_m_read_readvariableopM
Isavev2_adam_lstm_822_lstm_cell_822_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_822_lstm_cell_822_bias_m_read_readvariableopC
?savev2_adam_lstm_823_lstm_cell_823_kernel_m_read_readvariableopM
Isavev2_adam_lstm_823_lstm_cell_823_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_823_lstm_cell_823_bias_m_read_readvariableopC
?savev2_adam_lstm_824_lstm_cell_824_kernel_m_read_readvariableopM
Isavev2_adam_lstm_824_lstm_cell_824_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_824_lstm_cell_824_bias_m_read_readvariableop6
2savev2_adam_dense_274_kernel_v_read_readvariableop4
0savev2_adam_dense_274_bias_v_read_readvariableopC
?savev2_adam_lstm_822_lstm_cell_822_kernel_v_read_readvariableopM
Isavev2_adam_lstm_822_lstm_cell_822_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_822_lstm_cell_822_bias_v_read_readvariableopC
?savev2_adam_lstm_823_lstm_cell_823_kernel_v_read_readvariableopM
Isavev2_adam_lstm_823_lstm_cell_823_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_823_lstm_cell_823_bias_v_read_readvariableopC
?savev2_adam_lstm_824_lstm_cell_824_kernel_v_read_readvariableopM
Isavev2_adam_lstm_824_lstm_cell_824_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_824_lstm_cell_824_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_274_kernel_read_readvariableop)savev2_dense_274_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_822_lstm_cell_822_kernel_read_readvariableopBsavev2_lstm_822_lstm_cell_822_recurrent_kernel_read_readvariableop6savev2_lstm_822_lstm_cell_822_bias_read_readvariableop8savev2_lstm_823_lstm_cell_823_kernel_read_readvariableopBsavev2_lstm_823_lstm_cell_823_recurrent_kernel_read_readvariableop6savev2_lstm_823_lstm_cell_823_bias_read_readvariableop8savev2_lstm_824_lstm_cell_824_kernel_read_readvariableopBsavev2_lstm_824_lstm_cell_824_recurrent_kernel_read_readvariableop6savev2_lstm_824_lstm_cell_824_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_274_kernel_m_read_readvariableop0savev2_adam_dense_274_bias_m_read_readvariableop?savev2_adam_lstm_822_lstm_cell_822_kernel_m_read_readvariableopIsavev2_adam_lstm_822_lstm_cell_822_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_822_lstm_cell_822_bias_m_read_readvariableop?savev2_adam_lstm_823_lstm_cell_823_kernel_m_read_readvariableopIsavev2_adam_lstm_823_lstm_cell_823_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_823_lstm_cell_823_bias_m_read_readvariableop?savev2_adam_lstm_824_lstm_cell_824_kernel_m_read_readvariableopIsavev2_adam_lstm_824_lstm_cell_824_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_824_lstm_cell_824_bias_m_read_readvariableop2savev2_adam_dense_274_kernel_v_read_readvariableop0savev2_adam_dense_274_bias_v_read_readvariableop?savev2_adam_lstm_822_lstm_cell_822_kernel_v_read_readvariableopIsavev2_adam_lstm_822_lstm_cell_822_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_822_lstm_cell_822_bias_v_read_readvariableop?savev2_adam_lstm_823_lstm_cell_823_kernel_v_read_readvariableopIsavev2_adam_lstm_823_lstm_cell_823_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_823_lstm_cell_823_bias_v_read_readvariableop?savev2_adam_lstm_824_lstm_cell_824_kernel_v_read_readvariableopIsavev2_adam_lstm_824_lstm_cell_824_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_824_lstm_cell_824_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?8
?
while_body_4119531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_680_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_680_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_680_matmul_readvariableop_resource:2(F
4while_lstm_cell_680_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_680_biasadd_readvariableop_resource:(??*while/lstm_cell_680/BiasAdd/ReadVariableOp?)while/lstm_cell_680/MatMul/ReadVariableOp?+while/lstm_cell_680/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_680/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_680/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_680/addAddV2$while/lstm_cell_680/MatMul:product:0&while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_680/BiasAddBiasAddwhile/lstm_cell_680/add:z:02while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_680/splitSplit,while/lstm_cell_680/split/split_dim:output:0$while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_680/SigmoidSigmoid"while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_1Sigmoid"while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mulMul!while/lstm_cell_680/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_680/ReluRelu"while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_1Mulwhile/lstm_cell_680/Sigmoid:y:0&while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/add_1AddV2while/lstm_cell_680/mul:z:0while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_2Sigmoid"while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_680/Relu_1Reluwhile/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_2Mul!while/lstm_cell_680/Sigmoid_2:y:0(while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_680/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_680/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_680/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_680/BiasAdd/ReadVariableOp*^while/lstm_cell_680/MatMul/ReadVariableOp,^while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_680_biasadd_readvariableop_resource5while_lstm_cell_680_biasadd_readvariableop_resource_0"n
4while_lstm_cell_680_matmul_1_readvariableop_resource6while_lstm_cell_680_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_680_matmul_readvariableop_resource4while_lstm_cell_680_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_680/BiasAdd/ReadVariableOp*while/lstm_cell_680/BiasAdd/ReadVariableOp2V
)while/lstm_cell_680/MatMul/ReadVariableOp)while/lstm_cell_680/MatMul/ReadVariableOp2Z
+while/lstm_cell_680/MatMul_1/ReadVariableOp+while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4118914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118914___redundant_placeholder05
1while_while_cond_4118914___redundant_placeholder15
1while_while_cond_4118914___redundant_placeholder25
1while_while_cond_4118914___redundant_placeholder3
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118240

inputs?
,lstm_cell_678_matmul_readvariableop_resource:	?A
.lstm_cell_678_matmul_1_readvariableop_resource:	d?<
-lstm_cell_678_biasadd_readvariableop_resource:	?
identity??$lstm_cell_678/BiasAdd/ReadVariableOp?#lstm_cell_678/MatMul/ReadVariableOp?%lstm_cell_678/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_678/MatMul/ReadVariableOpReadVariableOp,lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_678/MatMulMatMulstrided_slice_2:output:0+lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_678/MatMul_1MatMulzeros:output:0-lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_678/addAddV2lstm_cell_678/MatMul:product:0 lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_678/BiasAddBiasAddlstm_cell_678/add:z:0,lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_678/splitSplit&lstm_cell_678/split/split_dim:output:0lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_678/SigmoidSigmoidlstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_1Sigmoidlstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_678/mulMullstm_cell_678/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_678/ReluRelulstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_1Mullstm_cell_678/Sigmoid:y:0 lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_678/add_1AddV2lstm_cell_678/mul:z:0lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_2Sigmoidlstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_678/Relu_1Relulstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_2Mullstm_cell_678/Sigmoid_2:y:0"lstm_cell_678/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_678_matmul_readvariableop_resource.lstm_cell_678_matmul_1_readvariableop_resource-lstm_cell_678_biasadd_readvariableop_resource*
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
while_body_4118156*
condR
while_cond_4118155*K
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
NoOpNoOp%^lstm_cell_678/BiasAdd/ReadVariableOp$^lstm_cell_678/MatMul/ReadVariableOp&^lstm_cell_678/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_678/BiasAdd/ReadVariableOp$lstm_cell_678/BiasAdd/ReadVariableOp2J
#lstm_cell_678/MatMul/ReadVariableOp#lstm_cell_678/MatMul/ReadVariableOp2N
%lstm_cell_678/MatMul_1/ReadVariableOp%lstm_cell_678/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4119830

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
while_cond_4115713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4115713___redundant_placeholder05
1while_while_cond_4115713___redundant_placeholder15
1while_while_cond_4115713___redundant_placeholder25
1while_while_cond_4115713___redundant_placeholder3
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
/__inference_lstm_cell_678_layer_call_fn_4119668

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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114812o
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

?
0__inference_sequential_274_layer_call_fn_4116886

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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116123o
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
while_cond_4118628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118628___redundant_placeholder05
1while_while_cond_4118628___redundant_placeholder15
1while_while_cond_4118628___redundant_placeholder25
1while_while_cond_4118628___redundant_placeholder3
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
lstm_824_while_cond_4117676.
*lstm_824_while_lstm_824_while_loop_counter4
0lstm_824_while_lstm_824_while_maximum_iterations
lstm_824_while_placeholder 
lstm_824_while_placeholder_1 
lstm_824_while_placeholder_2 
lstm_824_while_placeholder_30
,lstm_824_while_less_lstm_824_strided_slice_1G
Clstm_824_while_lstm_824_while_cond_4117676___redundant_placeholder0G
Clstm_824_while_lstm_824_while_cond_4117676___redundant_placeholder1G
Clstm_824_while_lstm_824_while_cond_4117676___redundant_placeholder2G
Clstm_824_while_lstm_824_while_cond_4117676___redundant_placeholder3
lstm_824_while_identity
?
lstm_824/while/LessLesslstm_824_while_placeholder,lstm_824_while_less_lstm_824_strided_slice_1*
T0*
_output_shapes
: ]
lstm_824/while/IdentityIdentitylstm_824/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_824_while_identity lstm_824/while/Identity:output:0*(
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
while_body_4116014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_680_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_680_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_680_matmul_readvariableop_resource:2(F
4while_lstm_cell_680_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_680_biasadd_readvariableop_resource:(??*while/lstm_cell_680/BiasAdd/ReadVariableOp?)while/lstm_cell_680/MatMul/ReadVariableOp?+while/lstm_cell_680/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_680/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_680/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_680/addAddV2$while/lstm_cell_680/MatMul:product:0&while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_680/BiasAddBiasAddwhile/lstm_cell_680/add:z:02while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_680/splitSplit,while/lstm_cell_680/split/split_dim:output:0$while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_680/SigmoidSigmoid"while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_1Sigmoid"while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mulMul!while/lstm_cell_680/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_680/ReluRelu"while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_1Mulwhile/lstm_cell_680/Sigmoid:y:0&while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/add_1AddV2while/lstm_cell_680/mul:z:0while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_2Sigmoid"while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_680/Relu_1Reluwhile/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_2Mul!while/lstm_cell_680/Sigmoid_2:y:0(while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_680/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_680/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_680/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_680/BiasAdd/ReadVariableOp*^while/lstm_cell_680/MatMul/ReadVariableOp,^while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_680_biasadd_readvariableop_resource5while_lstm_cell_680_biasadd_readvariableop_resource_0"n
4while_lstm_cell_680_matmul_1_readvariableop_resource6while_lstm_cell_680_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_680_matmul_readvariableop_resource4while_lstm_cell_680_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_680/BiasAdd/ReadVariableOp*while/lstm_cell_680/BiasAdd/ReadVariableOp2V
)while/lstm_cell_680/MatMul/ReadVariableOp)while/lstm_cell_680/MatMul/ReadVariableOp2Z
+while/lstm_cell_680/MatMul_1/ReadVariableOp+while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_823_layer_call_fn_4118416

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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115948s
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
?J
?
E__inference_lstm_822_layer_call_and_return_conditional_losses_4116644

inputs?
,lstm_cell_678_matmul_readvariableop_resource:	?A
.lstm_cell_678_matmul_1_readvariableop_resource:	d?<
-lstm_cell_678_biasadd_readvariableop_resource:	?
identity??$lstm_cell_678/BiasAdd/ReadVariableOp?#lstm_cell_678/MatMul/ReadVariableOp?%lstm_cell_678/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_678/MatMul/ReadVariableOpReadVariableOp,lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_678/MatMulMatMulstrided_slice_2:output:0+lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_678/MatMul_1MatMulzeros:output:0-lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_678/addAddV2lstm_cell_678/MatMul:product:0 lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_678/BiasAddBiasAddlstm_cell_678/add:z:0,lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_678/splitSplit&lstm_cell_678/split/split_dim:output:0lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_678/SigmoidSigmoidlstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_1Sigmoidlstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_678/mulMullstm_cell_678/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_678/ReluRelulstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_1Mullstm_cell_678/Sigmoid:y:0 lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_678/add_1AddV2lstm_cell_678/mul:z:0lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_2Sigmoidlstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_678/Relu_1Relulstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_2Mullstm_cell_678/Sigmoid_2:y:0"lstm_cell_678/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_678_matmul_readvariableop_resource.lstm_cell_678_matmul_1_readvariableop_resource-lstm_cell_678_biasadd_readvariableop_resource*
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
while_body_4116560*
condR
while_cond_4116559*K
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
NoOpNoOp%^lstm_cell_678/BiasAdd/ReadVariableOp$^lstm_cell_678/MatMul/ReadVariableOp&^lstm_cell_678/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_678/BiasAdd/ReadVariableOp$lstm_cell_678/BiasAdd/ReadVariableOp2J
#lstm_cell_678/MatMul/ReadVariableOp#lstm_cell_678/MatMul/ReadVariableOp2N
%lstm_cell_678/MatMul_1/ReadVariableOp%lstm_cell_678/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_679_layer_call_fn_4119749

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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115016o
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
?
?
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116123

inputs#
lstm_822_4115799:	?#
lstm_822_4115801:	d?
lstm_822_4115803:	?#
lstm_823_4115949:	d?#
lstm_823_4115951:	2?
lstm_823_4115953:	?"
lstm_824_4116099:2("
lstm_824_4116101:
(
lstm_824_4116103:(#
dense_274_4116117:

dense_274_4116119:
identity??!dense_274/StatefulPartitionedCall? lstm_822/StatefulPartitionedCall? lstm_823/StatefulPartitionedCall? lstm_824/StatefulPartitionedCall?
 lstm_822/StatefulPartitionedCallStatefulPartitionedCallinputslstm_822_4115799lstm_822_4115801lstm_822_4115803*
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4115798?
 lstm_823/StatefulPartitionedCallStatefulPartitionedCall)lstm_822/StatefulPartitionedCall:output:0lstm_823_4115949lstm_823_4115951lstm_823_4115953*
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115948?
 lstm_824/StatefulPartitionedCallStatefulPartitionedCall)lstm_823/StatefulPartitionedCall:output:0lstm_824_4116099lstm_824_4116101lstm_824_4116103*
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116098?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall)lstm_824/StatefulPartitionedCall:output:0dense_274_4116117dense_274_4116119*
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
F__inference_dense_274_layer_call_and_return_conditional_losses_4116116y
IdentityIdentity*dense_274/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_274/StatefulPartitionedCall!^lstm_822/StatefulPartitionedCall!^lstm_823/StatefulPartitionedCall!^lstm_824/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall2D
 lstm_822/StatefulPartitionedCall lstm_822/StatefulPartitionedCall2D
 lstm_823/StatefulPartitionedCall lstm_823/StatefulPartitionedCall2D
 lstm_824/StatefulPartitionedCall lstm_824/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4114870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4114870___redundant_placeholder05
1while_while_cond_4114870___redundant_placeholder15
1while_while_cond_4114870___redundant_placeholder25
1while_while_cond_4114870___redundant_placeholder3
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118999

inputs?
,lstm_cell_679_matmul_readvariableop_resource:	d?A
.lstm_cell_679_matmul_1_readvariableop_resource:	2?<
-lstm_cell_679_biasadd_readvariableop_resource:	?
identity??$lstm_cell_679/BiasAdd/ReadVariableOp?#lstm_cell_679/MatMul/ReadVariableOp?%lstm_cell_679/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_679/MatMul/ReadVariableOpReadVariableOp,lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_679/MatMulMatMulstrided_slice_2:output:0+lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_679/MatMul_1MatMulzeros:output:0-lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_679/addAddV2lstm_cell_679/MatMul:product:0 lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_679/BiasAddBiasAddlstm_cell_679/add:z:0,lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_679/splitSplit&lstm_cell_679/split/split_dim:output:0lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_679/SigmoidSigmoidlstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_1Sigmoidlstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_679/mulMullstm_cell_679/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_679/ReluRelulstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_1Mullstm_cell_679/Sigmoid:y:0 lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_679/add_1AddV2lstm_cell_679/mul:z:0lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_2Sigmoidlstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_679/Relu_1Relulstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_2Mullstm_cell_679/Sigmoid_2:y:0"lstm_cell_679/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_679_matmul_readvariableop_resource.lstm_cell_679_matmul_1_readvariableop_resource-lstm_cell_679_biasadd_readvariableop_resource*
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
while_body_4118915*
condR
while_cond_4118914*K
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
NoOpNoOp%^lstm_cell_679/BiasAdd/ReadVariableOp$^lstm_cell_679/MatMul/ReadVariableOp&^lstm_cell_679/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_679/BiasAdd/ReadVariableOp$lstm_cell_679/BiasAdd/ReadVariableOp2J
#lstm_cell_679/MatMul/ReadVariableOp#lstm_cell_679/MatMul/ReadVariableOp2N
%lstm_cell_679/MatMul_1/ReadVariableOp%lstm_cell_679/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_824_while_body_4117677.
*lstm_824_while_lstm_824_while_loop_counter4
0lstm_824_while_lstm_824_while_maximum_iterations
lstm_824_while_placeholder 
lstm_824_while_placeholder_1 
lstm_824_while_placeholder_2 
lstm_824_while_placeholder_3-
)lstm_824_while_lstm_824_strided_slice_1_0i
elstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0:2(Q
?lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(L
>lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0:(
lstm_824_while_identity
lstm_824_while_identity_1
lstm_824_while_identity_2
lstm_824_while_identity_3
lstm_824_while_identity_4
lstm_824_while_identity_5+
'lstm_824_while_lstm_824_strided_slice_1g
clstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensorM
;lstm_824_while_lstm_cell_680_matmul_readvariableop_resource:2(O
=lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource:
(J
<lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource:(??3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp?2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp?4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp?
@lstm_824/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_824/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensor_0lstm_824_while_placeholderIlstm_824/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp=lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_824/while/lstm_cell_680/MatMulMatMul9lstm_824/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp?lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_824/while/lstm_cell_680/MatMul_1MatMullstm_824_while_placeholder_2<lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_824/while/lstm_cell_680/addAddV2-lstm_824/while/lstm_cell_680/MatMul:product:0/lstm_824/while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp>lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_824/while/lstm_cell_680/BiasAddBiasAdd$lstm_824/while/lstm_cell_680/add:z:0;lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_824/while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_824/while/lstm_cell_680/splitSplit5lstm_824/while/lstm_cell_680/split/split_dim:output:0-lstm_824/while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_824/while/lstm_cell_680/SigmoidSigmoid+lstm_824/while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_824/while/lstm_cell_680/Sigmoid_1Sigmoid+lstm_824/while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_824/while/lstm_cell_680/mulMul*lstm_824/while/lstm_cell_680/Sigmoid_1:y:0lstm_824_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_824/while/lstm_cell_680/ReluRelu+lstm_824/while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_824/while/lstm_cell_680/mul_1Mul(lstm_824/while/lstm_cell_680/Sigmoid:y:0/lstm_824/while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_824/while/lstm_cell_680/add_1AddV2$lstm_824/while/lstm_cell_680/mul:z:0&lstm_824/while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_824/while/lstm_cell_680/Sigmoid_2Sigmoid+lstm_824/while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_824/while/lstm_cell_680/Relu_1Relu&lstm_824/while/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_824/while/lstm_cell_680/mul_2Mul*lstm_824/while/lstm_cell_680/Sigmoid_2:y:01lstm_824/while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_824/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_824_while_placeholder_1lstm_824_while_placeholder&lstm_824/while/lstm_cell_680/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_824/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_824/while/addAddV2lstm_824_while_placeholderlstm_824/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_824/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_824/while/add_1AddV2*lstm_824_while_lstm_824_while_loop_counterlstm_824/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_824/while/IdentityIdentitylstm_824/while/add_1:z:0^lstm_824/while/NoOp*
T0*
_output_shapes
: ?
lstm_824/while/Identity_1Identity0lstm_824_while_lstm_824_while_maximum_iterations^lstm_824/while/NoOp*
T0*
_output_shapes
: t
lstm_824/while/Identity_2Identitylstm_824/while/add:z:0^lstm_824/while/NoOp*
T0*
_output_shapes
: ?
lstm_824/while/Identity_3IdentityClstm_824/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_824/while/NoOp*
T0*
_output_shapes
: ?
lstm_824/while/Identity_4Identity&lstm_824/while/lstm_cell_680/mul_2:z:0^lstm_824/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_824/while/Identity_5Identity&lstm_824/while/lstm_cell_680/add_1:z:0^lstm_824/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_824/while/NoOpNoOp4^lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp3^lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp5^lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_824_while_identity lstm_824/while/Identity:output:0"?
lstm_824_while_identity_1"lstm_824/while/Identity_1:output:0"?
lstm_824_while_identity_2"lstm_824/while/Identity_2:output:0"?
lstm_824_while_identity_3"lstm_824/while/Identity_3:output:0"?
lstm_824_while_identity_4"lstm_824/while/Identity_4:output:0"?
lstm_824_while_identity_5"lstm_824/while/Identity_5:output:0"T
'lstm_824_while_lstm_824_strided_slice_1)lstm_824_while_lstm_824_strided_slice_1_0"~
<lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource>lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0"?
=lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource?lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0"|
;lstm_824_while_lstm_cell_680_matmul_readvariableop_resource=lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0"?
clstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensorelstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp2h
2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp2l
4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4115640

inputs'
lstm_cell_680_4115558:2('
lstm_cell_680_4115560:
(#
lstm_cell_680_4115562:(
identity??%lstm_cell_680/StatefulPartitionedCall?while;
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
%lstm_cell_680/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_680_4115558lstm_cell_680_4115560lstm_cell_680_4115562*
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115512n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_680_4115558lstm_cell_680_4115560lstm_cell_680_4115562*
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
while_body_4115571*
condR
while_cond_4115570*K
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
NoOpNoOp&^lstm_cell_680/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_680/StatefulPartitionedCall%lstm_cell_680/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4119245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_680_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_680_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_680_matmul_readvariableop_resource:2(F
4while_lstm_cell_680_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_680_biasadd_readvariableop_resource:(??*while/lstm_cell_680/BiasAdd/ReadVariableOp?)while/lstm_cell_680/MatMul/ReadVariableOp?+while/lstm_cell_680/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_680/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_680/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_680/addAddV2$while/lstm_cell_680/MatMul:product:0&while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_680/BiasAddBiasAddwhile/lstm_cell_680/add:z:02while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_680/splitSplit,while/lstm_cell_680/split/split_dim:output:0$while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_680/SigmoidSigmoid"while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_1Sigmoid"while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mulMul!while/lstm_cell_680/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_680/ReluRelu"while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_1Mulwhile/lstm_cell_680/Sigmoid:y:0&while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/add_1AddV2while/lstm_cell_680/mul:z:0while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_2Sigmoid"while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_680/Relu_1Reluwhile/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_2Mul!while/lstm_cell_680/Sigmoid_2:y:0(while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_680/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_680/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_680/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_680/BiasAdd/ReadVariableOp*^while/lstm_cell_680/MatMul/ReadVariableOp,^while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_680_biasadd_readvariableop_resource5while_lstm_cell_680_biasadd_readvariableop_resource_0"n
4while_lstm_cell_680_matmul_1_readvariableop_resource6while_lstm_cell_680_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_680_matmul_readvariableop_resource4while_lstm_cell_680_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_680/BiasAdd/ReadVariableOp*while/lstm_cell_680/BiasAdd/ReadVariableOp2V
)while/lstm_cell_680/MatMul/ReadVariableOp)while/lstm_cell_680/MatMul/ReadVariableOp2Z
+while/lstm_cell_680/MatMul_1/ReadVariableOp+while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119615

inputs>
,lstm_cell_680_matmul_readvariableop_resource:2(@
.lstm_cell_680_matmul_1_readvariableop_resource:
(;
-lstm_cell_680_biasadd_readvariableop_resource:(
identity??$lstm_cell_680/BiasAdd/ReadVariableOp?#lstm_cell_680/MatMul/ReadVariableOp?%lstm_cell_680/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_680/MatMul/ReadVariableOpReadVariableOp,lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_680/MatMulMatMulstrided_slice_2:output:0+lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_680/MatMul_1MatMulzeros:output:0-lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_680/addAddV2lstm_cell_680/MatMul:product:0 lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_680/BiasAddBiasAddlstm_cell_680/add:z:0,lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_680/splitSplit&lstm_cell_680/split/split_dim:output:0lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_680/SigmoidSigmoidlstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_1Sigmoidlstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_680/mulMullstm_cell_680/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_680/ReluRelulstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_1Mullstm_cell_680/Sigmoid:y:0 lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_680/add_1AddV2lstm_cell_680/mul:z:0lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_2Sigmoidlstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_680/Relu_1Relulstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_2Mullstm_cell_680/Sigmoid_2:y:0"lstm_cell_680/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_680_matmul_readvariableop_resource.lstm_cell_680_matmul_1_readvariableop_resource-lstm_cell_680_biasadd_readvariableop_resource*
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
while_body_4119531*
condR
while_cond_4119530*K
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
NoOpNoOp%^lstm_cell_680/BiasAdd/ReadVariableOp$^lstm_cell_680/MatMul/ReadVariableOp&^lstm_cell_680/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_680/BiasAdd/ReadVariableOp$lstm_cell_680/BiasAdd/ReadVariableOp2J
#lstm_cell_680/MatMul/ReadVariableOp#lstm_cell_680/MatMul/ReadVariableOp2N
%lstm_cell_680/MatMul_1/ReadVariableOp%lstm_cell_680/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4115570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4115570___redundant_placeholder05
1while_while_cond_4115570___redundant_placeholder15
1while_while_cond_4115570___redundant_placeholder25
1while_while_cond_4115570___redundant_placeholder3
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
*sequential_274_lstm_824_while_cond_4114508L
Hsequential_274_lstm_824_while_sequential_274_lstm_824_while_loop_counterR
Nsequential_274_lstm_824_while_sequential_274_lstm_824_while_maximum_iterations-
)sequential_274_lstm_824_while_placeholder/
+sequential_274_lstm_824_while_placeholder_1/
+sequential_274_lstm_824_while_placeholder_2/
+sequential_274_lstm_824_while_placeholder_3N
Jsequential_274_lstm_824_while_less_sequential_274_lstm_824_strided_slice_1e
asequential_274_lstm_824_while_sequential_274_lstm_824_while_cond_4114508___redundant_placeholder0e
asequential_274_lstm_824_while_sequential_274_lstm_824_while_cond_4114508___redundant_placeholder1e
asequential_274_lstm_824_while_sequential_274_lstm_824_while_cond_4114508___redundant_placeholder2e
asequential_274_lstm_824_while_sequential_274_lstm_824_while_cond_4114508___redundant_placeholder3*
&sequential_274_lstm_824_while_identity
?
"sequential_274/lstm_824/while/LessLess)sequential_274_lstm_824_while_placeholderJsequential_274_lstm_824_while_less_sequential_274_lstm_824_strided_slice_1*
T0*
_output_shapes
: {
&sequential_274/lstm_824/while/IdentityIdentity&sequential_274/lstm_824/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_274_lstm_824_while_identity/sequential_274/lstm_824/while/Identity:output:0*(
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
*sequential_274_lstm_824_while_body_4114509L
Hsequential_274_lstm_824_while_sequential_274_lstm_824_while_loop_counterR
Nsequential_274_lstm_824_while_sequential_274_lstm_824_while_maximum_iterations-
)sequential_274_lstm_824_while_placeholder/
+sequential_274_lstm_824_while_placeholder_1/
+sequential_274_lstm_824_while_placeholder_2/
+sequential_274_lstm_824_while_placeholder_3K
Gsequential_274_lstm_824_while_sequential_274_lstm_824_strided_slice_1_0?
?sequential_274_lstm_824_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_824_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_274_lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0:2(`
Nsequential_274_lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0:
([
Msequential_274_lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0:(*
&sequential_274_lstm_824_while_identity,
(sequential_274_lstm_824_while_identity_1,
(sequential_274_lstm_824_while_identity_2,
(sequential_274_lstm_824_while_identity_3,
(sequential_274_lstm_824_while_identity_4,
(sequential_274_lstm_824_while_identity_5I
Esequential_274_lstm_824_while_sequential_274_lstm_824_strided_slice_1?
?sequential_274_lstm_824_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_824_tensorarrayunstack_tensorlistfromtensor\
Jsequential_274_lstm_824_while_lstm_cell_680_matmul_readvariableop_resource:2(^
Lsequential_274_lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource:
(Y
Ksequential_274_lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource:(??Bsequential_274/lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp?Asequential_274/lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp?Csequential_274/lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp?
Osequential_274/lstm_824/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_274/lstm_824/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_274_lstm_824_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_824_tensorarrayunstack_tensorlistfromtensor_0)sequential_274_lstm_824_while_placeholderXsequential_274/lstm_824/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_274/lstm_824/while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOpLsequential_274_lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_274/lstm_824/while/lstm_cell_680/MatMulMatMulHsequential_274/lstm_824/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_274/lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_274/lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOpNsequential_274_lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_274/lstm_824/while/lstm_cell_680/MatMul_1MatMul+sequential_274_lstm_824_while_placeholder_2Ksequential_274/lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_274/lstm_824/while/lstm_cell_680/addAddV2<sequential_274/lstm_824/while/lstm_cell_680/MatMul:product:0>sequential_274/lstm_824/while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_274/lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOpMsequential_274_lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_274/lstm_824/while/lstm_cell_680/BiasAddBiasAdd3sequential_274/lstm_824/while/lstm_cell_680/add:z:0Jsequential_274/lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_274/lstm_824/while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_274/lstm_824/while/lstm_cell_680/splitSplitDsequential_274/lstm_824/while/lstm_cell_680/split/split_dim:output:0<sequential_274/lstm_824/while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_274/lstm_824/while/lstm_cell_680/SigmoidSigmoid:sequential_274/lstm_824/while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_274/lstm_824/while/lstm_cell_680/Sigmoid_1Sigmoid:sequential_274/lstm_824/while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_274/lstm_824/while/lstm_cell_680/mulMul9sequential_274/lstm_824/while/lstm_cell_680/Sigmoid_1:y:0+sequential_274_lstm_824_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_274/lstm_824/while/lstm_cell_680/ReluRelu:sequential_274/lstm_824/while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_274/lstm_824/while/lstm_cell_680/mul_1Mul7sequential_274/lstm_824/while/lstm_cell_680/Sigmoid:y:0>sequential_274/lstm_824/while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_274/lstm_824/while/lstm_cell_680/add_1AddV23sequential_274/lstm_824/while/lstm_cell_680/mul:z:05sequential_274/lstm_824/while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_274/lstm_824/while/lstm_cell_680/Sigmoid_2Sigmoid:sequential_274/lstm_824/while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_274/lstm_824/while/lstm_cell_680/Relu_1Relu5sequential_274/lstm_824/while/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_274/lstm_824/while/lstm_cell_680/mul_2Mul9sequential_274/lstm_824/while/lstm_cell_680/Sigmoid_2:y:0@sequential_274/lstm_824/while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_274/lstm_824/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_274_lstm_824_while_placeholder_1)sequential_274_lstm_824_while_placeholder5sequential_274/lstm_824/while/lstm_cell_680/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_274/lstm_824/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_274/lstm_824/while/addAddV2)sequential_274_lstm_824_while_placeholder,sequential_274/lstm_824/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_274/lstm_824/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_274/lstm_824/while/add_1AddV2Hsequential_274_lstm_824_while_sequential_274_lstm_824_while_loop_counter.sequential_274/lstm_824/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_274/lstm_824/while/IdentityIdentity'sequential_274/lstm_824/while/add_1:z:0#^sequential_274/lstm_824/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_824/while/Identity_1IdentityNsequential_274_lstm_824_while_sequential_274_lstm_824_while_maximum_iterations#^sequential_274/lstm_824/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_824/while/Identity_2Identity%sequential_274/lstm_824/while/add:z:0#^sequential_274/lstm_824/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_824/while/Identity_3IdentityRsequential_274/lstm_824/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_274/lstm_824/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_824/while/Identity_4Identity5sequential_274/lstm_824/while/lstm_cell_680/mul_2:z:0#^sequential_274/lstm_824/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_274/lstm_824/while/Identity_5Identity5sequential_274/lstm_824/while/lstm_cell_680/add_1:z:0#^sequential_274/lstm_824/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_274/lstm_824/while/NoOpNoOpC^sequential_274/lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOpB^sequential_274/lstm_824/while/lstm_cell_680/MatMul/ReadVariableOpD^sequential_274/lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_274_lstm_824_while_identity/sequential_274/lstm_824/while/Identity:output:0"]
(sequential_274_lstm_824_while_identity_11sequential_274/lstm_824/while/Identity_1:output:0"]
(sequential_274_lstm_824_while_identity_21sequential_274/lstm_824/while/Identity_2:output:0"]
(sequential_274_lstm_824_while_identity_31sequential_274/lstm_824/while/Identity_3:output:0"]
(sequential_274_lstm_824_while_identity_41sequential_274/lstm_824/while/Identity_4:output:0"]
(sequential_274_lstm_824_while_identity_51sequential_274/lstm_824/while/Identity_5:output:0"?
Ksequential_274_lstm_824_while_lstm_cell_680_biasadd_readvariableop_resourceMsequential_274_lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0"?
Lsequential_274_lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resourceNsequential_274_lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0"?
Jsequential_274_lstm_824_while_lstm_cell_680_matmul_readvariableop_resourceLsequential_274_lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0"?
Esequential_274_lstm_824_while_sequential_274_lstm_824_strided_slice_1Gsequential_274_lstm_824_while_sequential_274_lstm_824_strided_slice_1_0"?
?sequential_274_lstm_824_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_824_tensorarrayunstack_tensorlistfromtensor?sequential_274_lstm_824_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_824_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_274/lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOpBsequential_274/lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp2?
Asequential_274/lstm_824/while/lstm_cell_680/MatMul/ReadVariableOpAsequential_274/lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp2?
Csequential_274/lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOpCsequential_274/lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_822_while_cond_4116971.
*lstm_822_while_lstm_822_while_loop_counter4
0lstm_822_while_lstm_822_while_maximum_iterations
lstm_822_while_placeholder 
lstm_822_while_placeholder_1 
lstm_822_while_placeholder_2 
lstm_822_while_placeholder_30
,lstm_822_while_less_lstm_822_strided_slice_1G
Clstm_822_while_lstm_822_while_cond_4116971___redundant_placeholder0G
Clstm_822_while_lstm_822_while_cond_4116971___redundant_placeholder1G
Clstm_822_while_lstm_822_while_cond_4116971___redundant_placeholder2G
Clstm_822_while_lstm_822_while_cond_4116971___redundant_placeholder3
lstm_822_while_identity
?
lstm_822/while/LessLesslstm_822_while_placeholder,lstm_822_while_less_lstm_822_strided_slice_1*
T0*
_output_shapes
: ]
lstm_822/while/IdentityIdentitylstm_822/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_822_while_identity lstm_822/while/Identity:output:0*(
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
while_body_4114680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_678_4114704_0:	?0
while_lstm_cell_678_4114706_0:	d?,
while_lstm_cell_678_4114708_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_678_4114704:	?.
while_lstm_cell_678_4114706:	d?*
while_lstm_cell_678_4114708:	???+while/lstm_cell_678/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_678/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_678_4114704_0while_lstm_cell_678_4114706_0while_lstm_cell_678_4114708_0*
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114666?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_678/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_678/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_678/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_678/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_678_4114704while_lstm_cell_678_4114704_0"<
while_lstm_cell_678_4114706while_lstm_cell_678_4114706_0"<
while_lstm_cell_678_4114708while_lstm_cell_678_4114708_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_678/StatefulPartitionedCall+while/lstm_cell_678/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116314

inputs>
,lstm_cell_680_matmul_readvariableop_resource:2(@
.lstm_cell_680_matmul_1_readvariableop_resource:
(;
-lstm_cell_680_biasadd_readvariableop_resource:(
identity??$lstm_cell_680/BiasAdd/ReadVariableOp?#lstm_cell_680/MatMul/ReadVariableOp?%lstm_cell_680/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_680/MatMul/ReadVariableOpReadVariableOp,lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_680/MatMulMatMulstrided_slice_2:output:0+lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_680/MatMul_1MatMulzeros:output:0-lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_680/addAddV2lstm_cell_680/MatMul:product:0 lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_680/BiasAddBiasAddlstm_cell_680/add:z:0,lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_680/splitSplit&lstm_cell_680/split/split_dim:output:0lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_680/SigmoidSigmoidlstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_1Sigmoidlstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_680/mulMullstm_cell_680/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_680/ReluRelulstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_1Mullstm_cell_680/Sigmoid:y:0 lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_680/add_1AddV2lstm_cell_680/mul:z:0lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_2Sigmoidlstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_680/Relu_1Relulstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_2Mullstm_cell_680/Sigmoid_2:y:0"lstm_cell_680/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_680_matmul_readvariableop_resource.lstm_cell_680_matmul_1_readvariableop_resource-lstm_cell_680_biasadd_readvariableop_resource*
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
while_body_4116230*
condR
while_cond_4116229*K
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
NoOpNoOp%^lstm_cell_680/BiasAdd/ReadVariableOp$^lstm_cell_680/MatMul/ReadVariableOp&^lstm_cell_680/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_680/BiasAdd/ReadVariableOp$lstm_cell_680/BiasAdd/ReadVariableOp2J
#lstm_cell_680/MatMul/ReadVariableOp#lstm_cell_680/MatMul/ReadVariableOp2N
%lstm_cell_680/MatMul_1/ReadVariableOp%lstm_cell_680/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4115714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_678_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_678_matmul_readvariableop_resource:	?G
4while_lstm_cell_678_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_678_biasadd_readvariableop_resource:	???*while/lstm_cell_678/BiasAdd/ReadVariableOp?)while/lstm_cell_678/MatMul/ReadVariableOp?+while/lstm_cell_678/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_678/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_678/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_678/addAddV2$while/lstm_cell_678/MatMul:product:0&while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_678/BiasAddBiasAddwhile/lstm_cell_678/add:z:02while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_678/splitSplit,while/lstm_cell_678/split/split_dim:output:0$while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_678/SigmoidSigmoid"while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_1Sigmoid"while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mulMul!while/lstm_cell_678/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_678/ReluRelu"while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_1Mulwhile/lstm_cell_678/Sigmoid:y:0&while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/add_1AddV2while/lstm_cell_678/mul:z:0while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_2Sigmoid"while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_678/Relu_1Reluwhile/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_2Mul!while/lstm_cell_678/Sigmoid_2:y:0(while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_678/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_678/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_678/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_678/BiasAdd/ReadVariableOp*^while/lstm_cell_678/MatMul/ReadVariableOp,^while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_678_biasadd_readvariableop_resource5while_lstm_cell_678_biasadd_readvariableop_resource_0"n
4while_lstm_cell_678_matmul_1_readvariableop_resource6while_lstm_cell_678_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_678_matmul_readvariableop_resource4while_lstm_cell_678_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_678/BiasAdd/ReadVariableOp*while/lstm_cell_678/BiasAdd/ReadVariableOp2V
)while/lstm_cell_678/MatMul/ReadVariableOp)while/lstm_cell_678/MatMul/ReadVariableOp2Z
+while/lstm_cell_678/MatMul_1/ReadVariableOp+while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4115379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4115379___redundant_placeholder05
1while_while_cond_4115379___redundant_placeholder15
1while_while_cond_4115379___redundant_placeholder25
1while_while_cond_4115379___redundant_placeholder3
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
while_body_4118629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_679_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_679_matmul_readvariableop_resource:	d?G
4while_lstm_cell_679_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_679_biasadd_readvariableop_resource:	???*while/lstm_cell_679/BiasAdd/ReadVariableOp?)while/lstm_cell_679/MatMul/ReadVariableOp?+while/lstm_cell_679/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_679/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_679/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_679/addAddV2$while/lstm_cell_679/MatMul:product:0&while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_679/BiasAddBiasAddwhile/lstm_cell_679/add:z:02while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_679/splitSplit,while/lstm_cell_679/split/split_dim:output:0$while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_679/SigmoidSigmoid"while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_1Sigmoid"while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mulMul!while/lstm_cell_679/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_679/ReluRelu"while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_1Mulwhile/lstm_cell_679/Sigmoid:y:0&while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/add_1AddV2while/lstm_cell_679/mul:z:0while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_2Sigmoid"while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_679/Relu_1Reluwhile/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_2Mul!while/lstm_cell_679/Sigmoid_2:y:0(while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_679/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_679/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_679/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_679/BiasAdd/ReadVariableOp*^while/lstm_cell_679/MatMul/ReadVariableOp,^while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_679_biasadd_readvariableop_resource5while_lstm_cell_679_biasadd_readvariableop_resource_0"n
4while_lstm_cell_679_matmul_1_readvariableop_resource6while_lstm_cell_679_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_679_matmul_readvariableop_resource4while_lstm_cell_679_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_679/BiasAdd/ReadVariableOp*while/lstm_cell_679/BiasAdd/ReadVariableOp2V
)while/lstm_cell_679/MatMul/ReadVariableOp)while/lstm_cell_679/MatMul/ReadVariableOp2Z
+while/lstm_cell_679/MatMul_1/ReadVariableOp+while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_824_layer_call_fn_4119010
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4115449o
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
?#
?
while_body_4115380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_680_4115404_0:2(/
while_lstm_cell_680_4115406_0:
(+
while_lstm_cell_680_4115408_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_680_4115404:2(-
while_lstm_cell_680_4115406:
()
while_lstm_cell_680_4115408:(??+while/lstm_cell_680/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_680/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_680_4115404_0while_lstm_cell_680_4115406_0while_lstm_cell_680_4115408_0*
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115366?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_680/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_680/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_680/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_680/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_680_4115404while_lstm_cell_680_4115404_0"<
while_lstm_cell_680_4115406while_lstm_cell_680_4115406_0"<
while_lstm_cell_680_4115408while_lstm_cell_680_4115408_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_680/StatefulPartitionedCall+while/lstm_cell_680/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4115571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_680_4115595_0:2(/
while_lstm_cell_680_4115597_0:
(+
while_lstm_cell_680_4115599_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_680_4115595:2(-
while_lstm_cell_680_4115597:
()
while_lstm_cell_680_4115599:(??+while/lstm_cell_680/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_680/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_680_4115595_0while_lstm_cell_680_4115597_0while_lstm_cell_680_4115599_0*
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115512?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_680/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_680/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_680/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_680/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_680_4115595while_lstm_cell_680_4115595_0"<
while_lstm_cell_680_4115597while_lstm_cell_680_4115597_0"<
while_lstm_cell_680_4115599while_lstm_cell_680_4115599_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_680/StatefulPartitionedCall+while/lstm_cell_680/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_274_lstm_822_while_body_4114231L
Hsequential_274_lstm_822_while_sequential_274_lstm_822_while_loop_counterR
Nsequential_274_lstm_822_while_sequential_274_lstm_822_while_maximum_iterations-
)sequential_274_lstm_822_while_placeholder/
+sequential_274_lstm_822_while_placeholder_1/
+sequential_274_lstm_822_while_placeholder_2/
+sequential_274_lstm_822_while_placeholder_3K
Gsequential_274_lstm_822_while_sequential_274_lstm_822_strided_slice_1_0?
?sequential_274_lstm_822_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_822_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_274_lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0:	?a
Nsequential_274_lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?\
Msequential_274_lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0:	?*
&sequential_274_lstm_822_while_identity,
(sequential_274_lstm_822_while_identity_1,
(sequential_274_lstm_822_while_identity_2,
(sequential_274_lstm_822_while_identity_3,
(sequential_274_lstm_822_while_identity_4,
(sequential_274_lstm_822_while_identity_5I
Esequential_274_lstm_822_while_sequential_274_lstm_822_strided_slice_1?
?sequential_274_lstm_822_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_822_tensorarrayunstack_tensorlistfromtensor]
Jsequential_274_lstm_822_while_lstm_cell_678_matmul_readvariableop_resource:	?_
Lsequential_274_lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource:	d?Z
Ksequential_274_lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource:	???Bsequential_274/lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp?Asequential_274/lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp?Csequential_274/lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp?
Osequential_274/lstm_822/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_274/lstm_822/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_274_lstm_822_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_822_tensorarrayunstack_tensorlistfromtensor_0)sequential_274_lstm_822_while_placeholderXsequential_274/lstm_822/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_274/lstm_822/while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOpLsequential_274_lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_274/lstm_822/while/lstm_cell_678/MatMulMatMulHsequential_274/lstm_822/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_274/lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_274/lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOpNsequential_274_lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_274/lstm_822/while/lstm_cell_678/MatMul_1MatMul+sequential_274_lstm_822_while_placeholder_2Ksequential_274/lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_274/lstm_822/while/lstm_cell_678/addAddV2<sequential_274/lstm_822/while/lstm_cell_678/MatMul:product:0>sequential_274/lstm_822/while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_274/lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOpMsequential_274_lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_274/lstm_822/while/lstm_cell_678/BiasAddBiasAdd3sequential_274/lstm_822/while/lstm_cell_678/add:z:0Jsequential_274/lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_274/lstm_822/while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_274/lstm_822/while/lstm_cell_678/splitSplitDsequential_274/lstm_822/while/lstm_cell_678/split/split_dim:output:0<sequential_274/lstm_822/while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_274/lstm_822/while/lstm_cell_678/SigmoidSigmoid:sequential_274/lstm_822/while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_274/lstm_822/while/lstm_cell_678/Sigmoid_1Sigmoid:sequential_274/lstm_822/while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_274/lstm_822/while/lstm_cell_678/mulMul9sequential_274/lstm_822/while/lstm_cell_678/Sigmoid_1:y:0+sequential_274_lstm_822_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_274/lstm_822/while/lstm_cell_678/ReluRelu:sequential_274/lstm_822/while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_274/lstm_822/while/lstm_cell_678/mul_1Mul7sequential_274/lstm_822/while/lstm_cell_678/Sigmoid:y:0>sequential_274/lstm_822/while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_274/lstm_822/while/lstm_cell_678/add_1AddV23sequential_274/lstm_822/while/lstm_cell_678/mul:z:05sequential_274/lstm_822/while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_274/lstm_822/while/lstm_cell_678/Sigmoid_2Sigmoid:sequential_274/lstm_822/while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_274/lstm_822/while/lstm_cell_678/Relu_1Relu5sequential_274/lstm_822/while/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_274/lstm_822/while/lstm_cell_678/mul_2Mul9sequential_274/lstm_822/while/lstm_cell_678/Sigmoid_2:y:0@sequential_274/lstm_822/while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_274/lstm_822/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_274_lstm_822_while_placeholder_1)sequential_274_lstm_822_while_placeholder5sequential_274/lstm_822/while/lstm_cell_678/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_274/lstm_822/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_274/lstm_822/while/addAddV2)sequential_274_lstm_822_while_placeholder,sequential_274/lstm_822/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_274/lstm_822/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_274/lstm_822/while/add_1AddV2Hsequential_274_lstm_822_while_sequential_274_lstm_822_while_loop_counter.sequential_274/lstm_822/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_274/lstm_822/while/IdentityIdentity'sequential_274/lstm_822/while/add_1:z:0#^sequential_274/lstm_822/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_822/while/Identity_1IdentityNsequential_274_lstm_822_while_sequential_274_lstm_822_while_maximum_iterations#^sequential_274/lstm_822/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_822/while/Identity_2Identity%sequential_274/lstm_822/while/add:z:0#^sequential_274/lstm_822/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_822/while/Identity_3IdentityRsequential_274/lstm_822/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_274/lstm_822/while/NoOp*
T0*
_output_shapes
: ?
(sequential_274/lstm_822/while/Identity_4Identity5sequential_274/lstm_822/while/lstm_cell_678/mul_2:z:0#^sequential_274/lstm_822/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_274/lstm_822/while/Identity_5Identity5sequential_274/lstm_822/while/lstm_cell_678/add_1:z:0#^sequential_274/lstm_822/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_274/lstm_822/while/NoOpNoOpC^sequential_274/lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOpB^sequential_274/lstm_822/while/lstm_cell_678/MatMul/ReadVariableOpD^sequential_274/lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_274_lstm_822_while_identity/sequential_274/lstm_822/while/Identity:output:0"]
(sequential_274_lstm_822_while_identity_11sequential_274/lstm_822/while/Identity_1:output:0"]
(sequential_274_lstm_822_while_identity_21sequential_274/lstm_822/while/Identity_2:output:0"]
(sequential_274_lstm_822_while_identity_31sequential_274/lstm_822/while/Identity_3:output:0"]
(sequential_274_lstm_822_while_identity_41sequential_274/lstm_822/while/Identity_4:output:0"]
(sequential_274_lstm_822_while_identity_51sequential_274/lstm_822/while/Identity_5:output:0"?
Ksequential_274_lstm_822_while_lstm_cell_678_biasadd_readvariableop_resourceMsequential_274_lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0"?
Lsequential_274_lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resourceNsequential_274_lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0"?
Jsequential_274_lstm_822_while_lstm_cell_678_matmul_readvariableop_resourceLsequential_274_lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0"?
Esequential_274_lstm_822_while_sequential_274_lstm_822_strided_slice_1Gsequential_274_lstm_822_while_sequential_274_lstm_822_strided_slice_1_0"?
?sequential_274_lstm_822_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_822_tensorarrayunstack_tensorlistfromtensor?sequential_274_lstm_822_while_tensorarrayv2read_tensorlistgetitem_sequential_274_lstm_822_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_274/lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOpBsequential_274/lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp2?
Asequential_274/lstm_822/while/lstm_cell_678/MatMul/ReadVariableOpAsequential_274/lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp2?
Csequential_274/lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOpCsequential_274/lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_822_layer_call_fn_4117778
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4114749|
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4115798

inputs?
,lstm_cell_678_matmul_readvariableop_resource:	?A
.lstm_cell_678_matmul_1_readvariableop_resource:	d?<
-lstm_cell_678_biasadd_readvariableop_resource:	?
identity??$lstm_cell_678/BiasAdd/ReadVariableOp?#lstm_cell_678/MatMul/ReadVariableOp?%lstm_cell_678/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_678/MatMul/ReadVariableOpReadVariableOp,lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_678/MatMulMatMulstrided_slice_2:output:0+lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_678/MatMul_1MatMulzeros:output:0-lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_678/addAddV2lstm_cell_678/MatMul:product:0 lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_678/BiasAddBiasAddlstm_cell_678/add:z:0,lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_678/splitSplit&lstm_cell_678/split/split_dim:output:0lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_678/SigmoidSigmoidlstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_1Sigmoidlstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_678/mulMullstm_cell_678/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_678/ReluRelulstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_1Mullstm_cell_678/Sigmoid:y:0 lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_678/add_1AddV2lstm_cell_678/mul:z:0lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_2Sigmoidlstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_678/Relu_1Relulstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_2Mullstm_cell_678/Sigmoid_2:y:0"lstm_cell_678/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_678_matmul_readvariableop_resource.lstm_cell_678_matmul_1_readvariableop_resource-lstm_cell_678_biasadd_readvariableop_resource*
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
while_body_4115714*
condR
while_cond_4115713*K
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
NoOpNoOp%^lstm_cell_678/BiasAdd/ReadVariableOp$^lstm_cell_678/MatMul/ReadVariableOp&^lstm_cell_678/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_678/BiasAdd/ReadVariableOp$lstm_cell_678/BiasAdd/ReadVariableOp2J
#lstm_cell_678/MatMul/ReadVariableOp#lstm_cell_678/MatMul/ReadVariableOp2N
%lstm_cell_678/MatMul_1/ReadVariableOp%lstm_cell_678/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_822_layer_call_and_return_conditional_losses_4114749

inputs(
lstm_cell_678_4114667:	?(
lstm_cell_678_4114669:	d?$
lstm_cell_678_4114671:	?
identity??%lstm_cell_678/StatefulPartitionedCall?while;
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
%lstm_cell_678/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_678_4114667lstm_cell_678_4114669lstm_cell_678_4114671*
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114666n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_678_4114667lstm_cell_678_4114669lstm_cell_678_4114671*
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
while_body_4114680*
condR
while_cond_4114679*K
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
NoOpNoOp&^lstm_cell_678/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_678/StatefulPartitionedCall%lstm_cell_678/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_824_while_body_4117250.
*lstm_824_while_lstm_824_while_loop_counter4
0lstm_824_while_lstm_824_while_maximum_iterations
lstm_824_while_placeholder 
lstm_824_while_placeholder_1 
lstm_824_while_placeholder_2 
lstm_824_while_placeholder_3-
)lstm_824_while_lstm_824_strided_slice_1_0i
elstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0:2(Q
?lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(L
>lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0:(
lstm_824_while_identity
lstm_824_while_identity_1
lstm_824_while_identity_2
lstm_824_while_identity_3
lstm_824_while_identity_4
lstm_824_while_identity_5+
'lstm_824_while_lstm_824_strided_slice_1g
clstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensorM
;lstm_824_while_lstm_cell_680_matmul_readvariableop_resource:2(O
=lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource:
(J
<lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource:(??3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp?2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp?4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp?
@lstm_824/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_824/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensor_0lstm_824_while_placeholderIlstm_824/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp=lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_824/while/lstm_cell_680/MatMulMatMul9lstm_824/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp?lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_824/while/lstm_cell_680/MatMul_1MatMullstm_824_while_placeholder_2<lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_824/while/lstm_cell_680/addAddV2-lstm_824/while/lstm_cell_680/MatMul:product:0/lstm_824/while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp>lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_824/while/lstm_cell_680/BiasAddBiasAdd$lstm_824/while/lstm_cell_680/add:z:0;lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_824/while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_824/while/lstm_cell_680/splitSplit5lstm_824/while/lstm_cell_680/split/split_dim:output:0-lstm_824/while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_824/while/lstm_cell_680/SigmoidSigmoid+lstm_824/while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_824/while/lstm_cell_680/Sigmoid_1Sigmoid+lstm_824/while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_824/while/lstm_cell_680/mulMul*lstm_824/while/lstm_cell_680/Sigmoid_1:y:0lstm_824_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_824/while/lstm_cell_680/ReluRelu+lstm_824/while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_824/while/lstm_cell_680/mul_1Mul(lstm_824/while/lstm_cell_680/Sigmoid:y:0/lstm_824/while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_824/while/lstm_cell_680/add_1AddV2$lstm_824/while/lstm_cell_680/mul:z:0&lstm_824/while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_824/while/lstm_cell_680/Sigmoid_2Sigmoid+lstm_824/while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_824/while/lstm_cell_680/Relu_1Relu&lstm_824/while/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_824/while/lstm_cell_680/mul_2Mul*lstm_824/while/lstm_cell_680/Sigmoid_2:y:01lstm_824/while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_824/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_824_while_placeholder_1lstm_824_while_placeholder&lstm_824/while/lstm_cell_680/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_824/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_824/while/addAddV2lstm_824_while_placeholderlstm_824/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_824/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_824/while/add_1AddV2*lstm_824_while_lstm_824_while_loop_counterlstm_824/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_824/while/IdentityIdentitylstm_824/while/add_1:z:0^lstm_824/while/NoOp*
T0*
_output_shapes
: ?
lstm_824/while/Identity_1Identity0lstm_824_while_lstm_824_while_maximum_iterations^lstm_824/while/NoOp*
T0*
_output_shapes
: t
lstm_824/while/Identity_2Identitylstm_824/while/add:z:0^lstm_824/while/NoOp*
T0*
_output_shapes
: ?
lstm_824/while/Identity_3IdentityClstm_824/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_824/while/NoOp*
T0*
_output_shapes
: ?
lstm_824/while/Identity_4Identity&lstm_824/while/lstm_cell_680/mul_2:z:0^lstm_824/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_824/while/Identity_5Identity&lstm_824/while/lstm_cell_680/add_1:z:0^lstm_824/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_824/while/NoOpNoOp4^lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp3^lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp5^lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_824_while_identity lstm_824/while/Identity:output:0"?
lstm_824_while_identity_1"lstm_824/while/Identity_1:output:0"?
lstm_824_while_identity_2"lstm_824/while/Identity_2:output:0"?
lstm_824_while_identity_3"lstm_824/while/Identity_3:output:0"?
lstm_824_while_identity_4"lstm_824/while/Identity_4:output:0"?
lstm_824_while_identity_5"lstm_824/while/Identity_5:output:0"T
'lstm_824_while_lstm_824_strided_slice_1)lstm_824_while_lstm_824_strided_slice_1_0"~
<lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource>lstm_824_while_lstm_cell_680_biasadd_readvariableop_resource_0"?
=lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource?lstm_824_while_lstm_cell_680_matmul_1_readvariableop_resource_0"|
;lstm_824_while_lstm_cell_680_matmul_readvariableop_resource=lstm_824_while_lstm_cell_680_matmul_readvariableop_resource_0"?
clstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensorelstm_824_while_tensorarrayv2read_tensorlistgetitem_lstm_824_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp3lstm_824/while/lstm_cell_680/BiasAdd/ReadVariableOp2h
2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp2lstm_824/while/lstm_cell_680/MatMul/ReadVariableOp2l
4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp4lstm_824/while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118570
inputs_0?
,lstm_cell_679_matmul_readvariableop_resource:	d?A
.lstm_cell_679_matmul_1_readvariableop_resource:	2?<
-lstm_cell_679_biasadd_readvariableop_resource:	?
identity??$lstm_cell_679/BiasAdd/ReadVariableOp?#lstm_cell_679/MatMul/ReadVariableOp?%lstm_cell_679/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_679/MatMul/ReadVariableOpReadVariableOp,lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_679/MatMulMatMulstrided_slice_2:output:0+lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_679/MatMul_1MatMulzeros:output:0-lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_679/addAddV2lstm_cell_679/MatMul:product:0 lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_679/BiasAddBiasAddlstm_cell_679/add:z:0,lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_679/splitSplit&lstm_cell_679/split/split_dim:output:0lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_679/SigmoidSigmoidlstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_1Sigmoidlstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_679/mulMullstm_cell_679/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_679/ReluRelulstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_1Mullstm_cell_679/Sigmoid:y:0 lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_679/add_1AddV2lstm_cell_679/mul:z:0lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_2Sigmoidlstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_679/Relu_1Relulstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_2Mullstm_cell_679/Sigmoid_2:y:0"lstm_cell_679/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_679_matmul_readvariableop_resource.lstm_cell_679_matmul_1_readvariableop_resource-lstm_cell_679_biasadd_readvariableop_resource*
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
while_body_4118486*
condR
while_cond_4118485*K
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
NoOpNoOp%^lstm_cell_679/BiasAdd/ReadVariableOp$^lstm_cell_679/MatMul/ReadVariableOp&^lstm_cell_679/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_679/BiasAdd/ReadVariableOp$lstm_cell_679/BiasAdd/ReadVariableOp2J
#lstm_cell_679/MatMul/ReadVariableOp#lstm_cell_679/MatMul/ReadVariableOp2N
%lstm_cell_679/MatMul_1/ReadVariableOp%lstm_cell_679/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115512

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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115290

inputs(
lstm_cell_679_4115208:	d?(
lstm_cell_679_4115210:	2?$
lstm_cell_679_4115212:	?
identity??%lstm_cell_679/StatefulPartitionedCall?while;
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
%lstm_cell_679/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_679_4115208lstm_cell_679_4115210lstm_cell_679_4115212*
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115162n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_679_4115208lstm_cell_679_4115210lstm_cell_679_4115212*
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
while_body_4115221*
condR
while_cond_4115220*K
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
NoOpNoOp&^lstm_cell_679/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_679/StatefulPartitionedCall%lstm_cell_679/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4118486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_679_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_679_matmul_readvariableop_resource:	d?G
4while_lstm_cell_679_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_679_biasadd_readvariableop_resource:	???*while/lstm_cell_679/BiasAdd/ReadVariableOp?)while/lstm_cell_679/MatMul/ReadVariableOp?+while/lstm_cell_679/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_679/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_679/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_679/addAddV2$while/lstm_cell_679/MatMul:product:0&while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_679/BiasAddBiasAddwhile/lstm_cell_679/add:z:02while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_679/splitSplit,while/lstm_cell_679/split/split_dim:output:0$while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_679/SigmoidSigmoid"while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_1Sigmoid"while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mulMul!while/lstm_cell_679/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_679/ReluRelu"while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_1Mulwhile/lstm_cell_679/Sigmoid:y:0&while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/add_1AddV2while/lstm_cell_679/mul:z:0while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_2Sigmoid"while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_679/Relu_1Reluwhile/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_2Mul!while/lstm_cell_679/Sigmoid_2:y:0(while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_679/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_679/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_679/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_679/BiasAdd/ReadVariableOp*^while/lstm_cell_679/MatMul/ReadVariableOp,^while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_679_biasadd_readvariableop_resource5while_lstm_cell_679_biasadd_readvariableop_resource_0"n
4while_lstm_cell_679_matmul_1_readvariableop_resource6while_lstm_cell_679_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_679_matmul_readvariableop_resource4while_lstm_cell_679_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_679/BiasAdd/ReadVariableOp*while/lstm_cell_679/BiasAdd/ReadVariableOp2V
)while/lstm_cell_679/MatMul/ReadVariableOp)while/lstm_cell_679/MatMul/ReadVariableOp2Z
+while/lstm_cell_679/MatMul_1/ReadVariableOp+while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4117954
inputs_0?
,lstm_cell_678_matmul_readvariableop_resource:	?A
.lstm_cell_678_matmul_1_readvariableop_resource:	d?<
-lstm_cell_678_biasadd_readvariableop_resource:	?
identity??$lstm_cell_678/BiasAdd/ReadVariableOp?#lstm_cell_678/MatMul/ReadVariableOp?%lstm_cell_678/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_678/MatMul/ReadVariableOpReadVariableOp,lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_678/MatMulMatMulstrided_slice_2:output:0+lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_678/MatMul_1MatMulzeros:output:0-lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_678/addAddV2lstm_cell_678/MatMul:product:0 lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_678/BiasAddBiasAddlstm_cell_678/add:z:0,lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_678/splitSplit&lstm_cell_678/split/split_dim:output:0lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_678/SigmoidSigmoidlstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_1Sigmoidlstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_678/mulMullstm_cell_678/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_678/ReluRelulstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_1Mullstm_cell_678/Sigmoid:y:0 lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_678/add_1AddV2lstm_cell_678/mul:z:0lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_2Sigmoidlstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_678/Relu_1Relulstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_2Mullstm_cell_678/Sigmoid_2:y:0"lstm_cell_678/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_678_matmul_readvariableop_resource.lstm_cell_678_matmul_1_readvariableop_resource-lstm_cell_678_biasadd_readvariableop_resource*
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
while_body_4117870*
condR
while_cond_4117869*K
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
NoOpNoOp%^lstm_cell_678/BiasAdd/ReadVariableOp$^lstm_cell_678/MatMul/ReadVariableOp&^lstm_cell_678/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_678/BiasAdd/ReadVariableOp$lstm_cell_678/BiasAdd/ReadVariableOp2J
#lstm_cell_678/MatMul/ReadVariableOp#lstm_cell_678/MatMul/ReadVariableOp2N
%lstm_cell_678/MatMul_1/ReadVariableOp%lstm_cell_678/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115162

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
while_cond_4118485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118485___redundant_placeholder05
1while_while_cond_4118485___redundant_placeholder15
1while_while_cond_4118485___redundant_placeholder25
1while_while_cond_4118485___redundant_placeholder3
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
/__inference_lstm_cell_680_layer_call_fn_4119847

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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115366o
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
?8
?
while_body_4116395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_679_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_679_matmul_readvariableop_resource:	d?G
4while_lstm_cell_679_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_679_biasadd_readvariableop_resource:	???*while/lstm_cell_679/BiasAdd/ReadVariableOp?)while/lstm_cell_679/MatMul/ReadVariableOp?+while/lstm_cell_679/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_679/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_679/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_679/addAddV2$while/lstm_cell_679/MatMul:product:0&while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_679/BiasAddBiasAddwhile/lstm_cell_679/add:z:02while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_679/splitSplit,while/lstm_cell_679/split/split_dim:output:0$while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_679/SigmoidSigmoid"while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_1Sigmoid"while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mulMul!while/lstm_cell_679/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_679/ReluRelu"while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_1Mulwhile/lstm_cell_679/Sigmoid:y:0&while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/add_1AddV2while/lstm_cell_679/mul:z:0while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_2Sigmoid"while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_679/Relu_1Reluwhile/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_2Mul!while/lstm_cell_679/Sigmoid_2:y:0(while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_679/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_679/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_679/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_679/BiasAdd/ReadVariableOp*^while/lstm_cell_679/MatMul/ReadVariableOp,^while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_679_biasadd_readvariableop_resource5while_lstm_cell_679_biasadd_readvariableop_resource_0"n
4while_lstm_cell_679_matmul_1_readvariableop_resource6while_lstm_cell_679_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_679_matmul_readvariableop_resource4while_lstm_cell_679_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_679/BiasAdd/ReadVariableOp*while/lstm_cell_679/BiasAdd/ReadVariableOp2V
)while/lstm_cell_679/MatMul/ReadVariableOp)while/lstm_cell_679/MatMul/ReadVariableOp2Z
+while/lstm_cell_679/MatMul_1/ReadVariableOp+while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4119700

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
?
?
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116712

inputs#
lstm_822_4116685:	?#
lstm_822_4116687:	d?
lstm_822_4116689:	?#
lstm_823_4116692:	d?#
lstm_823_4116694:	2?
lstm_823_4116696:	?"
lstm_824_4116699:2("
lstm_824_4116701:
(
lstm_824_4116703:(#
dense_274_4116706:

dense_274_4116708:
identity??!dense_274/StatefulPartitionedCall? lstm_822/StatefulPartitionedCall? lstm_823/StatefulPartitionedCall? lstm_824/StatefulPartitionedCall?
 lstm_822/StatefulPartitionedCallStatefulPartitionedCallinputslstm_822_4116685lstm_822_4116687lstm_822_4116689*
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4116644?
 lstm_823/StatefulPartitionedCallStatefulPartitionedCall)lstm_822/StatefulPartitionedCall:output:0lstm_823_4116692lstm_823_4116694lstm_823_4116696*
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4116479?
 lstm_824/StatefulPartitionedCallStatefulPartitionedCall)lstm_823/StatefulPartitionedCall:output:0lstm_824_4116699lstm_824_4116701lstm_824_4116703*
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116314?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall)lstm_824/StatefulPartitionedCall:output:0dense_274_4116706dense_274_4116708*
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
F__inference_dense_274_layer_call_and_return_conditional_losses_4116116y
IdentityIdentity*dense_274/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_274/StatefulPartitionedCall!^lstm_822/StatefulPartitionedCall!^lstm_823/StatefulPartitionedCall!^lstm_824/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall2D
 lstm_822/StatefulPartitionedCall lstm_822/StatefulPartitionedCall2D
 lstm_823/StatefulPartitionedCall lstm_823/StatefulPartitionedCall2D
 lstm_824/StatefulPartitionedCall lstm_824/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_823_while_cond_4117537.
*lstm_823_while_lstm_823_while_loop_counter4
0lstm_823_while_lstm_823_while_maximum_iterations
lstm_823_while_placeholder 
lstm_823_while_placeholder_1 
lstm_823_while_placeholder_2 
lstm_823_while_placeholder_30
,lstm_823_while_less_lstm_823_strided_slice_1G
Clstm_823_while_lstm_823_while_cond_4117537___redundant_placeholder0G
Clstm_823_while_lstm_823_while_cond_4117537___redundant_placeholder1G
Clstm_823_while_lstm_823_while_cond_4117537___redundant_placeholder2G
Clstm_823_while_lstm_823_while_cond_4117537___redundant_placeholder3
lstm_823_while_identity
?
lstm_823/while/LessLesslstm_823_while_placeholder,lstm_823_while_less_lstm_823_strided_slice_1*
T0*
_output_shapes
: ]
lstm_823/while/IdentityIdentitylstm_823/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_823_while_identity lstm_823/while/Identity:output:0*(
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4117767

inputsH
5lstm_822_lstm_cell_678_matmul_readvariableop_resource:	?J
7lstm_822_lstm_cell_678_matmul_1_readvariableop_resource:	d?E
6lstm_822_lstm_cell_678_biasadd_readvariableop_resource:	?H
5lstm_823_lstm_cell_679_matmul_readvariableop_resource:	d?J
7lstm_823_lstm_cell_679_matmul_1_readvariableop_resource:	2?E
6lstm_823_lstm_cell_679_biasadd_readvariableop_resource:	?G
5lstm_824_lstm_cell_680_matmul_readvariableop_resource:2(I
7lstm_824_lstm_cell_680_matmul_1_readvariableop_resource:
(D
6lstm_824_lstm_cell_680_biasadd_readvariableop_resource:(:
(dense_274_matmul_readvariableop_resource:
7
)dense_274_biasadd_readvariableop_resource:
identity?? dense_274/BiasAdd/ReadVariableOp?dense_274/MatMul/ReadVariableOp?-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp?,lstm_822/lstm_cell_678/MatMul/ReadVariableOp?.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp?lstm_822/while?-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp?,lstm_823/lstm_cell_679/MatMul/ReadVariableOp?.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp?lstm_823/while?-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp?,lstm_824/lstm_cell_680/MatMul/ReadVariableOp?.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp?lstm_824/whileD
lstm_822/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_822/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_822/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_822/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_sliceStridedSlicelstm_822/Shape:output:0%lstm_822/strided_slice/stack:output:0'lstm_822/strided_slice/stack_1:output:0'lstm_822/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_822/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_822/zeros/packedPacklstm_822/strided_slice:output:0 lstm_822/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_822/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_822/zerosFilllstm_822/zeros/packed:output:0lstm_822/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_822/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_822/zeros_1/packedPacklstm_822/strided_slice:output:0"lstm_822/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_822/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_822/zeros_1Fill lstm_822/zeros_1/packed:output:0lstm_822/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_822/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_822/transpose	Transposeinputs lstm_822/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_822/Shape_1Shapelstm_822/transpose:y:0*
T0*
_output_shapes
:h
lstm_822/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_822/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_822/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_slice_1StridedSlicelstm_822/Shape_1:output:0'lstm_822/strided_slice_1/stack:output:0)lstm_822/strided_slice_1/stack_1:output:0)lstm_822/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_822/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_822/TensorArrayV2TensorListReserve-lstm_822/TensorArrayV2/element_shape:output:0!lstm_822/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_822/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_822/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_822/transpose:y:0Glstm_822/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_822/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_822/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_822/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_slice_2StridedSlicelstm_822/transpose:y:0'lstm_822/strided_slice_2/stack:output:0)lstm_822/strided_slice_2/stack_1:output:0)lstm_822/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_822/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp5lstm_822_lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_822/lstm_cell_678/MatMulMatMul!lstm_822/strided_slice_2:output:04lstm_822/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp7lstm_822_lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_822/lstm_cell_678/MatMul_1MatMullstm_822/zeros:output:06lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_822/lstm_cell_678/addAddV2'lstm_822/lstm_cell_678/MatMul:product:0)lstm_822/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp6lstm_822_lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_822/lstm_cell_678/BiasAddBiasAddlstm_822/lstm_cell_678/add:z:05lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_822/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_822/lstm_cell_678/splitSplit/lstm_822/lstm_cell_678/split/split_dim:output:0'lstm_822/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_822/lstm_cell_678/SigmoidSigmoid%lstm_822/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_822/lstm_cell_678/Sigmoid_1Sigmoid%lstm_822/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/mulMul$lstm_822/lstm_cell_678/Sigmoid_1:y:0lstm_822/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_822/lstm_cell_678/ReluRelu%lstm_822/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/mul_1Mul"lstm_822/lstm_cell_678/Sigmoid:y:0)lstm_822/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/add_1AddV2lstm_822/lstm_cell_678/mul:z:0 lstm_822/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_822/lstm_cell_678/Sigmoid_2Sigmoid%lstm_822/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_822/lstm_cell_678/Relu_1Relu lstm_822/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_822/lstm_cell_678/mul_2Mul$lstm_822/lstm_cell_678/Sigmoid_2:y:0+lstm_822/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_822/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_822/TensorArrayV2_1TensorListReserve/lstm_822/TensorArrayV2_1/element_shape:output:0!lstm_822/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_822/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_822/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_822/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_822/whileWhile$lstm_822/while/loop_counter:output:0*lstm_822/while/maximum_iterations:output:0lstm_822/time:output:0!lstm_822/TensorArrayV2_1:handle:0lstm_822/zeros:output:0lstm_822/zeros_1:output:0!lstm_822/strided_slice_1:output:0@lstm_822/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_822_lstm_cell_678_matmul_readvariableop_resource7lstm_822_lstm_cell_678_matmul_1_readvariableop_resource6lstm_822_lstm_cell_678_biasadd_readvariableop_resource*
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
lstm_822_while_body_4117399*'
condR
lstm_822_while_cond_4117398*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_822/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_822/TensorArrayV2Stack/TensorListStackTensorListStacklstm_822/while:output:3Blstm_822/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_822/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_822/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_822/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_822/strided_slice_3StridedSlice4lstm_822/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_822/strided_slice_3/stack:output:0)lstm_822/strided_slice_3/stack_1:output:0)lstm_822/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_822/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_822/transpose_1	Transpose4lstm_822/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_822/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_822/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_823/ShapeShapelstm_822/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_823/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_823/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_823/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_sliceStridedSlicelstm_823/Shape:output:0%lstm_823/strided_slice/stack:output:0'lstm_823/strided_slice/stack_1:output:0'lstm_823/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_823/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_823/zeros/packedPacklstm_823/strided_slice:output:0 lstm_823/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_823/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_823/zerosFilllstm_823/zeros/packed:output:0lstm_823/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_823/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_823/zeros_1/packedPacklstm_823/strided_slice:output:0"lstm_823/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_823/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_823/zeros_1Fill lstm_823/zeros_1/packed:output:0lstm_823/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_823/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_823/transpose	Transposelstm_822/transpose_1:y:0 lstm_823/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_823/Shape_1Shapelstm_823/transpose:y:0*
T0*
_output_shapes
:h
lstm_823/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_823/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_823/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_slice_1StridedSlicelstm_823/Shape_1:output:0'lstm_823/strided_slice_1/stack:output:0)lstm_823/strided_slice_1/stack_1:output:0)lstm_823/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_823/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_823/TensorArrayV2TensorListReserve-lstm_823/TensorArrayV2/element_shape:output:0!lstm_823/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_823/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_823/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_823/transpose:y:0Glstm_823/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_823/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_823/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_823/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_slice_2StridedSlicelstm_823/transpose:y:0'lstm_823/strided_slice_2/stack:output:0)lstm_823/strided_slice_2/stack_1:output:0)lstm_823/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_823/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp5lstm_823_lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_823/lstm_cell_679/MatMulMatMul!lstm_823/strided_slice_2:output:04lstm_823/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp7lstm_823_lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_823/lstm_cell_679/MatMul_1MatMullstm_823/zeros:output:06lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_823/lstm_cell_679/addAddV2'lstm_823/lstm_cell_679/MatMul:product:0)lstm_823/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp6lstm_823_lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_823/lstm_cell_679/BiasAddBiasAddlstm_823/lstm_cell_679/add:z:05lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_823/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_823/lstm_cell_679/splitSplit/lstm_823/lstm_cell_679/split/split_dim:output:0'lstm_823/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_823/lstm_cell_679/SigmoidSigmoid%lstm_823/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_823/lstm_cell_679/Sigmoid_1Sigmoid%lstm_823/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/mulMul$lstm_823/lstm_cell_679/Sigmoid_1:y:0lstm_823/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_823/lstm_cell_679/ReluRelu%lstm_823/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/mul_1Mul"lstm_823/lstm_cell_679/Sigmoid:y:0)lstm_823/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/add_1AddV2lstm_823/lstm_cell_679/mul:z:0 lstm_823/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_823/lstm_cell_679/Sigmoid_2Sigmoid%lstm_823/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_823/lstm_cell_679/Relu_1Relu lstm_823/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_823/lstm_cell_679/mul_2Mul$lstm_823/lstm_cell_679/Sigmoid_2:y:0+lstm_823/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_823/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_823/TensorArrayV2_1TensorListReserve/lstm_823/TensorArrayV2_1/element_shape:output:0!lstm_823/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_823/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_823/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_823/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_823/whileWhile$lstm_823/while/loop_counter:output:0*lstm_823/while/maximum_iterations:output:0lstm_823/time:output:0!lstm_823/TensorArrayV2_1:handle:0lstm_823/zeros:output:0lstm_823/zeros_1:output:0!lstm_823/strided_slice_1:output:0@lstm_823/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_823_lstm_cell_679_matmul_readvariableop_resource7lstm_823_lstm_cell_679_matmul_1_readvariableop_resource6lstm_823_lstm_cell_679_biasadd_readvariableop_resource*
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
lstm_823_while_body_4117538*'
condR
lstm_823_while_cond_4117537*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_823/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_823/TensorArrayV2Stack/TensorListStackTensorListStacklstm_823/while:output:3Blstm_823/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_823/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_823/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_823/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_823/strided_slice_3StridedSlice4lstm_823/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_823/strided_slice_3/stack:output:0)lstm_823/strided_slice_3/stack_1:output:0)lstm_823/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_823/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_823/transpose_1	Transpose4lstm_823/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_823/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_823/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_824/ShapeShapelstm_823/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_824/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_824/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_824/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_sliceStridedSlicelstm_824/Shape:output:0%lstm_824/strided_slice/stack:output:0'lstm_824/strided_slice/stack_1:output:0'lstm_824/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_824/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_824/zeros/packedPacklstm_824/strided_slice:output:0 lstm_824/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_824/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_824/zerosFilllstm_824/zeros/packed:output:0lstm_824/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_824/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_824/zeros_1/packedPacklstm_824/strided_slice:output:0"lstm_824/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_824/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_824/zeros_1Fill lstm_824/zeros_1/packed:output:0lstm_824/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_824/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_824/transpose	Transposelstm_823/transpose_1:y:0 lstm_824/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_824/Shape_1Shapelstm_824/transpose:y:0*
T0*
_output_shapes
:h
lstm_824/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_824/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_824/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_slice_1StridedSlicelstm_824/Shape_1:output:0'lstm_824/strided_slice_1/stack:output:0)lstm_824/strided_slice_1/stack_1:output:0)lstm_824/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_824/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_824/TensorArrayV2TensorListReserve-lstm_824/TensorArrayV2/element_shape:output:0!lstm_824/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_824/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_824/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_824/transpose:y:0Glstm_824/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_824/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_824/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_824/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_slice_2StridedSlicelstm_824/transpose:y:0'lstm_824/strided_slice_2/stack:output:0)lstm_824/strided_slice_2/stack_1:output:0)lstm_824/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_824/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp5lstm_824_lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_824/lstm_cell_680/MatMulMatMul!lstm_824/strided_slice_2:output:04lstm_824/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp7lstm_824_lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_824/lstm_cell_680/MatMul_1MatMullstm_824/zeros:output:06lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_824/lstm_cell_680/addAddV2'lstm_824/lstm_cell_680/MatMul:product:0)lstm_824/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp6lstm_824_lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_824/lstm_cell_680/BiasAddBiasAddlstm_824/lstm_cell_680/add:z:05lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_824/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_824/lstm_cell_680/splitSplit/lstm_824/lstm_cell_680/split/split_dim:output:0'lstm_824/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_824/lstm_cell_680/SigmoidSigmoid%lstm_824/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_824/lstm_cell_680/Sigmoid_1Sigmoid%lstm_824/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/mulMul$lstm_824/lstm_cell_680/Sigmoid_1:y:0lstm_824/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_824/lstm_cell_680/ReluRelu%lstm_824/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/mul_1Mul"lstm_824/lstm_cell_680/Sigmoid:y:0)lstm_824/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/add_1AddV2lstm_824/lstm_cell_680/mul:z:0 lstm_824/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_824/lstm_cell_680/Sigmoid_2Sigmoid%lstm_824/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_824/lstm_cell_680/Relu_1Relu lstm_824/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_824/lstm_cell_680/mul_2Mul$lstm_824/lstm_cell_680/Sigmoid_2:y:0+lstm_824/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_824/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_824/TensorArrayV2_1TensorListReserve/lstm_824/TensorArrayV2_1/element_shape:output:0!lstm_824/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_824/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_824/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_824/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_824/whileWhile$lstm_824/while/loop_counter:output:0*lstm_824/while/maximum_iterations:output:0lstm_824/time:output:0!lstm_824/TensorArrayV2_1:handle:0lstm_824/zeros:output:0lstm_824/zeros_1:output:0!lstm_824/strided_slice_1:output:0@lstm_824/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_824_lstm_cell_680_matmul_readvariableop_resource7lstm_824_lstm_cell_680_matmul_1_readvariableop_resource6lstm_824_lstm_cell_680_biasadd_readvariableop_resource*
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
lstm_824_while_body_4117677*'
condR
lstm_824_while_cond_4117676*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_824/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_824/TensorArrayV2Stack/TensorListStackTensorListStacklstm_824/while:output:3Blstm_824/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_824/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_824/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_824/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_824/strided_slice_3StridedSlice4lstm_824/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_824/strided_slice_3/stack:output:0)lstm_824/strided_slice_3/stack_1:output:0)lstm_824/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_824/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_824/transpose_1	Transpose4lstm_824/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_824/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_824/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_274/MatMul/ReadVariableOpReadVariableOp(dense_274_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_274/MatMulMatMul!lstm_824/strided_slice_3:output:0'dense_274/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_274/BiasAdd/ReadVariableOpReadVariableOp)dense_274_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_274/BiasAddBiasAdddense_274/MatMul:product:0(dense_274/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_274/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_274/BiasAdd/ReadVariableOp ^dense_274/MatMul/ReadVariableOp.^lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp-^lstm_822/lstm_cell_678/MatMul/ReadVariableOp/^lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp^lstm_822/while.^lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp-^lstm_823/lstm_cell_679/MatMul/ReadVariableOp/^lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp^lstm_823/while.^lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp-^lstm_824/lstm_cell_680/MatMul/ReadVariableOp/^lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp^lstm_824/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_274/BiasAdd/ReadVariableOp dense_274/BiasAdd/ReadVariableOp2B
dense_274/MatMul/ReadVariableOpdense_274/MatMul/ReadVariableOp2^
-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp-lstm_822/lstm_cell_678/BiasAdd/ReadVariableOp2\
,lstm_822/lstm_cell_678/MatMul/ReadVariableOp,lstm_822/lstm_cell_678/MatMul/ReadVariableOp2`
.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp.lstm_822/lstm_cell_678/MatMul_1/ReadVariableOp2 
lstm_822/whilelstm_822/while2^
-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp-lstm_823/lstm_cell_679/BiasAdd/ReadVariableOp2\
,lstm_823/lstm_cell_679/MatMul/ReadVariableOp,lstm_823/lstm_cell_679/MatMul/ReadVariableOp2`
.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp.lstm_823/lstm_cell_679/MatMul_1/ReadVariableOp2 
lstm_823/whilelstm_823/while2^
-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp-lstm_824/lstm_cell_680/BiasAdd/ReadVariableOp2\
,lstm_824/lstm_cell_680/MatMul/ReadVariableOp,lstm_824/lstm_cell_680/MatMul/ReadVariableOp2`
.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp.lstm_824/lstm_cell_680/MatMul_1/ReadVariableOp2 
lstm_824/whilelstm_824/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115016

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
0__inference_sequential_274_layer_call_fn_4116764
lstm_822_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_822_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116712o
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
_user_specified_namelstm_822_input
?
?
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116824
lstm_822_input#
lstm_822_4116797:	?#
lstm_822_4116799:	d?
lstm_822_4116801:	?#
lstm_823_4116804:	d?#
lstm_823_4116806:	2?
lstm_823_4116808:	?"
lstm_824_4116811:2("
lstm_824_4116813:
(
lstm_824_4116815:(#
dense_274_4116818:

dense_274_4116820:
identity??!dense_274/StatefulPartitionedCall? lstm_822/StatefulPartitionedCall? lstm_823/StatefulPartitionedCall? lstm_824/StatefulPartitionedCall?
 lstm_822/StatefulPartitionedCallStatefulPartitionedCalllstm_822_inputlstm_822_4116797lstm_822_4116799lstm_822_4116801*
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4116644?
 lstm_823/StatefulPartitionedCallStatefulPartitionedCall)lstm_822/StatefulPartitionedCall:output:0lstm_823_4116804lstm_823_4116806lstm_823_4116808*
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4116479?
 lstm_824/StatefulPartitionedCallStatefulPartitionedCall)lstm_823/StatefulPartitionedCall:output:0lstm_824_4116811lstm_824_4116813lstm_824_4116815*
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116314?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall)lstm_824/StatefulPartitionedCall:output:0dense_274_4116818dense_274_4116820*
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
F__inference_dense_274_layer_call_and_return_conditional_losses_4116116y
IdentityIdentity*dense_274/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_274/StatefulPartitionedCall!^lstm_822/StatefulPartitionedCall!^lstm_823/StatefulPartitionedCall!^lstm_824/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall2D
 lstm_822/StatefulPartitionedCall lstm_822/StatefulPartitionedCall2D
 lstm_823/StatefulPartitionedCall lstm_823/StatefulPartitionedCall2D
 lstm_824/StatefulPartitionedCall lstm_824/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_822_input
?
?
/__inference_lstm_cell_680_layer_call_fn_4119864

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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115512o
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118097
inputs_0?
,lstm_cell_678_matmul_readvariableop_resource:	?A
.lstm_cell_678_matmul_1_readvariableop_resource:	d?<
-lstm_cell_678_biasadd_readvariableop_resource:	?
identity??$lstm_cell_678/BiasAdd/ReadVariableOp?#lstm_cell_678/MatMul/ReadVariableOp?%lstm_cell_678/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_678/MatMul/ReadVariableOpReadVariableOp,lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_678/MatMulMatMulstrided_slice_2:output:0+lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_678/MatMul_1MatMulzeros:output:0-lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_678/addAddV2lstm_cell_678/MatMul:product:0 lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_678/BiasAddBiasAddlstm_cell_678/add:z:0,lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_678/splitSplit&lstm_cell_678/split/split_dim:output:0lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_678/SigmoidSigmoidlstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_1Sigmoidlstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_678/mulMullstm_cell_678/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_678/ReluRelulstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_1Mullstm_cell_678/Sigmoid:y:0 lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_678/add_1AddV2lstm_cell_678/mul:z:0lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_2Sigmoidlstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_678/Relu_1Relulstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_2Mullstm_cell_678/Sigmoid_2:y:0"lstm_cell_678/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_678_matmul_readvariableop_resource.lstm_cell_678_matmul_1_readvariableop_resource-lstm_cell_678_biasadd_readvariableop_resource*
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
while_body_4118013*
condR
while_cond_4118012*K
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
NoOpNoOp%^lstm_cell_678/BiasAdd/ReadVariableOp$^lstm_cell_678/MatMul/ReadVariableOp&^lstm_cell_678/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_678/BiasAdd/ReadVariableOp$lstm_cell_678/BiasAdd/ReadVariableOp2J
#lstm_cell_678/MatMul/ReadVariableOp#lstm_cell_678/MatMul/ReadVariableOp2N
%lstm_cell_678/MatMul_1/ReadVariableOp%lstm_cell_678/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4118012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118012___redundant_placeholder05
1while_while_cond_4118012___redundant_placeholder15
1while_while_cond_4118012___redundant_placeholder25
1while_while_cond_4118012___redundant_placeholder3
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
while_cond_4118771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118771___redundant_placeholder05
1while_while_cond_4118771___redundant_placeholder15
1while_while_cond_4118771___redundant_placeholder25
1while_while_cond_4118771___redundant_placeholder3
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
while_body_4116560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_678_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_678_matmul_readvariableop_resource:	?G
4while_lstm_cell_678_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_678_biasadd_readvariableop_resource:	???*while/lstm_cell_678/BiasAdd/ReadVariableOp?)while/lstm_cell_678/MatMul/ReadVariableOp?+while/lstm_cell_678/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_678/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_678/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_678/addAddV2$while/lstm_cell_678/MatMul:product:0&while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_678/BiasAddBiasAddwhile/lstm_cell_678/add:z:02while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_678/splitSplit,while/lstm_cell_678/split/split_dim:output:0$while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_678/SigmoidSigmoid"while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_1Sigmoid"while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mulMul!while/lstm_cell_678/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_678/ReluRelu"while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_1Mulwhile/lstm_cell_678/Sigmoid:y:0&while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/add_1AddV2while/lstm_cell_678/mul:z:0while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_2Sigmoid"while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_678/Relu_1Reluwhile/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_2Mul!while/lstm_cell_678/Sigmoid_2:y:0(while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_678/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_678/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_678/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_678/BiasAdd/ReadVariableOp*^while/lstm_cell_678/MatMul/ReadVariableOp,^while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_678_biasadd_readvariableop_resource5while_lstm_cell_678_biasadd_readvariableop_resource_0"n
4while_lstm_cell_678_matmul_1_readvariableop_resource6while_lstm_cell_678_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_678_matmul_readvariableop_resource4while_lstm_cell_678_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_678/BiasAdd/ReadVariableOp*while/lstm_cell_678/BiasAdd/ReadVariableOp2V
)while/lstm_cell_678/MatMul/ReadVariableOp)while/lstm_cell_678/MatMul/ReadVariableOp2Z
+while/lstm_cell_678/MatMul_1/ReadVariableOp+while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118383

inputs?
,lstm_cell_678_matmul_readvariableop_resource:	?A
.lstm_cell_678_matmul_1_readvariableop_resource:	d?<
-lstm_cell_678_biasadd_readvariableop_resource:	?
identity??$lstm_cell_678/BiasAdd/ReadVariableOp?#lstm_cell_678/MatMul/ReadVariableOp?%lstm_cell_678/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_678/MatMul/ReadVariableOpReadVariableOp,lstm_cell_678_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_678/MatMulMatMulstrided_slice_2:output:0+lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_678_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_678/MatMul_1MatMulzeros:output:0-lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_678/addAddV2lstm_cell_678/MatMul:product:0 lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_678_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_678/BiasAddBiasAddlstm_cell_678/add:z:0,lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_678/splitSplit&lstm_cell_678/split/split_dim:output:0lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_678/SigmoidSigmoidlstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_1Sigmoidlstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_678/mulMullstm_cell_678/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_678/ReluRelulstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_1Mullstm_cell_678/Sigmoid:y:0 lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_678/add_1AddV2lstm_cell_678/mul:z:0lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_678/Sigmoid_2Sigmoidlstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_678/Relu_1Relulstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_678/mul_2Mullstm_cell_678/Sigmoid_2:y:0"lstm_cell_678/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_678_matmul_readvariableop_resource.lstm_cell_678_matmul_1_readvariableop_resource-lstm_cell_678_biasadd_readvariableop_resource*
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
while_body_4118299*
condR
while_cond_4118298*K
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
NoOpNoOp%^lstm_cell_678/BiasAdd/ReadVariableOp$^lstm_cell_678/MatMul/ReadVariableOp&^lstm_cell_678/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_678/BiasAdd/ReadVariableOp$lstm_cell_678/BiasAdd/ReadVariableOp2J
#lstm_cell_678/MatMul/ReadVariableOp#lstm_cell_678/MatMul/ReadVariableOp2N
%lstm_cell_678/MatMul_1/ReadVariableOp%lstm_cell_678/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4115220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4115220___redundant_placeholder05
1while_while_cond_4115220___redundant_placeholder15
1while_while_cond_4115220___redundant_placeholder25
1while_while_cond_4115220___redundant_placeholder3
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
lstm_824_while_cond_4117249.
*lstm_824_while_lstm_824_while_loop_counter4
0lstm_824_while_lstm_824_while_maximum_iterations
lstm_824_while_placeholder 
lstm_824_while_placeholder_1 
lstm_824_while_placeholder_2 
lstm_824_while_placeholder_30
,lstm_824_while_less_lstm_824_strided_slice_1G
Clstm_824_while_lstm_824_while_cond_4117249___redundant_placeholder0G
Clstm_824_while_lstm_824_while_cond_4117249___redundant_placeholder1G
Clstm_824_while_lstm_824_while_cond_4117249___redundant_placeholder2G
Clstm_824_while_lstm_824_while_cond_4117249___redundant_placeholder3
lstm_824_while_identity
?
lstm_824/while/LessLesslstm_824_while_placeholder,lstm_824_while_less_lstm_824_strided_slice_1*
T0*
_output_shapes
: ]
lstm_824/while/IdentityIdentitylstm_824/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_824_while_identity lstm_824/while/Identity:output:0*(
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
while_body_4115221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_679_4115245_0:	d?0
while_lstm_cell_679_4115247_0:	2?,
while_lstm_cell_679_4115249_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_679_4115245:	d?.
while_lstm_cell_679_4115247:	2?*
while_lstm_cell_679_4115249:	???+while/lstm_cell_679/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_679/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_679_4115245_0while_lstm_cell_679_4115247_0while_lstm_cell_679_4115249_0*
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115162?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_679/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_679/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_679/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_679/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_679_4115245while_lstm_cell_679_4115245_0"<
while_lstm_cell_679_4115247while_lstm_cell_679_4115247_0"<
while_lstm_cell_679_4115249while_lstm_cell_679_4115249_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_679/StatefulPartitionedCall+while/lstm_cell_679/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4119798

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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119472

inputs>
,lstm_cell_680_matmul_readvariableop_resource:2(@
.lstm_cell_680_matmul_1_readvariableop_resource:
(;
-lstm_cell_680_biasadd_readvariableop_resource:(
identity??$lstm_cell_680/BiasAdd/ReadVariableOp?#lstm_cell_680/MatMul/ReadVariableOp?%lstm_cell_680/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_680/MatMul/ReadVariableOpReadVariableOp,lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_680/MatMulMatMulstrided_slice_2:output:0+lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_680/MatMul_1MatMulzeros:output:0-lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_680/addAddV2lstm_cell_680/MatMul:product:0 lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_680/BiasAddBiasAddlstm_cell_680/add:z:0,lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_680/splitSplit&lstm_cell_680/split/split_dim:output:0lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_680/SigmoidSigmoidlstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_1Sigmoidlstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_680/mulMullstm_cell_680/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_680/ReluRelulstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_1Mullstm_cell_680/Sigmoid:y:0 lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_680/add_1AddV2lstm_cell_680/mul:z:0lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_2Sigmoidlstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_680/Relu_1Relulstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_2Mullstm_cell_680/Sigmoid_2:y:0"lstm_cell_680/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_680_matmul_readvariableop_resource.lstm_cell_680_matmul_1_readvariableop_resource-lstm_cell_680_biasadd_readvariableop_resource*
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
while_body_4119388*
condR
while_cond_4119387*K
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
NoOpNoOp%^lstm_cell_680/BiasAdd/ReadVariableOp$^lstm_cell_680/MatMul/ReadVariableOp&^lstm_cell_680/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_680/BiasAdd/ReadVariableOp$lstm_cell_680/BiasAdd/ReadVariableOp2J
#lstm_cell_680/MatMul/ReadVariableOp#lstm_cell_680/MatMul/ReadVariableOp2N
%lstm_cell_680/MatMul_1/ReadVariableOp%lstm_cell_680/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4114871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_678_4114895_0:	?0
while_lstm_cell_678_4114897_0:	d?,
while_lstm_cell_678_4114899_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_678_4114895:	?.
while_lstm_cell_678_4114897:	d?*
while_lstm_cell_678_4114899:	???+while/lstm_cell_678/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_678/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_678_4114895_0while_lstm_cell_678_4114897_0while_lstm_cell_678_4114899_0*
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114812?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_678/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_678/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_678/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_678/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_678_4114895while_lstm_cell_678_4114895_0"<
while_lstm_cell_678_4114897while_lstm_cell_678_4114897_0"<
while_lstm_cell_678_4114899while_lstm_cell_678_4114899_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_678/StatefulPartitionedCall+while/lstm_cell_678/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_822_layer_call_fn_4117811

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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4116644s
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
while_cond_4115029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4115029___redundant_placeholder05
1while_while_cond_4115029___redundant_placeholder15
1while_while_cond_4115029___redundant_placeholder25
1while_while_cond_4115029___redundant_placeholder3
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114812

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
while_cond_4116013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4116013___redundant_placeholder05
1while_while_cond_4116013___redundant_placeholder15
1while_while_cond_4116013___redundant_placeholder25
1while_while_cond_4116013___redundant_placeholder3
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
while_cond_4119244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4119244___redundant_placeholder05
1while_while_cond_4119244___redundant_placeholder15
1while_while_cond_4119244___redundant_placeholder25
1while_while_cond_4119244___redundant_placeholder3
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
*sequential_274_lstm_823_while_cond_4114369L
Hsequential_274_lstm_823_while_sequential_274_lstm_823_while_loop_counterR
Nsequential_274_lstm_823_while_sequential_274_lstm_823_while_maximum_iterations-
)sequential_274_lstm_823_while_placeholder/
+sequential_274_lstm_823_while_placeholder_1/
+sequential_274_lstm_823_while_placeholder_2/
+sequential_274_lstm_823_while_placeholder_3N
Jsequential_274_lstm_823_while_less_sequential_274_lstm_823_strided_slice_1e
asequential_274_lstm_823_while_sequential_274_lstm_823_while_cond_4114369___redundant_placeholder0e
asequential_274_lstm_823_while_sequential_274_lstm_823_while_cond_4114369___redundant_placeholder1e
asequential_274_lstm_823_while_sequential_274_lstm_823_while_cond_4114369___redundant_placeholder2e
asequential_274_lstm_823_while_sequential_274_lstm_823_while_cond_4114369___redundant_placeholder3*
&sequential_274_lstm_823_while_identity
?
"sequential_274/lstm_823/while/LessLess)sequential_274_lstm_823_while_placeholderJsequential_274_lstm_823_while_less_sequential_274_lstm_823_strided_slice_1*
T0*
_output_shapes
: {
&sequential_274/lstm_823/while/IdentityIdentity&sequential_274/lstm_823/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_274_lstm_823_while_identity/sequential_274/lstm_823/while/Identity:output:0*(
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
0__inference_sequential_274_layer_call_fn_4116913

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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116712o
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
while_body_4118299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_678_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_678_matmul_readvariableop_resource:	?G
4while_lstm_cell_678_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_678_biasadd_readvariableop_resource:	???*while/lstm_cell_678/BiasAdd/ReadVariableOp?)while/lstm_cell_678/MatMul/ReadVariableOp?+while/lstm_cell_678/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_678/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_678/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_678/addAddV2$while/lstm_cell_678/MatMul:product:0&while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_678/BiasAddBiasAddwhile/lstm_cell_678/add:z:02while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_678/splitSplit,while/lstm_cell_678/split/split_dim:output:0$while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_678/SigmoidSigmoid"while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_1Sigmoid"while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mulMul!while/lstm_cell_678/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_678/ReluRelu"while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_1Mulwhile/lstm_cell_678/Sigmoid:y:0&while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/add_1AddV2while/lstm_cell_678/mul:z:0while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_2Sigmoid"while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_678/Relu_1Reluwhile/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_2Mul!while/lstm_cell_678/Sigmoid_2:y:0(while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_678/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_678/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_678/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_678/BiasAdd/ReadVariableOp*^while/lstm_cell_678/MatMul/ReadVariableOp,^while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_678_biasadd_readvariableop_resource5while_lstm_cell_678_biasadd_readvariableop_resource_0"n
4while_lstm_cell_678_matmul_1_readvariableop_resource6while_lstm_cell_678_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_678_matmul_readvariableop_resource4while_lstm_cell_678_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_678/BiasAdd/ReadVariableOp*while/lstm_cell_678/BiasAdd/ReadVariableOp2V
)while/lstm_cell_678/MatMul/ReadVariableOp)while/lstm_cell_678/MatMul/ReadVariableOp2Z
+while/lstm_cell_678/MatMul_1/ReadVariableOp+while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_274_layer_call_fn_4116148
lstm_822_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_822_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116123o
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
_user_specified_namelstm_822_input
?J
?
E__inference_lstm_823_layer_call_and_return_conditional_losses_4116479

inputs?
,lstm_cell_679_matmul_readvariableop_resource:	d?A
.lstm_cell_679_matmul_1_readvariableop_resource:	2?<
-lstm_cell_679_biasadd_readvariableop_resource:	?
identity??$lstm_cell_679/BiasAdd/ReadVariableOp?#lstm_cell_679/MatMul/ReadVariableOp?%lstm_cell_679/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_679/MatMul/ReadVariableOpReadVariableOp,lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_679/MatMulMatMulstrided_slice_2:output:0+lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_679/MatMul_1MatMulzeros:output:0-lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_679/addAddV2lstm_cell_679/MatMul:product:0 lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_679/BiasAddBiasAddlstm_cell_679/add:z:0,lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_679/splitSplit&lstm_cell_679/split/split_dim:output:0lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_679/SigmoidSigmoidlstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_1Sigmoidlstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_679/mulMullstm_cell_679/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_679/ReluRelulstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_1Mullstm_cell_679/Sigmoid:y:0 lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_679/add_1AddV2lstm_cell_679/mul:z:0lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_2Sigmoidlstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_679/Relu_1Relulstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_2Mullstm_cell_679/Sigmoid_2:y:0"lstm_cell_679/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_679_matmul_readvariableop_resource.lstm_cell_679_matmul_1_readvariableop_resource-lstm_cell_679_biasadd_readvariableop_resource*
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
while_body_4116395*
condR
while_cond_4116394*K
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
NoOpNoOp%^lstm_cell_679/BiasAdd/ReadVariableOp$^lstm_cell_679/MatMul/ReadVariableOp&^lstm_cell_679/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_679/BiasAdd/ReadVariableOp$lstm_cell_679/BiasAdd/ReadVariableOp2J
#lstm_cell_679/MatMul/ReadVariableOp#lstm_cell_679/MatMul/ReadVariableOp2N
%lstm_cell_679/MatMul_1/ReadVariableOp%lstm_cell_679/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4119101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4119101___redundant_placeholder05
1while_while_cond_4119101___redundant_placeholder15
1while_while_cond_4119101___redundant_placeholder25
1while_while_cond_4119101___redundant_placeholder3
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
while_body_4115030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_679_4115054_0:	d?0
while_lstm_cell_679_4115056_0:	2?,
while_lstm_cell_679_4115058_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_679_4115054:	d?.
while_lstm_cell_679_4115056:	2?*
while_lstm_cell_679_4115058:	???+while/lstm_cell_679/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_679/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_679_4115054_0while_lstm_cell_679_4115056_0while_lstm_cell_679_4115058_0*
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115016?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_679/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_679/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_679/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_679/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_679_4115054while_lstm_cell_679_4115054_0"<
while_lstm_cell_679_4115056while_lstm_cell_679_4115056_0"<
while_lstm_cell_679_4115058while_lstm_cell_679_4115058_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_679/StatefulPartitionedCall+while/lstm_cell_679/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115948

inputs?
,lstm_cell_679_matmul_readvariableop_resource:	d?A
.lstm_cell_679_matmul_1_readvariableop_resource:	2?<
-lstm_cell_679_biasadd_readvariableop_resource:	?
identity??$lstm_cell_679/BiasAdd/ReadVariableOp?#lstm_cell_679/MatMul/ReadVariableOp?%lstm_cell_679/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_679/MatMul/ReadVariableOpReadVariableOp,lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_679/MatMulMatMulstrided_slice_2:output:0+lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_679/MatMul_1MatMulzeros:output:0-lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_679/addAddV2lstm_cell_679/MatMul:product:0 lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_679/BiasAddBiasAddlstm_cell_679/add:z:0,lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_679/splitSplit&lstm_cell_679/split/split_dim:output:0lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_679/SigmoidSigmoidlstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_1Sigmoidlstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_679/mulMullstm_cell_679/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_679/ReluRelulstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_1Mullstm_cell_679/Sigmoid:y:0 lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_679/add_1AddV2lstm_cell_679/mul:z:0lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_2Sigmoidlstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_679/Relu_1Relulstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_2Mullstm_cell_679/Sigmoid_2:y:0"lstm_cell_679/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_679_matmul_readvariableop_resource.lstm_cell_679_matmul_1_readvariableop_resource-lstm_cell_679_biasadd_readvariableop_resource*
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
while_body_4115864*
condR
while_cond_4115863*K
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
NoOpNoOp%^lstm_cell_679/BiasAdd/ReadVariableOp$^lstm_cell_679/MatMul/ReadVariableOp&^lstm_cell_679/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_679/BiasAdd/ReadVariableOp$lstm_cell_679/BiasAdd/ReadVariableOp2J
#lstm_cell_679/MatMul/ReadVariableOp#lstm_cell_679/MatMul/ReadVariableOp2N
%lstm_cell_679/MatMul_1/ReadVariableOp%lstm_cell_679/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4119732

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
?
?
*__inference_lstm_824_layer_call_fn_4119043

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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116314o
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
?
?
+__inference_dense_274_layer_call_fn_4119624

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
F__inference_dense_274_layer_call_and_return_conditional_losses_4116116o
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
*__inference_lstm_823_layer_call_fn_4118394
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115099|
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114666

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

lstm_823_while_body_4117538.
*lstm_823_while_lstm_823_while_loop_counter4
0lstm_823_while_lstm_823_while_maximum_iterations
lstm_823_while_placeholder 
lstm_823_while_placeholder_1 
lstm_823_while_placeholder_2 
lstm_823_while_placeholder_3-
)lstm_823_while_lstm_823_strided_slice_1_0i
elstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0:	d?R
?lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?M
>lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
lstm_823_while_identity
lstm_823_while_identity_1
lstm_823_while_identity_2
lstm_823_while_identity_3
lstm_823_while_identity_4
lstm_823_while_identity_5+
'lstm_823_while_lstm_823_strided_slice_1g
clstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensorN
;lstm_823_while_lstm_cell_679_matmul_readvariableop_resource:	d?P
=lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource:	2?K
<lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource:	???3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp?2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp?4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp?
@lstm_823/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_823/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensor_0lstm_823_while_placeholderIlstm_823/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp=lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_823/while/lstm_cell_679/MatMulMatMul9lstm_823/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp?lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_823/while/lstm_cell_679/MatMul_1MatMullstm_823_while_placeholder_2<lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_823/while/lstm_cell_679/addAddV2-lstm_823/while/lstm_cell_679/MatMul:product:0/lstm_823/while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp>lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_823/while/lstm_cell_679/BiasAddBiasAdd$lstm_823/while/lstm_cell_679/add:z:0;lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_823/while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_823/while/lstm_cell_679/splitSplit5lstm_823/while/lstm_cell_679/split/split_dim:output:0-lstm_823/while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_823/while/lstm_cell_679/SigmoidSigmoid+lstm_823/while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_823/while/lstm_cell_679/Sigmoid_1Sigmoid+lstm_823/while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_823/while/lstm_cell_679/mulMul*lstm_823/while/lstm_cell_679/Sigmoid_1:y:0lstm_823_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_823/while/lstm_cell_679/ReluRelu+lstm_823/while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_823/while/lstm_cell_679/mul_1Mul(lstm_823/while/lstm_cell_679/Sigmoid:y:0/lstm_823/while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_823/while/lstm_cell_679/add_1AddV2$lstm_823/while/lstm_cell_679/mul:z:0&lstm_823/while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_823/while/lstm_cell_679/Sigmoid_2Sigmoid+lstm_823/while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_823/while/lstm_cell_679/Relu_1Relu&lstm_823/while/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_823/while/lstm_cell_679/mul_2Mul*lstm_823/while/lstm_cell_679/Sigmoid_2:y:01lstm_823/while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_823/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_823_while_placeholder_1lstm_823_while_placeholder&lstm_823/while/lstm_cell_679/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_823/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_823/while/addAddV2lstm_823_while_placeholderlstm_823/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_823/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_823/while/add_1AddV2*lstm_823_while_lstm_823_while_loop_counterlstm_823/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_823/while/IdentityIdentitylstm_823/while/add_1:z:0^lstm_823/while/NoOp*
T0*
_output_shapes
: ?
lstm_823/while/Identity_1Identity0lstm_823_while_lstm_823_while_maximum_iterations^lstm_823/while/NoOp*
T0*
_output_shapes
: t
lstm_823/while/Identity_2Identitylstm_823/while/add:z:0^lstm_823/while/NoOp*
T0*
_output_shapes
: ?
lstm_823/while/Identity_3IdentityClstm_823/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_823/while/NoOp*
T0*
_output_shapes
: ?
lstm_823/while/Identity_4Identity&lstm_823/while/lstm_cell_679/mul_2:z:0^lstm_823/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_823/while/Identity_5Identity&lstm_823/while/lstm_cell_679/add_1:z:0^lstm_823/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_823/while/NoOpNoOp4^lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp3^lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp5^lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_823_while_identity lstm_823/while/Identity:output:0"?
lstm_823_while_identity_1"lstm_823/while/Identity_1:output:0"?
lstm_823_while_identity_2"lstm_823/while/Identity_2:output:0"?
lstm_823_while_identity_3"lstm_823/while/Identity_3:output:0"?
lstm_823_while_identity_4"lstm_823/while/Identity_4:output:0"?
lstm_823_while_identity_5"lstm_823/while/Identity_5:output:0"T
'lstm_823_while_lstm_823_strided_slice_1)lstm_823_while_lstm_823_strided_slice_1_0"~
<lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource>lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0"?
=lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource?lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0"|
;lstm_823_while_lstm_cell_679_matmul_readvariableop_resource=lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0"?
clstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensorelstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp2h
2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp2l
4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4114679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4114679___redundant_placeholder05
1while_while_cond_4114679___redundant_placeholder15
1while_while_cond_4114679___redundant_placeholder25
1while_while_cond_4114679___redundant_placeholder3
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
/__inference_lstm_cell_679_layer_call_fn_4119766

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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115162o
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

lstm_823_while_body_4117111.
*lstm_823_while_lstm_823_while_loop_counter4
0lstm_823_while_lstm_823_while_maximum_iterations
lstm_823_while_placeholder 
lstm_823_while_placeholder_1 
lstm_823_while_placeholder_2 
lstm_823_while_placeholder_3-
)lstm_823_while_lstm_823_strided_slice_1_0i
elstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0:	d?R
?lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?M
>lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
lstm_823_while_identity
lstm_823_while_identity_1
lstm_823_while_identity_2
lstm_823_while_identity_3
lstm_823_while_identity_4
lstm_823_while_identity_5+
'lstm_823_while_lstm_823_strided_slice_1g
clstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensorN
;lstm_823_while_lstm_cell_679_matmul_readvariableop_resource:	d?P
=lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource:	2?K
<lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource:	???3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp?2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp?4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp?
@lstm_823/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_823/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensor_0lstm_823_while_placeholderIlstm_823/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp=lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_823/while/lstm_cell_679/MatMulMatMul9lstm_823/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp?lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_823/while/lstm_cell_679/MatMul_1MatMullstm_823_while_placeholder_2<lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_823/while/lstm_cell_679/addAddV2-lstm_823/while/lstm_cell_679/MatMul:product:0/lstm_823/while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp>lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_823/while/lstm_cell_679/BiasAddBiasAdd$lstm_823/while/lstm_cell_679/add:z:0;lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_823/while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_823/while/lstm_cell_679/splitSplit5lstm_823/while/lstm_cell_679/split/split_dim:output:0-lstm_823/while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_823/while/lstm_cell_679/SigmoidSigmoid+lstm_823/while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_823/while/lstm_cell_679/Sigmoid_1Sigmoid+lstm_823/while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_823/while/lstm_cell_679/mulMul*lstm_823/while/lstm_cell_679/Sigmoid_1:y:0lstm_823_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_823/while/lstm_cell_679/ReluRelu+lstm_823/while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_823/while/lstm_cell_679/mul_1Mul(lstm_823/while/lstm_cell_679/Sigmoid:y:0/lstm_823/while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_823/while/lstm_cell_679/add_1AddV2$lstm_823/while/lstm_cell_679/mul:z:0&lstm_823/while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_823/while/lstm_cell_679/Sigmoid_2Sigmoid+lstm_823/while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_823/while/lstm_cell_679/Relu_1Relu&lstm_823/while/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_823/while/lstm_cell_679/mul_2Mul*lstm_823/while/lstm_cell_679/Sigmoid_2:y:01lstm_823/while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_823/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_823_while_placeholder_1lstm_823_while_placeholder&lstm_823/while/lstm_cell_679/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_823/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_823/while/addAddV2lstm_823_while_placeholderlstm_823/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_823/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_823/while/add_1AddV2*lstm_823_while_lstm_823_while_loop_counterlstm_823/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_823/while/IdentityIdentitylstm_823/while/add_1:z:0^lstm_823/while/NoOp*
T0*
_output_shapes
: ?
lstm_823/while/Identity_1Identity0lstm_823_while_lstm_823_while_maximum_iterations^lstm_823/while/NoOp*
T0*
_output_shapes
: t
lstm_823/while/Identity_2Identitylstm_823/while/add:z:0^lstm_823/while/NoOp*
T0*
_output_shapes
: ?
lstm_823/while/Identity_3IdentityClstm_823/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_823/while/NoOp*
T0*
_output_shapes
: ?
lstm_823/while/Identity_4Identity&lstm_823/while/lstm_cell_679/mul_2:z:0^lstm_823/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_823/while/Identity_5Identity&lstm_823/while/lstm_cell_679/add_1:z:0^lstm_823/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_823/while/NoOpNoOp4^lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp3^lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp5^lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_823_while_identity lstm_823/while/Identity:output:0"?
lstm_823_while_identity_1"lstm_823/while/Identity_1:output:0"?
lstm_823_while_identity_2"lstm_823/while/Identity_2:output:0"?
lstm_823_while_identity_3"lstm_823/while/Identity_3:output:0"?
lstm_823_while_identity_4"lstm_823/while/Identity_4:output:0"?
lstm_823_while_identity_5"lstm_823/while/Identity_5:output:0"T
'lstm_823_while_lstm_823_strided_slice_1)lstm_823_while_lstm_823_strided_slice_1_0"~
<lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource>lstm_823_while_lstm_cell_679_biasadd_readvariableop_resource_0"?
=lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource?lstm_823_while_lstm_cell_679_matmul_1_readvariableop_resource_0"|
;lstm_823_while_lstm_cell_679_matmul_readvariableop_resource=lstm_823_while_lstm_cell_679_matmul_readvariableop_resource_0"?
clstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensorelstm_823_while_tensorarrayv2read_tensorlistgetitem_lstm_823_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp3lstm_823/while/lstm_cell_679/BiasAdd/ReadVariableOp2h
2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp2lstm_823/while/lstm_cell_679/MatMul/ReadVariableOp2l
4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp4lstm_823/while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118713
inputs_0?
,lstm_cell_679_matmul_readvariableop_resource:	d?A
.lstm_cell_679_matmul_1_readvariableop_resource:	2?<
-lstm_cell_679_biasadd_readvariableop_resource:	?
identity??$lstm_cell_679/BiasAdd/ReadVariableOp?#lstm_cell_679/MatMul/ReadVariableOp?%lstm_cell_679/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_679/MatMul/ReadVariableOpReadVariableOp,lstm_cell_679_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_679/MatMulMatMulstrided_slice_2:output:0+lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_679_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_679/MatMul_1MatMulzeros:output:0-lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_679/addAddV2lstm_cell_679/MatMul:product:0 lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_679_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_679/BiasAddBiasAddlstm_cell_679/add:z:0,lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_679/splitSplit&lstm_cell_679/split/split_dim:output:0lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_679/SigmoidSigmoidlstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_1Sigmoidlstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_679/mulMullstm_cell_679/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_679/ReluRelulstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_1Mullstm_cell_679/Sigmoid:y:0 lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_679/add_1AddV2lstm_cell_679/mul:z:0lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_679/Sigmoid_2Sigmoidlstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_679/Relu_1Relulstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_679/mul_2Mullstm_cell_679/Sigmoid_2:y:0"lstm_cell_679/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_679_matmul_readvariableop_resource.lstm_cell_679_matmul_1_readvariableop_resource-lstm_cell_679_biasadd_readvariableop_resource*
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
while_body_4118629*
condR
while_cond_4118628*K
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
NoOpNoOp%^lstm_cell_679/BiasAdd/ReadVariableOp$^lstm_cell_679/MatMul/ReadVariableOp&^lstm_cell_679/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_679/BiasAdd/ReadVariableOp$lstm_cell_679/BiasAdd/ReadVariableOp2J
#lstm_cell_679/MatMul/ReadVariableOp#lstm_cell_679/MatMul/ReadVariableOp2N
%lstm_cell_679/MatMul_1/ReadVariableOp%lstm_cell_679/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116098

inputs>
,lstm_cell_680_matmul_readvariableop_resource:2(@
.lstm_cell_680_matmul_1_readvariableop_resource:
(;
-lstm_cell_680_biasadd_readvariableop_resource:(
identity??$lstm_cell_680/BiasAdd/ReadVariableOp?#lstm_cell_680/MatMul/ReadVariableOp?%lstm_cell_680/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_680/MatMul/ReadVariableOpReadVariableOp,lstm_cell_680_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_680/MatMulMatMulstrided_slice_2:output:0+lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_680_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_680/MatMul_1MatMulzeros:output:0-lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_680/addAddV2lstm_cell_680/MatMul:product:0 lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_680_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_680/BiasAddBiasAddlstm_cell_680/add:z:0,lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_680/splitSplit&lstm_cell_680/split/split_dim:output:0lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_680/SigmoidSigmoidlstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_1Sigmoidlstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_680/mulMullstm_cell_680/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_680/ReluRelulstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_1Mullstm_cell_680/Sigmoid:y:0 lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_680/add_1AddV2lstm_cell_680/mul:z:0lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_680/Sigmoid_2Sigmoidlstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_680/Relu_1Relulstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_680/mul_2Mullstm_cell_680/Sigmoid_2:y:0"lstm_cell_680/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_680_matmul_readvariableop_resource.lstm_cell_680_matmul_1_readvariableop_resource-lstm_cell_680_biasadd_readvariableop_resource*
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
while_body_4116014*
condR
while_cond_4116013*K
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
NoOpNoOp%^lstm_cell_680/BiasAdd/ReadVariableOp$^lstm_cell_680/MatMul/ReadVariableOp&^lstm_cell_680/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_680/BiasAdd/ReadVariableOp$lstm_cell_680/BiasAdd/ReadVariableOp2J
#lstm_cell_680/MatMul/ReadVariableOp#lstm_cell_680/MatMul/ReadVariableOp2N
%lstm_cell_680/MatMul_1/ReadVariableOp%lstm_cell_680/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_822_layer_call_fn_4117800

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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4115798s
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115366

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
F__inference_dense_274_layer_call_and_return_conditional_losses_4119634

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
%__inference_signature_wrapper_4116859
lstm_822_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_822_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4114599o
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
_user_specified_namelstm_822_input
?
?
while_cond_4117869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4117869___redundant_placeholder05
1while_while_cond_4117869___redundant_placeholder15
1while_while_cond_4117869___redundant_placeholder25
1while_while_cond_4117869___redundant_placeholder3
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
??
?
#__inference__traced_restore_4120201
file_prefix3
!assignvariableop_dense_274_kernel:
/
!assignvariableop_1_dense_274_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_822_lstm_cell_822_kernel:	?M
:assignvariableop_8_lstm_822_lstm_cell_822_recurrent_kernel:	d?=
.assignvariableop_9_lstm_822_lstm_cell_822_bias:	?D
1assignvariableop_10_lstm_823_lstm_cell_823_kernel:	d?N
;assignvariableop_11_lstm_823_lstm_cell_823_recurrent_kernel:	2?>
/assignvariableop_12_lstm_823_lstm_cell_823_bias:	?C
1assignvariableop_13_lstm_824_lstm_cell_824_kernel:2(M
;assignvariableop_14_lstm_824_lstm_cell_824_recurrent_kernel:
(=
/assignvariableop_15_lstm_824_lstm_cell_824_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_274_kernel_m:
7
)assignvariableop_19_adam_dense_274_bias_m:K
8assignvariableop_20_adam_lstm_822_lstm_cell_822_kernel_m:	?U
Bassignvariableop_21_adam_lstm_822_lstm_cell_822_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_822_lstm_cell_822_bias_m:	?K
8assignvariableop_23_adam_lstm_823_lstm_cell_823_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_823_lstm_cell_823_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_823_lstm_cell_823_bias_m:	?J
8assignvariableop_26_adam_lstm_824_lstm_cell_824_kernel_m:2(T
Bassignvariableop_27_adam_lstm_824_lstm_cell_824_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_824_lstm_cell_824_bias_m:(=
+assignvariableop_29_adam_dense_274_kernel_v:
7
)assignvariableop_30_adam_dense_274_bias_v:K
8assignvariableop_31_adam_lstm_822_lstm_cell_822_kernel_v:	?U
Bassignvariableop_32_adam_lstm_822_lstm_cell_822_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_822_lstm_cell_822_bias_v:	?K
8assignvariableop_34_adam_lstm_823_lstm_cell_823_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_823_lstm_cell_823_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_823_lstm_cell_823_bias_v:	?J
8assignvariableop_37_adam_lstm_824_lstm_cell_824_kernel_v:2(T
Bassignvariableop_38_adam_lstm_824_lstm_cell_824_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_824_lstm_cell_824_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_274_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_274_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_822_lstm_cell_822_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_822_lstm_cell_822_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_822_lstm_cell_822_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_823_lstm_cell_823_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_823_lstm_cell_823_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_823_lstm_cell_823_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_824_lstm_cell_824_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_824_lstm_cell_824_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_824_lstm_cell_824_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_274_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_274_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_822_lstm_cell_822_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_822_lstm_cell_822_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_822_lstm_cell_822_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_823_lstm_cell_823_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_823_lstm_cell_823_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_823_lstm_cell_823_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_824_lstm_cell_824_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_824_lstm_cell_824_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_824_lstm_cell_824_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_274_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_274_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_822_lstm_cell_822_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_822_lstm_cell_822_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_822_lstm_cell_822_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_823_lstm_cell_823_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_823_lstm_cell_823_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_823_lstm_cell_823_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_824_lstm_cell_824_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_824_lstm_cell_824_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_824_lstm_cell_824_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4118155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118155___redundant_placeholder05
1while_while_cond_4118155___redundant_placeholder15
1while_while_cond_4118155___redundant_placeholder25
1while_while_cond_4118155___redundant_placeholder3
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
lstm_822_while_cond_4117398.
*lstm_822_while_lstm_822_while_loop_counter4
0lstm_822_while_lstm_822_while_maximum_iterations
lstm_822_while_placeholder 
lstm_822_while_placeholder_1 
lstm_822_while_placeholder_2 
lstm_822_while_placeholder_30
,lstm_822_while_less_lstm_822_strided_slice_1G
Clstm_822_while_lstm_822_while_cond_4117398___redundant_placeholder0G
Clstm_822_while_lstm_822_while_cond_4117398___redundant_placeholder1G
Clstm_822_while_lstm_822_while_cond_4117398___redundant_placeholder2G
Clstm_822_while_lstm_822_while_cond_4117398___redundant_placeholder3
lstm_822_while_identity
?
lstm_822/while/LessLesslstm_822_while_placeholder,lstm_822_while_less_lstm_822_strided_slice_1*
T0*
_output_shapes
: ]
lstm_822/while/IdentityIdentitylstm_822/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_822_while_identity lstm_822/while/Identity:output:0*(
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
*__inference_lstm_824_layer_call_fn_4119032

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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4116098o
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
while_body_4117870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_678_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_678_matmul_readvariableop_resource:	?G
4while_lstm_cell_678_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_678_biasadd_readvariableop_resource:	???*while/lstm_cell_678/BiasAdd/ReadVariableOp?)while/lstm_cell_678/MatMul/ReadVariableOp?+while/lstm_cell_678/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_678/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_678/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_678/addAddV2$while/lstm_cell_678/MatMul:product:0&while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_678/BiasAddBiasAddwhile/lstm_cell_678/add:z:02while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_678/splitSplit,while/lstm_cell_678/split/split_dim:output:0$while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_678/SigmoidSigmoid"while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_1Sigmoid"while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mulMul!while/lstm_cell_678/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_678/ReluRelu"while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_1Mulwhile/lstm_cell_678/Sigmoid:y:0&while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/add_1AddV2while/lstm_cell_678/mul:z:0while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_2Sigmoid"while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_678/Relu_1Reluwhile/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_2Mul!while/lstm_cell_678/Sigmoid_2:y:0(while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_678/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_678/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_678/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_678/BiasAdd/ReadVariableOp*^while/lstm_cell_678/MatMul/ReadVariableOp,^while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_678_biasadd_readvariableop_resource5while_lstm_cell_678_biasadd_readvariableop_resource_0"n
4while_lstm_cell_678_matmul_1_readvariableop_resource6while_lstm_cell_678_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_678_matmul_readvariableop_resource4while_lstm_cell_678_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_678/BiasAdd/ReadVariableOp*while/lstm_cell_678/BiasAdd/ReadVariableOp2V
)while/lstm_cell_678/MatMul/ReadVariableOp)while/lstm_cell_678/MatMul/ReadVariableOp2Z
+while/lstm_cell_678/MatMul_1/ReadVariableOp+while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4119928

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
while_cond_4116229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4116229___redundant_placeholder05
1while_while_cond_4116229___redundant_placeholder15
1while_while_cond_4116229___redundant_placeholder25
1while_while_cond_4116229___redundant_placeholder3
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
F__inference_dense_274_layer_call_and_return_conditional_losses_4116116

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
while_body_4116230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_680_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_680_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_680_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_680_matmul_readvariableop_resource:2(F
4while_lstm_cell_680_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_680_biasadd_readvariableop_resource:(??*while/lstm_cell_680/BiasAdd/ReadVariableOp?)while/lstm_cell_680/MatMul/ReadVariableOp?+while/lstm_cell_680/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_680/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_680_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_680/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_680/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_680_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_680/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_680/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_680/addAddV2$while/lstm_cell_680/MatMul:product:0&while/lstm_cell_680/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_680/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_680_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_680/BiasAddBiasAddwhile/lstm_cell_680/add:z:02while/lstm_cell_680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_680/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_680/splitSplit,while/lstm_cell_680/split/split_dim:output:0$while/lstm_cell_680/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_680/SigmoidSigmoid"while/lstm_cell_680/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_1Sigmoid"while/lstm_cell_680/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mulMul!while/lstm_cell_680/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_680/ReluRelu"while/lstm_cell_680/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_1Mulwhile/lstm_cell_680/Sigmoid:y:0&while/lstm_cell_680/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/add_1AddV2while/lstm_cell_680/mul:z:0while/lstm_cell_680/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_680/Sigmoid_2Sigmoid"while/lstm_cell_680/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_680/Relu_1Reluwhile/lstm_cell_680/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_680/mul_2Mul!while/lstm_cell_680/Sigmoid_2:y:0(while/lstm_cell_680/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_680/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_680/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_680/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_680/BiasAdd/ReadVariableOp*^while/lstm_cell_680/MatMul/ReadVariableOp,^while/lstm_cell_680/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_680_biasadd_readvariableop_resource5while_lstm_cell_680_biasadd_readvariableop_resource_0"n
4while_lstm_cell_680_matmul_1_readvariableop_resource6while_lstm_cell_680_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_680_matmul_readvariableop_resource4while_lstm_cell_680_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_680/BiasAdd/ReadVariableOp*while/lstm_cell_680/BiasAdd/ReadVariableOp2V
)while/lstm_cell_680/MatMul/ReadVariableOp)while/lstm_cell_680/MatMul/ReadVariableOp2Z
+while/lstm_cell_680/MatMul_1/ReadVariableOp+while/lstm_cell_680/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4115449

inputs'
lstm_cell_680_4115367:2('
lstm_cell_680_4115369:
(#
lstm_cell_680_4115371:(
identity??%lstm_cell_680/StatefulPartitionedCall?while;
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
%lstm_cell_680/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_680_4115367lstm_cell_680_4115369lstm_cell_680_4115371*
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4115366n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_680_4115367lstm_cell_680_4115369lstm_cell_680_4115371*
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
while_body_4115380*
condR
while_cond_4115379*K
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
NoOpNoOp&^lstm_cell_680/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_680/StatefulPartitionedCall%lstm_cell_680/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4119530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4119530___redundant_placeholder05
1while_while_cond_4119530___redundant_placeholder15
1while_while_cond_4119530___redundant_placeholder25
1while_while_cond_4119530___redundant_placeholder3
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
while_body_4118013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_678_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_678_matmul_readvariableop_resource:	?G
4while_lstm_cell_678_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_678_biasadd_readvariableop_resource:	???*while/lstm_cell_678/BiasAdd/ReadVariableOp?)while/lstm_cell_678/MatMul/ReadVariableOp?+while/lstm_cell_678/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_678/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_678/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_678/addAddV2$while/lstm_cell_678/MatMul:product:0&while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_678/BiasAddBiasAddwhile/lstm_cell_678/add:z:02while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_678/splitSplit,while/lstm_cell_678/split/split_dim:output:0$while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_678/SigmoidSigmoid"while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_1Sigmoid"while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mulMul!while/lstm_cell_678/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_678/ReluRelu"while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_1Mulwhile/lstm_cell_678/Sigmoid:y:0&while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/add_1AddV2while/lstm_cell_678/mul:z:0while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_678/Sigmoid_2Sigmoid"while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_678/Relu_1Reluwhile/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_678/mul_2Mul!while/lstm_cell_678/Sigmoid_2:y:0(while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_678/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_678/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_678/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_678/BiasAdd/ReadVariableOp*^while/lstm_cell_678/MatMul/ReadVariableOp,^while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_678_biasadd_readvariableop_resource5while_lstm_cell_678_biasadd_readvariableop_resource_0"n
4while_lstm_cell_678_matmul_1_readvariableop_resource6while_lstm_cell_678_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_678_matmul_readvariableop_resource4while_lstm_cell_678_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_678/BiasAdd/ReadVariableOp*while/lstm_cell_678/BiasAdd/ReadVariableOp2V
)while/lstm_cell_678/MatMul/ReadVariableOp)while/lstm_cell_678/MatMul/ReadVariableOp2Z
+while/lstm_cell_678/MatMul_1/ReadVariableOp+while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_822_while_body_4116972.
*lstm_822_while_lstm_822_while_loop_counter4
0lstm_822_while_lstm_822_while_maximum_iterations
lstm_822_while_placeholder 
lstm_822_while_placeholder_1 
lstm_822_while_placeholder_2 
lstm_822_while_placeholder_3-
)lstm_822_while_lstm_822_strided_slice_1_0i
elstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0:	?R
?lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0:	d?M
>lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0:	?
lstm_822_while_identity
lstm_822_while_identity_1
lstm_822_while_identity_2
lstm_822_while_identity_3
lstm_822_while_identity_4
lstm_822_while_identity_5+
'lstm_822_while_lstm_822_strided_slice_1g
clstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensorN
;lstm_822_while_lstm_cell_678_matmul_readvariableop_resource:	?P
=lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource:	d?K
<lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource:	???3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp?2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp?4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp?
@lstm_822/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_822/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensor_0lstm_822_while_placeholderIlstm_822/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOpReadVariableOp=lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_822/while/lstm_cell_678/MatMulMatMul9lstm_822/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOpReadVariableOp?lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_822/while/lstm_cell_678/MatMul_1MatMullstm_822_while_placeholder_2<lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_822/while/lstm_cell_678/addAddV2-lstm_822/while/lstm_cell_678/MatMul:product:0/lstm_822/while/lstm_cell_678/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOpReadVariableOp>lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_822/while/lstm_cell_678/BiasAddBiasAdd$lstm_822/while/lstm_cell_678/add:z:0;lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_822/while/lstm_cell_678/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_822/while/lstm_cell_678/splitSplit5lstm_822/while/lstm_cell_678/split/split_dim:output:0-lstm_822/while/lstm_cell_678/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_822/while/lstm_cell_678/SigmoidSigmoid+lstm_822/while/lstm_cell_678/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_822/while/lstm_cell_678/Sigmoid_1Sigmoid+lstm_822/while/lstm_cell_678/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_822/while/lstm_cell_678/mulMul*lstm_822/while/lstm_cell_678/Sigmoid_1:y:0lstm_822_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_822/while/lstm_cell_678/ReluRelu+lstm_822/while/lstm_cell_678/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_822/while/lstm_cell_678/mul_1Mul(lstm_822/while/lstm_cell_678/Sigmoid:y:0/lstm_822/while/lstm_cell_678/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_822/while/lstm_cell_678/add_1AddV2$lstm_822/while/lstm_cell_678/mul:z:0&lstm_822/while/lstm_cell_678/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_822/while/lstm_cell_678/Sigmoid_2Sigmoid+lstm_822/while/lstm_cell_678/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_822/while/lstm_cell_678/Relu_1Relu&lstm_822/while/lstm_cell_678/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_822/while/lstm_cell_678/mul_2Mul*lstm_822/while/lstm_cell_678/Sigmoid_2:y:01lstm_822/while/lstm_cell_678/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_822/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_822_while_placeholder_1lstm_822_while_placeholder&lstm_822/while/lstm_cell_678/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_822/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_822/while/addAddV2lstm_822_while_placeholderlstm_822/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_822/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_822/while/add_1AddV2*lstm_822_while_lstm_822_while_loop_counterlstm_822/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_822/while/IdentityIdentitylstm_822/while/add_1:z:0^lstm_822/while/NoOp*
T0*
_output_shapes
: ?
lstm_822/while/Identity_1Identity0lstm_822_while_lstm_822_while_maximum_iterations^lstm_822/while/NoOp*
T0*
_output_shapes
: t
lstm_822/while/Identity_2Identitylstm_822/while/add:z:0^lstm_822/while/NoOp*
T0*
_output_shapes
: ?
lstm_822/while/Identity_3IdentityClstm_822/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_822/while/NoOp*
T0*
_output_shapes
: ?
lstm_822/while/Identity_4Identity&lstm_822/while/lstm_cell_678/mul_2:z:0^lstm_822/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_822/while/Identity_5Identity&lstm_822/while/lstm_cell_678/add_1:z:0^lstm_822/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_822/while/NoOpNoOp4^lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp3^lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp5^lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_822_while_identity lstm_822/while/Identity:output:0"?
lstm_822_while_identity_1"lstm_822/while/Identity_1:output:0"?
lstm_822_while_identity_2"lstm_822/while/Identity_2:output:0"?
lstm_822_while_identity_3"lstm_822/while/Identity_3:output:0"?
lstm_822_while_identity_4"lstm_822/while/Identity_4:output:0"?
lstm_822_while_identity_5"lstm_822/while/Identity_5:output:0"T
'lstm_822_while_lstm_822_strided_slice_1)lstm_822_while_lstm_822_strided_slice_1_0"~
<lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource>lstm_822_while_lstm_cell_678_biasadd_readvariableop_resource_0"?
=lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource?lstm_822_while_lstm_cell_678_matmul_1_readvariableop_resource_0"|
;lstm_822_while_lstm_cell_678_matmul_readvariableop_resource=lstm_822_while_lstm_cell_678_matmul_readvariableop_resource_0"?
clstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensorelstm_822_while_tensorarrayv2read_tensorlistgetitem_lstm_822_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp3lstm_822/while/lstm_cell_678/BiasAdd/ReadVariableOp2h
2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp2lstm_822/while/lstm_cell_678/MatMul/ReadVariableOp2l
4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp4lstm_822/while/lstm_cell_678/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4115864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_679_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_679_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_679_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_679_matmul_readvariableop_resource:	d?G
4while_lstm_cell_679_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_679_biasadd_readvariableop_resource:	???*while/lstm_cell_679/BiasAdd/ReadVariableOp?)while/lstm_cell_679/MatMul/ReadVariableOp?+while/lstm_cell_679/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_679/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_679_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_679/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_679/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_679/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_679_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_679/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_679/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_679/addAddV2$while/lstm_cell_679/MatMul:product:0&while/lstm_cell_679/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_679/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_679_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_679/BiasAddBiasAddwhile/lstm_cell_679/add:z:02while/lstm_cell_679/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_679/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_679/splitSplit,while/lstm_cell_679/split/split_dim:output:0$while/lstm_cell_679/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_679/SigmoidSigmoid"while/lstm_cell_679/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_1Sigmoid"while/lstm_cell_679/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mulMul!while/lstm_cell_679/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_679/ReluRelu"while/lstm_cell_679/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_1Mulwhile/lstm_cell_679/Sigmoid:y:0&while/lstm_cell_679/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/add_1AddV2while/lstm_cell_679/mul:z:0while/lstm_cell_679/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_679/Sigmoid_2Sigmoid"while/lstm_cell_679/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_679/Relu_1Reluwhile/lstm_cell_679/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_679/mul_2Mul!while/lstm_cell_679/Sigmoid_2:y:0(while/lstm_cell_679/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_679/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_679/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_679/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_679/BiasAdd/ReadVariableOp*^while/lstm_cell_679/MatMul/ReadVariableOp,^while/lstm_cell_679/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_679_biasadd_readvariableop_resource5while_lstm_cell_679_biasadd_readvariableop_resource_0"n
4while_lstm_cell_679_matmul_1_readvariableop_resource6while_lstm_cell_679_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_679_matmul_readvariableop_resource4while_lstm_cell_679_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_679/BiasAdd/ReadVariableOp*while/lstm_cell_679/BiasAdd/ReadVariableOp2V
)while/lstm_cell_679/MatMul/ReadVariableOp)while/lstm_cell_679/MatMul/ReadVariableOp2Z
+while/lstm_cell_679/MatMul_1/ReadVariableOp+while/lstm_cell_679/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4119387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4119387___redundant_placeholder05
1while_while_cond_4119387___redundant_placeholder15
1while_while_cond_4119387___redundant_placeholder25
1while_while_cond_4119387___redundant_placeholder3
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
lstm_823_while_cond_4117110.
*lstm_823_while_lstm_823_while_loop_counter4
0lstm_823_while_lstm_823_while_maximum_iterations
lstm_823_while_placeholder 
lstm_823_while_placeholder_1 
lstm_823_while_placeholder_2 
lstm_823_while_placeholder_30
,lstm_823_while_less_lstm_823_strided_slice_1G
Clstm_823_while_lstm_823_while_cond_4117110___redundant_placeholder0G
Clstm_823_while_lstm_823_while_cond_4117110___redundant_placeholder1G
Clstm_823_while_lstm_823_while_cond_4117110___redundant_placeholder2G
Clstm_823_while_lstm_823_while_cond_4117110___redundant_placeholder3
lstm_823_while_identity
?
lstm_823/while/LessLesslstm_823_while_placeholder,lstm_823_while_less_lstm_823_strided_slice_1*
T0*
_output_shapes
: ]
lstm_823/while/IdentityIdentitylstm_823/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_823_while_identity lstm_823/while/Identity:output:0*(
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
/__inference_lstm_cell_678_layer_call_fn_4119651

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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4114666o
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
*__inference_lstm_822_layer_call_fn_4117789
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4114940|
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
while_cond_4118298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4118298___redundant_placeholder05
1while_while_cond_4118298___redundant_placeholder15
1while_while_cond_4118298___redundant_placeholder25
1while_while_cond_4118298___redundant_placeholder3
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
*__inference_lstm_823_layer_call_fn_4118427

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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4116479s
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115099

inputs(
lstm_cell_679_4115017:	d?(
lstm_cell_679_4115019:	2?$
lstm_cell_679_4115021:	?
identity??%lstm_cell_679/StatefulPartitionedCall?while;
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
%lstm_cell_679/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_679_4115017lstm_cell_679_4115019lstm_cell_679_4115021*
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4115016n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_679_4115017lstm_cell_679_4115019lstm_cell_679_4115021*
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
while_body_4115030*
condR
while_cond_4115029*K
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
NoOpNoOp&^lstm_cell_679/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_679/StatefulPartitionedCall%lstm_cell_679/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_823_layer_call_fn_4118405
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4115290|
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
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_822_input;
 serving_default_lstm_822_input:0?????????=
	dense_2740
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

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_274/kernel
:2dense_274/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
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
0:.	?2lstm_822/lstm_cell_822/kernel
::8	d?2'lstm_822/lstm_cell_822/recurrent_kernel
*:(?2lstm_822/lstm_cell_822/bias
0:.	d?2lstm_823/lstm_cell_823/kernel
::8	2?2'lstm_823/lstm_cell_823/recurrent_kernel
*:(?2lstm_823/lstm_cell_823/bias
/:-2(2lstm_824/lstm_cell_824/kernel
9:7
(2'lstm_824/lstm_cell_824/recurrent_kernel
):'(2lstm_824/lstm_cell_824/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ttotal
	ucount
v	variables
w	keras_api"
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
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
':%
2Adam/dense_274/kernel/m
!:2Adam/dense_274/bias/m
5:3	?2$Adam/lstm_822/lstm_cell_822/kernel/m
?:=	d?2.Adam/lstm_822/lstm_cell_822/recurrent_kernel/m
/:-?2"Adam/lstm_822/lstm_cell_822/bias/m
5:3	d?2$Adam/lstm_823/lstm_cell_823/kernel/m
?:=	2?2.Adam/lstm_823/lstm_cell_823/recurrent_kernel/m
/:-?2"Adam/lstm_823/lstm_cell_823/bias/m
4:22(2$Adam/lstm_824/lstm_cell_824/kernel/m
>:<
(2.Adam/lstm_824/lstm_cell_824/recurrent_kernel/m
.:,(2"Adam/lstm_824/lstm_cell_824/bias/m
':%
2Adam/dense_274/kernel/v
!:2Adam/dense_274/bias/v
5:3	?2$Adam/lstm_822/lstm_cell_822/kernel/v
?:=	d?2.Adam/lstm_822/lstm_cell_822/recurrent_kernel/v
/:-?2"Adam/lstm_822/lstm_cell_822/bias/v
5:3	d?2$Adam/lstm_823/lstm_cell_823/kernel/v
?:=	2?2.Adam/lstm_823/lstm_cell_823/recurrent_kernel/v
/:-?2"Adam/lstm_823/lstm_cell_823/bias/v
4:22(2$Adam/lstm_824/lstm_cell_824/kernel/v
>:<
(2.Adam/lstm_824/lstm_cell_824/recurrent_kernel/v
.:,(2"Adam/lstm_824/lstm_cell_824/bias/v
?2?
0__inference_sequential_274_layer_call_fn_4116148
0__inference_sequential_274_layer_call_fn_4116886
0__inference_sequential_274_layer_call_fn_4116913
0__inference_sequential_274_layer_call_fn_4116764?
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4117340
K__inference_sequential_274_layer_call_and_return_conditional_losses_4117767
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116794
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116824?
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
"__inference__wrapped_model_4114599lstm_822_input"?
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
*__inference_lstm_822_layer_call_fn_4117778
*__inference_lstm_822_layer_call_fn_4117789
*__inference_lstm_822_layer_call_fn_4117800
*__inference_lstm_822_layer_call_fn_4117811?
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4117954
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118097
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118240
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118383?
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
*__inference_lstm_823_layer_call_fn_4118394
*__inference_lstm_823_layer_call_fn_4118405
*__inference_lstm_823_layer_call_fn_4118416
*__inference_lstm_823_layer_call_fn_4118427?
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118570
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118713
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118856
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118999?
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
*__inference_lstm_824_layer_call_fn_4119010
*__inference_lstm_824_layer_call_fn_4119021
*__inference_lstm_824_layer_call_fn_4119032
*__inference_lstm_824_layer_call_fn_4119043?
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119186
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119329
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119472
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119615?
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
+__inference_dense_274_layer_call_fn_4119624?
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
F__inference_dense_274_layer_call_and_return_conditional_losses_4119634?
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
%__inference_signature_wrapper_4116859lstm_822_input"?
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
/__inference_lstm_cell_678_layer_call_fn_4119651
/__inference_lstm_cell_678_layer_call_fn_4119668?
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4119700
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4119732?
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
/__inference_lstm_cell_679_layer_call_fn_4119749
/__inference_lstm_cell_679_layer_call_fn_4119766?
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4119798
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4119830?
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
/__inference_lstm_cell_680_layer_call_fn_4119847
/__inference_lstm_cell_680_layer_call_fn_4119864?
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4119896
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4119928?
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
"__inference__wrapped_model_4114599?-./012345!";?8
1?.
,?)
lstm_822_input?????????
? "5?2
0
	dense_274#? 
	dense_274??????????
F__inference_dense_274_layer_call_and_return_conditional_losses_4119634\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_274_layer_call_fn_4119624O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_822_layer_call_and_return_conditional_losses_4117954?-./O?L
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118097?-./O?L
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118240q-./??<
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
E__inference_lstm_822_layer_call_and_return_conditional_losses_4118383q-./??<
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
*__inference_lstm_822_layer_call_fn_4117778}-./O?L
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
*__inference_lstm_822_layer_call_fn_4117789}-./O?L
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
*__inference_lstm_822_layer_call_fn_4117800d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_822_layer_call_fn_4117811d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118570?012O?L
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118713?012O?L
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118856q012??<
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
E__inference_lstm_823_layer_call_and_return_conditional_losses_4118999q012??<
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
*__inference_lstm_823_layer_call_fn_4118394}012O?L
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
*__inference_lstm_823_layer_call_fn_4118405}012O?L
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
*__inference_lstm_823_layer_call_fn_4118416d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_823_layer_call_fn_4118427d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119186}345O?L
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119329}345O?L
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119472m345??<
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
E__inference_lstm_824_layer_call_and_return_conditional_losses_4119615m345??<
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
*__inference_lstm_824_layer_call_fn_4119010p345O?L
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
*__inference_lstm_824_layer_call_fn_4119021p345O?L
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
*__inference_lstm_824_layer_call_fn_4119032`345??<
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
*__inference_lstm_824_layer_call_fn_4119043`345??<
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4119700?-./??}
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
J__inference_lstm_cell_678_layer_call_and_return_conditional_losses_4119732?-./??}
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
/__inference_lstm_cell_678_layer_call_fn_4119651?-./??}
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
/__inference_lstm_cell_678_layer_call_fn_4119668?-./??}
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4119798?012??}
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
J__inference_lstm_cell_679_layer_call_and_return_conditional_losses_4119830?012??}
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
/__inference_lstm_cell_679_layer_call_fn_4119749?012??}
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
/__inference_lstm_cell_679_layer_call_fn_4119766?012??}
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4119896?345??}
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
J__inference_lstm_cell_680_layer_call_and_return_conditional_losses_4119928?345??}
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
/__inference_lstm_cell_680_layer_call_fn_4119847?345??}
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
/__inference_lstm_cell_680_layer_call_fn_4119864?345??}
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116794y-./012345!"C?@
9?6
,?)
lstm_822_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_274_layer_call_and_return_conditional_losses_4116824y-./012345!"C?@
9?6
,?)
lstm_822_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_274_layer_call_and_return_conditional_losses_4117340q-./012345!";?8
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
K__inference_sequential_274_layer_call_and_return_conditional_losses_4117767q-./012345!";?8
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
0__inference_sequential_274_layer_call_fn_4116148l-./012345!"C?@
9?6
,?)
lstm_822_input?????????
p 

 
? "???????????
0__inference_sequential_274_layer_call_fn_4116764l-./012345!"C?@
9?6
,?)
lstm_822_input?????????
p

 
? "???????????
0__inference_sequential_274_layer_call_fn_4116886d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_274_layer_call_fn_4116913d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4116859?-./012345!"M?J
? 
C?@
>
lstm_822_input,?)
lstm_822_input?????????"5?2
0
	dense_274#? 
	dense_274?????????