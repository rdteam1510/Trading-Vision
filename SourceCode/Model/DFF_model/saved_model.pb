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
dense_221/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_221/kernel
u
$dense_221/kernel/Read/ReadVariableOpReadVariableOpdense_221/kernel*
_output_shapes

:
*
dtype0
t
dense_221/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_221/bias
m
"dense_221/bias/Read/ReadVariableOpReadVariableOpdense_221/bias*
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
lstm_663/lstm_cell_663/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_663/lstm_cell_663/kernel
?
1lstm_663/lstm_cell_663/kernel/Read/ReadVariableOpReadVariableOplstm_663/lstm_cell_663/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_663/lstm_cell_663/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_663/lstm_cell_663/recurrent_kernel
?
;lstm_663/lstm_cell_663/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_663/lstm_cell_663/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_663/lstm_cell_663/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_663/lstm_cell_663/bias
?
/lstm_663/lstm_cell_663/bias/Read/ReadVariableOpReadVariableOplstm_663/lstm_cell_663/bias*
_output_shapes	
:?*
dtype0
?
lstm_664/lstm_cell_664/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_664/lstm_cell_664/kernel
?
1lstm_664/lstm_cell_664/kernel/Read/ReadVariableOpReadVariableOplstm_664/lstm_cell_664/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_664/lstm_cell_664/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_664/lstm_cell_664/recurrent_kernel
?
;lstm_664/lstm_cell_664/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_664/lstm_cell_664/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_664/lstm_cell_664/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_664/lstm_cell_664/bias
?
/lstm_664/lstm_cell_664/bias/Read/ReadVariableOpReadVariableOplstm_664/lstm_cell_664/bias*
_output_shapes	
:?*
dtype0
?
lstm_665/lstm_cell_665/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_665/lstm_cell_665/kernel
?
1lstm_665/lstm_cell_665/kernel/Read/ReadVariableOpReadVariableOplstm_665/lstm_cell_665/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_665/lstm_cell_665/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_665/lstm_cell_665/recurrent_kernel
?
;lstm_665/lstm_cell_665/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_665/lstm_cell_665/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_665/lstm_cell_665/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_665/lstm_cell_665/bias
?
/lstm_665/lstm_cell_665/bias/Read/ReadVariableOpReadVariableOplstm_665/lstm_cell_665/bias*
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
Adam/dense_221/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_221/kernel/m
?
+Adam/dense_221/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_221/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_221/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_221/bias/m
{
)Adam/dense_221/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_221/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_663/lstm_cell_663/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_663/lstm_cell_663/kernel/m
?
8Adam/lstm_663/lstm_cell_663/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_663/lstm_cell_663/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_663/lstm_cell_663/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_663/lstm_cell_663/recurrent_kernel/m
?
BAdam/lstm_663/lstm_cell_663/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_663/lstm_cell_663/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_663/lstm_cell_663/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_663/lstm_cell_663/bias/m
?
6Adam/lstm_663/lstm_cell_663/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_663/lstm_cell_663/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_664/lstm_cell_664/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_664/lstm_cell_664/kernel/m
?
8Adam/lstm_664/lstm_cell_664/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_664/lstm_cell_664/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_664/lstm_cell_664/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_664/lstm_cell_664/recurrent_kernel/m
?
BAdam/lstm_664/lstm_cell_664/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_664/lstm_cell_664/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_664/lstm_cell_664/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_664/lstm_cell_664/bias/m
?
6Adam/lstm_664/lstm_cell_664/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_664/lstm_cell_664/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_665/lstm_cell_665/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_665/lstm_cell_665/kernel/m
?
8Adam/lstm_665/lstm_cell_665/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_665/lstm_cell_665/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_665/lstm_cell_665/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_665/lstm_cell_665/recurrent_kernel/m
?
BAdam/lstm_665/lstm_cell_665/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_665/lstm_cell_665/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_665/lstm_cell_665/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_665/lstm_cell_665/bias/m
?
6Adam/lstm_665/lstm_cell_665/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_665/lstm_cell_665/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_221/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_221/kernel/v
?
+Adam/dense_221/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_221/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_221/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_221/bias/v
{
)Adam/dense_221/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_221/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_663/lstm_cell_663/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_663/lstm_cell_663/kernel/v
?
8Adam/lstm_663/lstm_cell_663/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_663/lstm_cell_663/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_663/lstm_cell_663/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_663/lstm_cell_663/recurrent_kernel/v
?
BAdam/lstm_663/lstm_cell_663/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_663/lstm_cell_663/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_663/lstm_cell_663/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_663/lstm_cell_663/bias/v
?
6Adam/lstm_663/lstm_cell_663/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_663/lstm_cell_663/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_664/lstm_cell_664/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_664/lstm_cell_664/kernel/v
?
8Adam/lstm_664/lstm_cell_664/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_664/lstm_cell_664/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_664/lstm_cell_664/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_664/lstm_cell_664/recurrent_kernel/v
?
BAdam/lstm_664/lstm_cell_664/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_664/lstm_cell_664/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_664/lstm_cell_664/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_664/lstm_cell_664/bias/v
?
6Adam/lstm_664/lstm_cell_664/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_664/lstm_cell_664/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_665/lstm_cell_665/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_665/lstm_cell_665/kernel/v
?
8Adam/lstm_665/lstm_cell_665/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_665/lstm_cell_665/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_665/lstm_cell_665/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_665/lstm_cell_665/recurrent_kernel/v
?
BAdam/lstm_665/lstm_cell_665/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_665/lstm_cell_665/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_665/lstm_cell_665/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_665/lstm_cell_665/bias/v
?
6Adam/lstm_665/lstm_cell_665/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_665/lstm_cell_665/bias/v*
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
VARIABLE_VALUEdense_221/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_221/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_663/lstm_cell_663/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_663/lstm_cell_663/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_663/lstm_cell_663/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_664/lstm_cell_664/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_664/lstm_cell_664/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_664/lstm_cell_664/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_665/lstm_cell_665/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_665/lstm_cell_665/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_665/lstm_cell_665/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_221/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_221/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_663/lstm_cell_663/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_663/lstm_cell_663/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_663/lstm_cell_663/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_664/lstm_cell_664/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_664/lstm_cell_664/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_664/lstm_cell_664/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_665/lstm_cell_665/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_665/lstm_cell_665/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_665/lstm_cell_665/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_221/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_221/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_663/lstm_cell_663/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_663/lstm_cell_663/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_663/lstm_cell_663/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_664/lstm_cell_664/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_664/lstm_cell_664/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_664/lstm_cell_664/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_665/lstm_cell_665/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_665/lstm_cell_665/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_665/lstm_cell_665/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_663_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_663_inputlstm_663/lstm_cell_663/kernel'lstm_663/lstm_cell_663/recurrent_kernellstm_663/lstm_cell_663/biaslstm_664/lstm_cell_664/kernel'lstm_664/lstm_cell_664/recurrent_kernellstm_664/lstm_cell_664/biaslstm_665/lstm_cell_665/kernel'lstm_665/lstm_cell_665/recurrent_kernellstm_665/lstm_cell_665/biasdense_221/kerneldense_221/bias*
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
%__inference_signature_wrapper_4243237
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_221/kernel/Read/ReadVariableOp"dense_221/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_663/lstm_cell_663/kernel/Read/ReadVariableOp;lstm_663/lstm_cell_663/recurrent_kernel/Read/ReadVariableOp/lstm_663/lstm_cell_663/bias/Read/ReadVariableOp1lstm_664/lstm_cell_664/kernel/Read/ReadVariableOp;lstm_664/lstm_cell_664/recurrent_kernel/Read/ReadVariableOp/lstm_664/lstm_cell_664/bias/Read/ReadVariableOp1lstm_665/lstm_cell_665/kernel/Read/ReadVariableOp;lstm_665/lstm_cell_665/recurrent_kernel/Read/ReadVariableOp/lstm_665/lstm_cell_665/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_221/kernel/m/Read/ReadVariableOp)Adam/dense_221/bias/m/Read/ReadVariableOp8Adam/lstm_663/lstm_cell_663/kernel/m/Read/ReadVariableOpBAdam/lstm_663/lstm_cell_663/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_663/lstm_cell_663/bias/m/Read/ReadVariableOp8Adam/lstm_664/lstm_cell_664/kernel/m/Read/ReadVariableOpBAdam/lstm_664/lstm_cell_664/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_664/lstm_cell_664/bias/m/Read/ReadVariableOp8Adam/lstm_665/lstm_cell_665/kernel/m/Read/ReadVariableOpBAdam/lstm_665/lstm_cell_665/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_665/lstm_cell_665/bias/m/Read/ReadVariableOp+Adam/dense_221/kernel/v/Read/ReadVariableOp)Adam/dense_221/bias/v/Read/ReadVariableOp8Adam/lstm_663/lstm_cell_663/kernel/v/Read/ReadVariableOpBAdam/lstm_663/lstm_cell_663/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_663/lstm_cell_663/bias/v/Read/ReadVariableOp8Adam/lstm_664/lstm_cell_664/kernel/v/Read/ReadVariableOpBAdam/lstm_664/lstm_cell_664/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_664/lstm_cell_664/bias/v/Read/ReadVariableOp8Adam/lstm_665/lstm_cell_665/kernel/v/Read/ReadVariableOpBAdam/lstm_665/lstm_cell_665/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_665/lstm_cell_665/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4246449
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_221/kerneldense_221/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_663/lstm_cell_663/kernel'lstm_663/lstm_cell_663/recurrent_kernellstm_663/lstm_cell_663/biaslstm_664/lstm_cell_664/kernel'lstm_664/lstm_cell_664/recurrent_kernellstm_664/lstm_cell_664/biaslstm_665/lstm_cell_665/kernel'lstm_665/lstm_cell_665/recurrent_kernellstm_665/lstm_cell_665/biastotalcountAdam/dense_221/kernel/mAdam/dense_221/bias/m$Adam/lstm_663/lstm_cell_663/kernel/m.Adam/lstm_663/lstm_cell_663/recurrent_kernel/m"Adam/lstm_663/lstm_cell_663/bias/m$Adam/lstm_664/lstm_cell_664/kernel/m.Adam/lstm_664/lstm_cell_664/recurrent_kernel/m"Adam/lstm_664/lstm_cell_664/bias/m$Adam/lstm_665/lstm_cell_665/kernel/m.Adam/lstm_665/lstm_cell_665/recurrent_kernel/m"Adam/lstm_665/lstm_cell_665/bias/mAdam/dense_221/kernel/vAdam/dense_221/bias/v$Adam/lstm_663/lstm_cell_663/kernel/v.Adam/lstm_663/lstm_cell_663/recurrent_kernel/v"Adam/lstm_663/lstm_cell_663/bias/v$Adam/lstm_664/lstm_cell_664/kernel/v.Adam/lstm_664/lstm_cell_664/recurrent_kernel/v"Adam/lstm_664/lstm_cell_664/bias/v$Adam/lstm_665/lstm_cell_665/kernel/v.Adam/lstm_665/lstm_cell_665/recurrent_kernel/v"Adam/lstm_665/lstm_cell_665/bias/v*4
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
#__inference__traced_restore_4246579??+
?
?
while_cond_4245765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245765___redundant_placeholder05
1while_while_cond_4245765___redundant_placeholder15
1while_while_cond_4245765___redundant_placeholder25
1while_while_cond_4245765___redundant_placeholder3
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
/__inference_lstm_cell_699_layer_call_fn_4246029

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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241044o
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
?T
?
*sequential_221_lstm_664_while_body_4240748L
Hsequential_221_lstm_664_while_sequential_221_lstm_664_while_loop_counterR
Nsequential_221_lstm_664_while_sequential_221_lstm_664_while_maximum_iterations-
)sequential_221_lstm_664_while_placeholder/
+sequential_221_lstm_664_while_placeholder_1/
+sequential_221_lstm_664_while_placeholder_2/
+sequential_221_lstm_664_while_placeholder_3K
Gsequential_221_lstm_664_while_sequential_221_lstm_664_strided_slice_1_0?
?sequential_221_lstm_664_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_664_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_221_lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0:	d?a
Nsequential_221_lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?\
Msequential_221_lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0:	?*
&sequential_221_lstm_664_while_identity,
(sequential_221_lstm_664_while_identity_1,
(sequential_221_lstm_664_while_identity_2,
(sequential_221_lstm_664_while_identity_3,
(sequential_221_lstm_664_while_identity_4,
(sequential_221_lstm_664_while_identity_5I
Esequential_221_lstm_664_while_sequential_221_lstm_664_strided_slice_1?
?sequential_221_lstm_664_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_664_tensorarrayunstack_tensorlistfromtensor]
Jsequential_221_lstm_664_while_lstm_cell_700_matmul_readvariableop_resource:	d?_
Lsequential_221_lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource:	2?Z
Ksequential_221_lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource:	???Bsequential_221/lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp?Asequential_221/lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp?Csequential_221/lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp?
Osequential_221/lstm_664/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_221/lstm_664/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_221_lstm_664_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_664_tensorarrayunstack_tensorlistfromtensor_0)sequential_221_lstm_664_while_placeholderXsequential_221/lstm_664/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_221/lstm_664/while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOpLsequential_221_lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_221/lstm_664/while/lstm_cell_700/MatMulMatMulHsequential_221/lstm_664/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_221/lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_221/lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOpNsequential_221_lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_221/lstm_664/while/lstm_cell_700/MatMul_1MatMul+sequential_221_lstm_664_while_placeholder_2Ksequential_221/lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_221/lstm_664/while/lstm_cell_700/addAddV2<sequential_221/lstm_664/while/lstm_cell_700/MatMul:product:0>sequential_221/lstm_664/while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_221/lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOpMsequential_221_lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_221/lstm_664/while/lstm_cell_700/BiasAddBiasAdd3sequential_221/lstm_664/while/lstm_cell_700/add:z:0Jsequential_221/lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_221/lstm_664/while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_221/lstm_664/while/lstm_cell_700/splitSplitDsequential_221/lstm_664/while/lstm_cell_700/split/split_dim:output:0<sequential_221/lstm_664/while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_221/lstm_664/while/lstm_cell_700/SigmoidSigmoid:sequential_221/lstm_664/while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_221/lstm_664/while/lstm_cell_700/Sigmoid_1Sigmoid:sequential_221/lstm_664/while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_221/lstm_664/while/lstm_cell_700/mulMul9sequential_221/lstm_664/while/lstm_cell_700/Sigmoid_1:y:0+sequential_221_lstm_664_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_221/lstm_664/while/lstm_cell_700/ReluRelu:sequential_221/lstm_664/while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_221/lstm_664/while/lstm_cell_700/mul_1Mul7sequential_221/lstm_664/while/lstm_cell_700/Sigmoid:y:0>sequential_221/lstm_664/while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_221/lstm_664/while/lstm_cell_700/add_1AddV23sequential_221/lstm_664/while/lstm_cell_700/mul:z:05sequential_221/lstm_664/while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_221/lstm_664/while/lstm_cell_700/Sigmoid_2Sigmoid:sequential_221/lstm_664/while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_221/lstm_664/while/lstm_cell_700/Relu_1Relu5sequential_221/lstm_664/while/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_221/lstm_664/while/lstm_cell_700/mul_2Mul9sequential_221/lstm_664/while/lstm_cell_700/Sigmoid_2:y:0@sequential_221/lstm_664/while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_221/lstm_664/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_221_lstm_664_while_placeholder_1)sequential_221_lstm_664_while_placeholder5sequential_221/lstm_664/while/lstm_cell_700/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_221/lstm_664/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_221/lstm_664/while/addAddV2)sequential_221_lstm_664_while_placeholder,sequential_221/lstm_664/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_221/lstm_664/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_221/lstm_664/while/add_1AddV2Hsequential_221_lstm_664_while_sequential_221_lstm_664_while_loop_counter.sequential_221/lstm_664/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_221/lstm_664/while/IdentityIdentity'sequential_221/lstm_664/while/add_1:z:0#^sequential_221/lstm_664/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_664/while/Identity_1IdentityNsequential_221_lstm_664_while_sequential_221_lstm_664_while_maximum_iterations#^sequential_221/lstm_664/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_664/while/Identity_2Identity%sequential_221/lstm_664/while/add:z:0#^sequential_221/lstm_664/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_664/while/Identity_3IdentityRsequential_221/lstm_664/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_221/lstm_664/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_664/while/Identity_4Identity5sequential_221/lstm_664/while/lstm_cell_700/mul_2:z:0#^sequential_221/lstm_664/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_221/lstm_664/while/Identity_5Identity5sequential_221/lstm_664/while/lstm_cell_700/add_1:z:0#^sequential_221/lstm_664/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_221/lstm_664/while/NoOpNoOpC^sequential_221/lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOpB^sequential_221/lstm_664/while/lstm_cell_700/MatMul/ReadVariableOpD^sequential_221/lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_221_lstm_664_while_identity/sequential_221/lstm_664/while/Identity:output:0"]
(sequential_221_lstm_664_while_identity_11sequential_221/lstm_664/while/Identity_1:output:0"]
(sequential_221_lstm_664_while_identity_21sequential_221/lstm_664/while/Identity_2:output:0"]
(sequential_221_lstm_664_while_identity_31sequential_221/lstm_664/while/Identity_3:output:0"]
(sequential_221_lstm_664_while_identity_41sequential_221/lstm_664/while/Identity_4:output:0"]
(sequential_221_lstm_664_while_identity_51sequential_221/lstm_664/while/Identity_5:output:0"?
Ksequential_221_lstm_664_while_lstm_cell_700_biasadd_readvariableop_resourceMsequential_221_lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0"?
Lsequential_221_lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resourceNsequential_221_lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0"?
Jsequential_221_lstm_664_while_lstm_cell_700_matmul_readvariableop_resourceLsequential_221_lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0"?
Esequential_221_lstm_664_while_sequential_221_lstm_664_strided_slice_1Gsequential_221_lstm_664_while_sequential_221_lstm_664_strided_slice_1_0"?
?sequential_221_lstm_664_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_664_tensorarrayunstack_tensorlistfromtensor?sequential_221_lstm_664_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_664_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_221/lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOpBsequential_221/lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp2?
Asequential_221/lstm_664/while/lstm_cell_700/MatMul/ReadVariableOpAsequential_221/lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp2?
Csequential_221/lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOpCsequential_221/lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_4246449
file_prefix/
+savev2_dense_221_kernel_read_readvariableop-
)savev2_dense_221_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_663_lstm_cell_663_kernel_read_readvariableopF
Bsavev2_lstm_663_lstm_cell_663_recurrent_kernel_read_readvariableop:
6savev2_lstm_663_lstm_cell_663_bias_read_readvariableop<
8savev2_lstm_664_lstm_cell_664_kernel_read_readvariableopF
Bsavev2_lstm_664_lstm_cell_664_recurrent_kernel_read_readvariableop:
6savev2_lstm_664_lstm_cell_664_bias_read_readvariableop<
8savev2_lstm_665_lstm_cell_665_kernel_read_readvariableopF
Bsavev2_lstm_665_lstm_cell_665_recurrent_kernel_read_readvariableop:
6savev2_lstm_665_lstm_cell_665_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_221_kernel_m_read_readvariableop4
0savev2_adam_dense_221_bias_m_read_readvariableopC
?savev2_adam_lstm_663_lstm_cell_663_kernel_m_read_readvariableopM
Isavev2_adam_lstm_663_lstm_cell_663_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_663_lstm_cell_663_bias_m_read_readvariableopC
?savev2_adam_lstm_664_lstm_cell_664_kernel_m_read_readvariableopM
Isavev2_adam_lstm_664_lstm_cell_664_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_664_lstm_cell_664_bias_m_read_readvariableopC
?savev2_adam_lstm_665_lstm_cell_665_kernel_m_read_readvariableopM
Isavev2_adam_lstm_665_lstm_cell_665_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_665_lstm_cell_665_bias_m_read_readvariableop6
2savev2_adam_dense_221_kernel_v_read_readvariableop4
0savev2_adam_dense_221_bias_v_read_readvariableopC
?savev2_adam_lstm_663_lstm_cell_663_kernel_v_read_readvariableopM
Isavev2_adam_lstm_663_lstm_cell_663_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_663_lstm_cell_663_bias_v_read_readvariableopC
?savev2_adam_lstm_664_lstm_cell_664_kernel_v_read_readvariableopM
Isavev2_adam_lstm_664_lstm_cell_664_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_664_lstm_cell_664_bias_v_read_readvariableopC
?savev2_adam_lstm_665_lstm_cell_665_kernel_v_read_readvariableopM
Isavev2_adam_lstm_665_lstm_cell_665_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_665_lstm_cell_665_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_221_kernel_read_readvariableop)savev2_dense_221_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_663_lstm_cell_663_kernel_read_readvariableopBsavev2_lstm_663_lstm_cell_663_recurrent_kernel_read_readvariableop6savev2_lstm_663_lstm_cell_663_bias_read_readvariableop8savev2_lstm_664_lstm_cell_664_kernel_read_readvariableopBsavev2_lstm_664_lstm_cell_664_recurrent_kernel_read_readvariableop6savev2_lstm_664_lstm_cell_664_bias_read_readvariableop8savev2_lstm_665_lstm_cell_665_kernel_read_readvariableopBsavev2_lstm_665_lstm_cell_665_recurrent_kernel_read_readvariableop6savev2_lstm_665_lstm_cell_665_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_221_kernel_m_read_readvariableop0savev2_adam_dense_221_bias_m_read_readvariableop?savev2_adam_lstm_663_lstm_cell_663_kernel_m_read_readvariableopIsavev2_adam_lstm_663_lstm_cell_663_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_663_lstm_cell_663_bias_m_read_readvariableop?savev2_adam_lstm_664_lstm_cell_664_kernel_m_read_readvariableopIsavev2_adam_lstm_664_lstm_cell_664_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_664_lstm_cell_664_bias_m_read_readvariableop?savev2_adam_lstm_665_lstm_cell_665_kernel_m_read_readvariableopIsavev2_adam_lstm_665_lstm_cell_665_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_665_lstm_cell_665_bias_m_read_readvariableop2savev2_adam_dense_221_kernel_v_read_readvariableop0savev2_adam_dense_221_bias_v_read_readvariableop?savev2_adam_lstm_663_lstm_cell_663_kernel_v_read_readvariableopIsavev2_adam_lstm_663_lstm_cell_663_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_663_lstm_cell_663_bias_v_read_readvariableop?savev2_adam_lstm_664_lstm_cell_664_kernel_v_read_readvariableopIsavev2_adam_lstm_664_lstm_cell_664_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_664_lstm_cell_664_bias_v_read_readvariableop?savev2_adam_lstm_665_lstm_cell_665_kernel_v_read_readvariableopIsavev2_adam_lstm_665_lstm_cell_665_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_665_lstm_cell_665_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4245292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245292___redundant_placeholder05
1while_while_cond_4245292___redundant_placeholder15
1while_while_cond_4245292___redundant_placeholder25
1while_while_cond_4245292___redundant_placeholder3
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
"__inference__wrapped_model_4240977
lstm_663_inputW
Dsequential_221_lstm_663_lstm_cell_699_matmul_readvariableop_resource:	?Y
Fsequential_221_lstm_663_lstm_cell_699_matmul_1_readvariableop_resource:	d?T
Esequential_221_lstm_663_lstm_cell_699_biasadd_readvariableop_resource:	?W
Dsequential_221_lstm_664_lstm_cell_700_matmul_readvariableop_resource:	d?Y
Fsequential_221_lstm_664_lstm_cell_700_matmul_1_readvariableop_resource:	2?T
Esequential_221_lstm_664_lstm_cell_700_biasadd_readvariableop_resource:	?V
Dsequential_221_lstm_665_lstm_cell_701_matmul_readvariableop_resource:2(X
Fsequential_221_lstm_665_lstm_cell_701_matmul_1_readvariableop_resource:
(S
Esequential_221_lstm_665_lstm_cell_701_biasadd_readvariableop_resource:(I
7sequential_221_dense_221_matmul_readvariableop_resource:
F
8sequential_221_dense_221_biasadd_readvariableop_resource:
identity??/sequential_221/dense_221/BiasAdd/ReadVariableOp?.sequential_221/dense_221/MatMul/ReadVariableOp?<sequential_221/lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp?;sequential_221/lstm_663/lstm_cell_699/MatMul/ReadVariableOp?=sequential_221/lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp?sequential_221/lstm_663/while?<sequential_221/lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp?;sequential_221/lstm_664/lstm_cell_700/MatMul/ReadVariableOp?=sequential_221/lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp?sequential_221/lstm_664/while?<sequential_221/lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp?;sequential_221/lstm_665/lstm_cell_701/MatMul/ReadVariableOp?=sequential_221/lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp?sequential_221/lstm_665/while[
sequential_221/lstm_663/ShapeShapelstm_663_input*
T0*
_output_shapes
:u
+sequential_221/lstm_663/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_221/lstm_663/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_221/lstm_663/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_221/lstm_663/strided_sliceStridedSlice&sequential_221/lstm_663/Shape:output:04sequential_221/lstm_663/strided_slice/stack:output:06sequential_221/lstm_663/strided_slice/stack_1:output:06sequential_221/lstm_663/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_221/lstm_663/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_221/lstm_663/zeros/packedPack.sequential_221/lstm_663/strided_slice:output:0/sequential_221/lstm_663/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_221/lstm_663/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_221/lstm_663/zerosFill-sequential_221/lstm_663/zeros/packed:output:0,sequential_221/lstm_663/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_221/lstm_663/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_221/lstm_663/zeros_1/packedPack.sequential_221/lstm_663/strided_slice:output:01sequential_221/lstm_663/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_221/lstm_663/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_221/lstm_663/zeros_1Fill/sequential_221/lstm_663/zeros_1/packed:output:0.sequential_221/lstm_663/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_221/lstm_663/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_221/lstm_663/transpose	Transposelstm_663_input/sequential_221/lstm_663/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_221/lstm_663/Shape_1Shape%sequential_221/lstm_663/transpose:y:0*
T0*
_output_shapes
:w
-sequential_221/lstm_663/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_663/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_221/lstm_663/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_663/strided_slice_1StridedSlice(sequential_221/lstm_663/Shape_1:output:06sequential_221/lstm_663/strided_slice_1/stack:output:08sequential_221/lstm_663/strided_slice_1/stack_1:output:08sequential_221/lstm_663/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_221/lstm_663/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_221/lstm_663/TensorArrayV2TensorListReserve<sequential_221/lstm_663/TensorArrayV2/element_shape:output:00sequential_221/lstm_663/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_221/lstm_663/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_221/lstm_663/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_221/lstm_663/transpose:y:0Vsequential_221/lstm_663/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_221/lstm_663/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_663/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_221/lstm_663/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_663/strided_slice_2StridedSlice%sequential_221/lstm_663/transpose:y:06sequential_221/lstm_663/strided_slice_2/stack:output:08sequential_221/lstm_663/strided_slice_2/stack_1:output:08sequential_221/lstm_663/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_221/lstm_663/lstm_cell_699/MatMul/ReadVariableOpReadVariableOpDsequential_221_lstm_663_lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_221/lstm_663/lstm_cell_699/MatMulMatMul0sequential_221/lstm_663/strided_slice_2:output:0Csequential_221/lstm_663/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_221/lstm_663/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOpFsequential_221_lstm_663_lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_221/lstm_663/lstm_cell_699/MatMul_1MatMul&sequential_221/lstm_663/zeros:output:0Esequential_221/lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_221/lstm_663/lstm_cell_699/addAddV26sequential_221/lstm_663/lstm_cell_699/MatMul:product:08sequential_221/lstm_663/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_221/lstm_663/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOpEsequential_221_lstm_663_lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_221/lstm_663/lstm_cell_699/BiasAddBiasAdd-sequential_221/lstm_663/lstm_cell_699/add:z:0Dsequential_221/lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_221/lstm_663/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_221/lstm_663/lstm_cell_699/splitSplit>sequential_221/lstm_663/lstm_cell_699/split/split_dim:output:06sequential_221/lstm_663/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_221/lstm_663/lstm_cell_699/SigmoidSigmoid4sequential_221/lstm_663/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_221/lstm_663/lstm_cell_699/Sigmoid_1Sigmoid4sequential_221/lstm_663/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_221/lstm_663/lstm_cell_699/mulMul3sequential_221/lstm_663/lstm_cell_699/Sigmoid_1:y:0(sequential_221/lstm_663/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_221/lstm_663/lstm_cell_699/ReluRelu4sequential_221/lstm_663/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_221/lstm_663/lstm_cell_699/mul_1Mul1sequential_221/lstm_663/lstm_cell_699/Sigmoid:y:08sequential_221/lstm_663/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_221/lstm_663/lstm_cell_699/add_1AddV2-sequential_221/lstm_663/lstm_cell_699/mul:z:0/sequential_221/lstm_663/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_221/lstm_663/lstm_cell_699/Sigmoid_2Sigmoid4sequential_221/lstm_663/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_221/lstm_663/lstm_cell_699/Relu_1Relu/sequential_221/lstm_663/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_221/lstm_663/lstm_cell_699/mul_2Mul3sequential_221/lstm_663/lstm_cell_699/Sigmoid_2:y:0:sequential_221/lstm_663/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_221/lstm_663/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_221/lstm_663/TensorArrayV2_1TensorListReserve>sequential_221/lstm_663/TensorArrayV2_1/element_shape:output:00sequential_221/lstm_663/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_221/lstm_663/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_221/lstm_663/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_221/lstm_663/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_221/lstm_663/whileWhile3sequential_221/lstm_663/while/loop_counter:output:09sequential_221/lstm_663/while/maximum_iterations:output:0%sequential_221/lstm_663/time:output:00sequential_221/lstm_663/TensorArrayV2_1:handle:0&sequential_221/lstm_663/zeros:output:0(sequential_221/lstm_663/zeros_1:output:00sequential_221/lstm_663/strided_slice_1:output:0Osequential_221/lstm_663/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_221_lstm_663_lstm_cell_699_matmul_readvariableop_resourceFsequential_221_lstm_663_lstm_cell_699_matmul_1_readvariableop_resourceEsequential_221_lstm_663_lstm_cell_699_biasadd_readvariableop_resource*
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
*sequential_221_lstm_663_while_body_4240609*6
cond.R,
*sequential_221_lstm_663_while_cond_4240608*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_221/lstm_663/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_221/lstm_663/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_221/lstm_663/while:output:3Qsequential_221/lstm_663/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_221/lstm_663/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_221/lstm_663/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_663/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_663/strided_slice_3StridedSliceCsequential_221/lstm_663/TensorArrayV2Stack/TensorListStack:tensor:06sequential_221/lstm_663/strided_slice_3/stack:output:08sequential_221/lstm_663/strided_slice_3/stack_1:output:08sequential_221/lstm_663/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_221/lstm_663/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_221/lstm_663/transpose_1	TransposeCsequential_221/lstm_663/TensorArrayV2Stack/TensorListStack:tensor:01sequential_221/lstm_663/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_221/lstm_663/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_221/lstm_664/ShapeShape'sequential_221/lstm_663/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_221/lstm_664/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_221/lstm_664/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_221/lstm_664/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_221/lstm_664/strided_sliceStridedSlice&sequential_221/lstm_664/Shape:output:04sequential_221/lstm_664/strided_slice/stack:output:06sequential_221/lstm_664/strided_slice/stack_1:output:06sequential_221/lstm_664/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_221/lstm_664/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_221/lstm_664/zeros/packedPack.sequential_221/lstm_664/strided_slice:output:0/sequential_221/lstm_664/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_221/lstm_664/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_221/lstm_664/zerosFill-sequential_221/lstm_664/zeros/packed:output:0,sequential_221/lstm_664/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_221/lstm_664/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_221/lstm_664/zeros_1/packedPack.sequential_221/lstm_664/strided_slice:output:01sequential_221/lstm_664/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_221/lstm_664/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_221/lstm_664/zeros_1Fill/sequential_221/lstm_664/zeros_1/packed:output:0.sequential_221/lstm_664/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_221/lstm_664/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_221/lstm_664/transpose	Transpose'sequential_221/lstm_663/transpose_1:y:0/sequential_221/lstm_664/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_221/lstm_664/Shape_1Shape%sequential_221/lstm_664/transpose:y:0*
T0*
_output_shapes
:w
-sequential_221/lstm_664/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_664/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_221/lstm_664/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_664/strided_slice_1StridedSlice(sequential_221/lstm_664/Shape_1:output:06sequential_221/lstm_664/strided_slice_1/stack:output:08sequential_221/lstm_664/strided_slice_1/stack_1:output:08sequential_221/lstm_664/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_221/lstm_664/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_221/lstm_664/TensorArrayV2TensorListReserve<sequential_221/lstm_664/TensorArrayV2/element_shape:output:00sequential_221/lstm_664/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_221/lstm_664/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_221/lstm_664/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_221/lstm_664/transpose:y:0Vsequential_221/lstm_664/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_221/lstm_664/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_664/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_221/lstm_664/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_664/strided_slice_2StridedSlice%sequential_221/lstm_664/transpose:y:06sequential_221/lstm_664/strided_slice_2/stack:output:08sequential_221/lstm_664/strided_slice_2/stack_1:output:08sequential_221/lstm_664/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_221/lstm_664/lstm_cell_700/MatMul/ReadVariableOpReadVariableOpDsequential_221_lstm_664_lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_221/lstm_664/lstm_cell_700/MatMulMatMul0sequential_221/lstm_664/strided_slice_2:output:0Csequential_221/lstm_664/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_221/lstm_664/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOpFsequential_221_lstm_664_lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_221/lstm_664/lstm_cell_700/MatMul_1MatMul&sequential_221/lstm_664/zeros:output:0Esequential_221/lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_221/lstm_664/lstm_cell_700/addAddV26sequential_221/lstm_664/lstm_cell_700/MatMul:product:08sequential_221/lstm_664/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_221/lstm_664/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOpEsequential_221_lstm_664_lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_221/lstm_664/lstm_cell_700/BiasAddBiasAdd-sequential_221/lstm_664/lstm_cell_700/add:z:0Dsequential_221/lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_221/lstm_664/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_221/lstm_664/lstm_cell_700/splitSplit>sequential_221/lstm_664/lstm_cell_700/split/split_dim:output:06sequential_221/lstm_664/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_221/lstm_664/lstm_cell_700/SigmoidSigmoid4sequential_221/lstm_664/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_221/lstm_664/lstm_cell_700/Sigmoid_1Sigmoid4sequential_221/lstm_664/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_221/lstm_664/lstm_cell_700/mulMul3sequential_221/lstm_664/lstm_cell_700/Sigmoid_1:y:0(sequential_221/lstm_664/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_221/lstm_664/lstm_cell_700/ReluRelu4sequential_221/lstm_664/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_221/lstm_664/lstm_cell_700/mul_1Mul1sequential_221/lstm_664/lstm_cell_700/Sigmoid:y:08sequential_221/lstm_664/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_221/lstm_664/lstm_cell_700/add_1AddV2-sequential_221/lstm_664/lstm_cell_700/mul:z:0/sequential_221/lstm_664/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_221/lstm_664/lstm_cell_700/Sigmoid_2Sigmoid4sequential_221/lstm_664/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_221/lstm_664/lstm_cell_700/Relu_1Relu/sequential_221/lstm_664/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_221/lstm_664/lstm_cell_700/mul_2Mul3sequential_221/lstm_664/lstm_cell_700/Sigmoid_2:y:0:sequential_221/lstm_664/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_221/lstm_664/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_221/lstm_664/TensorArrayV2_1TensorListReserve>sequential_221/lstm_664/TensorArrayV2_1/element_shape:output:00sequential_221/lstm_664/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_221/lstm_664/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_221/lstm_664/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_221/lstm_664/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_221/lstm_664/whileWhile3sequential_221/lstm_664/while/loop_counter:output:09sequential_221/lstm_664/while/maximum_iterations:output:0%sequential_221/lstm_664/time:output:00sequential_221/lstm_664/TensorArrayV2_1:handle:0&sequential_221/lstm_664/zeros:output:0(sequential_221/lstm_664/zeros_1:output:00sequential_221/lstm_664/strided_slice_1:output:0Osequential_221/lstm_664/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_221_lstm_664_lstm_cell_700_matmul_readvariableop_resourceFsequential_221_lstm_664_lstm_cell_700_matmul_1_readvariableop_resourceEsequential_221_lstm_664_lstm_cell_700_biasadd_readvariableop_resource*
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
*sequential_221_lstm_664_while_body_4240748*6
cond.R,
*sequential_221_lstm_664_while_cond_4240747*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_221/lstm_664/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_221/lstm_664/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_221/lstm_664/while:output:3Qsequential_221/lstm_664/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_221/lstm_664/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_221/lstm_664/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_664/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_664/strided_slice_3StridedSliceCsequential_221/lstm_664/TensorArrayV2Stack/TensorListStack:tensor:06sequential_221/lstm_664/strided_slice_3/stack:output:08sequential_221/lstm_664/strided_slice_3/stack_1:output:08sequential_221/lstm_664/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_221/lstm_664/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_221/lstm_664/transpose_1	TransposeCsequential_221/lstm_664/TensorArrayV2Stack/TensorListStack:tensor:01sequential_221/lstm_664/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_221/lstm_664/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_221/lstm_665/ShapeShape'sequential_221/lstm_664/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_221/lstm_665/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_221/lstm_665/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_221/lstm_665/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_221/lstm_665/strided_sliceStridedSlice&sequential_221/lstm_665/Shape:output:04sequential_221/lstm_665/strided_slice/stack:output:06sequential_221/lstm_665/strided_slice/stack_1:output:06sequential_221/lstm_665/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_221/lstm_665/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_221/lstm_665/zeros/packedPack.sequential_221/lstm_665/strided_slice:output:0/sequential_221/lstm_665/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_221/lstm_665/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_221/lstm_665/zerosFill-sequential_221/lstm_665/zeros/packed:output:0,sequential_221/lstm_665/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_221/lstm_665/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_221/lstm_665/zeros_1/packedPack.sequential_221/lstm_665/strided_slice:output:01sequential_221/lstm_665/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_221/lstm_665/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_221/lstm_665/zeros_1Fill/sequential_221/lstm_665/zeros_1/packed:output:0.sequential_221/lstm_665/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_221/lstm_665/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_221/lstm_665/transpose	Transpose'sequential_221/lstm_664/transpose_1:y:0/sequential_221/lstm_665/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_221/lstm_665/Shape_1Shape%sequential_221/lstm_665/transpose:y:0*
T0*
_output_shapes
:w
-sequential_221/lstm_665/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_665/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_221/lstm_665/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_665/strided_slice_1StridedSlice(sequential_221/lstm_665/Shape_1:output:06sequential_221/lstm_665/strided_slice_1/stack:output:08sequential_221/lstm_665/strided_slice_1/stack_1:output:08sequential_221/lstm_665/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_221/lstm_665/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_221/lstm_665/TensorArrayV2TensorListReserve<sequential_221/lstm_665/TensorArrayV2/element_shape:output:00sequential_221/lstm_665/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_221/lstm_665/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_221/lstm_665/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_221/lstm_665/transpose:y:0Vsequential_221/lstm_665/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_221/lstm_665/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_665/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_221/lstm_665/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_665/strided_slice_2StridedSlice%sequential_221/lstm_665/transpose:y:06sequential_221/lstm_665/strided_slice_2/stack:output:08sequential_221/lstm_665/strided_slice_2/stack_1:output:08sequential_221/lstm_665/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_221/lstm_665/lstm_cell_701/MatMul/ReadVariableOpReadVariableOpDsequential_221_lstm_665_lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_221/lstm_665/lstm_cell_701/MatMulMatMul0sequential_221/lstm_665/strided_slice_2:output:0Csequential_221/lstm_665/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_221/lstm_665/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOpFsequential_221_lstm_665_lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_221/lstm_665/lstm_cell_701/MatMul_1MatMul&sequential_221/lstm_665/zeros:output:0Esequential_221/lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_221/lstm_665/lstm_cell_701/addAddV26sequential_221/lstm_665/lstm_cell_701/MatMul:product:08sequential_221/lstm_665/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_221/lstm_665/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOpEsequential_221_lstm_665_lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_221/lstm_665/lstm_cell_701/BiasAddBiasAdd-sequential_221/lstm_665/lstm_cell_701/add:z:0Dsequential_221/lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_221/lstm_665/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_221/lstm_665/lstm_cell_701/splitSplit>sequential_221/lstm_665/lstm_cell_701/split/split_dim:output:06sequential_221/lstm_665/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_221/lstm_665/lstm_cell_701/SigmoidSigmoid4sequential_221/lstm_665/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_221/lstm_665/lstm_cell_701/Sigmoid_1Sigmoid4sequential_221/lstm_665/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_221/lstm_665/lstm_cell_701/mulMul3sequential_221/lstm_665/lstm_cell_701/Sigmoid_1:y:0(sequential_221/lstm_665/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_221/lstm_665/lstm_cell_701/ReluRelu4sequential_221/lstm_665/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_221/lstm_665/lstm_cell_701/mul_1Mul1sequential_221/lstm_665/lstm_cell_701/Sigmoid:y:08sequential_221/lstm_665/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_221/lstm_665/lstm_cell_701/add_1AddV2-sequential_221/lstm_665/lstm_cell_701/mul:z:0/sequential_221/lstm_665/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_221/lstm_665/lstm_cell_701/Sigmoid_2Sigmoid4sequential_221/lstm_665/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_221/lstm_665/lstm_cell_701/Relu_1Relu/sequential_221/lstm_665/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_221/lstm_665/lstm_cell_701/mul_2Mul3sequential_221/lstm_665/lstm_cell_701/Sigmoid_2:y:0:sequential_221/lstm_665/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_221/lstm_665/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_221/lstm_665/TensorArrayV2_1TensorListReserve>sequential_221/lstm_665/TensorArrayV2_1/element_shape:output:00sequential_221/lstm_665/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_221/lstm_665/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_221/lstm_665/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_221/lstm_665/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_221/lstm_665/whileWhile3sequential_221/lstm_665/while/loop_counter:output:09sequential_221/lstm_665/while/maximum_iterations:output:0%sequential_221/lstm_665/time:output:00sequential_221/lstm_665/TensorArrayV2_1:handle:0&sequential_221/lstm_665/zeros:output:0(sequential_221/lstm_665/zeros_1:output:00sequential_221/lstm_665/strided_slice_1:output:0Osequential_221/lstm_665/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_221_lstm_665_lstm_cell_701_matmul_readvariableop_resourceFsequential_221_lstm_665_lstm_cell_701_matmul_1_readvariableop_resourceEsequential_221_lstm_665_lstm_cell_701_biasadd_readvariableop_resource*
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
*sequential_221_lstm_665_while_body_4240887*6
cond.R,
*sequential_221_lstm_665_while_cond_4240886*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_221/lstm_665/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_221/lstm_665/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_221/lstm_665/while:output:3Qsequential_221/lstm_665/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_221/lstm_665/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_221/lstm_665/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_221/lstm_665/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_221/lstm_665/strided_slice_3StridedSliceCsequential_221/lstm_665/TensorArrayV2Stack/TensorListStack:tensor:06sequential_221/lstm_665/strided_slice_3/stack:output:08sequential_221/lstm_665/strided_slice_3/stack_1:output:08sequential_221/lstm_665/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_221/lstm_665/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_221/lstm_665/transpose_1	TransposeCsequential_221/lstm_665/TensorArrayV2Stack/TensorListStack:tensor:01sequential_221/lstm_665/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_221/lstm_665/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_221/dense_221/MatMul/ReadVariableOpReadVariableOp7sequential_221_dense_221_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_221/dense_221/MatMulMatMul0sequential_221/lstm_665/strided_slice_3:output:06sequential_221/dense_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_221/dense_221/BiasAdd/ReadVariableOpReadVariableOp8sequential_221_dense_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_221/dense_221/BiasAddBiasAdd)sequential_221/dense_221/MatMul:product:07sequential_221/dense_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_221/dense_221/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_221/dense_221/BiasAdd/ReadVariableOp/^sequential_221/dense_221/MatMul/ReadVariableOp=^sequential_221/lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp<^sequential_221/lstm_663/lstm_cell_699/MatMul/ReadVariableOp>^sequential_221/lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp^sequential_221/lstm_663/while=^sequential_221/lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp<^sequential_221/lstm_664/lstm_cell_700/MatMul/ReadVariableOp>^sequential_221/lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp^sequential_221/lstm_664/while=^sequential_221/lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp<^sequential_221/lstm_665/lstm_cell_701/MatMul/ReadVariableOp>^sequential_221/lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp^sequential_221/lstm_665/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_221/dense_221/BiasAdd/ReadVariableOp/sequential_221/dense_221/BiasAdd/ReadVariableOp2`
.sequential_221/dense_221/MatMul/ReadVariableOp.sequential_221/dense_221/MatMul/ReadVariableOp2|
<sequential_221/lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp<sequential_221/lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp2z
;sequential_221/lstm_663/lstm_cell_699/MatMul/ReadVariableOp;sequential_221/lstm_663/lstm_cell_699/MatMul/ReadVariableOp2~
=sequential_221/lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp=sequential_221/lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp2>
sequential_221/lstm_663/whilesequential_221/lstm_663/while2|
<sequential_221/lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp<sequential_221/lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp2z
;sequential_221/lstm_664/lstm_cell_700/MatMul/ReadVariableOp;sequential_221/lstm_664/lstm_cell_700/MatMul/ReadVariableOp2~
=sequential_221/lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp=sequential_221/lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp2>
sequential_221/lstm_664/whilesequential_221/lstm_664/while2|
<sequential_221/lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp<sequential_221/lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp2z
;sequential_221/lstm_665/lstm_cell_701/MatMul/ReadVariableOp;sequential_221/lstm_665/lstm_cell_701/MatMul/ReadVariableOp2~
=sequential_221/lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp=sequential_221/lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp2>
sequential_221/lstm_665/whilesequential_221/lstm_665/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_663_input
?
?
*__inference_lstm_664_layer_call_fn_4244794

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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242326s
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
?
/__inference_lstm_cell_701_layer_call_fn_4246225

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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241744o
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
while_cond_4244533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4244533___redundant_placeholder05
1while_while_cond_4244533___redundant_placeholder15
1while_while_cond_4244533___redundant_placeholder25
1while_while_cond_4244533___redundant_placeholder3
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4241827

inputs'
lstm_cell_701_4241745:2('
lstm_cell_701_4241747:
(#
lstm_cell_701_4241749:(
identity??%lstm_cell_701/StatefulPartitionedCall?while;
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
%lstm_cell_701/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_701_4241745lstm_cell_701_4241747lstm_cell_701_4241749*
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241744n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_701_4241745lstm_cell_701_4241747lstm_cell_701_4241749*
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
while_body_4241758*
condR
while_cond_4241757*K
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
NoOpNoOp&^lstm_cell_701/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_701/StatefulPartitionedCall%lstm_cell_701/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241540

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
?
F__inference_dense_221_layer_call_and_return_conditional_losses_4242494

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
?
?
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241190

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
while_body_4242938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_699_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_699_matmul_readvariableop_resource:	?G
4while_lstm_cell_699_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_699_biasadd_readvariableop_resource:	???*while/lstm_cell_699/BiasAdd/ReadVariableOp?)while/lstm_cell_699/MatMul/ReadVariableOp?+while/lstm_cell_699/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_699/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_699/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_699/addAddV2$while/lstm_cell_699/MatMul:product:0&while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_699/BiasAddBiasAddwhile/lstm_cell_699/add:z:02while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_699/splitSplit,while/lstm_cell_699/split/split_dim:output:0$while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_699/SigmoidSigmoid"while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_1Sigmoid"while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mulMul!while/lstm_cell_699/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_699/ReluRelu"while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_1Mulwhile/lstm_cell_699/Sigmoid:y:0&while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/add_1AddV2while/lstm_cell_699/mul:z:0while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_2Sigmoid"while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_699/Relu_1Reluwhile/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_2Mul!while/lstm_cell_699/Sigmoid_2:y:0(while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_699/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_699/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_699/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_699/BiasAdd/ReadVariableOp*^while/lstm_cell_699/MatMul/ReadVariableOp,^while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_699_biasadd_readvariableop_resource5while_lstm_cell_699_biasadd_readvariableop_resource_0"n
4while_lstm_cell_699_matmul_1_readvariableop_resource6while_lstm_cell_699_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_699_matmul_readvariableop_resource4while_lstm_cell_699_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_699/BiasAdd/ReadVariableOp*while/lstm_cell_699/BiasAdd/ReadVariableOp2V
)while/lstm_cell_699/MatMul/ReadVariableOp)while/lstm_cell_699/MatMul/ReadVariableOp2Z
+while/lstm_cell_699/MatMul_1/ReadVariableOp+while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245091
inputs_0?
,lstm_cell_700_matmul_readvariableop_resource:	d?A
.lstm_cell_700_matmul_1_readvariableop_resource:	2?<
-lstm_cell_700_biasadd_readvariableop_resource:	?
identity??$lstm_cell_700/BiasAdd/ReadVariableOp?#lstm_cell_700/MatMul/ReadVariableOp?%lstm_cell_700/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_700/MatMul/ReadVariableOpReadVariableOp,lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_700/MatMulMatMulstrided_slice_2:output:0+lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_700/MatMul_1MatMulzeros:output:0-lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_700/addAddV2lstm_cell_700/MatMul:product:0 lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_700/BiasAddBiasAddlstm_cell_700/add:z:0,lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_700/splitSplit&lstm_cell_700/split/split_dim:output:0lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_700/SigmoidSigmoidlstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_1Sigmoidlstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_700/mulMullstm_cell_700/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_700/ReluRelulstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_1Mullstm_cell_700/Sigmoid:y:0 lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_700/add_1AddV2lstm_cell_700/mul:z:0lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_2Sigmoidlstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_700/Relu_1Relulstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_2Mullstm_cell_700/Sigmoid_2:y:0"lstm_cell_700/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_700_matmul_readvariableop_resource.lstm_cell_700_matmul_1_readvariableop_resource-lstm_cell_700_biasadd_readvariableop_resource*
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
while_body_4245007*
condR
while_cond_4245006*K
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
NoOpNoOp%^lstm_cell_700/BiasAdd/ReadVariableOp$^lstm_cell_700/MatMul/ReadVariableOp&^lstm_cell_700/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_700/BiasAdd/ReadVariableOp$lstm_cell_700/BiasAdd/ReadVariableOp2J
#lstm_cell_700/MatMul/ReadVariableOp#lstm_cell_700/MatMul/ReadVariableOp2N
%lstm_cell_700/MatMul_1/ReadVariableOp%lstm_cell_700/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_663_while_cond_4243776.
*lstm_663_while_lstm_663_while_loop_counter4
0lstm_663_while_lstm_663_while_maximum_iterations
lstm_663_while_placeholder 
lstm_663_while_placeholder_1 
lstm_663_while_placeholder_2 
lstm_663_while_placeholder_30
,lstm_663_while_less_lstm_663_strided_slice_1G
Clstm_663_while_lstm_663_while_cond_4243776___redundant_placeholder0G
Clstm_663_while_lstm_663_while_cond_4243776___redundant_placeholder1G
Clstm_663_while_lstm_663_while_cond_4243776___redundant_placeholder2G
Clstm_663_while_lstm_663_while_cond_4243776___redundant_placeholder3
lstm_663_while_identity
?
lstm_663/while/LessLesslstm_663_while_placeholder,lstm_663_while_less_lstm_663_strided_slice_1*
T0*
_output_shapes
: ]
lstm_663/while/IdentityIdentitylstm_663/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_663_while_identity lstm_663/while/Identity:output:0*(
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
*__inference_lstm_663_layer_call_fn_4244167
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4241318|
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
?
?
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4246078

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
while_cond_4245622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245622___redundant_placeholder05
1while_while_cond_4245622___redundant_placeholder15
1while_while_cond_4245622___redundant_placeholder25
1while_while_cond_4245622___redundant_placeholder3
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
while_cond_4242241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4242241___redundant_placeholder05
1while_while_cond_4242241___redundant_placeholder15
1while_while_cond_4242241___redundant_placeholder25
1while_while_cond_4242241___redundant_placeholder3
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
while_cond_4244390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4244390___redundant_placeholder05
1while_while_cond_4244390___redundant_placeholder15
1while_while_cond_4244390___redundant_placeholder25
1while_while_cond_4244390___redundant_placeholder3
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
/__inference_lstm_cell_701_layer_call_fn_4246242

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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241890o
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
while_body_4245150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_700_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_700_matmul_readvariableop_resource:	d?G
4while_lstm_cell_700_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_700_biasadd_readvariableop_resource:	???*while/lstm_cell_700/BiasAdd/ReadVariableOp?)while/lstm_cell_700/MatMul/ReadVariableOp?+while/lstm_cell_700/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_700/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_700/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_700/addAddV2$while/lstm_cell_700/MatMul:product:0&while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_700/BiasAddBiasAddwhile/lstm_cell_700/add:z:02while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_700/splitSplit,while/lstm_cell_700/split/split_dim:output:0$while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_700/SigmoidSigmoid"while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_1Sigmoid"while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mulMul!while/lstm_cell_700/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_700/ReluRelu"while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_1Mulwhile/lstm_cell_700/Sigmoid:y:0&while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/add_1AddV2while/lstm_cell_700/mul:z:0while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_2Sigmoid"while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_700/Relu_1Reluwhile/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_2Mul!while/lstm_cell_700/Sigmoid_2:y:0(while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_700/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_700/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_700/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_700/BiasAdd/ReadVariableOp*^while/lstm_cell_700/MatMul/ReadVariableOp,^while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_700_biasadd_readvariableop_resource5while_lstm_cell_700_biasadd_readvariableop_resource_0"n
4while_lstm_cell_700_matmul_1_readvariableop_resource6while_lstm_cell_700_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_700_matmul_readvariableop_resource4while_lstm_cell_700_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_700/BiasAdd/ReadVariableOp*while/lstm_cell_700/BiasAdd/ReadVariableOp2V
)while/lstm_cell_700/MatMul/ReadVariableOp)while/lstm_cell_700/MatMul/ReadVariableOp2Z
+while/lstm_cell_700/MatMul_1/ReadVariableOp+while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4241249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_699_4241273_0:	?0
while_lstm_cell_699_4241275_0:	d?,
while_lstm_cell_699_4241277_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_699_4241273:	?.
while_lstm_cell_699_4241275:	d?*
while_lstm_cell_699_4241277:	???+while/lstm_cell_699/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_699/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_699_4241273_0while_lstm_cell_699_4241275_0while_lstm_cell_699_4241277_0*
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241190?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_699/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_699/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_699/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_699/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_699_4241273while_lstm_cell_699_4241273_0"<
while_lstm_cell_699_4241275while_lstm_cell_699_4241275_0"<
while_lstm_cell_699_4241277while_lstm_cell_699_4241277_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_699/StatefulPartitionedCall+while/lstm_cell_699/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241044

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
/__inference_lstm_cell_700_layer_call_fn_4246127

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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241394o
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242326

inputs?
,lstm_cell_700_matmul_readvariableop_resource:	d?A
.lstm_cell_700_matmul_1_readvariableop_resource:	2?<
-lstm_cell_700_biasadd_readvariableop_resource:	?
identity??$lstm_cell_700/BiasAdd/ReadVariableOp?#lstm_cell_700/MatMul/ReadVariableOp?%lstm_cell_700/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_700/MatMul/ReadVariableOpReadVariableOp,lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_700/MatMulMatMulstrided_slice_2:output:0+lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_700/MatMul_1MatMulzeros:output:0-lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_700/addAddV2lstm_cell_700/MatMul:product:0 lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_700/BiasAddBiasAddlstm_cell_700/add:z:0,lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_700/splitSplit&lstm_cell_700/split/split_dim:output:0lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_700/SigmoidSigmoidlstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_1Sigmoidlstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_700/mulMullstm_cell_700/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_700/ReluRelulstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_1Mullstm_cell_700/Sigmoid:y:0 lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_700/add_1AddV2lstm_cell_700/mul:z:0lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_2Sigmoidlstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_700/Relu_1Relulstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_2Mullstm_cell_700/Sigmoid_2:y:0"lstm_cell_700/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_700_matmul_readvariableop_resource.lstm_cell_700_matmul_1_readvariableop_resource-lstm_cell_700_biasadd_readvariableop_resource*
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
while_body_4242242*
condR
while_cond_4242241*K
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
NoOpNoOp%^lstm_cell_700/BiasAdd/ReadVariableOp$^lstm_cell_700/MatMul/ReadVariableOp&^lstm_cell_700/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_700/BiasAdd/ReadVariableOp$lstm_cell_700/BiasAdd/ReadVariableOp2J
#lstm_cell_700/MatMul/ReadVariableOp#lstm_cell_700/MatMul/ReadVariableOp2N
%lstm_cell_700/MatMul_1/ReadVariableOp%lstm_cell_700/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4245908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245908___redundant_placeholder05
1while_while_cond_4245908___redundant_placeholder15
1while_while_cond_4245908___redundant_placeholder25
1while_while_cond_4245908___redundant_placeholder3
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4246176

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
?
?
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241394

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
?
?
+__inference_dense_221_layer_call_fn_4246002

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
F__inference_dense_221_layer_call_and_return_conditional_losses_4242494o
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
?
while_cond_4245479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245479___redundant_placeholder05
1while_while_cond_4245479___redundant_placeholder15
1while_while_cond_4245479___redundant_placeholder25
1while_while_cond_4245479___redundant_placeholder3
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4243022

inputs?
,lstm_cell_699_matmul_readvariableop_resource:	?A
.lstm_cell_699_matmul_1_readvariableop_resource:	d?<
-lstm_cell_699_biasadd_readvariableop_resource:	?
identity??$lstm_cell_699/BiasAdd/ReadVariableOp?#lstm_cell_699/MatMul/ReadVariableOp?%lstm_cell_699/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_699/MatMul/ReadVariableOpReadVariableOp,lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_699/MatMulMatMulstrided_slice_2:output:0+lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_699/MatMul_1MatMulzeros:output:0-lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_699/addAddV2lstm_cell_699/MatMul:product:0 lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_699/BiasAddBiasAddlstm_cell_699/add:z:0,lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_699/splitSplit&lstm_cell_699/split/split_dim:output:0lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_699/SigmoidSigmoidlstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_1Sigmoidlstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_699/mulMullstm_cell_699/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_699/ReluRelulstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_1Mullstm_cell_699/Sigmoid:y:0 lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_699/add_1AddV2lstm_cell_699/mul:z:0lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_2Sigmoidlstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_699/Relu_1Relulstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_2Mullstm_cell_699/Sigmoid_2:y:0"lstm_cell_699/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_699_matmul_readvariableop_resource.lstm_cell_699_matmul_1_readvariableop_resource-lstm_cell_699_biasadd_readvariableop_resource*
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
while_body_4242938*
condR
while_cond_4242937*K
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
NoOpNoOp%^lstm_cell_699/BiasAdd/ReadVariableOp$^lstm_cell_699/MatMul/ReadVariableOp&^lstm_cell_699/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_699/BiasAdd/ReadVariableOp$lstm_cell_699/BiasAdd/ReadVariableOp2J
#lstm_cell_699/MatMul/ReadVariableOp#lstm_cell_699/MatMul/ReadVariableOp2N
%lstm_cell_699/MatMul_1/ReadVariableOp%lstm_cell_699/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4246208

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

lstm_663_while_body_4243350.
*lstm_663_while_lstm_663_while_loop_counter4
0lstm_663_while_lstm_663_while_maximum_iterations
lstm_663_while_placeholder 
lstm_663_while_placeholder_1 
lstm_663_while_placeholder_2 
lstm_663_while_placeholder_3-
)lstm_663_while_lstm_663_strided_slice_1_0i
elstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0:	?R
?lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?M
>lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
lstm_663_while_identity
lstm_663_while_identity_1
lstm_663_while_identity_2
lstm_663_while_identity_3
lstm_663_while_identity_4
lstm_663_while_identity_5+
'lstm_663_while_lstm_663_strided_slice_1g
clstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensorN
;lstm_663_while_lstm_cell_699_matmul_readvariableop_resource:	?P
=lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource:	d?K
<lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource:	???3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp?2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp?4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp?
@lstm_663/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_663/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensor_0lstm_663_while_placeholderIlstm_663/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp=lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_663/while/lstm_cell_699/MatMulMatMul9lstm_663/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp?lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_663/while/lstm_cell_699/MatMul_1MatMullstm_663_while_placeholder_2<lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_663/while/lstm_cell_699/addAddV2-lstm_663/while/lstm_cell_699/MatMul:product:0/lstm_663/while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp>lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_663/while/lstm_cell_699/BiasAddBiasAdd$lstm_663/while/lstm_cell_699/add:z:0;lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_663/while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_663/while/lstm_cell_699/splitSplit5lstm_663/while/lstm_cell_699/split/split_dim:output:0-lstm_663/while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_663/while/lstm_cell_699/SigmoidSigmoid+lstm_663/while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_663/while/lstm_cell_699/Sigmoid_1Sigmoid+lstm_663/while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_663/while/lstm_cell_699/mulMul*lstm_663/while/lstm_cell_699/Sigmoid_1:y:0lstm_663_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_663/while/lstm_cell_699/ReluRelu+lstm_663/while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_663/while/lstm_cell_699/mul_1Mul(lstm_663/while/lstm_cell_699/Sigmoid:y:0/lstm_663/while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_663/while/lstm_cell_699/add_1AddV2$lstm_663/while/lstm_cell_699/mul:z:0&lstm_663/while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_663/while/lstm_cell_699/Sigmoid_2Sigmoid+lstm_663/while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_663/while/lstm_cell_699/Relu_1Relu&lstm_663/while/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_663/while/lstm_cell_699/mul_2Mul*lstm_663/while/lstm_cell_699/Sigmoid_2:y:01lstm_663/while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_663/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_663_while_placeholder_1lstm_663_while_placeholder&lstm_663/while/lstm_cell_699/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_663/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_663/while/addAddV2lstm_663_while_placeholderlstm_663/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_663/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_663/while/add_1AddV2*lstm_663_while_lstm_663_while_loop_counterlstm_663/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_663/while/IdentityIdentitylstm_663/while/add_1:z:0^lstm_663/while/NoOp*
T0*
_output_shapes
: ?
lstm_663/while/Identity_1Identity0lstm_663_while_lstm_663_while_maximum_iterations^lstm_663/while/NoOp*
T0*
_output_shapes
: t
lstm_663/while/Identity_2Identitylstm_663/while/add:z:0^lstm_663/while/NoOp*
T0*
_output_shapes
: ?
lstm_663/while/Identity_3IdentityClstm_663/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_663/while/NoOp*
T0*
_output_shapes
: ?
lstm_663/while/Identity_4Identity&lstm_663/while/lstm_cell_699/mul_2:z:0^lstm_663/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_663/while/Identity_5Identity&lstm_663/while/lstm_cell_699/add_1:z:0^lstm_663/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_663/while/NoOpNoOp4^lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp3^lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp5^lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_663_while_identity lstm_663/while/Identity:output:0"?
lstm_663_while_identity_1"lstm_663/while/Identity_1:output:0"?
lstm_663_while_identity_2"lstm_663/while/Identity_2:output:0"?
lstm_663_while_identity_3"lstm_663/while/Identity_3:output:0"?
lstm_663_while_identity_4"lstm_663/while/Identity_4:output:0"?
lstm_663_while_identity_5"lstm_663/while/Identity_5:output:0"T
'lstm_663_while_lstm_663_strided_slice_1)lstm_663_while_lstm_663_strided_slice_1_0"~
<lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource>lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0"?
=lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource?lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0"|
;lstm_663_while_lstm_cell_699_matmul_readvariableop_resource=lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0"?
clstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensorelstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp2h
2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp2l
4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_664_layer_call_fn_4244772
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4241477|
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
while_cond_4241407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4241407___redundant_placeholder05
1while_while_cond_4241407___redundant_placeholder15
1while_while_cond_4241407___redundant_placeholder25
1while_while_cond_4241407___redundant_placeholder3
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4244948
inputs_0?
,lstm_cell_700_matmul_readvariableop_resource:	d?A
.lstm_cell_700_matmul_1_readvariableop_resource:	2?<
-lstm_cell_700_biasadd_readvariableop_resource:	?
identity??$lstm_cell_700/BiasAdd/ReadVariableOp?#lstm_cell_700/MatMul/ReadVariableOp?%lstm_cell_700/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_700/MatMul/ReadVariableOpReadVariableOp,lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_700/MatMulMatMulstrided_slice_2:output:0+lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_700/MatMul_1MatMulzeros:output:0-lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_700/addAddV2lstm_cell_700/MatMul:product:0 lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_700/BiasAddBiasAddlstm_cell_700/add:z:0,lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_700/splitSplit&lstm_cell_700/split/split_dim:output:0lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_700/SigmoidSigmoidlstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_1Sigmoidlstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_700/mulMullstm_cell_700/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_700/ReluRelulstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_1Mullstm_cell_700/Sigmoid:y:0 lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_700/add_1AddV2lstm_cell_700/mul:z:0lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_2Sigmoidlstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_700/Relu_1Relulstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_2Mullstm_cell_700/Sigmoid_2:y:0"lstm_cell_700/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_700_matmul_readvariableop_resource.lstm_cell_700_matmul_1_readvariableop_resource-lstm_cell_700_biasadd_readvariableop_resource*
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
while_body_4244864*
condR
while_cond_4244863*K
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
NoOpNoOp%^lstm_cell_700/BiasAdd/ReadVariableOp$^lstm_cell_700/MatMul/ReadVariableOp&^lstm_cell_700/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_700/BiasAdd/ReadVariableOp$lstm_cell_700/BiasAdd/ReadVariableOp2J
#lstm_cell_700/MatMul/ReadVariableOp#lstm_cell_700/MatMul/ReadVariableOp2N
%lstm_cell_700/MatMul_1/ReadVariableOp%lstm_cell_700/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_221_layer_call_fn_4242526
lstm_663_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_663_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4242501o
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
_user_specified_namelstm_663_input
?
?
*__inference_lstm_665_layer_call_fn_4245388
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4241827o
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
*__inference_lstm_663_layer_call_fn_4244156
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4241127|
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
?
*__inference_lstm_663_layer_call_fn_4244189

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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4243022s
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
*sequential_221_lstm_664_while_cond_4240747L
Hsequential_221_lstm_664_while_sequential_221_lstm_664_while_loop_counterR
Nsequential_221_lstm_664_while_sequential_221_lstm_664_while_maximum_iterations-
)sequential_221_lstm_664_while_placeholder/
+sequential_221_lstm_664_while_placeholder_1/
+sequential_221_lstm_664_while_placeholder_2/
+sequential_221_lstm_664_while_placeholder_3N
Jsequential_221_lstm_664_while_less_sequential_221_lstm_664_strided_slice_1e
asequential_221_lstm_664_while_sequential_221_lstm_664_while_cond_4240747___redundant_placeholder0e
asequential_221_lstm_664_while_sequential_221_lstm_664_while_cond_4240747___redundant_placeholder1e
asequential_221_lstm_664_while_sequential_221_lstm_664_while_cond_4240747___redundant_placeholder2e
asequential_221_lstm_664_while_sequential_221_lstm_664_while_cond_4240747___redundant_placeholder3*
&sequential_221_lstm_664_while_identity
?
"sequential_221/lstm_664/while/LessLess)sequential_221_lstm_664_while_placeholderJsequential_221_lstm_664_while_less_sequential_221_lstm_664_strided_slice_1*
T0*
_output_shapes
: {
&sequential_221/lstm_664/while/IdentityIdentity&sequential_221/lstm_664/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_221_lstm_664_while_identity/sequential_221/lstm_664/while/Identity:output:0*(
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
F__inference_dense_221_layer_call_and_return_conditional_losses_4246012

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
?
E__inference_lstm_664_layer_call_and_return_conditional_losses_4241668

inputs(
lstm_cell_700_4241586:	d?(
lstm_cell_700_4241588:	2?$
lstm_cell_700_4241590:	?
identity??%lstm_cell_700/StatefulPartitionedCall?while;
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
%lstm_cell_700/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_700_4241586lstm_cell_700_4241588lstm_cell_700_4241590*
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241540n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_700_4241586lstm_cell_700_4241588lstm_cell_700_4241590*
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
while_body_4241599*
condR
while_cond_4241598*K
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
NoOpNoOp&^lstm_cell_700/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_700/StatefulPartitionedCall%lstm_cell_700/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241890

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
?K
?
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245564
inputs_0>
,lstm_cell_701_matmul_readvariableop_resource:2(@
.lstm_cell_701_matmul_1_readvariableop_resource:
(;
-lstm_cell_701_biasadd_readvariableop_resource:(
identity??$lstm_cell_701/BiasAdd/ReadVariableOp?#lstm_cell_701/MatMul/ReadVariableOp?%lstm_cell_701/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_701/MatMul/ReadVariableOpReadVariableOp,lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_701/MatMulMatMulstrided_slice_2:output:0+lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_701/MatMul_1MatMulzeros:output:0-lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_701/addAddV2lstm_cell_701/MatMul:product:0 lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_701/BiasAddBiasAddlstm_cell_701/add:z:0,lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_701/splitSplit&lstm_cell_701/split/split_dim:output:0lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_701/SigmoidSigmoidlstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_1Sigmoidlstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_701/mulMullstm_cell_701/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_701/ReluRelulstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_1Mullstm_cell_701/Sigmoid:y:0 lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_701/add_1AddV2lstm_cell_701/mul:z:0lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_2Sigmoidlstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_701/Relu_1Relulstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_2Mullstm_cell_701/Sigmoid_2:y:0"lstm_cell_701/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_701_matmul_readvariableop_resource.lstm_cell_701_matmul_1_readvariableop_resource-lstm_cell_701_biasadd_readvariableop_resource*
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
while_body_4245480*
condR
while_cond_4245479*K
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
NoOpNoOp%^lstm_cell_701/BiasAdd/ReadVariableOp$^lstm_cell_701/MatMul/ReadVariableOp&^lstm_cell_701/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_701/BiasAdd/ReadVariableOp$lstm_cell_701/BiasAdd/ReadVariableOp2J
#lstm_cell_701/MatMul/ReadVariableOp#lstm_cell_701/MatMul/ReadVariableOp2N
%lstm_cell_701/MatMul_1/ReadVariableOp%lstm_cell_701/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243202
lstm_663_input#
lstm_663_4243175:	?#
lstm_663_4243177:	d?
lstm_663_4243179:	?#
lstm_664_4243182:	d?#
lstm_664_4243184:	2?
lstm_664_4243186:	?"
lstm_665_4243189:2("
lstm_665_4243191:
(
lstm_665_4243193:(#
dense_221_4243196:

dense_221_4243198:
identity??!dense_221/StatefulPartitionedCall? lstm_663/StatefulPartitionedCall? lstm_664/StatefulPartitionedCall? lstm_665/StatefulPartitionedCall?
 lstm_663/StatefulPartitionedCallStatefulPartitionedCalllstm_663_inputlstm_663_4243175lstm_663_4243177lstm_663_4243179*
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4243022?
 lstm_664/StatefulPartitionedCallStatefulPartitionedCall)lstm_663/StatefulPartitionedCall:output:0lstm_664_4243182lstm_664_4243184lstm_664_4243186*
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242857?
 lstm_665/StatefulPartitionedCallStatefulPartitionedCall)lstm_664/StatefulPartitionedCall:output:0lstm_665_4243189lstm_665_4243191lstm_665_4243193*
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242692?
!dense_221/StatefulPartitionedCallStatefulPartitionedCall)lstm_665/StatefulPartitionedCall:output:0dense_221_4243196dense_221_4243198*
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
F__inference_dense_221_layer_call_and_return_conditional_losses_4242494y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_221/StatefulPartitionedCall!^lstm_663/StatefulPartitionedCall!^lstm_664/StatefulPartitionedCall!^lstm_665/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall2D
 lstm_663/StatefulPartitionedCall lstm_663/StatefulPartitionedCall2D
 lstm_664/StatefulPartitionedCall lstm_664/StatefulPartitionedCall2D
 lstm_665/StatefulPartitionedCall lstm_665/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_663_input
?C
?

lstm_665_while_body_4243628.
*lstm_665_while_lstm_665_while_loop_counter4
0lstm_665_while_lstm_665_while_maximum_iterations
lstm_665_while_placeholder 
lstm_665_while_placeholder_1 
lstm_665_while_placeholder_2 
lstm_665_while_placeholder_3-
)lstm_665_while_lstm_665_strided_slice_1_0i
elstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0:2(Q
?lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(L
>lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0:(
lstm_665_while_identity
lstm_665_while_identity_1
lstm_665_while_identity_2
lstm_665_while_identity_3
lstm_665_while_identity_4
lstm_665_while_identity_5+
'lstm_665_while_lstm_665_strided_slice_1g
clstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensorM
;lstm_665_while_lstm_cell_701_matmul_readvariableop_resource:2(O
=lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource:
(J
<lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource:(??3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp?2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp?4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp?
@lstm_665/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_665/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensor_0lstm_665_while_placeholderIlstm_665/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp=lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_665/while/lstm_cell_701/MatMulMatMul9lstm_665/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp?lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_665/while/lstm_cell_701/MatMul_1MatMullstm_665_while_placeholder_2<lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_665/while/lstm_cell_701/addAddV2-lstm_665/while/lstm_cell_701/MatMul:product:0/lstm_665/while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp>lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_665/while/lstm_cell_701/BiasAddBiasAdd$lstm_665/while/lstm_cell_701/add:z:0;lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_665/while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_665/while/lstm_cell_701/splitSplit5lstm_665/while/lstm_cell_701/split/split_dim:output:0-lstm_665/while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_665/while/lstm_cell_701/SigmoidSigmoid+lstm_665/while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_665/while/lstm_cell_701/Sigmoid_1Sigmoid+lstm_665/while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_665/while/lstm_cell_701/mulMul*lstm_665/while/lstm_cell_701/Sigmoid_1:y:0lstm_665_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_665/while/lstm_cell_701/ReluRelu+lstm_665/while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_665/while/lstm_cell_701/mul_1Mul(lstm_665/while/lstm_cell_701/Sigmoid:y:0/lstm_665/while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_665/while/lstm_cell_701/add_1AddV2$lstm_665/while/lstm_cell_701/mul:z:0&lstm_665/while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_665/while/lstm_cell_701/Sigmoid_2Sigmoid+lstm_665/while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_665/while/lstm_cell_701/Relu_1Relu&lstm_665/while/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_665/while/lstm_cell_701/mul_2Mul*lstm_665/while/lstm_cell_701/Sigmoid_2:y:01lstm_665/while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_665/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_665_while_placeholder_1lstm_665_while_placeholder&lstm_665/while/lstm_cell_701/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_665/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_665/while/addAddV2lstm_665_while_placeholderlstm_665/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_665/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_665/while/add_1AddV2*lstm_665_while_lstm_665_while_loop_counterlstm_665/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_665/while/IdentityIdentitylstm_665/while/add_1:z:0^lstm_665/while/NoOp*
T0*
_output_shapes
: ?
lstm_665/while/Identity_1Identity0lstm_665_while_lstm_665_while_maximum_iterations^lstm_665/while/NoOp*
T0*
_output_shapes
: t
lstm_665/while/Identity_2Identitylstm_665/while/add:z:0^lstm_665/while/NoOp*
T0*
_output_shapes
: ?
lstm_665/while/Identity_3IdentityClstm_665/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_665/while/NoOp*
T0*
_output_shapes
: ?
lstm_665/while/Identity_4Identity&lstm_665/while/lstm_cell_701/mul_2:z:0^lstm_665/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_665/while/Identity_5Identity&lstm_665/while/lstm_cell_701/add_1:z:0^lstm_665/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_665/while/NoOpNoOp4^lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp3^lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp5^lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_665_while_identity lstm_665/while/Identity:output:0"?
lstm_665_while_identity_1"lstm_665/while/Identity_1:output:0"?
lstm_665_while_identity_2"lstm_665/while/Identity_2:output:0"?
lstm_665_while_identity_3"lstm_665/while/Identity_3:output:0"?
lstm_665_while_identity_4"lstm_665/while/Identity_4:output:0"?
lstm_665_while_identity_5"lstm_665/while/Identity_5:output:0"T
'lstm_665_while_lstm_665_strided_slice_1)lstm_665_while_lstm_665_strided_slice_1_0"~
<lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource>lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0"?
=lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource?lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0"|
;lstm_665_while_lstm_cell_701_matmul_readvariableop_resource=lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0"?
clstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensorelstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp2h
2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp2l
4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_665_layer_call_fn_4245410

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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242476o
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

?
lstm_663_while_cond_4243349.
*lstm_663_while_lstm_663_while_loop_counter4
0lstm_663_while_lstm_663_while_maximum_iterations
lstm_663_while_placeholder 
lstm_663_while_placeholder_1 
lstm_663_while_placeholder_2 
lstm_663_while_placeholder_30
,lstm_663_while_less_lstm_663_strided_slice_1G
Clstm_663_while_lstm_663_while_cond_4243349___redundant_placeholder0G
Clstm_663_while_lstm_663_while_cond_4243349___redundant_placeholder1G
Clstm_663_while_lstm_663_while_cond_4243349___redundant_placeholder2G
Clstm_663_while_lstm_663_while_cond_4243349___redundant_placeholder3
lstm_663_while_identity
?
lstm_663/while/LessLesslstm_663_while_placeholder,lstm_663_while_less_lstm_663_strided_slice_1*
T0*
_output_shapes
: ]
lstm_663/while/IdentityIdentitylstm_663/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_663_while_identity lstm_663/while/Identity:output:0*(
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244618

inputs?
,lstm_cell_699_matmul_readvariableop_resource:	?A
.lstm_cell_699_matmul_1_readvariableop_resource:	d?<
-lstm_cell_699_biasadd_readvariableop_resource:	?
identity??$lstm_cell_699/BiasAdd/ReadVariableOp?#lstm_cell_699/MatMul/ReadVariableOp?%lstm_cell_699/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_699/MatMul/ReadVariableOpReadVariableOp,lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_699/MatMulMatMulstrided_slice_2:output:0+lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_699/MatMul_1MatMulzeros:output:0-lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_699/addAddV2lstm_cell_699/MatMul:product:0 lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_699/BiasAddBiasAddlstm_cell_699/add:z:0,lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_699/splitSplit&lstm_cell_699/split/split_dim:output:0lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_699/SigmoidSigmoidlstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_1Sigmoidlstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_699/mulMullstm_cell_699/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_699/ReluRelulstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_1Mullstm_cell_699/Sigmoid:y:0 lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_699/add_1AddV2lstm_cell_699/mul:z:0lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_2Sigmoidlstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_699/Relu_1Relulstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_2Mullstm_cell_699/Sigmoid_2:y:0"lstm_cell_699/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_699_matmul_readvariableop_resource.lstm_cell_699_matmul_1_readvariableop_resource-lstm_cell_699_biasadd_readvariableop_resource*
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
while_body_4244534*
condR
while_cond_4244533*K
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
NoOpNoOp%^lstm_cell_699/BiasAdd/ReadVariableOp$^lstm_cell_699/MatMul/ReadVariableOp&^lstm_cell_699/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_699/BiasAdd/ReadVariableOp$lstm_cell_699/BiasAdd/ReadVariableOp2J
#lstm_cell_699/MatMul/ReadVariableOp#lstm_cell_699/MatMul/ReadVariableOp2N
%lstm_cell_699/MatMul_1/ReadVariableOp%lstm_cell_699/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241744

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
*__inference_lstm_663_layer_call_fn_4244178

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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4242176s
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
while_body_4242392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_701_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_701_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_701_matmul_readvariableop_resource:2(F
4while_lstm_cell_701_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_701_biasadd_readvariableop_resource:(??*while/lstm_cell_701/BiasAdd/ReadVariableOp?)while/lstm_cell_701/MatMul/ReadVariableOp?+while/lstm_cell_701/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_701/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_701/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_701/addAddV2$while/lstm_cell_701/MatMul:product:0&while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_701/BiasAddBiasAddwhile/lstm_cell_701/add:z:02while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_701/splitSplit,while/lstm_cell_701/split/split_dim:output:0$while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_701/SigmoidSigmoid"while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_1Sigmoid"while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mulMul!while/lstm_cell_701/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_701/ReluRelu"while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_1Mulwhile/lstm_cell_701/Sigmoid:y:0&while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/add_1AddV2while/lstm_cell_701/mul:z:0while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_2Sigmoid"while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_701/Relu_1Reluwhile/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_2Mul!while/lstm_cell_701/Sigmoid_2:y:0(while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_701/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_701/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_701/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_701/BiasAdd/ReadVariableOp*^while/lstm_cell_701/MatMul/ReadVariableOp,^while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_701_biasadd_readvariableop_resource5while_lstm_cell_701_biasadd_readvariableop_resource_0"n
4while_lstm_cell_701_matmul_1_readvariableop_resource6while_lstm_cell_701_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_701_matmul_readvariableop_resource4while_lstm_cell_701_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_701/BiasAdd/ReadVariableOp*while/lstm_cell_701/BiasAdd/ReadVariableOp2V
)while/lstm_cell_701/MatMul/ReadVariableOp)while/lstm_cell_701/MatMul/ReadVariableOp2Z
+while/lstm_cell_701/MatMul_1/ReadVariableOp+while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4241477

inputs(
lstm_cell_700_4241395:	d?(
lstm_cell_700_4241397:	2?$
lstm_cell_700_4241399:	?
identity??%lstm_cell_700/StatefulPartitionedCall?while;
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
%lstm_cell_700/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_700_4241395lstm_cell_700_4241397lstm_cell_700_4241399*
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241394n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_700_4241395lstm_cell_700_4241397lstm_cell_700_4241399*
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
while_body_4241408*
condR
while_cond_4241407*K
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
NoOpNoOp&^lstm_cell_700/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_700/StatefulPartitionedCall%lstm_cell_700/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_664_layer_call_fn_4244783
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4241668|
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245993

inputs>
,lstm_cell_701_matmul_readvariableop_resource:2(@
.lstm_cell_701_matmul_1_readvariableop_resource:
(;
-lstm_cell_701_biasadd_readvariableop_resource:(
identity??$lstm_cell_701/BiasAdd/ReadVariableOp?#lstm_cell_701/MatMul/ReadVariableOp?%lstm_cell_701/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_701/MatMul/ReadVariableOpReadVariableOp,lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_701/MatMulMatMulstrided_slice_2:output:0+lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_701/MatMul_1MatMulzeros:output:0-lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_701/addAddV2lstm_cell_701/MatMul:product:0 lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_701/BiasAddBiasAddlstm_cell_701/add:z:0,lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_701/splitSplit&lstm_cell_701/split/split_dim:output:0lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_701/SigmoidSigmoidlstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_1Sigmoidlstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_701/mulMullstm_cell_701/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_701/ReluRelulstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_1Mullstm_cell_701/Sigmoid:y:0 lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_701/add_1AddV2lstm_cell_701/mul:z:0lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_2Sigmoidlstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_701/Relu_1Relulstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_2Mullstm_cell_701/Sigmoid_2:y:0"lstm_cell_701/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_701_matmul_readvariableop_resource.lstm_cell_701_matmul_1_readvariableop_resource-lstm_cell_701_biasadd_readvariableop_resource*
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
while_body_4245909*
condR
while_cond_4245908*K
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
NoOpNoOp%^lstm_cell_701/BiasAdd/ReadVariableOp$^lstm_cell_701/MatMul/ReadVariableOp&^lstm_cell_701/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_701/BiasAdd/ReadVariableOp$lstm_cell_701/BiasAdd/ReadVariableOp2J
#lstm_cell_701/MatMul/ReadVariableOp#lstm_cell_701/MatMul/ReadVariableOp2N
%lstm_cell_701/MatMul_1/ReadVariableOp%lstm_cell_701/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4245007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_700_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_700_matmul_readvariableop_resource:	d?G
4while_lstm_cell_700_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_700_biasadd_readvariableop_resource:	???*while/lstm_cell_700/BiasAdd/ReadVariableOp?)while/lstm_cell_700/MatMul/ReadVariableOp?+while/lstm_cell_700/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_700/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_700/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_700/addAddV2$while/lstm_cell_700/MatMul:product:0&while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_700/BiasAddBiasAddwhile/lstm_cell_700/add:z:02while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_700/splitSplit,while/lstm_cell_700/split/split_dim:output:0$while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_700/SigmoidSigmoid"while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_1Sigmoid"while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mulMul!while/lstm_cell_700/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_700/ReluRelu"while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_1Mulwhile/lstm_cell_700/Sigmoid:y:0&while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/add_1AddV2while/lstm_cell_700/mul:z:0while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_2Sigmoid"while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_700/Relu_1Reluwhile/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_2Mul!while/lstm_cell_700/Sigmoid_2:y:0(while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_700/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_700/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_700/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_700/BiasAdd/ReadVariableOp*^while/lstm_cell_700/MatMul/ReadVariableOp,^while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_700_biasadd_readvariableop_resource5while_lstm_cell_700_biasadd_readvariableop_resource_0"n
4while_lstm_cell_700_matmul_1_readvariableop_resource6while_lstm_cell_700_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_700_matmul_readvariableop_resource4while_lstm_cell_700_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_700/BiasAdd/ReadVariableOp*while/lstm_cell_700/BiasAdd/ReadVariableOp2V
)while/lstm_cell_700/MatMul/ReadVariableOp)while/lstm_cell_700/MatMul/ReadVariableOp2Z
+while/lstm_cell_700/MatMul_1/ReadVariableOp+while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_700_layer_call_fn_4246144

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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241540o
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
while_body_4244677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_699_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_699_matmul_readvariableop_resource:	?G
4while_lstm_cell_699_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_699_biasadd_readvariableop_resource:	???*while/lstm_cell_699/BiasAdd/ReadVariableOp?)while/lstm_cell_699/MatMul/ReadVariableOp?+while/lstm_cell_699/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_699/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_699/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_699/addAddV2$while/lstm_cell_699/MatMul:product:0&while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_699/BiasAddBiasAddwhile/lstm_cell_699/add:z:02while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_699/splitSplit,while/lstm_cell_699/split/split_dim:output:0$while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_699/SigmoidSigmoid"while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_1Sigmoid"while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mulMul!while/lstm_cell_699/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_699/ReluRelu"while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_1Mulwhile/lstm_cell_699/Sigmoid:y:0&while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/add_1AddV2while/lstm_cell_699/mul:z:0while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_2Sigmoid"while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_699/Relu_1Reluwhile/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_2Mul!while/lstm_cell_699/Sigmoid_2:y:0(while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_699/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_699/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_699/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_699/BiasAdd/ReadVariableOp*^while/lstm_cell_699/MatMul/ReadVariableOp,^while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_699_biasadd_readvariableop_resource5while_lstm_cell_699_biasadd_readvariableop_resource_0"n
4while_lstm_cell_699_matmul_1_readvariableop_resource6while_lstm_cell_699_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_699_matmul_readvariableop_resource4while_lstm_cell_699_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_699/BiasAdd/ReadVariableOp*while/lstm_cell_699/BiasAdd/ReadVariableOp2V
)while/lstm_cell_699/MatMul/ReadVariableOp)while/lstm_cell_699/MatMul/ReadVariableOp2Z
+while/lstm_cell_699/MatMul_1/ReadVariableOp+while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242857

inputs?
,lstm_cell_700_matmul_readvariableop_resource:	d?A
.lstm_cell_700_matmul_1_readvariableop_resource:	2?<
-lstm_cell_700_biasadd_readvariableop_resource:	?
identity??$lstm_cell_700/BiasAdd/ReadVariableOp?#lstm_cell_700/MatMul/ReadVariableOp?%lstm_cell_700/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_700/MatMul/ReadVariableOpReadVariableOp,lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_700/MatMulMatMulstrided_slice_2:output:0+lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_700/MatMul_1MatMulzeros:output:0-lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_700/addAddV2lstm_cell_700/MatMul:product:0 lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_700/BiasAddBiasAddlstm_cell_700/add:z:0,lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_700/splitSplit&lstm_cell_700/split/split_dim:output:0lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_700/SigmoidSigmoidlstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_1Sigmoidlstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_700/mulMullstm_cell_700/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_700/ReluRelulstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_1Mullstm_cell_700/Sigmoid:y:0 lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_700/add_1AddV2lstm_cell_700/mul:z:0lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_2Sigmoidlstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_700/Relu_1Relulstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_2Mullstm_cell_700/Sigmoid_2:y:0"lstm_cell_700/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_700_matmul_readvariableop_resource.lstm_cell_700_matmul_1_readvariableop_resource-lstm_cell_700_biasadd_readvariableop_resource*
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
while_body_4242773*
condR
while_cond_4242772*K
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
NoOpNoOp%^lstm_cell_700/BiasAdd/ReadVariableOp$^lstm_cell_700/MatMul/ReadVariableOp&^lstm_cell_700/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_700/BiasAdd/ReadVariableOp$lstm_cell_700/BiasAdd/ReadVariableOp2J
#lstm_cell_700/MatMul/ReadVariableOp#lstm_cell_700/MatMul/ReadVariableOp2N
%lstm_cell_700/MatMul_1/ReadVariableOp%lstm_cell_700/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245234

inputs?
,lstm_cell_700_matmul_readvariableop_resource:	d?A
.lstm_cell_700_matmul_1_readvariableop_resource:	2?<
-lstm_cell_700_biasadd_readvariableop_resource:	?
identity??$lstm_cell_700/BiasAdd/ReadVariableOp?#lstm_cell_700/MatMul/ReadVariableOp?%lstm_cell_700/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_700/MatMul/ReadVariableOpReadVariableOp,lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_700/MatMulMatMulstrided_slice_2:output:0+lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_700/MatMul_1MatMulzeros:output:0-lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_700/addAddV2lstm_cell_700/MatMul:product:0 lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_700/BiasAddBiasAddlstm_cell_700/add:z:0,lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_700/splitSplit&lstm_cell_700/split/split_dim:output:0lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_700/SigmoidSigmoidlstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_1Sigmoidlstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_700/mulMullstm_cell_700/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_700/ReluRelulstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_1Mullstm_cell_700/Sigmoid:y:0 lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_700/add_1AddV2lstm_cell_700/mul:z:0lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_2Sigmoidlstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_700/Relu_1Relulstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_2Mullstm_cell_700/Sigmoid_2:y:0"lstm_cell_700/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_700_matmul_readvariableop_resource.lstm_cell_700_matmul_1_readvariableop_resource-lstm_cell_700_biasadd_readvariableop_resource*
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
while_body_4245150*
condR
while_cond_4245149*K
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
NoOpNoOp%^lstm_cell_700/BiasAdd/ReadVariableOp$^lstm_cell_700/MatMul/ReadVariableOp&^lstm_cell_700/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_700/BiasAdd/ReadVariableOp$lstm_cell_700/BiasAdd/ReadVariableOp2J
#lstm_cell_700/MatMul/ReadVariableOp#lstm_cell_700/MatMul/ReadVariableOp2N
%lstm_cell_700/MatMul_1/ReadVariableOp%lstm_cell_700/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4241248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4241248___redundant_placeholder05
1while_while_cond_4241248___redundant_placeholder15
1while_while_cond_4241248___redundant_placeholder25
1while_while_cond_4241248___redundant_placeholder3
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4246110

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
*sequential_221_lstm_663_while_body_4240609L
Hsequential_221_lstm_663_while_sequential_221_lstm_663_while_loop_counterR
Nsequential_221_lstm_663_while_sequential_221_lstm_663_while_maximum_iterations-
)sequential_221_lstm_663_while_placeholder/
+sequential_221_lstm_663_while_placeholder_1/
+sequential_221_lstm_663_while_placeholder_2/
+sequential_221_lstm_663_while_placeholder_3K
Gsequential_221_lstm_663_while_sequential_221_lstm_663_strided_slice_1_0?
?sequential_221_lstm_663_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_663_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_221_lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0:	?a
Nsequential_221_lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?\
Msequential_221_lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0:	?*
&sequential_221_lstm_663_while_identity,
(sequential_221_lstm_663_while_identity_1,
(sequential_221_lstm_663_while_identity_2,
(sequential_221_lstm_663_while_identity_3,
(sequential_221_lstm_663_while_identity_4,
(sequential_221_lstm_663_while_identity_5I
Esequential_221_lstm_663_while_sequential_221_lstm_663_strided_slice_1?
?sequential_221_lstm_663_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_663_tensorarrayunstack_tensorlistfromtensor]
Jsequential_221_lstm_663_while_lstm_cell_699_matmul_readvariableop_resource:	?_
Lsequential_221_lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource:	d?Z
Ksequential_221_lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource:	???Bsequential_221/lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp?Asequential_221/lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp?Csequential_221/lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp?
Osequential_221/lstm_663/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_221/lstm_663/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_221_lstm_663_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_663_tensorarrayunstack_tensorlistfromtensor_0)sequential_221_lstm_663_while_placeholderXsequential_221/lstm_663/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_221/lstm_663/while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOpLsequential_221_lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_221/lstm_663/while/lstm_cell_699/MatMulMatMulHsequential_221/lstm_663/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_221/lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_221/lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOpNsequential_221_lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_221/lstm_663/while/lstm_cell_699/MatMul_1MatMul+sequential_221_lstm_663_while_placeholder_2Ksequential_221/lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_221/lstm_663/while/lstm_cell_699/addAddV2<sequential_221/lstm_663/while/lstm_cell_699/MatMul:product:0>sequential_221/lstm_663/while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_221/lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOpMsequential_221_lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_221/lstm_663/while/lstm_cell_699/BiasAddBiasAdd3sequential_221/lstm_663/while/lstm_cell_699/add:z:0Jsequential_221/lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_221/lstm_663/while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_221/lstm_663/while/lstm_cell_699/splitSplitDsequential_221/lstm_663/while/lstm_cell_699/split/split_dim:output:0<sequential_221/lstm_663/while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_221/lstm_663/while/lstm_cell_699/SigmoidSigmoid:sequential_221/lstm_663/while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_221/lstm_663/while/lstm_cell_699/Sigmoid_1Sigmoid:sequential_221/lstm_663/while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_221/lstm_663/while/lstm_cell_699/mulMul9sequential_221/lstm_663/while/lstm_cell_699/Sigmoid_1:y:0+sequential_221_lstm_663_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_221/lstm_663/while/lstm_cell_699/ReluRelu:sequential_221/lstm_663/while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_221/lstm_663/while/lstm_cell_699/mul_1Mul7sequential_221/lstm_663/while/lstm_cell_699/Sigmoid:y:0>sequential_221/lstm_663/while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_221/lstm_663/while/lstm_cell_699/add_1AddV23sequential_221/lstm_663/while/lstm_cell_699/mul:z:05sequential_221/lstm_663/while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_221/lstm_663/while/lstm_cell_699/Sigmoid_2Sigmoid:sequential_221/lstm_663/while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_221/lstm_663/while/lstm_cell_699/Relu_1Relu5sequential_221/lstm_663/while/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_221/lstm_663/while/lstm_cell_699/mul_2Mul9sequential_221/lstm_663/while/lstm_cell_699/Sigmoid_2:y:0@sequential_221/lstm_663/while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_221/lstm_663/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_221_lstm_663_while_placeholder_1)sequential_221_lstm_663_while_placeholder5sequential_221/lstm_663/while/lstm_cell_699/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_221/lstm_663/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_221/lstm_663/while/addAddV2)sequential_221_lstm_663_while_placeholder,sequential_221/lstm_663/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_221/lstm_663/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_221/lstm_663/while/add_1AddV2Hsequential_221_lstm_663_while_sequential_221_lstm_663_while_loop_counter.sequential_221/lstm_663/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_221/lstm_663/while/IdentityIdentity'sequential_221/lstm_663/while/add_1:z:0#^sequential_221/lstm_663/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_663/while/Identity_1IdentityNsequential_221_lstm_663_while_sequential_221_lstm_663_while_maximum_iterations#^sequential_221/lstm_663/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_663/while/Identity_2Identity%sequential_221/lstm_663/while/add:z:0#^sequential_221/lstm_663/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_663/while/Identity_3IdentityRsequential_221/lstm_663/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_221/lstm_663/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_663/while/Identity_4Identity5sequential_221/lstm_663/while/lstm_cell_699/mul_2:z:0#^sequential_221/lstm_663/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_221/lstm_663/while/Identity_5Identity5sequential_221/lstm_663/while/lstm_cell_699/add_1:z:0#^sequential_221/lstm_663/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_221/lstm_663/while/NoOpNoOpC^sequential_221/lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOpB^sequential_221/lstm_663/while/lstm_cell_699/MatMul/ReadVariableOpD^sequential_221/lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_221_lstm_663_while_identity/sequential_221/lstm_663/while/Identity:output:0"]
(sequential_221_lstm_663_while_identity_11sequential_221/lstm_663/while/Identity_1:output:0"]
(sequential_221_lstm_663_while_identity_21sequential_221/lstm_663/while/Identity_2:output:0"]
(sequential_221_lstm_663_while_identity_31sequential_221/lstm_663/while/Identity_3:output:0"]
(sequential_221_lstm_663_while_identity_41sequential_221/lstm_663/while/Identity_4:output:0"]
(sequential_221_lstm_663_while_identity_51sequential_221/lstm_663/while/Identity_5:output:0"?
Ksequential_221_lstm_663_while_lstm_cell_699_biasadd_readvariableop_resourceMsequential_221_lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0"?
Lsequential_221_lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resourceNsequential_221_lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0"?
Jsequential_221_lstm_663_while_lstm_cell_699_matmul_readvariableop_resourceLsequential_221_lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0"?
Esequential_221_lstm_663_while_sequential_221_lstm_663_strided_slice_1Gsequential_221_lstm_663_while_sequential_221_lstm_663_strided_slice_1_0"?
?sequential_221_lstm_663_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_663_tensorarrayunstack_tensorlistfromtensor?sequential_221_lstm_663_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_663_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_221/lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOpBsequential_221/lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp2?
Asequential_221/lstm_663/while/lstm_cell_699/MatMul/ReadVariableOpAsequential_221/lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp2?
Csequential_221/lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOpCsequential_221/lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4242937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4242937___redundant_placeholder05
1while_while_cond_4242937___redundant_placeholder15
1while_while_cond_4242937___redundant_placeholder25
1while_while_cond_4242937___redundant_placeholder3
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
while_body_4241408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_700_4241432_0:	d?0
while_lstm_cell_700_4241434_0:	2?,
while_lstm_cell_700_4241436_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_700_4241432:	d?.
while_lstm_cell_700_4241434:	2?*
while_lstm_cell_700_4241436:	???+while/lstm_cell_700/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_700/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_700_4241432_0while_lstm_cell_700_4241434_0while_lstm_cell_700_4241436_0*
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241394?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_700/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_700/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_700/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_700/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_700_4241432while_lstm_cell_700_4241432_0"<
while_lstm_cell_700_4241434while_lstm_cell_700_4241434_0"<
while_lstm_cell_700_4241436while_lstm_cell_700_4241436_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_700/StatefulPartitionedCall+while/lstm_cell_700/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_221_layer_call_fn_4243264

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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4242501o
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
while_cond_4244863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4244863___redundant_placeholder05
1while_while_cond_4244863___redundant_placeholder15
1while_while_cond_4244863___redundant_placeholder25
1while_while_cond_4244863___redundant_placeholder3
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245377

inputs?
,lstm_cell_700_matmul_readvariableop_resource:	d?A
.lstm_cell_700_matmul_1_readvariableop_resource:	2?<
-lstm_cell_700_biasadd_readvariableop_resource:	?
identity??$lstm_cell_700/BiasAdd/ReadVariableOp?#lstm_cell_700/MatMul/ReadVariableOp?%lstm_cell_700/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_700/MatMul/ReadVariableOpReadVariableOp,lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_700/MatMulMatMulstrided_slice_2:output:0+lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_700/MatMul_1MatMulzeros:output:0-lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_700/addAddV2lstm_cell_700/MatMul:product:0 lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_700/BiasAddBiasAddlstm_cell_700/add:z:0,lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_700/splitSplit&lstm_cell_700/split/split_dim:output:0lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_700/SigmoidSigmoidlstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_1Sigmoidlstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_700/mulMullstm_cell_700/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_700/ReluRelulstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_1Mullstm_cell_700/Sigmoid:y:0 lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_700/add_1AddV2lstm_cell_700/mul:z:0lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_700/Sigmoid_2Sigmoidlstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_700/Relu_1Relulstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_700/mul_2Mullstm_cell_700/Sigmoid_2:y:0"lstm_cell_700/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_700_matmul_readvariableop_resource.lstm_cell_700_matmul_1_readvariableop_resource-lstm_cell_700_biasadd_readvariableop_resource*
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
while_body_4245293*
condR
while_cond_4245292*K
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
NoOpNoOp%^lstm_cell_700/BiasAdd/ReadVariableOp$^lstm_cell_700/MatMul/ReadVariableOp&^lstm_cell_700/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_700/BiasAdd/ReadVariableOp$lstm_cell_700/BiasAdd/ReadVariableOp2J
#lstm_cell_700/MatMul/ReadVariableOp#lstm_cell_700/MatMul/ReadVariableOp2N
%lstm_cell_700/MatMul_1/ReadVariableOp%lstm_cell_700/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_4246579
file_prefix3
!assignvariableop_dense_221_kernel:
/
!assignvariableop_1_dense_221_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_663_lstm_cell_663_kernel:	?M
:assignvariableop_8_lstm_663_lstm_cell_663_recurrent_kernel:	d?=
.assignvariableop_9_lstm_663_lstm_cell_663_bias:	?D
1assignvariableop_10_lstm_664_lstm_cell_664_kernel:	d?N
;assignvariableop_11_lstm_664_lstm_cell_664_recurrent_kernel:	2?>
/assignvariableop_12_lstm_664_lstm_cell_664_bias:	?C
1assignvariableop_13_lstm_665_lstm_cell_665_kernel:2(M
;assignvariableop_14_lstm_665_lstm_cell_665_recurrent_kernel:
(=
/assignvariableop_15_lstm_665_lstm_cell_665_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_221_kernel_m:
7
)assignvariableop_19_adam_dense_221_bias_m:K
8assignvariableop_20_adam_lstm_663_lstm_cell_663_kernel_m:	?U
Bassignvariableop_21_adam_lstm_663_lstm_cell_663_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_663_lstm_cell_663_bias_m:	?K
8assignvariableop_23_adam_lstm_664_lstm_cell_664_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_664_lstm_cell_664_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_664_lstm_cell_664_bias_m:	?J
8assignvariableop_26_adam_lstm_665_lstm_cell_665_kernel_m:2(T
Bassignvariableop_27_adam_lstm_665_lstm_cell_665_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_665_lstm_cell_665_bias_m:(=
+assignvariableop_29_adam_dense_221_kernel_v:
7
)assignvariableop_30_adam_dense_221_bias_v:K
8assignvariableop_31_adam_lstm_663_lstm_cell_663_kernel_v:	?U
Bassignvariableop_32_adam_lstm_663_lstm_cell_663_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_663_lstm_cell_663_bias_v:	?K
8assignvariableop_34_adam_lstm_664_lstm_cell_664_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_664_lstm_cell_664_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_664_lstm_cell_664_bias_v:	?J
8assignvariableop_37_adam_lstm_665_lstm_cell_665_kernel_v:2(T
Bassignvariableop_38_adam_lstm_665_lstm_cell_665_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_665_lstm_cell_665_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_221_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_221_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_663_lstm_cell_663_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_663_lstm_cell_663_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_663_lstm_cell_663_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_664_lstm_cell_664_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_664_lstm_cell_664_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_664_lstm_cell_664_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_665_lstm_cell_665_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_665_lstm_cell_665_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_665_lstm_cell_665_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_221_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_221_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_663_lstm_cell_663_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_663_lstm_cell_663_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_663_lstm_cell_663_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_664_lstm_cell_664_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_664_lstm_cell_664_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_664_lstm_cell_664_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_665_lstm_cell_665_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_665_lstm_cell_665_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_665_lstm_cell_665_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_221_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_221_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_663_lstm_cell_663_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_663_lstm_cell_663_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_663_lstm_cell_663_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_664_lstm_cell_664_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_664_lstm_cell_664_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_664_lstm_cell_664_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_665_lstm_cell_665_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_665_lstm_cell_665_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_665_lstm_cell_665_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4242091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4242091___redundant_placeholder05
1while_while_cond_4242091___redundant_placeholder15
1while_while_cond_4242091___redundant_placeholder25
1while_while_cond_4242091___redundant_placeholder3
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
while_cond_4244676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4244676___redundant_placeholder05
1while_while_cond_4244676___redundant_placeholder15
1while_while_cond_4244676___redundant_placeholder25
1while_while_cond_4244676___redundant_placeholder3
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4242501

inputs#
lstm_663_4242177:	?#
lstm_663_4242179:	d?
lstm_663_4242181:	?#
lstm_664_4242327:	d?#
lstm_664_4242329:	2?
lstm_664_4242331:	?"
lstm_665_4242477:2("
lstm_665_4242479:
(
lstm_665_4242481:(#
dense_221_4242495:

dense_221_4242497:
identity??!dense_221/StatefulPartitionedCall? lstm_663/StatefulPartitionedCall? lstm_664/StatefulPartitionedCall? lstm_665/StatefulPartitionedCall?
 lstm_663/StatefulPartitionedCallStatefulPartitionedCallinputslstm_663_4242177lstm_663_4242179lstm_663_4242181*
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4242176?
 lstm_664/StatefulPartitionedCallStatefulPartitionedCall)lstm_663/StatefulPartitionedCall:output:0lstm_664_4242327lstm_664_4242329lstm_664_4242331*
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242326?
 lstm_665/StatefulPartitionedCallStatefulPartitionedCall)lstm_664/StatefulPartitionedCall:output:0lstm_665_4242477lstm_665_4242479lstm_665_4242481*
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242476?
!dense_221/StatefulPartitionedCallStatefulPartitionedCall)lstm_665/StatefulPartitionedCall:output:0dense_221_4242495dense_221_4242497*
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
F__inference_dense_221_layer_call_and_return_conditional_losses_4242494y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_221/StatefulPartitionedCall!^lstm_663/StatefulPartitionedCall!^lstm_664/StatefulPartitionedCall!^lstm_665/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall2D
 lstm_663/StatefulPartitionedCall lstm_663/StatefulPartitionedCall2D
 lstm_664/StatefulPartitionedCall lstm_664/StatefulPartitionedCall2D
 lstm_665/StatefulPartitionedCall lstm_665/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4241948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4241948___redundant_placeholder05
1while_while_cond_4241948___redundant_placeholder15
1while_while_cond_4241948___redundant_placeholder25
1while_while_cond_4241948___redundant_placeholder3
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
while_body_4242092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_699_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_699_matmul_readvariableop_resource:	?G
4while_lstm_cell_699_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_699_biasadd_readvariableop_resource:	???*while/lstm_cell_699/BiasAdd/ReadVariableOp?)while/lstm_cell_699/MatMul/ReadVariableOp?+while/lstm_cell_699/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_699/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_699/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_699/addAddV2$while/lstm_cell_699/MatMul:product:0&while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_699/BiasAddBiasAddwhile/lstm_cell_699/add:z:02while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_699/splitSplit,while/lstm_cell_699/split/split_dim:output:0$while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_699/SigmoidSigmoid"while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_1Sigmoid"while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mulMul!while/lstm_cell_699/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_699/ReluRelu"while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_1Mulwhile/lstm_cell_699/Sigmoid:y:0&while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/add_1AddV2while/lstm_cell_699/mul:z:0while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_2Sigmoid"while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_699/Relu_1Reluwhile/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_2Mul!while/lstm_cell_699/Sigmoid_2:y:0(while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_699/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_699/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_699/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_699/BiasAdd/ReadVariableOp*^while/lstm_cell_699/MatMul/ReadVariableOp,^while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_699_biasadd_readvariableop_resource5while_lstm_cell_699_biasadd_readvariableop_resource_0"n
4while_lstm_cell_699_matmul_1_readvariableop_resource6while_lstm_cell_699_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_699_matmul_readvariableop_resource4while_lstm_cell_699_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_699/BiasAdd/ReadVariableOp*while/lstm_cell_699/BiasAdd/ReadVariableOp2V
)while/lstm_cell_699/MatMul/ReadVariableOp)while/lstm_cell_699/MatMul/ReadVariableOp2Z
+while/lstm_cell_699/MatMul_1/ReadVariableOp+while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4245006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245006___redundant_placeholder05
1while_while_cond_4245006___redundant_placeholder15
1while_while_cond_4245006___redundant_placeholder25
1while_while_cond_4245006___redundant_placeholder3
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4241127

inputs(
lstm_cell_699_4241045:	?(
lstm_cell_699_4241047:	d?$
lstm_cell_699_4241049:	?
identity??%lstm_cell_699/StatefulPartitionedCall?while;
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
%lstm_cell_699/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_699_4241045lstm_cell_699_4241047lstm_cell_699_4241049*
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241044n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_699_4241045lstm_cell_699_4241047lstm_cell_699_4241049*
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
while_body_4241058*
condR
while_cond_4241057*K
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
NoOpNoOp&^lstm_cell_699/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_699/StatefulPartitionedCall%lstm_cell_699/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4244248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_699_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_699_matmul_readvariableop_resource:	?G
4while_lstm_cell_699_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_699_biasadd_readvariableop_resource:	???*while/lstm_cell_699/BiasAdd/ReadVariableOp?)while/lstm_cell_699/MatMul/ReadVariableOp?+while/lstm_cell_699/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_699/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_699/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_699/addAddV2$while/lstm_cell_699/MatMul:product:0&while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_699/BiasAddBiasAddwhile/lstm_cell_699/add:z:02while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_699/splitSplit,while/lstm_cell_699/split/split_dim:output:0$while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_699/SigmoidSigmoid"while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_1Sigmoid"while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mulMul!while/lstm_cell_699/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_699/ReluRelu"while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_1Mulwhile/lstm_cell_699/Sigmoid:y:0&while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/add_1AddV2while/lstm_cell_699/mul:z:0while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_2Sigmoid"while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_699/Relu_1Reluwhile/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_2Mul!while/lstm_cell_699/Sigmoid_2:y:0(while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_699/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_699/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_699/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_699/BiasAdd/ReadVariableOp*^while/lstm_cell_699/MatMul/ReadVariableOp,^while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_699_biasadd_readvariableop_resource5while_lstm_cell_699_biasadd_readvariableop_resource_0"n
4while_lstm_cell_699_matmul_1_readvariableop_resource6while_lstm_cell_699_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_699_matmul_readvariableop_resource4while_lstm_cell_699_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_699/BiasAdd/ReadVariableOp*while/lstm_cell_699/BiasAdd/ReadVariableOp2V
)while/lstm_cell_699/MatMul/ReadVariableOp)while/lstm_cell_699/MatMul/ReadVariableOp2Z
+while/lstm_cell_699/MatMul_1/ReadVariableOp+while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4241758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_701_4241782_0:2(/
while_lstm_cell_701_4241784_0:
(+
while_lstm_cell_701_4241786_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_701_4241782:2(-
while_lstm_cell_701_4241784:
()
while_lstm_cell_701_4241786:(??+while/lstm_cell_701/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_701/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_701_4241782_0while_lstm_cell_701_4241784_0while_lstm_cell_701_4241786_0*
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241744?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_701/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_701/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_701/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_701/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_701_4241782while_lstm_cell_701_4241782_0"<
while_lstm_cell_701_4241784while_lstm_cell_701_4241784_0"<
while_lstm_cell_701_4241786while_lstm_cell_701_4241786_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_701/StatefulPartitionedCall+while/lstm_cell_701/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4245293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_700_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_700_matmul_readvariableop_resource:	d?G
4while_lstm_cell_700_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_700_biasadd_readvariableop_resource:	???*while/lstm_cell_700/BiasAdd/ReadVariableOp?)while/lstm_cell_700/MatMul/ReadVariableOp?+while/lstm_cell_700/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_700/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_700/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_700/addAddV2$while/lstm_cell_700/MatMul:product:0&while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_700/BiasAddBiasAddwhile/lstm_cell_700/add:z:02while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_700/splitSplit,while/lstm_cell_700/split/split_dim:output:0$while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_700/SigmoidSigmoid"while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_1Sigmoid"while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mulMul!while/lstm_cell_700/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_700/ReluRelu"while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_1Mulwhile/lstm_cell_700/Sigmoid:y:0&while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/add_1AddV2while/lstm_cell_700/mul:z:0while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_2Sigmoid"while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_700/Relu_1Reluwhile/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_2Mul!while/lstm_cell_700/Sigmoid_2:y:0(while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_700/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_700/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_700/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_700/BiasAdd/ReadVariableOp*^while/lstm_cell_700/MatMul/ReadVariableOp,^while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_700_biasadd_readvariableop_resource5while_lstm_cell_700_biasadd_readvariableop_resource_0"n
4while_lstm_cell_700_matmul_1_readvariableop_resource6while_lstm_cell_700_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_700_matmul_readvariableop_resource4while_lstm_cell_700_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_700/BiasAdd/ReadVariableOp*while/lstm_cell_700/BiasAdd/ReadVariableOp2V
)while/lstm_cell_700/MatMul/ReadVariableOp)while/lstm_cell_700/MatMul/ReadVariableOp2Z
+while/lstm_cell_700/MatMul_1/ReadVariableOp+while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4245909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_701_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_701_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_701_matmul_readvariableop_resource:2(F
4while_lstm_cell_701_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_701_biasadd_readvariableop_resource:(??*while/lstm_cell_701/BiasAdd/ReadVariableOp?)while/lstm_cell_701/MatMul/ReadVariableOp?+while/lstm_cell_701/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_701/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_701/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_701/addAddV2$while/lstm_cell_701/MatMul:product:0&while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_701/BiasAddBiasAddwhile/lstm_cell_701/add:z:02while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_701/splitSplit,while/lstm_cell_701/split/split_dim:output:0$while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_701/SigmoidSigmoid"while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_1Sigmoid"while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mulMul!while/lstm_cell_701/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_701/ReluRelu"while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_1Mulwhile/lstm_cell_701/Sigmoid:y:0&while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/add_1AddV2while/lstm_cell_701/mul:z:0while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_2Sigmoid"while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_701/Relu_1Reluwhile/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_2Mul!while/lstm_cell_701/Sigmoid_2:y:0(while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_701/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_701/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_701/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_701/BiasAdd/ReadVariableOp*^while/lstm_cell_701/MatMul/ReadVariableOp,^while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_701_biasadd_readvariableop_resource5while_lstm_cell_701_biasadd_readvariableop_resource_0"n
4while_lstm_cell_701_matmul_1_readvariableop_resource6while_lstm_cell_701_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_701_matmul_readvariableop_resource4while_lstm_cell_701_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_701/BiasAdd/ReadVariableOp*while/lstm_cell_701/BiasAdd/ReadVariableOp2V
)while/lstm_cell_701/MatMul/ReadVariableOp)while/lstm_cell_701/MatMul/ReadVariableOp2Z
+while/lstm_cell_701/MatMul_1/ReadVariableOp+while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_665_while_cond_4244054.
*lstm_665_while_lstm_665_while_loop_counter4
0lstm_665_while_lstm_665_while_maximum_iterations
lstm_665_while_placeholder 
lstm_665_while_placeholder_1 
lstm_665_while_placeholder_2 
lstm_665_while_placeholder_30
,lstm_665_while_less_lstm_665_strided_slice_1G
Clstm_665_while_lstm_665_while_cond_4244054___redundant_placeholder0G
Clstm_665_while_lstm_665_while_cond_4244054___redundant_placeholder1G
Clstm_665_while_lstm_665_while_cond_4244054___redundant_placeholder2G
Clstm_665_while_lstm_665_while_cond_4244054___redundant_placeholder3
lstm_665_while_identity
?
lstm_665/while/LessLesslstm_665_while_placeholder,lstm_665_while_less_lstm_665_strided_slice_1*
T0*
_output_shapes
: ]
lstm_665/while/IdentityIdentitylstm_665/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_665_while_identity lstm_665/while/Identity:output:0*(
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
while_cond_4241057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4241057___redundant_placeholder05
1while_while_cond_4241057___redundant_placeholder15
1while_while_cond_4241057___redundant_placeholder25
1while_while_cond_4241057___redundant_placeholder3
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
while_body_4242773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_700_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_700_matmul_readvariableop_resource:	d?G
4while_lstm_cell_700_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_700_biasadd_readvariableop_resource:	???*while/lstm_cell_700/BiasAdd/ReadVariableOp?)while/lstm_cell_700/MatMul/ReadVariableOp?+while/lstm_cell_700/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_700/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_700/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_700/addAddV2$while/lstm_cell_700/MatMul:product:0&while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_700/BiasAddBiasAddwhile/lstm_cell_700/add:z:02while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_700/splitSplit,while/lstm_cell_700/split/split_dim:output:0$while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_700/SigmoidSigmoid"while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_1Sigmoid"while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mulMul!while/lstm_cell_700/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_700/ReluRelu"while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_1Mulwhile/lstm_cell_700/Sigmoid:y:0&while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/add_1AddV2while/lstm_cell_700/mul:z:0while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_2Sigmoid"while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_700/Relu_1Reluwhile/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_2Mul!while/lstm_cell_700/Sigmoid_2:y:0(while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_700/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_700/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_700/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_700/BiasAdd/ReadVariableOp*^while/lstm_cell_700/MatMul/ReadVariableOp,^while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_700_biasadd_readvariableop_resource5while_lstm_cell_700_biasadd_readvariableop_resource_0"n
4while_lstm_cell_700_matmul_1_readvariableop_resource6while_lstm_cell_700_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_700_matmul_readvariableop_resource4while_lstm_cell_700_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_700/BiasAdd/ReadVariableOp*while/lstm_cell_700/BiasAdd/ReadVariableOp2V
)while/lstm_cell_700/MatMul/ReadVariableOp)while/lstm_cell_700/MatMul/ReadVariableOp2Z
+while/lstm_cell_700/MatMul_1/ReadVariableOp+while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_699_layer_call_fn_4246046

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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241190o
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
while_body_4244391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_699_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_699_matmul_readvariableop_resource:	?G
4while_lstm_cell_699_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_699_biasadd_readvariableop_resource:	???*while/lstm_cell_699/BiasAdd/ReadVariableOp?)while/lstm_cell_699/MatMul/ReadVariableOp?+while/lstm_cell_699/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_699/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_699/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_699/addAddV2$while/lstm_cell_699/MatMul:product:0&while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_699/BiasAddBiasAddwhile/lstm_cell_699/add:z:02while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_699/splitSplit,while/lstm_cell_699/split/split_dim:output:0$while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_699/SigmoidSigmoid"while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_1Sigmoid"while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mulMul!while/lstm_cell_699/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_699/ReluRelu"while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_1Mulwhile/lstm_cell_699/Sigmoid:y:0&while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/add_1AddV2while/lstm_cell_699/mul:z:0while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_2Sigmoid"while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_699/Relu_1Reluwhile/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_2Mul!while/lstm_cell_699/Sigmoid_2:y:0(while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_699/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_699/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_699/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_699/BiasAdd/ReadVariableOp*^while/lstm_cell_699/MatMul/ReadVariableOp,^while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_699_biasadd_readvariableop_resource5while_lstm_cell_699_biasadd_readvariableop_resource_0"n
4while_lstm_cell_699_matmul_1_readvariableop_resource6while_lstm_cell_699_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_699_matmul_readvariableop_resource4while_lstm_cell_699_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_699/BiasAdd/ReadVariableOp*while/lstm_cell_699/BiasAdd/ReadVariableOp2V
)while/lstm_cell_699/MatMul/ReadVariableOp)while/lstm_cell_699/MatMul/ReadVariableOp2Z
+while/lstm_cell_699/MatMul_1/ReadVariableOp+while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242692

inputs>
,lstm_cell_701_matmul_readvariableop_resource:2(@
.lstm_cell_701_matmul_1_readvariableop_resource:
(;
-lstm_cell_701_biasadd_readvariableop_resource:(
identity??$lstm_cell_701/BiasAdd/ReadVariableOp?#lstm_cell_701/MatMul/ReadVariableOp?%lstm_cell_701/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_701/MatMul/ReadVariableOpReadVariableOp,lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_701/MatMulMatMulstrided_slice_2:output:0+lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_701/MatMul_1MatMulzeros:output:0-lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_701/addAddV2lstm_cell_701/MatMul:product:0 lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_701/BiasAddBiasAddlstm_cell_701/add:z:0,lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_701/splitSplit&lstm_cell_701/split/split_dim:output:0lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_701/SigmoidSigmoidlstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_1Sigmoidlstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_701/mulMullstm_cell_701/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_701/ReluRelulstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_1Mullstm_cell_701/Sigmoid:y:0 lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_701/add_1AddV2lstm_cell_701/mul:z:0lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_2Sigmoidlstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_701/Relu_1Relulstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_2Mullstm_cell_701/Sigmoid_2:y:0"lstm_cell_701/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_701_matmul_readvariableop_resource.lstm_cell_701_matmul_1_readvariableop_resource-lstm_cell_701_biasadd_readvariableop_resource*
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
while_body_4242608*
condR
while_cond_4242607*K
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
NoOpNoOp%^lstm_cell_701/BiasAdd/ReadVariableOp$^lstm_cell_701/MatMul/ReadVariableOp&^lstm_cell_701/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_701/BiasAdd/ReadVariableOp$lstm_cell_701/BiasAdd/ReadVariableOp2J
#lstm_cell_701/MatMul/ReadVariableOp#lstm_cell_701/MatMul/ReadVariableOp2N
%lstm_cell_701/MatMul_1/ReadVariableOp%lstm_cell_701/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4241599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_700_4241623_0:	d?0
while_lstm_cell_700_4241625_0:	2?,
while_lstm_cell_700_4241627_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_700_4241623:	d?.
while_lstm_cell_700_4241625:	2?*
while_lstm_cell_700_4241627:	???+while/lstm_cell_700/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_700/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_700_4241623_0while_lstm_cell_700_4241625_0while_lstm_cell_700_4241627_0*
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4241540?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_700/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_700/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_700/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_700/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_700_4241623while_lstm_cell_700_4241623_0"<
while_lstm_cell_700_4241625while_lstm_cell_700_4241625_0"<
while_lstm_cell_700_4241627while_lstm_cell_700_4241627_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_700/StatefulPartitionedCall+while/lstm_cell_700/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244475
inputs_0?
,lstm_cell_699_matmul_readvariableop_resource:	?A
.lstm_cell_699_matmul_1_readvariableop_resource:	d?<
-lstm_cell_699_biasadd_readvariableop_resource:	?
identity??$lstm_cell_699/BiasAdd/ReadVariableOp?#lstm_cell_699/MatMul/ReadVariableOp?%lstm_cell_699/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_699/MatMul/ReadVariableOpReadVariableOp,lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_699/MatMulMatMulstrided_slice_2:output:0+lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_699/MatMul_1MatMulzeros:output:0-lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_699/addAddV2lstm_cell_699/MatMul:product:0 lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_699/BiasAddBiasAddlstm_cell_699/add:z:0,lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_699/splitSplit&lstm_cell_699/split/split_dim:output:0lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_699/SigmoidSigmoidlstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_1Sigmoidlstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_699/mulMullstm_cell_699/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_699/ReluRelulstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_1Mullstm_cell_699/Sigmoid:y:0 lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_699/add_1AddV2lstm_cell_699/mul:z:0lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_2Sigmoidlstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_699/Relu_1Relulstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_2Mullstm_cell_699/Sigmoid_2:y:0"lstm_cell_699/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_699_matmul_readvariableop_resource.lstm_cell_699_matmul_1_readvariableop_resource-lstm_cell_699_biasadd_readvariableop_resource*
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
while_body_4244391*
condR
while_cond_4244390*K
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
NoOpNoOp%^lstm_cell_699/BiasAdd/ReadVariableOp$^lstm_cell_699/MatMul/ReadVariableOp&^lstm_cell_699/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_699/BiasAdd/ReadVariableOp$lstm_cell_699/BiasAdd/ReadVariableOp2J
#lstm_cell_699/MatMul/ReadVariableOp#lstm_cell_699/MatMul/ReadVariableOp2N
%lstm_cell_699/MatMul_1/ReadVariableOp%lstm_cell_699/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_221_layer_call_fn_4243142
lstm_663_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_663_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243090o
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
_user_specified_namelstm_663_input
?
?
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4246274

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
?
?
*__inference_lstm_665_layer_call_fn_4245421

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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242692o
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
while_cond_4241598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4241598___redundant_placeholder05
1while_while_cond_4241598___redundant_placeholder15
1while_while_cond_4241598___redundant_placeholder25
1while_while_cond_4241598___redundant_placeholder3
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
while_body_4245766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_701_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_701_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_701_matmul_readvariableop_resource:2(F
4while_lstm_cell_701_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_701_biasadd_readvariableop_resource:(??*while/lstm_cell_701/BiasAdd/ReadVariableOp?)while/lstm_cell_701/MatMul/ReadVariableOp?+while/lstm_cell_701/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_701/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_701/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_701/addAddV2$while/lstm_cell_701/MatMul:product:0&while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_701/BiasAddBiasAddwhile/lstm_cell_701/add:z:02while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_701/splitSplit,while/lstm_cell_701/split/split_dim:output:0$while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_701/SigmoidSigmoid"while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_1Sigmoid"while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mulMul!while/lstm_cell_701/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_701/ReluRelu"while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_1Mulwhile/lstm_cell_701/Sigmoid:y:0&while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/add_1AddV2while/lstm_cell_701/mul:z:0while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_2Sigmoid"while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_701/Relu_1Reluwhile/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_2Mul!while/lstm_cell_701/Sigmoid_2:y:0(while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_701/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_701/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_701/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_701/BiasAdd/ReadVariableOp*^while/lstm_cell_701/MatMul/ReadVariableOp,^while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_701_biasadd_readvariableop_resource5while_lstm_cell_701_biasadd_readvariableop_resource_0"n
4while_lstm_cell_701_matmul_1_readvariableop_resource6while_lstm_cell_701_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_701_matmul_readvariableop_resource4while_lstm_cell_701_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_701/BiasAdd/ReadVariableOp*while/lstm_cell_701/BiasAdd/ReadVariableOp2V
)while/lstm_cell_701/MatMul/ReadVariableOp)while/lstm_cell_701/MatMul/ReadVariableOp2Z
+while/lstm_cell_701/MatMul_1/ReadVariableOp+while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_665_while_cond_4243627.
*lstm_665_while_lstm_665_while_loop_counter4
0lstm_665_while_lstm_665_while_maximum_iterations
lstm_665_while_placeholder 
lstm_665_while_placeholder_1 
lstm_665_while_placeholder_2 
lstm_665_while_placeholder_30
,lstm_665_while_less_lstm_665_strided_slice_1G
Clstm_665_while_lstm_665_while_cond_4243627___redundant_placeholder0G
Clstm_665_while_lstm_665_while_cond_4243627___redundant_placeholder1G
Clstm_665_while_lstm_665_while_cond_4243627___redundant_placeholder2G
Clstm_665_while_lstm_665_while_cond_4243627___redundant_placeholder3
lstm_665_while_identity
?
lstm_665/while/LessLesslstm_665_while_placeholder,lstm_665_while_less_lstm_665_strided_slice_1*
T0*
_output_shapes
: ]
lstm_665/while/IdentityIdentitylstm_665/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_665_while_identity lstm_665/while/Identity:output:0*(
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

lstm_664_while_body_4243489.
*lstm_664_while_lstm_664_while_loop_counter4
0lstm_664_while_lstm_664_while_maximum_iterations
lstm_664_while_placeholder 
lstm_664_while_placeholder_1 
lstm_664_while_placeholder_2 
lstm_664_while_placeholder_3-
)lstm_664_while_lstm_664_strided_slice_1_0i
elstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0:	d?R
?lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?M
>lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
lstm_664_while_identity
lstm_664_while_identity_1
lstm_664_while_identity_2
lstm_664_while_identity_3
lstm_664_while_identity_4
lstm_664_while_identity_5+
'lstm_664_while_lstm_664_strided_slice_1g
clstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensorN
;lstm_664_while_lstm_cell_700_matmul_readvariableop_resource:	d?P
=lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource:	2?K
<lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource:	???3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp?2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp?4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp?
@lstm_664/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_664/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensor_0lstm_664_while_placeholderIlstm_664/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp=lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_664/while/lstm_cell_700/MatMulMatMul9lstm_664/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp?lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_664/while/lstm_cell_700/MatMul_1MatMullstm_664_while_placeholder_2<lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_664/while/lstm_cell_700/addAddV2-lstm_664/while/lstm_cell_700/MatMul:product:0/lstm_664/while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp>lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_664/while/lstm_cell_700/BiasAddBiasAdd$lstm_664/while/lstm_cell_700/add:z:0;lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_664/while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_664/while/lstm_cell_700/splitSplit5lstm_664/while/lstm_cell_700/split/split_dim:output:0-lstm_664/while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_664/while/lstm_cell_700/SigmoidSigmoid+lstm_664/while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_664/while/lstm_cell_700/Sigmoid_1Sigmoid+lstm_664/while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_664/while/lstm_cell_700/mulMul*lstm_664/while/lstm_cell_700/Sigmoid_1:y:0lstm_664_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_664/while/lstm_cell_700/ReluRelu+lstm_664/while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_664/while/lstm_cell_700/mul_1Mul(lstm_664/while/lstm_cell_700/Sigmoid:y:0/lstm_664/while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_664/while/lstm_cell_700/add_1AddV2$lstm_664/while/lstm_cell_700/mul:z:0&lstm_664/while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_664/while/lstm_cell_700/Sigmoid_2Sigmoid+lstm_664/while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_664/while/lstm_cell_700/Relu_1Relu&lstm_664/while/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_664/while/lstm_cell_700/mul_2Mul*lstm_664/while/lstm_cell_700/Sigmoid_2:y:01lstm_664/while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_664/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_664_while_placeholder_1lstm_664_while_placeholder&lstm_664/while/lstm_cell_700/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_664/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_664/while/addAddV2lstm_664_while_placeholderlstm_664/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_664/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_664/while/add_1AddV2*lstm_664_while_lstm_664_while_loop_counterlstm_664/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_664/while/IdentityIdentitylstm_664/while/add_1:z:0^lstm_664/while/NoOp*
T0*
_output_shapes
: ?
lstm_664/while/Identity_1Identity0lstm_664_while_lstm_664_while_maximum_iterations^lstm_664/while/NoOp*
T0*
_output_shapes
: t
lstm_664/while/Identity_2Identitylstm_664/while/add:z:0^lstm_664/while/NoOp*
T0*
_output_shapes
: ?
lstm_664/while/Identity_3IdentityClstm_664/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_664/while/NoOp*
T0*
_output_shapes
: ?
lstm_664/while/Identity_4Identity&lstm_664/while/lstm_cell_700/mul_2:z:0^lstm_664/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_664/while/Identity_5Identity&lstm_664/while/lstm_cell_700/add_1:z:0^lstm_664/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_664/while/NoOpNoOp4^lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp3^lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp5^lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_664_while_identity lstm_664/while/Identity:output:0"?
lstm_664_while_identity_1"lstm_664/while/Identity_1:output:0"?
lstm_664_while_identity_2"lstm_664/while/Identity_2:output:0"?
lstm_664_while_identity_3"lstm_664/while/Identity_3:output:0"?
lstm_664_while_identity_4"lstm_664/while/Identity_4:output:0"?
lstm_664_while_identity_5"lstm_664/while/Identity_5:output:0"T
'lstm_664_while_lstm_664_strided_slice_1)lstm_664_while_lstm_664_strided_slice_1_0"~
<lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource>lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0"?
=lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource?lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0"|
;lstm_664_while_lstm_cell_700_matmul_readvariableop_resource=lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0"?
clstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensorelstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp2h
2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp2l
4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4242391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4242391___redundant_placeholder05
1while_while_cond_4242391___redundant_placeholder15
1while_while_cond_4242391___redundant_placeholder25
1while_while_cond_4242391___redundant_placeholder3
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
while_cond_4242772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4242772___redundant_placeholder05
1while_while_cond_4242772___redundant_placeholder15
1while_while_cond_4242772___redundant_placeholder25
1while_while_cond_4242772___redundant_placeholder3
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
while_body_4242242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_700_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_700_matmul_readvariableop_resource:	d?G
4while_lstm_cell_700_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_700_biasadd_readvariableop_resource:	???*while/lstm_cell_700/BiasAdd/ReadVariableOp?)while/lstm_cell_700/MatMul/ReadVariableOp?+while/lstm_cell_700/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_700/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_700/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_700/addAddV2$while/lstm_cell_700/MatMul:product:0&while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_700/BiasAddBiasAddwhile/lstm_cell_700/add:z:02while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_700/splitSplit,while/lstm_cell_700/split/split_dim:output:0$while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_700/SigmoidSigmoid"while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_1Sigmoid"while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mulMul!while/lstm_cell_700/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_700/ReluRelu"while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_1Mulwhile/lstm_cell_700/Sigmoid:y:0&while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/add_1AddV2while/lstm_cell_700/mul:z:0while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_2Sigmoid"while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_700/Relu_1Reluwhile/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_2Mul!while/lstm_cell_700/Sigmoid_2:y:0(while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_700/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_700/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_700/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_700/BiasAdd/ReadVariableOp*^while/lstm_cell_700/MatMul/ReadVariableOp,^while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_700_biasadd_readvariableop_resource5while_lstm_cell_700_biasadd_readvariableop_resource_0"n
4while_lstm_cell_700_matmul_1_readvariableop_resource6while_lstm_cell_700_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_700_matmul_readvariableop_resource4while_lstm_cell_700_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_700/BiasAdd/ReadVariableOp*while/lstm_cell_700/BiasAdd/ReadVariableOp2V
)while/lstm_cell_700/MatMul/ReadVariableOp)while/lstm_cell_700/MatMul/ReadVariableOp2Z
+while/lstm_cell_700/MatMul_1/ReadVariableOp+while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4242176

inputs?
,lstm_cell_699_matmul_readvariableop_resource:	?A
.lstm_cell_699_matmul_1_readvariableop_resource:	d?<
-lstm_cell_699_biasadd_readvariableop_resource:	?
identity??$lstm_cell_699/BiasAdd/ReadVariableOp?#lstm_cell_699/MatMul/ReadVariableOp?%lstm_cell_699/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_699/MatMul/ReadVariableOpReadVariableOp,lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_699/MatMulMatMulstrided_slice_2:output:0+lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_699/MatMul_1MatMulzeros:output:0-lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_699/addAddV2lstm_cell_699/MatMul:product:0 lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_699/BiasAddBiasAddlstm_cell_699/add:z:0,lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_699/splitSplit&lstm_cell_699/split/split_dim:output:0lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_699/SigmoidSigmoidlstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_1Sigmoidlstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_699/mulMullstm_cell_699/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_699/ReluRelulstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_1Mullstm_cell_699/Sigmoid:y:0 lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_699/add_1AddV2lstm_cell_699/mul:z:0lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_2Sigmoidlstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_699/Relu_1Relulstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_2Mullstm_cell_699/Sigmoid_2:y:0"lstm_cell_699/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_699_matmul_readvariableop_resource.lstm_cell_699_matmul_1_readvariableop_resource-lstm_cell_699_biasadd_readvariableop_resource*
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
while_body_4242092*
condR
while_cond_4242091*K
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
NoOpNoOp%^lstm_cell_699/BiasAdd/ReadVariableOp$^lstm_cell_699/MatMul/ReadVariableOp&^lstm_cell_699/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_699/BiasAdd/ReadVariableOp$lstm_cell_699/BiasAdd/ReadVariableOp2J
#lstm_cell_699/MatMul/ReadVariableOp#lstm_cell_699/MatMul/ReadVariableOp2N
%lstm_cell_699/MatMul_1/ReadVariableOp%lstm_cell_699/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_664_while_cond_4243488.
*lstm_664_while_lstm_664_while_loop_counter4
0lstm_664_while_lstm_664_while_maximum_iterations
lstm_664_while_placeholder 
lstm_664_while_placeholder_1 
lstm_664_while_placeholder_2 
lstm_664_while_placeholder_30
,lstm_664_while_less_lstm_664_strided_slice_1G
Clstm_664_while_lstm_664_while_cond_4243488___redundant_placeholder0G
Clstm_664_while_lstm_664_while_cond_4243488___redundant_placeholder1G
Clstm_664_while_lstm_664_while_cond_4243488___redundant_placeholder2G
Clstm_664_while_lstm_664_while_cond_4243488___redundant_placeholder3
lstm_664_while_identity
?
lstm_664/while/LessLesslstm_664_while_placeholder,lstm_664_while_less_lstm_664_strided_slice_1*
T0*
_output_shapes
: ]
lstm_664/while/IdentityIdentitylstm_664/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_664_while_identity lstm_664/while/Identity:output:0*(
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
*__inference_lstm_665_layer_call_fn_4245399
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242018o
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
?
E__inference_lstm_663_layer_call_and_return_conditional_losses_4241318

inputs(
lstm_cell_699_4241236:	?(
lstm_cell_699_4241238:	d?$
lstm_cell_699_4241240:	?
identity??%lstm_cell_699/StatefulPartitionedCall?while;
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
%lstm_cell_699/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_699_4241236lstm_cell_699_4241238lstm_cell_699_4241240*
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241190n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_699_4241236lstm_cell_699_4241238lstm_cell_699_4241240*
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
while_body_4241249*
condR
while_cond_4241248*K
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
NoOpNoOp&^lstm_cell_699/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_699/StatefulPartitionedCall%lstm_cell_699/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4242608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_701_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_701_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_701_matmul_readvariableop_resource:2(F
4while_lstm_cell_701_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_701_biasadd_readvariableop_resource:(??*while/lstm_cell_701/BiasAdd/ReadVariableOp?)while/lstm_cell_701/MatMul/ReadVariableOp?+while/lstm_cell_701/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_701/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_701/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_701/addAddV2$while/lstm_cell_701/MatMul:product:0&while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_701/BiasAddBiasAddwhile/lstm_cell_701/add:z:02while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_701/splitSplit,while/lstm_cell_701/split/split_dim:output:0$while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_701/SigmoidSigmoid"while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_1Sigmoid"while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mulMul!while/lstm_cell_701/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_701/ReluRelu"while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_1Mulwhile/lstm_cell_701/Sigmoid:y:0&while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/add_1AddV2while/lstm_cell_701/mul:z:0while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_2Sigmoid"while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_701/Relu_1Reluwhile/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_2Mul!while/lstm_cell_701/Sigmoid_2:y:0(while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_701/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_701/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_701/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_701/BiasAdd/ReadVariableOp*^while/lstm_cell_701/MatMul/ReadVariableOp,^while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_701_biasadd_readvariableop_resource5while_lstm_cell_701_biasadd_readvariableop_resource_0"n
4while_lstm_cell_701_matmul_1_readvariableop_resource6while_lstm_cell_701_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_701_matmul_readvariableop_resource4while_lstm_cell_701_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_701/BiasAdd/ReadVariableOp*while/lstm_cell_701/BiasAdd/ReadVariableOp2V
)while/lstm_cell_701/MatMul/ReadVariableOp)while/lstm_cell_701/MatMul/ReadVariableOp2Z
+while/lstm_cell_701/MatMul_1/ReadVariableOp+while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4241757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4241757___redundant_placeholder05
1while_while_cond_4241757___redundant_placeholder15
1while_while_cond_4241757___redundant_placeholder25
1while_while_cond_4241757___redundant_placeholder3
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
while_body_4245623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_701_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_701_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_701_matmul_readvariableop_resource:2(F
4while_lstm_cell_701_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_701_biasadd_readvariableop_resource:(??*while/lstm_cell_701/BiasAdd/ReadVariableOp?)while/lstm_cell_701/MatMul/ReadVariableOp?+while/lstm_cell_701/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_701/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_701/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_701/addAddV2$while/lstm_cell_701/MatMul:product:0&while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_701/BiasAddBiasAddwhile/lstm_cell_701/add:z:02while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_701/splitSplit,while/lstm_cell_701/split/split_dim:output:0$while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_701/SigmoidSigmoid"while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_1Sigmoid"while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mulMul!while/lstm_cell_701/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_701/ReluRelu"while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_1Mulwhile/lstm_cell_701/Sigmoid:y:0&while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/add_1AddV2while/lstm_cell_701/mul:z:0while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_2Sigmoid"while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_701/Relu_1Reluwhile/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_2Mul!while/lstm_cell_701/Sigmoid_2:y:0(while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_701/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_701/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_701/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_701/BiasAdd/ReadVariableOp*^while/lstm_cell_701/MatMul/ReadVariableOp,^while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_701_biasadd_readvariableop_resource5while_lstm_cell_701_biasadd_readvariableop_resource_0"n
4while_lstm_cell_701_matmul_1_readvariableop_resource6while_lstm_cell_701_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_701_matmul_readvariableop_resource4while_lstm_cell_701_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_701/BiasAdd/ReadVariableOp*while/lstm_cell_701/BiasAdd/ReadVariableOp2V
)while/lstm_cell_701/MatMul/ReadVariableOp)while/lstm_cell_701/MatMul/ReadVariableOp2Z
+while/lstm_cell_701/MatMul_1/ReadVariableOp+while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245850

inputs>
,lstm_cell_701_matmul_readvariableop_resource:2(@
.lstm_cell_701_matmul_1_readvariableop_resource:
(;
-lstm_cell_701_biasadd_readvariableop_resource:(
identity??$lstm_cell_701/BiasAdd/ReadVariableOp?#lstm_cell_701/MatMul/ReadVariableOp?%lstm_cell_701/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_701/MatMul/ReadVariableOpReadVariableOp,lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_701/MatMulMatMulstrided_slice_2:output:0+lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_701/MatMul_1MatMulzeros:output:0-lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_701/addAddV2lstm_cell_701/MatMul:product:0 lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_701/BiasAddBiasAddlstm_cell_701/add:z:0,lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_701/splitSplit&lstm_cell_701/split/split_dim:output:0lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_701/SigmoidSigmoidlstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_1Sigmoidlstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_701/mulMullstm_cell_701/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_701/ReluRelulstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_1Mullstm_cell_701/Sigmoid:y:0 lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_701/add_1AddV2lstm_cell_701/mul:z:0lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_2Sigmoidlstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_701/Relu_1Relulstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_2Mullstm_cell_701/Sigmoid_2:y:0"lstm_cell_701/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_701_matmul_readvariableop_resource.lstm_cell_701_matmul_1_readvariableop_resource-lstm_cell_701_biasadd_readvariableop_resource*
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
while_body_4245766*
condR
while_cond_4245765*K
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
NoOpNoOp%^lstm_cell_701/BiasAdd/ReadVariableOp$^lstm_cell_701/MatMul/ReadVariableOp&^lstm_cell_701/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_701/BiasAdd/ReadVariableOp$lstm_cell_701/BiasAdd/ReadVariableOp2J
#lstm_cell_701/MatMul/ReadVariableOp#lstm_cell_701/MatMul/ReadVariableOp2N
%lstm_cell_701/MatMul_1/ReadVariableOp%lstm_cell_701/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243718

inputsH
5lstm_663_lstm_cell_699_matmul_readvariableop_resource:	?J
7lstm_663_lstm_cell_699_matmul_1_readvariableop_resource:	d?E
6lstm_663_lstm_cell_699_biasadd_readvariableop_resource:	?H
5lstm_664_lstm_cell_700_matmul_readvariableop_resource:	d?J
7lstm_664_lstm_cell_700_matmul_1_readvariableop_resource:	2?E
6lstm_664_lstm_cell_700_biasadd_readvariableop_resource:	?G
5lstm_665_lstm_cell_701_matmul_readvariableop_resource:2(I
7lstm_665_lstm_cell_701_matmul_1_readvariableop_resource:
(D
6lstm_665_lstm_cell_701_biasadd_readvariableop_resource:(:
(dense_221_matmul_readvariableop_resource:
7
)dense_221_biasadd_readvariableop_resource:
identity?? dense_221/BiasAdd/ReadVariableOp?dense_221/MatMul/ReadVariableOp?-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp?,lstm_663/lstm_cell_699/MatMul/ReadVariableOp?.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp?lstm_663/while?-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp?,lstm_664/lstm_cell_700/MatMul/ReadVariableOp?.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp?lstm_664/while?-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp?,lstm_665/lstm_cell_701/MatMul/ReadVariableOp?.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp?lstm_665/whileD
lstm_663/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_663/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_663/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_663/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_sliceStridedSlicelstm_663/Shape:output:0%lstm_663/strided_slice/stack:output:0'lstm_663/strided_slice/stack_1:output:0'lstm_663/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_663/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_663/zeros/packedPacklstm_663/strided_slice:output:0 lstm_663/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_663/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_663/zerosFilllstm_663/zeros/packed:output:0lstm_663/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_663/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_663/zeros_1/packedPacklstm_663/strided_slice:output:0"lstm_663/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_663/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_663/zeros_1Fill lstm_663/zeros_1/packed:output:0lstm_663/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_663/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_663/transpose	Transposeinputs lstm_663/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_663/Shape_1Shapelstm_663/transpose:y:0*
T0*
_output_shapes
:h
lstm_663/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_663/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_663/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_slice_1StridedSlicelstm_663/Shape_1:output:0'lstm_663/strided_slice_1/stack:output:0)lstm_663/strided_slice_1/stack_1:output:0)lstm_663/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_663/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_663/TensorArrayV2TensorListReserve-lstm_663/TensorArrayV2/element_shape:output:0!lstm_663/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_663/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_663/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_663/transpose:y:0Glstm_663/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_663/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_663/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_663/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_slice_2StridedSlicelstm_663/transpose:y:0'lstm_663/strided_slice_2/stack:output:0)lstm_663/strided_slice_2/stack_1:output:0)lstm_663/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_663/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp5lstm_663_lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_663/lstm_cell_699/MatMulMatMul!lstm_663/strided_slice_2:output:04lstm_663/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp7lstm_663_lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_663/lstm_cell_699/MatMul_1MatMullstm_663/zeros:output:06lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_663/lstm_cell_699/addAddV2'lstm_663/lstm_cell_699/MatMul:product:0)lstm_663/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp6lstm_663_lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_663/lstm_cell_699/BiasAddBiasAddlstm_663/lstm_cell_699/add:z:05lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_663/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_663/lstm_cell_699/splitSplit/lstm_663/lstm_cell_699/split/split_dim:output:0'lstm_663/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_663/lstm_cell_699/SigmoidSigmoid%lstm_663/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_663/lstm_cell_699/Sigmoid_1Sigmoid%lstm_663/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/mulMul$lstm_663/lstm_cell_699/Sigmoid_1:y:0lstm_663/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_663/lstm_cell_699/ReluRelu%lstm_663/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/mul_1Mul"lstm_663/lstm_cell_699/Sigmoid:y:0)lstm_663/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/add_1AddV2lstm_663/lstm_cell_699/mul:z:0 lstm_663/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_663/lstm_cell_699/Sigmoid_2Sigmoid%lstm_663/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_663/lstm_cell_699/Relu_1Relu lstm_663/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/mul_2Mul$lstm_663/lstm_cell_699/Sigmoid_2:y:0+lstm_663/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_663/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_663/TensorArrayV2_1TensorListReserve/lstm_663/TensorArrayV2_1/element_shape:output:0!lstm_663/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_663/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_663/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_663/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_663/whileWhile$lstm_663/while/loop_counter:output:0*lstm_663/while/maximum_iterations:output:0lstm_663/time:output:0!lstm_663/TensorArrayV2_1:handle:0lstm_663/zeros:output:0lstm_663/zeros_1:output:0!lstm_663/strided_slice_1:output:0@lstm_663/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_663_lstm_cell_699_matmul_readvariableop_resource7lstm_663_lstm_cell_699_matmul_1_readvariableop_resource6lstm_663_lstm_cell_699_biasadd_readvariableop_resource*
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
lstm_663_while_body_4243350*'
condR
lstm_663_while_cond_4243349*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_663/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_663/TensorArrayV2Stack/TensorListStackTensorListStacklstm_663/while:output:3Blstm_663/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_663/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_663/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_663/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_slice_3StridedSlice4lstm_663/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_663/strided_slice_3/stack:output:0)lstm_663/strided_slice_3/stack_1:output:0)lstm_663/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_663/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_663/transpose_1	Transpose4lstm_663/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_663/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_663/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_664/ShapeShapelstm_663/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_664/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_664/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_664/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_sliceStridedSlicelstm_664/Shape:output:0%lstm_664/strided_slice/stack:output:0'lstm_664/strided_slice/stack_1:output:0'lstm_664/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_664/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_664/zeros/packedPacklstm_664/strided_slice:output:0 lstm_664/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_664/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_664/zerosFilllstm_664/zeros/packed:output:0lstm_664/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_664/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_664/zeros_1/packedPacklstm_664/strided_slice:output:0"lstm_664/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_664/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_664/zeros_1Fill lstm_664/zeros_1/packed:output:0lstm_664/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_664/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_664/transpose	Transposelstm_663/transpose_1:y:0 lstm_664/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_664/Shape_1Shapelstm_664/transpose:y:0*
T0*
_output_shapes
:h
lstm_664/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_664/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_664/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_slice_1StridedSlicelstm_664/Shape_1:output:0'lstm_664/strided_slice_1/stack:output:0)lstm_664/strided_slice_1/stack_1:output:0)lstm_664/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_664/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_664/TensorArrayV2TensorListReserve-lstm_664/TensorArrayV2/element_shape:output:0!lstm_664/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_664/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_664/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_664/transpose:y:0Glstm_664/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_664/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_664/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_664/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_slice_2StridedSlicelstm_664/transpose:y:0'lstm_664/strided_slice_2/stack:output:0)lstm_664/strided_slice_2/stack_1:output:0)lstm_664/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_664/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp5lstm_664_lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_664/lstm_cell_700/MatMulMatMul!lstm_664/strided_slice_2:output:04lstm_664/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp7lstm_664_lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_664/lstm_cell_700/MatMul_1MatMullstm_664/zeros:output:06lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_664/lstm_cell_700/addAddV2'lstm_664/lstm_cell_700/MatMul:product:0)lstm_664/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp6lstm_664_lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_664/lstm_cell_700/BiasAddBiasAddlstm_664/lstm_cell_700/add:z:05lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_664/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_664/lstm_cell_700/splitSplit/lstm_664/lstm_cell_700/split/split_dim:output:0'lstm_664/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_664/lstm_cell_700/SigmoidSigmoid%lstm_664/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_664/lstm_cell_700/Sigmoid_1Sigmoid%lstm_664/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/mulMul$lstm_664/lstm_cell_700/Sigmoid_1:y:0lstm_664/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_664/lstm_cell_700/ReluRelu%lstm_664/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/mul_1Mul"lstm_664/lstm_cell_700/Sigmoid:y:0)lstm_664/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/add_1AddV2lstm_664/lstm_cell_700/mul:z:0 lstm_664/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_664/lstm_cell_700/Sigmoid_2Sigmoid%lstm_664/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_664/lstm_cell_700/Relu_1Relu lstm_664/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/mul_2Mul$lstm_664/lstm_cell_700/Sigmoid_2:y:0+lstm_664/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_664/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_664/TensorArrayV2_1TensorListReserve/lstm_664/TensorArrayV2_1/element_shape:output:0!lstm_664/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_664/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_664/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_664/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_664/whileWhile$lstm_664/while/loop_counter:output:0*lstm_664/while/maximum_iterations:output:0lstm_664/time:output:0!lstm_664/TensorArrayV2_1:handle:0lstm_664/zeros:output:0lstm_664/zeros_1:output:0!lstm_664/strided_slice_1:output:0@lstm_664/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_664_lstm_cell_700_matmul_readvariableop_resource7lstm_664_lstm_cell_700_matmul_1_readvariableop_resource6lstm_664_lstm_cell_700_biasadd_readvariableop_resource*
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
lstm_664_while_body_4243489*'
condR
lstm_664_while_cond_4243488*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_664/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_664/TensorArrayV2Stack/TensorListStackTensorListStacklstm_664/while:output:3Blstm_664/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_664/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_664/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_664/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_slice_3StridedSlice4lstm_664/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_664/strided_slice_3/stack:output:0)lstm_664/strided_slice_3/stack_1:output:0)lstm_664/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_664/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_664/transpose_1	Transpose4lstm_664/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_664/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_664/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_665/ShapeShapelstm_664/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_665/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_665/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_665/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_sliceStridedSlicelstm_665/Shape:output:0%lstm_665/strided_slice/stack:output:0'lstm_665/strided_slice/stack_1:output:0'lstm_665/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_665/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_665/zeros/packedPacklstm_665/strided_slice:output:0 lstm_665/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_665/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_665/zerosFilllstm_665/zeros/packed:output:0lstm_665/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_665/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_665/zeros_1/packedPacklstm_665/strided_slice:output:0"lstm_665/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_665/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_665/zeros_1Fill lstm_665/zeros_1/packed:output:0lstm_665/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_665/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_665/transpose	Transposelstm_664/transpose_1:y:0 lstm_665/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_665/Shape_1Shapelstm_665/transpose:y:0*
T0*
_output_shapes
:h
lstm_665/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_665/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_665/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_slice_1StridedSlicelstm_665/Shape_1:output:0'lstm_665/strided_slice_1/stack:output:0)lstm_665/strided_slice_1/stack_1:output:0)lstm_665/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_665/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_665/TensorArrayV2TensorListReserve-lstm_665/TensorArrayV2/element_shape:output:0!lstm_665/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_665/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_665/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_665/transpose:y:0Glstm_665/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_665/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_665/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_665/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_slice_2StridedSlicelstm_665/transpose:y:0'lstm_665/strided_slice_2/stack:output:0)lstm_665/strided_slice_2/stack_1:output:0)lstm_665/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_665/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp5lstm_665_lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_665/lstm_cell_701/MatMulMatMul!lstm_665/strided_slice_2:output:04lstm_665/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp7lstm_665_lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_665/lstm_cell_701/MatMul_1MatMullstm_665/zeros:output:06lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_665/lstm_cell_701/addAddV2'lstm_665/lstm_cell_701/MatMul:product:0)lstm_665/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp6lstm_665_lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_665/lstm_cell_701/BiasAddBiasAddlstm_665/lstm_cell_701/add:z:05lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_665/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_665/lstm_cell_701/splitSplit/lstm_665/lstm_cell_701/split/split_dim:output:0'lstm_665/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_665/lstm_cell_701/SigmoidSigmoid%lstm_665/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_665/lstm_cell_701/Sigmoid_1Sigmoid%lstm_665/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/mulMul$lstm_665/lstm_cell_701/Sigmoid_1:y:0lstm_665/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_665/lstm_cell_701/ReluRelu%lstm_665/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/mul_1Mul"lstm_665/lstm_cell_701/Sigmoid:y:0)lstm_665/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/add_1AddV2lstm_665/lstm_cell_701/mul:z:0 lstm_665/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_665/lstm_cell_701/Sigmoid_2Sigmoid%lstm_665/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_665/lstm_cell_701/Relu_1Relu lstm_665/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/mul_2Mul$lstm_665/lstm_cell_701/Sigmoid_2:y:0+lstm_665/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_665/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_665/TensorArrayV2_1TensorListReserve/lstm_665/TensorArrayV2_1/element_shape:output:0!lstm_665/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_665/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_665/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_665/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_665/whileWhile$lstm_665/while/loop_counter:output:0*lstm_665/while/maximum_iterations:output:0lstm_665/time:output:0!lstm_665/TensorArrayV2_1:handle:0lstm_665/zeros:output:0lstm_665/zeros_1:output:0!lstm_665/strided_slice_1:output:0@lstm_665/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_665_lstm_cell_701_matmul_readvariableop_resource7lstm_665_lstm_cell_701_matmul_1_readvariableop_resource6lstm_665_lstm_cell_701_biasadd_readvariableop_resource*
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
lstm_665_while_body_4243628*'
condR
lstm_665_while_cond_4243627*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_665/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_665/TensorArrayV2Stack/TensorListStackTensorListStacklstm_665/while:output:3Blstm_665/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_665/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_665/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_665/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_slice_3StridedSlice4lstm_665/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_665/strided_slice_3/stack:output:0)lstm_665/strided_slice_3/stack_1:output:0)lstm_665/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_665/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_665/transpose_1	Transpose4lstm_665/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_665/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_665/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_221/MatMul/ReadVariableOpReadVariableOp(dense_221_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_221/MatMulMatMul!lstm_665/strided_slice_3:output:0'dense_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_221/BiasAdd/ReadVariableOpReadVariableOp)dense_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_221/BiasAddBiasAdddense_221/MatMul:product:0(dense_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_221/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_221/BiasAdd/ReadVariableOp ^dense_221/MatMul/ReadVariableOp.^lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp-^lstm_663/lstm_cell_699/MatMul/ReadVariableOp/^lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp^lstm_663/while.^lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp-^lstm_664/lstm_cell_700/MatMul/ReadVariableOp/^lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp^lstm_664/while.^lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp-^lstm_665/lstm_cell_701/MatMul/ReadVariableOp/^lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp^lstm_665/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_221/BiasAdd/ReadVariableOp dense_221/BiasAdd/ReadVariableOp2B
dense_221/MatMul/ReadVariableOpdense_221/MatMul/ReadVariableOp2^
-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp2\
,lstm_663/lstm_cell_699/MatMul/ReadVariableOp,lstm_663/lstm_cell_699/MatMul/ReadVariableOp2`
.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp2 
lstm_663/whilelstm_663/while2^
-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp2\
,lstm_664/lstm_cell_700/MatMul/ReadVariableOp,lstm_664/lstm_cell_700/MatMul/ReadVariableOp2`
.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp2 
lstm_664/whilelstm_664/while2^
-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp2\
,lstm_665/lstm_cell_701/MatMul/ReadVariableOp,lstm_665/lstm_cell_701/MatMul/ReadVariableOp2`
.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp2 
lstm_665/whilelstm_665/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_663_while_body_4243777.
*lstm_663_while_lstm_663_while_loop_counter4
0lstm_663_while_lstm_663_while_maximum_iterations
lstm_663_while_placeholder 
lstm_663_while_placeholder_1 
lstm_663_while_placeholder_2 
lstm_663_while_placeholder_3-
)lstm_663_while_lstm_663_strided_slice_1_0i
elstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0:	?R
?lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?M
>lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
lstm_663_while_identity
lstm_663_while_identity_1
lstm_663_while_identity_2
lstm_663_while_identity_3
lstm_663_while_identity_4
lstm_663_while_identity_5+
'lstm_663_while_lstm_663_strided_slice_1g
clstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensorN
;lstm_663_while_lstm_cell_699_matmul_readvariableop_resource:	?P
=lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource:	d?K
<lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource:	???3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp?2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp?4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp?
@lstm_663/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_663/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensor_0lstm_663_while_placeholderIlstm_663/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp=lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_663/while/lstm_cell_699/MatMulMatMul9lstm_663/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp?lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_663/while/lstm_cell_699/MatMul_1MatMullstm_663_while_placeholder_2<lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_663/while/lstm_cell_699/addAddV2-lstm_663/while/lstm_cell_699/MatMul:product:0/lstm_663/while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp>lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_663/while/lstm_cell_699/BiasAddBiasAdd$lstm_663/while/lstm_cell_699/add:z:0;lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_663/while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_663/while/lstm_cell_699/splitSplit5lstm_663/while/lstm_cell_699/split/split_dim:output:0-lstm_663/while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_663/while/lstm_cell_699/SigmoidSigmoid+lstm_663/while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_663/while/lstm_cell_699/Sigmoid_1Sigmoid+lstm_663/while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_663/while/lstm_cell_699/mulMul*lstm_663/while/lstm_cell_699/Sigmoid_1:y:0lstm_663_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_663/while/lstm_cell_699/ReluRelu+lstm_663/while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_663/while/lstm_cell_699/mul_1Mul(lstm_663/while/lstm_cell_699/Sigmoid:y:0/lstm_663/while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_663/while/lstm_cell_699/add_1AddV2$lstm_663/while/lstm_cell_699/mul:z:0&lstm_663/while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_663/while/lstm_cell_699/Sigmoid_2Sigmoid+lstm_663/while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_663/while/lstm_cell_699/Relu_1Relu&lstm_663/while/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_663/while/lstm_cell_699/mul_2Mul*lstm_663/while/lstm_cell_699/Sigmoid_2:y:01lstm_663/while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_663/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_663_while_placeholder_1lstm_663_while_placeholder&lstm_663/while/lstm_cell_699/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_663/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_663/while/addAddV2lstm_663_while_placeholderlstm_663/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_663/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_663/while/add_1AddV2*lstm_663_while_lstm_663_while_loop_counterlstm_663/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_663/while/IdentityIdentitylstm_663/while/add_1:z:0^lstm_663/while/NoOp*
T0*
_output_shapes
: ?
lstm_663/while/Identity_1Identity0lstm_663_while_lstm_663_while_maximum_iterations^lstm_663/while/NoOp*
T0*
_output_shapes
: t
lstm_663/while/Identity_2Identitylstm_663/while/add:z:0^lstm_663/while/NoOp*
T0*
_output_shapes
: ?
lstm_663/while/Identity_3IdentityClstm_663/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_663/while/NoOp*
T0*
_output_shapes
: ?
lstm_663/while/Identity_4Identity&lstm_663/while/lstm_cell_699/mul_2:z:0^lstm_663/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_663/while/Identity_5Identity&lstm_663/while/lstm_cell_699/add_1:z:0^lstm_663/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_663/while/NoOpNoOp4^lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp3^lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp5^lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_663_while_identity lstm_663/while/Identity:output:0"?
lstm_663_while_identity_1"lstm_663/while/Identity_1:output:0"?
lstm_663_while_identity_2"lstm_663/while/Identity_2:output:0"?
lstm_663_while_identity_3"lstm_663/while/Identity_3:output:0"?
lstm_663_while_identity_4"lstm_663/while/Identity_4:output:0"?
lstm_663_while_identity_5"lstm_663/while/Identity_5:output:0"T
'lstm_663_while_lstm_663_strided_slice_1)lstm_663_while_lstm_663_strided_slice_1_0"~
<lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource>lstm_663_while_lstm_cell_699_biasadd_readvariableop_resource_0"?
=lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource?lstm_663_while_lstm_cell_699_matmul_1_readvariableop_resource_0"|
;lstm_663_while_lstm_cell_699_matmul_readvariableop_resource=lstm_663_while_lstm_cell_699_matmul_readvariableop_resource_0"?
clstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensorelstm_663_while_tensorarrayv2read_tensorlistgetitem_lstm_663_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp3lstm_663/while/lstm_cell_699/BiasAdd/ReadVariableOp2h
2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp2lstm_663/while/lstm_cell_699/MatMul/ReadVariableOp2l
4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp4lstm_663/while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_664_while_cond_4243915.
*lstm_664_while_lstm_664_while_loop_counter4
0lstm_664_while_lstm_664_while_maximum_iterations
lstm_664_while_placeholder 
lstm_664_while_placeholder_1 
lstm_664_while_placeholder_2 
lstm_664_while_placeholder_30
,lstm_664_while_less_lstm_664_strided_slice_1G
Clstm_664_while_lstm_664_while_cond_4243915___redundant_placeholder0G
Clstm_664_while_lstm_664_while_cond_4243915___redundant_placeholder1G
Clstm_664_while_lstm_664_while_cond_4243915___redundant_placeholder2G
Clstm_664_while_lstm_664_while_cond_4243915___redundant_placeholder3
lstm_664_while_identity
?
lstm_664/while/LessLesslstm_664_while_placeholder,lstm_664_while_less_lstm_664_strided_slice_1*
T0*
_output_shapes
: ]
lstm_664/while/IdentityIdentitylstm_664/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_664_while_identity lstm_664/while/Identity:output:0*(
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
while_body_4241949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_701_4241973_0:2(/
while_lstm_cell_701_4241975_0:
(+
while_lstm_cell_701_4241977_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_701_4241973:2(-
while_lstm_cell_701_4241975:
()
while_lstm_cell_701_4241977:(??+while/lstm_cell_701/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_701/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_701_4241973_0while_lstm_cell_701_4241975_0while_lstm_cell_701_4241977_0*
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241890?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_701/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_701/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_701/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_701/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_701_4241973while_lstm_cell_701_4241973_0"<
while_lstm_cell_701_4241975while_lstm_cell_701_4241975_0"<
while_lstm_cell_701_4241977while_lstm_cell_701_4241977_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_701/StatefulPartitionedCall+while/lstm_cell_701/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4246306

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
while_body_4245480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_701_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_701_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_701_matmul_readvariableop_resource:2(F
4while_lstm_cell_701_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_701_biasadd_readvariableop_resource:(??*while/lstm_cell_701/BiasAdd/ReadVariableOp?)while/lstm_cell_701/MatMul/ReadVariableOp?+while/lstm_cell_701/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_701/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_701/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_701/addAddV2$while/lstm_cell_701/MatMul:product:0&while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_701/BiasAddBiasAddwhile/lstm_cell_701/add:z:02while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_701/splitSplit,while/lstm_cell_701/split/split_dim:output:0$while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_701/SigmoidSigmoid"while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_1Sigmoid"while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mulMul!while/lstm_cell_701/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_701/ReluRelu"while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_1Mulwhile/lstm_cell_701/Sigmoid:y:0&while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/add_1AddV2while/lstm_cell_701/mul:z:0while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_701/Sigmoid_2Sigmoid"while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_701/Relu_1Reluwhile/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_701/mul_2Mul!while/lstm_cell_701/Sigmoid_2:y:0(while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_701/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_701/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_701/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_701/BiasAdd/ReadVariableOp*^while/lstm_cell_701/MatMul/ReadVariableOp,^while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_701_biasadd_readvariableop_resource5while_lstm_cell_701_biasadd_readvariableop_resource_0"n
4while_lstm_cell_701_matmul_1_readvariableop_resource6while_lstm_cell_701_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_701_matmul_readvariableop_resource4while_lstm_cell_701_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_701/BiasAdd/ReadVariableOp*while/lstm_cell_701/BiasAdd/ReadVariableOp2V
)while/lstm_cell_701/MatMul/ReadVariableOp)while/lstm_cell_701/MatMul/ReadVariableOp2Z
+while/lstm_cell_701/MatMul_1/ReadVariableOp+while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4244145

inputsH
5lstm_663_lstm_cell_699_matmul_readvariableop_resource:	?J
7lstm_663_lstm_cell_699_matmul_1_readvariableop_resource:	d?E
6lstm_663_lstm_cell_699_biasadd_readvariableop_resource:	?H
5lstm_664_lstm_cell_700_matmul_readvariableop_resource:	d?J
7lstm_664_lstm_cell_700_matmul_1_readvariableop_resource:	2?E
6lstm_664_lstm_cell_700_biasadd_readvariableop_resource:	?G
5lstm_665_lstm_cell_701_matmul_readvariableop_resource:2(I
7lstm_665_lstm_cell_701_matmul_1_readvariableop_resource:
(D
6lstm_665_lstm_cell_701_biasadd_readvariableop_resource:(:
(dense_221_matmul_readvariableop_resource:
7
)dense_221_biasadd_readvariableop_resource:
identity?? dense_221/BiasAdd/ReadVariableOp?dense_221/MatMul/ReadVariableOp?-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp?,lstm_663/lstm_cell_699/MatMul/ReadVariableOp?.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp?lstm_663/while?-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp?,lstm_664/lstm_cell_700/MatMul/ReadVariableOp?.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp?lstm_664/while?-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp?,lstm_665/lstm_cell_701/MatMul/ReadVariableOp?.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp?lstm_665/whileD
lstm_663/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_663/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_663/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_663/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_sliceStridedSlicelstm_663/Shape:output:0%lstm_663/strided_slice/stack:output:0'lstm_663/strided_slice/stack_1:output:0'lstm_663/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_663/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_663/zeros/packedPacklstm_663/strided_slice:output:0 lstm_663/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_663/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_663/zerosFilllstm_663/zeros/packed:output:0lstm_663/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_663/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_663/zeros_1/packedPacklstm_663/strided_slice:output:0"lstm_663/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_663/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_663/zeros_1Fill lstm_663/zeros_1/packed:output:0lstm_663/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_663/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_663/transpose	Transposeinputs lstm_663/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_663/Shape_1Shapelstm_663/transpose:y:0*
T0*
_output_shapes
:h
lstm_663/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_663/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_663/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_slice_1StridedSlicelstm_663/Shape_1:output:0'lstm_663/strided_slice_1/stack:output:0)lstm_663/strided_slice_1/stack_1:output:0)lstm_663/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_663/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_663/TensorArrayV2TensorListReserve-lstm_663/TensorArrayV2/element_shape:output:0!lstm_663/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_663/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_663/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_663/transpose:y:0Glstm_663/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_663/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_663/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_663/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_slice_2StridedSlicelstm_663/transpose:y:0'lstm_663/strided_slice_2/stack:output:0)lstm_663/strided_slice_2/stack_1:output:0)lstm_663/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_663/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp5lstm_663_lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_663/lstm_cell_699/MatMulMatMul!lstm_663/strided_slice_2:output:04lstm_663/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp7lstm_663_lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_663/lstm_cell_699/MatMul_1MatMullstm_663/zeros:output:06lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_663/lstm_cell_699/addAddV2'lstm_663/lstm_cell_699/MatMul:product:0)lstm_663/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp6lstm_663_lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_663/lstm_cell_699/BiasAddBiasAddlstm_663/lstm_cell_699/add:z:05lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_663/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_663/lstm_cell_699/splitSplit/lstm_663/lstm_cell_699/split/split_dim:output:0'lstm_663/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_663/lstm_cell_699/SigmoidSigmoid%lstm_663/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_663/lstm_cell_699/Sigmoid_1Sigmoid%lstm_663/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/mulMul$lstm_663/lstm_cell_699/Sigmoid_1:y:0lstm_663/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_663/lstm_cell_699/ReluRelu%lstm_663/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/mul_1Mul"lstm_663/lstm_cell_699/Sigmoid:y:0)lstm_663/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/add_1AddV2lstm_663/lstm_cell_699/mul:z:0 lstm_663/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_663/lstm_cell_699/Sigmoid_2Sigmoid%lstm_663/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_663/lstm_cell_699/Relu_1Relu lstm_663/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_663/lstm_cell_699/mul_2Mul$lstm_663/lstm_cell_699/Sigmoid_2:y:0+lstm_663/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_663/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_663/TensorArrayV2_1TensorListReserve/lstm_663/TensorArrayV2_1/element_shape:output:0!lstm_663/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_663/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_663/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_663/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_663/whileWhile$lstm_663/while/loop_counter:output:0*lstm_663/while/maximum_iterations:output:0lstm_663/time:output:0!lstm_663/TensorArrayV2_1:handle:0lstm_663/zeros:output:0lstm_663/zeros_1:output:0!lstm_663/strided_slice_1:output:0@lstm_663/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_663_lstm_cell_699_matmul_readvariableop_resource7lstm_663_lstm_cell_699_matmul_1_readvariableop_resource6lstm_663_lstm_cell_699_biasadd_readvariableop_resource*
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
lstm_663_while_body_4243777*'
condR
lstm_663_while_cond_4243776*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_663/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_663/TensorArrayV2Stack/TensorListStackTensorListStacklstm_663/while:output:3Blstm_663/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_663/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_663/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_663/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_663/strided_slice_3StridedSlice4lstm_663/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_663/strided_slice_3/stack:output:0)lstm_663/strided_slice_3/stack_1:output:0)lstm_663/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_663/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_663/transpose_1	Transpose4lstm_663/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_663/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_663/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_664/ShapeShapelstm_663/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_664/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_664/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_664/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_sliceStridedSlicelstm_664/Shape:output:0%lstm_664/strided_slice/stack:output:0'lstm_664/strided_slice/stack_1:output:0'lstm_664/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_664/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_664/zeros/packedPacklstm_664/strided_slice:output:0 lstm_664/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_664/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_664/zerosFilllstm_664/zeros/packed:output:0lstm_664/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_664/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_664/zeros_1/packedPacklstm_664/strided_slice:output:0"lstm_664/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_664/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_664/zeros_1Fill lstm_664/zeros_1/packed:output:0lstm_664/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_664/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_664/transpose	Transposelstm_663/transpose_1:y:0 lstm_664/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_664/Shape_1Shapelstm_664/transpose:y:0*
T0*
_output_shapes
:h
lstm_664/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_664/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_664/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_slice_1StridedSlicelstm_664/Shape_1:output:0'lstm_664/strided_slice_1/stack:output:0)lstm_664/strided_slice_1/stack_1:output:0)lstm_664/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_664/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_664/TensorArrayV2TensorListReserve-lstm_664/TensorArrayV2/element_shape:output:0!lstm_664/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_664/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_664/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_664/transpose:y:0Glstm_664/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_664/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_664/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_664/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_slice_2StridedSlicelstm_664/transpose:y:0'lstm_664/strided_slice_2/stack:output:0)lstm_664/strided_slice_2/stack_1:output:0)lstm_664/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_664/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp5lstm_664_lstm_cell_700_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_664/lstm_cell_700/MatMulMatMul!lstm_664/strided_slice_2:output:04lstm_664/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp7lstm_664_lstm_cell_700_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_664/lstm_cell_700/MatMul_1MatMullstm_664/zeros:output:06lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_664/lstm_cell_700/addAddV2'lstm_664/lstm_cell_700/MatMul:product:0)lstm_664/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp6lstm_664_lstm_cell_700_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_664/lstm_cell_700/BiasAddBiasAddlstm_664/lstm_cell_700/add:z:05lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_664/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_664/lstm_cell_700/splitSplit/lstm_664/lstm_cell_700/split/split_dim:output:0'lstm_664/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_664/lstm_cell_700/SigmoidSigmoid%lstm_664/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_664/lstm_cell_700/Sigmoid_1Sigmoid%lstm_664/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/mulMul$lstm_664/lstm_cell_700/Sigmoid_1:y:0lstm_664/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_664/lstm_cell_700/ReluRelu%lstm_664/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/mul_1Mul"lstm_664/lstm_cell_700/Sigmoid:y:0)lstm_664/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/add_1AddV2lstm_664/lstm_cell_700/mul:z:0 lstm_664/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_664/lstm_cell_700/Sigmoid_2Sigmoid%lstm_664/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_664/lstm_cell_700/Relu_1Relu lstm_664/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_664/lstm_cell_700/mul_2Mul$lstm_664/lstm_cell_700/Sigmoid_2:y:0+lstm_664/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_664/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_664/TensorArrayV2_1TensorListReserve/lstm_664/TensorArrayV2_1/element_shape:output:0!lstm_664/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_664/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_664/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_664/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_664/whileWhile$lstm_664/while/loop_counter:output:0*lstm_664/while/maximum_iterations:output:0lstm_664/time:output:0!lstm_664/TensorArrayV2_1:handle:0lstm_664/zeros:output:0lstm_664/zeros_1:output:0!lstm_664/strided_slice_1:output:0@lstm_664/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_664_lstm_cell_700_matmul_readvariableop_resource7lstm_664_lstm_cell_700_matmul_1_readvariableop_resource6lstm_664_lstm_cell_700_biasadd_readvariableop_resource*
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
lstm_664_while_body_4243916*'
condR
lstm_664_while_cond_4243915*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_664/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_664/TensorArrayV2Stack/TensorListStackTensorListStacklstm_664/while:output:3Blstm_664/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_664/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_664/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_664/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_664/strided_slice_3StridedSlice4lstm_664/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_664/strided_slice_3/stack:output:0)lstm_664/strided_slice_3/stack_1:output:0)lstm_664/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_664/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_664/transpose_1	Transpose4lstm_664/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_664/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_664/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_665/ShapeShapelstm_664/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_665/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_665/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_665/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_sliceStridedSlicelstm_665/Shape:output:0%lstm_665/strided_slice/stack:output:0'lstm_665/strided_slice/stack_1:output:0'lstm_665/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_665/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_665/zeros/packedPacklstm_665/strided_slice:output:0 lstm_665/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_665/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_665/zerosFilllstm_665/zeros/packed:output:0lstm_665/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_665/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_665/zeros_1/packedPacklstm_665/strided_slice:output:0"lstm_665/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_665/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_665/zeros_1Fill lstm_665/zeros_1/packed:output:0lstm_665/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_665/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_665/transpose	Transposelstm_664/transpose_1:y:0 lstm_665/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_665/Shape_1Shapelstm_665/transpose:y:0*
T0*
_output_shapes
:h
lstm_665/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_665/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_665/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_slice_1StridedSlicelstm_665/Shape_1:output:0'lstm_665/strided_slice_1/stack:output:0)lstm_665/strided_slice_1/stack_1:output:0)lstm_665/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_665/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_665/TensorArrayV2TensorListReserve-lstm_665/TensorArrayV2/element_shape:output:0!lstm_665/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_665/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_665/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_665/transpose:y:0Glstm_665/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_665/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_665/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_665/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_slice_2StridedSlicelstm_665/transpose:y:0'lstm_665/strided_slice_2/stack:output:0)lstm_665/strided_slice_2/stack_1:output:0)lstm_665/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_665/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp5lstm_665_lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_665/lstm_cell_701/MatMulMatMul!lstm_665/strided_slice_2:output:04lstm_665/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp7lstm_665_lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_665/lstm_cell_701/MatMul_1MatMullstm_665/zeros:output:06lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_665/lstm_cell_701/addAddV2'lstm_665/lstm_cell_701/MatMul:product:0)lstm_665/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp6lstm_665_lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_665/lstm_cell_701/BiasAddBiasAddlstm_665/lstm_cell_701/add:z:05lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_665/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_665/lstm_cell_701/splitSplit/lstm_665/lstm_cell_701/split/split_dim:output:0'lstm_665/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_665/lstm_cell_701/SigmoidSigmoid%lstm_665/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_665/lstm_cell_701/Sigmoid_1Sigmoid%lstm_665/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/mulMul$lstm_665/lstm_cell_701/Sigmoid_1:y:0lstm_665/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_665/lstm_cell_701/ReluRelu%lstm_665/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/mul_1Mul"lstm_665/lstm_cell_701/Sigmoid:y:0)lstm_665/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/add_1AddV2lstm_665/lstm_cell_701/mul:z:0 lstm_665/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_665/lstm_cell_701/Sigmoid_2Sigmoid%lstm_665/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_665/lstm_cell_701/Relu_1Relu lstm_665/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_665/lstm_cell_701/mul_2Mul$lstm_665/lstm_cell_701/Sigmoid_2:y:0+lstm_665/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_665/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_665/TensorArrayV2_1TensorListReserve/lstm_665/TensorArrayV2_1/element_shape:output:0!lstm_665/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_665/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_665/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_665/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_665/whileWhile$lstm_665/while/loop_counter:output:0*lstm_665/while/maximum_iterations:output:0lstm_665/time:output:0!lstm_665/TensorArrayV2_1:handle:0lstm_665/zeros:output:0lstm_665/zeros_1:output:0!lstm_665/strided_slice_1:output:0@lstm_665/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_665_lstm_cell_701_matmul_readvariableop_resource7lstm_665_lstm_cell_701_matmul_1_readvariableop_resource6lstm_665_lstm_cell_701_biasadd_readvariableop_resource*
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
lstm_665_while_body_4244055*'
condR
lstm_665_while_cond_4244054*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_665/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_665/TensorArrayV2Stack/TensorListStackTensorListStacklstm_665/while:output:3Blstm_665/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_665/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_665/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_665/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_665/strided_slice_3StridedSlice4lstm_665/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_665/strided_slice_3/stack:output:0)lstm_665/strided_slice_3/stack_1:output:0)lstm_665/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_665/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_665/transpose_1	Transpose4lstm_665/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_665/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_665/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_221/MatMul/ReadVariableOpReadVariableOp(dense_221_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_221/MatMulMatMul!lstm_665/strided_slice_3:output:0'dense_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_221/BiasAdd/ReadVariableOpReadVariableOp)dense_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_221/BiasAddBiasAdddense_221/MatMul:product:0(dense_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_221/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_221/BiasAdd/ReadVariableOp ^dense_221/MatMul/ReadVariableOp.^lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp-^lstm_663/lstm_cell_699/MatMul/ReadVariableOp/^lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp^lstm_663/while.^lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp-^lstm_664/lstm_cell_700/MatMul/ReadVariableOp/^lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp^lstm_664/while.^lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp-^lstm_665/lstm_cell_701/MatMul/ReadVariableOp/^lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp^lstm_665/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_221/BiasAdd/ReadVariableOp dense_221/BiasAdd/ReadVariableOp2B
dense_221/MatMul/ReadVariableOpdense_221/MatMul/ReadVariableOp2^
-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp-lstm_663/lstm_cell_699/BiasAdd/ReadVariableOp2\
,lstm_663/lstm_cell_699/MatMul/ReadVariableOp,lstm_663/lstm_cell_699/MatMul/ReadVariableOp2`
.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp.lstm_663/lstm_cell_699/MatMul_1/ReadVariableOp2 
lstm_663/whilelstm_663/while2^
-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp-lstm_664/lstm_cell_700/BiasAdd/ReadVariableOp2\
,lstm_664/lstm_cell_700/MatMul/ReadVariableOp,lstm_664/lstm_cell_700/MatMul/ReadVariableOp2`
.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp.lstm_664/lstm_cell_700/MatMul_1/ReadVariableOp2 
lstm_664/whilelstm_664/while2^
-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp-lstm_665/lstm_cell_701/BiasAdd/ReadVariableOp2\
,lstm_665/lstm_cell_701/MatMul/ReadVariableOp,lstm_665/lstm_cell_701/MatMul/ReadVariableOp2`
.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp.lstm_665/lstm_cell_701/MatMul_1/ReadVariableOp2 
lstm_665/whilelstm_665/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_221_lstm_663_while_cond_4240608L
Hsequential_221_lstm_663_while_sequential_221_lstm_663_while_loop_counterR
Nsequential_221_lstm_663_while_sequential_221_lstm_663_while_maximum_iterations-
)sequential_221_lstm_663_while_placeholder/
+sequential_221_lstm_663_while_placeholder_1/
+sequential_221_lstm_663_while_placeholder_2/
+sequential_221_lstm_663_while_placeholder_3N
Jsequential_221_lstm_663_while_less_sequential_221_lstm_663_strided_slice_1e
asequential_221_lstm_663_while_sequential_221_lstm_663_while_cond_4240608___redundant_placeholder0e
asequential_221_lstm_663_while_sequential_221_lstm_663_while_cond_4240608___redundant_placeholder1e
asequential_221_lstm_663_while_sequential_221_lstm_663_while_cond_4240608___redundant_placeholder2e
asequential_221_lstm_663_while_sequential_221_lstm_663_while_cond_4240608___redundant_placeholder3*
&sequential_221_lstm_663_while_identity
?
"sequential_221/lstm_663/while/LessLess)sequential_221_lstm_663_while_placeholderJsequential_221_lstm_663_while_less_sequential_221_lstm_663_strided_slice_1*
T0*
_output_shapes
: {
&sequential_221/lstm_663/while/IdentityIdentity&sequential_221/lstm_663/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_221_lstm_663_while_identity/sequential_221/lstm_663/while/Identity:output:0*(
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
*sequential_221_lstm_665_while_cond_4240886L
Hsequential_221_lstm_665_while_sequential_221_lstm_665_while_loop_counterR
Nsequential_221_lstm_665_while_sequential_221_lstm_665_while_maximum_iterations-
)sequential_221_lstm_665_while_placeholder/
+sequential_221_lstm_665_while_placeholder_1/
+sequential_221_lstm_665_while_placeholder_2/
+sequential_221_lstm_665_while_placeholder_3N
Jsequential_221_lstm_665_while_less_sequential_221_lstm_665_strided_slice_1e
asequential_221_lstm_665_while_sequential_221_lstm_665_while_cond_4240886___redundant_placeholder0e
asequential_221_lstm_665_while_sequential_221_lstm_665_while_cond_4240886___redundant_placeholder1e
asequential_221_lstm_665_while_sequential_221_lstm_665_while_cond_4240886___redundant_placeholder2e
asequential_221_lstm_665_while_sequential_221_lstm_665_while_cond_4240886___redundant_placeholder3*
&sequential_221_lstm_665_while_identity
?
"sequential_221/lstm_665/while/LessLess)sequential_221_lstm_665_while_placeholderJsequential_221_lstm_665_while_less_sequential_221_lstm_665_strided_slice_1*
T0*
_output_shapes
: {
&sequential_221/lstm_665/while/IdentityIdentity&sequential_221/lstm_665/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_221_lstm_665_while_identity/sequential_221/lstm_665/while/Identity:output:0*(
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
while_body_4244534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_699_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_699_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_699_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_699_matmul_readvariableop_resource:	?G
4while_lstm_cell_699_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_699_biasadd_readvariableop_resource:	???*while/lstm_cell_699/BiasAdd/ReadVariableOp?)while/lstm_cell_699/MatMul/ReadVariableOp?+while/lstm_cell_699/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_699/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_699_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_699/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_699_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_699/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_699/addAddV2$while/lstm_cell_699/MatMul:product:0&while/lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_699_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_699/BiasAddBiasAddwhile/lstm_cell_699/add:z:02while/lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_699/splitSplit,while/lstm_cell_699/split/split_dim:output:0$while/lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_699/SigmoidSigmoid"while/lstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_1Sigmoid"while/lstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mulMul!while/lstm_cell_699/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_699/ReluRelu"while/lstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_1Mulwhile/lstm_cell_699/Sigmoid:y:0&while/lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/add_1AddV2while/lstm_cell_699/mul:z:0while/lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_699/Sigmoid_2Sigmoid"while/lstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_699/Relu_1Reluwhile/lstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_699/mul_2Mul!while/lstm_cell_699/Sigmoid_2:y:0(while/lstm_cell_699/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_699/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_699/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_699/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_699/BiasAdd/ReadVariableOp*^while/lstm_cell_699/MatMul/ReadVariableOp,^while/lstm_cell_699/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_699_biasadd_readvariableop_resource5while_lstm_cell_699_biasadd_readvariableop_resource_0"n
4while_lstm_cell_699_matmul_1_readvariableop_resource6while_lstm_cell_699_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_699_matmul_readvariableop_resource4while_lstm_cell_699_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_699/BiasAdd/ReadVariableOp*while/lstm_cell_699/BiasAdd/ReadVariableOp2V
)while/lstm_cell_699/MatMul/ReadVariableOp)while/lstm_cell_699/MatMul/ReadVariableOp2Z
+while/lstm_cell_699/MatMul_1/ReadVariableOp+while/lstm_cell_699/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_221_lstm_665_while_body_4240887L
Hsequential_221_lstm_665_while_sequential_221_lstm_665_while_loop_counterR
Nsequential_221_lstm_665_while_sequential_221_lstm_665_while_maximum_iterations-
)sequential_221_lstm_665_while_placeholder/
+sequential_221_lstm_665_while_placeholder_1/
+sequential_221_lstm_665_while_placeholder_2/
+sequential_221_lstm_665_while_placeholder_3K
Gsequential_221_lstm_665_while_sequential_221_lstm_665_strided_slice_1_0?
?sequential_221_lstm_665_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_665_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_221_lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0:2(`
Nsequential_221_lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0:
([
Msequential_221_lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0:(*
&sequential_221_lstm_665_while_identity,
(sequential_221_lstm_665_while_identity_1,
(sequential_221_lstm_665_while_identity_2,
(sequential_221_lstm_665_while_identity_3,
(sequential_221_lstm_665_while_identity_4,
(sequential_221_lstm_665_while_identity_5I
Esequential_221_lstm_665_while_sequential_221_lstm_665_strided_slice_1?
?sequential_221_lstm_665_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_665_tensorarrayunstack_tensorlistfromtensor\
Jsequential_221_lstm_665_while_lstm_cell_701_matmul_readvariableop_resource:2(^
Lsequential_221_lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource:
(Y
Ksequential_221_lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource:(??Bsequential_221/lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp?Asequential_221/lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp?Csequential_221/lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp?
Osequential_221/lstm_665/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_221/lstm_665/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_221_lstm_665_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_665_tensorarrayunstack_tensorlistfromtensor_0)sequential_221_lstm_665_while_placeholderXsequential_221/lstm_665/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_221/lstm_665/while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOpLsequential_221_lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_221/lstm_665/while/lstm_cell_701/MatMulMatMulHsequential_221/lstm_665/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_221/lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_221/lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOpNsequential_221_lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_221/lstm_665/while/lstm_cell_701/MatMul_1MatMul+sequential_221_lstm_665_while_placeholder_2Ksequential_221/lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_221/lstm_665/while/lstm_cell_701/addAddV2<sequential_221/lstm_665/while/lstm_cell_701/MatMul:product:0>sequential_221/lstm_665/while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_221/lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOpMsequential_221_lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_221/lstm_665/while/lstm_cell_701/BiasAddBiasAdd3sequential_221/lstm_665/while/lstm_cell_701/add:z:0Jsequential_221/lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_221/lstm_665/while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_221/lstm_665/while/lstm_cell_701/splitSplitDsequential_221/lstm_665/while/lstm_cell_701/split/split_dim:output:0<sequential_221/lstm_665/while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_221/lstm_665/while/lstm_cell_701/SigmoidSigmoid:sequential_221/lstm_665/while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_221/lstm_665/while/lstm_cell_701/Sigmoid_1Sigmoid:sequential_221/lstm_665/while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_221/lstm_665/while/lstm_cell_701/mulMul9sequential_221/lstm_665/while/lstm_cell_701/Sigmoid_1:y:0+sequential_221_lstm_665_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_221/lstm_665/while/lstm_cell_701/ReluRelu:sequential_221/lstm_665/while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_221/lstm_665/while/lstm_cell_701/mul_1Mul7sequential_221/lstm_665/while/lstm_cell_701/Sigmoid:y:0>sequential_221/lstm_665/while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_221/lstm_665/while/lstm_cell_701/add_1AddV23sequential_221/lstm_665/while/lstm_cell_701/mul:z:05sequential_221/lstm_665/while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_221/lstm_665/while/lstm_cell_701/Sigmoid_2Sigmoid:sequential_221/lstm_665/while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_221/lstm_665/while/lstm_cell_701/Relu_1Relu5sequential_221/lstm_665/while/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_221/lstm_665/while/lstm_cell_701/mul_2Mul9sequential_221/lstm_665/while/lstm_cell_701/Sigmoid_2:y:0@sequential_221/lstm_665/while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_221/lstm_665/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_221_lstm_665_while_placeholder_1)sequential_221_lstm_665_while_placeholder5sequential_221/lstm_665/while/lstm_cell_701/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_221/lstm_665/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_221/lstm_665/while/addAddV2)sequential_221_lstm_665_while_placeholder,sequential_221/lstm_665/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_221/lstm_665/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_221/lstm_665/while/add_1AddV2Hsequential_221_lstm_665_while_sequential_221_lstm_665_while_loop_counter.sequential_221/lstm_665/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_221/lstm_665/while/IdentityIdentity'sequential_221/lstm_665/while/add_1:z:0#^sequential_221/lstm_665/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_665/while/Identity_1IdentityNsequential_221_lstm_665_while_sequential_221_lstm_665_while_maximum_iterations#^sequential_221/lstm_665/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_665/while/Identity_2Identity%sequential_221/lstm_665/while/add:z:0#^sequential_221/lstm_665/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_665/while/Identity_3IdentityRsequential_221/lstm_665/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_221/lstm_665/while/NoOp*
T0*
_output_shapes
: ?
(sequential_221/lstm_665/while/Identity_4Identity5sequential_221/lstm_665/while/lstm_cell_701/mul_2:z:0#^sequential_221/lstm_665/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_221/lstm_665/while/Identity_5Identity5sequential_221/lstm_665/while/lstm_cell_701/add_1:z:0#^sequential_221/lstm_665/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_221/lstm_665/while/NoOpNoOpC^sequential_221/lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOpB^sequential_221/lstm_665/while/lstm_cell_701/MatMul/ReadVariableOpD^sequential_221/lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_221_lstm_665_while_identity/sequential_221/lstm_665/while/Identity:output:0"]
(sequential_221_lstm_665_while_identity_11sequential_221/lstm_665/while/Identity_1:output:0"]
(sequential_221_lstm_665_while_identity_21sequential_221/lstm_665/while/Identity_2:output:0"]
(sequential_221_lstm_665_while_identity_31sequential_221/lstm_665/while/Identity_3:output:0"]
(sequential_221_lstm_665_while_identity_41sequential_221/lstm_665/while/Identity_4:output:0"]
(sequential_221_lstm_665_while_identity_51sequential_221/lstm_665/while/Identity_5:output:0"?
Ksequential_221_lstm_665_while_lstm_cell_701_biasadd_readvariableop_resourceMsequential_221_lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0"?
Lsequential_221_lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resourceNsequential_221_lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0"?
Jsequential_221_lstm_665_while_lstm_cell_701_matmul_readvariableop_resourceLsequential_221_lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0"?
Esequential_221_lstm_665_while_sequential_221_lstm_665_strided_slice_1Gsequential_221_lstm_665_while_sequential_221_lstm_665_strided_slice_1_0"?
?sequential_221_lstm_665_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_665_tensorarrayunstack_tensorlistfromtensor?sequential_221_lstm_665_while_tensorarrayv2read_tensorlistgetitem_sequential_221_lstm_665_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_221/lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOpBsequential_221/lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp2?
Asequential_221/lstm_665/while/lstm_cell_701/MatMul/ReadVariableOpAsequential_221/lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp2?
Csequential_221/lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOpCsequential_221/lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244332
inputs_0?
,lstm_cell_699_matmul_readvariableop_resource:	?A
.lstm_cell_699_matmul_1_readvariableop_resource:	d?<
-lstm_cell_699_biasadd_readvariableop_resource:	?
identity??$lstm_cell_699/BiasAdd/ReadVariableOp?#lstm_cell_699/MatMul/ReadVariableOp?%lstm_cell_699/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_699/MatMul/ReadVariableOpReadVariableOp,lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_699/MatMulMatMulstrided_slice_2:output:0+lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_699/MatMul_1MatMulzeros:output:0-lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_699/addAddV2lstm_cell_699/MatMul:product:0 lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_699/BiasAddBiasAddlstm_cell_699/add:z:0,lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_699/splitSplit&lstm_cell_699/split/split_dim:output:0lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_699/SigmoidSigmoidlstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_1Sigmoidlstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_699/mulMullstm_cell_699/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_699/ReluRelulstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_1Mullstm_cell_699/Sigmoid:y:0 lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_699/add_1AddV2lstm_cell_699/mul:z:0lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_2Sigmoidlstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_699/Relu_1Relulstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_2Mullstm_cell_699/Sigmoid_2:y:0"lstm_cell_699/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_699_matmul_readvariableop_resource.lstm_cell_699_matmul_1_readvariableop_resource-lstm_cell_699_biasadd_readvariableop_resource*
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
while_body_4244248*
condR
while_cond_4244247*K
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
NoOpNoOp%^lstm_cell_699/BiasAdd/ReadVariableOp$^lstm_cell_699/MatMul/ReadVariableOp&^lstm_cell_699/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_699/BiasAdd/ReadVariableOp$lstm_cell_699/BiasAdd/ReadVariableOp2J
#lstm_cell_699/MatMul/ReadVariableOp#lstm_cell_699/MatMul/ReadVariableOp2N
%lstm_cell_699/MatMul_1/ReadVariableOp%lstm_cell_699/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_664_layer_call_fn_4244805

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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242857s
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245707
inputs_0>
,lstm_cell_701_matmul_readvariableop_resource:2(@
.lstm_cell_701_matmul_1_readvariableop_resource:
(;
-lstm_cell_701_biasadd_readvariableop_resource:(
identity??$lstm_cell_701/BiasAdd/ReadVariableOp?#lstm_cell_701/MatMul/ReadVariableOp?%lstm_cell_701/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_701/MatMul/ReadVariableOpReadVariableOp,lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_701/MatMulMatMulstrided_slice_2:output:0+lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_701/MatMul_1MatMulzeros:output:0-lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_701/addAddV2lstm_cell_701/MatMul:product:0 lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_701/BiasAddBiasAddlstm_cell_701/add:z:0,lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_701/splitSplit&lstm_cell_701/split/split_dim:output:0lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_701/SigmoidSigmoidlstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_1Sigmoidlstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_701/mulMullstm_cell_701/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_701/ReluRelulstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_1Mullstm_cell_701/Sigmoid:y:0 lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_701/add_1AddV2lstm_cell_701/mul:z:0lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_2Sigmoidlstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_701/Relu_1Relulstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_2Mullstm_cell_701/Sigmoid_2:y:0"lstm_cell_701/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_701_matmul_readvariableop_resource.lstm_cell_701_matmul_1_readvariableop_resource-lstm_cell_701_biasadd_readvariableop_resource*
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
while_body_4245623*
condR
while_cond_4245622*K
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
NoOpNoOp%^lstm_cell_701/BiasAdd/ReadVariableOp$^lstm_cell_701/MatMul/ReadVariableOp&^lstm_cell_701/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_701/BiasAdd/ReadVariableOp$lstm_cell_701/BiasAdd/ReadVariableOp2J
#lstm_cell_701/MatMul/ReadVariableOp#lstm_cell_701/MatMul/ReadVariableOp2N
%lstm_cell_701/MatMul_1/ReadVariableOp%lstm_cell_701/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
%__inference_signature_wrapper_4243237
lstm_663_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_663_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4240977o
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
_user_specified_namelstm_663_input
?
?
while_cond_4242607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4242607___redundant_placeholder05
1while_while_cond_4242607___redundant_placeholder15
1while_while_cond_4242607___redundant_placeholder25
1while_while_cond_4242607___redundant_placeholder3
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
?
?
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243172
lstm_663_input#
lstm_663_4243145:	?#
lstm_663_4243147:	d?
lstm_663_4243149:	?#
lstm_664_4243152:	d?#
lstm_664_4243154:	2?
lstm_664_4243156:	?"
lstm_665_4243159:2("
lstm_665_4243161:
(
lstm_665_4243163:(#
dense_221_4243166:

dense_221_4243168:
identity??!dense_221/StatefulPartitionedCall? lstm_663/StatefulPartitionedCall? lstm_664/StatefulPartitionedCall? lstm_665/StatefulPartitionedCall?
 lstm_663/StatefulPartitionedCallStatefulPartitionedCalllstm_663_inputlstm_663_4243145lstm_663_4243147lstm_663_4243149*
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4242176?
 lstm_664/StatefulPartitionedCallStatefulPartitionedCall)lstm_663/StatefulPartitionedCall:output:0lstm_664_4243152lstm_664_4243154lstm_664_4243156*
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242326?
 lstm_665/StatefulPartitionedCallStatefulPartitionedCall)lstm_664/StatefulPartitionedCall:output:0lstm_665_4243159lstm_665_4243161lstm_665_4243163*
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242476?
!dense_221/StatefulPartitionedCallStatefulPartitionedCall)lstm_665/StatefulPartitionedCall:output:0dense_221_4243166dense_221_4243168*
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
F__inference_dense_221_layer_call_and_return_conditional_losses_4242494y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_221/StatefulPartitionedCall!^lstm_663/StatefulPartitionedCall!^lstm_664/StatefulPartitionedCall!^lstm_665/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall2D
 lstm_663/StatefulPartitionedCall lstm_663/StatefulPartitionedCall2D
 lstm_664/StatefulPartitionedCall lstm_664/StatefulPartitionedCall2D
 lstm_665/StatefulPartitionedCall lstm_665/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_663_input
?#
?
while_body_4241058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_699_4241082_0:	?0
while_lstm_cell_699_4241084_0:	d?,
while_lstm_cell_699_4241086_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_699_4241082:	?.
while_lstm_cell_699_4241084:	d?*
while_lstm_cell_699_4241086:	???+while/lstm_cell_699/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_699/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_699_4241082_0while_lstm_cell_699_4241084_0while_lstm_cell_699_4241086_0*
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4241044?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_699/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_699/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_699/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_699/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_699_4241082while_lstm_cell_699_4241082_0"<
while_lstm_cell_699_4241084while_lstm_cell_699_4241084_0"<
while_lstm_cell_699_4241086while_lstm_cell_699_4241086_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_699/StatefulPartitionedCall+while/lstm_cell_699/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244761

inputs?
,lstm_cell_699_matmul_readvariableop_resource:	?A
.lstm_cell_699_matmul_1_readvariableop_resource:	d?<
-lstm_cell_699_biasadd_readvariableop_resource:	?
identity??$lstm_cell_699/BiasAdd/ReadVariableOp?#lstm_cell_699/MatMul/ReadVariableOp?%lstm_cell_699/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_699/MatMul/ReadVariableOpReadVariableOp,lstm_cell_699_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_699/MatMulMatMulstrided_slice_2:output:0+lstm_cell_699/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_699/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_699_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_699/MatMul_1MatMulzeros:output:0-lstm_cell_699/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_699/addAddV2lstm_cell_699/MatMul:product:0 lstm_cell_699/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_699/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_699_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_699/BiasAddBiasAddlstm_cell_699/add:z:0,lstm_cell_699/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_699/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_699/splitSplit&lstm_cell_699/split/split_dim:output:0lstm_cell_699/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_699/SigmoidSigmoidlstm_cell_699/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_1Sigmoidlstm_cell_699/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_699/mulMullstm_cell_699/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_699/ReluRelulstm_cell_699/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_1Mullstm_cell_699/Sigmoid:y:0 lstm_cell_699/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_699/add_1AddV2lstm_cell_699/mul:z:0lstm_cell_699/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_699/Sigmoid_2Sigmoidlstm_cell_699/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_699/Relu_1Relulstm_cell_699/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_699/mul_2Mullstm_cell_699/Sigmoid_2:y:0"lstm_cell_699/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_699_matmul_readvariableop_resource.lstm_cell_699_matmul_1_readvariableop_resource-lstm_cell_699_biasadd_readvariableop_resource*
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
while_body_4244677*
condR
while_cond_4244676*K
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
NoOpNoOp%^lstm_cell_699/BiasAdd/ReadVariableOp$^lstm_cell_699/MatMul/ReadVariableOp&^lstm_cell_699/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_699/BiasAdd/ReadVariableOp$lstm_cell_699/BiasAdd/ReadVariableOp2J
#lstm_cell_699/MatMul/ReadVariableOp#lstm_cell_699/MatMul/ReadVariableOp2N
%lstm_cell_699/MatMul_1/ReadVariableOp%lstm_cell_699/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4245149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4245149___redundant_placeholder05
1while_while_cond_4245149___redundant_placeholder15
1while_while_cond_4245149___redundant_placeholder25
1while_while_cond_4245149___redundant_placeholder3
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
0__inference_sequential_221_layer_call_fn_4243291

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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243090o
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242476

inputs>
,lstm_cell_701_matmul_readvariableop_resource:2(@
.lstm_cell_701_matmul_1_readvariableop_resource:
(;
-lstm_cell_701_biasadd_readvariableop_resource:(
identity??$lstm_cell_701/BiasAdd/ReadVariableOp?#lstm_cell_701/MatMul/ReadVariableOp?%lstm_cell_701/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_701/MatMul/ReadVariableOpReadVariableOp,lstm_cell_701_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_701/MatMulMatMulstrided_slice_2:output:0+lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_701_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_701/MatMul_1MatMulzeros:output:0-lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_701/addAddV2lstm_cell_701/MatMul:product:0 lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_701_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_701/BiasAddBiasAddlstm_cell_701/add:z:0,lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_701/splitSplit&lstm_cell_701/split/split_dim:output:0lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_701/SigmoidSigmoidlstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_1Sigmoidlstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_701/mulMullstm_cell_701/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_701/ReluRelulstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_1Mullstm_cell_701/Sigmoid:y:0 lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_701/add_1AddV2lstm_cell_701/mul:z:0lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_701/Sigmoid_2Sigmoidlstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_701/Relu_1Relulstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_701/mul_2Mullstm_cell_701/Sigmoid_2:y:0"lstm_cell_701/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_701_matmul_readvariableop_resource.lstm_cell_701_matmul_1_readvariableop_resource-lstm_cell_701_biasadd_readvariableop_resource*
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
while_body_4242392*
condR
while_cond_4242391*K
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
NoOpNoOp%^lstm_cell_701/BiasAdd/ReadVariableOp$^lstm_cell_701/MatMul/ReadVariableOp&^lstm_cell_701/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_701/BiasAdd/ReadVariableOp$lstm_cell_701/BiasAdd/ReadVariableOp2J
#lstm_cell_701/MatMul/ReadVariableOp#lstm_cell_701/MatMul/ReadVariableOp2N
%lstm_cell_701/MatMul_1/ReadVariableOp%lstm_cell_701/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_664_while_body_4243916.
*lstm_664_while_lstm_664_while_loop_counter4
0lstm_664_while_lstm_664_while_maximum_iterations
lstm_664_while_placeholder 
lstm_664_while_placeholder_1 
lstm_664_while_placeholder_2 
lstm_664_while_placeholder_3-
)lstm_664_while_lstm_664_strided_slice_1_0i
elstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0:	d?R
?lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?M
>lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
lstm_664_while_identity
lstm_664_while_identity_1
lstm_664_while_identity_2
lstm_664_while_identity_3
lstm_664_while_identity_4
lstm_664_while_identity_5+
'lstm_664_while_lstm_664_strided_slice_1g
clstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensorN
;lstm_664_while_lstm_cell_700_matmul_readvariableop_resource:	d?P
=lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource:	2?K
<lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource:	???3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp?2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp?4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp?
@lstm_664/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_664/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensor_0lstm_664_while_placeholderIlstm_664/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp=lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_664/while/lstm_cell_700/MatMulMatMul9lstm_664/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp?lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_664/while/lstm_cell_700/MatMul_1MatMullstm_664_while_placeholder_2<lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_664/while/lstm_cell_700/addAddV2-lstm_664/while/lstm_cell_700/MatMul:product:0/lstm_664/while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp>lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_664/while/lstm_cell_700/BiasAddBiasAdd$lstm_664/while/lstm_cell_700/add:z:0;lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_664/while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_664/while/lstm_cell_700/splitSplit5lstm_664/while/lstm_cell_700/split/split_dim:output:0-lstm_664/while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_664/while/lstm_cell_700/SigmoidSigmoid+lstm_664/while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_664/while/lstm_cell_700/Sigmoid_1Sigmoid+lstm_664/while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_664/while/lstm_cell_700/mulMul*lstm_664/while/lstm_cell_700/Sigmoid_1:y:0lstm_664_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_664/while/lstm_cell_700/ReluRelu+lstm_664/while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_664/while/lstm_cell_700/mul_1Mul(lstm_664/while/lstm_cell_700/Sigmoid:y:0/lstm_664/while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_664/while/lstm_cell_700/add_1AddV2$lstm_664/while/lstm_cell_700/mul:z:0&lstm_664/while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_664/while/lstm_cell_700/Sigmoid_2Sigmoid+lstm_664/while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_664/while/lstm_cell_700/Relu_1Relu&lstm_664/while/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_664/while/lstm_cell_700/mul_2Mul*lstm_664/while/lstm_cell_700/Sigmoid_2:y:01lstm_664/while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_664/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_664_while_placeholder_1lstm_664_while_placeholder&lstm_664/while/lstm_cell_700/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_664/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_664/while/addAddV2lstm_664_while_placeholderlstm_664/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_664/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_664/while/add_1AddV2*lstm_664_while_lstm_664_while_loop_counterlstm_664/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_664/while/IdentityIdentitylstm_664/while/add_1:z:0^lstm_664/while/NoOp*
T0*
_output_shapes
: ?
lstm_664/while/Identity_1Identity0lstm_664_while_lstm_664_while_maximum_iterations^lstm_664/while/NoOp*
T0*
_output_shapes
: t
lstm_664/while/Identity_2Identitylstm_664/while/add:z:0^lstm_664/while/NoOp*
T0*
_output_shapes
: ?
lstm_664/while/Identity_3IdentityClstm_664/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_664/while/NoOp*
T0*
_output_shapes
: ?
lstm_664/while/Identity_4Identity&lstm_664/while/lstm_cell_700/mul_2:z:0^lstm_664/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_664/while/Identity_5Identity&lstm_664/while/lstm_cell_700/add_1:z:0^lstm_664/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_664/while/NoOpNoOp4^lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp3^lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp5^lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_664_while_identity lstm_664/while/Identity:output:0"?
lstm_664_while_identity_1"lstm_664/while/Identity_1:output:0"?
lstm_664_while_identity_2"lstm_664/while/Identity_2:output:0"?
lstm_664_while_identity_3"lstm_664/while/Identity_3:output:0"?
lstm_664_while_identity_4"lstm_664/while/Identity_4:output:0"?
lstm_664_while_identity_5"lstm_664/while/Identity_5:output:0"T
'lstm_664_while_lstm_664_strided_slice_1)lstm_664_while_lstm_664_strided_slice_1_0"~
<lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource>lstm_664_while_lstm_cell_700_biasadd_readvariableop_resource_0"?
=lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource?lstm_664_while_lstm_cell_700_matmul_1_readvariableop_resource_0"|
;lstm_664_while_lstm_cell_700_matmul_readvariableop_resource=lstm_664_while_lstm_cell_700_matmul_readvariableop_resource_0"?
clstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensorelstm_664_while_tensorarrayv2read_tensorlistgetitem_lstm_664_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp3lstm_664/while/lstm_cell_700/BiasAdd/ReadVariableOp2h
2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp2lstm_664/while/lstm_cell_700/MatMul/ReadVariableOp2l
4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp4lstm_664/while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243090

inputs#
lstm_663_4243063:	?#
lstm_663_4243065:	d?
lstm_663_4243067:	?#
lstm_664_4243070:	d?#
lstm_664_4243072:	2?
lstm_664_4243074:	?"
lstm_665_4243077:2("
lstm_665_4243079:
(
lstm_665_4243081:(#
dense_221_4243084:

dense_221_4243086:
identity??!dense_221/StatefulPartitionedCall? lstm_663/StatefulPartitionedCall? lstm_664/StatefulPartitionedCall? lstm_665/StatefulPartitionedCall?
 lstm_663/StatefulPartitionedCallStatefulPartitionedCallinputslstm_663_4243063lstm_663_4243065lstm_663_4243067*
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4243022?
 lstm_664/StatefulPartitionedCallStatefulPartitionedCall)lstm_663/StatefulPartitionedCall:output:0lstm_664_4243070lstm_664_4243072lstm_664_4243074*
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4242857?
 lstm_665/StatefulPartitionedCallStatefulPartitionedCall)lstm_664/StatefulPartitionedCall:output:0lstm_665_4243077lstm_665_4243079lstm_665_4243081*
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242692?
!dense_221/StatefulPartitionedCallStatefulPartitionedCall)lstm_665/StatefulPartitionedCall:output:0dense_221_4243084dense_221_4243086*
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
F__inference_dense_221_layer_call_and_return_conditional_losses_4242494y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_221/StatefulPartitionedCall!^lstm_663/StatefulPartitionedCall!^lstm_664/StatefulPartitionedCall!^lstm_665/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall2D
 lstm_663/StatefulPartitionedCall lstm_663/StatefulPartitionedCall2D
 lstm_664/StatefulPartitionedCall lstm_664/StatefulPartitionedCall2D
 lstm_665/StatefulPartitionedCall lstm_665/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_665_layer_call_and_return_conditional_losses_4242018

inputs'
lstm_cell_701_4241936:2('
lstm_cell_701_4241938:
(#
lstm_cell_701_4241940:(
identity??%lstm_cell_701/StatefulPartitionedCall?while;
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
%lstm_cell_701/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_701_4241936lstm_cell_701_4241938lstm_cell_701_4241940*
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4241890n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_701_4241936lstm_cell_701_4241938lstm_cell_701_4241940*
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
while_body_4241949*
condR
while_cond_4241948*K
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
NoOpNoOp&^lstm_cell_701/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_701/StatefulPartitionedCall%lstm_cell_701/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4244247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4244247___redundant_placeholder05
1while_while_cond_4244247___redundant_placeholder15
1while_while_cond_4244247___redundant_placeholder25
1while_while_cond_4244247___redundant_placeholder3
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

lstm_665_while_body_4244055.
*lstm_665_while_lstm_665_while_loop_counter4
0lstm_665_while_lstm_665_while_maximum_iterations
lstm_665_while_placeholder 
lstm_665_while_placeholder_1 
lstm_665_while_placeholder_2 
lstm_665_while_placeholder_3-
)lstm_665_while_lstm_665_strided_slice_1_0i
elstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0:2(Q
?lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0:
(L
>lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0:(
lstm_665_while_identity
lstm_665_while_identity_1
lstm_665_while_identity_2
lstm_665_while_identity_3
lstm_665_while_identity_4
lstm_665_while_identity_5+
'lstm_665_while_lstm_665_strided_slice_1g
clstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensorM
;lstm_665_while_lstm_cell_701_matmul_readvariableop_resource:2(O
=lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource:
(J
<lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource:(??3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp?2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp?4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp?
@lstm_665/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_665/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensor_0lstm_665_while_placeholderIlstm_665/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOpReadVariableOp=lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_665/while/lstm_cell_701/MatMulMatMul9lstm_665/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOpReadVariableOp?lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_665/while/lstm_cell_701/MatMul_1MatMullstm_665_while_placeholder_2<lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_665/while/lstm_cell_701/addAddV2-lstm_665/while/lstm_cell_701/MatMul:product:0/lstm_665/while/lstm_cell_701/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOpReadVariableOp>lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_665/while/lstm_cell_701/BiasAddBiasAdd$lstm_665/while/lstm_cell_701/add:z:0;lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_665/while/lstm_cell_701/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_665/while/lstm_cell_701/splitSplit5lstm_665/while/lstm_cell_701/split/split_dim:output:0-lstm_665/while/lstm_cell_701/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_665/while/lstm_cell_701/SigmoidSigmoid+lstm_665/while/lstm_cell_701/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_665/while/lstm_cell_701/Sigmoid_1Sigmoid+lstm_665/while/lstm_cell_701/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_665/while/lstm_cell_701/mulMul*lstm_665/while/lstm_cell_701/Sigmoid_1:y:0lstm_665_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_665/while/lstm_cell_701/ReluRelu+lstm_665/while/lstm_cell_701/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_665/while/lstm_cell_701/mul_1Mul(lstm_665/while/lstm_cell_701/Sigmoid:y:0/lstm_665/while/lstm_cell_701/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_665/while/lstm_cell_701/add_1AddV2$lstm_665/while/lstm_cell_701/mul:z:0&lstm_665/while/lstm_cell_701/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_665/while/lstm_cell_701/Sigmoid_2Sigmoid+lstm_665/while/lstm_cell_701/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_665/while/lstm_cell_701/Relu_1Relu&lstm_665/while/lstm_cell_701/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_665/while/lstm_cell_701/mul_2Mul*lstm_665/while/lstm_cell_701/Sigmoid_2:y:01lstm_665/while/lstm_cell_701/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_665/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_665_while_placeholder_1lstm_665_while_placeholder&lstm_665/while/lstm_cell_701/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_665/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_665/while/addAddV2lstm_665_while_placeholderlstm_665/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_665/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_665/while/add_1AddV2*lstm_665_while_lstm_665_while_loop_counterlstm_665/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_665/while/IdentityIdentitylstm_665/while/add_1:z:0^lstm_665/while/NoOp*
T0*
_output_shapes
: ?
lstm_665/while/Identity_1Identity0lstm_665_while_lstm_665_while_maximum_iterations^lstm_665/while/NoOp*
T0*
_output_shapes
: t
lstm_665/while/Identity_2Identitylstm_665/while/add:z:0^lstm_665/while/NoOp*
T0*
_output_shapes
: ?
lstm_665/while/Identity_3IdentityClstm_665/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_665/while/NoOp*
T0*
_output_shapes
: ?
lstm_665/while/Identity_4Identity&lstm_665/while/lstm_cell_701/mul_2:z:0^lstm_665/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_665/while/Identity_5Identity&lstm_665/while/lstm_cell_701/add_1:z:0^lstm_665/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_665/while/NoOpNoOp4^lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp3^lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp5^lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_665_while_identity lstm_665/while/Identity:output:0"?
lstm_665_while_identity_1"lstm_665/while/Identity_1:output:0"?
lstm_665_while_identity_2"lstm_665/while/Identity_2:output:0"?
lstm_665_while_identity_3"lstm_665/while/Identity_3:output:0"?
lstm_665_while_identity_4"lstm_665/while/Identity_4:output:0"?
lstm_665_while_identity_5"lstm_665/while/Identity_5:output:0"T
'lstm_665_while_lstm_665_strided_slice_1)lstm_665_while_lstm_665_strided_slice_1_0"~
<lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource>lstm_665_while_lstm_cell_701_biasadd_readvariableop_resource_0"?
=lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource?lstm_665_while_lstm_cell_701_matmul_1_readvariableop_resource_0"|
;lstm_665_while_lstm_cell_701_matmul_readvariableop_resource=lstm_665_while_lstm_cell_701_matmul_readvariableop_resource_0"?
clstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensorelstm_665_while_tensorarrayv2read_tensorlistgetitem_lstm_665_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp3lstm_665/while/lstm_cell_701/BiasAdd/ReadVariableOp2h
2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp2lstm_665/while/lstm_cell_701/MatMul/ReadVariableOp2l
4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp4lstm_665/while/lstm_cell_701/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4244864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_700_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_700_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_700_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_700_matmul_readvariableop_resource:	d?G
4while_lstm_cell_700_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_700_biasadd_readvariableop_resource:	???*while/lstm_cell_700/BiasAdd/ReadVariableOp?)while/lstm_cell_700/MatMul/ReadVariableOp?+while/lstm_cell_700/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_700/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_700_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_700/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_700/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_700/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_700_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_700/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_700/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_700/addAddV2$while/lstm_cell_700/MatMul:product:0&while/lstm_cell_700/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_700/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_700_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_700/BiasAddBiasAddwhile/lstm_cell_700/add:z:02while/lstm_cell_700/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_700/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_700/splitSplit,while/lstm_cell_700/split/split_dim:output:0$while/lstm_cell_700/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_700/SigmoidSigmoid"while/lstm_cell_700/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_1Sigmoid"while/lstm_cell_700/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mulMul!while/lstm_cell_700/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_700/ReluRelu"while/lstm_cell_700/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_1Mulwhile/lstm_cell_700/Sigmoid:y:0&while/lstm_cell_700/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/add_1AddV2while/lstm_cell_700/mul:z:0while/lstm_cell_700/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_700/Sigmoid_2Sigmoid"while/lstm_cell_700/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_700/Relu_1Reluwhile/lstm_cell_700/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_700/mul_2Mul!while/lstm_cell_700/Sigmoid_2:y:0(while/lstm_cell_700/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_700/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_700/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_700/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_700/BiasAdd/ReadVariableOp*^while/lstm_cell_700/MatMul/ReadVariableOp,^while/lstm_cell_700/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_700_biasadd_readvariableop_resource5while_lstm_cell_700_biasadd_readvariableop_resource_0"n
4while_lstm_cell_700_matmul_1_readvariableop_resource6while_lstm_cell_700_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_700_matmul_readvariableop_resource4while_lstm_cell_700_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_700/BiasAdd/ReadVariableOp*while/lstm_cell_700/BiasAdd/ReadVariableOp2V
)while/lstm_cell_700/MatMul/ReadVariableOp)while/lstm_cell_700/MatMul/ReadVariableOp2Z
+while/lstm_cell_700/MatMul_1/ReadVariableOp+while/lstm_cell_700/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_663_input;
 serving_default_lstm_663_input:0?????????=
	dense_2210
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
2dense_221/kernel
:2dense_221/bias
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
0:.	?2lstm_663/lstm_cell_663/kernel
::8	d?2'lstm_663/lstm_cell_663/recurrent_kernel
*:(?2lstm_663/lstm_cell_663/bias
0:.	d?2lstm_664/lstm_cell_664/kernel
::8	2?2'lstm_664/lstm_cell_664/recurrent_kernel
*:(?2lstm_664/lstm_cell_664/bias
/:-2(2lstm_665/lstm_cell_665/kernel
9:7
(2'lstm_665/lstm_cell_665/recurrent_kernel
):'(2lstm_665/lstm_cell_665/bias
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
2Adam/dense_221/kernel/m
!:2Adam/dense_221/bias/m
5:3	?2$Adam/lstm_663/lstm_cell_663/kernel/m
?:=	d?2.Adam/lstm_663/lstm_cell_663/recurrent_kernel/m
/:-?2"Adam/lstm_663/lstm_cell_663/bias/m
5:3	d?2$Adam/lstm_664/lstm_cell_664/kernel/m
?:=	2?2.Adam/lstm_664/lstm_cell_664/recurrent_kernel/m
/:-?2"Adam/lstm_664/lstm_cell_664/bias/m
4:22(2$Adam/lstm_665/lstm_cell_665/kernel/m
>:<
(2.Adam/lstm_665/lstm_cell_665/recurrent_kernel/m
.:,(2"Adam/lstm_665/lstm_cell_665/bias/m
':%
2Adam/dense_221/kernel/v
!:2Adam/dense_221/bias/v
5:3	?2$Adam/lstm_663/lstm_cell_663/kernel/v
?:=	d?2.Adam/lstm_663/lstm_cell_663/recurrent_kernel/v
/:-?2"Adam/lstm_663/lstm_cell_663/bias/v
5:3	d?2$Adam/lstm_664/lstm_cell_664/kernel/v
?:=	2?2.Adam/lstm_664/lstm_cell_664/recurrent_kernel/v
/:-?2"Adam/lstm_664/lstm_cell_664/bias/v
4:22(2$Adam/lstm_665/lstm_cell_665/kernel/v
>:<
(2.Adam/lstm_665/lstm_cell_665/recurrent_kernel/v
.:,(2"Adam/lstm_665/lstm_cell_665/bias/v
?2?
0__inference_sequential_221_layer_call_fn_4242526
0__inference_sequential_221_layer_call_fn_4243264
0__inference_sequential_221_layer_call_fn_4243291
0__inference_sequential_221_layer_call_fn_4243142?
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243718
K__inference_sequential_221_layer_call_and_return_conditional_losses_4244145
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243172
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243202?
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
"__inference__wrapped_model_4240977lstm_663_input"?
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
*__inference_lstm_663_layer_call_fn_4244156
*__inference_lstm_663_layer_call_fn_4244167
*__inference_lstm_663_layer_call_fn_4244178
*__inference_lstm_663_layer_call_fn_4244189?
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244332
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244475
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244618
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244761?
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
*__inference_lstm_664_layer_call_fn_4244772
*__inference_lstm_664_layer_call_fn_4244783
*__inference_lstm_664_layer_call_fn_4244794
*__inference_lstm_664_layer_call_fn_4244805?
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4244948
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245091
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245234
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245377?
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
*__inference_lstm_665_layer_call_fn_4245388
*__inference_lstm_665_layer_call_fn_4245399
*__inference_lstm_665_layer_call_fn_4245410
*__inference_lstm_665_layer_call_fn_4245421?
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245564
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245707
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245850
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245993?
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
+__inference_dense_221_layer_call_fn_4246002?
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
F__inference_dense_221_layer_call_and_return_conditional_losses_4246012?
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
%__inference_signature_wrapper_4243237lstm_663_input"?
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
/__inference_lstm_cell_699_layer_call_fn_4246029
/__inference_lstm_cell_699_layer_call_fn_4246046?
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4246078
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4246110?
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
/__inference_lstm_cell_700_layer_call_fn_4246127
/__inference_lstm_cell_700_layer_call_fn_4246144?
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4246176
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4246208?
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
/__inference_lstm_cell_701_layer_call_fn_4246225
/__inference_lstm_cell_701_layer_call_fn_4246242?
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4246274
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4246306?
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
"__inference__wrapped_model_4240977?-./012345!";?8
1?.
,?)
lstm_663_input?????????
? "5?2
0
	dense_221#? 
	dense_221??????????
F__inference_dense_221_layer_call_and_return_conditional_losses_4246012\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_221_layer_call_fn_4246002O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244332?-./O?L
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244475?-./O?L
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244618q-./??<
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
E__inference_lstm_663_layer_call_and_return_conditional_losses_4244761q-./??<
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
*__inference_lstm_663_layer_call_fn_4244156}-./O?L
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
*__inference_lstm_663_layer_call_fn_4244167}-./O?L
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
*__inference_lstm_663_layer_call_fn_4244178d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_663_layer_call_fn_4244189d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_664_layer_call_and_return_conditional_losses_4244948?012O?L
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245091?012O?L
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245234q012??<
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
E__inference_lstm_664_layer_call_and_return_conditional_losses_4245377q012??<
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
*__inference_lstm_664_layer_call_fn_4244772}012O?L
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
*__inference_lstm_664_layer_call_fn_4244783}012O?L
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
*__inference_lstm_664_layer_call_fn_4244794d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_664_layer_call_fn_4244805d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245564}345O?L
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245707}345O?L
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245850m345??<
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
E__inference_lstm_665_layer_call_and_return_conditional_losses_4245993m345??<
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
*__inference_lstm_665_layer_call_fn_4245388p345O?L
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
*__inference_lstm_665_layer_call_fn_4245399p345O?L
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
*__inference_lstm_665_layer_call_fn_4245410`345??<
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
*__inference_lstm_665_layer_call_fn_4245421`345??<
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4246078?-./??}
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
J__inference_lstm_cell_699_layer_call_and_return_conditional_losses_4246110?-./??}
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
/__inference_lstm_cell_699_layer_call_fn_4246029?-./??}
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
/__inference_lstm_cell_699_layer_call_fn_4246046?-./??}
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4246176?012??}
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
J__inference_lstm_cell_700_layer_call_and_return_conditional_losses_4246208?012??}
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
/__inference_lstm_cell_700_layer_call_fn_4246127?012??}
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
/__inference_lstm_cell_700_layer_call_fn_4246144?012??}
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4246274?345??}
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
J__inference_lstm_cell_701_layer_call_and_return_conditional_losses_4246306?345??}
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
/__inference_lstm_cell_701_layer_call_fn_4246225?345??}
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
/__inference_lstm_cell_701_layer_call_fn_4246242?345??}
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243172y-./012345!"C?@
9?6
,?)
lstm_663_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243202y-./012345!"C?@
9?6
,?)
lstm_663_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_221_layer_call_and_return_conditional_losses_4243718q-./012345!";?8
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
K__inference_sequential_221_layer_call_and_return_conditional_losses_4244145q-./012345!";?8
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
0__inference_sequential_221_layer_call_fn_4242526l-./012345!"C?@
9?6
,?)
lstm_663_input?????????
p 

 
? "???????????
0__inference_sequential_221_layer_call_fn_4243142l-./012345!"C?@
9?6
,?)
lstm_663_input?????????
p

 
? "???????????
0__inference_sequential_221_layer_call_fn_4243264d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_221_layer_call_fn_4243291d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4243237?-./012345!"M?J
? 
C?@
>
lstm_663_input,?)
lstm_663_input?????????"5?2
0
	dense_221#? 
	dense_221?????????