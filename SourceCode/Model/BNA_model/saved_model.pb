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
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_108/kernel
u
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes

:
*
dtype0
t
dense_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_108/bias
m
"dense_108/bias/Read/ReadVariableOpReadVariableOpdense_108/bias*
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
lstm_324/lstm_cell_324/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_324/lstm_cell_324/kernel
?
1lstm_324/lstm_cell_324/kernel/Read/ReadVariableOpReadVariableOplstm_324/lstm_cell_324/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_324/lstm_cell_324/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_324/lstm_cell_324/recurrent_kernel
?
;lstm_324/lstm_cell_324/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_324/lstm_cell_324/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_324/lstm_cell_324/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_324/lstm_cell_324/bias
?
/lstm_324/lstm_cell_324/bias/Read/ReadVariableOpReadVariableOplstm_324/lstm_cell_324/bias*
_output_shapes	
:?*
dtype0
?
lstm_325/lstm_cell_325/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_325/lstm_cell_325/kernel
?
1lstm_325/lstm_cell_325/kernel/Read/ReadVariableOpReadVariableOplstm_325/lstm_cell_325/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_325/lstm_cell_325/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_325/lstm_cell_325/recurrent_kernel
?
;lstm_325/lstm_cell_325/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_325/lstm_cell_325/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_325/lstm_cell_325/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_325/lstm_cell_325/bias
?
/lstm_325/lstm_cell_325/bias/Read/ReadVariableOpReadVariableOplstm_325/lstm_cell_325/bias*
_output_shapes	
:?*
dtype0
?
lstm_326/lstm_cell_326/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_326/lstm_cell_326/kernel
?
1lstm_326/lstm_cell_326/kernel/Read/ReadVariableOpReadVariableOplstm_326/lstm_cell_326/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_326/lstm_cell_326/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_326/lstm_cell_326/recurrent_kernel
?
;lstm_326/lstm_cell_326/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_326/lstm_cell_326/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_326/lstm_cell_326/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_326/lstm_cell_326/bias
?
/lstm_326/lstm_cell_326/bias/Read/ReadVariableOpReadVariableOplstm_326/lstm_cell_326/bias*
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
Adam/dense_108/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_108/kernel/m
?
+Adam/dense_108/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_108/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_108/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_108/bias/m
{
)Adam/dense_108/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_108/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_324/lstm_cell_324/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_324/lstm_cell_324/kernel/m
?
8Adam/lstm_324/lstm_cell_324/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_324/lstm_cell_324/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_324/lstm_cell_324/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_324/lstm_cell_324/recurrent_kernel/m
?
BAdam/lstm_324/lstm_cell_324/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_324/lstm_cell_324/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_324/lstm_cell_324/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_324/lstm_cell_324/bias/m
?
6Adam/lstm_324/lstm_cell_324/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_324/lstm_cell_324/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_325/lstm_cell_325/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_325/lstm_cell_325/kernel/m
?
8Adam/lstm_325/lstm_cell_325/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_325/lstm_cell_325/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_325/lstm_cell_325/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_325/lstm_cell_325/recurrent_kernel/m
?
BAdam/lstm_325/lstm_cell_325/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_325/lstm_cell_325/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_325/lstm_cell_325/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_325/lstm_cell_325/bias/m
?
6Adam/lstm_325/lstm_cell_325/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_325/lstm_cell_325/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_326/lstm_cell_326/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_326/lstm_cell_326/kernel/m
?
8Adam/lstm_326/lstm_cell_326/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_326/lstm_cell_326/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_326/lstm_cell_326/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_326/lstm_cell_326/recurrent_kernel/m
?
BAdam/lstm_326/lstm_cell_326/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_326/lstm_cell_326/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_326/lstm_cell_326/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_326/lstm_cell_326/bias/m
?
6Adam/lstm_326/lstm_cell_326/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_326/lstm_cell_326/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_108/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_108/kernel/v
?
+Adam/dense_108/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_108/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_108/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_108/bias/v
{
)Adam/dense_108/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_108/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_324/lstm_cell_324/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_324/lstm_cell_324/kernel/v
?
8Adam/lstm_324/lstm_cell_324/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_324/lstm_cell_324/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_324/lstm_cell_324/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_324/lstm_cell_324/recurrent_kernel/v
?
BAdam/lstm_324/lstm_cell_324/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_324/lstm_cell_324/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_324/lstm_cell_324/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_324/lstm_cell_324/bias/v
?
6Adam/lstm_324/lstm_cell_324/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_324/lstm_cell_324/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_325/lstm_cell_325/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_325/lstm_cell_325/kernel/v
?
8Adam/lstm_325/lstm_cell_325/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_325/lstm_cell_325/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_325/lstm_cell_325/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_325/lstm_cell_325/recurrent_kernel/v
?
BAdam/lstm_325/lstm_cell_325/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_325/lstm_cell_325/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_325/lstm_cell_325/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_325/lstm_cell_325/bias/v
?
6Adam/lstm_325/lstm_cell_325/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_325/lstm_cell_325/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_326/lstm_cell_326/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_326/lstm_cell_326/kernel/v
?
8Adam/lstm_326/lstm_cell_326/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_326/lstm_cell_326/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_326/lstm_cell_326/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_326/lstm_cell_326/recurrent_kernel/v
?
BAdam/lstm_326/lstm_cell_326/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_326/lstm_cell_326/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_326/lstm_cell_326/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_326/lstm_cell_326/bias/v
?
6Adam/lstm_326/lstm_cell_326/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_326/lstm_cell_326/bias/v*
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
VARIABLE_VALUEdense_108/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_108/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_324/lstm_cell_324/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_324/lstm_cell_324/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_324/lstm_cell_324/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_325/lstm_cell_325/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_325/lstm_cell_325/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_325/lstm_cell_325/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_326/lstm_cell_326/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_326/lstm_cell_326/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_326/lstm_cell_326/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_108/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_108/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_324/lstm_cell_324/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_324/lstm_cell_324/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_324/lstm_cell_324/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_325/lstm_cell_325/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_325/lstm_cell_325/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_325/lstm_cell_325/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_326/lstm_cell_326/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_326/lstm_cell_326/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_326/lstm_cell_326/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_108/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_108/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_324/lstm_cell_324/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_324/lstm_cell_324/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_324/lstm_cell_324/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_325/lstm_cell_325/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_325/lstm_cell_325/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_325/lstm_cell_325/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_326/lstm_cell_326/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_326/lstm_cell_326/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_326/lstm_cell_326/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_324_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_324_inputlstm_324/lstm_cell_324/kernel'lstm_324/lstm_cell_324/recurrent_kernellstm_324/lstm_cell_324/biaslstm_325/lstm_cell_325/kernel'lstm_325/lstm_cell_325/recurrent_kernellstm_325/lstm_cell_325/biaslstm_326/lstm_cell_326/kernel'lstm_326/lstm_cell_326/recurrent_kernellstm_326/lstm_cell_326/biasdense_108/kerneldense_108/bias*
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
%__inference_signature_wrapper_1575357
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_108/kernel/Read/ReadVariableOp"dense_108/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_324/lstm_cell_324/kernel/Read/ReadVariableOp;lstm_324/lstm_cell_324/recurrent_kernel/Read/ReadVariableOp/lstm_324/lstm_cell_324/bias/Read/ReadVariableOp1lstm_325/lstm_cell_325/kernel/Read/ReadVariableOp;lstm_325/lstm_cell_325/recurrent_kernel/Read/ReadVariableOp/lstm_325/lstm_cell_325/bias/Read/ReadVariableOp1lstm_326/lstm_cell_326/kernel/Read/ReadVariableOp;lstm_326/lstm_cell_326/recurrent_kernel/Read/ReadVariableOp/lstm_326/lstm_cell_326/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_108/kernel/m/Read/ReadVariableOp)Adam/dense_108/bias/m/Read/ReadVariableOp8Adam/lstm_324/lstm_cell_324/kernel/m/Read/ReadVariableOpBAdam/lstm_324/lstm_cell_324/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_324/lstm_cell_324/bias/m/Read/ReadVariableOp8Adam/lstm_325/lstm_cell_325/kernel/m/Read/ReadVariableOpBAdam/lstm_325/lstm_cell_325/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_325/lstm_cell_325/bias/m/Read/ReadVariableOp8Adam/lstm_326/lstm_cell_326/kernel/m/Read/ReadVariableOpBAdam/lstm_326/lstm_cell_326/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_326/lstm_cell_326/bias/m/Read/ReadVariableOp+Adam/dense_108/kernel/v/Read/ReadVariableOp)Adam/dense_108/bias/v/Read/ReadVariableOp8Adam/lstm_324/lstm_cell_324/kernel/v/Read/ReadVariableOpBAdam/lstm_324/lstm_cell_324/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_324/lstm_cell_324/bias/v/Read/ReadVariableOp8Adam/lstm_325/lstm_cell_325/kernel/v/Read/ReadVariableOpBAdam/lstm_325/lstm_cell_325/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_325/lstm_cell_325/bias/v/Read/ReadVariableOp8Adam/lstm_326/lstm_cell_326/kernel/v/Read/ReadVariableOpBAdam/lstm_326/lstm_cell_326/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_326/lstm_cell_326/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1578569
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_108/kerneldense_108/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_324/lstm_cell_324/kernel'lstm_324/lstm_cell_324/recurrent_kernellstm_324/lstm_cell_324/biaslstm_325/lstm_cell_325/kernel'lstm_325/lstm_cell_325/recurrent_kernellstm_325/lstm_cell_325/biaslstm_326/lstm_cell_326/kernel'lstm_326/lstm_cell_326/recurrent_kernellstm_326/lstm_cell_326/biastotalcountAdam/dense_108/kernel/mAdam/dense_108/bias/m$Adam/lstm_324/lstm_cell_324/kernel/m.Adam/lstm_324/lstm_cell_324/recurrent_kernel/m"Adam/lstm_324/lstm_cell_324/bias/m$Adam/lstm_325/lstm_cell_325/kernel/m.Adam/lstm_325/lstm_cell_325/recurrent_kernel/m"Adam/lstm_325/lstm_cell_325/bias/m$Adam/lstm_326/lstm_cell_326/kernel/m.Adam/lstm_326/lstm_cell_326/recurrent_kernel/m"Adam/lstm_326/lstm_cell_326/bias/mAdam/dense_108/kernel/vAdam/dense_108/bias/v$Adam/lstm_324/lstm_cell_324/kernel/v.Adam/lstm_324/lstm_cell_324/recurrent_kernel/v"Adam/lstm_324/lstm_cell_324/bias/v$Adam/lstm_325/lstm_cell_325/kernel/v.Adam/lstm_325/lstm_cell_325/recurrent_kernel/v"Adam/lstm_325/lstm_cell_325/bias/v$Adam/lstm_326/lstm_cell_326/kernel/v.Adam/lstm_326/lstm_cell_326/recurrent_kernel/v"Adam/lstm_326/lstm_cell_326/bias/v*4
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
#__inference__traced_restore_1578699??+
?
?
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573660

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
?T
?
*sequential_108_lstm_325_while_body_1572868L
Hsequential_108_lstm_325_while_sequential_108_lstm_325_while_loop_counterR
Nsequential_108_lstm_325_while_sequential_108_lstm_325_while_maximum_iterations-
)sequential_108_lstm_325_while_placeholder/
+sequential_108_lstm_325_while_placeholder_1/
+sequential_108_lstm_325_while_placeholder_2/
+sequential_108_lstm_325_while_placeholder_3K
Gsequential_108_lstm_325_while_sequential_108_lstm_325_strided_slice_1_0?
?sequential_108_lstm_325_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_325_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_108_lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0:	d?a
Nsequential_108_lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?\
Msequential_108_lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0:	?*
&sequential_108_lstm_325_while_identity,
(sequential_108_lstm_325_while_identity_1,
(sequential_108_lstm_325_while_identity_2,
(sequential_108_lstm_325_while_identity_3,
(sequential_108_lstm_325_while_identity_4,
(sequential_108_lstm_325_while_identity_5I
Esequential_108_lstm_325_while_sequential_108_lstm_325_strided_slice_1?
?sequential_108_lstm_325_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_325_tensorarrayunstack_tensorlistfromtensor]
Jsequential_108_lstm_325_while_lstm_cell_259_matmul_readvariableop_resource:	d?_
Lsequential_108_lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource:	2?Z
Ksequential_108_lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource:	???Bsequential_108/lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp?Asequential_108/lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp?Csequential_108/lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp?
Osequential_108/lstm_325/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_108/lstm_325/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_108_lstm_325_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_325_tensorarrayunstack_tensorlistfromtensor_0)sequential_108_lstm_325_while_placeholderXsequential_108/lstm_325/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_108/lstm_325/while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOpLsequential_108_lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_108/lstm_325/while/lstm_cell_259/MatMulMatMulHsequential_108/lstm_325/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_108/lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_108/lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOpNsequential_108_lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_108/lstm_325/while/lstm_cell_259/MatMul_1MatMul+sequential_108_lstm_325_while_placeholder_2Ksequential_108/lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_108/lstm_325/while/lstm_cell_259/addAddV2<sequential_108/lstm_325/while/lstm_cell_259/MatMul:product:0>sequential_108/lstm_325/while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_108/lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOpMsequential_108_lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_108/lstm_325/while/lstm_cell_259/BiasAddBiasAdd3sequential_108/lstm_325/while/lstm_cell_259/add:z:0Jsequential_108/lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_108/lstm_325/while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_108/lstm_325/while/lstm_cell_259/splitSplitDsequential_108/lstm_325/while/lstm_cell_259/split/split_dim:output:0<sequential_108/lstm_325/while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_108/lstm_325/while/lstm_cell_259/SigmoidSigmoid:sequential_108/lstm_325/while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_108/lstm_325/while/lstm_cell_259/Sigmoid_1Sigmoid:sequential_108/lstm_325/while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_108/lstm_325/while/lstm_cell_259/mulMul9sequential_108/lstm_325/while/lstm_cell_259/Sigmoid_1:y:0+sequential_108_lstm_325_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_108/lstm_325/while/lstm_cell_259/ReluRelu:sequential_108/lstm_325/while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_108/lstm_325/while/lstm_cell_259/mul_1Mul7sequential_108/lstm_325/while/lstm_cell_259/Sigmoid:y:0>sequential_108/lstm_325/while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_108/lstm_325/while/lstm_cell_259/add_1AddV23sequential_108/lstm_325/while/lstm_cell_259/mul:z:05sequential_108/lstm_325/while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_108/lstm_325/while/lstm_cell_259/Sigmoid_2Sigmoid:sequential_108/lstm_325/while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_108/lstm_325/while/lstm_cell_259/Relu_1Relu5sequential_108/lstm_325/while/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_108/lstm_325/while/lstm_cell_259/mul_2Mul9sequential_108/lstm_325/while/lstm_cell_259/Sigmoid_2:y:0@sequential_108/lstm_325/while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_108/lstm_325/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_108_lstm_325_while_placeholder_1)sequential_108_lstm_325_while_placeholder5sequential_108/lstm_325/while/lstm_cell_259/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_108/lstm_325/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_108/lstm_325/while/addAddV2)sequential_108_lstm_325_while_placeholder,sequential_108/lstm_325/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_108/lstm_325/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_108/lstm_325/while/add_1AddV2Hsequential_108_lstm_325_while_sequential_108_lstm_325_while_loop_counter.sequential_108/lstm_325/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_108/lstm_325/while/IdentityIdentity'sequential_108/lstm_325/while/add_1:z:0#^sequential_108/lstm_325/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_325/while/Identity_1IdentityNsequential_108_lstm_325_while_sequential_108_lstm_325_while_maximum_iterations#^sequential_108/lstm_325/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_325/while/Identity_2Identity%sequential_108/lstm_325/while/add:z:0#^sequential_108/lstm_325/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_325/while/Identity_3IdentityRsequential_108/lstm_325/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_108/lstm_325/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_325/while/Identity_4Identity5sequential_108/lstm_325/while/lstm_cell_259/mul_2:z:0#^sequential_108/lstm_325/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_108/lstm_325/while/Identity_5Identity5sequential_108/lstm_325/while/lstm_cell_259/add_1:z:0#^sequential_108/lstm_325/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_108/lstm_325/while/NoOpNoOpC^sequential_108/lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOpB^sequential_108/lstm_325/while/lstm_cell_259/MatMul/ReadVariableOpD^sequential_108/lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_108_lstm_325_while_identity/sequential_108/lstm_325/while/Identity:output:0"]
(sequential_108_lstm_325_while_identity_11sequential_108/lstm_325/while/Identity_1:output:0"]
(sequential_108_lstm_325_while_identity_21sequential_108/lstm_325/while/Identity_2:output:0"]
(sequential_108_lstm_325_while_identity_31sequential_108/lstm_325/while/Identity_3:output:0"]
(sequential_108_lstm_325_while_identity_41sequential_108/lstm_325/while/Identity_4:output:0"]
(sequential_108_lstm_325_while_identity_51sequential_108/lstm_325/while/Identity_5:output:0"?
Ksequential_108_lstm_325_while_lstm_cell_259_biasadd_readvariableop_resourceMsequential_108_lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0"?
Lsequential_108_lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resourceNsequential_108_lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0"?
Jsequential_108_lstm_325_while_lstm_cell_259_matmul_readvariableop_resourceLsequential_108_lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0"?
Esequential_108_lstm_325_while_sequential_108_lstm_325_strided_slice_1Gsequential_108_lstm_325_while_sequential_108_lstm_325_strided_slice_1_0"?
?sequential_108_lstm_325_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_325_tensorarrayunstack_tensorlistfromtensor?sequential_108_lstm_325_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_325_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_108/lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOpBsequential_108/lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp2?
Asequential_108/lstm_325/while/lstm_cell_259/MatMul/ReadVariableOpAsequential_108/lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp2?
Csequential_108/lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOpCsequential_108/lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1574727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1574727___redundant_placeholder05
1while_while_cond_1574727___redundant_placeholder15
1while_while_cond_1574727___redundant_placeholder25
1while_while_cond_1574727___redundant_placeholder3
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

lstm_325_while_body_1575609.
*lstm_325_while_lstm_325_while_loop_counter4
0lstm_325_while_lstm_325_while_maximum_iterations
lstm_325_while_placeholder 
lstm_325_while_placeholder_1 
lstm_325_while_placeholder_2 
lstm_325_while_placeholder_3-
)lstm_325_while_lstm_325_strided_slice_1_0i
elstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0:	d?R
?lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?M
>lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
lstm_325_while_identity
lstm_325_while_identity_1
lstm_325_while_identity_2
lstm_325_while_identity_3
lstm_325_while_identity_4
lstm_325_while_identity_5+
'lstm_325_while_lstm_325_strided_slice_1g
clstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensorN
;lstm_325_while_lstm_cell_259_matmul_readvariableop_resource:	d?P
=lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource:	2?K
<lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource:	???3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp?2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp?4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp?
@lstm_325/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_325/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensor_0lstm_325_while_placeholderIlstm_325/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp=lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_325/while/lstm_cell_259/MatMulMatMul9lstm_325/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp?lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_325/while/lstm_cell_259/MatMul_1MatMullstm_325_while_placeholder_2<lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_325/while/lstm_cell_259/addAddV2-lstm_325/while/lstm_cell_259/MatMul:product:0/lstm_325/while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp>lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_325/while/lstm_cell_259/BiasAddBiasAdd$lstm_325/while/lstm_cell_259/add:z:0;lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_325/while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_325/while/lstm_cell_259/splitSplit5lstm_325/while/lstm_cell_259/split/split_dim:output:0-lstm_325/while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_325/while/lstm_cell_259/SigmoidSigmoid+lstm_325/while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_325/while/lstm_cell_259/Sigmoid_1Sigmoid+lstm_325/while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_325/while/lstm_cell_259/mulMul*lstm_325/while/lstm_cell_259/Sigmoid_1:y:0lstm_325_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_325/while/lstm_cell_259/ReluRelu+lstm_325/while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_325/while/lstm_cell_259/mul_1Mul(lstm_325/while/lstm_cell_259/Sigmoid:y:0/lstm_325/while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_325/while/lstm_cell_259/add_1AddV2$lstm_325/while/lstm_cell_259/mul:z:0&lstm_325/while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_325/while/lstm_cell_259/Sigmoid_2Sigmoid+lstm_325/while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_325/while/lstm_cell_259/Relu_1Relu&lstm_325/while/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_325/while/lstm_cell_259/mul_2Mul*lstm_325/while/lstm_cell_259/Sigmoid_2:y:01lstm_325/while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_325/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_325_while_placeholder_1lstm_325_while_placeholder&lstm_325/while/lstm_cell_259/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_325/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_325/while/addAddV2lstm_325_while_placeholderlstm_325/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_325/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_325/while/add_1AddV2*lstm_325_while_lstm_325_while_loop_counterlstm_325/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_325/while/IdentityIdentitylstm_325/while/add_1:z:0^lstm_325/while/NoOp*
T0*
_output_shapes
: ?
lstm_325/while/Identity_1Identity0lstm_325_while_lstm_325_while_maximum_iterations^lstm_325/while/NoOp*
T0*
_output_shapes
: t
lstm_325/while/Identity_2Identitylstm_325/while/add:z:0^lstm_325/while/NoOp*
T0*
_output_shapes
: ?
lstm_325/while/Identity_3IdentityClstm_325/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_325/while/NoOp*
T0*
_output_shapes
: ?
lstm_325/while/Identity_4Identity&lstm_325/while/lstm_cell_259/mul_2:z:0^lstm_325/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_325/while/Identity_5Identity&lstm_325/while/lstm_cell_259/add_1:z:0^lstm_325/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_325/while/NoOpNoOp4^lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp3^lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp5^lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_325_while_identity lstm_325/while/Identity:output:0"?
lstm_325_while_identity_1"lstm_325/while/Identity_1:output:0"?
lstm_325_while_identity_2"lstm_325/while/Identity_2:output:0"?
lstm_325_while_identity_3"lstm_325/while/Identity_3:output:0"?
lstm_325_while_identity_4"lstm_325/while/Identity_4:output:0"?
lstm_325_while_identity_5"lstm_325/while/Identity_5:output:0"T
'lstm_325_while_lstm_325_strided_slice_1)lstm_325_while_lstm_325_strided_slice_1_0"~
<lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource>lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0"?
=lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource?lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0"|
;lstm_325_while_lstm_cell_259_matmul_readvariableop_resource=lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0"?
clstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensorelstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp2h
2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp2l
4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573164

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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1573947

inputs'
lstm_cell_260_1573865:2('
lstm_cell_260_1573867:
(#
lstm_cell_260_1573869:(
identity??%lstm_cell_260/StatefulPartitionedCall?while;
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
%lstm_cell_260/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_260_1573865lstm_cell_260_1573867lstm_cell_260_1573869*
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1573864n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_260_1573865lstm_cell_260_1573867lstm_cell_260_1573869*
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
while_body_1573878*
condR
while_cond_1573877*K
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
NoOpNoOp&^lstm_cell_260/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_260/StatefulPartitionedCall%lstm_cell_260/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1578029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_260_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_260_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_260_matmul_readvariableop_resource:2(F
4while_lstm_cell_260_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_260_biasadd_readvariableop_resource:(??*while/lstm_cell_260/BiasAdd/ReadVariableOp?)while/lstm_cell_260/MatMul/ReadVariableOp?+while/lstm_cell_260/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_260/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_260/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_260/addAddV2$while/lstm_cell_260/MatMul:product:0&while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_260/BiasAddBiasAddwhile/lstm_cell_260/add:z:02while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_260/splitSplit,while/lstm_cell_260/split/split_dim:output:0$while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_260/SigmoidSigmoid"while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_1Sigmoid"while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mulMul!while/lstm_cell_260/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_260/ReluRelu"while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_1Mulwhile/lstm_cell_260/Sigmoid:y:0&while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/add_1AddV2while/lstm_cell_260/mul:z:0while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_2Sigmoid"while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_260/Relu_1Reluwhile/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_2Mul!while/lstm_cell_260/Sigmoid_2:y:0(while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_260/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_260/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_260/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_260/BiasAdd/ReadVariableOp*^while/lstm_cell_260/MatMul/ReadVariableOp,^while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_260_biasadd_readvariableop_resource5while_lstm_cell_260_biasadd_readvariableop_resource_0"n
4while_lstm_cell_260_matmul_1_readvariableop_resource6while_lstm_cell_260_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_260_matmul_readvariableop_resource4while_lstm_cell_260_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_260/BiasAdd/ReadVariableOp*while/lstm_cell_260/BiasAdd/ReadVariableOp2V
)while/lstm_cell_260/MatMul/ReadVariableOp)while/lstm_cell_260/MatMul/ReadVariableOp2Z
+while/lstm_cell_260/MatMul_1/ReadVariableOp+while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1575357
lstm_324_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_324_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1573097o
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
_user_specified_namelstm_324_input
?8
?
while_body_1574728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_260_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_260_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_260_matmul_readvariableop_resource:2(F
4while_lstm_cell_260_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_260_biasadd_readvariableop_resource:(??*while/lstm_cell_260/BiasAdd/ReadVariableOp?)while/lstm_cell_260/MatMul/ReadVariableOp?+while/lstm_cell_260/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_260/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_260/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_260/addAddV2$while/lstm_cell_260/MatMul:product:0&while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_260/BiasAddBiasAddwhile/lstm_cell_260/add:z:02while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_260/splitSplit,while/lstm_cell_260/split/split_dim:output:0$while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_260/SigmoidSigmoid"while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_1Sigmoid"while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mulMul!while/lstm_cell_260/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_260/ReluRelu"while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_1Mulwhile/lstm_cell_260/Sigmoid:y:0&while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/add_1AddV2while/lstm_cell_260/mul:z:0while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_2Sigmoid"while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_260/Relu_1Reluwhile/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_2Mul!while/lstm_cell_260/Sigmoid_2:y:0(while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_260/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_260/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_260/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_260/BiasAdd/ReadVariableOp*^while/lstm_cell_260/MatMul/ReadVariableOp,^while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_260_biasadd_readvariableop_resource5while_lstm_cell_260_biasadd_readvariableop_resource_0"n
4while_lstm_cell_260_matmul_1_readvariableop_resource6while_lstm_cell_260_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_260_matmul_readvariableop_resource4while_lstm_cell_260_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_260/BiasAdd/ReadVariableOp*while/lstm_cell_260/BiasAdd/ReadVariableOp2V
)while/lstm_cell_260/MatMul/ReadVariableOp)while/lstm_cell_260/MatMul/ReadVariableOp2Z
+while/lstm_cell_260/MatMul_1/ReadVariableOp+while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1574211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1574211___redundant_placeholder05
1while_while_cond_1574211___redundant_placeholder15
1while_while_cond_1574211___redundant_placeholder25
1while_while_cond_1574211___redundant_placeholder3
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
/__inference_lstm_cell_258_layer_call_fn_1578166

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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573310o
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

lstm_326_while_body_1575748.
*lstm_326_while_lstm_326_while_loop_counter4
0lstm_326_while_lstm_326_while_maximum_iterations
lstm_326_while_placeholder 
lstm_326_while_placeholder_1 
lstm_326_while_placeholder_2 
lstm_326_while_placeholder_3-
)lstm_326_while_lstm_326_strided_slice_1_0i
elstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0:2(Q
?lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(L
>lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0:(
lstm_326_while_identity
lstm_326_while_identity_1
lstm_326_while_identity_2
lstm_326_while_identity_3
lstm_326_while_identity_4
lstm_326_while_identity_5+
'lstm_326_while_lstm_326_strided_slice_1g
clstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensorM
;lstm_326_while_lstm_cell_260_matmul_readvariableop_resource:2(O
=lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource:
(J
<lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource:(??3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp?2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp?4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp?
@lstm_326/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_326/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensor_0lstm_326_while_placeholderIlstm_326/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp=lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_326/while/lstm_cell_260/MatMulMatMul9lstm_326/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp?lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_326/while/lstm_cell_260/MatMul_1MatMullstm_326_while_placeholder_2<lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_326/while/lstm_cell_260/addAddV2-lstm_326/while/lstm_cell_260/MatMul:product:0/lstm_326/while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp>lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_326/while/lstm_cell_260/BiasAddBiasAdd$lstm_326/while/lstm_cell_260/add:z:0;lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_326/while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_326/while/lstm_cell_260/splitSplit5lstm_326/while/lstm_cell_260/split/split_dim:output:0-lstm_326/while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_326/while/lstm_cell_260/SigmoidSigmoid+lstm_326/while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_326/while/lstm_cell_260/Sigmoid_1Sigmoid+lstm_326/while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_326/while/lstm_cell_260/mulMul*lstm_326/while/lstm_cell_260/Sigmoid_1:y:0lstm_326_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_326/while/lstm_cell_260/ReluRelu+lstm_326/while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_326/while/lstm_cell_260/mul_1Mul(lstm_326/while/lstm_cell_260/Sigmoid:y:0/lstm_326/while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_326/while/lstm_cell_260/add_1AddV2$lstm_326/while/lstm_cell_260/mul:z:0&lstm_326/while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_326/while/lstm_cell_260/Sigmoid_2Sigmoid+lstm_326/while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_326/while/lstm_cell_260/Relu_1Relu&lstm_326/while/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_326/while/lstm_cell_260/mul_2Mul*lstm_326/while/lstm_cell_260/Sigmoid_2:y:01lstm_326/while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_326/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_326_while_placeholder_1lstm_326_while_placeholder&lstm_326/while/lstm_cell_260/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_326/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_326/while/addAddV2lstm_326_while_placeholderlstm_326/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_326/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_326/while/add_1AddV2*lstm_326_while_lstm_326_while_loop_counterlstm_326/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_326/while/IdentityIdentitylstm_326/while/add_1:z:0^lstm_326/while/NoOp*
T0*
_output_shapes
: ?
lstm_326/while/Identity_1Identity0lstm_326_while_lstm_326_while_maximum_iterations^lstm_326/while/NoOp*
T0*
_output_shapes
: t
lstm_326/while/Identity_2Identitylstm_326/while/add:z:0^lstm_326/while/NoOp*
T0*
_output_shapes
: ?
lstm_326/while/Identity_3IdentityClstm_326/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_326/while/NoOp*
T0*
_output_shapes
: ?
lstm_326/while/Identity_4Identity&lstm_326/while/lstm_cell_260/mul_2:z:0^lstm_326/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_326/while/Identity_5Identity&lstm_326/while/lstm_cell_260/add_1:z:0^lstm_326/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_326/while/NoOpNoOp4^lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp3^lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp5^lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_326_while_identity lstm_326/while/Identity:output:0"?
lstm_326_while_identity_1"lstm_326/while/Identity_1:output:0"?
lstm_326_while_identity_2"lstm_326/while/Identity_2:output:0"?
lstm_326_while_identity_3"lstm_326/while/Identity_3:output:0"?
lstm_326_while_identity_4"lstm_326/while/Identity_4:output:0"?
lstm_326_while_identity_5"lstm_326/while/Identity_5:output:0"T
'lstm_326_while_lstm_326_strided_slice_1)lstm_326_while_lstm_326_strided_slice_1_0"~
<lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource>lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0"?
=lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource?lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0"|
;lstm_326_while_lstm_cell_260_matmul_readvariableop_resource=lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0"?
clstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensorelstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp2h
2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp2l
4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577827
inputs_0>
,lstm_cell_260_matmul_readvariableop_resource:2(@
.lstm_cell_260_matmul_1_readvariableop_resource:
(;
-lstm_cell_260_biasadd_readvariableop_resource:(
identity??$lstm_cell_260/BiasAdd/ReadVariableOp?#lstm_cell_260/MatMul/ReadVariableOp?%lstm_cell_260/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_260/MatMul/ReadVariableOpReadVariableOp,lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_260/MatMulMatMulstrided_slice_2:output:0+lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_260/MatMul_1MatMulzeros:output:0-lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_260/addAddV2lstm_cell_260/MatMul:product:0 lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_260/BiasAddBiasAddlstm_cell_260/add:z:0,lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_260/splitSplit&lstm_cell_260/split/split_dim:output:0lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_260/SigmoidSigmoidlstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_1Sigmoidlstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_260/mulMullstm_cell_260/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_260/ReluRelulstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_1Mullstm_cell_260/Sigmoid:y:0 lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_260/add_1AddV2lstm_cell_260/mul:z:0lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_2Sigmoidlstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_260/Relu_1Relulstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_2Mullstm_cell_260/Sigmoid_2:y:0"lstm_cell_260/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_260_matmul_readvariableop_resource.lstm_cell_260_matmul_1_readvariableop_resource-lstm_cell_260_biasadd_readvariableop_resource*
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
while_body_1577743*
condR
while_cond_1577742*K
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
NoOpNoOp%^lstm_cell_260/BiasAdd/ReadVariableOp$^lstm_cell_260/MatMul/ReadVariableOp&^lstm_cell_260/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_260/BiasAdd/ReadVariableOp$lstm_cell_260/BiasAdd/ReadVariableOp2J
#lstm_cell_260/MatMul/ReadVariableOp#lstm_cell_260/MatMul/ReadVariableOp2N
%lstm_cell_260/MatMul_1/ReadVariableOp%lstm_cell_260/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1577269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1577269___redundant_placeholder05
1while_while_cond_1577269___redundant_placeholder15
1while_while_cond_1577269___redundant_placeholder25
1while_while_cond_1577269___redundant_placeholder3
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1574614

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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1573788

inputs(
lstm_cell_259_1573706:	d?(
lstm_cell_259_1573708:	2?$
lstm_cell_259_1573710:	?
identity??%lstm_cell_259/StatefulPartitionedCall?while;
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
%lstm_cell_259/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_259_1573706lstm_cell_259_1573708lstm_cell_259_1573710*
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573660n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_259_1573706lstm_cell_259_1573708lstm_cell_259_1573710*
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
while_body_1573719*
condR
while_cond_1573718*K
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
NoOpNoOp&^lstm_cell_259/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_259/StatefulPartitionedCall%lstm_cell_259/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574596

inputs>
,lstm_cell_260_matmul_readvariableop_resource:2(@
.lstm_cell_260_matmul_1_readvariableop_resource:
(;
-lstm_cell_260_biasadd_readvariableop_resource:(
identity??$lstm_cell_260/BiasAdd/ReadVariableOp?#lstm_cell_260/MatMul/ReadVariableOp?%lstm_cell_260/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_260/MatMul/ReadVariableOpReadVariableOp,lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_260/MatMulMatMulstrided_slice_2:output:0+lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_260/MatMul_1MatMulzeros:output:0-lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_260/addAddV2lstm_cell_260/MatMul:product:0 lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_260/BiasAddBiasAddlstm_cell_260/add:z:0,lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_260/splitSplit&lstm_cell_260/split/split_dim:output:0lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_260/SigmoidSigmoidlstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_1Sigmoidlstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_260/mulMullstm_cell_260/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_260/ReluRelulstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_1Mullstm_cell_260/Sigmoid:y:0 lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_260/add_1AddV2lstm_cell_260/mul:z:0lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_2Sigmoidlstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_260/Relu_1Relulstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_2Mullstm_cell_260/Sigmoid_2:y:0"lstm_cell_260/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_260_matmul_readvariableop_resource.lstm_cell_260_matmul_1_readvariableop_resource-lstm_cell_260_biasadd_readvariableop_resource*
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
while_body_1574512*
condR
while_cond_1574511*K
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
NoOpNoOp%^lstm_cell_260/BiasAdd/ReadVariableOp$^lstm_cell_260/MatMul/ReadVariableOp&^lstm_cell_260/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_260/BiasAdd/ReadVariableOp$lstm_cell_260/BiasAdd/ReadVariableOp2J
#lstm_cell_260/MatMul/ReadVariableOp#lstm_cell_260/MatMul/ReadVariableOp2N
%lstm_cell_260/MatMul_1/ReadVariableOp%lstm_cell_260/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575322
lstm_324_input#
lstm_324_1575295:	?#
lstm_324_1575297:	d?
lstm_324_1575299:	?#
lstm_325_1575302:	d?#
lstm_325_1575304:	2?
lstm_325_1575306:	?"
lstm_326_1575309:2("
lstm_326_1575311:
(
lstm_326_1575313:(#
dense_108_1575316:

dense_108_1575318:
identity??!dense_108/StatefulPartitionedCall? lstm_324/StatefulPartitionedCall? lstm_325/StatefulPartitionedCall? lstm_326/StatefulPartitionedCall?
 lstm_324/StatefulPartitionedCallStatefulPartitionedCalllstm_324_inputlstm_324_1575295lstm_324_1575297lstm_324_1575299*
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1575142?
 lstm_325/StatefulPartitionedCallStatefulPartitionedCall)lstm_324/StatefulPartitionedCall:output:0lstm_325_1575302lstm_325_1575304lstm_325_1575306*
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574977?
 lstm_326/StatefulPartitionedCallStatefulPartitionedCall)lstm_325/StatefulPartitionedCall:output:0lstm_326_1575309lstm_326_1575311lstm_326_1575313*
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574812?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall)lstm_326/StatefulPartitionedCall:output:0dense_108_1575316dense_108_1575318*
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1574614y
IdentityIdentity*dense_108/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_108/StatefulPartitionedCall!^lstm_324/StatefulPartitionedCall!^lstm_325/StatefulPartitionedCall!^lstm_326/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2D
 lstm_324/StatefulPartitionedCall lstm_324/StatefulPartitionedCall2D
 lstm_325/StatefulPartitionedCall lstm_325/StatefulPartitionedCall2D
 lstm_326/StatefulPartitionedCall lstm_326/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_324_input
?
?
*__inference_lstm_324_layer_call_fn_1576276
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1573247|
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1573438

inputs(
lstm_cell_258_1573356:	?(
lstm_cell_258_1573358:	d?$
lstm_cell_258_1573360:	?
identity??%lstm_cell_258/StatefulPartitionedCall?while;
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
%lstm_cell_258/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_258_1573356lstm_cell_258_1573358lstm_cell_258_1573360*
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573310n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_258_1573356lstm_cell_258_1573358lstm_cell_258_1573360*
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
while_body_1573369*
condR
while_cond_1573368*K
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
NoOpNoOp&^lstm_cell_258/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_258/StatefulPartitionedCall%lstm_cell_258/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_108_lstm_326_while_cond_1573006L
Hsequential_108_lstm_326_while_sequential_108_lstm_326_while_loop_counterR
Nsequential_108_lstm_326_while_sequential_108_lstm_326_while_maximum_iterations-
)sequential_108_lstm_326_while_placeholder/
+sequential_108_lstm_326_while_placeholder_1/
+sequential_108_lstm_326_while_placeholder_2/
+sequential_108_lstm_326_while_placeholder_3N
Jsequential_108_lstm_326_while_less_sequential_108_lstm_326_strided_slice_1e
asequential_108_lstm_326_while_sequential_108_lstm_326_while_cond_1573006___redundant_placeholder0e
asequential_108_lstm_326_while_sequential_108_lstm_326_while_cond_1573006___redundant_placeholder1e
asequential_108_lstm_326_while_sequential_108_lstm_326_while_cond_1573006___redundant_placeholder2e
asequential_108_lstm_326_while_sequential_108_lstm_326_while_cond_1573006___redundant_placeholder3*
&sequential_108_lstm_326_while_identity
?
"sequential_108/lstm_326/while/LessLess)sequential_108_lstm_326_while_placeholderJsequential_108_lstm_326_while_less_sequential_108_lstm_326_strided_slice_1*
T0*
_output_shapes
: {
&sequential_108/lstm_326/while/IdentityIdentity&sequential_108/lstm_326/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_108_lstm_326_while_identity/sequential_108/lstm_326/while/Identity:output:0*(
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
*__inference_lstm_326_layer_call_fn_1577508
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1573947o
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1573247

inputs(
lstm_cell_258_1573165:	?(
lstm_cell_258_1573167:	d?$
lstm_cell_258_1573169:	?
identity??%lstm_cell_258/StatefulPartitionedCall?while;
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
%lstm_cell_258/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_258_1573165lstm_cell_258_1573167lstm_cell_258_1573169*
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573164n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_258_1573165lstm_cell_258_1573167lstm_cell_258_1573169*
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
while_body_1573178*
condR
while_cond_1573177*K
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
NoOpNoOp&^lstm_cell_258/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_258/StatefulPartitionedCall%lstm_cell_258/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577970

inputs>
,lstm_cell_260_matmul_readvariableop_resource:2(@
.lstm_cell_260_matmul_1_readvariableop_resource:
(;
-lstm_cell_260_biasadd_readvariableop_resource:(
identity??$lstm_cell_260/BiasAdd/ReadVariableOp?#lstm_cell_260/MatMul/ReadVariableOp?%lstm_cell_260/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_260/MatMul/ReadVariableOpReadVariableOp,lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_260/MatMulMatMulstrided_slice_2:output:0+lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_260/MatMul_1MatMulzeros:output:0-lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_260/addAddV2lstm_cell_260/MatMul:product:0 lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_260/BiasAddBiasAddlstm_cell_260/add:z:0,lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_260/splitSplit&lstm_cell_260/split/split_dim:output:0lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_260/SigmoidSigmoidlstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_1Sigmoidlstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_260/mulMullstm_cell_260/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_260/ReluRelulstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_1Mullstm_cell_260/Sigmoid:y:0 lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_260/add_1AddV2lstm_cell_260/mul:z:0lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_2Sigmoidlstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_260/Relu_1Relulstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_2Mullstm_cell_260/Sigmoid_2:y:0"lstm_cell_260/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_260_matmul_readvariableop_resource.lstm_cell_260_matmul_1_readvariableop_resource-lstm_cell_260_biasadd_readvariableop_resource*
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
while_body_1577886*
condR
while_cond_1577885*K
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
NoOpNoOp%^lstm_cell_260/BiasAdd/ReadVariableOp$^lstm_cell_260/MatMul/ReadVariableOp&^lstm_cell_260/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_260/BiasAdd/ReadVariableOp$lstm_cell_260/BiasAdd/ReadVariableOp2J
#lstm_cell_260/MatMul/ReadVariableOp#lstm_cell_260/MatMul/ReadVariableOp2N
%lstm_cell_260/MatMul_1/ReadVariableOp%lstm_cell_260/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1575057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1575057___redundant_placeholder05
1while_while_cond_1575057___redundant_placeholder15
1while_while_cond_1575057___redundant_placeholder25
1while_while_cond_1575057___redundant_placeholder3
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
while_body_1577413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_259_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_259_matmul_readvariableop_resource:	d?G
4while_lstm_cell_259_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_259_biasadd_readvariableop_resource:	???*while/lstm_cell_259/BiasAdd/ReadVariableOp?)while/lstm_cell_259/MatMul/ReadVariableOp?+while/lstm_cell_259/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_259/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_259/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_259/addAddV2$while/lstm_cell_259/MatMul:product:0&while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_259/BiasAddBiasAddwhile/lstm_cell_259/add:z:02while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_259/splitSplit,while/lstm_cell_259/split/split_dim:output:0$while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_259/SigmoidSigmoid"while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_1Sigmoid"while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mulMul!while/lstm_cell_259/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_259/ReluRelu"while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_1Mulwhile/lstm_cell_259/Sigmoid:y:0&while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/add_1AddV2while/lstm_cell_259/mul:z:0while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_2Sigmoid"while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_259/Relu_1Reluwhile/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_2Mul!while/lstm_cell_259/Sigmoid_2:y:0(while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_259/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_259/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_259/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_259/BiasAdd/ReadVariableOp*^while/lstm_cell_259/MatMul/ReadVariableOp,^while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_259_biasadd_readvariableop_resource5while_lstm_cell_259_biasadd_readvariableop_resource_0"n
4while_lstm_cell_259_matmul_1_readvariableop_resource6while_lstm_cell_259_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_259_matmul_readvariableop_resource4while_lstm_cell_259_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_259/BiasAdd/ReadVariableOp*while/lstm_cell_259/BiasAdd/ReadVariableOp2V
)while/lstm_cell_259/MatMul/ReadVariableOp)while/lstm_cell_259/MatMul/ReadVariableOp2Z
+while/lstm_cell_259/MatMul_1/ReadVariableOp+while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1574296

inputs?
,lstm_cell_258_matmul_readvariableop_resource:	?A
.lstm_cell_258_matmul_1_readvariableop_resource:	d?<
-lstm_cell_258_biasadd_readvariableop_resource:	?
identity??$lstm_cell_258/BiasAdd/ReadVariableOp?#lstm_cell_258/MatMul/ReadVariableOp?%lstm_cell_258/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_258/MatMul/ReadVariableOpReadVariableOp,lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_258/MatMulMatMulstrided_slice_2:output:0+lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_258/MatMul_1MatMulzeros:output:0-lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_258/addAddV2lstm_cell_258/MatMul:product:0 lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_258/BiasAddBiasAddlstm_cell_258/add:z:0,lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_258/splitSplit&lstm_cell_258/split/split_dim:output:0lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_258/SigmoidSigmoidlstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_1Sigmoidlstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_258/mulMullstm_cell_258/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_258/ReluRelulstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_1Mullstm_cell_258/Sigmoid:y:0 lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_258/add_1AddV2lstm_cell_258/mul:z:0lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_2Sigmoidlstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_258/Relu_1Relulstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_2Mullstm_cell_258/Sigmoid_2:y:0"lstm_cell_258/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_258_matmul_readvariableop_resource.lstm_cell_258_matmul_1_readvariableop_resource-lstm_cell_258_biasadd_readvariableop_resource*
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
while_body_1574212*
condR
while_cond_1574211*K
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
NoOpNoOp%^lstm_cell_258/BiasAdd/ReadVariableOp$^lstm_cell_258/MatMul/ReadVariableOp&^lstm_cell_258/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_258/BiasAdd/ReadVariableOp$lstm_cell_258/BiasAdd/ReadVariableOp2J
#lstm_cell_258/MatMul/ReadVariableOp#lstm_cell_258/MatMul/ReadVariableOp2N
%lstm_cell_258/MatMul_1/ReadVariableOp%lstm_cell_258/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574138

inputs'
lstm_cell_260_1574056:2('
lstm_cell_260_1574058:
(#
lstm_cell_260_1574060:(
identity??%lstm_cell_260/StatefulPartitionedCall?while;
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
%lstm_cell_260/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_260_1574056lstm_cell_260_1574058lstm_cell_260_1574060*
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1574010n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_260_1574056lstm_cell_260_1574058lstm_cell_260_1574060*
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
while_body_1574069*
condR
while_cond_1574068*K
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
NoOpNoOp&^lstm_cell_260/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_260/StatefulPartitionedCall%lstm_cell_260/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_260_layer_call_fn_1578362

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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1574010o
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
while_body_1574362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_259_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_259_matmul_readvariableop_resource:	d?G
4while_lstm_cell_259_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_259_biasadd_readvariableop_resource:	???*while/lstm_cell_259/BiasAdd/ReadVariableOp?)while/lstm_cell_259/MatMul/ReadVariableOp?+while/lstm_cell_259/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_259/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_259/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_259/addAddV2$while/lstm_cell_259/MatMul:product:0&while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_259/BiasAddBiasAddwhile/lstm_cell_259/add:z:02while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_259/splitSplit,while/lstm_cell_259/split/split_dim:output:0$while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_259/SigmoidSigmoid"while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_1Sigmoid"while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mulMul!while/lstm_cell_259/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_259/ReluRelu"while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_1Mulwhile/lstm_cell_259/Sigmoid:y:0&while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/add_1AddV2while/lstm_cell_259/mul:z:0while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_2Sigmoid"while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_259/Relu_1Reluwhile/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_2Mul!while/lstm_cell_259/Sigmoid_2:y:0(while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_259/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_259/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_259/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_259/BiasAdd/ReadVariableOp*^while/lstm_cell_259/MatMul/ReadVariableOp,^while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_259_biasadd_readvariableop_resource5while_lstm_cell_259_biasadd_readvariableop_resource_0"n
4while_lstm_cell_259_matmul_1_readvariableop_resource6while_lstm_cell_259_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_259_matmul_readvariableop_resource4while_lstm_cell_259_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_259/BiasAdd/ReadVariableOp*while/lstm_cell_259/BiasAdd/ReadVariableOp2V
)while/lstm_cell_259/MatMul/ReadVariableOp)while/lstm_cell_259/MatMul/ReadVariableOp2Z
+while/lstm_cell_259/MatMul_1/ReadVariableOp+while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573514

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
while_cond_1573177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1573177___redundant_placeholder05
1while_while_cond_1573177___redundant_placeholder15
1while_while_cond_1573177___redundant_placeholder25
1while_while_cond_1573177___redundant_placeholder3
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
*__inference_lstm_324_layer_call_fn_1576287
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1573438|
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
while_body_1573528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_259_1573552_0:	d?0
while_lstm_cell_259_1573554_0:	2?,
while_lstm_cell_259_1573556_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_259_1573552:	d?.
while_lstm_cell_259_1573554:	2?*
while_lstm_cell_259_1573556:	???+while/lstm_cell_259/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_259/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_259_1573552_0while_lstm_cell_259_1573554_0while_lstm_cell_259_1573556_0*
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573514?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_259/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_259/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_259/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_259/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_259_1573552while_lstm_cell_259_1573552_0"<
while_lstm_cell_259_1573554while_lstm_cell_259_1573554_0"<
while_lstm_cell_259_1573556while_lstm_cell_259_1573556_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_259/StatefulPartitionedCall+while/lstm_cell_259/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1576654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_258_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_258_matmul_readvariableop_resource:	?G
4while_lstm_cell_258_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_258_biasadd_readvariableop_resource:	???*while/lstm_cell_258/BiasAdd/ReadVariableOp?)while/lstm_cell_258/MatMul/ReadVariableOp?+while/lstm_cell_258/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_258/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_258/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_258/addAddV2$while/lstm_cell_258/MatMul:product:0&while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_258/BiasAddBiasAddwhile/lstm_cell_258/add:z:02while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_258/splitSplit,while/lstm_cell_258/split/split_dim:output:0$while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_258/SigmoidSigmoid"while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_1Sigmoid"while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mulMul!while/lstm_cell_258/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_258/ReluRelu"while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_1Mulwhile/lstm_cell_258/Sigmoid:y:0&while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/add_1AddV2while/lstm_cell_258/mul:z:0while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_2Sigmoid"while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_258/Relu_1Reluwhile/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_2Mul!while/lstm_cell_258/Sigmoid_2:y:0(while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_258/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_258/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_258/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_258/BiasAdd/ReadVariableOp*^while/lstm_cell_258/MatMul/ReadVariableOp,^while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_258_biasadd_readvariableop_resource5while_lstm_cell_258_biasadd_readvariableop_resource_0"n
4while_lstm_cell_258_matmul_1_readvariableop_resource6while_lstm_cell_258_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_258_matmul_readvariableop_resource4while_lstm_cell_258_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_258/BiasAdd/ReadVariableOp*while/lstm_cell_258/BiasAdd/ReadVariableOp2V
)while/lstm_cell_258/MatMul/ReadVariableOp)while/lstm_cell_258/MatMul/ReadVariableOp2Z
+while/lstm_cell_258/MatMul_1/ReadVariableOp+while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1577742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1577742___redundant_placeholder05
1while_while_cond_1577742___redundant_placeholder15
1while_while_cond_1577742___redundant_placeholder25
1while_while_cond_1577742___redundant_placeholder3
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
while_cond_1576796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1576796___redundant_placeholder05
1while_while_cond_1576796___redundant_placeholder15
1while_while_cond_1576796___redundant_placeholder25
1while_while_cond_1576796___redundant_placeholder3
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1578394

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
while_body_1577886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_260_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_260_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_260_matmul_readvariableop_resource:2(F
4while_lstm_cell_260_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_260_biasadd_readvariableop_resource:(??*while/lstm_cell_260/BiasAdd/ReadVariableOp?)while/lstm_cell_260/MatMul/ReadVariableOp?+while/lstm_cell_260/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_260/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_260/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_260/addAddV2$while/lstm_cell_260/MatMul:product:0&while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_260/BiasAddBiasAddwhile/lstm_cell_260/add:z:02while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_260/splitSplit,while/lstm_cell_260/split/split_dim:output:0$while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_260/SigmoidSigmoid"while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_1Sigmoid"while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mulMul!while/lstm_cell_260/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_260/ReluRelu"while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_1Mulwhile/lstm_cell_260/Sigmoid:y:0&while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/add_1AddV2while/lstm_cell_260/mul:z:0while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_2Sigmoid"while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_260/Relu_1Reluwhile/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_2Mul!while/lstm_cell_260/Sigmoid_2:y:0(while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_260/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_260/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_260/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_260/BiasAdd/ReadVariableOp*^while/lstm_cell_260/MatMul/ReadVariableOp,^while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_260_biasadd_readvariableop_resource5while_lstm_cell_260_biasadd_readvariableop_resource_0"n
4while_lstm_cell_260_matmul_1_readvariableop_resource6while_lstm_cell_260_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_260_matmul_readvariableop_resource4while_lstm_cell_260_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_260/BiasAdd/ReadVariableOp*while/lstm_cell_260/BiasAdd/ReadVariableOp2V
)while/lstm_cell_260/MatMul/ReadVariableOp)while/lstm_cell_260/MatMul/ReadVariableOp2Z
+while/lstm_cell_260/MatMul_1/ReadVariableOp+while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_324_layer_call_fn_1576309

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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1575142s
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1575142

inputs?
,lstm_cell_258_matmul_readvariableop_resource:	?A
.lstm_cell_258_matmul_1_readvariableop_resource:	d?<
-lstm_cell_258_biasadd_readvariableop_resource:	?
identity??$lstm_cell_258/BiasAdd/ReadVariableOp?#lstm_cell_258/MatMul/ReadVariableOp?%lstm_cell_258/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_258/MatMul/ReadVariableOpReadVariableOp,lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_258/MatMulMatMulstrided_slice_2:output:0+lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_258/MatMul_1MatMulzeros:output:0-lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_258/addAddV2lstm_cell_258/MatMul:product:0 lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_258/BiasAddBiasAddlstm_cell_258/add:z:0,lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_258/splitSplit&lstm_cell_258/split/split_dim:output:0lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_258/SigmoidSigmoidlstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_1Sigmoidlstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_258/mulMullstm_cell_258/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_258/ReluRelulstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_1Mullstm_cell_258/Sigmoid:y:0 lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_258/add_1AddV2lstm_cell_258/mul:z:0lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_2Sigmoidlstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_258/Relu_1Relulstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_2Mullstm_cell_258/Sigmoid_2:y:0"lstm_cell_258/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_258_matmul_readvariableop_resource.lstm_cell_258_matmul_1_readvariableop_resource-lstm_cell_258_biasadd_readvariableop_resource*
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
while_body_1575058*
condR
while_cond_1575057*K
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
NoOpNoOp%^lstm_cell_258/BiasAdd/ReadVariableOp$^lstm_cell_258/MatMul/ReadVariableOp&^lstm_cell_258/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_258/BiasAdd/ReadVariableOp$lstm_cell_258/BiasAdd/ReadVariableOp2J
#lstm_cell_258/MatMul/ReadVariableOp#lstm_cell_258/MatMul/ReadVariableOp2N
%lstm_cell_258/MatMul_1/ReadVariableOp%lstm_cell_258/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575292
lstm_324_input#
lstm_324_1575265:	?#
lstm_324_1575267:	d?
lstm_324_1575269:	?#
lstm_325_1575272:	d?#
lstm_325_1575274:	2?
lstm_325_1575276:	?"
lstm_326_1575279:2("
lstm_326_1575281:
(
lstm_326_1575283:(#
dense_108_1575286:

dense_108_1575288:
identity??!dense_108/StatefulPartitionedCall? lstm_324/StatefulPartitionedCall? lstm_325/StatefulPartitionedCall? lstm_326/StatefulPartitionedCall?
 lstm_324/StatefulPartitionedCallStatefulPartitionedCalllstm_324_inputlstm_324_1575265lstm_324_1575267lstm_324_1575269*
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1574296?
 lstm_325/StatefulPartitionedCallStatefulPartitionedCall)lstm_324/StatefulPartitionedCall:output:0lstm_325_1575272lstm_325_1575274lstm_325_1575276*
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574446?
 lstm_326/StatefulPartitionedCallStatefulPartitionedCall)lstm_325/StatefulPartitionedCall:output:0lstm_326_1575279lstm_326_1575281lstm_326_1575283*
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574596?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall)lstm_326/StatefulPartitionedCall:output:0dense_108_1575286dense_108_1575288*
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1574614y
IdentityIdentity*dense_108/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_108/StatefulPartitionedCall!^lstm_324/StatefulPartitionedCall!^lstm_325/StatefulPartitionedCall!^lstm_326/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2D
 lstm_324/StatefulPartitionedCall lstm_324/StatefulPartitionedCall2D
 lstm_325/StatefulPartitionedCall lstm_325/StatefulPartitionedCall2D
 lstm_326/StatefulPartitionedCall lstm_326/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_324_input
?
?
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1574010

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
while_cond_1573718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1573718___redundant_placeholder05
1while_while_cond_1573718___redundant_placeholder15
1while_while_cond_1573718___redundant_placeholder25
1while_while_cond_1573718___redundant_placeholder3
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
?
*sequential_108_lstm_325_while_cond_1572867L
Hsequential_108_lstm_325_while_sequential_108_lstm_325_while_loop_counterR
Nsequential_108_lstm_325_while_sequential_108_lstm_325_while_maximum_iterations-
)sequential_108_lstm_325_while_placeholder/
+sequential_108_lstm_325_while_placeholder_1/
+sequential_108_lstm_325_while_placeholder_2/
+sequential_108_lstm_325_while_placeholder_3N
Jsequential_108_lstm_325_while_less_sequential_108_lstm_325_strided_slice_1e
asequential_108_lstm_325_while_sequential_108_lstm_325_while_cond_1572867___redundant_placeholder0e
asequential_108_lstm_325_while_sequential_108_lstm_325_while_cond_1572867___redundant_placeholder1e
asequential_108_lstm_325_while_sequential_108_lstm_325_while_cond_1572867___redundant_placeholder2e
asequential_108_lstm_325_while_sequential_108_lstm_325_while_cond_1572867___redundant_placeholder3*
&sequential_108_lstm_325_while_identity
?
"sequential_108/lstm_325/while/LessLess)sequential_108_lstm_325_while_placeholderJsequential_108_lstm_325_while_less_sequential_108_lstm_325_strided_slice_1*
T0*
_output_shapes
: {
&sequential_108/lstm_325/while/IdentityIdentity&sequential_108/lstm_325/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_108_lstm_325_while_identity/sequential_108/lstm_325/while/Identity:output:0*(
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
while_cond_1574892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1574892___redundant_placeholder05
1while_while_cond_1574892___redundant_placeholder15
1while_while_cond_1574892___redundant_placeholder25
1while_while_cond_1574892___redundant_placeholder3
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
while_cond_1574361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1574361___redundant_placeholder05
1while_while_cond_1574361___redundant_placeholder15
1while_while_cond_1574361___redundant_placeholder25
1while_while_cond_1574361___redundant_placeholder3
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574812

inputs>
,lstm_cell_260_matmul_readvariableop_resource:2(@
.lstm_cell_260_matmul_1_readvariableop_resource:
(;
-lstm_cell_260_biasadd_readvariableop_resource:(
identity??$lstm_cell_260/BiasAdd/ReadVariableOp?#lstm_cell_260/MatMul/ReadVariableOp?%lstm_cell_260/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_260/MatMul/ReadVariableOpReadVariableOp,lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_260/MatMulMatMulstrided_slice_2:output:0+lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_260/MatMul_1MatMulzeros:output:0-lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_260/addAddV2lstm_cell_260/MatMul:product:0 lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_260/BiasAddBiasAddlstm_cell_260/add:z:0,lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_260/splitSplit&lstm_cell_260/split/split_dim:output:0lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_260/SigmoidSigmoidlstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_1Sigmoidlstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_260/mulMullstm_cell_260/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_260/ReluRelulstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_1Mullstm_cell_260/Sigmoid:y:0 lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_260/add_1AddV2lstm_cell_260/mul:z:0lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_2Sigmoidlstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_260/Relu_1Relulstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_2Mullstm_cell_260/Sigmoid_2:y:0"lstm_cell_260/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_260_matmul_readvariableop_resource.lstm_cell_260_matmul_1_readvariableop_resource-lstm_cell_260_biasadd_readvariableop_resource*
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
while_body_1574728*
condR
while_cond_1574727*K
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
NoOpNoOp%^lstm_cell_260/BiasAdd/ReadVariableOp$^lstm_cell_260/MatMul/ReadVariableOp&^lstm_cell_260/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_260/BiasAdd/ReadVariableOp$lstm_cell_260/BiasAdd/ReadVariableOp2J
#lstm_cell_260/MatMul/ReadVariableOp#lstm_cell_260/MatMul/ReadVariableOp2N
%lstm_cell_260/MatMul_1/ReadVariableOp%lstm_cell_260/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1574069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_260_1574093_0:2(/
while_lstm_cell_260_1574095_0:
(+
while_lstm_cell_260_1574097_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_260_1574093:2(-
while_lstm_cell_260_1574095:
()
while_lstm_cell_260_1574097:(??+while/lstm_cell_260/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_260/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_260_1574093_0while_lstm_cell_260_1574095_0while_lstm_cell_260_1574097_0*
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1574010?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_260/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_260/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_260/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_260/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_260_1574093while_lstm_cell_260_1574093_0"<
while_lstm_cell_260_1574095while_lstm_cell_260_1574095_0"<
while_lstm_cell_260_1574097while_lstm_cell_260_1574097_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_260/StatefulPartitionedCall+while/lstm_cell_260/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1573527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1573527___redundant_placeholder05
1while_while_cond_1573527___redundant_placeholder15
1while_while_cond_1573527___redundant_placeholder25
1while_while_cond_1573527___redundant_placeholder3
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
*__inference_lstm_325_layer_call_fn_1576892
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1573597|
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
?
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575210

inputs#
lstm_324_1575183:	?#
lstm_324_1575185:	d?
lstm_324_1575187:	?#
lstm_325_1575190:	d?#
lstm_325_1575192:	2?
lstm_325_1575194:	?"
lstm_326_1575197:2("
lstm_326_1575199:
(
lstm_326_1575201:(#
dense_108_1575204:

dense_108_1575206:
identity??!dense_108/StatefulPartitionedCall? lstm_324/StatefulPartitionedCall? lstm_325/StatefulPartitionedCall? lstm_326/StatefulPartitionedCall?
 lstm_324/StatefulPartitionedCallStatefulPartitionedCallinputslstm_324_1575183lstm_324_1575185lstm_324_1575187*
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1575142?
 lstm_325/StatefulPartitionedCallStatefulPartitionedCall)lstm_324/StatefulPartitionedCall:output:0lstm_325_1575190lstm_325_1575192lstm_325_1575194*
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574977?
 lstm_326/StatefulPartitionedCallStatefulPartitionedCall)lstm_325/StatefulPartitionedCall:output:0lstm_326_1575197lstm_326_1575199lstm_326_1575201*
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574812?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall)lstm_326/StatefulPartitionedCall:output:0dense_108_1575204dense_108_1575206*
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1574614y
IdentityIdentity*dense_108/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_108/StatefulPartitionedCall!^lstm_324/StatefulPartitionedCall!^lstm_325/StatefulPartitionedCall!^lstm_326/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2D
 lstm_324/StatefulPartitionedCall lstm_324/StatefulPartitionedCall2D
 lstm_325/StatefulPartitionedCall lstm_325/StatefulPartitionedCall2D
 lstm_326/StatefulPartitionedCall lstm_326/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575838

inputsH
5lstm_324_lstm_cell_258_matmul_readvariableop_resource:	?J
7lstm_324_lstm_cell_258_matmul_1_readvariableop_resource:	d?E
6lstm_324_lstm_cell_258_biasadd_readvariableop_resource:	?H
5lstm_325_lstm_cell_259_matmul_readvariableop_resource:	d?J
7lstm_325_lstm_cell_259_matmul_1_readvariableop_resource:	2?E
6lstm_325_lstm_cell_259_biasadd_readvariableop_resource:	?G
5lstm_326_lstm_cell_260_matmul_readvariableop_resource:2(I
7lstm_326_lstm_cell_260_matmul_1_readvariableop_resource:
(D
6lstm_326_lstm_cell_260_biasadd_readvariableop_resource:(:
(dense_108_matmul_readvariableop_resource:
7
)dense_108_biasadd_readvariableop_resource:
identity?? dense_108/BiasAdd/ReadVariableOp?dense_108/MatMul/ReadVariableOp?-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp?,lstm_324/lstm_cell_258/MatMul/ReadVariableOp?.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp?lstm_324/while?-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp?,lstm_325/lstm_cell_259/MatMul/ReadVariableOp?.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp?lstm_325/while?-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp?,lstm_326/lstm_cell_260/MatMul/ReadVariableOp?.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp?lstm_326/whileD
lstm_324/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_324/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_324/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_324/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_sliceStridedSlicelstm_324/Shape:output:0%lstm_324/strided_slice/stack:output:0'lstm_324/strided_slice/stack_1:output:0'lstm_324/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_324/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_324/zeros/packedPacklstm_324/strided_slice:output:0 lstm_324/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_324/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_324/zerosFilllstm_324/zeros/packed:output:0lstm_324/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_324/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_324/zeros_1/packedPacklstm_324/strided_slice:output:0"lstm_324/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_324/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_324/zeros_1Fill lstm_324/zeros_1/packed:output:0lstm_324/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_324/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_324/transpose	Transposeinputs lstm_324/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_324/Shape_1Shapelstm_324/transpose:y:0*
T0*
_output_shapes
:h
lstm_324/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_324/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_324/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_slice_1StridedSlicelstm_324/Shape_1:output:0'lstm_324/strided_slice_1/stack:output:0)lstm_324/strided_slice_1/stack_1:output:0)lstm_324/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_324/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_324/TensorArrayV2TensorListReserve-lstm_324/TensorArrayV2/element_shape:output:0!lstm_324/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_324/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_324/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_324/transpose:y:0Glstm_324/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_324/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_324/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_324/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_slice_2StridedSlicelstm_324/transpose:y:0'lstm_324/strided_slice_2/stack:output:0)lstm_324/strided_slice_2/stack_1:output:0)lstm_324/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_324/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp5lstm_324_lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_324/lstm_cell_258/MatMulMatMul!lstm_324/strided_slice_2:output:04lstm_324/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp7lstm_324_lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_324/lstm_cell_258/MatMul_1MatMullstm_324/zeros:output:06lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_324/lstm_cell_258/addAddV2'lstm_324/lstm_cell_258/MatMul:product:0)lstm_324/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp6lstm_324_lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_324/lstm_cell_258/BiasAddBiasAddlstm_324/lstm_cell_258/add:z:05lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_324/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_324/lstm_cell_258/splitSplit/lstm_324/lstm_cell_258/split/split_dim:output:0'lstm_324/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_324/lstm_cell_258/SigmoidSigmoid%lstm_324/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_324/lstm_cell_258/Sigmoid_1Sigmoid%lstm_324/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/mulMul$lstm_324/lstm_cell_258/Sigmoid_1:y:0lstm_324/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_324/lstm_cell_258/ReluRelu%lstm_324/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/mul_1Mul"lstm_324/lstm_cell_258/Sigmoid:y:0)lstm_324/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/add_1AddV2lstm_324/lstm_cell_258/mul:z:0 lstm_324/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_324/lstm_cell_258/Sigmoid_2Sigmoid%lstm_324/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_324/lstm_cell_258/Relu_1Relu lstm_324/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/mul_2Mul$lstm_324/lstm_cell_258/Sigmoid_2:y:0+lstm_324/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_324/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_324/TensorArrayV2_1TensorListReserve/lstm_324/TensorArrayV2_1/element_shape:output:0!lstm_324/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_324/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_324/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_324/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_324/whileWhile$lstm_324/while/loop_counter:output:0*lstm_324/while/maximum_iterations:output:0lstm_324/time:output:0!lstm_324/TensorArrayV2_1:handle:0lstm_324/zeros:output:0lstm_324/zeros_1:output:0!lstm_324/strided_slice_1:output:0@lstm_324/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_324_lstm_cell_258_matmul_readvariableop_resource7lstm_324_lstm_cell_258_matmul_1_readvariableop_resource6lstm_324_lstm_cell_258_biasadd_readvariableop_resource*
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
lstm_324_while_body_1575470*'
condR
lstm_324_while_cond_1575469*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_324/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_324/TensorArrayV2Stack/TensorListStackTensorListStacklstm_324/while:output:3Blstm_324/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_324/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_324/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_324/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_slice_3StridedSlice4lstm_324/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_324/strided_slice_3/stack:output:0)lstm_324/strided_slice_3/stack_1:output:0)lstm_324/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_324/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_324/transpose_1	Transpose4lstm_324/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_324/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_324/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_325/ShapeShapelstm_324/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_325/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_325/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_325/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_sliceStridedSlicelstm_325/Shape:output:0%lstm_325/strided_slice/stack:output:0'lstm_325/strided_slice/stack_1:output:0'lstm_325/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_325/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_325/zeros/packedPacklstm_325/strided_slice:output:0 lstm_325/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_325/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_325/zerosFilllstm_325/zeros/packed:output:0lstm_325/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_325/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_325/zeros_1/packedPacklstm_325/strided_slice:output:0"lstm_325/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_325/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_325/zeros_1Fill lstm_325/zeros_1/packed:output:0lstm_325/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_325/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_325/transpose	Transposelstm_324/transpose_1:y:0 lstm_325/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_325/Shape_1Shapelstm_325/transpose:y:0*
T0*
_output_shapes
:h
lstm_325/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_325/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_325/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_slice_1StridedSlicelstm_325/Shape_1:output:0'lstm_325/strided_slice_1/stack:output:0)lstm_325/strided_slice_1/stack_1:output:0)lstm_325/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_325/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_325/TensorArrayV2TensorListReserve-lstm_325/TensorArrayV2/element_shape:output:0!lstm_325/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_325/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_325/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_325/transpose:y:0Glstm_325/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_325/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_325/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_325/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_slice_2StridedSlicelstm_325/transpose:y:0'lstm_325/strided_slice_2/stack:output:0)lstm_325/strided_slice_2/stack_1:output:0)lstm_325/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_325/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp5lstm_325_lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_325/lstm_cell_259/MatMulMatMul!lstm_325/strided_slice_2:output:04lstm_325/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp7lstm_325_lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_325/lstm_cell_259/MatMul_1MatMullstm_325/zeros:output:06lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_325/lstm_cell_259/addAddV2'lstm_325/lstm_cell_259/MatMul:product:0)lstm_325/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp6lstm_325_lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_325/lstm_cell_259/BiasAddBiasAddlstm_325/lstm_cell_259/add:z:05lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_325/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_325/lstm_cell_259/splitSplit/lstm_325/lstm_cell_259/split/split_dim:output:0'lstm_325/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_325/lstm_cell_259/SigmoidSigmoid%lstm_325/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_325/lstm_cell_259/Sigmoid_1Sigmoid%lstm_325/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/mulMul$lstm_325/lstm_cell_259/Sigmoid_1:y:0lstm_325/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_325/lstm_cell_259/ReluRelu%lstm_325/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/mul_1Mul"lstm_325/lstm_cell_259/Sigmoid:y:0)lstm_325/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/add_1AddV2lstm_325/lstm_cell_259/mul:z:0 lstm_325/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_325/lstm_cell_259/Sigmoid_2Sigmoid%lstm_325/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_325/lstm_cell_259/Relu_1Relu lstm_325/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/mul_2Mul$lstm_325/lstm_cell_259/Sigmoid_2:y:0+lstm_325/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_325/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_325/TensorArrayV2_1TensorListReserve/lstm_325/TensorArrayV2_1/element_shape:output:0!lstm_325/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_325/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_325/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_325/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_325/whileWhile$lstm_325/while/loop_counter:output:0*lstm_325/while/maximum_iterations:output:0lstm_325/time:output:0!lstm_325/TensorArrayV2_1:handle:0lstm_325/zeros:output:0lstm_325/zeros_1:output:0!lstm_325/strided_slice_1:output:0@lstm_325/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_325_lstm_cell_259_matmul_readvariableop_resource7lstm_325_lstm_cell_259_matmul_1_readvariableop_resource6lstm_325_lstm_cell_259_biasadd_readvariableop_resource*
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
lstm_325_while_body_1575609*'
condR
lstm_325_while_cond_1575608*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_325/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_325/TensorArrayV2Stack/TensorListStackTensorListStacklstm_325/while:output:3Blstm_325/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_325/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_325/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_325/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_slice_3StridedSlice4lstm_325/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_325/strided_slice_3/stack:output:0)lstm_325/strided_slice_3/stack_1:output:0)lstm_325/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_325/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_325/transpose_1	Transpose4lstm_325/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_325/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_325/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_326/ShapeShapelstm_325/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_326/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_326/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_326/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_sliceStridedSlicelstm_326/Shape:output:0%lstm_326/strided_slice/stack:output:0'lstm_326/strided_slice/stack_1:output:0'lstm_326/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_326/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_326/zeros/packedPacklstm_326/strided_slice:output:0 lstm_326/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_326/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_326/zerosFilllstm_326/zeros/packed:output:0lstm_326/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_326/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_326/zeros_1/packedPacklstm_326/strided_slice:output:0"lstm_326/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_326/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_326/zeros_1Fill lstm_326/zeros_1/packed:output:0lstm_326/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_326/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_326/transpose	Transposelstm_325/transpose_1:y:0 lstm_326/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_326/Shape_1Shapelstm_326/transpose:y:0*
T0*
_output_shapes
:h
lstm_326/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_326/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_326/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_slice_1StridedSlicelstm_326/Shape_1:output:0'lstm_326/strided_slice_1/stack:output:0)lstm_326/strided_slice_1/stack_1:output:0)lstm_326/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_326/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_326/TensorArrayV2TensorListReserve-lstm_326/TensorArrayV2/element_shape:output:0!lstm_326/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_326/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_326/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_326/transpose:y:0Glstm_326/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_326/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_326/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_326/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_slice_2StridedSlicelstm_326/transpose:y:0'lstm_326/strided_slice_2/stack:output:0)lstm_326/strided_slice_2/stack_1:output:0)lstm_326/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_326/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp5lstm_326_lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_326/lstm_cell_260/MatMulMatMul!lstm_326/strided_slice_2:output:04lstm_326/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp7lstm_326_lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_326/lstm_cell_260/MatMul_1MatMullstm_326/zeros:output:06lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_326/lstm_cell_260/addAddV2'lstm_326/lstm_cell_260/MatMul:product:0)lstm_326/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp6lstm_326_lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_326/lstm_cell_260/BiasAddBiasAddlstm_326/lstm_cell_260/add:z:05lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_326/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_326/lstm_cell_260/splitSplit/lstm_326/lstm_cell_260/split/split_dim:output:0'lstm_326/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_326/lstm_cell_260/SigmoidSigmoid%lstm_326/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_326/lstm_cell_260/Sigmoid_1Sigmoid%lstm_326/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/mulMul$lstm_326/lstm_cell_260/Sigmoid_1:y:0lstm_326/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_326/lstm_cell_260/ReluRelu%lstm_326/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/mul_1Mul"lstm_326/lstm_cell_260/Sigmoid:y:0)lstm_326/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/add_1AddV2lstm_326/lstm_cell_260/mul:z:0 lstm_326/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_326/lstm_cell_260/Sigmoid_2Sigmoid%lstm_326/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_326/lstm_cell_260/Relu_1Relu lstm_326/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/mul_2Mul$lstm_326/lstm_cell_260/Sigmoid_2:y:0+lstm_326/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_326/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_326/TensorArrayV2_1TensorListReserve/lstm_326/TensorArrayV2_1/element_shape:output:0!lstm_326/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_326/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_326/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_326/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_326/whileWhile$lstm_326/while/loop_counter:output:0*lstm_326/while/maximum_iterations:output:0lstm_326/time:output:0!lstm_326/TensorArrayV2_1:handle:0lstm_326/zeros:output:0lstm_326/zeros_1:output:0!lstm_326/strided_slice_1:output:0@lstm_326/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_326_lstm_cell_260_matmul_readvariableop_resource7lstm_326_lstm_cell_260_matmul_1_readvariableop_resource6lstm_326_lstm_cell_260_biasadd_readvariableop_resource*
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
lstm_326_while_body_1575748*'
condR
lstm_326_while_cond_1575747*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_326/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_326/TensorArrayV2Stack/TensorListStackTensorListStacklstm_326/while:output:3Blstm_326/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_326/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_326/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_326/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_slice_3StridedSlice4lstm_326/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_326/strided_slice_3/stack:output:0)lstm_326/strided_slice_3/stack_1:output:0)lstm_326/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_326/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_326/transpose_1	Transpose4lstm_326/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_326/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_326/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_108/MatMulMatMul!lstm_326/strided_slice_3:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_108/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp.^lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp-^lstm_324/lstm_cell_258/MatMul/ReadVariableOp/^lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp^lstm_324/while.^lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp-^lstm_325/lstm_cell_259/MatMul/ReadVariableOp/^lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp^lstm_325/while.^lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp-^lstm_326/lstm_cell_260/MatMul/ReadVariableOp/^lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp^lstm_326/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2^
-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp2\
,lstm_324/lstm_cell_258/MatMul/ReadVariableOp,lstm_324/lstm_cell_258/MatMul/ReadVariableOp2`
.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp2 
lstm_324/whilelstm_324/while2^
-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp2\
,lstm_325/lstm_cell_259/MatMul/ReadVariableOp,lstm_325/lstm_cell_259/MatMul/ReadVariableOp2`
.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp2 
lstm_325/whilelstm_325/while2^
-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp2\
,lstm_326/lstm_cell_260/MatMul/ReadVariableOp,lstm_326/lstm_cell_260/MatMul/ReadVariableOp2`
.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp2 
lstm_326/whilelstm_326/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576881

inputs?
,lstm_cell_258_matmul_readvariableop_resource:	?A
.lstm_cell_258_matmul_1_readvariableop_resource:	d?<
-lstm_cell_258_biasadd_readvariableop_resource:	?
identity??$lstm_cell_258/BiasAdd/ReadVariableOp?#lstm_cell_258/MatMul/ReadVariableOp?%lstm_cell_258/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_258/MatMul/ReadVariableOpReadVariableOp,lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_258/MatMulMatMulstrided_slice_2:output:0+lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_258/MatMul_1MatMulzeros:output:0-lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_258/addAddV2lstm_cell_258/MatMul:product:0 lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_258/BiasAddBiasAddlstm_cell_258/add:z:0,lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_258/splitSplit&lstm_cell_258/split/split_dim:output:0lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_258/SigmoidSigmoidlstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_1Sigmoidlstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_258/mulMullstm_cell_258/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_258/ReluRelulstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_1Mullstm_cell_258/Sigmoid:y:0 lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_258/add_1AddV2lstm_cell_258/mul:z:0lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_2Sigmoidlstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_258/Relu_1Relulstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_2Mullstm_cell_258/Sigmoid_2:y:0"lstm_cell_258/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_258_matmul_readvariableop_resource.lstm_cell_258_matmul_1_readvariableop_resource-lstm_cell_258_biasadd_readvariableop_resource*
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
while_body_1576797*
condR
while_cond_1576796*K
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
NoOpNoOp%^lstm_cell_258/BiasAdd/ReadVariableOp$^lstm_cell_258/MatMul/ReadVariableOp&^lstm_cell_258/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_258/BiasAdd/ReadVariableOp$lstm_cell_258/BiasAdd/ReadVariableOp2J
#lstm_cell_258/MatMul/ReadVariableOp#lstm_cell_258/MatMul/ReadVariableOp2N
%lstm_cell_258/MatMul_1/ReadVariableOp%lstm_cell_258/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576595
inputs_0?
,lstm_cell_258_matmul_readvariableop_resource:	?A
.lstm_cell_258_matmul_1_readvariableop_resource:	d?<
-lstm_cell_258_biasadd_readvariableop_resource:	?
identity??$lstm_cell_258/BiasAdd/ReadVariableOp?#lstm_cell_258/MatMul/ReadVariableOp?%lstm_cell_258/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_258/MatMul/ReadVariableOpReadVariableOp,lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_258/MatMulMatMulstrided_slice_2:output:0+lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_258/MatMul_1MatMulzeros:output:0-lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_258/addAddV2lstm_cell_258/MatMul:product:0 lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_258/BiasAddBiasAddlstm_cell_258/add:z:0,lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_258/splitSplit&lstm_cell_258/split/split_dim:output:0lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_258/SigmoidSigmoidlstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_1Sigmoidlstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_258/mulMullstm_cell_258/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_258/ReluRelulstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_1Mullstm_cell_258/Sigmoid:y:0 lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_258/add_1AddV2lstm_cell_258/mul:z:0lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_2Sigmoidlstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_258/Relu_1Relulstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_2Mullstm_cell_258/Sigmoid_2:y:0"lstm_cell_258/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_258_matmul_readvariableop_resource.lstm_cell_258_matmul_1_readvariableop_resource-lstm_cell_258_biasadd_readvariableop_resource*
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
while_body_1576511*
condR
while_cond_1576510*K
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
NoOpNoOp%^lstm_cell_258/BiasAdd/ReadVariableOp$^lstm_cell_258/MatMul/ReadVariableOp&^lstm_cell_258/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_258/BiasAdd/ReadVariableOp$lstm_cell_258/BiasAdd/ReadVariableOp2J
#lstm_cell_258/MatMul/ReadVariableOp#lstm_cell_258/MatMul/ReadVariableOp2N
%lstm_cell_258/MatMul_1/ReadVariableOp%lstm_cell_258/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1578296

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
while_body_1573719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_259_1573743_0:	d?0
while_lstm_cell_259_1573745_0:	2?,
while_lstm_cell_259_1573747_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_259_1573743:	d?.
while_lstm_cell_259_1573745:	2?*
while_lstm_cell_259_1573747:	???+while/lstm_cell_259/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_259/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_259_1573743_0while_lstm_cell_259_1573745_0while_lstm_cell_259_1573747_0*
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573660?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_259/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_259/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_259/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_259/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_259_1573743while_lstm_cell_259_1573743_0"<
while_lstm_cell_259_1573745while_lstm_cell_259_1573745_0"<
while_lstm_cell_259_1573747while_lstm_cell_259_1573747_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_259/StatefulPartitionedCall+while/lstm_cell_259/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_108_lstm_324_while_cond_1572728L
Hsequential_108_lstm_324_while_sequential_108_lstm_324_while_loop_counterR
Nsequential_108_lstm_324_while_sequential_108_lstm_324_while_maximum_iterations-
)sequential_108_lstm_324_while_placeholder/
+sequential_108_lstm_324_while_placeholder_1/
+sequential_108_lstm_324_while_placeholder_2/
+sequential_108_lstm_324_while_placeholder_3N
Jsequential_108_lstm_324_while_less_sequential_108_lstm_324_strided_slice_1e
asequential_108_lstm_324_while_sequential_108_lstm_324_while_cond_1572728___redundant_placeholder0e
asequential_108_lstm_324_while_sequential_108_lstm_324_while_cond_1572728___redundant_placeholder1e
asequential_108_lstm_324_while_sequential_108_lstm_324_while_cond_1572728___redundant_placeholder2e
asequential_108_lstm_324_while_sequential_108_lstm_324_while_cond_1572728___redundant_placeholder3*
&sequential_108_lstm_324_while_identity
?
"sequential_108/lstm_324/while/LessLess)sequential_108_lstm_324_while_placeholderJsequential_108_lstm_324_while_less_sequential_108_lstm_324_strided_slice_1*
T0*
_output_shapes
: {
&sequential_108/lstm_324/while/IdentityIdentity&sequential_108/lstm_324/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_108_lstm_324_while_identity/sequential_108/lstm_324/while/Identity:output:0*(
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
lstm_326_while_cond_1575747.
*lstm_326_while_lstm_326_while_loop_counter4
0lstm_326_while_lstm_326_while_maximum_iterations
lstm_326_while_placeholder 
lstm_326_while_placeholder_1 
lstm_326_while_placeholder_2 
lstm_326_while_placeholder_30
,lstm_326_while_less_lstm_326_strided_slice_1G
Clstm_326_while_lstm_326_while_cond_1575747___redundant_placeholder0G
Clstm_326_while_lstm_326_while_cond_1575747___redundant_placeholder1G
Clstm_326_while_lstm_326_while_cond_1575747___redundant_placeholder2G
Clstm_326_while_lstm_326_while_cond_1575747___redundant_placeholder3
lstm_326_while_identity
?
lstm_326/while/LessLesslstm_326_while_placeholder,lstm_326_while_less_lstm_326_strided_slice_1*
T0*
_output_shapes
: ]
lstm_326/while/IdentityIdentitylstm_326/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_326_while_identity lstm_326/while/Identity:output:0*(
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
0__inference_sequential_108_layer_call_fn_1575262
lstm_324_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_324_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575210o
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
_user_specified_namelstm_324_input
?8
?
while_body_1576797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_258_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_258_matmul_readvariableop_resource:	?G
4while_lstm_cell_258_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_258_biasadd_readvariableop_resource:	???*while/lstm_cell_258/BiasAdd/ReadVariableOp?)while/lstm_cell_258/MatMul/ReadVariableOp?+while/lstm_cell_258/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_258/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_258/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_258/addAddV2$while/lstm_cell_258/MatMul:product:0&while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_258/BiasAddBiasAddwhile/lstm_cell_258/add:z:02while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_258/splitSplit,while/lstm_cell_258/split/split_dim:output:0$while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_258/SigmoidSigmoid"while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_1Sigmoid"while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mulMul!while/lstm_cell_258/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_258/ReluRelu"while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_1Mulwhile/lstm_cell_258/Sigmoid:y:0&while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/add_1AddV2while/lstm_cell_258/mul:z:0while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_2Sigmoid"while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_258/Relu_1Reluwhile/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_2Mul!while/lstm_cell_258/Sigmoid_2:y:0(while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_258/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_258/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_258/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_258/BiasAdd/ReadVariableOp*^while/lstm_cell_258/MatMul/ReadVariableOp,^while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_258_biasadd_readvariableop_resource5while_lstm_cell_258_biasadd_readvariableop_resource_0"n
4while_lstm_cell_258_matmul_1_readvariableop_resource6while_lstm_cell_258_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_258_matmul_readvariableop_resource4while_lstm_cell_258_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_258/BiasAdd/ReadVariableOp*while/lstm_cell_258/BiasAdd/ReadVariableOp2V
)while/lstm_cell_258/MatMul/ReadVariableOp)while/lstm_cell_258/MatMul/ReadVariableOp2Z
+while/lstm_cell_258/MatMul_1/ReadVariableOp+while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1575058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_258_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_258_matmul_readvariableop_resource:	?G
4while_lstm_cell_258_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_258_biasadd_readvariableop_resource:	???*while/lstm_cell_258/BiasAdd/ReadVariableOp?)while/lstm_cell_258/MatMul/ReadVariableOp?+while/lstm_cell_258/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_258/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_258/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_258/addAddV2$while/lstm_cell_258/MatMul:product:0&while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_258/BiasAddBiasAddwhile/lstm_cell_258/add:z:02while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_258/splitSplit,while/lstm_cell_258/split/split_dim:output:0$while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_258/SigmoidSigmoid"while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_1Sigmoid"while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mulMul!while/lstm_cell_258/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_258/ReluRelu"while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_1Mulwhile/lstm_cell_258/Sigmoid:y:0&while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/add_1AddV2while/lstm_cell_258/mul:z:0while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_2Sigmoid"while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_258/Relu_1Reluwhile/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_2Mul!while/lstm_cell_258/Sigmoid_2:y:0(while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_258/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_258/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_258/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_258/BiasAdd/ReadVariableOp*^while/lstm_cell_258/MatMul/ReadVariableOp,^while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_258_biasadd_readvariableop_resource5while_lstm_cell_258_biasadd_readvariableop_resource_0"n
4while_lstm_cell_258_matmul_1_readvariableop_resource6while_lstm_cell_258_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_258_matmul_readvariableop_resource4while_lstm_cell_258_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_258/BiasAdd/ReadVariableOp*while/lstm_cell_258/BiasAdd/ReadVariableOp2V
)while/lstm_cell_258/MatMul/ReadVariableOp)while/lstm_cell_258/MatMul/ReadVariableOp2Z
+while/lstm_cell_258/MatMul_1/ReadVariableOp+while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_326_while_body_1576175.
*lstm_326_while_lstm_326_while_loop_counter4
0lstm_326_while_lstm_326_while_maximum_iterations
lstm_326_while_placeholder 
lstm_326_while_placeholder_1 
lstm_326_while_placeholder_2 
lstm_326_while_placeholder_3-
)lstm_326_while_lstm_326_strided_slice_1_0i
elstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0:2(Q
?lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(L
>lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0:(
lstm_326_while_identity
lstm_326_while_identity_1
lstm_326_while_identity_2
lstm_326_while_identity_3
lstm_326_while_identity_4
lstm_326_while_identity_5+
'lstm_326_while_lstm_326_strided_slice_1g
clstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensorM
;lstm_326_while_lstm_cell_260_matmul_readvariableop_resource:2(O
=lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource:
(J
<lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource:(??3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp?2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp?4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp?
@lstm_326/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_326/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensor_0lstm_326_while_placeholderIlstm_326/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp=lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_326/while/lstm_cell_260/MatMulMatMul9lstm_326/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp?lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_326/while/lstm_cell_260/MatMul_1MatMullstm_326_while_placeholder_2<lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_326/while/lstm_cell_260/addAddV2-lstm_326/while/lstm_cell_260/MatMul:product:0/lstm_326/while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp>lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_326/while/lstm_cell_260/BiasAddBiasAdd$lstm_326/while/lstm_cell_260/add:z:0;lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_326/while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_326/while/lstm_cell_260/splitSplit5lstm_326/while/lstm_cell_260/split/split_dim:output:0-lstm_326/while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_326/while/lstm_cell_260/SigmoidSigmoid+lstm_326/while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_326/while/lstm_cell_260/Sigmoid_1Sigmoid+lstm_326/while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_326/while/lstm_cell_260/mulMul*lstm_326/while/lstm_cell_260/Sigmoid_1:y:0lstm_326_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_326/while/lstm_cell_260/ReluRelu+lstm_326/while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_326/while/lstm_cell_260/mul_1Mul(lstm_326/while/lstm_cell_260/Sigmoid:y:0/lstm_326/while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_326/while/lstm_cell_260/add_1AddV2$lstm_326/while/lstm_cell_260/mul:z:0&lstm_326/while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_326/while/lstm_cell_260/Sigmoid_2Sigmoid+lstm_326/while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_326/while/lstm_cell_260/Relu_1Relu&lstm_326/while/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_326/while/lstm_cell_260/mul_2Mul*lstm_326/while/lstm_cell_260/Sigmoid_2:y:01lstm_326/while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_326/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_326_while_placeholder_1lstm_326_while_placeholder&lstm_326/while/lstm_cell_260/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_326/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_326/while/addAddV2lstm_326_while_placeholderlstm_326/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_326/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_326/while/add_1AddV2*lstm_326_while_lstm_326_while_loop_counterlstm_326/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_326/while/IdentityIdentitylstm_326/while/add_1:z:0^lstm_326/while/NoOp*
T0*
_output_shapes
: ?
lstm_326/while/Identity_1Identity0lstm_326_while_lstm_326_while_maximum_iterations^lstm_326/while/NoOp*
T0*
_output_shapes
: t
lstm_326/while/Identity_2Identitylstm_326/while/add:z:0^lstm_326/while/NoOp*
T0*
_output_shapes
: ?
lstm_326/while/Identity_3IdentityClstm_326/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_326/while/NoOp*
T0*
_output_shapes
: ?
lstm_326/while/Identity_4Identity&lstm_326/while/lstm_cell_260/mul_2:z:0^lstm_326/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_326/while/Identity_5Identity&lstm_326/while/lstm_cell_260/add_1:z:0^lstm_326/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_326/while/NoOpNoOp4^lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp3^lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp5^lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_326_while_identity lstm_326/while/Identity:output:0"?
lstm_326_while_identity_1"lstm_326/while/Identity_1:output:0"?
lstm_326_while_identity_2"lstm_326/while/Identity_2:output:0"?
lstm_326_while_identity_3"lstm_326/while/Identity_3:output:0"?
lstm_326_while_identity_4"lstm_326/while/Identity_4:output:0"?
lstm_326_while_identity_5"lstm_326/while/Identity_5:output:0"T
'lstm_326_while_lstm_326_strided_slice_1)lstm_326_while_lstm_326_strided_slice_1_0"~
<lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource>lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0"?
=lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource?lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0"|
;lstm_326_while_lstm_cell_260_matmul_readvariableop_resource=lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0"?
clstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensorelstm_326_while_tensorarrayv2read_tensorlistgetitem_lstm_326_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp3lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp2h
2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp2lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp2l
4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp4lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_260_layer_call_fn_1578345

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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1573864o
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
/__inference_lstm_cell_259_layer_call_fn_1578247

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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573514o
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
?
/__inference_lstm_cell_259_layer_call_fn_1578264

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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573660o
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
while_body_1577600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_260_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_260_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_260_matmul_readvariableop_resource:2(F
4while_lstm_cell_260_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_260_biasadd_readvariableop_resource:(??*while/lstm_cell_260/BiasAdd/ReadVariableOp?)while/lstm_cell_260/MatMul/ReadVariableOp?+while/lstm_cell_260/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_260/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_260/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_260/addAddV2$while/lstm_cell_260/MatMul:product:0&while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_260/BiasAddBiasAddwhile/lstm_cell_260/add:z:02while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_260/splitSplit,while/lstm_cell_260/split/split_dim:output:0$while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_260/SigmoidSigmoid"while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_1Sigmoid"while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mulMul!while/lstm_cell_260/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_260/ReluRelu"while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_1Mulwhile/lstm_cell_260/Sigmoid:y:0&while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/add_1AddV2while/lstm_cell_260/mul:z:0while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_2Sigmoid"while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_260/Relu_1Reluwhile/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_2Mul!while/lstm_cell_260/Sigmoid_2:y:0(while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_260/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_260/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_260/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_260/BiasAdd/ReadVariableOp*^while/lstm_cell_260/MatMul/ReadVariableOp,^while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_260_biasadd_readvariableop_resource5while_lstm_cell_260_biasadd_readvariableop_resource_0"n
4while_lstm_cell_260_matmul_1_readvariableop_resource6while_lstm_cell_260_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_260_matmul_readvariableop_resource4while_lstm_cell_260_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_260/BiasAdd/ReadVariableOp*while/lstm_cell_260/BiasAdd/ReadVariableOp2V
)while/lstm_cell_260/MatMul/ReadVariableOp)while/lstm_cell_260/MatMul/ReadVariableOp2Z
+while/lstm_cell_260/MatMul_1/ReadVariableOp+while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1573597

inputs(
lstm_cell_259_1573515:	d?(
lstm_cell_259_1573517:	2?$
lstm_cell_259_1573519:	?
identity??%lstm_cell_259/StatefulPartitionedCall?while;
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
%lstm_cell_259/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_259_1573515lstm_cell_259_1573517lstm_cell_259_1573519*
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1573514n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_259_1573515lstm_cell_259_1573517lstm_cell_259_1573519*
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
while_body_1573528*
condR
while_cond_1573527*K
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
NoOpNoOp&^lstm_cell_259/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_259/StatefulPartitionedCall%lstm_cell_259/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_1573178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_258_1573202_0:	?0
while_lstm_cell_258_1573204_0:	d?,
while_lstm_cell_258_1573206_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_258_1573202:	?.
while_lstm_cell_258_1573204:	d?*
while_lstm_cell_258_1573206:	???+while/lstm_cell_258/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_258/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_258_1573202_0while_lstm_cell_258_1573204_0while_lstm_cell_258_1573206_0*
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573164?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_258/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_258/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_258/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_258/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_258_1573202while_lstm_cell_258_1573202_0"<
while_lstm_cell_258_1573204while_lstm_cell_258_1573204_0"<
while_lstm_cell_258_1573206while_lstm_cell_258_1573206_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_258/StatefulPartitionedCall+while/lstm_cell_258/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_325_layer_call_fn_1576914

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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574446s
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
while_cond_1576653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1576653___redundant_placeholder05
1while_while_cond_1576653___redundant_placeholder15
1while_while_cond_1576653___redundant_placeholder25
1while_while_cond_1576653___redundant_placeholder3
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
"__inference__wrapped_model_1573097
lstm_324_inputW
Dsequential_108_lstm_324_lstm_cell_258_matmul_readvariableop_resource:	?Y
Fsequential_108_lstm_324_lstm_cell_258_matmul_1_readvariableop_resource:	d?T
Esequential_108_lstm_324_lstm_cell_258_biasadd_readvariableop_resource:	?W
Dsequential_108_lstm_325_lstm_cell_259_matmul_readvariableop_resource:	d?Y
Fsequential_108_lstm_325_lstm_cell_259_matmul_1_readvariableop_resource:	2?T
Esequential_108_lstm_325_lstm_cell_259_biasadd_readvariableop_resource:	?V
Dsequential_108_lstm_326_lstm_cell_260_matmul_readvariableop_resource:2(X
Fsequential_108_lstm_326_lstm_cell_260_matmul_1_readvariableop_resource:
(S
Esequential_108_lstm_326_lstm_cell_260_biasadd_readvariableop_resource:(I
7sequential_108_dense_108_matmul_readvariableop_resource:
F
8sequential_108_dense_108_biasadd_readvariableop_resource:
identity??/sequential_108/dense_108/BiasAdd/ReadVariableOp?.sequential_108/dense_108/MatMul/ReadVariableOp?<sequential_108/lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp?;sequential_108/lstm_324/lstm_cell_258/MatMul/ReadVariableOp?=sequential_108/lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp?sequential_108/lstm_324/while?<sequential_108/lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp?;sequential_108/lstm_325/lstm_cell_259/MatMul/ReadVariableOp?=sequential_108/lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp?sequential_108/lstm_325/while?<sequential_108/lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp?;sequential_108/lstm_326/lstm_cell_260/MatMul/ReadVariableOp?=sequential_108/lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp?sequential_108/lstm_326/while[
sequential_108/lstm_324/ShapeShapelstm_324_input*
T0*
_output_shapes
:u
+sequential_108/lstm_324/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_108/lstm_324/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_108/lstm_324/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_108/lstm_324/strided_sliceStridedSlice&sequential_108/lstm_324/Shape:output:04sequential_108/lstm_324/strided_slice/stack:output:06sequential_108/lstm_324/strided_slice/stack_1:output:06sequential_108/lstm_324/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_108/lstm_324/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_108/lstm_324/zeros/packedPack.sequential_108/lstm_324/strided_slice:output:0/sequential_108/lstm_324/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_108/lstm_324/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_108/lstm_324/zerosFill-sequential_108/lstm_324/zeros/packed:output:0,sequential_108/lstm_324/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_108/lstm_324/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_108/lstm_324/zeros_1/packedPack.sequential_108/lstm_324/strided_slice:output:01sequential_108/lstm_324/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_108/lstm_324/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_108/lstm_324/zeros_1Fill/sequential_108/lstm_324/zeros_1/packed:output:0.sequential_108/lstm_324/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_108/lstm_324/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_108/lstm_324/transpose	Transposelstm_324_input/sequential_108/lstm_324/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_108/lstm_324/Shape_1Shape%sequential_108/lstm_324/transpose:y:0*
T0*
_output_shapes
:w
-sequential_108/lstm_324/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_324/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_108/lstm_324/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_324/strided_slice_1StridedSlice(sequential_108/lstm_324/Shape_1:output:06sequential_108/lstm_324/strided_slice_1/stack:output:08sequential_108/lstm_324/strided_slice_1/stack_1:output:08sequential_108/lstm_324/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_108/lstm_324/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_108/lstm_324/TensorArrayV2TensorListReserve<sequential_108/lstm_324/TensorArrayV2/element_shape:output:00sequential_108/lstm_324/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_108/lstm_324/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_108/lstm_324/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_108/lstm_324/transpose:y:0Vsequential_108/lstm_324/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_108/lstm_324/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_324/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_108/lstm_324/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_324/strided_slice_2StridedSlice%sequential_108/lstm_324/transpose:y:06sequential_108/lstm_324/strided_slice_2/stack:output:08sequential_108/lstm_324/strided_slice_2/stack_1:output:08sequential_108/lstm_324/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_108/lstm_324/lstm_cell_258/MatMul/ReadVariableOpReadVariableOpDsequential_108_lstm_324_lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_108/lstm_324/lstm_cell_258/MatMulMatMul0sequential_108/lstm_324/strided_slice_2:output:0Csequential_108/lstm_324/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_108/lstm_324/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOpFsequential_108_lstm_324_lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_108/lstm_324/lstm_cell_258/MatMul_1MatMul&sequential_108/lstm_324/zeros:output:0Esequential_108/lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_108/lstm_324/lstm_cell_258/addAddV26sequential_108/lstm_324/lstm_cell_258/MatMul:product:08sequential_108/lstm_324/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_108/lstm_324/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOpEsequential_108_lstm_324_lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_108/lstm_324/lstm_cell_258/BiasAddBiasAdd-sequential_108/lstm_324/lstm_cell_258/add:z:0Dsequential_108/lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_108/lstm_324/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_108/lstm_324/lstm_cell_258/splitSplit>sequential_108/lstm_324/lstm_cell_258/split/split_dim:output:06sequential_108/lstm_324/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_108/lstm_324/lstm_cell_258/SigmoidSigmoid4sequential_108/lstm_324/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_108/lstm_324/lstm_cell_258/Sigmoid_1Sigmoid4sequential_108/lstm_324/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_108/lstm_324/lstm_cell_258/mulMul3sequential_108/lstm_324/lstm_cell_258/Sigmoid_1:y:0(sequential_108/lstm_324/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_108/lstm_324/lstm_cell_258/ReluRelu4sequential_108/lstm_324/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_108/lstm_324/lstm_cell_258/mul_1Mul1sequential_108/lstm_324/lstm_cell_258/Sigmoid:y:08sequential_108/lstm_324/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_108/lstm_324/lstm_cell_258/add_1AddV2-sequential_108/lstm_324/lstm_cell_258/mul:z:0/sequential_108/lstm_324/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_108/lstm_324/lstm_cell_258/Sigmoid_2Sigmoid4sequential_108/lstm_324/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_108/lstm_324/lstm_cell_258/Relu_1Relu/sequential_108/lstm_324/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_108/lstm_324/lstm_cell_258/mul_2Mul3sequential_108/lstm_324/lstm_cell_258/Sigmoid_2:y:0:sequential_108/lstm_324/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_108/lstm_324/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_108/lstm_324/TensorArrayV2_1TensorListReserve>sequential_108/lstm_324/TensorArrayV2_1/element_shape:output:00sequential_108/lstm_324/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_108/lstm_324/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_108/lstm_324/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_108/lstm_324/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_108/lstm_324/whileWhile3sequential_108/lstm_324/while/loop_counter:output:09sequential_108/lstm_324/while/maximum_iterations:output:0%sequential_108/lstm_324/time:output:00sequential_108/lstm_324/TensorArrayV2_1:handle:0&sequential_108/lstm_324/zeros:output:0(sequential_108/lstm_324/zeros_1:output:00sequential_108/lstm_324/strided_slice_1:output:0Osequential_108/lstm_324/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_108_lstm_324_lstm_cell_258_matmul_readvariableop_resourceFsequential_108_lstm_324_lstm_cell_258_matmul_1_readvariableop_resourceEsequential_108_lstm_324_lstm_cell_258_biasadd_readvariableop_resource*
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
*sequential_108_lstm_324_while_body_1572729*6
cond.R,
*sequential_108_lstm_324_while_cond_1572728*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_108/lstm_324/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_108/lstm_324/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_108/lstm_324/while:output:3Qsequential_108/lstm_324/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_108/lstm_324/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_108/lstm_324/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_324/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_324/strided_slice_3StridedSliceCsequential_108/lstm_324/TensorArrayV2Stack/TensorListStack:tensor:06sequential_108/lstm_324/strided_slice_3/stack:output:08sequential_108/lstm_324/strided_slice_3/stack_1:output:08sequential_108/lstm_324/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_108/lstm_324/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_108/lstm_324/transpose_1	TransposeCsequential_108/lstm_324/TensorArrayV2Stack/TensorListStack:tensor:01sequential_108/lstm_324/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_108/lstm_324/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_108/lstm_325/ShapeShape'sequential_108/lstm_324/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_108/lstm_325/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_108/lstm_325/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_108/lstm_325/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_108/lstm_325/strided_sliceStridedSlice&sequential_108/lstm_325/Shape:output:04sequential_108/lstm_325/strided_slice/stack:output:06sequential_108/lstm_325/strided_slice/stack_1:output:06sequential_108/lstm_325/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_108/lstm_325/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_108/lstm_325/zeros/packedPack.sequential_108/lstm_325/strided_slice:output:0/sequential_108/lstm_325/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_108/lstm_325/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_108/lstm_325/zerosFill-sequential_108/lstm_325/zeros/packed:output:0,sequential_108/lstm_325/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_108/lstm_325/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_108/lstm_325/zeros_1/packedPack.sequential_108/lstm_325/strided_slice:output:01sequential_108/lstm_325/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_108/lstm_325/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_108/lstm_325/zeros_1Fill/sequential_108/lstm_325/zeros_1/packed:output:0.sequential_108/lstm_325/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_108/lstm_325/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_108/lstm_325/transpose	Transpose'sequential_108/lstm_324/transpose_1:y:0/sequential_108/lstm_325/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_108/lstm_325/Shape_1Shape%sequential_108/lstm_325/transpose:y:0*
T0*
_output_shapes
:w
-sequential_108/lstm_325/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_325/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_108/lstm_325/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_325/strided_slice_1StridedSlice(sequential_108/lstm_325/Shape_1:output:06sequential_108/lstm_325/strided_slice_1/stack:output:08sequential_108/lstm_325/strided_slice_1/stack_1:output:08sequential_108/lstm_325/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_108/lstm_325/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_108/lstm_325/TensorArrayV2TensorListReserve<sequential_108/lstm_325/TensorArrayV2/element_shape:output:00sequential_108/lstm_325/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_108/lstm_325/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_108/lstm_325/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_108/lstm_325/transpose:y:0Vsequential_108/lstm_325/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_108/lstm_325/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_325/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_108/lstm_325/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_325/strided_slice_2StridedSlice%sequential_108/lstm_325/transpose:y:06sequential_108/lstm_325/strided_slice_2/stack:output:08sequential_108/lstm_325/strided_slice_2/stack_1:output:08sequential_108/lstm_325/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_108/lstm_325/lstm_cell_259/MatMul/ReadVariableOpReadVariableOpDsequential_108_lstm_325_lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_108/lstm_325/lstm_cell_259/MatMulMatMul0sequential_108/lstm_325/strided_slice_2:output:0Csequential_108/lstm_325/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_108/lstm_325/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOpFsequential_108_lstm_325_lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_108/lstm_325/lstm_cell_259/MatMul_1MatMul&sequential_108/lstm_325/zeros:output:0Esequential_108/lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_108/lstm_325/lstm_cell_259/addAddV26sequential_108/lstm_325/lstm_cell_259/MatMul:product:08sequential_108/lstm_325/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_108/lstm_325/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOpEsequential_108_lstm_325_lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_108/lstm_325/lstm_cell_259/BiasAddBiasAdd-sequential_108/lstm_325/lstm_cell_259/add:z:0Dsequential_108/lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_108/lstm_325/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_108/lstm_325/lstm_cell_259/splitSplit>sequential_108/lstm_325/lstm_cell_259/split/split_dim:output:06sequential_108/lstm_325/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_108/lstm_325/lstm_cell_259/SigmoidSigmoid4sequential_108/lstm_325/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_108/lstm_325/lstm_cell_259/Sigmoid_1Sigmoid4sequential_108/lstm_325/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_108/lstm_325/lstm_cell_259/mulMul3sequential_108/lstm_325/lstm_cell_259/Sigmoid_1:y:0(sequential_108/lstm_325/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_108/lstm_325/lstm_cell_259/ReluRelu4sequential_108/lstm_325/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_108/lstm_325/lstm_cell_259/mul_1Mul1sequential_108/lstm_325/lstm_cell_259/Sigmoid:y:08sequential_108/lstm_325/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_108/lstm_325/lstm_cell_259/add_1AddV2-sequential_108/lstm_325/lstm_cell_259/mul:z:0/sequential_108/lstm_325/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_108/lstm_325/lstm_cell_259/Sigmoid_2Sigmoid4sequential_108/lstm_325/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_108/lstm_325/lstm_cell_259/Relu_1Relu/sequential_108/lstm_325/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_108/lstm_325/lstm_cell_259/mul_2Mul3sequential_108/lstm_325/lstm_cell_259/Sigmoid_2:y:0:sequential_108/lstm_325/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_108/lstm_325/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_108/lstm_325/TensorArrayV2_1TensorListReserve>sequential_108/lstm_325/TensorArrayV2_1/element_shape:output:00sequential_108/lstm_325/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_108/lstm_325/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_108/lstm_325/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_108/lstm_325/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_108/lstm_325/whileWhile3sequential_108/lstm_325/while/loop_counter:output:09sequential_108/lstm_325/while/maximum_iterations:output:0%sequential_108/lstm_325/time:output:00sequential_108/lstm_325/TensorArrayV2_1:handle:0&sequential_108/lstm_325/zeros:output:0(sequential_108/lstm_325/zeros_1:output:00sequential_108/lstm_325/strided_slice_1:output:0Osequential_108/lstm_325/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_108_lstm_325_lstm_cell_259_matmul_readvariableop_resourceFsequential_108_lstm_325_lstm_cell_259_matmul_1_readvariableop_resourceEsequential_108_lstm_325_lstm_cell_259_biasadd_readvariableop_resource*
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
*sequential_108_lstm_325_while_body_1572868*6
cond.R,
*sequential_108_lstm_325_while_cond_1572867*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_108/lstm_325/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_108/lstm_325/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_108/lstm_325/while:output:3Qsequential_108/lstm_325/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_108/lstm_325/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_108/lstm_325/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_325/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_325/strided_slice_3StridedSliceCsequential_108/lstm_325/TensorArrayV2Stack/TensorListStack:tensor:06sequential_108/lstm_325/strided_slice_3/stack:output:08sequential_108/lstm_325/strided_slice_3/stack_1:output:08sequential_108/lstm_325/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_108/lstm_325/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_108/lstm_325/transpose_1	TransposeCsequential_108/lstm_325/TensorArrayV2Stack/TensorListStack:tensor:01sequential_108/lstm_325/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_108/lstm_325/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_108/lstm_326/ShapeShape'sequential_108/lstm_325/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_108/lstm_326/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_108/lstm_326/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_108/lstm_326/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_108/lstm_326/strided_sliceStridedSlice&sequential_108/lstm_326/Shape:output:04sequential_108/lstm_326/strided_slice/stack:output:06sequential_108/lstm_326/strided_slice/stack_1:output:06sequential_108/lstm_326/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_108/lstm_326/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_108/lstm_326/zeros/packedPack.sequential_108/lstm_326/strided_slice:output:0/sequential_108/lstm_326/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_108/lstm_326/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_108/lstm_326/zerosFill-sequential_108/lstm_326/zeros/packed:output:0,sequential_108/lstm_326/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_108/lstm_326/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_108/lstm_326/zeros_1/packedPack.sequential_108/lstm_326/strided_slice:output:01sequential_108/lstm_326/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_108/lstm_326/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_108/lstm_326/zeros_1Fill/sequential_108/lstm_326/zeros_1/packed:output:0.sequential_108/lstm_326/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_108/lstm_326/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_108/lstm_326/transpose	Transpose'sequential_108/lstm_325/transpose_1:y:0/sequential_108/lstm_326/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_108/lstm_326/Shape_1Shape%sequential_108/lstm_326/transpose:y:0*
T0*
_output_shapes
:w
-sequential_108/lstm_326/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_326/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_108/lstm_326/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_326/strided_slice_1StridedSlice(sequential_108/lstm_326/Shape_1:output:06sequential_108/lstm_326/strided_slice_1/stack:output:08sequential_108/lstm_326/strided_slice_1/stack_1:output:08sequential_108/lstm_326/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_108/lstm_326/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_108/lstm_326/TensorArrayV2TensorListReserve<sequential_108/lstm_326/TensorArrayV2/element_shape:output:00sequential_108/lstm_326/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_108/lstm_326/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_108/lstm_326/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_108/lstm_326/transpose:y:0Vsequential_108/lstm_326/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_108/lstm_326/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_326/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_108/lstm_326/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_326/strided_slice_2StridedSlice%sequential_108/lstm_326/transpose:y:06sequential_108/lstm_326/strided_slice_2/stack:output:08sequential_108/lstm_326/strided_slice_2/stack_1:output:08sequential_108/lstm_326/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_108/lstm_326/lstm_cell_260/MatMul/ReadVariableOpReadVariableOpDsequential_108_lstm_326_lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_108/lstm_326/lstm_cell_260/MatMulMatMul0sequential_108/lstm_326/strided_slice_2:output:0Csequential_108/lstm_326/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_108/lstm_326/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOpFsequential_108_lstm_326_lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_108/lstm_326/lstm_cell_260/MatMul_1MatMul&sequential_108/lstm_326/zeros:output:0Esequential_108/lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_108/lstm_326/lstm_cell_260/addAddV26sequential_108/lstm_326/lstm_cell_260/MatMul:product:08sequential_108/lstm_326/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_108/lstm_326/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOpEsequential_108_lstm_326_lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_108/lstm_326/lstm_cell_260/BiasAddBiasAdd-sequential_108/lstm_326/lstm_cell_260/add:z:0Dsequential_108/lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_108/lstm_326/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_108/lstm_326/lstm_cell_260/splitSplit>sequential_108/lstm_326/lstm_cell_260/split/split_dim:output:06sequential_108/lstm_326/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_108/lstm_326/lstm_cell_260/SigmoidSigmoid4sequential_108/lstm_326/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_108/lstm_326/lstm_cell_260/Sigmoid_1Sigmoid4sequential_108/lstm_326/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_108/lstm_326/lstm_cell_260/mulMul3sequential_108/lstm_326/lstm_cell_260/Sigmoid_1:y:0(sequential_108/lstm_326/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_108/lstm_326/lstm_cell_260/ReluRelu4sequential_108/lstm_326/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_108/lstm_326/lstm_cell_260/mul_1Mul1sequential_108/lstm_326/lstm_cell_260/Sigmoid:y:08sequential_108/lstm_326/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_108/lstm_326/lstm_cell_260/add_1AddV2-sequential_108/lstm_326/lstm_cell_260/mul:z:0/sequential_108/lstm_326/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_108/lstm_326/lstm_cell_260/Sigmoid_2Sigmoid4sequential_108/lstm_326/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_108/lstm_326/lstm_cell_260/Relu_1Relu/sequential_108/lstm_326/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_108/lstm_326/lstm_cell_260/mul_2Mul3sequential_108/lstm_326/lstm_cell_260/Sigmoid_2:y:0:sequential_108/lstm_326/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_108/lstm_326/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_108/lstm_326/TensorArrayV2_1TensorListReserve>sequential_108/lstm_326/TensorArrayV2_1/element_shape:output:00sequential_108/lstm_326/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_108/lstm_326/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_108/lstm_326/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_108/lstm_326/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_108/lstm_326/whileWhile3sequential_108/lstm_326/while/loop_counter:output:09sequential_108/lstm_326/while/maximum_iterations:output:0%sequential_108/lstm_326/time:output:00sequential_108/lstm_326/TensorArrayV2_1:handle:0&sequential_108/lstm_326/zeros:output:0(sequential_108/lstm_326/zeros_1:output:00sequential_108/lstm_326/strided_slice_1:output:0Osequential_108/lstm_326/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_108_lstm_326_lstm_cell_260_matmul_readvariableop_resourceFsequential_108_lstm_326_lstm_cell_260_matmul_1_readvariableop_resourceEsequential_108_lstm_326_lstm_cell_260_biasadd_readvariableop_resource*
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
*sequential_108_lstm_326_while_body_1573007*6
cond.R,
*sequential_108_lstm_326_while_cond_1573006*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_108/lstm_326/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_108/lstm_326/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_108/lstm_326/while:output:3Qsequential_108/lstm_326/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_108/lstm_326/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_108/lstm_326/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_108/lstm_326/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_108/lstm_326/strided_slice_3StridedSliceCsequential_108/lstm_326/TensorArrayV2Stack/TensorListStack:tensor:06sequential_108/lstm_326/strided_slice_3/stack:output:08sequential_108/lstm_326/strided_slice_3/stack_1:output:08sequential_108/lstm_326/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_108/lstm_326/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_108/lstm_326/transpose_1	TransposeCsequential_108/lstm_326/TensorArrayV2Stack/TensorListStack:tensor:01sequential_108/lstm_326/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_108/lstm_326/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_108/dense_108/MatMul/ReadVariableOpReadVariableOp7sequential_108_dense_108_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_108/dense_108/MatMulMatMul0sequential_108/lstm_326/strided_slice_3:output:06sequential_108/dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_108/dense_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_108_dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_108/dense_108/BiasAddBiasAdd)sequential_108/dense_108/MatMul:product:07sequential_108/dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_108/dense_108/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_108/dense_108/BiasAdd/ReadVariableOp/^sequential_108/dense_108/MatMul/ReadVariableOp=^sequential_108/lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp<^sequential_108/lstm_324/lstm_cell_258/MatMul/ReadVariableOp>^sequential_108/lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp^sequential_108/lstm_324/while=^sequential_108/lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp<^sequential_108/lstm_325/lstm_cell_259/MatMul/ReadVariableOp>^sequential_108/lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp^sequential_108/lstm_325/while=^sequential_108/lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp<^sequential_108/lstm_326/lstm_cell_260/MatMul/ReadVariableOp>^sequential_108/lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp^sequential_108/lstm_326/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_108/dense_108/BiasAdd/ReadVariableOp/sequential_108/dense_108/BiasAdd/ReadVariableOp2`
.sequential_108/dense_108/MatMul/ReadVariableOp.sequential_108/dense_108/MatMul/ReadVariableOp2|
<sequential_108/lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp<sequential_108/lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp2z
;sequential_108/lstm_324/lstm_cell_258/MatMul/ReadVariableOp;sequential_108/lstm_324/lstm_cell_258/MatMul/ReadVariableOp2~
=sequential_108/lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp=sequential_108/lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp2>
sequential_108/lstm_324/whilesequential_108/lstm_324/while2|
<sequential_108/lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp<sequential_108/lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp2z
;sequential_108/lstm_325/lstm_cell_259/MatMul/ReadVariableOp;sequential_108/lstm_325/lstm_cell_259/MatMul/ReadVariableOp2~
=sequential_108/lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp=sequential_108/lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp2>
sequential_108/lstm_325/whilesequential_108/lstm_325/while2|
<sequential_108/lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp<sequential_108/lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp2z
;sequential_108/lstm_326/lstm_cell_260/MatMul/ReadVariableOp;sequential_108/lstm_326/lstm_cell_260/MatMul/ReadVariableOp2~
=sequential_108/lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp=sequential_108/lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp2>
sequential_108/lstm_326/whilesequential_108/lstm_326/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_324_input
?8
?
while_body_1576984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_259_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_259_matmul_readvariableop_resource:	d?G
4while_lstm_cell_259_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_259_biasadd_readvariableop_resource:	???*while/lstm_cell_259/BiasAdd/ReadVariableOp?)while/lstm_cell_259/MatMul/ReadVariableOp?+while/lstm_cell_259/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_259/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_259/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_259/addAddV2$while/lstm_cell_259/MatMul:product:0&while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_259/BiasAddBiasAddwhile/lstm_cell_259/add:z:02while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_259/splitSplit,while/lstm_cell_259/split/split_dim:output:0$while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_259/SigmoidSigmoid"while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_1Sigmoid"while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mulMul!while/lstm_cell_259/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_259/ReluRelu"while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_1Mulwhile/lstm_cell_259/Sigmoid:y:0&while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/add_1AddV2while/lstm_cell_259/mul:z:0while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_2Sigmoid"while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_259/Relu_1Reluwhile/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_2Mul!while/lstm_cell_259/Sigmoid_2:y:0(while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_259/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_259/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_259/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_259/BiasAdd/ReadVariableOp*^while/lstm_cell_259/MatMul/ReadVariableOp,^while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_259_biasadd_readvariableop_resource5while_lstm_cell_259_biasadd_readvariableop_resource_0"n
4while_lstm_cell_259_matmul_1_readvariableop_resource6while_lstm_cell_259_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_259_matmul_readvariableop_resource4while_lstm_cell_259_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_259/BiasAdd/ReadVariableOp*while/lstm_cell_259/BiasAdd/ReadVariableOp2V
)while/lstm_cell_259/MatMul/ReadVariableOp)while/lstm_cell_259/MatMul/ReadVariableOp2Z
+while/lstm_cell_259/MatMul_1/ReadVariableOp+while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1576511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_258_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_258_matmul_readvariableop_resource:	?G
4while_lstm_cell_258_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_258_biasadd_readvariableop_resource:	???*while/lstm_cell_258/BiasAdd/ReadVariableOp?)while/lstm_cell_258/MatMul/ReadVariableOp?+while/lstm_cell_258/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_258/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_258/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_258/addAddV2$while/lstm_cell_258/MatMul:product:0&while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_258/BiasAddBiasAddwhile/lstm_cell_258/add:z:02while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_258/splitSplit,while/lstm_cell_258/split/split_dim:output:0$while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_258/SigmoidSigmoid"while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_1Sigmoid"while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mulMul!while/lstm_cell_258/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_258/ReluRelu"while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_1Mulwhile/lstm_cell_258/Sigmoid:y:0&while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/add_1AddV2while/lstm_cell_258/mul:z:0while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_2Sigmoid"while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_258/Relu_1Reluwhile/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_2Mul!while/lstm_cell_258/Sigmoid_2:y:0(while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_258/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_258/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_258/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_258/BiasAdd/ReadVariableOp*^while/lstm_cell_258/MatMul/ReadVariableOp,^while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_258_biasadd_readvariableop_resource5while_lstm_cell_258_biasadd_readvariableop_resource_0"n
4while_lstm_cell_258_matmul_1_readvariableop_resource6while_lstm_cell_258_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_258_matmul_readvariableop_resource4while_lstm_cell_258_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_258/BiasAdd/ReadVariableOp*while/lstm_cell_258/BiasAdd/ReadVariableOp2V
)while/lstm_cell_258/MatMul/ReadVariableOp)while/lstm_cell_258/MatMul/ReadVariableOp2Z
+while/lstm_cell_258/MatMul_1/ReadVariableOp+while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1577743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_260_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_260_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_260_matmul_readvariableop_resource:2(F
4while_lstm_cell_260_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_260_biasadd_readvariableop_resource:(??*while/lstm_cell_260/BiasAdd/ReadVariableOp?)while/lstm_cell_260/MatMul/ReadVariableOp?+while/lstm_cell_260/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_260/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_260/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_260/addAddV2$while/lstm_cell_260/MatMul:product:0&while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_260/BiasAddBiasAddwhile/lstm_cell_260/add:z:02while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_260/splitSplit,while/lstm_cell_260/split/split_dim:output:0$while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_260/SigmoidSigmoid"while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_1Sigmoid"while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mulMul!while/lstm_cell_260/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_260/ReluRelu"while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_1Mulwhile/lstm_cell_260/Sigmoid:y:0&while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/add_1AddV2while/lstm_cell_260/mul:z:0while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_2Sigmoid"while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_260/Relu_1Reluwhile/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_2Mul!while/lstm_cell_260/Sigmoid_2:y:0(while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_260/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_260/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_260/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_260/BiasAdd/ReadVariableOp*^while/lstm_cell_260/MatMul/ReadVariableOp,^while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_260_biasadd_readvariableop_resource5while_lstm_cell_260_biasadd_readvariableop_resource_0"n
4while_lstm_cell_260_matmul_1_readvariableop_resource6while_lstm_cell_260_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_260_matmul_readvariableop_resource4while_lstm_cell_260_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_260/BiasAdd/ReadVariableOp*while/lstm_cell_260/BiasAdd/ReadVariableOp2V
)while/lstm_cell_260/MatMul/ReadVariableOp)while/lstm_cell_260/MatMul/ReadVariableOp2Z
+while/lstm_cell_260/MatMul_1/ReadVariableOp+while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1577412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1577412___redundant_placeholder05
1while_while_cond_1577412___redundant_placeholder15
1while_while_cond_1577412___redundant_placeholder25
1while_while_cond_1577412___redundant_placeholder3
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577068
inputs_0?
,lstm_cell_259_matmul_readvariableop_resource:	d?A
.lstm_cell_259_matmul_1_readvariableop_resource:	2?<
-lstm_cell_259_biasadd_readvariableop_resource:	?
identity??$lstm_cell_259/BiasAdd/ReadVariableOp?#lstm_cell_259/MatMul/ReadVariableOp?%lstm_cell_259/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_259/MatMul/ReadVariableOpReadVariableOp,lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_259/MatMulMatMulstrided_slice_2:output:0+lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_259/MatMul_1MatMulzeros:output:0-lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_259/addAddV2lstm_cell_259/MatMul:product:0 lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_259/BiasAddBiasAddlstm_cell_259/add:z:0,lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_259/splitSplit&lstm_cell_259/split/split_dim:output:0lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_259/SigmoidSigmoidlstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_1Sigmoidlstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_259/mulMullstm_cell_259/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_259/ReluRelulstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_1Mullstm_cell_259/Sigmoid:y:0 lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_259/add_1AddV2lstm_cell_259/mul:z:0lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_2Sigmoidlstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_259/Relu_1Relulstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_2Mullstm_cell_259/Sigmoid_2:y:0"lstm_cell_259/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_259_matmul_readvariableop_resource.lstm_cell_259_matmul_1_readvariableop_resource-lstm_cell_259_biasadd_readvariableop_resource*
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
while_body_1576984*
condR
while_cond_1576983*K
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
NoOpNoOp%^lstm_cell_259/BiasAdd/ReadVariableOp$^lstm_cell_259/MatMul/ReadVariableOp&^lstm_cell_259/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_259/BiasAdd/ReadVariableOp$lstm_cell_259/BiasAdd/ReadVariableOp2J
#lstm_cell_259/MatMul/ReadVariableOp#lstm_cell_259/MatMul/ReadVariableOp2N
%lstm_cell_259/MatMul_1/ReadVariableOp%lstm_cell_259/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1576368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_258_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_258_matmul_readvariableop_resource:	?G
4while_lstm_cell_258_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_258_biasadd_readvariableop_resource:	???*while/lstm_cell_258/BiasAdd/ReadVariableOp?)while/lstm_cell_258/MatMul/ReadVariableOp?+while/lstm_cell_258/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_258/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_258/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_258/addAddV2$while/lstm_cell_258/MatMul:product:0&while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_258/BiasAddBiasAddwhile/lstm_cell_258/add:z:02while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_258/splitSplit,while/lstm_cell_258/split/split_dim:output:0$while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_258/SigmoidSigmoid"while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_1Sigmoid"while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mulMul!while/lstm_cell_258/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_258/ReluRelu"while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_1Mulwhile/lstm_cell_258/Sigmoid:y:0&while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/add_1AddV2while/lstm_cell_258/mul:z:0while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_2Sigmoid"while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_258/Relu_1Reluwhile/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_2Mul!while/lstm_cell_258/Sigmoid_2:y:0(while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_258/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_258/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_258/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_258/BiasAdd/ReadVariableOp*^while/lstm_cell_258/MatMul/ReadVariableOp,^while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_258_biasadd_readvariableop_resource5while_lstm_cell_258_biasadd_readvariableop_resource_0"n
4while_lstm_cell_258_matmul_1_readvariableop_resource6while_lstm_cell_258_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_258_matmul_readvariableop_resource4while_lstm_cell_258_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_258/BiasAdd/ReadVariableOp*while/lstm_cell_258/BiasAdd/ReadVariableOp2V
)while/lstm_cell_258/MatMul/ReadVariableOp)while/lstm_cell_258/MatMul/ReadVariableOp2Z
+while/lstm_cell_258/MatMul_1/ReadVariableOp+while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1578028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1578028___redundant_placeholder05
1while_while_cond_1578028___redundant_placeholder15
1while_while_cond_1578028___redundant_placeholder25
1while_while_cond_1578028___redundant_placeholder3
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1573864

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
*__inference_lstm_325_layer_call_fn_1576903
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1573788|
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
while_body_1577270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_259_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_259_matmul_readvariableop_resource:	d?G
4while_lstm_cell_259_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_259_biasadd_readvariableop_resource:	???*while/lstm_cell_259/BiasAdd/ReadVariableOp?)while/lstm_cell_259/MatMul/ReadVariableOp?+while/lstm_cell_259/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_259/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_259/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_259/addAddV2$while/lstm_cell_259/MatMul:product:0&while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_259/BiasAddBiasAddwhile/lstm_cell_259/add:z:02while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_259/splitSplit,while/lstm_cell_259/split/split_dim:output:0$while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_259/SigmoidSigmoid"while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_1Sigmoid"while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mulMul!while/lstm_cell_259/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_259/ReluRelu"while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_1Mulwhile/lstm_cell_259/Sigmoid:y:0&while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/add_1AddV2while/lstm_cell_259/mul:z:0while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_2Sigmoid"while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_259/Relu_1Reluwhile/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_2Mul!while/lstm_cell_259/Sigmoid_2:y:0(while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_259/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_259/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_259/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_259/BiasAdd/ReadVariableOp*^while/lstm_cell_259/MatMul/ReadVariableOp,^while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_259_biasadd_readvariableop_resource5while_lstm_cell_259_biasadd_readvariableop_resource_0"n
4while_lstm_cell_259_matmul_1_readvariableop_resource6while_lstm_cell_259_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_259_matmul_readvariableop_resource4while_lstm_cell_259_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_259/BiasAdd/ReadVariableOp*while/lstm_cell_259/BiasAdd/ReadVariableOp2V
)while/lstm_cell_259/MatMul/ReadVariableOp)while/lstm_cell_259/MatMul/ReadVariableOp2Z
+while/lstm_cell_259/MatMul_1/ReadVariableOp+while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_108_layer_call_fn_1575411

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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575210o
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
lstm_325_while_cond_1576035.
*lstm_325_while_lstm_325_while_loop_counter4
0lstm_325_while_lstm_325_while_maximum_iterations
lstm_325_while_placeholder 
lstm_325_while_placeholder_1 
lstm_325_while_placeholder_2 
lstm_325_while_placeholder_30
,lstm_325_while_less_lstm_325_strided_slice_1G
Clstm_325_while_lstm_325_while_cond_1576035___redundant_placeholder0G
Clstm_325_while_lstm_325_while_cond_1576035___redundant_placeholder1G
Clstm_325_while_lstm_325_while_cond_1576035___redundant_placeholder2G
Clstm_325_while_lstm_325_while_cond_1576035___redundant_placeholder3
lstm_325_while_identity
?
lstm_325/while/LessLesslstm_325_while_placeholder,lstm_325_while_less_lstm_325_strided_slice_1*
T0*
_output_shapes
: ]
lstm_325/while/IdentityIdentitylstm_325/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_325_while_identity lstm_325/while/Identity:output:0*(
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
0__inference_sequential_108_layer_call_fn_1575384

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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1574621o
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1578132

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
?
/__inference_lstm_cell_258_layer_call_fn_1578149

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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573164o
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
*sequential_108_lstm_324_while_body_1572729L
Hsequential_108_lstm_324_while_sequential_108_lstm_324_while_loop_counterR
Nsequential_108_lstm_324_while_sequential_108_lstm_324_while_maximum_iterations-
)sequential_108_lstm_324_while_placeholder/
+sequential_108_lstm_324_while_placeholder_1/
+sequential_108_lstm_324_while_placeholder_2/
+sequential_108_lstm_324_while_placeholder_3K
Gsequential_108_lstm_324_while_sequential_108_lstm_324_strided_slice_1_0?
?sequential_108_lstm_324_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_324_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_108_lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0:	?a
Nsequential_108_lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?\
Msequential_108_lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0:	?*
&sequential_108_lstm_324_while_identity,
(sequential_108_lstm_324_while_identity_1,
(sequential_108_lstm_324_while_identity_2,
(sequential_108_lstm_324_while_identity_3,
(sequential_108_lstm_324_while_identity_4,
(sequential_108_lstm_324_while_identity_5I
Esequential_108_lstm_324_while_sequential_108_lstm_324_strided_slice_1?
?sequential_108_lstm_324_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_324_tensorarrayunstack_tensorlistfromtensor]
Jsequential_108_lstm_324_while_lstm_cell_258_matmul_readvariableop_resource:	?_
Lsequential_108_lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource:	d?Z
Ksequential_108_lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource:	???Bsequential_108/lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp?Asequential_108/lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp?Csequential_108/lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp?
Osequential_108/lstm_324/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_108/lstm_324/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_108_lstm_324_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_324_tensorarrayunstack_tensorlistfromtensor_0)sequential_108_lstm_324_while_placeholderXsequential_108/lstm_324/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_108/lstm_324/while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOpLsequential_108_lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_108/lstm_324/while/lstm_cell_258/MatMulMatMulHsequential_108/lstm_324/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_108/lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_108/lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOpNsequential_108_lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_108/lstm_324/while/lstm_cell_258/MatMul_1MatMul+sequential_108_lstm_324_while_placeholder_2Ksequential_108/lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_108/lstm_324/while/lstm_cell_258/addAddV2<sequential_108/lstm_324/while/lstm_cell_258/MatMul:product:0>sequential_108/lstm_324/while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_108/lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOpMsequential_108_lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_108/lstm_324/while/lstm_cell_258/BiasAddBiasAdd3sequential_108/lstm_324/while/lstm_cell_258/add:z:0Jsequential_108/lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_108/lstm_324/while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_108/lstm_324/while/lstm_cell_258/splitSplitDsequential_108/lstm_324/while/lstm_cell_258/split/split_dim:output:0<sequential_108/lstm_324/while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_108/lstm_324/while/lstm_cell_258/SigmoidSigmoid:sequential_108/lstm_324/while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_108/lstm_324/while/lstm_cell_258/Sigmoid_1Sigmoid:sequential_108/lstm_324/while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_108/lstm_324/while/lstm_cell_258/mulMul9sequential_108/lstm_324/while/lstm_cell_258/Sigmoid_1:y:0+sequential_108_lstm_324_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_108/lstm_324/while/lstm_cell_258/ReluRelu:sequential_108/lstm_324/while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_108/lstm_324/while/lstm_cell_258/mul_1Mul7sequential_108/lstm_324/while/lstm_cell_258/Sigmoid:y:0>sequential_108/lstm_324/while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_108/lstm_324/while/lstm_cell_258/add_1AddV23sequential_108/lstm_324/while/lstm_cell_258/mul:z:05sequential_108/lstm_324/while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_108/lstm_324/while/lstm_cell_258/Sigmoid_2Sigmoid:sequential_108/lstm_324/while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_108/lstm_324/while/lstm_cell_258/Relu_1Relu5sequential_108/lstm_324/while/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_108/lstm_324/while/lstm_cell_258/mul_2Mul9sequential_108/lstm_324/while/lstm_cell_258/Sigmoid_2:y:0@sequential_108/lstm_324/while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_108/lstm_324/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_108_lstm_324_while_placeholder_1)sequential_108_lstm_324_while_placeholder5sequential_108/lstm_324/while/lstm_cell_258/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_108/lstm_324/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_108/lstm_324/while/addAddV2)sequential_108_lstm_324_while_placeholder,sequential_108/lstm_324/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_108/lstm_324/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_108/lstm_324/while/add_1AddV2Hsequential_108_lstm_324_while_sequential_108_lstm_324_while_loop_counter.sequential_108/lstm_324/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_108/lstm_324/while/IdentityIdentity'sequential_108/lstm_324/while/add_1:z:0#^sequential_108/lstm_324/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_324/while/Identity_1IdentityNsequential_108_lstm_324_while_sequential_108_lstm_324_while_maximum_iterations#^sequential_108/lstm_324/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_324/while/Identity_2Identity%sequential_108/lstm_324/while/add:z:0#^sequential_108/lstm_324/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_324/while/Identity_3IdentityRsequential_108/lstm_324/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_108/lstm_324/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_324/while/Identity_4Identity5sequential_108/lstm_324/while/lstm_cell_258/mul_2:z:0#^sequential_108/lstm_324/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_108/lstm_324/while/Identity_5Identity5sequential_108/lstm_324/while/lstm_cell_258/add_1:z:0#^sequential_108/lstm_324/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_108/lstm_324/while/NoOpNoOpC^sequential_108/lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOpB^sequential_108/lstm_324/while/lstm_cell_258/MatMul/ReadVariableOpD^sequential_108/lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_108_lstm_324_while_identity/sequential_108/lstm_324/while/Identity:output:0"]
(sequential_108_lstm_324_while_identity_11sequential_108/lstm_324/while/Identity_1:output:0"]
(sequential_108_lstm_324_while_identity_21sequential_108/lstm_324/while/Identity_2:output:0"]
(sequential_108_lstm_324_while_identity_31sequential_108/lstm_324/while/Identity_3:output:0"]
(sequential_108_lstm_324_while_identity_41sequential_108/lstm_324/while/Identity_4:output:0"]
(sequential_108_lstm_324_while_identity_51sequential_108/lstm_324/while/Identity_5:output:0"?
Ksequential_108_lstm_324_while_lstm_cell_258_biasadd_readvariableop_resourceMsequential_108_lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0"?
Lsequential_108_lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resourceNsequential_108_lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0"?
Jsequential_108_lstm_324_while_lstm_cell_258_matmul_readvariableop_resourceLsequential_108_lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0"?
Esequential_108_lstm_324_while_sequential_108_lstm_324_strided_slice_1Gsequential_108_lstm_324_while_sequential_108_lstm_324_strided_slice_1_0"?
?sequential_108_lstm_324_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_324_tensorarrayunstack_tensorlistfromtensor?sequential_108_lstm_324_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_324_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_108/lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOpBsequential_108/lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp2?
Asequential_108/lstm_324/while/lstm_cell_258/MatMul/ReadVariableOpAsequential_108/lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp2?
Csequential_108/lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOpCsequential_108/lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1576265

inputsH
5lstm_324_lstm_cell_258_matmul_readvariableop_resource:	?J
7lstm_324_lstm_cell_258_matmul_1_readvariableop_resource:	d?E
6lstm_324_lstm_cell_258_biasadd_readvariableop_resource:	?H
5lstm_325_lstm_cell_259_matmul_readvariableop_resource:	d?J
7lstm_325_lstm_cell_259_matmul_1_readvariableop_resource:	2?E
6lstm_325_lstm_cell_259_biasadd_readvariableop_resource:	?G
5lstm_326_lstm_cell_260_matmul_readvariableop_resource:2(I
7lstm_326_lstm_cell_260_matmul_1_readvariableop_resource:
(D
6lstm_326_lstm_cell_260_biasadd_readvariableop_resource:(:
(dense_108_matmul_readvariableop_resource:
7
)dense_108_biasadd_readvariableop_resource:
identity?? dense_108/BiasAdd/ReadVariableOp?dense_108/MatMul/ReadVariableOp?-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp?,lstm_324/lstm_cell_258/MatMul/ReadVariableOp?.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp?lstm_324/while?-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp?,lstm_325/lstm_cell_259/MatMul/ReadVariableOp?.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp?lstm_325/while?-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp?,lstm_326/lstm_cell_260/MatMul/ReadVariableOp?.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp?lstm_326/whileD
lstm_324/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_324/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_324/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_324/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_sliceStridedSlicelstm_324/Shape:output:0%lstm_324/strided_slice/stack:output:0'lstm_324/strided_slice/stack_1:output:0'lstm_324/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_324/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_324/zeros/packedPacklstm_324/strided_slice:output:0 lstm_324/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_324/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_324/zerosFilllstm_324/zeros/packed:output:0lstm_324/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_324/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_324/zeros_1/packedPacklstm_324/strided_slice:output:0"lstm_324/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_324/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_324/zeros_1Fill lstm_324/zeros_1/packed:output:0lstm_324/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_324/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_324/transpose	Transposeinputs lstm_324/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_324/Shape_1Shapelstm_324/transpose:y:0*
T0*
_output_shapes
:h
lstm_324/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_324/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_324/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_slice_1StridedSlicelstm_324/Shape_1:output:0'lstm_324/strided_slice_1/stack:output:0)lstm_324/strided_slice_1/stack_1:output:0)lstm_324/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_324/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_324/TensorArrayV2TensorListReserve-lstm_324/TensorArrayV2/element_shape:output:0!lstm_324/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_324/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_324/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_324/transpose:y:0Glstm_324/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_324/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_324/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_324/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_slice_2StridedSlicelstm_324/transpose:y:0'lstm_324/strided_slice_2/stack:output:0)lstm_324/strided_slice_2/stack_1:output:0)lstm_324/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_324/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp5lstm_324_lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_324/lstm_cell_258/MatMulMatMul!lstm_324/strided_slice_2:output:04lstm_324/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp7lstm_324_lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_324/lstm_cell_258/MatMul_1MatMullstm_324/zeros:output:06lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_324/lstm_cell_258/addAddV2'lstm_324/lstm_cell_258/MatMul:product:0)lstm_324/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp6lstm_324_lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_324/lstm_cell_258/BiasAddBiasAddlstm_324/lstm_cell_258/add:z:05lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_324/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_324/lstm_cell_258/splitSplit/lstm_324/lstm_cell_258/split/split_dim:output:0'lstm_324/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_324/lstm_cell_258/SigmoidSigmoid%lstm_324/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_324/lstm_cell_258/Sigmoid_1Sigmoid%lstm_324/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/mulMul$lstm_324/lstm_cell_258/Sigmoid_1:y:0lstm_324/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_324/lstm_cell_258/ReluRelu%lstm_324/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/mul_1Mul"lstm_324/lstm_cell_258/Sigmoid:y:0)lstm_324/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/add_1AddV2lstm_324/lstm_cell_258/mul:z:0 lstm_324/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_324/lstm_cell_258/Sigmoid_2Sigmoid%lstm_324/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_324/lstm_cell_258/Relu_1Relu lstm_324/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_324/lstm_cell_258/mul_2Mul$lstm_324/lstm_cell_258/Sigmoid_2:y:0+lstm_324/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_324/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_324/TensorArrayV2_1TensorListReserve/lstm_324/TensorArrayV2_1/element_shape:output:0!lstm_324/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_324/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_324/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_324/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_324/whileWhile$lstm_324/while/loop_counter:output:0*lstm_324/while/maximum_iterations:output:0lstm_324/time:output:0!lstm_324/TensorArrayV2_1:handle:0lstm_324/zeros:output:0lstm_324/zeros_1:output:0!lstm_324/strided_slice_1:output:0@lstm_324/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_324_lstm_cell_258_matmul_readvariableop_resource7lstm_324_lstm_cell_258_matmul_1_readvariableop_resource6lstm_324_lstm_cell_258_biasadd_readvariableop_resource*
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
lstm_324_while_body_1575897*'
condR
lstm_324_while_cond_1575896*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_324/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_324/TensorArrayV2Stack/TensorListStackTensorListStacklstm_324/while:output:3Blstm_324/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_324/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_324/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_324/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_324/strided_slice_3StridedSlice4lstm_324/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_324/strided_slice_3/stack:output:0)lstm_324/strided_slice_3/stack_1:output:0)lstm_324/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_324/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_324/transpose_1	Transpose4lstm_324/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_324/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_324/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_325/ShapeShapelstm_324/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_325/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_325/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_325/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_sliceStridedSlicelstm_325/Shape:output:0%lstm_325/strided_slice/stack:output:0'lstm_325/strided_slice/stack_1:output:0'lstm_325/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_325/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_325/zeros/packedPacklstm_325/strided_slice:output:0 lstm_325/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_325/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_325/zerosFilllstm_325/zeros/packed:output:0lstm_325/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_325/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_325/zeros_1/packedPacklstm_325/strided_slice:output:0"lstm_325/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_325/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_325/zeros_1Fill lstm_325/zeros_1/packed:output:0lstm_325/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_325/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_325/transpose	Transposelstm_324/transpose_1:y:0 lstm_325/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_325/Shape_1Shapelstm_325/transpose:y:0*
T0*
_output_shapes
:h
lstm_325/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_325/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_325/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_slice_1StridedSlicelstm_325/Shape_1:output:0'lstm_325/strided_slice_1/stack:output:0)lstm_325/strided_slice_1/stack_1:output:0)lstm_325/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_325/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_325/TensorArrayV2TensorListReserve-lstm_325/TensorArrayV2/element_shape:output:0!lstm_325/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_325/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_325/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_325/transpose:y:0Glstm_325/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_325/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_325/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_325/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_slice_2StridedSlicelstm_325/transpose:y:0'lstm_325/strided_slice_2/stack:output:0)lstm_325/strided_slice_2/stack_1:output:0)lstm_325/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_325/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp5lstm_325_lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_325/lstm_cell_259/MatMulMatMul!lstm_325/strided_slice_2:output:04lstm_325/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp7lstm_325_lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_325/lstm_cell_259/MatMul_1MatMullstm_325/zeros:output:06lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_325/lstm_cell_259/addAddV2'lstm_325/lstm_cell_259/MatMul:product:0)lstm_325/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp6lstm_325_lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_325/lstm_cell_259/BiasAddBiasAddlstm_325/lstm_cell_259/add:z:05lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_325/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_325/lstm_cell_259/splitSplit/lstm_325/lstm_cell_259/split/split_dim:output:0'lstm_325/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_325/lstm_cell_259/SigmoidSigmoid%lstm_325/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_325/lstm_cell_259/Sigmoid_1Sigmoid%lstm_325/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/mulMul$lstm_325/lstm_cell_259/Sigmoid_1:y:0lstm_325/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_325/lstm_cell_259/ReluRelu%lstm_325/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/mul_1Mul"lstm_325/lstm_cell_259/Sigmoid:y:0)lstm_325/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/add_1AddV2lstm_325/lstm_cell_259/mul:z:0 lstm_325/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_325/lstm_cell_259/Sigmoid_2Sigmoid%lstm_325/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_325/lstm_cell_259/Relu_1Relu lstm_325/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_325/lstm_cell_259/mul_2Mul$lstm_325/lstm_cell_259/Sigmoid_2:y:0+lstm_325/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_325/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_325/TensorArrayV2_1TensorListReserve/lstm_325/TensorArrayV2_1/element_shape:output:0!lstm_325/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_325/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_325/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_325/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_325/whileWhile$lstm_325/while/loop_counter:output:0*lstm_325/while/maximum_iterations:output:0lstm_325/time:output:0!lstm_325/TensorArrayV2_1:handle:0lstm_325/zeros:output:0lstm_325/zeros_1:output:0!lstm_325/strided_slice_1:output:0@lstm_325/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_325_lstm_cell_259_matmul_readvariableop_resource7lstm_325_lstm_cell_259_matmul_1_readvariableop_resource6lstm_325_lstm_cell_259_biasadd_readvariableop_resource*
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
lstm_325_while_body_1576036*'
condR
lstm_325_while_cond_1576035*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_325/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_325/TensorArrayV2Stack/TensorListStackTensorListStacklstm_325/while:output:3Blstm_325/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_325/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_325/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_325/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_325/strided_slice_3StridedSlice4lstm_325/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_325/strided_slice_3/stack:output:0)lstm_325/strided_slice_3/stack_1:output:0)lstm_325/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_325/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_325/transpose_1	Transpose4lstm_325/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_325/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_325/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_326/ShapeShapelstm_325/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_326/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_326/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_326/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_sliceStridedSlicelstm_326/Shape:output:0%lstm_326/strided_slice/stack:output:0'lstm_326/strided_slice/stack_1:output:0'lstm_326/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_326/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_326/zeros/packedPacklstm_326/strided_slice:output:0 lstm_326/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_326/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_326/zerosFilllstm_326/zeros/packed:output:0lstm_326/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_326/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_326/zeros_1/packedPacklstm_326/strided_slice:output:0"lstm_326/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_326/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_326/zeros_1Fill lstm_326/zeros_1/packed:output:0lstm_326/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_326/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_326/transpose	Transposelstm_325/transpose_1:y:0 lstm_326/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_326/Shape_1Shapelstm_326/transpose:y:0*
T0*
_output_shapes
:h
lstm_326/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_326/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_326/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_slice_1StridedSlicelstm_326/Shape_1:output:0'lstm_326/strided_slice_1/stack:output:0)lstm_326/strided_slice_1/stack_1:output:0)lstm_326/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_326/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_326/TensorArrayV2TensorListReserve-lstm_326/TensorArrayV2/element_shape:output:0!lstm_326/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_326/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_326/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_326/transpose:y:0Glstm_326/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_326/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_326/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_326/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_slice_2StridedSlicelstm_326/transpose:y:0'lstm_326/strided_slice_2/stack:output:0)lstm_326/strided_slice_2/stack_1:output:0)lstm_326/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_326/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp5lstm_326_lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_326/lstm_cell_260/MatMulMatMul!lstm_326/strided_slice_2:output:04lstm_326/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp7lstm_326_lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_326/lstm_cell_260/MatMul_1MatMullstm_326/zeros:output:06lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_326/lstm_cell_260/addAddV2'lstm_326/lstm_cell_260/MatMul:product:0)lstm_326/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp6lstm_326_lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_326/lstm_cell_260/BiasAddBiasAddlstm_326/lstm_cell_260/add:z:05lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_326/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_326/lstm_cell_260/splitSplit/lstm_326/lstm_cell_260/split/split_dim:output:0'lstm_326/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_326/lstm_cell_260/SigmoidSigmoid%lstm_326/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_326/lstm_cell_260/Sigmoid_1Sigmoid%lstm_326/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/mulMul$lstm_326/lstm_cell_260/Sigmoid_1:y:0lstm_326/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_326/lstm_cell_260/ReluRelu%lstm_326/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/mul_1Mul"lstm_326/lstm_cell_260/Sigmoid:y:0)lstm_326/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/add_1AddV2lstm_326/lstm_cell_260/mul:z:0 lstm_326/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_326/lstm_cell_260/Sigmoid_2Sigmoid%lstm_326/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_326/lstm_cell_260/Relu_1Relu lstm_326/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_326/lstm_cell_260/mul_2Mul$lstm_326/lstm_cell_260/Sigmoid_2:y:0+lstm_326/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_326/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_326/TensorArrayV2_1TensorListReserve/lstm_326/TensorArrayV2_1/element_shape:output:0!lstm_326/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_326/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_326/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_326/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_326/whileWhile$lstm_326/while/loop_counter:output:0*lstm_326/while/maximum_iterations:output:0lstm_326/time:output:0!lstm_326/TensorArrayV2_1:handle:0lstm_326/zeros:output:0lstm_326/zeros_1:output:0!lstm_326/strided_slice_1:output:0@lstm_326/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_326_lstm_cell_260_matmul_readvariableop_resource7lstm_326_lstm_cell_260_matmul_1_readvariableop_resource6lstm_326_lstm_cell_260_biasadd_readvariableop_resource*
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
lstm_326_while_body_1576175*'
condR
lstm_326_while_cond_1576174*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_326/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_326/TensorArrayV2Stack/TensorListStackTensorListStacklstm_326/while:output:3Blstm_326/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_326/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_326/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_326/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_326/strided_slice_3StridedSlice4lstm_326/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_326/strided_slice_3/stack:output:0)lstm_326/strided_slice_3/stack_1:output:0)lstm_326/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_326/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_326/transpose_1	Transpose4lstm_326/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_326/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_326/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_108/MatMulMatMul!lstm_326/strided_slice_3:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_108/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp.^lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp-^lstm_324/lstm_cell_258/MatMul/ReadVariableOp/^lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp^lstm_324/while.^lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp-^lstm_325/lstm_cell_259/MatMul/ReadVariableOp/^lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp^lstm_325/while.^lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp-^lstm_326/lstm_cell_260/MatMul/ReadVariableOp/^lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp^lstm_326/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2^
-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp-lstm_324/lstm_cell_258/BiasAdd/ReadVariableOp2\
,lstm_324/lstm_cell_258/MatMul/ReadVariableOp,lstm_324/lstm_cell_258/MatMul/ReadVariableOp2`
.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp.lstm_324/lstm_cell_258/MatMul_1/ReadVariableOp2 
lstm_324/whilelstm_324/while2^
-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp-lstm_325/lstm_cell_259/BiasAdd/ReadVariableOp2\
,lstm_325/lstm_cell_259/MatMul/ReadVariableOp,lstm_325/lstm_cell_259/MatMul/ReadVariableOp2`
.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp.lstm_325/lstm_cell_259/MatMul_1/ReadVariableOp2 
lstm_325/whilelstm_325/while2^
-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp-lstm_326/lstm_cell_260/BiasAdd/ReadVariableOp2\
,lstm_326/lstm_cell_260/MatMul/ReadVariableOp,lstm_326/lstm_cell_260/MatMul/ReadVariableOp2`
.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp.lstm_326/lstm_cell_260/MatMul_1/ReadVariableOp2 
lstm_326/whilelstm_326/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1576510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1576510___redundant_placeholder05
1while_while_cond_1576510___redundant_placeholder15
1while_while_cond_1576510___redundant_placeholder25
1while_while_cond_1576510___redundant_placeholder3
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574446

inputs?
,lstm_cell_259_matmul_readvariableop_resource:	d?A
.lstm_cell_259_matmul_1_readvariableop_resource:	2?<
-lstm_cell_259_biasadd_readvariableop_resource:	?
identity??$lstm_cell_259/BiasAdd/ReadVariableOp?#lstm_cell_259/MatMul/ReadVariableOp?%lstm_cell_259/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_259/MatMul/ReadVariableOpReadVariableOp,lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_259/MatMulMatMulstrided_slice_2:output:0+lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_259/MatMul_1MatMulzeros:output:0-lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_259/addAddV2lstm_cell_259/MatMul:product:0 lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_259/BiasAddBiasAddlstm_cell_259/add:z:0,lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_259/splitSplit&lstm_cell_259/split/split_dim:output:0lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_259/SigmoidSigmoidlstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_1Sigmoidlstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_259/mulMullstm_cell_259/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_259/ReluRelulstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_1Mullstm_cell_259/Sigmoid:y:0 lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_259/add_1AddV2lstm_cell_259/mul:z:0lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_2Sigmoidlstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_259/Relu_1Relulstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_2Mullstm_cell_259/Sigmoid_2:y:0"lstm_cell_259/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_259_matmul_readvariableop_resource.lstm_cell_259_matmul_1_readvariableop_resource-lstm_cell_259_biasadd_readvariableop_resource*
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
while_body_1574362*
condR
while_cond_1574361*K
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
NoOpNoOp%^lstm_cell_259/BiasAdd/ReadVariableOp$^lstm_cell_259/MatMul/ReadVariableOp&^lstm_cell_259/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_259/BiasAdd/ReadVariableOp$lstm_cell_259/BiasAdd/ReadVariableOp2J
#lstm_cell_259/MatMul/ReadVariableOp#lstm_cell_259/MatMul/ReadVariableOp2N
%lstm_cell_259/MatMul_1/ReadVariableOp%lstm_cell_259/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_326_layer_call_and_return_conditional_losses_1578113

inputs>
,lstm_cell_260_matmul_readvariableop_resource:2(@
.lstm_cell_260_matmul_1_readvariableop_resource:
(;
-lstm_cell_260_biasadd_readvariableop_resource:(
identity??$lstm_cell_260/BiasAdd/ReadVariableOp?#lstm_cell_260/MatMul/ReadVariableOp?%lstm_cell_260/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_260/MatMul/ReadVariableOpReadVariableOp,lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_260/MatMulMatMulstrided_slice_2:output:0+lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_260/MatMul_1MatMulzeros:output:0-lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_260/addAddV2lstm_cell_260/MatMul:product:0 lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_260/BiasAddBiasAddlstm_cell_260/add:z:0,lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_260/splitSplit&lstm_cell_260/split/split_dim:output:0lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_260/SigmoidSigmoidlstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_1Sigmoidlstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_260/mulMullstm_cell_260/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_260/ReluRelulstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_1Mullstm_cell_260/Sigmoid:y:0 lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_260/add_1AddV2lstm_cell_260/mul:z:0lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_2Sigmoidlstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_260/Relu_1Relulstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_2Mullstm_cell_260/Sigmoid_2:y:0"lstm_cell_260/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_260_matmul_readvariableop_resource.lstm_cell_260_matmul_1_readvariableop_resource-lstm_cell_260_biasadd_readvariableop_resource*
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
while_body_1578029*
condR
while_cond_1578028*K
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
NoOpNoOp%^lstm_cell_260/BiasAdd/ReadVariableOp$^lstm_cell_260/MatMul/ReadVariableOp&^lstm_cell_260/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_260/BiasAdd/ReadVariableOp$lstm_cell_260/BiasAdd/ReadVariableOp2J
#lstm_cell_260/MatMul/ReadVariableOp#lstm_cell_260/MatMul/ReadVariableOp2N
%lstm_cell_260/MatMul_1/ReadVariableOp%lstm_cell_260/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1574512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_260_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_260_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_260_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_260_matmul_readvariableop_resource:2(F
4while_lstm_cell_260_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_260_biasadd_readvariableop_resource:(??*while/lstm_cell_260/BiasAdd/ReadVariableOp?)while/lstm_cell_260/MatMul/ReadVariableOp?+while/lstm_cell_260/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_260/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_260/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_260/addAddV2$while/lstm_cell_260/MatMul:product:0&while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_260/BiasAddBiasAddwhile/lstm_cell_260/add:z:02while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_260/splitSplit,while/lstm_cell_260/split/split_dim:output:0$while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_260/SigmoidSigmoid"while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_1Sigmoid"while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mulMul!while/lstm_cell_260/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_260/ReluRelu"while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_1Mulwhile/lstm_cell_260/Sigmoid:y:0&while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/add_1AddV2while/lstm_cell_260/mul:z:0while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_260/Sigmoid_2Sigmoid"while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_260/Relu_1Reluwhile/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_260/mul_2Mul!while/lstm_cell_260/Sigmoid_2:y:0(while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_260/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_260/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_260/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_260/BiasAdd/ReadVariableOp*^while/lstm_cell_260/MatMul/ReadVariableOp,^while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_260_biasadd_readvariableop_resource5while_lstm_cell_260_biasadd_readvariableop_resource_0"n
4while_lstm_cell_260_matmul_1_readvariableop_resource6while_lstm_cell_260_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_260_matmul_readvariableop_resource4while_lstm_cell_260_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_260/BiasAdd/ReadVariableOp*while/lstm_cell_260/BiasAdd/ReadVariableOp2V
)while/lstm_cell_260/MatMul/ReadVariableOp)while/lstm_cell_260/MatMul/ReadVariableOp2Z
+while/lstm_cell_260/MatMul_1/ReadVariableOp+while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_325_while_body_1576036.
*lstm_325_while_lstm_325_while_loop_counter4
0lstm_325_while_lstm_325_while_maximum_iterations
lstm_325_while_placeholder 
lstm_325_while_placeholder_1 
lstm_325_while_placeholder_2 
lstm_325_while_placeholder_3-
)lstm_325_while_lstm_325_strided_slice_1_0i
elstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0:	d?R
?lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?M
>lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
lstm_325_while_identity
lstm_325_while_identity_1
lstm_325_while_identity_2
lstm_325_while_identity_3
lstm_325_while_identity_4
lstm_325_while_identity_5+
'lstm_325_while_lstm_325_strided_slice_1g
clstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensorN
;lstm_325_while_lstm_cell_259_matmul_readvariableop_resource:	d?P
=lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource:	2?K
<lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource:	???3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp?2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp?4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp?
@lstm_325/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_325/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensor_0lstm_325_while_placeholderIlstm_325/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp=lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_325/while/lstm_cell_259/MatMulMatMul9lstm_325/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp?lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_325/while/lstm_cell_259/MatMul_1MatMullstm_325_while_placeholder_2<lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_325/while/lstm_cell_259/addAddV2-lstm_325/while/lstm_cell_259/MatMul:product:0/lstm_325/while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp>lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_325/while/lstm_cell_259/BiasAddBiasAdd$lstm_325/while/lstm_cell_259/add:z:0;lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_325/while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_325/while/lstm_cell_259/splitSplit5lstm_325/while/lstm_cell_259/split/split_dim:output:0-lstm_325/while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_325/while/lstm_cell_259/SigmoidSigmoid+lstm_325/while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_325/while/lstm_cell_259/Sigmoid_1Sigmoid+lstm_325/while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_325/while/lstm_cell_259/mulMul*lstm_325/while/lstm_cell_259/Sigmoid_1:y:0lstm_325_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_325/while/lstm_cell_259/ReluRelu+lstm_325/while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_325/while/lstm_cell_259/mul_1Mul(lstm_325/while/lstm_cell_259/Sigmoid:y:0/lstm_325/while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_325/while/lstm_cell_259/add_1AddV2$lstm_325/while/lstm_cell_259/mul:z:0&lstm_325/while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_325/while/lstm_cell_259/Sigmoid_2Sigmoid+lstm_325/while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_325/while/lstm_cell_259/Relu_1Relu&lstm_325/while/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_325/while/lstm_cell_259/mul_2Mul*lstm_325/while/lstm_cell_259/Sigmoid_2:y:01lstm_325/while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_325/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_325_while_placeholder_1lstm_325_while_placeholder&lstm_325/while/lstm_cell_259/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_325/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_325/while/addAddV2lstm_325_while_placeholderlstm_325/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_325/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_325/while/add_1AddV2*lstm_325_while_lstm_325_while_loop_counterlstm_325/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_325/while/IdentityIdentitylstm_325/while/add_1:z:0^lstm_325/while/NoOp*
T0*
_output_shapes
: ?
lstm_325/while/Identity_1Identity0lstm_325_while_lstm_325_while_maximum_iterations^lstm_325/while/NoOp*
T0*
_output_shapes
: t
lstm_325/while/Identity_2Identitylstm_325/while/add:z:0^lstm_325/while/NoOp*
T0*
_output_shapes
: ?
lstm_325/while/Identity_3IdentityClstm_325/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_325/while/NoOp*
T0*
_output_shapes
: ?
lstm_325/while/Identity_4Identity&lstm_325/while/lstm_cell_259/mul_2:z:0^lstm_325/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_325/while/Identity_5Identity&lstm_325/while/lstm_cell_259/add_1:z:0^lstm_325/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_325/while/NoOpNoOp4^lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp3^lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp5^lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_325_while_identity lstm_325/while/Identity:output:0"?
lstm_325_while_identity_1"lstm_325/while/Identity_1:output:0"?
lstm_325_while_identity_2"lstm_325/while/Identity_2:output:0"?
lstm_325_while_identity_3"lstm_325/while/Identity_3:output:0"?
lstm_325_while_identity_4"lstm_325/while/Identity_4:output:0"?
lstm_325_while_identity_5"lstm_325/while/Identity_5:output:0"T
'lstm_325_while_lstm_325_strided_slice_1)lstm_325_while_lstm_325_strided_slice_1_0"~
<lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource>lstm_325_while_lstm_cell_259_biasadd_readvariableop_resource_0"?
=lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource?lstm_325_while_lstm_cell_259_matmul_1_readvariableop_resource_0"|
;lstm_325_while_lstm_cell_259_matmul_readvariableop_resource=lstm_325_while_lstm_cell_259_matmul_readvariableop_resource_0"?
clstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensorelstm_325_while_tensorarrayv2read_tensorlistgetitem_lstm_325_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp3lstm_325/while/lstm_cell_259/BiasAdd/ReadVariableOp2h
2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp2lstm_325/while/lstm_cell_259/MatMul/ReadVariableOp2l
4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp4lstm_325/while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1574212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_258_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_258_matmul_readvariableop_resource:	?G
4while_lstm_cell_258_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_258_biasadd_readvariableop_resource:	???*while/lstm_cell_258/BiasAdd/ReadVariableOp?)while/lstm_cell_258/MatMul/ReadVariableOp?+while/lstm_cell_258/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_258/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_258/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_258/addAddV2$while/lstm_cell_258/MatMul:product:0&while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_258/BiasAddBiasAddwhile/lstm_cell_258/add:z:02while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_258/splitSplit,while/lstm_cell_258/split/split_dim:output:0$while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_258/SigmoidSigmoid"while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_1Sigmoid"while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mulMul!while/lstm_cell_258/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_258/ReluRelu"while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_1Mulwhile/lstm_cell_258/Sigmoid:y:0&while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/add_1AddV2while/lstm_cell_258/mul:z:0while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_258/Sigmoid_2Sigmoid"while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_258/Relu_1Reluwhile/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_258/mul_2Mul!while/lstm_cell_258/Sigmoid_2:y:0(while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_258/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_258/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_258/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_258/BiasAdd/ReadVariableOp*^while/lstm_cell_258/MatMul/ReadVariableOp,^while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_258_biasadd_readvariableop_resource5while_lstm_cell_258_biasadd_readvariableop_resource_0"n
4while_lstm_cell_258_matmul_1_readvariableop_resource6while_lstm_cell_258_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_258_matmul_readvariableop_resource4while_lstm_cell_258_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_258/BiasAdd/ReadVariableOp*while/lstm_cell_258/BiasAdd/ReadVariableOp2V
)while/lstm_cell_258/MatMul/ReadVariableOp)while/lstm_cell_258/MatMul/ReadVariableOp2Z
+while/lstm_cell_258/MatMul_1/ReadVariableOp+while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_326_layer_call_fn_1577541

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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574812o
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
?
*__inference_lstm_324_layer_call_fn_1576298

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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1574296s
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
?
*__inference_lstm_325_layer_call_fn_1576925

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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574977s
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
while_body_1574893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_259_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_259_matmul_readvariableop_resource:	d?G
4while_lstm_cell_259_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_259_biasadd_readvariableop_resource:	???*while/lstm_cell_259/BiasAdd/ReadVariableOp?)while/lstm_cell_259/MatMul/ReadVariableOp?+while/lstm_cell_259/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_259/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_259/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_259/addAddV2$while/lstm_cell_259/MatMul:product:0&while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_259/BiasAddBiasAddwhile/lstm_cell_259/add:z:02while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_259/splitSplit,while/lstm_cell_259/split/split_dim:output:0$while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_259/SigmoidSigmoid"while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_1Sigmoid"while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mulMul!while/lstm_cell_259/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_259/ReluRelu"while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_1Mulwhile/lstm_cell_259/Sigmoid:y:0&while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/add_1AddV2while/lstm_cell_259/mul:z:0while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_2Sigmoid"while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_259/Relu_1Reluwhile/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_2Mul!while/lstm_cell_259/Sigmoid_2:y:0(while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_259/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_259/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_259/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_259/BiasAdd/ReadVariableOp*^while/lstm_cell_259/MatMul/ReadVariableOp,^while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_259_biasadd_readvariableop_resource5while_lstm_cell_259_biasadd_readvariableop_resource_0"n
4while_lstm_cell_259_matmul_1_readvariableop_resource6while_lstm_cell_259_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_259_matmul_readvariableop_resource4while_lstm_cell_259_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_259/BiasAdd/ReadVariableOp*while/lstm_cell_259/BiasAdd/ReadVariableOp2V
)while/lstm_cell_259/MatMul/ReadVariableOp)while/lstm_cell_259/MatMul/ReadVariableOp2Z
+while/lstm_cell_259/MatMul_1/ReadVariableOp+while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_326_while_cond_1576174.
*lstm_326_while_lstm_326_while_loop_counter4
0lstm_326_while_lstm_326_while_maximum_iterations
lstm_326_while_placeholder 
lstm_326_while_placeholder_1 
lstm_326_while_placeholder_2 
lstm_326_while_placeholder_30
,lstm_326_while_less_lstm_326_strided_slice_1G
Clstm_326_while_lstm_326_while_cond_1576174___redundant_placeholder0G
Clstm_326_while_lstm_326_while_cond_1576174___redundant_placeholder1G
Clstm_326_while_lstm_326_while_cond_1576174___redundant_placeholder2G
Clstm_326_while_lstm_326_while_cond_1576174___redundant_placeholder3
lstm_326_while_identity
?
lstm_326/while/LessLesslstm_326_while_placeholder,lstm_326_while_less_lstm_326_strided_slice_1*
T0*
_output_shapes
: ]
lstm_326/while/IdentityIdentitylstm_326/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_326_while_identity lstm_326/while/Identity:output:0*(
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1578198

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

?
0__inference_sequential_108_layer_call_fn_1574646
lstm_324_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_324_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1574621o
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
_user_specified_namelstm_324_input
?8
?
while_body_1577127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_259_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_259_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_259_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_259_matmul_readvariableop_resource:	d?G
4while_lstm_cell_259_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_259_biasadd_readvariableop_resource:	???*while/lstm_cell_259/BiasAdd/ReadVariableOp?)while/lstm_cell_259/MatMul/ReadVariableOp?+while/lstm_cell_259/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_259/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_259_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_259/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_259_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_259/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_259/addAddV2$while/lstm_cell_259/MatMul:product:0&while/lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_259_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_259/BiasAddBiasAddwhile/lstm_cell_259/add:z:02while/lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_259/splitSplit,while/lstm_cell_259/split/split_dim:output:0$while/lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_259/SigmoidSigmoid"while/lstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_1Sigmoid"while/lstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mulMul!while/lstm_cell_259/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_259/ReluRelu"while/lstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_1Mulwhile/lstm_cell_259/Sigmoid:y:0&while/lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/add_1AddV2while/lstm_cell_259/mul:z:0while/lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_259/Sigmoid_2Sigmoid"while/lstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_259/Relu_1Reluwhile/lstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_259/mul_2Mul!while/lstm_cell_259/Sigmoid_2:y:0(while/lstm_cell_259/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_259/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_259/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_259/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_259/BiasAdd/ReadVariableOp*^while/lstm_cell_259/MatMul/ReadVariableOp,^while/lstm_cell_259/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_259_biasadd_readvariableop_resource5while_lstm_cell_259_biasadd_readvariableop_resource_0"n
4while_lstm_cell_259_matmul_1_readvariableop_resource6while_lstm_cell_259_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_259_matmul_readvariableop_resource4while_lstm_cell_259_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_259/BiasAdd/ReadVariableOp*while/lstm_cell_259/BiasAdd/ReadVariableOp2V
)while/lstm_cell_259/MatMul/ReadVariableOp)while/lstm_cell_259/MatMul/ReadVariableOp2Z
+while/lstm_cell_259/MatMul_1/ReadVariableOp+while/lstm_cell_259/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1574068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1574068___redundant_placeholder05
1while_while_cond_1574068___redundant_placeholder15
1while_while_cond_1574068___redundant_placeholder25
1while_while_cond_1574068___redundant_placeholder3
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
*__inference_lstm_326_layer_call_fn_1577530

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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574596o
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
lstm_324_while_cond_1575469.
*lstm_324_while_lstm_324_while_loop_counter4
0lstm_324_while_lstm_324_while_maximum_iterations
lstm_324_while_placeholder 
lstm_324_while_placeholder_1 
lstm_324_while_placeholder_2 
lstm_324_while_placeholder_30
,lstm_324_while_less_lstm_324_strided_slice_1G
Clstm_324_while_lstm_324_while_cond_1575469___redundant_placeholder0G
Clstm_324_while_lstm_324_while_cond_1575469___redundant_placeholder1G
Clstm_324_while_lstm_324_while_cond_1575469___redundant_placeholder2G
Clstm_324_while_lstm_324_while_cond_1575469___redundant_placeholder3
lstm_324_while_identity
?
lstm_324/while/LessLesslstm_324_while_placeholder,lstm_324_while_less_lstm_324_strided_slice_1*
T0*
_output_shapes
: ]
lstm_324/while/IdentityIdentitylstm_324/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_324_while_identity lstm_324/while/Identity:output:0*(
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
while_cond_1577599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1577599___redundant_placeholder05
1while_while_cond_1577599___redundant_placeholder15
1while_while_cond_1577599___redundant_placeholder25
1while_while_cond_1577599___redundant_placeholder3
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
while_body_1573878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_260_1573902_0:2(/
while_lstm_cell_260_1573904_0:
(+
while_lstm_cell_260_1573906_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_260_1573902:2(-
while_lstm_cell_260_1573904:
()
while_lstm_cell_260_1573906:(??+while/lstm_cell_260/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_260/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_260_1573902_0while_lstm_cell_260_1573904_0while_lstm_cell_260_1573906_0*
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1573864?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_260/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_260/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_260/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_260/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_260_1573902while_lstm_cell_260_1573902_0"<
while_lstm_cell_260_1573904while_lstm_cell_260_1573904_0"<
while_lstm_cell_260_1573906while_lstm_cell_260_1573906_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_260/StatefulPartitionedCall+while/lstm_cell_260/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_108_layer_call_fn_1578122

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
F__inference_dense_108_layer_call_and_return_conditional_losses_1574614o
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573310

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
?J
?
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574977

inputs?
,lstm_cell_259_matmul_readvariableop_resource:	d?A
.lstm_cell_259_matmul_1_readvariableop_resource:	2?<
-lstm_cell_259_biasadd_readvariableop_resource:	?
identity??$lstm_cell_259/BiasAdd/ReadVariableOp?#lstm_cell_259/MatMul/ReadVariableOp?%lstm_cell_259/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_259/MatMul/ReadVariableOpReadVariableOp,lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_259/MatMulMatMulstrided_slice_2:output:0+lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_259/MatMul_1MatMulzeros:output:0-lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_259/addAddV2lstm_cell_259/MatMul:product:0 lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_259/BiasAddBiasAddlstm_cell_259/add:z:0,lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_259/splitSplit&lstm_cell_259/split/split_dim:output:0lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_259/SigmoidSigmoidlstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_1Sigmoidlstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_259/mulMullstm_cell_259/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_259/ReluRelulstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_1Mullstm_cell_259/Sigmoid:y:0 lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_259/add_1AddV2lstm_cell_259/mul:z:0lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_2Sigmoidlstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_259/Relu_1Relulstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_2Mullstm_cell_259/Sigmoid_2:y:0"lstm_cell_259/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_259_matmul_readvariableop_resource.lstm_cell_259_matmul_1_readvariableop_resource-lstm_cell_259_biasadd_readvariableop_resource*
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
while_body_1574893*
condR
while_cond_1574892*K
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
NoOpNoOp%^lstm_cell_259/BiasAdd/ReadVariableOp$^lstm_cell_259/MatMul/ReadVariableOp&^lstm_cell_259/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_259/BiasAdd/ReadVariableOp$lstm_cell_259/BiasAdd/ReadVariableOp2J
#lstm_cell_259/MatMul/ReadVariableOp#lstm_cell_259/MatMul/ReadVariableOp2N
%lstm_cell_259/MatMul_1/ReadVariableOp%lstm_cell_259/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_325_while_cond_1575608.
*lstm_325_while_lstm_325_while_loop_counter4
0lstm_325_while_lstm_325_while_maximum_iterations
lstm_325_while_placeholder 
lstm_325_while_placeholder_1 
lstm_325_while_placeholder_2 
lstm_325_while_placeholder_30
,lstm_325_while_less_lstm_325_strided_slice_1G
Clstm_325_while_lstm_325_while_cond_1575608___redundant_placeholder0G
Clstm_325_while_lstm_325_while_cond_1575608___redundant_placeholder1G
Clstm_325_while_lstm_325_while_cond_1575608___redundant_placeholder2G
Clstm_325_while_lstm_325_while_cond_1575608___redundant_placeholder3
lstm_325_while_identity
?
lstm_325/while/LessLesslstm_325_while_placeholder,lstm_325_while_less_lstm_325_strided_slice_1*
T0*
_output_shapes
: ]
lstm_325/while/IdentityIdentitylstm_325/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_325_while_identity lstm_325/while/Identity:output:0*(
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
 __inference__traced_save_1578569
file_prefix/
+savev2_dense_108_kernel_read_readvariableop-
)savev2_dense_108_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_324_lstm_cell_324_kernel_read_readvariableopF
Bsavev2_lstm_324_lstm_cell_324_recurrent_kernel_read_readvariableop:
6savev2_lstm_324_lstm_cell_324_bias_read_readvariableop<
8savev2_lstm_325_lstm_cell_325_kernel_read_readvariableopF
Bsavev2_lstm_325_lstm_cell_325_recurrent_kernel_read_readvariableop:
6savev2_lstm_325_lstm_cell_325_bias_read_readvariableop<
8savev2_lstm_326_lstm_cell_326_kernel_read_readvariableopF
Bsavev2_lstm_326_lstm_cell_326_recurrent_kernel_read_readvariableop:
6savev2_lstm_326_lstm_cell_326_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_108_kernel_m_read_readvariableop4
0savev2_adam_dense_108_bias_m_read_readvariableopC
?savev2_adam_lstm_324_lstm_cell_324_kernel_m_read_readvariableopM
Isavev2_adam_lstm_324_lstm_cell_324_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_324_lstm_cell_324_bias_m_read_readvariableopC
?savev2_adam_lstm_325_lstm_cell_325_kernel_m_read_readvariableopM
Isavev2_adam_lstm_325_lstm_cell_325_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_325_lstm_cell_325_bias_m_read_readvariableopC
?savev2_adam_lstm_326_lstm_cell_326_kernel_m_read_readvariableopM
Isavev2_adam_lstm_326_lstm_cell_326_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_326_lstm_cell_326_bias_m_read_readvariableop6
2savev2_adam_dense_108_kernel_v_read_readvariableop4
0savev2_adam_dense_108_bias_v_read_readvariableopC
?savev2_adam_lstm_324_lstm_cell_324_kernel_v_read_readvariableopM
Isavev2_adam_lstm_324_lstm_cell_324_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_324_lstm_cell_324_bias_v_read_readvariableopC
?savev2_adam_lstm_325_lstm_cell_325_kernel_v_read_readvariableopM
Isavev2_adam_lstm_325_lstm_cell_325_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_325_lstm_cell_325_bias_v_read_readvariableopC
?savev2_adam_lstm_326_lstm_cell_326_kernel_v_read_readvariableopM
Isavev2_adam_lstm_326_lstm_cell_326_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_326_lstm_cell_326_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_108_kernel_read_readvariableop)savev2_dense_108_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_324_lstm_cell_324_kernel_read_readvariableopBsavev2_lstm_324_lstm_cell_324_recurrent_kernel_read_readvariableop6savev2_lstm_324_lstm_cell_324_bias_read_readvariableop8savev2_lstm_325_lstm_cell_325_kernel_read_readvariableopBsavev2_lstm_325_lstm_cell_325_recurrent_kernel_read_readvariableop6savev2_lstm_325_lstm_cell_325_bias_read_readvariableop8savev2_lstm_326_lstm_cell_326_kernel_read_readvariableopBsavev2_lstm_326_lstm_cell_326_recurrent_kernel_read_readvariableop6savev2_lstm_326_lstm_cell_326_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_108_kernel_m_read_readvariableop0savev2_adam_dense_108_bias_m_read_readvariableop?savev2_adam_lstm_324_lstm_cell_324_kernel_m_read_readvariableopIsavev2_adam_lstm_324_lstm_cell_324_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_324_lstm_cell_324_bias_m_read_readvariableop?savev2_adam_lstm_325_lstm_cell_325_kernel_m_read_readvariableopIsavev2_adam_lstm_325_lstm_cell_325_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_325_lstm_cell_325_bias_m_read_readvariableop?savev2_adam_lstm_326_lstm_cell_326_kernel_m_read_readvariableopIsavev2_adam_lstm_326_lstm_cell_326_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_326_lstm_cell_326_bias_m_read_readvariableop2savev2_adam_dense_108_kernel_v_read_readvariableop0savev2_adam_dense_108_bias_v_read_readvariableop?savev2_adam_lstm_324_lstm_cell_324_kernel_v_read_readvariableopIsavev2_adam_lstm_324_lstm_cell_324_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_324_lstm_cell_324_bias_v_read_readvariableop?savev2_adam_lstm_325_lstm_cell_325_kernel_v_read_readvariableopIsavev2_adam_lstm_325_lstm_cell_325_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_325_lstm_cell_325_bias_v_read_readvariableop?savev2_adam_lstm_326_lstm_cell_326_kernel_v_read_readvariableopIsavev2_adam_lstm_326_lstm_cell_326_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_326_lstm_cell_326_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_1577126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1577126___redundant_placeholder05
1while_while_cond_1577126___redundant_placeholder15
1while_while_cond_1577126___redundant_placeholder25
1while_while_cond_1577126___redundant_placeholder3
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577354

inputs?
,lstm_cell_259_matmul_readvariableop_resource:	d?A
.lstm_cell_259_matmul_1_readvariableop_resource:	2?<
-lstm_cell_259_biasadd_readvariableop_resource:	?
identity??$lstm_cell_259/BiasAdd/ReadVariableOp?#lstm_cell_259/MatMul/ReadVariableOp?%lstm_cell_259/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_259/MatMul/ReadVariableOpReadVariableOp,lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_259/MatMulMatMulstrided_slice_2:output:0+lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_259/MatMul_1MatMulzeros:output:0-lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_259/addAddV2lstm_cell_259/MatMul:product:0 lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_259/BiasAddBiasAddlstm_cell_259/add:z:0,lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_259/splitSplit&lstm_cell_259/split/split_dim:output:0lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_259/SigmoidSigmoidlstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_1Sigmoidlstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_259/mulMullstm_cell_259/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_259/ReluRelulstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_1Mullstm_cell_259/Sigmoid:y:0 lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_259/add_1AddV2lstm_cell_259/mul:z:0lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_2Sigmoidlstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_259/Relu_1Relulstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_2Mullstm_cell_259/Sigmoid_2:y:0"lstm_cell_259/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_259_matmul_readvariableop_resource.lstm_cell_259_matmul_1_readvariableop_resource-lstm_cell_259_biasadd_readvariableop_resource*
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
while_body_1577270*
condR
while_cond_1577269*K
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
NoOpNoOp%^lstm_cell_259/BiasAdd/ReadVariableOp$^lstm_cell_259/MatMul/ReadVariableOp&^lstm_cell_259/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_259/BiasAdd/ReadVariableOp$lstm_cell_259/BiasAdd/ReadVariableOp2J
#lstm_cell_259/MatMul/ReadVariableOp#lstm_cell_259/MatMul/ReadVariableOp2N
%lstm_cell_259/MatMul_1/ReadVariableOp%lstm_cell_259/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1573368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1573368___redundant_placeholder05
1while_while_cond_1573368___redundant_placeholder15
1while_while_cond_1573368___redundant_placeholder25
1while_while_cond_1573368___redundant_placeholder3
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1578426

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
while_cond_1576367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1576367___redundant_placeholder05
1while_while_cond_1576367___redundant_placeholder15
1while_while_cond_1576367___redundant_placeholder25
1while_while_cond_1576367___redundant_placeholder3
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1578230

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
*__inference_lstm_326_layer_call_fn_1577519
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574138o
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
lstm_324_while_cond_1575896.
*lstm_324_while_lstm_324_while_loop_counter4
0lstm_324_while_lstm_324_while_maximum_iterations
lstm_324_while_placeholder 
lstm_324_while_placeholder_1 
lstm_324_while_placeholder_2 
lstm_324_while_placeholder_30
,lstm_324_while_less_lstm_324_strided_slice_1G
Clstm_324_while_lstm_324_while_cond_1575896___redundant_placeholder0G
Clstm_324_while_lstm_324_while_cond_1575896___redundant_placeholder1G
Clstm_324_while_lstm_324_while_cond_1575896___redundant_placeholder2G
Clstm_324_while_lstm_324_while_cond_1575896___redundant_placeholder3
lstm_324_while_identity
?
lstm_324/while/LessLesslstm_324_while_placeholder,lstm_324_while_less_lstm_324_strided_slice_1*
T0*
_output_shapes
: ]
lstm_324/while/IdentityIdentitylstm_324/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_324_while_identity lstm_324/while/Identity:output:0*(
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1574621

inputs#
lstm_324_1574297:	?#
lstm_324_1574299:	d?
lstm_324_1574301:	?#
lstm_325_1574447:	d?#
lstm_325_1574449:	2?
lstm_325_1574451:	?"
lstm_326_1574597:2("
lstm_326_1574599:
(
lstm_326_1574601:(#
dense_108_1574615:

dense_108_1574617:
identity??!dense_108/StatefulPartitionedCall? lstm_324/StatefulPartitionedCall? lstm_325/StatefulPartitionedCall? lstm_326/StatefulPartitionedCall?
 lstm_324/StatefulPartitionedCallStatefulPartitionedCallinputslstm_324_1574297lstm_324_1574299lstm_324_1574301*
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1574296?
 lstm_325/StatefulPartitionedCallStatefulPartitionedCall)lstm_324/StatefulPartitionedCall:output:0lstm_325_1574447lstm_325_1574449lstm_325_1574451*
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1574446?
 lstm_326/StatefulPartitionedCallStatefulPartitionedCall)lstm_325/StatefulPartitionedCall:output:0lstm_326_1574597lstm_326_1574599lstm_326_1574601*
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1574596?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall)lstm_326/StatefulPartitionedCall:output:0dense_108_1574615dense_108_1574617*
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1574614y
IdentityIdentity*dense_108/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_108/StatefulPartitionedCall!^lstm_324/StatefulPartitionedCall!^lstm_325/StatefulPartitionedCall!^lstm_326/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2D
 lstm_324/StatefulPartitionedCall lstm_324/StatefulPartitionedCall2D
 lstm_325/StatefulPartitionedCall lstm_325/StatefulPartitionedCall2D
 lstm_326/StatefulPartitionedCall lstm_326/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_108_lstm_326_while_body_1573007L
Hsequential_108_lstm_326_while_sequential_108_lstm_326_while_loop_counterR
Nsequential_108_lstm_326_while_sequential_108_lstm_326_while_maximum_iterations-
)sequential_108_lstm_326_while_placeholder/
+sequential_108_lstm_326_while_placeholder_1/
+sequential_108_lstm_326_while_placeholder_2/
+sequential_108_lstm_326_while_placeholder_3K
Gsequential_108_lstm_326_while_sequential_108_lstm_326_strided_slice_1_0?
?sequential_108_lstm_326_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_326_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_108_lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0:2(`
Nsequential_108_lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0:
([
Msequential_108_lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0:(*
&sequential_108_lstm_326_while_identity,
(sequential_108_lstm_326_while_identity_1,
(sequential_108_lstm_326_while_identity_2,
(sequential_108_lstm_326_while_identity_3,
(sequential_108_lstm_326_while_identity_4,
(sequential_108_lstm_326_while_identity_5I
Esequential_108_lstm_326_while_sequential_108_lstm_326_strided_slice_1?
?sequential_108_lstm_326_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_326_tensorarrayunstack_tensorlistfromtensor\
Jsequential_108_lstm_326_while_lstm_cell_260_matmul_readvariableop_resource:2(^
Lsequential_108_lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource:
(Y
Ksequential_108_lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource:(??Bsequential_108/lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp?Asequential_108/lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp?Csequential_108/lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp?
Osequential_108/lstm_326/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_108/lstm_326/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_108_lstm_326_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_326_tensorarrayunstack_tensorlistfromtensor_0)sequential_108_lstm_326_while_placeholderXsequential_108/lstm_326/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_108/lstm_326/while/lstm_cell_260/MatMul/ReadVariableOpReadVariableOpLsequential_108_lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_108/lstm_326/while/lstm_cell_260/MatMulMatMulHsequential_108/lstm_326/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_108/lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_108/lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOpNsequential_108_lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_108/lstm_326/while/lstm_cell_260/MatMul_1MatMul+sequential_108_lstm_326_while_placeholder_2Ksequential_108/lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_108/lstm_326/while/lstm_cell_260/addAddV2<sequential_108/lstm_326/while/lstm_cell_260/MatMul:product:0>sequential_108/lstm_326/while/lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_108/lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOpMsequential_108_lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_108/lstm_326/while/lstm_cell_260/BiasAddBiasAdd3sequential_108/lstm_326/while/lstm_cell_260/add:z:0Jsequential_108/lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_108/lstm_326/while/lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_108/lstm_326/while/lstm_cell_260/splitSplitDsequential_108/lstm_326/while/lstm_cell_260/split/split_dim:output:0<sequential_108/lstm_326/while/lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_108/lstm_326/while/lstm_cell_260/SigmoidSigmoid:sequential_108/lstm_326/while/lstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_108/lstm_326/while/lstm_cell_260/Sigmoid_1Sigmoid:sequential_108/lstm_326/while/lstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_108/lstm_326/while/lstm_cell_260/mulMul9sequential_108/lstm_326/while/lstm_cell_260/Sigmoid_1:y:0+sequential_108_lstm_326_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_108/lstm_326/while/lstm_cell_260/ReluRelu:sequential_108/lstm_326/while/lstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_108/lstm_326/while/lstm_cell_260/mul_1Mul7sequential_108/lstm_326/while/lstm_cell_260/Sigmoid:y:0>sequential_108/lstm_326/while/lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_108/lstm_326/while/lstm_cell_260/add_1AddV23sequential_108/lstm_326/while/lstm_cell_260/mul:z:05sequential_108/lstm_326/while/lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_108/lstm_326/while/lstm_cell_260/Sigmoid_2Sigmoid:sequential_108/lstm_326/while/lstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_108/lstm_326/while/lstm_cell_260/Relu_1Relu5sequential_108/lstm_326/while/lstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_108/lstm_326/while/lstm_cell_260/mul_2Mul9sequential_108/lstm_326/while/lstm_cell_260/Sigmoid_2:y:0@sequential_108/lstm_326/while/lstm_cell_260/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_108/lstm_326/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_108_lstm_326_while_placeholder_1)sequential_108_lstm_326_while_placeholder5sequential_108/lstm_326/while/lstm_cell_260/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_108/lstm_326/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_108/lstm_326/while/addAddV2)sequential_108_lstm_326_while_placeholder,sequential_108/lstm_326/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_108/lstm_326/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_108/lstm_326/while/add_1AddV2Hsequential_108_lstm_326_while_sequential_108_lstm_326_while_loop_counter.sequential_108/lstm_326/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_108/lstm_326/while/IdentityIdentity'sequential_108/lstm_326/while/add_1:z:0#^sequential_108/lstm_326/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_326/while/Identity_1IdentityNsequential_108_lstm_326_while_sequential_108_lstm_326_while_maximum_iterations#^sequential_108/lstm_326/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_326/while/Identity_2Identity%sequential_108/lstm_326/while/add:z:0#^sequential_108/lstm_326/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_326/while/Identity_3IdentityRsequential_108/lstm_326/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_108/lstm_326/while/NoOp*
T0*
_output_shapes
: ?
(sequential_108/lstm_326/while/Identity_4Identity5sequential_108/lstm_326/while/lstm_cell_260/mul_2:z:0#^sequential_108/lstm_326/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_108/lstm_326/while/Identity_5Identity5sequential_108/lstm_326/while/lstm_cell_260/add_1:z:0#^sequential_108/lstm_326/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_108/lstm_326/while/NoOpNoOpC^sequential_108/lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOpB^sequential_108/lstm_326/while/lstm_cell_260/MatMul/ReadVariableOpD^sequential_108/lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_108_lstm_326_while_identity/sequential_108/lstm_326/while/Identity:output:0"]
(sequential_108_lstm_326_while_identity_11sequential_108/lstm_326/while/Identity_1:output:0"]
(sequential_108_lstm_326_while_identity_21sequential_108/lstm_326/while/Identity_2:output:0"]
(sequential_108_lstm_326_while_identity_31sequential_108/lstm_326/while/Identity_3:output:0"]
(sequential_108_lstm_326_while_identity_41sequential_108/lstm_326/while/Identity_4:output:0"]
(sequential_108_lstm_326_while_identity_51sequential_108/lstm_326/while/Identity_5:output:0"?
Ksequential_108_lstm_326_while_lstm_cell_260_biasadd_readvariableop_resourceMsequential_108_lstm_326_while_lstm_cell_260_biasadd_readvariableop_resource_0"?
Lsequential_108_lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resourceNsequential_108_lstm_326_while_lstm_cell_260_matmul_1_readvariableop_resource_0"?
Jsequential_108_lstm_326_while_lstm_cell_260_matmul_readvariableop_resourceLsequential_108_lstm_326_while_lstm_cell_260_matmul_readvariableop_resource_0"?
Esequential_108_lstm_326_while_sequential_108_lstm_326_strided_slice_1Gsequential_108_lstm_326_while_sequential_108_lstm_326_strided_slice_1_0"?
?sequential_108_lstm_326_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_326_tensorarrayunstack_tensorlistfromtensor?sequential_108_lstm_326_while_tensorarrayv2read_tensorlistgetitem_sequential_108_lstm_326_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_108/lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOpBsequential_108/lstm_326/while/lstm_cell_260/BiasAdd/ReadVariableOp2?
Asequential_108/lstm_326/while/lstm_cell_260/MatMul/ReadVariableOpAsequential_108/lstm_326/while/lstm_cell_260/MatMul/ReadVariableOp2?
Csequential_108/lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOpCsequential_108/lstm_326/while/lstm_cell_260/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1577885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1577885___redundant_placeholder05
1while_while_cond_1577885___redundant_placeholder15
1while_while_cond_1577885___redundant_placeholder25
1while_while_cond_1577885___redundant_placeholder3
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577497

inputs?
,lstm_cell_259_matmul_readvariableop_resource:	d?A
.lstm_cell_259_matmul_1_readvariableop_resource:	2?<
-lstm_cell_259_biasadd_readvariableop_resource:	?
identity??$lstm_cell_259/BiasAdd/ReadVariableOp?#lstm_cell_259/MatMul/ReadVariableOp?%lstm_cell_259/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_259/MatMul/ReadVariableOpReadVariableOp,lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_259/MatMulMatMulstrided_slice_2:output:0+lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_259/MatMul_1MatMulzeros:output:0-lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_259/addAddV2lstm_cell_259/MatMul:product:0 lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_259/BiasAddBiasAddlstm_cell_259/add:z:0,lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_259/splitSplit&lstm_cell_259/split/split_dim:output:0lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_259/SigmoidSigmoidlstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_1Sigmoidlstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_259/mulMullstm_cell_259/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_259/ReluRelulstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_1Mullstm_cell_259/Sigmoid:y:0 lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_259/add_1AddV2lstm_cell_259/mul:z:0lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_2Sigmoidlstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_259/Relu_1Relulstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_2Mullstm_cell_259/Sigmoid_2:y:0"lstm_cell_259/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_259_matmul_readvariableop_resource.lstm_cell_259_matmul_1_readvariableop_resource-lstm_cell_259_biasadd_readvariableop_resource*
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
while_body_1577413*
condR
while_cond_1577412*K
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
NoOpNoOp%^lstm_cell_259/BiasAdd/ReadVariableOp$^lstm_cell_259/MatMul/ReadVariableOp&^lstm_cell_259/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_259/BiasAdd/ReadVariableOp$lstm_cell_259/BiasAdd/ReadVariableOp2J
#lstm_cell_259/MatMul/ReadVariableOp#lstm_cell_259/MatMul/ReadVariableOp2N
%lstm_cell_259/MatMul_1/ReadVariableOp%lstm_cell_259/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1573877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1573877___redundant_placeholder05
1while_while_cond_1573877___redundant_placeholder15
1while_while_cond_1573877___redundant_placeholder25
1while_while_cond_1573877___redundant_placeholder3
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

lstm_324_while_body_1575470.
*lstm_324_while_lstm_324_while_loop_counter4
0lstm_324_while_lstm_324_while_maximum_iterations
lstm_324_while_placeholder 
lstm_324_while_placeholder_1 
lstm_324_while_placeholder_2 
lstm_324_while_placeholder_3-
)lstm_324_while_lstm_324_strided_slice_1_0i
elstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0:	?R
?lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?M
>lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
lstm_324_while_identity
lstm_324_while_identity_1
lstm_324_while_identity_2
lstm_324_while_identity_3
lstm_324_while_identity_4
lstm_324_while_identity_5+
'lstm_324_while_lstm_324_strided_slice_1g
clstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensorN
;lstm_324_while_lstm_cell_258_matmul_readvariableop_resource:	?P
=lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource:	d?K
<lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource:	???3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp?2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp?4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp?
@lstm_324/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_324/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensor_0lstm_324_while_placeholderIlstm_324/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp=lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_324/while/lstm_cell_258/MatMulMatMul9lstm_324/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp?lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_324/while/lstm_cell_258/MatMul_1MatMullstm_324_while_placeholder_2<lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_324/while/lstm_cell_258/addAddV2-lstm_324/while/lstm_cell_258/MatMul:product:0/lstm_324/while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp>lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_324/while/lstm_cell_258/BiasAddBiasAdd$lstm_324/while/lstm_cell_258/add:z:0;lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_324/while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_324/while/lstm_cell_258/splitSplit5lstm_324/while/lstm_cell_258/split/split_dim:output:0-lstm_324/while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_324/while/lstm_cell_258/SigmoidSigmoid+lstm_324/while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_324/while/lstm_cell_258/Sigmoid_1Sigmoid+lstm_324/while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_324/while/lstm_cell_258/mulMul*lstm_324/while/lstm_cell_258/Sigmoid_1:y:0lstm_324_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_324/while/lstm_cell_258/ReluRelu+lstm_324/while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_324/while/lstm_cell_258/mul_1Mul(lstm_324/while/lstm_cell_258/Sigmoid:y:0/lstm_324/while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_324/while/lstm_cell_258/add_1AddV2$lstm_324/while/lstm_cell_258/mul:z:0&lstm_324/while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_324/while/lstm_cell_258/Sigmoid_2Sigmoid+lstm_324/while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_324/while/lstm_cell_258/Relu_1Relu&lstm_324/while/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_324/while/lstm_cell_258/mul_2Mul*lstm_324/while/lstm_cell_258/Sigmoid_2:y:01lstm_324/while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_324/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_324_while_placeholder_1lstm_324_while_placeholder&lstm_324/while/lstm_cell_258/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_324/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_324/while/addAddV2lstm_324_while_placeholderlstm_324/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_324/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_324/while/add_1AddV2*lstm_324_while_lstm_324_while_loop_counterlstm_324/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_324/while/IdentityIdentitylstm_324/while/add_1:z:0^lstm_324/while/NoOp*
T0*
_output_shapes
: ?
lstm_324/while/Identity_1Identity0lstm_324_while_lstm_324_while_maximum_iterations^lstm_324/while/NoOp*
T0*
_output_shapes
: t
lstm_324/while/Identity_2Identitylstm_324/while/add:z:0^lstm_324/while/NoOp*
T0*
_output_shapes
: ?
lstm_324/while/Identity_3IdentityClstm_324/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_324/while/NoOp*
T0*
_output_shapes
: ?
lstm_324/while/Identity_4Identity&lstm_324/while/lstm_cell_258/mul_2:z:0^lstm_324/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_324/while/Identity_5Identity&lstm_324/while/lstm_cell_258/add_1:z:0^lstm_324/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_324/while/NoOpNoOp4^lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp3^lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp5^lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_324_while_identity lstm_324/while/Identity:output:0"?
lstm_324_while_identity_1"lstm_324/while/Identity_1:output:0"?
lstm_324_while_identity_2"lstm_324/while/Identity_2:output:0"?
lstm_324_while_identity_3"lstm_324/while/Identity_3:output:0"?
lstm_324_while_identity_4"lstm_324/while/Identity_4:output:0"?
lstm_324_while_identity_5"lstm_324/while/Identity_5:output:0"T
'lstm_324_while_lstm_324_strided_slice_1)lstm_324_while_lstm_324_strided_slice_1_0"~
<lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource>lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0"?
=lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource?lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0"|
;lstm_324_while_lstm_cell_258_matmul_readvariableop_resource=lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0"?
clstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensorelstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp2h
2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp2l
4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577211
inputs_0?
,lstm_cell_259_matmul_readvariableop_resource:	d?A
.lstm_cell_259_matmul_1_readvariableop_resource:	2?<
-lstm_cell_259_biasadd_readvariableop_resource:	?
identity??$lstm_cell_259/BiasAdd/ReadVariableOp?#lstm_cell_259/MatMul/ReadVariableOp?%lstm_cell_259/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_259/MatMul/ReadVariableOpReadVariableOp,lstm_cell_259_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_259/MatMulMatMulstrided_slice_2:output:0+lstm_cell_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_259/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_259_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_259/MatMul_1MatMulzeros:output:0-lstm_cell_259/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_259/addAddV2lstm_cell_259/MatMul:product:0 lstm_cell_259/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_259/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_259/BiasAddBiasAddlstm_cell_259/add:z:0,lstm_cell_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_259/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_259/splitSplit&lstm_cell_259/split/split_dim:output:0lstm_cell_259/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_259/SigmoidSigmoidlstm_cell_259/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_1Sigmoidlstm_cell_259/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_259/mulMullstm_cell_259/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_259/ReluRelulstm_cell_259/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_1Mullstm_cell_259/Sigmoid:y:0 lstm_cell_259/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_259/add_1AddV2lstm_cell_259/mul:z:0lstm_cell_259/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_259/Sigmoid_2Sigmoidlstm_cell_259/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_259/Relu_1Relulstm_cell_259/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_259/mul_2Mullstm_cell_259/Sigmoid_2:y:0"lstm_cell_259/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_259_matmul_readvariableop_resource.lstm_cell_259_matmul_1_readvariableop_resource-lstm_cell_259_biasadd_readvariableop_resource*
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
while_body_1577127*
condR
while_cond_1577126*K
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
NoOpNoOp%^lstm_cell_259/BiasAdd/ReadVariableOp$^lstm_cell_259/MatMul/ReadVariableOp&^lstm_cell_259/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_259/BiasAdd/ReadVariableOp$lstm_cell_259/BiasAdd/ReadVariableOp2J
#lstm_cell_259/MatMul/ReadVariableOp#lstm_cell_259/MatMul/ReadVariableOp2N
%lstm_cell_259/MatMul_1/ReadVariableOp%lstm_cell_259/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576738

inputs?
,lstm_cell_258_matmul_readvariableop_resource:	?A
.lstm_cell_258_matmul_1_readvariableop_resource:	d?<
-lstm_cell_258_biasadd_readvariableop_resource:	?
identity??$lstm_cell_258/BiasAdd/ReadVariableOp?#lstm_cell_258/MatMul/ReadVariableOp?%lstm_cell_258/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_258/MatMul/ReadVariableOpReadVariableOp,lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_258/MatMulMatMulstrided_slice_2:output:0+lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_258/MatMul_1MatMulzeros:output:0-lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_258/addAddV2lstm_cell_258/MatMul:product:0 lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_258/BiasAddBiasAddlstm_cell_258/add:z:0,lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_258/splitSplit&lstm_cell_258/split/split_dim:output:0lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_258/SigmoidSigmoidlstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_1Sigmoidlstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_258/mulMullstm_cell_258/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_258/ReluRelulstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_1Mullstm_cell_258/Sigmoid:y:0 lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_258/add_1AddV2lstm_cell_258/mul:z:0lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_2Sigmoidlstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_258/Relu_1Relulstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_2Mullstm_cell_258/Sigmoid_2:y:0"lstm_cell_258/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_258_matmul_readvariableop_resource.lstm_cell_258_matmul_1_readvariableop_resource-lstm_cell_258_biasadd_readvariableop_resource*
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
while_body_1576654*
condR
while_cond_1576653*K
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
NoOpNoOp%^lstm_cell_258/BiasAdd/ReadVariableOp$^lstm_cell_258/MatMul/ReadVariableOp&^lstm_cell_258/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_258/BiasAdd/ReadVariableOp$lstm_cell_258/BiasAdd/ReadVariableOp2J
#lstm_cell_258/MatMul/ReadVariableOp#lstm_cell_258/MatMul/ReadVariableOp2N
%lstm_cell_258/MatMul_1/ReadVariableOp%lstm_cell_258/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1574511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1574511___redundant_placeholder05
1while_while_cond_1574511___redundant_placeholder15
1while_while_cond_1574511___redundant_placeholder25
1while_while_cond_1574511___redundant_placeholder3
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
while_body_1573369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_258_1573393_0:	?0
while_lstm_cell_258_1573395_0:	d?,
while_lstm_cell_258_1573397_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_258_1573393:	?.
while_lstm_cell_258_1573395:	d?*
while_lstm_cell_258_1573397:	???+while/lstm_cell_258/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_258/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_258_1573393_0while_lstm_cell_258_1573395_0while_lstm_cell_258_1573397_0*
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1573310?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_258/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_258/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_258/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_258/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_258_1573393while_lstm_cell_258_1573393_0"<
while_lstm_cell_258_1573395while_lstm_cell_258_1573395_0"<
while_lstm_cell_258_1573397while_lstm_cell_258_1573397_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_258/StatefulPartitionedCall+while/lstm_cell_258/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577684
inputs_0>
,lstm_cell_260_matmul_readvariableop_resource:2(@
.lstm_cell_260_matmul_1_readvariableop_resource:
(;
-lstm_cell_260_biasadd_readvariableop_resource:(
identity??$lstm_cell_260/BiasAdd/ReadVariableOp?#lstm_cell_260/MatMul/ReadVariableOp?%lstm_cell_260/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_260/MatMul/ReadVariableOpReadVariableOp,lstm_cell_260_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_260/MatMulMatMulstrided_slice_2:output:0+lstm_cell_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_260/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_260_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_260/MatMul_1MatMulzeros:output:0-lstm_cell_260/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_260/addAddV2lstm_cell_260/MatMul:product:0 lstm_cell_260/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_260/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_260_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_260/BiasAddBiasAddlstm_cell_260/add:z:0,lstm_cell_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_260/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_260/splitSplit&lstm_cell_260/split/split_dim:output:0lstm_cell_260/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_260/SigmoidSigmoidlstm_cell_260/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_1Sigmoidlstm_cell_260/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_260/mulMullstm_cell_260/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_260/ReluRelulstm_cell_260/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_1Mullstm_cell_260/Sigmoid:y:0 lstm_cell_260/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_260/add_1AddV2lstm_cell_260/mul:z:0lstm_cell_260/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_260/Sigmoid_2Sigmoidlstm_cell_260/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_260/Relu_1Relulstm_cell_260/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_260/mul_2Mullstm_cell_260/Sigmoid_2:y:0"lstm_cell_260/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_260_matmul_readvariableop_resource.lstm_cell_260_matmul_1_readvariableop_resource-lstm_cell_260_biasadd_readvariableop_resource*
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
while_body_1577600*
condR
while_cond_1577599*K
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
NoOpNoOp%^lstm_cell_260/BiasAdd/ReadVariableOp$^lstm_cell_260/MatMul/ReadVariableOp&^lstm_cell_260/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_260/BiasAdd/ReadVariableOp$lstm_cell_260/BiasAdd/ReadVariableOp2J
#lstm_cell_260/MatMul/ReadVariableOp#lstm_cell_260/MatMul/ReadVariableOp2N
%lstm_cell_260/MatMul_1/ReadVariableOp%lstm_cell_260/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1578328

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

lstm_324_while_body_1575897.
*lstm_324_while_lstm_324_while_loop_counter4
0lstm_324_while_lstm_324_while_maximum_iterations
lstm_324_while_placeholder 
lstm_324_while_placeholder_1 
lstm_324_while_placeholder_2 
lstm_324_while_placeholder_3-
)lstm_324_while_lstm_324_strided_slice_1_0i
elstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0:	?R
?lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0:	d?M
>lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0:	?
lstm_324_while_identity
lstm_324_while_identity_1
lstm_324_while_identity_2
lstm_324_while_identity_3
lstm_324_while_identity_4
lstm_324_while_identity_5+
'lstm_324_while_lstm_324_strided_slice_1g
clstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensorN
;lstm_324_while_lstm_cell_258_matmul_readvariableop_resource:	?P
=lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource:	d?K
<lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource:	???3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp?2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp?4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp?
@lstm_324/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_324/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensor_0lstm_324_while_placeholderIlstm_324/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOpReadVariableOp=lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_324/while/lstm_cell_258/MatMulMatMul9lstm_324/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp?lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_324/while/lstm_cell_258/MatMul_1MatMullstm_324_while_placeholder_2<lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_324/while/lstm_cell_258/addAddV2-lstm_324/while/lstm_cell_258/MatMul:product:0/lstm_324/while/lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp>lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_324/while/lstm_cell_258/BiasAddBiasAdd$lstm_324/while/lstm_cell_258/add:z:0;lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_324/while/lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_324/while/lstm_cell_258/splitSplit5lstm_324/while/lstm_cell_258/split/split_dim:output:0-lstm_324/while/lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_324/while/lstm_cell_258/SigmoidSigmoid+lstm_324/while/lstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_324/while/lstm_cell_258/Sigmoid_1Sigmoid+lstm_324/while/lstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_324/while/lstm_cell_258/mulMul*lstm_324/while/lstm_cell_258/Sigmoid_1:y:0lstm_324_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_324/while/lstm_cell_258/ReluRelu+lstm_324/while/lstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_324/while/lstm_cell_258/mul_1Mul(lstm_324/while/lstm_cell_258/Sigmoid:y:0/lstm_324/while/lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_324/while/lstm_cell_258/add_1AddV2$lstm_324/while/lstm_cell_258/mul:z:0&lstm_324/while/lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_324/while/lstm_cell_258/Sigmoid_2Sigmoid+lstm_324/while/lstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_324/while/lstm_cell_258/Relu_1Relu&lstm_324/while/lstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_324/while/lstm_cell_258/mul_2Mul*lstm_324/while/lstm_cell_258/Sigmoid_2:y:01lstm_324/while/lstm_cell_258/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_324/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_324_while_placeholder_1lstm_324_while_placeholder&lstm_324/while/lstm_cell_258/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_324/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_324/while/addAddV2lstm_324_while_placeholderlstm_324/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_324/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_324/while/add_1AddV2*lstm_324_while_lstm_324_while_loop_counterlstm_324/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_324/while/IdentityIdentitylstm_324/while/add_1:z:0^lstm_324/while/NoOp*
T0*
_output_shapes
: ?
lstm_324/while/Identity_1Identity0lstm_324_while_lstm_324_while_maximum_iterations^lstm_324/while/NoOp*
T0*
_output_shapes
: t
lstm_324/while/Identity_2Identitylstm_324/while/add:z:0^lstm_324/while/NoOp*
T0*
_output_shapes
: ?
lstm_324/while/Identity_3IdentityClstm_324/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_324/while/NoOp*
T0*
_output_shapes
: ?
lstm_324/while/Identity_4Identity&lstm_324/while/lstm_cell_258/mul_2:z:0^lstm_324/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_324/while/Identity_5Identity&lstm_324/while/lstm_cell_258/add_1:z:0^lstm_324/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_324/while/NoOpNoOp4^lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp3^lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp5^lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_324_while_identity lstm_324/while/Identity:output:0"?
lstm_324_while_identity_1"lstm_324/while/Identity_1:output:0"?
lstm_324_while_identity_2"lstm_324/while/Identity_2:output:0"?
lstm_324_while_identity_3"lstm_324/while/Identity_3:output:0"?
lstm_324_while_identity_4"lstm_324/while/Identity_4:output:0"?
lstm_324_while_identity_5"lstm_324/while/Identity_5:output:0"T
'lstm_324_while_lstm_324_strided_slice_1)lstm_324_while_lstm_324_strided_slice_1_0"~
<lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource>lstm_324_while_lstm_cell_258_biasadd_readvariableop_resource_0"?
=lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource?lstm_324_while_lstm_cell_258_matmul_1_readvariableop_resource_0"|
;lstm_324_while_lstm_cell_258_matmul_readvariableop_resource=lstm_324_while_lstm_cell_258_matmul_readvariableop_resource_0"?
clstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensorelstm_324_while_tensorarrayv2read_tensorlistgetitem_lstm_324_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp3lstm_324/while/lstm_cell_258/BiasAdd/ReadVariableOp2h
2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp2lstm_324/while/lstm_cell_258/MatMul/ReadVariableOp2l
4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp4lstm_324/while/lstm_cell_258/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576452
inputs_0?
,lstm_cell_258_matmul_readvariableop_resource:	?A
.lstm_cell_258_matmul_1_readvariableop_resource:	d?<
-lstm_cell_258_biasadd_readvariableop_resource:	?
identity??$lstm_cell_258/BiasAdd/ReadVariableOp?#lstm_cell_258/MatMul/ReadVariableOp?%lstm_cell_258/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_258/MatMul/ReadVariableOpReadVariableOp,lstm_cell_258_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_258/MatMulMatMulstrided_slice_2:output:0+lstm_cell_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_258/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_258_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_258/MatMul_1MatMulzeros:output:0-lstm_cell_258/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_258/addAddV2lstm_cell_258/MatMul:product:0 lstm_cell_258/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_258/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_258/BiasAddBiasAddlstm_cell_258/add:z:0,lstm_cell_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_258/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_258/splitSplit&lstm_cell_258/split/split_dim:output:0lstm_cell_258/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_258/SigmoidSigmoidlstm_cell_258/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_1Sigmoidlstm_cell_258/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_258/mulMullstm_cell_258/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_258/ReluRelulstm_cell_258/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_1Mullstm_cell_258/Sigmoid:y:0 lstm_cell_258/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_258/add_1AddV2lstm_cell_258/mul:z:0lstm_cell_258/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_258/Sigmoid_2Sigmoidlstm_cell_258/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_258/Relu_1Relulstm_cell_258/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_258/mul_2Mullstm_cell_258/Sigmoid_2:y:0"lstm_cell_258/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_258_matmul_readvariableop_resource.lstm_cell_258_matmul_1_readvariableop_resource-lstm_cell_258_biasadd_readvariableop_resource*
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
while_body_1576368*
condR
while_cond_1576367*K
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
NoOpNoOp%^lstm_cell_258/BiasAdd/ReadVariableOp$^lstm_cell_258/MatMul/ReadVariableOp&^lstm_cell_258/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_258/BiasAdd/ReadVariableOp$lstm_cell_258/BiasAdd/ReadVariableOp2J
#lstm_cell_258/MatMul/ReadVariableOp#lstm_cell_258/MatMul/ReadVariableOp2N
%lstm_cell_258/MatMul_1/ReadVariableOp%lstm_cell_258/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_1578699
file_prefix3
!assignvariableop_dense_108_kernel:
/
!assignvariableop_1_dense_108_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_324_lstm_cell_324_kernel:	?M
:assignvariableop_8_lstm_324_lstm_cell_324_recurrent_kernel:	d?=
.assignvariableop_9_lstm_324_lstm_cell_324_bias:	?D
1assignvariableop_10_lstm_325_lstm_cell_325_kernel:	d?N
;assignvariableop_11_lstm_325_lstm_cell_325_recurrent_kernel:	2?>
/assignvariableop_12_lstm_325_lstm_cell_325_bias:	?C
1assignvariableop_13_lstm_326_lstm_cell_326_kernel:2(M
;assignvariableop_14_lstm_326_lstm_cell_326_recurrent_kernel:
(=
/assignvariableop_15_lstm_326_lstm_cell_326_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_108_kernel_m:
7
)assignvariableop_19_adam_dense_108_bias_m:K
8assignvariableop_20_adam_lstm_324_lstm_cell_324_kernel_m:	?U
Bassignvariableop_21_adam_lstm_324_lstm_cell_324_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_324_lstm_cell_324_bias_m:	?K
8assignvariableop_23_adam_lstm_325_lstm_cell_325_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_325_lstm_cell_325_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_325_lstm_cell_325_bias_m:	?J
8assignvariableop_26_adam_lstm_326_lstm_cell_326_kernel_m:2(T
Bassignvariableop_27_adam_lstm_326_lstm_cell_326_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_326_lstm_cell_326_bias_m:(=
+assignvariableop_29_adam_dense_108_kernel_v:
7
)assignvariableop_30_adam_dense_108_bias_v:K
8assignvariableop_31_adam_lstm_324_lstm_cell_324_kernel_v:	?U
Bassignvariableop_32_adam_lstm_324_lstm_cell_324_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_324_lstm_cell_324_bias_v:	?K
8assignvariableop_34_adam_lstm_325_lstm_cell_325_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_325_lstm_cell_325_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_325_lstm_cell_325_bias_v:	?J
8assignvariableop_37_adam_lstm_326_lstm_cell_326_kernel_v:2(T
Bassignvariableop_38_adam_lstm_326_lstm_cell_326_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_326_lstm_cell_326_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_108_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_108_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_324_lstm_cell_324_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_324_lstm_cell_324_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_324_lstm_cell_324_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_325_lstm_cell_325_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_325_lstm_cell_325_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_325_lstm_cell_325_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_326_lstm_cell_326_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_326_lstm_cell_326_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_326_lstm_cell_326_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_108_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_108_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_324_lstm_cell_324_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_324_lstm_cell_324_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_324_lstm_cell_324_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_325_lstm_cell_325_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_325_lstm_cell_325_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_325_lstm_cell_325_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_326_lstm_cell_326_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_326_lstm_cell_326_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_326_lstm_cell_326_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_108_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_108_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_324_lstm_cell_324_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_324_lstm_cell_324_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_324_lstm_cell_324_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_325_lstm_cell_325_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_325_lstm_cell_325_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_325_lstm_cell_325_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_326_lstm_cell_326_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_326_lstm_cell_326_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_326_lstm_cell_326_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_1576983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1576983___redundant_placeholder05
1while_while_cond_1576983___redundant_placeholder15
1while_while_cond_1576983___redundant_placeholder25
1while_while_cond_1576983___redundant_placeholder3
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
lstm_324_input;
 serving_default_lstm_324_input:0?????????=
	dense_1080
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
2dense_108/kernel
:2dense_108/bias
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
0:.	?2lstm_324/lstm_cell_324/kernel
::8	d?2'lstm_324/lstm_cell_324/recurrent_kernel
*:(?2lstm_324/lstm_cell_324/bias
0:.	d?2lstm_325/lstm_cell_325/kernel
::8	2?2'lstm_325/lstm_cell_325/recurrent_kernel
*:(?2lstm_325/lstm_cell_325/bias
/:-2(2lstm_326/lstm_cell_326/kernel
9:7
(2'lstm_326/lstm_cell_326/recurrent_kernel
):'(2lstm_326/lstm_cell_326/bias
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
2Adam/dense_108/kernel/m
!:2Adam/dense_108/bias/m
5:3	?2$Adam/lstm_324/lstm_cell_324/kernel/m
?:=	d?2.Adam/lstm_324/lstm_cell_324/recurrent_kernel/m
/:-?2"Adam/lstm_324/lstm_cell_324/bias/m
5:3	d?2$Adam/lstm_325/lstm_cell_325/kernel/m
?:=	2?2.Adam/lstm_325/lstm_cell_325/recurrent_kernel/m
/:-?2"Adam/lstm_325/lstm_cell_325/bias/m
4:22(2$Adam/lstm_326/lstm_cell_326/kernel/m
>:<
(2.Adam/lstm_326/lstm_cell_326/recurrent_kernel/m
.:,(2"Adam/lstm_326/lstm_cell_326/bias/m
':%
2Adam/dense_108/kernel/v
!:2Adam/dense_108/bias/v
5:3	?2$Adam/lstm_324/lstm_cell_324/kernel/v
?:=	d?2.Adam/lstm_324/lstm_cell_324/recurrent_kernel/v
/:-?2"Adam/lstm_324/lstm_cell_324/bias/v
5:3	d?2$Adam/lstm_325/lstm_cell_325/kernel/v
?:=	2?2.Adam/lstm_325/lstm_cell_325/recurrent_kernel/v
/:-?2"Adam/lstm_325/lstm_cell_325/bias/v
4:22(2$Adam/lstm_326/lstm_cell_326/kernel/v
>:<
(2.Adam/lstm_326/lstm_cell_326/recurrent_kernel/v
.:,(2"Adam/lstm_326/lstm_cell_326/bias/v
?2?
0__inference_sequential_108_layer_call_fn_1574646
0__inference_sequential_108_layer_call_fn_1575384
0__inference_sequential_108_layer_call_fn_1575411
0__inference_sequential_108_layer_call_fn_1575262?
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575838
K__inference_sequential_108_layer_call_and_return_conditional_losses_1576265
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575292
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575322?
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
"__inference__wrapped_model_1573097lstm_324_input"?
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
*__inference_lstm_324_layer_call_fn_1576276
*__inference_lstm_324_layer_call_fn_1576287
*__inference_lstm_324_layer_call_fn_1576298
*__inference_lstm_324_layer_call_fn_1576309?
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576452
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576595
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576738
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576881?
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
*__inference_lstm_325_layer_call_fn_1576892
*__inference_lstm_325_layer_call_fn_1576903
*__inference_lstm_325_layer_call_fn_1576914
*__inference_lstm_325_layer_call_fn_1576925?
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577068
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577211
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577354
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577497?
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
*__inference_lstm_326_layer_call_fn_1577508
*__inference_lstm_326_layer_call_fn_1577519
*__inference_lstm_326_layer_call_fn_1577530
*__inference_lstm_326_layer_call_fn_1577541?
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577684
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577827
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577970
E__inference_lstm_326_layer_call_and_return_conditional_losses_1578113?
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
+__inference_dense_108_layer_call_fn_1578122?
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1578132?
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
%__inference_signature_wrapper_1575357lstm_324_input"?
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
/__inference_lstm_cell_258_layer_call_fn_1578149
/__inference_lstm_cell_258_layer_call_fn_1578166?
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1578198
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1578230?
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
/__inference_lstm_cell_259_layer_call_fn_1578247
/__inference_lstm_cell_259_layer_call_fn_1578264?
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1578296
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1578328?
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
/__inference_lstm_cell_260_layer_call_fn_1578345
/__inference_lstm_cell_260_layer_call_fn_1578362?
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1578394
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1578426?
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
"__inference__wrapped_model_1573097?-./012345!";?8
1?.
,?)
lstm_324_input?????????
? "5?2
0
	dense_108#? 
	dense_108??????????
F__inference_dense_108_layer_call_and_return_conditional_losses_1578132\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_108_layer_call_fn_1578122O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576452?-./O?L
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576595?-./O?L
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576738q-./??<
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
E__inference_lstm_324_layer_call_and_return_conditional_losses_1576881q-./??<
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
*__inference_lstm_324_layer_call_fn_1576276}-./O?L
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
*__inference_lstm_324_layer_call_fn_1576287}-./O?L
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
*__inference_lstm_324_layer_call_fn_1576298d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_324_layer_call_fn_1576309d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577068?012O?L
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577211?012O?L
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577354q012??<
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
E__inference_lstm_325_layer_call_and_return_conditional_losses_1577497q012??<
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
*__inference_lstm_325_layer_call_fn_1576892}012O?L
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
*__inference_lstm_325_layer_call_fn_1576903}012O?L
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
*__inference_lstm_325_layer_call_fn_1576914d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_325_layer_call_fn_1576925d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577684}345O?L
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577827}345O?L
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1577970m345??<
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
E__inference_lstm_326_layer_call_and_return_conditional_losses_1578113m345??<
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
*__inference_lstm_326_layer_call_fn_1577508p345O?L
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
*__inference_lstm_326_layer_call_fn_1577519p345O?L
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
*__inference_lstm_326_layer_call_fn_1577530`345??<
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
*__inference_lstm_326_layer_call_fn_1577541`345??<
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1578198?-./??}
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
J__inference_lstm_cell_258_layer_call_and_return_conditional_losses_1578230?-./??}
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
/__inference_lstm_cell_258_layer_call_fn_1578149?-./??}
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
/__inference_lstm_cell_258_layer_call_fn_1578166?-./??}
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1578296?012??}
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
J__inference_lstm_cell_259_layer_call_and_return_conditional_losses_1578328?012??}
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
/__inference_lstm_cell_259_layer_call_fn_1578247?012??}
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
/__inference_lstm_cell_259_layer_call_fn_1578264?012??}
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1578394?345??}
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
J__inference_lstm_cell_260_layer_call_and_return_conditional_losses_1578426?345??}
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
/__inference_lstm_cell_260_layer_call_fn_1578345?345??}
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
/__inference_lstm_cell_260_layer_call_fn_1578362?345??}
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575292y-./012345!"C?@
9?6
,?)
lstm_324_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575322y-./012345!"C?@
9?6
,?)
lstm_324_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_108_layer_call_and_return_conditional_losses_1575838q-./012345!";?8
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
K__inference_sequential_108_layer_call_and_return_conditional_losses_1576265q-./012345!";?8
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
0__inference_sequential_108_layer_call_fn_1574646l-./012345!"C?@
9?6
,?)
lstm_324_input?????????
p 

 
? "???????????
0__inference_sequential_108_layer_call_fn_1575262l-./012345!"C?@
9?6
,?)
lstm_324_input?????????
p

 
? "???????????
0__inference_sequential_108_layer_call_fn_1575384d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_108_layer_call_fn_1575411d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1575357?-./012345!"M?J
? 
C?@
>
lstm_324_input,?)
lstm_324_input?????????"5?2
0
	dense_108#? 
	dense_108?????????