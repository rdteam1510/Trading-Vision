½/
µ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
Ğ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28-
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

:
*
dtype0
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
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

lstm_201/lstm_cell_201/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_201/lstm_cell_201/kernel

1lstm_201/lstm_cell_201/kernel/Read/ReadVariableOpReadVariableOplstm_201/lstm_cell_201/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_201/lstm_cell_201/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_201/lstm_cell_201/recurrent_kernel
¤
;lstm_201/lstm_cell_201/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_201/lstm_cell_201/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_201/lstm_cell_201/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_201/lstm_cell_201/bias

/lstm_201/lstm_cell_201/bias/Read/ReadVariableOpReadVariableOplstm_201/lstm_cell_201/bias*
_output_shapes	
:*
dtype0

lstm_202/lstm_cell_202/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_202/lstm_cell_202/kernel

1lstm_202/lstm_cell_202/kernel/Read/ReadVariableOpReadVariableOplstm_202/lstm_cell_202/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_202/lstm_cell_202/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_202/lstm_cell_202/recurrent_kernel
¤
;lstm_202/lstm_cell_202/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_202/lstm_cell_202/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_202/lstm_cell_202/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_202/lstm_cell_202/bias

/lstm_202/lstm_cell_202/bias/Read/ReadVariableOpReadVariableOplstm_202/lstm_cell_202/bias*
_output_shapes	
:È*
dtype0

lstm_203/lstm_cell_203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_203/lstm_cell_203/kernel

1lstm_203/lstm_cell_203/kernel/Read/ReadVariableOpReadVariableOplstm_203/lstm_cell_203/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_203/lstm_cell_203/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_203/lstm_cell_203/recurrent_kernel
£
;lstm_203/lstm_cell_203/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_203/lstm_cell_203/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_203/lstm_cell_203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_203/lstm_cell_203/bias

/lstm_203/lstm_cell_203/bias/Read/ReadVariableOpReadVariableOplstm_203/lstm_cell_203/bias*
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

Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_67/kernel/m

*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_67/bias/m
y
(Adam/dense_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_201/lstm_cell_201/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_201/lstm_cell_201/kernel/m

8Adam/lstm_201/lstm_cell_201/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_201/lstm_cell_201/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_201/lstm_cell_201/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_201/lstm_cell_201/recurrent_kernel/m
²
BAdam/lstm_201/lstm_cell_201/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_201/lstm_cell_201/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_201/lstm_cell_201/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_201/lstm_cell_201/bias/m

6Adam/lstm_201/lstm_cell_201/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_201/lstm_cell_201/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_202/lstm_cell_202/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_202/lstm_cell_202/kernel/m

8Adam/lstm_202/lstm_cell_202/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_202/lstm_cell_202/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_202/lstm_cell_202/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m
²
BAdam/lstm_202/lstm_cell_202/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_202/lstm_cell_202/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_202/lstm_cell_202/bias/m

6Adam/lstm_202/lstm_cell_202/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_202/lstm_cell_202/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_203/lstm_cell_203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_203/lstm_cell_203/kernel/m

8Adam/lstm_203/lstm_cell_203/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_203/lstm_cell_203/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_203/lstm_cell_203/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m
ħ
BAdam/lstm_203/lstm_cell_203/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_203/lstm_cell_203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_203/lstm_cell_203/bias/m

6Adam/lstm_203/lstm_cell_203/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_203/lstm_cell_203/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_67/kernel/v

*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_67/bias/v
y
(Adam/dense_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_201/lstm_cell_201/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_201/lstm_cell_201/kernel/v

8Adam/lstm_201/lstm_cell_201/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_201/lstm_cell_201/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_201/lstm_cell_201/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_201/lstm_cell_201/recurrent_kernel/v
²
BAdam/lstm_201/lstm_cell_201/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_201/lstm_cell_201/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_201/lstm_cell_201/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_201/lstm_cell_201/bias/v

6Adam/lstm_201/lstm_cell_201/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_201/lstm_cell_201/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_202/lstm_cell_202/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_202/lstm_cell_202/kernel/v

8Adam/lstm_202/lstm_cell_202/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_202/lstm_cell_202/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_202/lstm_cell_202/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v
²
BAdam/lstm_202/lstm_cell_202/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_202/lstm_cell_202/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_202/lstm_cell_202/bias/v

6Adam/lstm_202/lstm_cell_202/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_202/lstm_cell_202/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_203/lstm_cell_203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_203/lstm_cell_203/kernel/v

8Adam/lstm_203/lstm_cell_203/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_203/lstm_cell_203/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_203/lstm_cell_203/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v
ħ
BAdam/lstm_203/lstm_cell_203/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_203/lstm_cell_203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_203/lstm_cell_203/bias/v

6Adam/lstm_203/lstm_cell_203/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_203/lstm_cell_203/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ßA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*A
valueABA BA
²
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

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api


!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v
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
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
³
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
ı

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
³
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
ı

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
³
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
ı

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_67/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
­
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
VARIABLE_VALUElstm_201/lstm_cell_201/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_201/lstm_cell_201/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_201/lstm_cell_201/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_202/lstm_cell_202/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_202/lstm_cell_202/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_202/lstm_cell_202/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_203/lstm_cell_203/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_203/lstm_cell_203/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_203/lstm_cell_203/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
­
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
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_201/lstm_cell_201/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_201/lstm_cell_201/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_201/lstm_cell_201/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_202/lstm_cell_202/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_202/lstm_cell_202/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_202/lstm_cell_202/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_203/lstm_cell_203/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_203/lstm_cell_203/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_203/lstm_cell_203/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_201/lstm_cell_201/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_201/lstm_cell_201/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_201/lstm_cell_201/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_202/lstm_cell_202/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_202/lstm_cell_202/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_202/lstm_cell_202/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_203/lstm_cell_203/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_203/lstm_cell_203/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_203/lstm_cell_203/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_201_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_201_inputlstm_201/lstm_cell_201/kernel'lstm_201/lstm_cell_201/recurrent_kernellstm_201/lstm_cell_201/biaslstm_202/lstm_cell_202/kernel'lstm_202/lstm_cell_202/recurrent_kernellstm_202/lstm_cell_202/biaslstm_203/lstm_cell_203/kernel'lstm_203/lstm_cell_203/recurrent_kernellstm_203/lstm_cell_203/biasdense_67/kerneldense_67/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_341265
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_201/lstm_cell_201/kernel/Read/ReadVariableOp;lstm_201/lstm_cell_201/recurrent_kernel/Read/ReadVariableOp/lstm_201/lstm_cell_201/bias/Read/ReadVariableOp1lstm_202/lstm_cell_202/kernel/Read/ReadVariableOp;lstm_202/lstm_cell_202/recurrent_kernel/Read/ReadVariableOp/lstm_202/lstm_cell_202/bias/Read/ReadVariableOp1lstm_203/lstm_cell_203/kernel/Read/ReadVariableOp;lstm_203/lstm_cell_203/recurrent_kernel/Read/ReadVariableOp/lstm_203/lstm_cell_203/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp(Adam/dense_67/bias/m/Read/ReadVariableOp8Adam/lstm_201/lstm_cell_201/kernel/m/Read/ReadVariableOpBAdam/lstm_201/lstm_cell_201/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_201/lstm_cell_201/bias/m/Read/ReadVariableOp8Adam/lstm_202/lstm_cell_202/kernel/m/Read/ReadVariableOpBAdam/lstm_202/lstm_cell_202/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_202/lstm_cell_202/bias/m/Read/ReadVariableOp8Adam/lstm_203/lstm_cell_203/kernel/m/Read/ReadVariableOpBAdam/lstm_203/lstm_cell_203/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_203/lstm_cell_203/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp(Adam/dense_67/bias/v/Read/ReadVariableOp8Adam/lstm_201/lstm_cell_201/kernel/v/Read/ReadVariableOpBAdam/lstm_201/lstm_cell_201/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_201/lstm_cell_201/bias/v/Read/ReadVariableOp8Adam/lstm_202/lstm_cell_202/kernel/v/Read/ReadVariableOpBAdam/lstm_202/lstm_cell_202/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_202/lstm_cell_202/bias/v/Read/ReadVariableOp8Adam/lstm_203/lstm_cell_203/kernel/v/Read/ReadVariableOpBAdam/lstm_203/lstm_cell_203/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_203/lstm_cell_203/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *(
f#R!
__inference__traced_save_344477

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_67/kerneldense_67/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_201/lstm_cell_201/kernel'lstm_201/lstm_cell_201/recurrent_kernellstm_201/lstm_cell_201/biaslstm_202/lstm_cell_202/kernel'lstm_202/lstm_cell_202/recurrent_kernellstm_202/lstm_cell_202/biaslstm_203/lstm_cell_203/kernel'lstm_203/lstm_cell_203/recurrent_kernellstm_203/lstm_cell_203/biastotalcountAdam/dense_67/kernel/mAdam/dense_67/bias/m$Adam/lstm_201/lstm_cell_201/kernel/m.Adam/lstm_201/lstm_cell_201/recurrent_kernel/m"Adam/lstm_201/lstm_cell_201/bias/m$Adam/lstm_202/lstm_cell_202/kernel/m.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m"Adam/lstm_202/lstm_cell_202/bias/m$Adam/lstm_203/lstm_cell_203/kernel/m.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m"Adam/lstm_203/lstm_cell_203/bias/mAdam/dense_67/kernel/vAdam/dense_67/bias/v$Adam/lstm_201/lstm_cell_201/kernel/v.Adam/lstm_201/lstm_cell_201/recurrent_kernel/v"Adam/lstm_201/lstm_cell_201/bias/v$Adam/lstm_202/lstm_cell_202/kernel/v.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v"Adam/lstm_202/lstm_cell_202/bias/v$Adam/lstm_203/lstm_cell_203/kernel/v.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v"Adam/lstm_203/lstm_cell_203/bias/v*4
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_344607½Ó+
µ
?
while_cond_339626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339626___redundant_placeholder04
0while_while_cond_339626___redundant_placeholder14
0while_while_cond_339626___redundant_placeholder24
0while_while_cond_339626___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_203_layer_call_and_return_conditional_losses_340046

inputs%
lstm_cell_56_339964:2(%
lstm_cell_56_339966:
(!
lstm_cell_56_339968:(
identity˘$lstm_cell_56/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskġ
$lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56_339964lstm_cell_56_339966lstm_cell_56_339968*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339918n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56_339964lstm_cell_56_339966lstm_cell_56_339968*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339977*
condR
while_cond_339976*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp%^lstm_cell_56/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_56/StatefulPartitionedCall$lstm_cell_56/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÛB
?

lstm_202_while_body_341944.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_3-
)lstm_202_while_lstm_202_strided_slice_1_0i
elstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈQ
>lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
lstm_202_while_identity
lstm_202_while_identity_1
lstm_202_while_identity_2
lstm_202_while_identity_3
lstm_202_while_identity_4
lstm_202_while_identity_5+
'lstm_202_while_lstm_202_strided_slice_1g
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorM
:lstm_202_while_lstm_cell_55_matmul_readvariableop_resource:	dÈO
<lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈJ
;lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource:	È˘2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp˘1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp˘3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp
@lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_202/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0lstm_202_while_placeholderIlstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp<lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_202/while/lstm_cell_55/MatMulMatMul9lstm_202/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp>lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_202/while/lstm_cell_55/MatMul_1MatMullstm_202_while_placeholder_2;lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_202/while/lstm_cell_55/addAddV2,lstm_202/while/lstm_cell_55/MatMul:product:0.lstm_202/while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp=lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_202/while/lstm_cell_55/BiasAddBiasAdd#lstm_202/while/lstm_cell_55/add:z:0:lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_202/while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_202/while/lstm_cell_55/splitSplit4lstm_202/while/lstm_cell_55/split/split_dim:output:0,lstm_202/while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_202/while/lstm_cell_55/SigmoidSigmoid*lstm_202/while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_202/while/lstm_cell_55/Sigmoid_1Sigmoid*lstm_202/while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_202/while/lstm_cell_55/mulMul)lstm_202/while/lstm_cell_55/Sigmoid_1:y:0lstm_202_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_202/while/lstm_cell_55/ReluRelu*lstm_202/while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_202/while/lstm_cell_55/mul_1Mul'lstm_202/while/lstm_cell_55/Sigmoid:y:0.lstm_202/while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_202/while/lstm_cell_55/add_1AddV2#lstm_202/while/lstm_cell_55/mul:z:0%lstm_202/while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_202/while/lstm_cell_55/Sigmoid_2Sigmoid*lstm_202/while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_202/while/lstm_cell_55/Relu_1Relu%lstm_202/while/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_202/while/lstm_cell_55/mul_2Mul)lstm_202/while/lstm_cell_55/Sigmoid_2:y:00lstm_202/while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_202/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_202_while_placeholder_1lstm_202_while_placeholder%lstm_202/while/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_202/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_202/while/addAddV2lstm_202_while_placeholderlstm_202/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_202/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_202/while/add_1AddV2*lstm_202_while_lstm_202_while_loop_counterlstm_202/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_202/while/IdentityIdentitylstm_202/while/add_1:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_1Identity0lstm_202_while_lstm_202_while_maximum_iterations^lstm_202/while/NoOp*
T0*
_output_shapes
: t
lstm_202/while/Identity_2Identitylstm_202/while/add:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_202/while/Identity_3IdentityClstm_202/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_4Identity%lstm_202/while/lstm_cell_55/mul_2:z:0^lstm_202/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/while/Identity_5Identity%lstm_202/while/lstm_cell_55/add_1:z:0^lstm_202/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_202/while/NoOpNoOp3^lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2^lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp4^lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_202_while_identity lstm_202/while/Identity:output:0"?
lstm_202_while_identity_1"lstm_202/while/Identity_1:output:0"?
lstm_202_while_identity_2"lstm_202/while/Identity_2:output:0"?
lstm_202_while_identity_3"lstm_202/while/Identity_3:output:0"?
lstm_202_while_identity_4"lstm_202/while/Identity_4:output:0"?
lstm_202_while_identity_5"lstm_202/while/Identity_5:output:0"T
'lstm_202_while_lstm_202_strided_slice_1)lstm_202_while_lstm_202_strided_slice_1_0"|
;lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource=lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0"~
<lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource>lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0"z
:lstm_202_while_lstm_cell_55_matmul_readvariableop_resource<lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0"Ì
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2f
1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp2j
3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_201_layer_call_fn_342184
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_339155|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_340119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340119___redundant_placeholder04
0while_while_cond_340119___redundant_placeholder14
0while_while_cond_340119___redundant_placeholder24
0while_while_cond_340119___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
8
?
while_body_340120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_54_matmul_readvariableop_resource_0:	H
5while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_54_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_54_matmul_readvariableop_resource:	F
3while_lstm_cell_54_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_54_biasadd_readvariableop_resource:	˘)while/lstm_cell_54/BiasAdd/ReadVariableOp˘(while/lstm_cell_54/MatMul/ReadVariableOp˘*while/lstm_cell_54/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_54/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_54/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_54/addAddV2#while/lstm_cell_54/MatMul:product:0%while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_54/BiasAddBiasAddwhile/lstm_cell_54/add:z:01while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_54/splitSplit+while/lstm_cell_54/split/split_dim:output:0#while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_54/SigmoidSigmoid!while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_1Sigmoid!while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mulMul while/lstm_cell_54/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_54/ReluRelu!while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_1Mulwhile/lstm_cell_54/Sigmoid:y:0%while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/add_1AddV2while/lstm_cell_54/mul:z:0while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_2Sigmoid!while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_54/Relu_1Reluwhile/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_2Mul while/lstm_cell_54/Sigmoid_2:y:0'while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_54/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_54/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_54/BiasAdd/ReadVariableOp)^while/lstm_cell_54/MatMul/ReadVariableOp+^while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_54_biasadd_readvariableop_resource4while_lstm_cell_54_biasadd_readvariableop_resource_0"l
3while_lstm_cell_54_matmul_1_readvariableop_resource5while_lstm_cell_54_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_54_matmul_readvariableop_resource3while_lstm_cell_54_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_54/BiasAdd/ReadVariableOp)while/lstm_cell_54/BiasAdd/ReadVariableOp2T
(while/lstm_cell_54/MatMul/ReadVariableOp(while/lstm_cell_54/MatMul/ReadVariableOp2X
*while/lstm_cell_54/MatMul_1/ReadVariableOp*while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_202_layer_call_fn_342800
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_339505|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
ħ

I__inference_sequential_67_layer_call_and_return_conditional_losses_341746

inputsG
4lstm_201_lstm_cell_54_matmul_readvariableop_resource:	I
6lstm_201_lstm_cell_54_matmul_1_readvariableop_resource:	dD
5lstm_201_lstm_cell_54_biasadd_readvariableop_resource:	G
4lstm_202_lstm_cell_55_matmul_readvariableop_resource:	dÈI
6lstm_202_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈD
5lstm_202_lstm_cell_55_biasadd_readvariableop_resource:	ÈF
4lstm_203_lstm_cell_56_matmul_readvariableop_resource:2(H
6lstm_203_lstm_cell_56_matmul_1_readvariableop_resource:
(C
5lstm_203_lstm_cell_56_biasadd_readvariableop_resource:(9
'dense_67_matmul_readvariableop_resource:
6
(dense_67_biasadd_readvariableop_resource:
identity˘dense_67/BiasAdd/ReadVariableOp˘dense_67/MatMul/ReadVariableOp˘,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp˘+lstm_201/lstm_cell_54/MatMul/ReadVariableOp˘-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp˘lstm_201/while˘,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp˘+lstm_202/lstm_cell_55/MatMul/ReadVariableOp˘-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp˘lstm_202/while˘,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp˘+lstm_203/lstm_cell_56/MatMul/ReadVariableOp˘-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp˘lstm_203/whileD
lstm_201/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_201/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_201/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_201/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_201/strided_sliceStridedSlicelstm_201/Shape:output:0%lstm_201/strided_slice/stack:output:0'lstm_201/strided_slice/stack_1:output:0'lstm_201/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_201/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_201/zeros/packedPacklstm_201/strided_slice:output:0 lstm_201/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_201/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_201/zerosFilllstm_201/zeros/packed:output:0lstm_201/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_201/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_201/zeros_1/packedPacklstm_201/strided_slice:output:0"lstm_201/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_201/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_201/zeros_1Fill lstm_201/zeros_1/packed:output:0lstm_201/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_201/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_201/transpose	Transposeinputs lstm_201/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_201/Shape_1Shapelstm_201/transpose:y:0*
T0*
_output_shapes
:h
lstm_201/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_201/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_201/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_201/strided_slice_1StridedSlicelstm_201/Shape_1:output:0'lstm_201/strided_slice_1/stack:output:0)lstm_201/strided_slice_1/stack_1:output:0)lstm_201/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_201/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_201/TensorArrayV2TensorListReserve-lstm_201/TensorArrayV2/element_shape:output:0!lstm_201/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_201/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_201/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_201/transpose:y:0Glstm_201/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_201/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_201/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_201/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_201/strided_slice_2StridedSlicelstm_201/transpose:y:0'lstm_201/strided_slice_2/stack:output:0)lstm_201/strided_slice_2/stack_1:output:0)lstm_201/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_201/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp4lstm_201_lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_201/lstm_cell_54/MatMulMatMul!lstm_201/strided_slice_2:output:03lstm_201/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp6lstm_201_lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_201/lstm_cell_54/MatMul_1MatMullstm_201/zeros:output:05lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_201/lstm_cell_54/addAddV2&lstm_201/lstm_cell_54/MatMul:product:0(lstm_201/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp5lstm_201_lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_201/lstm_cell_54/BiasAddBiasAddlstm_201/lstm_cell_54/add:z:04lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_201/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_201/lstm_cell_54/splitSplit.lstm_201/lstm_cell_54/split/split_dim:output:0&lstm_201/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_201/lstm_cell_54/SigmoidSigmoid$lstm_201/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/Sigmoid_1Sigmoid$lstm_201/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/mulMul#lstm_201/lstm_cell_54/Sigmoid_1:y:0lstm_201/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_201/lstm_cell_54/ReluRelu$lstm_201/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_201/lstm_cell_54/mul_1Mul!lstm_201/lstm_cell_54/Sigmoid:y:0(lstm_201/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/add_1AddV2lstm_201/lstm_cell_54/mul:z:0lstm_201/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/Sigmoid_2Sigmoid$lstm_201/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_201/lstm_cell_54/Relu_1Relulstm_201/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_201/lstm_cell_54/mul_2Mul#lstm_201/lstm_cell_54/Sigmoid_2:y:0*lstm_201/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_201/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_201/TensorArrayV2_1TensorListReserve/lstm_201/TensorArrayV2_1/element_shape:output:0!lstm_201/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_201/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_201/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_201/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_201/whileWhile$lstm_201/while/loop_counter:output:0*lstm_201/while/maximum_iterations:output:0lstm_201/time:output:0!lstm_201/TensorArrayV2_1:handle:0lstm_201/zeros:output:0lstm_201/zeros_1:output:0!lstm_201/strided_slice_1:output:0@lstm_201/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_201_lstm_cell_54_matmul_readvariableop_resource6lstm_201_lstm_cell_54_matmul_1_readvariableop_resource5lstm_201_lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_201_while_body_341378*&
condR
lstm_201_while_cond_341377*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_201/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_201/TensorArrayV2Stack/TensorListStackTensorListStacklstm_201/while:output:3Blstm_201/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_201/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_201/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_201/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_201/strided_slice_3StridedSlice4lstm_201/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_201/strided_slice_3/stack:output:0)lstm_201/strided_slice_3/stack_1:output:0)lstm_201/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_201/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_201/transpose_1	Transpose4lstm_201/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_201/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_201/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_202/ShapeShapelstm_201/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_202/strided_sliceStridedSlicelstm_202/Shape:output:0%lstm_202/strided_slice/stack:output:0'lstm_202/strided_slice/stack_1:output:0'lstm_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_202/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_202/zeros/packedPacklstm_202/strided_slice:output:0 lstm_202/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_202/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zerosFilllstm_202/zeros/packed:output:0lstm_202/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_202/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_202/zeros_1/packedPacklstm_202/strided_slice:output:0"lstm_202/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_202/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zeros_1Fill lstm_202/zeros_1/packed:output:0lstm_202/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_202/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_202/transpose	Transposelstm_201/transpose_1:y:0 lstm_202/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_202/Shape_1Shapelstm_202/transpose:y:0*
T0*
_output_shapes
:h
lstm_202/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_1StridedSlicelstm_202/Shape_1:output:0'lstm_202/strided_slice_1/stack:output:0)lstm_202/strided_slice_1/stack_1:output:0)lstm_202/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_202/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_202/TensorArrayV2TensorListReserve-lstm_202/TensorArrayV2/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_202/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_202/transpose:y:0Glstm_202/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_202/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_2StridedSlicelstm_202/transpose:y:0'lstm_202/strided_slice_2/stack:output:0)lstm_202/strided_slice_2/stack_1:output:0)lstm_202/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_202/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp4lstm_202_lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_202/lstm_cell_55/MatMulMatMul!lstm_202/strided_slice_2:output:03lstm_202/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp6lstm_202_lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_202/lstm_cell_55/MatMul_1MatMullstm_202/zeros:output:05lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_202/lstm_cell_55/addAddV2&lstm_202/lstm_cell_55/MatMul:product:0(lstm_202/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp5lstm_202_lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_202/lstm_cell_55/BiasAddBiasAddlstm_202/lstm_cell_55/add:z:04lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_202/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_202/lstm_cell_55/splitSplit.lstm_202/lstm_cell_55/split/split_dim:output:0&lstm_202/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_202/lstm_cell_55/SigmoidSigmoid$lstm_202/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/Sigmoid_1Sigmoid$lstm_202/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/mulMul#lstm_202/lstm_cell_55/Sigmoid_1:y:0lstm_202/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_202/lstm_cell_55/ReluRelu$lstm_202/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_202/lstm_cell_55/mul_1Mul!lstm_202/lstm_cell_55/Sigmoid:y:0(lstm_202/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/add_1AddV2lstm_202/lstm_cell_55/mul:z:0lstm_202/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/Sigmoid_2Sigmoid$lstm_202/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_202/lstm_cell_55/Relu_1Relulstm_202/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_202/lstm_cell_55/mul_2Mul#lstm_202/lstm_cell_55/Sigmoid_2:y:0*lstm_202/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_202/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_202/TensorArrayV2_1TensorListReserve/lstm_202/TensorArrayV2_1/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_202/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_202/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_202/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_202/whileWhile$lstm_202/while/loop_counter:output:0*lstm_202/while/maximum_iterations:output:0lstm_202/time:output:0!lstm_202/TensorArrayV2_1:handle:0lstm_202/zeros:output:0lstm_202/zeros_1:output:0!lstm_202/strided_slice_1:output:0@lstm_202/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_202_lstm_cell_55_matmul_readvariableop_resource6lstm_202_lstm_cell_55_matmul_1_readvariableop_resource5lstm_202_lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_202_while_body_341517*&
condR
lstm_202_while_cond_341516*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_202/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_202/TensorArrayV2Stack/TensorListStackTensorListStacklstm_202/while:output:3Blstm_202/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_202/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_202/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_202/strided_slice_3StridedSlice4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_202/strided_slice_3/stack:output:0)lstm_202/strided_slice_3/stack_1:output:0)lstm_202/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_202/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_202/transpose_1	Transpose4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_202/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_202/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_203/ShapeShapelstm_202/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_203/strided_sliceStridedSlicelstm_203/Shape:output:0%lstm_203/strided_slice/stack:output:0'lstm_203/strided_slice/stack_1:output:0'lstm_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_203/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_203/zeros/packedPacklstm_203/strided_slice:output:0 lstm_203/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_203/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zerosFilllstm_203/zeros/packed:output:0lstm_203/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_203/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_203/zeros_1/packedPacklstm_203/strided_slice:output:0"lstm_203/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_203/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zeros_1Fill lstm_203/zeros_1/packed:output:0lstm_203/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_203/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_203/transpose	Transposelstm_202/transpose_1:y:0 lstm_203/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_203/Shape_1Shapelstm_203/transpose:y:0*
T0*
_output_shapes
:h
lstm_203/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_1StridedSlicelstm_203/Shape_1:output:0'lstm_203/strided_slice_1/stack:output:0)lstm_203/strided_slice_1/stack_1:output:0)lstm_203/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_203/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_203/TensorArrayV2TensorListReserve-lstm_203/TensorArrayV2/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_203/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_203/transpose:y:0Glstm_203/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_203/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_2StridedSlicelstm_203/transpose:y:0'lstm_203/strided_slice_2/stack:output:0)lstm_203/strided_slice_2/stack_1:output:0)lstm_203/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_203/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp4lstm_203_lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_203/lstm_cell_56/MatMulMatMul!lstm_203/strided_slice_2:output:03lstm_203/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp6lstm_203_lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_203/lstm_cell_56/MatMul_1MatMullstm_203/zeros:output:05lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_203/lstm_cell_56/addAddV2&lstm_203/lstm_cell_56/MatMul:product:0(lstm_203/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp5lstm_203_lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_203/lstm_cell_56/BiasAddBiasAddlstm_203/lstm_cell_56/add:z:04lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_203/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_203/lstm_cell_56/splitSplit.lstm_203/lstm_cell_56/split/split_dim:output:0&lstm_203/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_203/lstm_cell_56/SigmoidSigmoid$lstm_203/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/Sigmoid_1Sigmoid$lstm_203/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/mulMul#lstm_203/lstm_cell_56/Sigmoid_1:y:0lstm_203/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_203/lstm_cell_56/ReluRelu$lstm_203/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_203/lstm_cell_56/mul_1Mul!lstm_203/lstm_cell_56/Sigmoid:y:0(lstm_203/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/add_1AddV2lstm_203/lstm_cell_56/mul:z:0lstm_203/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/Sigmoid_2Sigmoid$lstm_203/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_203/lstm_cell_56/Relu_1Relulstm_203/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_203/lstm_cell_56/mul_2Mul#lstm_203/lstm_cell_56/Sigmoid_2:y:0*lstm_203/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_203/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_203/TensorArrayV2_1TensorListReserve/lstm_203/TensorArrayV2_1/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_203/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_203/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_203/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_203/whileWhile$lstm_203/while/loop_counter:output:0*lstm_203/while/maximum_iterations:output:0lstm_203/time:output:0!lstm_203/TensorArrayV2_1:handle:0lstm_203/zeros:output:0lstm_203/zeros_1:output:0!lstm_203/strided_slice_1:output:0@lstm_203/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_203_lstm_cell_56_matmul_readvariableop_resource6lstm_203_lstm_cell_56_matmul_1_readvariableop_resource5lstm_203_lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_203_while_body_341656*&
condR
lstm_203_while_cond_341655*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_203/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_203/TensorArrayV2Stack/TensorListStackTensorListStacklstm_203/while:output:3Blstm_203/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_203/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_203/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_203/strided_slice_3StridedSlice4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_203/strided_slice_3/stack:output:0)lstm_203/strided_slice_3/stack_1:output:0)lstm_203/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_203/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_203/transpose_1	Transpose4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_203/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_203/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_67/MatMulMatMul!lstm_203/strided_slice_3:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_67/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp-^lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp,^lstm_201/lstm_cell_54/MatMul/ReadVariableOp.^lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp^lstm_201/while-^lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp,^lstm_202/lstm_cell_55/MatMul/ReadVariableOp.^lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp^lstm_202/while-^lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp,^lstm_203/lstm_cell_56/MatMul/ReadVariableOp.^lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp^lstm_203/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2\
,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp2Z
+lstm_201/lstm_cell_54/MatMul/ReadVariableOp+lstm_201/lstm_cell_54/MatMul/ReadVariableOp2^
-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp2 
lstm_201/whilelstm_201/while2\
,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp2Z
+lstm_202/lstm_cell_55/MatMul/ReadVariableOp+lstm_202/lstm_cell_55/MatMul/ReadVariableOp2^
-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp2 
lstm_202/whilelstm_202/while2\
,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp2Z
+lstm_203/lstm_cell_56/MatMul/ReadVariableOp+lstm_203/lstm_cell_56/MatMul/ReadVariableOp2^
-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp2 
lstm_203/whilelstm_203/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

µ
)__inference_lstm_203_layer_call_fn_343416
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_339855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
S
³
(sequential_67_lstm_202_while_body_338776J
Fsequential_67_lstm_202_while_sequential_67_lstm_202_while_loop_counterP
Lsequential_67_lstm_202_while_sequential_67_lstm_202_while_maximum_iterations,
(sequential_67_lstm_202_while_placeholder.
*sequential_67_lstm_202_while_placeholder_1.
*sequential_67_lstm_202_while_placeholder_2.
*sequential_67_lstm_202_while_placeholder_3I
Esequential_67_lstm_202_while_sequential_67_lstm_202_strided_slice_1_0
sequential_67_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_202_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_67_lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈ_
Lsequential_67_lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_67_lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0:	È)
%sequential_67_lstm_202_while_identity+
'sequential_67_lstm_202_while_identity_1+
'sequential_67_lstm_202_while_identity_2+
'sequential_67_lstm_202_while_identity_3+
'sequential_67_lstm_202_while_identity_4+
'sequential_67_lstm_202_while_identity_5G
Csequential_67_lstm_202_while_sequential_67_lstm_202_strided_slice_1
sequential_67_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_202_tensorarrayunstack_tensorlistfromtensor[
Hsequential_67_lstm_202_while_lstm_cell_55_matmul_readvariableop_resource:	dÈ]
Jsequential_67_lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈX
Isequential_67_lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource:	È˘@sequential_67/lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp˘?sequential_67/lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp˘Asequential_67/lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp
Nsequential_67/lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_67/lstm_202/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_67_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_202_tensorarrayunstack_tensorlistfromtensor_0(sequential_67_lstm_202_while_placeholderWsequential_67/lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_67/lstm_202/while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOpJsequential_67_lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_67/lstm_202/while/lstm_cell_55/MatMulMatMulGsequential_67/lstm_202/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_67/lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_67/lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOpLsequential_67_lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_67/lstm_202/while/lstm_cell_55/MatMul_1MatMul*sequential_67_lstm_202_while_placeholder_2Isequential_67/lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_67/lstm_202/while/lstm_cell_55/addAddV2:sequential_67/lstm_202/while/lstm_cell_55/MatMul:product:0<sequential_67/lstm_202/while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_67/lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOpKsequential_67_lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_67/lstm_202/while/lstm_cell_55/BiasAddBiasAdd1sequential_67/lstm_202/while/lstm_cell_55/add:z:0Hsequential_67/lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_67/lstm_202/while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_67/lstm_202/while/lstm_cell_55/splitSplitBsequential_67/lstm_202/while/lstm_cell_55/split/split_dim:output:0:sequential_67/lstm_202/while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_67/lstm_202/while/lstm_cell_55/SigmoidSigmoid8sequential_67/lstm_202/while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_67/lstm_202/while/lstm_cell_55/Sigmoid_1Sigmoid8sequential_67/lstm_202/while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_67/lstm_202/while/lstm_cell_55/mulMul7sequential_67/lstm_202/while/lstm_cell_55/Sigmoid_1:y:0*sequential_67_lstm_202_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_67/lstm_202/while/lstm_cell_55/ReluRelu8sequential_67/lstm_202/while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_67/lstm_202/while/lstm_cell_55/mul_1Mul5sequential_67/lstm_202/while/lstm_cell_55/Sigmoid:y:0<sequential_67/lstm_202/while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_67/lstm_202/while/lstm_cell_55/add_1AddV21sequential_67/lstm_202/while/lstm_cell_55/mul:z:03sequential_67/lstm_202/while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_67/lstm_202/while/lstm_cell_55/Sigmoid_2Sigmoid8sequential_67/lstm_202/while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_67/lstm_202/while/lstm_cell_55/Relu_1Relu3sequential_67/lstm_202/while/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_67/lstm_202/while/lstm_cell_55/mul_2Mul7sequential_67/lstm_202/while/lstm_cell_55/Sigmoid_2:y:0>sequential_67/lstm_202/while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_67/lstm_202/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_67_lstm_202_while_placeholder_1(sequential_67_lstm_202_while_placeholder3sequential_67/lstm_202/while/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_67/lstm_202/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_67/lstm_202/while/addAddV2(sequential_67_lstm_202_while_placeholder+sequential_67/lstm_202/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_67/lstm_202/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_67/lstm_202/while/add_1AddV2Fsequential_67_lstm_202_while_sequential_67_lstm_202_while_loop_counter-sequential_67/lstm_202/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_67/lstm_202/while/IdentityIdentity&sequential_67/lstm_202/while/add_1:z:0"^sequential_67/lstm_202/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_67/lstm_202/while/Identity_1IdentityLsequential_67_lstm_202_while_sequential_67_lstm_202_while_maximum_iterations"^sequential_67/lstm_202/while/NoOp*
T0*
_output_shapes
: 
'sequential_67/lstm_202/while/Identity_2Identity$sequential_67/lstm_202/while/add:z:0"^sequential_67/lstm_202/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_67/lstm_202/while/Identity_3IdentityQsequential_67/lstm_202/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_67/lstm_202/while/NoOp*
T0*
_output_shapes
: ?
'sequential_67/lstm_202/while/Identity_4Identity3sequential_67/lstm_202/while/lstm_cell_55/mul_2:z:0"^sequential_67/lstm_202/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_67/lstm_202/while/Identity_5Identity3sequential_67/lstm_202/while/lstm_cell_55/add_1:z:0"^sequential_67/lstm_202/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_67/lstm_202/while/NoOpNoOpA^sequential_67/lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp@^sequential_67/lstm_202/while/lstm_cell_55/MatMul/ReadVariableOpB^sequential_67/lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_67_lstm_202_while_identity.sequential_67/lstm_202/while/Identity:output:0"[
'sequential_67_lstm_202_while_identity_10sequential_67/lstm_202/while/Identity_1:output:0"[
'sequential_67_lstm_202_while_identity_20sequential_67/lstm_202/while/Identity_2:output:0"[
'sequential_67_lstm_202_while_identity_30sequential_67/lstm_202/while/Identity_3:output:0"[
'sequential_67_lstm_202_while_identity_40sequential_67/lstm_202/while/Identity_4:output:0"[
'sequential_67_lstm_202_while_identity_50sequential_67/lstm_202/while/Identity_5:output:0"
Isequential_67_lstm_202_while_lstm_cell_55_biasadd_readvariableop_resourceKsequential_67_lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0"
Jsequential_67_lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resourceLsequential_67_lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0"
Hsequential_67_lstm_202_while_lstm_cell_55_matmul_readvariableop_resourceJsequential_67_lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0"
Csequential_67_lstm_202_while_sequential_67_lstm_202_strided_slice_1Esequential_67_lstm_202_while_sequential_67_lstm_202_strided_slice_1_0"
sequential_67_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_202_tensorarrayunstack_tensorlistfromtensorsequential_67_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_202_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_67/lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp@sequential_67/lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2
?sequential_67/lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp?sequential_67/lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp2
Asequential_67/lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOpAsequential_67/lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
ş

(sequential_67_lstm_203_while_cond_338914J
Fsequential_67_lstm_203_while_sequential_67_lstm_203_while_loop_counterP
Lsequential_67_lstm_203_while_sequential_67_lstm_203_while_maximum_iterations,
(sequential_67_lstm_203_while_placeholder.
*sequential_67_lstm_203_while_placeholder_1.
*sequential_67_lstm_203_while_placeholder_2.
*sequential_67_lstm_203_while_placeholder_3L
Hsequential_67_lstm_203_while_less_sequential_67_lstm_203_strided_slice_1b
^sequential_67_lstm_203_while_sequential_67_lstm_203_while_cond_338914___redundant_placeholder0b
^sequential_67_lstm_203_while_sequential_67_lstm_203_while_cond_338914___redundant_placeholder1b
^sequential_67_lstm_203_while_sequential_67_lstm_203_while_cond_338914___redundant_placeholder2b
^sequential_67_lstm_203_while_sequential_67_lstm_203_while_cond_338914___redundant_placeholder3)
%sequential_67_lstm_203_while_identity
?
!sequential_67/lstm_203/while/LessLess(sequential_67_lstm_203_while_placeholderHsequential_67_lstm_203_while_less_sequential_67_lstm_203_strided_slice_1*
T0*
_output_shapes
: y
%sequential_67/lstm_203/while/IdentityIdentity%sequential_67/lstm_203/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_67_lstm_203_while_identity.sequential_67/lstm_203/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
S
­
(sequential_67_lstm_203_while_body_338915J
Fsequential_67_lstm_203_while_sequential_67_lstm_203_while_loop_counterP
Lsequential_67_lstm_203_while_sequential_67_lstm_203_while_maximum_iterations,
(sequential_67_lstm_203_while_placeholder.
*sequential_67_lstm_203_while_placeholder_1.
*sequential_67_lstm_203_while_placeholder_2.
*sequential_67_lstm_203_while_placeholder_3I
Esequential_67_lstm_203_while_sequential_67_lstm_203_strided_slice_1_0
sequential_67_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_203_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_67_lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0:2(^
Lsequential_67_lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(Y
Ksequential_67_lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0:()
%sequential_67_lstm_203_while_identity+
'sequential_67_lstm_203_while_identity_1+
'sequential_67_lstm_203_while_identity_2+
'sequential_67_lstm_203_while_identity_3+
'sequential_67_lstm_203_while_identity_4+
'sequential_67_lstm_203_while_identity_5G
Csequential_67_lstm_203_while_sequential_67_lstm_203_strided_slice_1
sequential_67_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_203_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_67_lstm_203_while_lstm_cell_56_matmul_readvariableop_resource:2(\
Jsequential_67_lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource:
(W
Isequential_67_lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource:(˘@sequential_67/lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp˘?sequential_67/lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp˘Asequential_67/lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp
Nsequential_67/lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_67/lstm_203/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_67_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_203_tensorarrayunstack_tensorlistfromtensor_0(sequential_67_lstm_203_while_placeholderWsequential_67/lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_67/lstm_203/while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOpJsequential_67_lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_67/lstm_203/while/lstm_cell_56/MatMulMatMulGsequential_67/lstm_203/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_67/lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_67/lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOpLsequential_67_lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_67/lstm_203/while/lstm_cell_56/MatMul_1MatMul*sequential_67_lstm_203_while_placeholder_2Isequential_67/lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_67/lstm_203/while/lstm_cell_56/addAddV2:sequential_67/lstm_203/while/lstm_cell_56/MatMul:product:0<sequential_67/lstm_203/while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_67/lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOpKsequential_67_lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_67/lstm_203/while/lstm_cell_56/BiasAddBiasAdd1sequential_67/lstm_203/while/lstm_cell_56/add:z:0Hsequential_67/lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_67/lstm_203/while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_67/lstm_203/while/lstm_cell_56/splitSplitBsequential_67/lstm_203/while/lstm_cell_56/split/split_dim:output:0:sequential_67/lstm_203/while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_67/lstm_203/while/lstm_cell_56/SigmoidSigmoid8sequential_67/lstm_203/while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_67/lstm_203/while/lstm_cell_56/Sigmoid_1Sigmoid8sequential_67/lstm_203/while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_67/lstm_203/while/lstm_cell_56/mulMul7sequential_67/lstm_203/while/lstm_cell_56/Sigmoid_1:y:0*sequential_67_lstm_203_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_67/lstm_203/while/lstm_cell_56/ReluRelu8sequential_67/lstm_203/while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_67/lstm_203/while/lstm_cell_56/mul_1Mul5sequential_67/lstm_203/while/lstm_cell_56/Sigmoid:y:0<sequential_67/lstm_203/while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_67/lstm_203/while/lstm_cell_56/add_1AddV21sequential_67/lstm_203/while/lstm_cell_56/mul:z:03sequential_67/lstm_203/while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_67/lstm_203/while/lstm_cell_56/Sigmoid_2Sigmoid8sequential_67/lstm_203/while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_67/lstm_203/while/lstm_cell_56/Relu_1Relu3sequential_67/lstm_203/while/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_67/lstm_203/while/lstm_cell_56/mul_2Mul7sequential_67/lstm_203/while/lstm_cell_56/Sigmoid_2:y:0>sequential_67/lstm_203/while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_67/lstm_203/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_67_lstm_203_while_placeholder_1(sequential_67_lstm_203_while_placeholder3sequential_67/lstm_203/while/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_67/lstm_203/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_67/lstm_203/while/addAddV2(sequential_67_lstm_203_while_placeholder+sequential_67/lstm_203/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_67/lstm_203/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_67/lstm_203/while/add_1AddV2Fsequential_67_lstm_203_while_sequential_67_lstm_203_while_loop_counter-sequential_67/lstm_203/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_67/lstm_203/while/IdentityIdentity&sequential_67/lstm_203/while/add_1:z:0"^sequential_67/lstm_203/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_67/lstm_203/while/Identity_1IdentityLsequential_67_lstm_203_while_sequential_67_lstm_203_while_maximum_iterations"^sequential_67/lstm_203/while/NoOp*
T0*
_output_shapes
: 
'sequential_67/lstm_203/while/Identity_2Identity$sequential_67/lstm_203/while/add:z:0"^sequential_67/lstm_203/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_67/lstm_203/while/Identity_3IdentityQsequential_67/lstm_203/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_67/lstm_203/while/NoOp*
T0*
_output_shapes
: ?
'sequential_67/lstm_203/while/Identity_4Identity3sequential_67/lstm_203/while/lstm_cell_56/mul_2:z:0"^sequential_67/lstm_203/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_67/lstm_203/while/Identity_5Identity3sequential_67/lstm_203/while/lstm_cell_56/add_1:z:0"^sequential_67/lstm_203/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_67/lstm_203/while/NoOpNoOpA^sequential_67/lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp@^sequential_67/lstm_203/while/lstm_cell_56/MatMul/ReadVariableOpB^sequential_67/lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_67_lstm_203_while_identity.sequential_67/lstm_203/while/Identity:output:0"[
'sequential_67_lstm_203_while_identity_10sequential_67/lstm_203/while/Identity_1:output:0"[
'sequential_67_lstm_203_while_identity_20sequential_67/lstm_203/while/Identity_2:output:0"[
'sequential_67_lstm_203_while_identity_30sequential_67/lstm_203/while/Identity_3:output:0"[
'sequential_67_lstm_203_while_identity_40sequential_67/lstm_203/while/Identity_4:output:0"[
'sequential_67_lstm_203_while_identity_50sequential_67/lstm_203/while/Identity_5:output:0"
Isequential_67_lstm_203_while_lstm_cell_56_biasadd_readvariableop_resourceKsequential_67_lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0"
Jsequential_67_lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resourceLsequential_67_lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0"
Hsequential_67_lstm_203_while_lstm_cell_56_matmul_readvariableop_resourceJsequential_67_lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0"
Csequential_67_lstm_203_while_sequential_67_lstm_203_strided_slice_1Esequential_67_lstm_203_while_sequential_67_lstm_203_strided_slice_1_0"
sequential_67_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_203_tensorarrayunstack_tensorlistfromtensorsequential_67_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_203_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_67/lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp@sequential_67/lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2
?sequential_67/lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp?sequential_67/lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp2
Asequential_67/lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOpAsequential_67/lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
S
³
(sequential_67_lstm_201_while_body_338637J
Fsequential_67_lstm_201_while_sequential_67_lstm_201_while_loop_counterP
Lsequential_67_lstm_201_while_sequential_67_lstm_201_while_maximum_iterations,
(sequential_67_lstm_201_while_placeholder.
*sequential_67_lstm_201_while_placeholder_1.
*sequential_67_lstm_201_while_placeholder_2.
*sequential_67_lstm_201_while_placeholder_3I
Esequential_67_lstm_201_while_sequential_67_lstm_201_strided_slice_1_0
sequential_67_lstm_201_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_201_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_67_lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0:	_
Lsequential_67_lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dZ
Ksequential_67_lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0:	)
%sequential_67_lstm_201_while_identity+
'sequential_67_lstm_201_while_identity_1+
'sequential_67_lstm_201_while_identity_2+
'sequential_67_lstm_201_while_identity_3+
'sequential_67_lstm_201_while_identity_4+
'sequential_67_lstm_201_while_identity_5G
Csequential_67_lstm_201_while_sequential_67_lstm_201_strided_slice_1
sequential_67_lstm_201_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_201_tensorarrayunstack_tensorlistfromtensor[
Hsequential_67_lstm_201_while_lstm_cell_54_matmul_readvariableop_resource:	]
Jsequential_67_lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource:	dX
Isequential_67_lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource:	˘@sequential_67/lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp˘?sequential_67/lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp˘Asequential_67/lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp
Nsequential_67/lstm_201/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_67/lstm_201/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_67_lstm_201_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_201_tensorarrayunstack_tensorlistfromtensor_0(sequential_67_lstm_201_while_placeholderWsequential_67/lstm_201/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_67/lstm_201/while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOpJsequential_67_lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_67/lstm_201/while/lstm_cell_54/MatMulMatMulGsequential_67/lstm_201/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_67/lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_67/lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOpLsequential_67_lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_67/lstm_201/while/lstm_cell_54/MatMul_1MatMul*sequential_67_lstm_201_while_placeholder_2Isequential_67/lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_67/lstm_201/while/lstm_cell_54/addAddV2:sequential_67/lstm_201/while/lstm_cell_54/MatMul:product:0<sequential_67/lstm_201/while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_67/lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOpKsequential_67_lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_67/lstm_201/while/lstm_cell_54/BiasAddBiasAdd1sequential_67/lstm_201/while/lstm_cell_54/add:z:0Hsequential_67/lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_67/lstm_201/while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_67/lstm_201/while/lstm_cell_54/splitSplitBsequential_67/lstm_201/while/lstm_cell_54/split/split_dim:output:0:sequential_67/lstm_201/while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_67/lstm_201/while/lstm_cell_54/SigmoidSigmoid8sequential_67/lstm_201/while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_67/lstm_201/while/lstm_cell_54/Sigmoid_1Sigmoid8sequential_67/lstm_201/while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_67/lstm_201/while/lstm_cell_54/mulMul7sequential_67/lstm_201/while/lstm_cell_54/Sigmoid_1:y:0*sequential_67_lstm_201_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_67/lstm_201/while/lstm_cell_54/ReluRelu8sequential_67/lstm_201/while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_67/lstm_201/while/lstm_cell_54/mul_1Mul5sequential_67/lstm_201/while/lstm_cell_54/Sigmoid:y:0<sequential_67/lstm_201/while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_67/lstm_201/while/lstm_cell_54/add_1AddV21sequential_67/lstm_201/while/lstm_cell_54/mul:z:03sequential_67/lstm_201/while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_67/lstm_201/while/lstm_cell_54/Sigmoid_2Sigmoid8sequential_67/lstm_201/while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_67/lstm_201/while/lstm_cell_54/Relu_1Relu3sequential_67/lstm_201/while/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_67/lstm_201/while/lstm_cell_54/mul_2Mul7sequential_67/lstm_201/while/lstm_cell_54/Sigmoid_2:y:0>sequential_67/lstm_201/while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_67/lstm_201/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_67_lstm_201_while_placeholder_1(sequential_67_lstm_201_while_placeholder3sequential_67/lstm_201/while/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_67/lstm_201/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_67/lstm_201/while/addAddV2(sequential_67_lstm_201_while_placeholder+sequential_67/lstm_201/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_67/lstm_201/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_67/lstm_201/while/add_1AddV2Fsequential_67_lstm_201_while_sequential_67_lstm_201_while_loop_counter-sequential_67/lstm_201/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_67/lstm_201/while/IdentityIdentity&sequential_67/lstm_201/while/add_1:z:0"^sequential_67/lstm_201/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_67/lstm_201/while/Identity_1IdentityLsequential_67_lstm_201_while_sequential_67_lstm_201_while_maximum_iterations"^sequential_67/lstm_201/while/NoOp*
T0*
_output_shapes
: 
'sequential_67/lstm_201/while/Identity_2Identity$sequential_67/lstm_201/while/add:z:0"^sequential_67/lstm_201/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_67/lstm_201/while/Identity_3IdentityQsequential_67/lstm_201/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_67/lstm_201/while/NoOp*
T0*
_output_shapes
: ?
'sequential_67/lstm_201/while/Identity_4Identity3sequential_67/lstm_201/while/lstm_cell_54/mul_2:z:0"^sequential_67/lstm_201/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_67/lstm_201/while/Identity_5Identity3sequential_67/lstm_201/while/lstm_cell_54/add_1:z:0"^sequential_67/lstm_201/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_67/lstm_201/while/NoOpNoOpA^sequential_67/lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp@^sequential_67/lstm_201/while/lstm_cell_54/MatMul/ReadVariableOpB^sequential_67/lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_67_lstm_201_while_identity.sequential_67/lstm_201/while/Identity:output:0"[
'sequential_67_lstm_201_while_identity_10sequential_67/lstm_201/while/Identity_1:output:0"[
'sequential_67_lstm_201_while_identity_20sequential_67/lstm_201/while/Identity_2:output:0"[
'sequential_67_lstm_201_while_identity_30sequential_67/lstm_201/while/Identity_3:output:0"[
'sequential_67_lstm_201_while_identity_40sequential_67/lstm_201/while/Identity_4:output:0"[
'sequential_67_lstm_201_while_identity_50sequential_67/lstm_201/while/Identity_5:output:0"
Isequential_67_lstm_201_while_lstm_cell_54_biasadd_readvariableop_resourceKsequential_67_lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0"
Jsequential_67_lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resourceLsequential_67_lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0"
Hsequential_67_lstm_201_while_lstm_cell_54_matmul_readvariableop_resourceJsequential_67_lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0"
Csequential_67_lstm_201_while_sequential_67_lstm_201_strided_slice_1Esequential_67_lstm_201_while_sequential_67_lstm_201_strided_slice_1_0"
sequential_67_lstm_201_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_201_tensorarrayunstack_tensorlistfromtensorsequential_67_lstm_201_while_tensorarrayv2read_tensorlistgetitem_sequential_67_lstm_201_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_67/lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp@sequential_67/lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2
?sequential_67/lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp?sequential_67/lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp2
Asequential_67/lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOpAsequential_67/lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
áW

__inference__traced_save_344477
file_prefix.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_201_lstm_cell_201_kernel_read_readvariableopF
Bsavev2_lstm_201_lstm_cell_201_recurrent_kernel_read_readvariableop:
6savev2_lstm_201_lstm_cell_201_bias_read_readvariableop<
8savev2_lstm_202_lstm_cell_202_kernel_read_readvariableopF
Bsavev2_lstm_202_lstm_cell_202_recurrent_kernel_read_readvariableop:
6savev2_lstm_202_lstm_cell_202_bias_read_readvariableop<
8savev2_lstm_203_lstm_cell_203_kernel_read_readvariableopF
Bsavev2_lstm_203_lstm_cell_203_recurrent_kernel_read_readvariableop:
6savev2_lstm_203_lstm_cell_203_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableop3
/savev2_adam_dense_67_bias_m_read_readvariableopC
?savev2_adam_lstm_201_lstm_cell_201_kernel_m_read_readvariableopM
Isavev2_adam_lstm_201_lstm_cell_201_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_201_lstm_cell_201_bias_m_read_readvariableopC
?savev2_adam_lstm_202_lstm_cell_202_kernel_m_read_readvariableopM
Isavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_202_lstm_cell_202_bias_m_read_readvariableopC
?savev2_adam_lstm_203_lstm_cell_203_kernel_m_read_readvariableopM
Isavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_203_lstm_cell_203_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableop3
/savev2_adam_dense_67_bias_v_read_readvariableopC
?savev2_adam_lstm_201_lstm_cell_201_kernel_v_read_readvariableopM
Isavev2_adam_lstm_201_lstm_cell_201_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_201_lstm_cell_201_bias_v_read_readvariableopC
?savev2_adam_lstm_202_lstm_cell_202_kernel_v_read_readvariableopM
Isavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_202_lstm_cell_202_bias_v_read_readvariableopC
?savev2_adam_lstm_203_lstm_cell_203_kernel_v_read_readvariableopM
Isavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_203_lstm_cell_203_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ċ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHż
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ê
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_201_lstm_cell_201_kernel_read_readvariableopBsavev2_lstm_201_lstm_cell_201_recurrent_kernel_read_readvariableop6savev2_lstm_201_lstm_cell_201_bias_read_readvariableop8savev2_lstm_202_lstm_cell_202_kernel_read_readvariableopBsavev2_lstm_202_lstm_cell_202_recurrent_kernel_read_readvariableop6savev2_lstm_202_lstm_cell_202_bias_read_readvariableop8savev2_lstm_203_lstm_cell_203_kernel_read_readvariableopBsavev2_lstm_203_lstm_cell_203_recurrent_kernel_read_readvariableop6savev2_lstm_203_lstm_cell_203_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop/savev2_adam_dense_67_bias_m_read_readvariableop?savev2_adam_lstm_201_lstm_cell_201_kernel_m_read_readvariableopIsavev2_adam_lstm_201_lstm_cell_201_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_201_lstm_cell_201_bias_m_read_readvariableop?savev2_adam_lstm_202_lstm_cell_202_kernel_m_read_readvariableopIsavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_202_lstm_cell_202_bias_m_read_readvariableop?savev2_adam_lstm_203_lstm_cell_203_kernel_m_read_readvariableopIsavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_203_lstm_cell_203_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop/savev2_adam_dense_67_bias_v_read_readvariableop?savev2_adam_lstm_201_lstm_cell_201_kernel_v_read_readvariableopIsavev2_adam_lstm_201_lstm_cell_201_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_201_lstm_cell_201_bias_v_read_readvariableop?savev2_adam_lstm_202_lstm_cell_202_kernel_v_read_readvariableopIsavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_202_lstm_cell_202_bias_v_read_readvariableop?savev2_adam_lstm_203_lstm_cell_203_kernel_v_read_readvariableopIsavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_203_lstm_cell_203_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*Ó
_input_shapesÁ
?: :
:: : : : : :	:	d::	dÈ:	2È:È:2(:
(:(: : :
::	:	d::	dÈ:	2È:È:2(:
(:(:
::	:	d::	dÈ:	2È:È:2(:
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
:	:%	!

_output_shapes
:	d:!


_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

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
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

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
:	:%!!

_output_shapes
:	d:!"

_output_shapes	
::%#!

_output_shapes
:	dÈ:%$!

_output_shapes
:	2È:!%

_output_shapes	
:È:$& 

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
¤J

D__inference_lstm_202_layer_call_and_return_conditional_losses_340885

inputs>
+lstm_cell_55_matmul_readvariableop_resource:	dÈ@
-lstm_cell_55_matmul_1_readvariableop_resource:	2È;
,lstm_cell_55_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_55/BiasAdd/ReadVariableOp˘"lstm_cell_55/MatMul/ReadVariableOp˘$lstm_cell_55/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_55/MatMul/ReadVariableOpReadVariableOp+lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_55/MatMulMatMulstrided_slice_2:output:0*lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_55/MatMul_1MatMulzeros:output:0,lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_55/addAddV2lstm_cell_55/MatMul:product:0lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_55/BiasAddBiasAddlstm_cell_55/add:z:0+lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_55/splitSplit%lstm_cell_55/split/split_dim:output:0lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_55/SigmoidSigmoidlstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_1Sigmoidlstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_55/mulMullstm_cell_55/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_55/ReluRelulstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_1Mullstm_cell_55/Sigmoid:y:0lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_55/add_1AddV2lstm_cell_55/mul:z:0lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_2Sigmoidlstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_55/Relu_1Relulstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_2Mullstm_cell_55/Sigmoid_2:y:0!lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_55_matmul_readvariableop_resource-lstm_cell_55_matmul_1_readvariableop_resource,lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340801*
condR
while_cond_340800*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_55/BiasAdd/ReadVariableOp#^lstm_cell_55/MatMul/ReadVariableOp%^lstm_cell_55/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_55/BiasAdd/ReadVariableOp#lstm_cell_55/BiasAdd/ReadVariableOp2H
"lstm_cell_55/MatMul/ReadVariableOp"lstm_cell_55/MatMul/ReadVariableOp2L
$lstm_cell_55/MatMul_1/ReadVariableOp$lstm_cell_55/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_343793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343793___redundant_placeholder04
0while_while_cond_343793___redundant_placeholder14
0while_while_cond_343793___redundant_placeholder24
0while_while_cond_343793___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ġ

H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339568

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates

µ
)__inference_lstm_203_layer_call_fn_343427
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ç	
ġ
D__inference_dense_67_layer_call_and_return_conditional_losses_340522

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
Ç	
ġ
D__inference_dense_67_layer_call_and_return_conditional_losses_344040

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
ò

˘
.__inference_sequential_67_layer_call_fn_340554
lstm_201_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_201_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_67_layer_call_and_return_conditional_losses_340529o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_201_input
²

÷
lstm_201_while_cond_341804.
*lstm_201_while_lstm_201_while_loop_counter4
0lstm_201_while_lstm_201_while_maximum_iterations
lstm_201_while_placeholder 
lstm_201_while_placeholder_1 
lstm_201_while_placeholder_2 
lstm_201_while_placeholder_30
,lstm_201_while_less_lstm_201_strided_slice_1F
Blstm_201_while_lstm_201_while_cond_341804___redundant_placeholder0F
Blstm_201_while_lstm_201_while_cond_341804___redundant_placeholder1F
Blstm_201_while_lstm_201_while_cond_341804___redundant_placeholder2F
Blstm_201_while_lstm_201_while_cond_341804___redundant_placeholder3
lstm_201_while_identity

lstm_201/while/LessLesslstm_201_while_placeholder,lstm_201_while_less_lstm_201_strided_slice_1*
T0*
_output_shapes
: ]
lstm_201/while/IdentityIdentitylstm_201/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_201_while_identity lstm_201/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
Ğ
ë
I__inference_sequential_67_layer_call_and_return_conditional_losses_341118

inputs"
lstm_201_341091:	"
lstm_201_341093:	d
lstm_201_341095:	"
lstm_202_341098:	dÈ"
lstm_202_341100:	2È
lstm_202_341102:	È!
lstm_203_341105:2(!
lstm_203_341107:
(
lstm_203_341109:(!
dense_67_341112:

dense_67_341114:
identity˘ dense_67/StatefulPartitionedCall˘ lstm_201/StatefulPartitionedCall˘ lstm_202/StatefulPartitionedCall˘ lstm_203/StatefulPartitionedCall
 lstm_201/StatefulPartitionedCallStatefulPartitionedCallinputslstm_201_341091lstm_201_341093lstm_201_341095*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_341050Ş
 lstm_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_201/StatefulPartitionedCall:output:0lstm_202_341098lstm_202_341100lstm_202_341102*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_340885Ĥ
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_202/StatefulPartitionedCall:output:0lstm_203_341105lstm_203_341107lstm_203_341109*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340720
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)lstm_203/StatefulPartitionedCall:output:0dense_67_341112dense_67_341114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_67_layer_call_and_return_conditional_losses_340522x
IdentityIdentity)dense_67/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_67/StatefulPartitionedCall!^lstm_201/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 lstm_201/StatefulPartitionedCall lstm_201/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĉ"
?
while_body_339436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_55_339460_0:	dÈ.
while_lstm_cell_55_339462_0:	2È*
while_lstm_cell_55_339464_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_55_339460:	dÈ,
while_lstm_cell_55_339462:	2È(
while_lstm_cell_55_339464:	È˘*while/lstm_cell_55/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_55/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_55_339460_0while_lstm_cell_55_339462_0while_lstm_cell_55_339464_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339422Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_55/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_55/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_55/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_55_339460while_lstm_cell_55_339460_0"8
while_lstm_cell_55_339462while_lstm_cell_55_339462_0"8
while_lstm_cell_55_339464while_lstm_cell_55_339464_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_55/StatefulPartitionedCall*while/lstm_cell_55/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ë

H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339918

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates
Ú


.__inference_sequential_67_layer_call_fn_341319

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_67_layer_call_and_return_conditional_losses_341118o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_340635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340635___redundant_placeholder04
0while_while_cond_340635___redundant_placeholder14
0while_while_cond_340635___redundant_placeholder24
0while_while_cond_340635___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
8
?
while_body_342705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_54_matmul_readvariableop_resource_0:	H
5while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_54_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_54_matmul_readvariableop_resource:	F
3while_lstm_cell_54_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_54_biasadd_readvariableop_resource:	˘)while/lstm_cell_54/BiasAdd/ReadVariableOp˘(while/lstm_cell_54/MatMul/ReadVariableOp˘*while/lstm_cell_54/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_54/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_54/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_54/addAddV2#while/lstm_cell_54/MatMul:product:0%while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_54/BiasAddBiasAddwhile/lstm_cell_54/add:z:01while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_54/splitSplit+while/lstm_cell_54/split/split_dim:output:0#while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_54/SigmoidSigmoid!while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_1Sigmoid!while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mulMul while/lstm_cell_54/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_54/ReluRelu!while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_1Mulwhile/lstm_cell_54/Sigmoid:y:0%while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/add_1AddV2while/lstm_cell_54/mul:z:0while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_2Sigmoid!while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_54/Relu_1Reluwhile/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_2Mul while/lstm_cell_54/Sigmoid_2:y:0'while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_54/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_54/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_54/BiasAdd/ReadVariableOp)^while/lstm_cell_54/MatMul/ReadVariableOp+^while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_54_biasadd_readvariableop_resource4while_lstm_cell_54_biasadd_readvariableop_resource_0"l
3while_lstm_cell_54_matmul_1_readvariableop_resource5while_lstm_cell_54_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_54_matmul_readvariableop_resource3while_lstm_cell_54_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_54/BiasAdd/ReadVariableOp)while/lstm_cell_54/BiasAdd/ReadVariableOp2T
(while/lstm_cell_54/MatMul/ReadVariableOp(while/lstm_cell_54/MatMul/ReadVariableOp2X
*while/lstm_cell_54/MatMul_1/ReadVariableOp*while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
¤J

D__inference_lstm_201_layer_call_and_return_conditional_losses_340204

inputs>
+lstm_cell_54_matmul_readvariableop_resource:	@
-lstm_cell_54_matmul_1_readvariableop_resource:	d;
,lstm_cell_54_biasadd_readvariableop_resource:	
identity˘#lstm_cell_54/BiasAdd/ReadVariableOp˘"lstm_cell_54/MatMul/ReadVariableOp˘$lstm_cell_54/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_54/MatMul/ReadVariableOpReadVariableOp+lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_54/MatMulMatMulstrided_slice_2:output:0*lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_54/MatMul_1MatMulzeros:output:0,lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_54/addAddV2lstm_cell_54/MatMul:product:0lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_54/BiasAddBiasAddlstm_cell_54/add:z:0+lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_54/splitSplit%lstm_cell_54/split/split_dim:output:0lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_54/SigmoidSigmoidlstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_1Sigmoidlstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_54/mulMullstm_cell_54/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_54/ReluRelulstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_1Mullstm_cell_54/Sigmoid:y:0lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_54/add_1AddV2lstm_cell_54/mul:z:0lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_2Sigmoidlstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_54/Relu_1Relulstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_2Mullstm_cell_54/Sigmoid_2:y:0!lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_54_matmul_readvariableop_resource-lstm_cell_54_matmul_1_readvariableop_resource,lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340120*
condR
while_cond_340119*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_54/BiasAdd/ReadVariableOp#^lstm_cell_54/MatMul/ReadVariableOp%^lstm_cell_54/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_54/BiasAdd/ReadVariableOp#lstm_cell_54/BiasAdd/ReadVariableOp2H
"lstm_cell_54/MatMul/ReadVariableOp"lstm_cell_54/MatMul/ReadVariableOp2L
$lstm_cell_54/MatMul_1/ReadVariableOp$lstm_cell_54/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_202_layer_call_fn_342822

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_340354s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_343034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343034___redundant_placeholder04
0while_while_cond_343034___redundant_placeholder14
0while_while_cond_343034___redundant_placeholder24
0while_while_cond_343034___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
ë
ö
-__inference_lstm_cell_54_layer_call_fn_344057

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
8
?
while_body_342562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_54_matmul_readvariableop_resource_0:	H
5while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_54_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_54_matmul_readvariableop_resource:	F
3while_lstm_cell_54_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_54_biasadd_readvariableop_resource:	˘)while/lstm_cell_54/BiasAdd/ReadVariableOp˘(while/lstm_cell_54/MatMul/ReadVariableOp˘*while/lstm_cell_54/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_54/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_54/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_54/addAddV2#while/lstm_cell_54/MatMul:product:0%while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_54/BiasAddBiasAddwhile/lstm_cell_54/add:z:01while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_54/splitSplit+while/lstm_cell_54/split/split_dim:output:0#while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_54/SigmoidSigmoid!while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_1Sigmoid!while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mulMul while/lstm_cell_54/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_54/ReluRelu!while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_1Mulwhile/lstm_cell_54/Sigmoid:y:0%while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/add_1AddV2while/lstm_cell_54/mul:z:0while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_2Sigmoid!while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_54/Relu_1Reluwhile/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_2Mul while/lstm_cell_54/Sigmoid_2:y:0'while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_54/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_54/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_54/BiasAdd/ReadVariableOp)^while/lstm_cell_54/MatMul/ReadVariableOp+^while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_54_biasadd_readvariableop_resource4while_lstm_cell_54_biasadd_readvariableop_resource_0"l
3while_lstm_cell_54_matmul_1_readvariableop_resource5while_lstm_cell_54_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_54_matmul_readvariableop_resource3while_lstm_cell_54_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_54/BiasAdd/ReadVariableOp)while/lstm_cell_54/BiasAdd/ReadVariableOp2T
(while/lstm_cell_54/MatMul/ReadVariableOp(while/lstm_cell_54/MatMul/ReadVariableOp2X
*while/lstm_cell_54/MatMul_1/ReadVariableOp*while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_342892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_55_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_55_biasadd_readvariableop_resource:	È˘)while/lstm_cell_55/BiasAdd/ReadVariableOp˘(while/lstm_cell_55/MatMul/ReadVariableOp˘*while/lstm_cell_55/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_55/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_55/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_55/addAddV2#while/lstm_cell_55/MatMul:product:0%while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_55/BiasAddBiasAddwhile/lstm_cell_55/add:z:01while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_55/splitSplit+while/lstm_cell_55/split/split_dim:output:0#while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_55/SigmoidSigmoid!while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_1Sigmoid!while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mulMul while/lstm_cell_55/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_55/ReluRelu!while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_1Mulwhile/lstm_cell_55/Sigmoid:y:0%while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/add_1AddV2while/lstm_cell_55/mul:z:0while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_2Sigmoid!while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_55/Relu_1Reluwhile/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_2Mul while/lstm_cell_55/Sigmoid_2:y:0'while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_55/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_55/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_55/BiasAdd/ReadVariableOp)^while/lstm_cell_55/MatMul/ReadVariableOp+^while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_55_biasadd_readvariableop_resource4while_lstm_cell_55_biasadd_readvariableop_resource_0"l
3while_lstm_cell_55_matmul_1_readvariableop_resource5while_lstm_cell_55_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_55_matmul_readvariableop_resource3while_lstm_cell_55_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_55/BiasAdd/ReadVariableOp)while/lstm_cell_55/BiasAdd/ReadVariableOp2T
(while/lstm_cell_55/MatMul/ReadVariableOp(while/lstm_cell_55/MatMul/ReadVariableOp2X
*while/lstm_cell_55/MatMul_1/ReadVariableOp*while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
ÎB
ê

lstm_203_while_body_342083.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_3-
)lstm_203_while_lstm_203_strided_slice_1_0i
elstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0:2(P
>lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(K
=lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0:(
lstm_203_while_identity
lstm_203_while_identity_1
lstm_203_while_identity_2
lstm_203_while_identity_3
lstm_203_while_identity_4
lstm_203_while_identity_5+
'lstm_203_while_lstm_203_strided_slice_1g
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorL
:lstm_203_while_lstm_cell_56_matmul_readvariableop_resource:2(N
<lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource:
(I
;lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource:(˘2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp˘1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp˘3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp
@lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_203/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0lstm_203_while_placeholderIlstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp<lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_203/while/lstm_cell_56/MatMulMatMul9lstm_203/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp>lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_203/while/lstm_cell_56/MatMul_1MatMullstm_203_while_placeholder_2;lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_203/while/lstm_cell_56/addAddV2,lstm_203/while/lstm_cell_56/MatMul:product:0.lstm_203/while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp=lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_203/while/lstm_cell_56/BiasAddBiasAdd#lstm_203/while/lstm_cell_56/add:z:0:lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_203/while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_203/while/lstm_cell_56/splitSplit4lstm_203/while/lstm_cell_56/split/split_dim:output:0,lstm_203/while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_203/while/lstm_cell_56/SigmoidSigmoid*lstm_203/while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_203/while/lstm_cell_56/Sigmoid_1Sigmoid*lstm_203/while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_203/while/lstm_cell_56/mulMul)lstm_203/while/lstm_cell_56/Sigmoid_1:y:0lstm_203_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_203/while/lstm_cell_56/ReluRelu*lstm_203/while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_203/while/lstm_cell_56/mul_1Mul'lstm_203/while/lstm_cell_56/Sigmoid:y:0.lstm_203/while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_203/while/lstm_cell_56/add_1AddV2#lstm_203/while/lstm_cell_56/mul:z:0%lstm_203/while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_203/while/lstm_cell_56/Sigmoid_2Sigmoid*lstm_203/while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_203/while/lstm_cell_56/Relu_1Relu%lstm_203/while/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_203/while/lstm_cell_56/mul_2Mul)lstm_203/while/lstm_cell_56/Sigmoid_2:y:00lstm_203/while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_203/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_203_while_placeholder_1lstm_203_while_placeholder%lstm_203/while/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_203/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_203/while/addAddV2lstm_203_while_placeholderlstm_203/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_203/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_203/while/add_1AddV2*lstm_203_while_lstm_203_while_loop_counterlstm_203/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_203/while/IdentityIdentitylstm_203/while/add_1:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_1Identity0lstm_203_while_lstm_203_while_maximum_iterations^lstm_203/while/NoOp*
T0*
_output_shapes
: t
lstm_203/while/Identity_2Identitylstm_203/while/add:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_203/while/Identity_3IdentityClstm_203/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_4Identity%lstm_203/while/lstm_cell_56/mul_2:z:0^lstm_203/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/while/Identity_5Identity%lstm_203/while/lstm_cell_56/add_1:z:0^lstm_203/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_203/while/NoOpNoOp3^lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2^lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp4^lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_203_while_identity lstm_203/while/Identity:output:0"?
lstm_203_while_identity_1"lstm_203/while/Identity_1:output:0"?
lstm_203_while_identity_2"lstm_203/while/Identity_2:output:0"?
lstm_203_while_identity_3"lstm_203/while/Identity_3:output:0"?
lstm_203_while_identity_4"lstm_203/while/Identity_4:output:0"?
lstm_203_while_identity_5"lstm_203/while/Identity_5:output:0"T
'lstm_203_while_lstm_203_strided_slice_1)lstm_203_while_lstm_203_strided_slice_1_0"|
;lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource=lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0"~
<lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource>lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0"z
:lstm_203_while_lstm_cell_56_matmul_readvariableop_resource<lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0"Ì
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2f
1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp2j
3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
ÛB
?

lstm_201_while_body_341378.
*lstm_201_while_lstm_201_while_loop_counter4
0lstm_201_while_lstm_201_while_maximum_iterations
lstm_201_while_placeholder 
lstm_201_while_placeholder_1 
lstm_201_while_placeholder_2 
lstm_201_while_placeholder_3-
)lstm_201_while_lstm_201_strided_slice_1_0i
elstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0:	Q
>lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dL
=lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0:	
lstm_201_while_identity
lstm_201_while_identity_1
lstm_201_while_identity_2
lstm_201_while_identity_3
lstm_201_while_identity_4
lstm_201_while_identity_5+
'lstm_201_while_lstm_201_strided_slice_1g
clstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensorM
:lstm_201_while_lstm_cell_54_matmul_readvariableop_resource:	O
<lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource:	dJ
;lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource:	˘2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp˘1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp˘3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp
@lstm_201/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_201/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensor_0lstm_201_while_placeholderIlstm_201/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp<lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_201/while/lstm_cell_54/MatMulMatMul9lstm_201/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp>lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_201/while/lstm_cell_54/MatMul_1MatMullstm_201_while_placeholder_2;lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_201/while/lstm_cell_54/addAddV2,lstm_201/while/lstm_cell_54/MatMul:product:0.lstm_201/while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp=lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_201/while/lstm_cell_54/BiasAddBiasAdd#lstm_201/while/lstm_cell_54/add:z:0:lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_201/while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_201/while/lstm_cell_54/splitSplit4lstm_201/while/lstm_cell_54/split/split_dim:output:0,lstm_201/while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_201/while/lstm_cell_54/SigmoidSigmoid*lstm_201/while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_201/while/lstm_cell_54/Sigmoid_1Sigmoid*lstm_201/while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_201/while/lstm_cell_54/mulMul)lstm_201/while/lstm_cell_54/Sigmoid_1:y:0lstm_201_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_201/while/lstm_cell_54/ReluRelu*lstm_201/while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_201/while/lstm_cell_54/mul_1Mul'lstm_201/while/lstm_cell_54/Sigmoid:y:0.lstm_201/while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_201/while/lstm_cell_54/add_1AddV2#lstm_201/while/lstm_cell_54/mul:z:0%lstm_201/while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_201/while/lstm_cell_54/Sigmoid_2Sigmoid*lstm_201/while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_201/while/lstm_cell_54/Relu_1Relu%lstm_201/while/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_201/while/lstm_cell_54/mul_2Mul)lstm_201/while/lstm_cell_54/Sigmoid_2:y:00lstm_201/while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_201/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_201_while_placeholder_1lstm_201_while_placeholder%lstm_201/while/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_201/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_201/while/addAddV2lstm_201_while_placeholderlstm_201/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_201/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_201/while/add_1AddV2*lstm_201_while_lstm_201_while_loop_counterlstm_201/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_201/while/IdentityIdentitylstm_201/while/add_1:z:0^lstm_201/while/NoOp*
T0*
_output_shapes
: 
lstm_201/while/Identity_1Identity0lstm_201_while_lstm_201_while_maximum_iterations^lstm_201/while/NoOp*
T0*
_output_shapes
: t
lstm_201/while/Identity_2Identitylstm_201/while/add:z:0^lstm_201/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_201/while/Identity_3IdentityClstm_201/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_201/while/NoOp*
T0*
_output_shapes
: 
lstm_201/while/Identity_4Identity%lstm_201/while/lstm_cell_54/mul_2:z:0^lstm_201/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/while/Identity_5Identity%lstm_201/while/lstm_cell_54/add_1:z:0^lstm_201/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_201/while/NoOpNoOp3^lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2^lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp4^lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_201_while_identity lstm_201/while/Identity:output:0"?
lstm_201_while_identity_1"lstm_201/while/Identity_1:output:0"?
lstm_201_while_identity_2"lstm_201/while/Identity_2:output:0"?
lstm_201_while_identity_3"lstm_201/while/Identity_3:output:0"?
lstm_201_while_identity_4"lstm_201/while/Identity_4:output:0"?
lstm_201_while_identity_5"lstm_201/while/Identity_5:output:0"T
'lstm_201_while_lstm_201_strided_slice_1)lstm_201_while_lstm_201_strided_slice_1_0"|
;lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource=lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0"~
<lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource>lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0"z
:lstm_201_while_lstm_cell_54_matmul_readvariableop_resource<lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0"Ì
clstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensorelstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2f
1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp2j
3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_340965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340965___redundant_placeholder04
0while_while_cond_340965___redundant_placeholder14
0while_while_cond_340965___redundant_placeholder24
0while_while_cond_340965___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
²

÷
lstm_202_while_cond_341516.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_30
,lstm_202_while_less_lstm_202_strided_slice_1F
Blstm_202_while_lstm_202_while_cond_341516___redundant_placeholder0F
Blstm_202_while_lstm_202_while_cond_341516___redundant_placeholder1F
Blstm_202_while_lstm_202_while_cond_341516___redundant_placeholder2F
Blstm_202_while_lstm_202_while_cond_341516___redundant_placeholder3
lstm_202_while_identity

lstm_202/while/LessLesslstm_202_while_placeholder,lstm_202_while_less_lstm_202_strided_slice_1*
T0*
_output_shapes
: ]
lstm_202/while/IdentityIdentitylstm_202/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_202_while_identity lstm_202/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
Ú


.__inference_sequential_67_layer_call_fn_341292

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_67_layer_call_and_return_conditional_losses_340529o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_343651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_56_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_56_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_56_matmul_readvariableop_resource:2(E
3while_lstm_cell_56_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_56_biasadd_readvariableop_resource:(˘)while/lstm_cell_56/BiasAdd/ReadVariableOp˘(while/lstm_cell_56/MatMul/ReadVariableOp˘*while/lstm_cell_56/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_340270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_55_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_55_biasadd_readvariableop_resource:	È˘)while/lstm_cell_55/BiasAdd/ReadVariableOp˘(while/lstm_cell_55/MatMul/ReadVariableOp˘*while/lstm_cell_55/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_55/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_55/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_55/addAddV2#while/lstm_cell_55/MatMul:product:0%while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_55/BiasAddBiasAddwhile/lstm_cell_55/add:z:01while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_55/splitSplit+while/lstm_cell_55/split/split_dim:output:0#while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_55/SigmoidSigmoid!while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_1Sigmoid!while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mulMul while/lstm_cell_55/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_55/ReluRelu!while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_1Mulwhile/lstm_cell_55/Sigmoid:y:0%while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/add_1AddV2while/lstm_cell_55/mul:z:0while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_2Sigmoid!while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_55/Relu_1Reluwhile/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_2Mul while/lstm_cell_55/Sigmoid_2:y:0'while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_55/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_55/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_55/BiasAdd/ReadVariableOp)^while/lstm_cell_55/MatMul/ReadVariableOp+^while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_55_biasadd_readvariableop_resource4while_lstm_cell_55_biasadd_readvariableop_resource_0"l
3while_lstm_cell_55_matmul_1_readvariableop_resource5while_lstm_cell_55_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_55_matmul_readvariableop_resource3while_lstm_cell_55_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_55/BiasAdd/ReadVariableOp)while/lstm_cell_55/BiasAdd/ReadVariableOp2T
(while/lstm_cell_55/MatMul/ReadVariableOp(while/lstm_cell_55/MatMul/ReadVariableOp2X
*while/lstm_cell_55/MatMul_1/ReadVariableOp*while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_201_layer_call_fn_342195
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_339346|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_342275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342275___redundant_placeholder04
0while_while_cond_342275___redundant_placeholder14
0while_while_cond_342275___redundant_placeholder24
0while_while_cond_342275___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
˙7
Ê
while_body_343508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_56_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_56_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_56_matmul_readvariableop_resource:2(E
3while_lstm_cell_56_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_56_biasadd_readvariableop_resource:(˘)while/lstm_cell_56/BiasAdd/ReadVariableOp˘(while/lstm_cell_56/MatMul/ReadVariableOp˘*while/lstm_cell_56/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
è
ó
-__inference_lstm_cell_56_layer_call_fn_344253

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339772o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
J

D__inference_lstm_203_layer_call_and_return_conditional_losses_340720

inputs=
+lstm_cell_56_matmul_readvariableop_resource:2(?
-lstm_cell_56_matmul_1_readvariableop_resource:
(:
,lstm_cell_56_biasadd_readvariableop_resource:(
identity˘#lstm_cell_56/BiasAdd/ReadVariableOp˘"lstm_cell_56/MatMul/ReadVariableOp˘$lstm_cell_56/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340636*
condR
while_cond_340635*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÛB
?

lstm_201_while_body_341805.
*lstm_201_while_lstm_201_while_loop_counter4
0lstm_201_while_lstm_201_while_maximum_iterations
lstm_201_while_placeholder 
lstm_201_while_placeholder_1 
lstm_201_while_placeholder_2 
lstm_201_while_placeholder_3-
)lstm_201_while_lstm_201_strided_slice_1_0i
elstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0:	Q
>lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dL
=lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0:	
lstm_201_while_identity
lstm_201_while_identity_1
lstm_201_while_identity_2
lstm_201_while_identity_3
lstm_201_while_identity_4
lstm_201_while_identity_5+
'lstm_201_while_lstm_201_strided_slice_1g
clstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensorM
:lstm_201_while_lstm_cell_54_matmul_readvariableop_resource:	O
<lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource:	dJ
;lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource:	˘2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp˘1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp˘3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp
@lstm_201/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_201/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensor_0lstm_201_while_placeholderIlstm_201/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp<lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_201/while/lstm_cell_54/MatMulMatMul9lstm_201/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp>lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_201/while/lstm_cell_54/MatMul_1MatMullstm_201_while_placeholder_2;lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_201/while/lstm_cell_54/addAddV2,lstm_201/while/lstm_cell_54/MatMul:product:0.lstm_201/while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp=lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_201/while/lstm_cell_54/BiasAddBiasAdd#lstm_201/while/lstm_cell_54/add:z:0:lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_201/while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_201/while/lstm_cell_54/splitSplit4lstm_201/while/lstm_cell_54/split/split_dim:output:0,lstm_201/while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_201/while/lstm_cell_54/SigmoidSigmoid*lstm_201/while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_201/while/lstm_cell_54/Sigmoid_1Sigmoid*lstm_201/while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_201/while/lstm_cell_54/mulMul)lstm_201/while/lstm_cell_54/Sigmoid_1:y:0lstm_201_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_201/while/lstm_cell_54/ReluRelu*lstm_201/while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_201/while/lstm_cell_54/mul_1Mul'lstm_201/while/lstm_cell_54/Sigmoid:y:0.lstm_201/while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_201/while/lstm_cell_54/add_1AddV2#lstm_201/while/lstm_cell_54/mul:z:0%lstm_201/while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_201/while/lstm_cell_54/Sigmoid_2Sigmoid*lstm_201/while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_201/while/lstm_cell_54/Relu_1Relu%lstm_201/while/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_201/while/lstm_cell_54/mul_2Mul)lstm_201/while/lstm_cell_54/Sigmoid_2:y:00lstm_201/while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_201/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_201_while_placeholder_1lstm_201_while_placeholder%lstm_201/while/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_201/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_201/while/addAddV2lstm_201_while_placeholderlstm_201/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_201/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_201/while/add_1AddV2*lstm_201_while_lstm_201_while_loop_counterlstm_201/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_201/while/IdentityIdentitylstm_201/while/add_1:z:0^lstm_201/while/NoOp*
T0*
_output_shapes
: 
lstm_201/while/Identity_1Identity0lstm_201_while_lstm_201_while_maximum_iterations^lstm_201/while/NoOp*
T0*
_output_shapes
: t
lstm_201/while/Identity_2Identitylstm_201/while/add:z:0^lstm_201/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_201/while/Identity_3IdentityClstm_201/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_201/while/NoOp*
T0*
_output_shapes
: 
lstm_201/while/Identity_4Identity%lstm_201/while/lstm_cell_54/mul_2:z:0^lstm_201/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/while/Identity_5Identity%lstm_201/while/lstm_cell_54/add_1:z:0^lstm_201/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_201/while/NoOpNoOp3^lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2^lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp4^lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_201_while_identity lstm_201/while/Identity:output:0"?
lstm_201_while_identity_1"lstm_201/while/Identity_1:output:0"?
lstm_201_while_identity_2"lstm_201/while/Identity_2:output:0"?
lstm_201_while_identity_3"lstm_201/while/Identity_3:output:0"?
lstm_201_while_identity_4"lstm_201/while/Identity_4:output:0"?
lstm_201_while_identity_5"lstm_201/while/Identity_5:output:0"T
'lstm_201_while_lstm_201_strided_slice_1)lstm_201_while_lstm_201_strided_slice_1_0"|
;lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource=lstm_201_while_lstm_cell_54_biasadd_readvariableop_resource_0"~
<lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource>lstm_201_while_lstm_cell_54_matmul_1_readvariableop_resource_0"z
:lstm_201_while_lstm_cell_54_matmul_readvariableop_resource<lstm_201_while_lstm_cell_54_matmul_readvariableop_resource_0"Ì
clstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensorelstm_201_while_tensorarrayv2read_tensorlistgetitem_lstm_201_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2lstm_201/while/lstm_cell_54/BiasAdd/ReadVariableOp2f
1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp1lstm_201/while/lstm_cell_54/MatMul/ReadVariableOp2j
3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp3lstm_201/while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_343178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_55_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_55_biasadd_readvariableop_resource:	È˘)while/lstm_cell_55/BiasAdd/ReadVariableOp˘(while/lstm_cell_55/MatMul/ReadVariableOp˘*while/lstm_cell_55/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_55/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_55/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_55/addAddV2#while/lstm_cell_55/MatMul:product:0%while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_55/BiasAddBiasAddwhile/lstm_cell_55/add:z:01while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_55/splitSplit+while/lstm_cell_55/split/split_dim:output:0#while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_55/SigmoidSigmoid!while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_1Sigmoid!while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mulMul while/lstm_cell_55/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_55/ReluRelu!while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_1Mulwhile/lstm_cell_55/Sigmoid:y:0%while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/add_1AddV2while/lstm_cell_55/mul:z:0while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_2Sigmoid!while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_55/Relu_1Reluwhile/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_2Mul while/lstm_cell_55/Sigmoid_2:y:0'while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_55/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_55/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_55/BiasAdd/ReadVariableOp)^while/lstm_cell_55/MatMul/ReadVariableOp+^while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_55_biasadd_readvariableop_resource4while_lstm_cell_55_biasadd_readvariableop_resource_0"l
3while_lstm_cell_55_matmul_1_readvariableop_resource5while_lstm_cell_55_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_55_matmul_readvariableop_resource3while_lstm_cell_55_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_55/BiasAdd/ReadVariableOp)while/lstm_cell_55/BiasAdd/ReadVariableOp2T
(while/lstm_cell_55/MatMul/ReadVariableOp(while/lstm_cell_55/MatMul/ReadVariableOp2X
*while/lstm_cell_55/MatMul_1/ReadVariableOp*while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 

ĥ
)__inference_lstm_201_layer_call_fn_342206

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_340204s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_342276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_54_matmul_readvariableop_resource_0:	H
5while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_54_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_54_matmul_readvariableop_resource:	F
3while_lstm_cell_54_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_54_biasadd_readvariableop_resource:	˘)while/lstm_cell_54/BiasAdd/ReadVariableOp˘(while/lstm_cell_54/MatMul/ReadVariableOp˘*while/lstm_cell_54/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_54/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_54/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_54/addAddV2#while/lstm_cell_54/MatMul:product:0%while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_54/BiasAddBiasAddwhile/lstm_cell_54/add:z:01while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_54/splitSplit+while/lstm_cell_54/split/split_dim:output:0#while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_54/SigmoidSigmoid!while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_1Sigmoid!while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mulMul while/lstm_cell_54/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_54/ReluRelu!while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_1Mulwhile/lstm_cell_54/Sigmoid:y:0%while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/add_1AddV2while/lstm_cell_54/mul:z:0while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_2Sigmoid!while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_54/Relu_1Reluwhile/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_2Mul while/lstm_cell_54/Sigmoid_2:y:0'while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_54/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_54/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_54/BiasAdd/ReadVariableOp)^while/lstm_cell_54/MatMul/ReadVariableOp+^while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_54_biasadd_readvariableop_resource4while_lstm_cell_54_biasadd_readvariableop_resource_0"l
3while_lstm_cell_54_matmul_1_readvariableop_resource5while_lstm_cell_54_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_54_matmul_readvariableop_resource3while_lstm_cell_54_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_54/BiasAdd/ReadVariableOp)while/lstm_cell_54/BiasAdd/ReadVariableOp2T
(while/lstm_cell_54/MatMul/ReadVariableOp(while/lstm_cell_54/MatMul/ReadVariableOp2X
*while/lstm_cell_54/MatMul_1/ReadVariableOp*while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
Ġ

H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339422

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates
âJ

D__inference_lstm_202_layer_call_and_return_conditional_losses_342976
inputs_0>
+lstm_cell_55_matmul_readvariableop_resource:	dÈ@
-lstm_cell_55_matmul_1_readvariableop_resource:	2È;
,lstm_cell_55_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_55/BiasAdd/ReadVariableOp˘"lstm_cell_55/MatMul/ReadVariableOp˘$lstm_cell_55/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_55/MatMul/ReadVariableOpReadVariableOp+lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_55/MatMulMatMulstrided_slice_2:output:0*lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_55/MatMul_1MatMulzeros:output:0,lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_55/addAddV2lstm_cell_55/MatMul:product:0lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_55/BiasAddBiasAddlstm_cell_55/add:z:0+lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_55/splitSplit%lstm_cell_55/split/split_dim:output:0lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_55/SigmoidSigmoidlstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_1Sigmoidlstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_55/mulMullstm_cell_55/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_55/ReluRelulstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_1Mullstm_cell_55/Sigmoid:y:0lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_55/add_1AddV2lstm_cell_55/mul:z:0lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_2Sigmoidlstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_55/Relu_1Relulstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_2Mullstm_cell_55/Sigmoid_2:y:0!lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_55_matmul_readvariableop_resource-lstm_cell_55_matmul_1_readvariableop_resource,lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342892*
condR
while_cond_342891*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_55/BiasAdd/ReadVariableOp#^lstm_cell_55/MatMul/ReadVariableOp%^lstm_cell_55/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_55/BiasAdd/ReadVariableOp#lstm_cell_55/BiasAdd/ReadVariableOp2H
"lstm_cell_55/MatMul/ReadVariableOp"lstm_cell_55/MatMul/ReadVariableOp2L
$lstm_cell_55/MatMul_1/ReadVariableOp$lstm_cell_55/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
J

D__inference_lstm_203_layer_call_and_return_conditional_losses_340504

inputs=
+lstm_cell_56_matmul_readvariableop_resource:2(?
-lstm_cell_56_matmul_1_readvariableop_resource:
(:
,lstm_cell_56_biasadd_readvariableop_resource:(
identity˘#lstm_cell_56/BiasAdd/ReadVariableOp˘"lstm_cell_56/MatMul/ReadVariableOp˘$lstm_cell_56/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340420*
condR
while_cond_340419*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_55_layer_call_fn_344172

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
µ
?
while_cond_339435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339435___redundant_placeholder04
0while_while_cond_339435___redundant_placeholder14
0while_while_cond_339435___redundant_placeholder24
0while_while_cond_339435___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
8
?
while_body_342419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_54_matmul_readvariableop_resource_0:	H
5while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_54_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_54_matmul_readvariableop_resource:	F
3while_lstm_cell_54_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_54_biasadd_readvariableop_resource:	˘)while/lstm_cell_54/BiasAdd/ReadVariableOp˘(while/lstm_cell_54/MatMul/ReadVariableOp˘*while/lstm_cell_54/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_54/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_54/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_54/addAddV2#while/lstm_cell_54/MatMul:product:0%while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_54/BiasAddBiasAddwhile/lstm_cell_54/add:z:01while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_54/splitSplit+while/lstm_cell_54/split/split_dim:output:0#while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_54/SigmoidSigmoid!while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_1Sigmoid!while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mulMul while/lstm_cell_54/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_54/ReluRelu!while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_1Mulwhile/lstm_cell_54/Sigmoid:y:0%while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/add_1AddV2while/lstm_cell_54/mul:z:0while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_2Sigmoid!while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_54/Relu_1Reluwhile/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_2Mul while/lstm_cell_54/Sigmoid_2:y:0'while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_54/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_54/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_54/BiasAdd/ReadVariableOp)^while/lstm_cell_54/MatMul/ReadVariableOp+^while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_54_biasadd_readvariableop_resource4while_lstm_cell_54_biasadd_readvariableop_resource_0"l
3while_lstm_cell_54_matmul_1_readvariableop_resource5while_lstm_cell_54_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_54_matmul_readvariableop_resource3while_lstm_cell_54_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_54/BiasAdd/ReadVariableOp)while/lstm_cell_54/BiasAdd/ReadVariableOp2T
(while/lstm_cell_54/MatMul/ReadVariableOp(while/lstm_cell_54/MatMul/ReadVariableOp2X
*while/lstm_cell_54/MatMul_1/ReadVariableOp*while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
À


$__inference_signature_wrapper_341265
lstm_201_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCalllstm_201_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_339005o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_201_input
˙7
Ê
while_body_340420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_56_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_56_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_56_matmul_readvariableop_resource:2(E
3while_lstm_cell_56_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_56_biasadd_readvariableop_resource:(˘)while/lstm_cell_56/BiasAdd/ReadVariableOp˘(while/lstm_cell_56/MatMul/ReadVariableOp˘*while/lstm_cell_56/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
˙7
Ê
while_body_343937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_56_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_56_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_56_matmul_readvariableop_resource:2(E
3while_lstm_cell_56_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_56_biasadd_readvariableop_resource:(˘)while/lstm_cell_56/BiasAdd/ReadVariableOp˘(while/lstm_cell_56/MatMul/ReadVariableOp˘*while/lstm_cell_56/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_202_while_cond_341943.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_30
,lstm_202_while_less_lstm_202_strided_slice_1F
Blstm_202_while_lstm_202_while_cond_341943___redundant_placeholder0F
Blstm_202_while_lstm_202_while_cond_341943___redundant_placeholder1F
Blstm_202_while_lstm_202_while_cond_341943___redundant_placeholder2F
Blstm_202_while_lstm_202_while_cond_341943___redundant_placeholder3
lstm_202_while_identity

lstm_202/while/LessLesslstm_202_while_placeholder,lstm_202_while_less_lstm_202_strided_slice_1*
T0*
_output_shapes
: ]
lstm_202/while/IdentityIdentitylstm_202/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_202_while_identity lstm_202/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
Â

)__inference_dense_67_layer_call_fn_344030

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_67_layer_call_and_return_conditional_losses_340522o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
8
?
while_body_343321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_55_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_55_biasadd_readvariableop_resource:	È˘)while/lstm_cell_55/BiasAdd/ReadVariableOp˘(while/lstm_cell_55/MatMul/ReadVariableOp˘*while/lstm_cell_55/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_55/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_55/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_55/addAddV2#while/lstm_cell_55/MatMul:product:0%while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_55/BiasAddBiasAddwhile/lstm_cell_55/add:z:01while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_55/splitSplit+while/lstm_cell_55/split/split_dim:output:0#while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_55/SigmoidSigmoid!while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_1Sigmoid!while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mulMul while/lstm_cell_55/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_55/ReluRelu!while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_1Mulwhile/lstm_cell_55/Sigmoid:y:0%while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/add_1AddV2while/lstm_cell_55/mul:z:0while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_2Sigmoid!while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_55/Relu_1Reluwhile/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_2Mul while/lstm_cell_55/Sigmoid_2:y:0'while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_55/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_55/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_55/BiasAdd/ReadVariableOp)^while/lstm_cell_55/MatMul/ReadVariableOp+^while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_55_biasadd_readvariableop_resource4while_lstm_cell_55_biasadd_readvariableop_resource_0"l
3while_lstm_cell_55_matmul_1_readvariableop_resource5while_lstm_cell_55_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_55_matmul_readvariableop_resource3while_lstm_cell_55_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_55/BiasAdd/ReadVariableOp)while/lstm_cell_55/BiasAdd/ReadVariableOp2T
(while/lstm_cell_55/MatMul/ReadVariableOp(while/lstm_cell_55/MatMul/ReadVariableOp2X
*while/lstm_cell_55/MatMul_1/ReadVariableOp*while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
ĉ"
?
while_body_339627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_55_339651_0:	dÈ.
while_lstm_cell_55_339653_0:	2È*
while_lstm_cell_55_339655_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_55_339651:	dÈ,
while_lstm_cell_55_339653:	2È(
while_lstm_cell_55_339655:	È˘*while/lstm_cell_55/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_55/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_55_339651_0while_lstm_cell_55_339653_0while_lstm_cell_55_339655_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339568Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_55/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_55/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_55/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_55_339651while_lstm_cell_55_339651_0"8
while_lstm_cell_55_339653while_lstm_cell_55_339653_0"8
while_lstm_cell_55_339655while_lstm_cell_55_339655_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_55/StatefulPartitionedCall*while/lstm_cell_55/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ğ
ë
I__inference_sequential_67_layer_call_and_return_conditional_losses_340529

inputs"
lstm_201_340205:	"
lstm_201_340207:	d
lstm_201_340209:	"
lstm_202_340355:	dÈ"
lstm_202_340357:	2È
lstm_202_340359:	È!
lstm_203_340505:2(!
lstm_203_340507:
(
lstm_203_340509:(!
dense_67_340523:

dense_67_340525:
identity˘ dense_67/StatefulPartitionedCall˘ lstm_201/StatefulPartitionedCall˘ lstm_202/StatefulPartitionedCall˘ lstm_203/StatefulPartitionedCall
 lstm_201/StatefulPartitionedCallStatefulPartitionedCallinputslstm_201_340205lstm_201_340207lstm_201_340209*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_340204Ş
 lstm_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_201/StatefulPartitionedCall:output:0lstm_202_340355lstm_202_340357lstm_202_340359*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_340354Ĥ
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_202/StatefulPartitionedCall:output:0lstm_203_340505lstm_203_340507lstm_203_340509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340504
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)lstm_203/StatefulPartitionedCall:output:0dense_67_340523dense_67_340525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_67_layer_call_and_return_conditional_losses_340522x
IdentityIdentity)dense_67/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_67/StatefulPartitionedCall!^lstm_201/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 lstm_201/StatefulPartitionedCall lstm_201/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
?
ó
I__inference_sequential_67_layer_call_and_return_conditional_losses_341230
lstm_201_input"
lstm_201_341203:	"
lstm_201_341205:	d
lstm_201_341207:	"
lstm_202_341210:	dÈ"
lstm_202_341212:	2È
lstm_202_341214:	È!
lstm_203_341217:2(!
lstm_203_341219:
(
lstm_203_341221:(!
dense_67_341224:

dense_67_341226:
identity˘ dense_67/StatefulPartitionedCall˘ lstm_201/StatefulPartitionedCall˘ lstm_202/StatefulPartitionedCall˘ lstm_203/StatefulPartitionedCall
 lstm_201/StatefulPartitionedCallStatefulPartitionedCalllstm_201_inputlstm_201_341203lstm_201_341205lstm_201_341207*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_341050Ş
 lstm_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_201/StatefulPartitionedCall:output:0lstm_202_341210lstm_202_341212lstm_202_341214*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_340885Ĥ
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_202/StatefulPartitionedCall:output:0lstm_203_341217lstm_203_341219lstm_203_341221*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340720
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)lstm_203/StatefulPartitionedCall:output:0dense_67_341224dense_67_341226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_67_layer_call_and_return_conditional_losses_340522x
IdentityIdentity)dense_67/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_67/StatefulPartitionedCall!^lstm_201/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 lstm_201/StatefulPartitionedCall lstm_201/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_201_input
ħ

I__inference_sequential_67_layer_call_and_return_conditional_losses_342173

inputsG
4lstm_201_lstm_cell_54_matmul_readvariableop_resource:	I
6lstm_201_lstm_cell_54_matmul_1_readvariableop_resource:	dD
5lstm_201_lstm_cell_54_biasadd_readvariableop_resource:	G
4lstm_202_lstm_cell_55_matmul_readvariableop_resource:	dÈI
6lstm_202_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈD
5lstm_202_lstm_cell_55_biasadd_readvariableop_resource:	ÈF
4lstm_203_lstm_cell_56_matmul_readvariableop_resource:2(H
6lstm_203_lstm_cell_56_matmul_1_readvariableop_resource:
(C
5lstm_203_lstm_cell_56_biasadd_readvariableop_resource:(9
'dense_67_matmul_readvariableop_resource:
6
(dense_67_biasadd_readvariableop_resource:
identity˘dense_67/BiasAdd/ReadVariableOp˘dense_67/MatMul/ReadVariableOp˘,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp˘+lstm_201/lstm_cell_54/MatMul/ReadVariableOp˘-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp˘lstm_201/while˘,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp˘+lstm_202/lstm_cell_55/MatMul/ReadVariableOp˘-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp˘lstm_202/while˘,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp˘+lstm_203/lstm_cell_56/MatMul/ReadVariableOp˘-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp˘lstm_203/whileD
lstm_201/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_201/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_201/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_201/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_201/strided_sliceStridedSlicelstm_201/Shape:output:0%lstm_201/strided_slice/stack:output:0'lstm_201/strided_slice/stack_1:output:0'lstm_201/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_201/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_201/zeros/packedPacklstm_201/strided_slice:output:0 lstm_201/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_201/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_201/zerosFilllstm_201/zeros/packed:output:0lstm_201/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_201/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_201/zeros_1/packedPacklstm_201/strided_slice:output:0"lstm_201/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_201/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_201/zeros_1Fill lstm_201/zeros_1/packed:output:0lstm_201/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_201/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_201/transpose	Transposeinputs lstm_201/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_201/Shape_1Shapelstm_201/transpose:y:0*
T0*
_output_shapes
:h
lstm_201/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_201/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_201/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_201/strided_slice_1StridedSlicelstm_201/Shape_1:output:0'lstm_201/strided_slice_1/stack:output:0)lstm_201/strided_slice_1/stack_1:output:0)lstm_201/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_201/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_201/TensorArrayV2TensorListReserve-lstm_201/TensorArrayV2/element_shape:output:0!lstm_201/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_201/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_201/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_201/transpose:y:0Glstm_201/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_201/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_201/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_201/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_201/strided_slice_2StridedSlicelstm_201/transpose:y:0'lstm_201/strided_slice_2/stack:output:0)lstm_201/strided_slice_2/stack_1:output:0)lstm_201/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_201/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp4lstm_201_lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_201/lstm_cell_54/MatMulMatMul!lstm_201/strided_slice_2:output:03lstm_201/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp6lstm_201_lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_201/lstm_cell_54/MatMul_1MatMullstm_201/zeros:output:05lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_201/lstm_cell_54/addAddV2&lstm_201/lstm_cell_54/MatMul:product:0(lstm_201/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp5lstm_201_lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_201/lstm_cell_54/BiasAddBiasAddlstm_201/lstm_cell_54/add:z:04lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_201/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_201/lstm_cell_54/splitSplit.lstm_201/lstm_cell_54/split/split_dim:output:0&lstm_201/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_201/lstm_cell_54/SigmoidSigmoid$lstm_201/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/Sigmoid_1Sigmoid$lstm_201/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/mulMul#lstm_201/lstm_cell_54/Sigmoid_1:y:0lstm_201/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_201/lstm_cell_54/ReluRelu$lstm_201/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_201/lstm_cell_54/mul_1Mul!lstm_201/lstm_cell_54/Sigmoid:y:0(lstm_201/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/add_1AddV2lstm_201/lstm_cell_54/mul:z:0lstm_201/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_201/lstm_cell_54/Sigmoid_2Sigmoid$lstm_201/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_201/lstm_cell_54/Relu_1Relulstm_201/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_201/lstm_cell_54/mul_2Mul#lstm_201/lstm_cell_54/Sigmoid_2:y:0*lstm_201/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_201/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_201/TensorArrayV2_1TensorListReserve/lstm_201/TensorArrayV2_1/element_shape:output:0!lstm_201/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_201/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_201/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_201/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_201/whileWhile$lstm_201/while/loop_counter:output:0*lstm_201/while/maximum_iterations:output:0lstm_201/time:output:0!lstm_201/TensorArrayV2_1:handle:0lstm_201/zeros:output:0lstm_201/zeros_1:output:0!lstm_201/strided_slice_1:output:0@lstm_201/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_201_lstm_cell_54_matmul_readvariableop_resource6lstm_201_lstm_cell_54_matmul_1_readvariableop_resource5lstm_201_lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_201_while_body_341805*&
condR
lstm_201_while_cond_341804*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_201/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_201/TensorArrayV2Stack/TensorListStackTensorListStacklstm_201/while:output:3Blstm_201/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_201/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_201/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_201/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_201/strided_slice_3StridedSlice4lstm_201/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_201/strided_slice_3/stack:output:0)lstm_201/strided_slice_3/stack_1:output:0)lstm_201/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_201/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_201/transpose_1	Transpose4lstm_201/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_201/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_201/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_202/ShapeShapelstm_201/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_202/strided_sliceStridedSlicelstm_202/Shape:output:0%lstm_202/strided_slice/stack:output:0'lstm_202/strided_slice/stack_1:output:0'lstm_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_202/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_202/zeros/packedPacklstm_202/strided_slice:output:0 lstm_202/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_202/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zerosFilllstm_202/zeros/packed:output:0lstm_202/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_202/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_202/zeros_1/packedPacklstm_202/strided_slice:output:0"lstm_202/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_202/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zeros_1Fill lstm_202/zeros_1/packed:output:0lstm_202/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_202/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_202/transpose	Transposelstm_201/transpose_1:y:0 lstm_202/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_202/Shape_1Shapelstm_202/transpose:y:0*
T0*
_output_shapes
:h
lstm_202/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_1StridedSlicelstm_202/Shape_1:output:0'lstm_202/strided_slice_1/stack:output:0)lstm_202/strided_slice_1/stack_1:output:0)lstm_202/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_202/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_202/TensorArrayV2TensorListReserve-lstm_202/TensorArrayV2/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_202/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_202/transpose:y:0Glstm_202/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_202/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_2StridedSlicelstm_202/transpose:y:0'lstm_202/strided_slice_2/stack:output:0)lstm_202/strided_slice_2/stack_1:output:0)lstm_202/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_202/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp4lstm_202_lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_202/lstm_cell_55/MatMulMatMul!lstm_202/strided_slice_2:output:03lstm_202/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp6lstm_202_lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_202/lstm_cell_55/MatMul_1MatMullstm_202/zeros:output:05lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_202/lstm_cell_55/addAddV2&lstm_202/lstm_cell_55/MatMul:product:0(lstm_202/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp5lstm_202_lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_202/lstm_cell_55/BiasAddBiasAddlstm_202/lstm_cell_55/add:z:04lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_202/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_202/lstm_cell_55/splitSplit.lstm_202/lstm_cell_55/split/split_dim:output:0&lstm_202/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_202/lstm_cell_55/SigmoidSigmoid$lstm_202/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/Sigmoid_1Sigmoid$lstm_202/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/mulMul#lstm_202/lstm_cell_55/Sigmoid_1:y:0lstm_202/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_202/lstm_cell_55/ReluRelu$lstm_202/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_202/lstm_cell_55/mul_1Mul!lstm_202/lstm_cell_55/Sigmoid:y:0(lstm_202/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/add_1AddV2lstm_202/lstm_cell_55/mul:z:0lstm_202/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/lstm_cell_55/Sigmoid_2Sigmoid$lstm_202/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_202/lstm_cell_55/Relu_1Relulstm_202/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_202/lstm_cell_55/mul_2Mul#lstm_202/lstm_cell_55/Sigmoid_2:y:0*lstm_202/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_202/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_202/TensorArrayV2_1TensorListReserve/lstm_202/TensorArrayV2_1/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_202/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_202/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_202/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_202/whileWhile$lstm_202/while/loop_counter:output:0*lstm_202/while/maximum_iterations:output:0lstm_202/time:output:0!lstm_202/TensorArrayV2_1:handle:0lstm_202/zeros:output:0lstm_202/zeros_1:output:0!lstm_202/strided_slice_1:output:0@lstm_202/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_202_lstm_cell_55_matmul_readvariableop_resource6lstm_202_lstm_cell_55_matmul_1_readvariableop_resource5lstm_202_lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_202_while_body_341944*&
condR
lstm_202_while_cond_341943*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_202/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_202/TensorArrayV2Stack/TensorListStackTensorListStacklstm_202/while:output:3Blstm_202/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_202/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_202/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_202/strided_slice_3StridedSlice4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_202/strided_slice_3/stack:output:0)lstm_202/strided_slice_3/stack_1:output:0)lstm_202/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_202/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_202/transpose_1	Transpose4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_202/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_202/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_203/ShapeShapelstm_202/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_203/strided_sliceStridedSlicelstm_203/Shape:output:0%lstm_203/strided_slice/stack:output:0'lstm_203/strided_slice/stack_1:output:0'lstm_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_203/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_203/zeros/packedPacklstm_203/strided_slice:output:0 lstm_203/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_203/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zerosFilllstm_203/zeros/packed:output:0lstm_203/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_203/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_203/zeros_1/packedPacklstm_203/strided_slice:output:0"lstm_203/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_203/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zeros_1Fill lstm_203/zeros_1/packed:output:0lstm_203/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_203/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_203/transpose	Transposelstm_202/transpose_1:y:0 lstm_203/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_203/Shape_1Shapelstm_203/transpose:y:0*
T0*
_output_shapes
:h
lstm_203/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_1StridedSlicelstm_203/Shape_1:output:0'lstm_203/strided_slice_1/stack:output:0)lstm_203/strided_slice_1/stack_1:output:0)lstm_203/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_203/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_203/TensorArrayV2TensorListReserve-lstm_203/TensorArrayV2/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_203/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_203/transpose:y:0Glstm_203/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_203/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_2StridedSlicelstm_203/transpose:y:0'lstm_203/strided_slice_2/stack:output:0)lstm_203/strided_slice_2/stack_1:output:0)lstm_203/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_203/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp4lstm_203_lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_203/lstm_cell_56/MatMulMatMul!lstm_203/strided_slice_2:output:03lstm_203/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp6lstm_203_lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_203/lstm_cell_56/MatMul_1MatMullstm_203/zeros:output:05lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_203/lstm_cell_56/addAddV2&lstm_203/lstm_cell_56/MatMul:product:0(lstm_203/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp5lstm_203_lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_203/lstm_cell_56/BiasAddBiasAddlstm_203/lstm_cell_56/add:z:04lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_203/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_203/lstm_cell_56/splitSplit.lstm_203/lstm_cell_56/split/split_dim:output:0&lstm_203/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_203/lstm_cell_56/SigmoidSigmoid$lstm_203/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/Sigmoid_1Sigmoid$lstm_203/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/mulMul#lstm_203/lstm_cell_56/Sigmoid_1:y:0lstm_203/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_203/lstm_cell_56/ReluRelu$lstm_203/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_203/lstm_cell_56/mul_1Mul!lstm_203/lstm_cell_56/Sigmoid:y:0(lstm_203/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/add_1AddV2lstm_203/lstm_cell_56/mul:z:0lstm_203/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/lstm_cell_56/Sigmoid_2Sigmoid$lstm_203/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_203/lstm_cell_56/Relu_1Relulstm_203/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_203/lstm_cell_56/mul_2Mul#lstm_203/lstm_cell_56/Sigmoid_2:y:0*lstm_203/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_203/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_203/TensorArrayV2_1TensorListReserve/lstm_203/TensorArrayV2_1/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_203/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_203/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_203/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_203/whileWhile$lstm_203/while/loop_counter:output:0*lstm_203/while/maximum_iterations:output:0lstm_203/time:output:0!lstm_203/TensorArrayV2_1:handle:0lstm_203/zeros:output:0lstm_203/zeros_1:output:0!lstm_203/strided_slice_1:output:0@lstm_203/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_203_lstm_cell_56_matmul_readvariableop_resource6lstm_203_lstm_cell_56_matmul_1_readvariableop_resource5lstm_203_lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_203_while_body_342083*&
condR
lstm_203_while_cond_342082*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_203/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_203/TensorArrayV2Stack/TensorListStackTensorListStacklstm_203/while:output:3Blstm_203/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_203/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_203/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_203/strided_slice_3StridedSlice4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_203/strided_slice_3/stack:output:0)lstm_203/strided_slice_3/stack_1:output:0)lstm_203/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_203/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_203/transpose_1	Transpose4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_203/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_203/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_67/MatMulMatMul!lstm_203/strided_slice_3:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_67/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp-^lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp,^lstm_201/lstm_cell_54/MatMul/ReadVariableOp.^lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp^lstm_201/while-^lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp,^lstm_202/lstm_cell_55/MatMul/ReadVariableOp.^lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp^lstm_202/while-^lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp,^lstm_203/lstm_cell_56/MatMul/ReadVariableOp.^lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp^lstm_203/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2\
,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp,lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp2Z
+lstm_201/lstm_cell_54/MatMul/ReadVariableOp+lstm_201/lstm_cell_54/MatMul/ReadVariableOp2^
-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp-lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp2 
lstm_201/whilelstm_201/while2\
,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp,lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp2Z
+lstm_202/lstm_cell_55/MatMul/ReadVariableOp+lstm_202/lstm_cell_55/MatMul/ReadVariableOp2^
-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp-lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp2 
lstm_202/whilelstm_202/while2\
,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp,lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp2Z
+lstm_203/lstm_cell_56/MatMul/ReadVariableOp+lstm_203/lstm_cell_56/MatMul/ReadVariableOp2^
-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp-lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp2 
lstm_203/whilelstm_203/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339072

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates
ÎB
ê

lstm_203_while_body_341656.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_3-
)lstm_203_while_lstm_203_strided_slice_1_0i
elstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0:2(P
>lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(K
=lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0:(
lstm_203_while_identity
lstm_203_while_identity_1
lstm_203_while_identity_2
lstm_203_while_identity_3
lstm_203_while_identity_4
lstm_203_while_identity_5+
'lstm_203_while_lstm_203_strided_slice_1g
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorL
:lstm_203_while_lstm_cell_56_matmul_readvariableop_resource:2(N
<lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource:
(I
;lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource:(˘2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp˘1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp˘3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp
@lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_203/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0lstm_203_while_placeholderIlstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp<lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_203/while/lstm_cell_56/MatMulMatMul9lstm_203/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp>lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_203/while/lstm_cell_56/MatMul_1MatMullstm_203_while_placeholder_2;lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_203/while/lstm_cell_56/addAddV2,lstm_203/while/lstm_cell_56/MatMul:product:0.lstm_203/while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp=lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_203/while/lstm_cell_56/BiasAddBiasAdd#lstm_203/while/lstm_cell_56/add:z:0:lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_203/while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_203/while/lstm_cell_56/splitSplit4lstm_203/while/lstm_cell_56/split/split_dim:output:0,lstm_203/while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_203/while/lstm_cell_56/SigmoidSigmoid*lstm_203/while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_203/while/lstm_cell_56/Sigmoid_1Sigmoid*lstm_203/while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_203/while/lstm_cell_56/mulMul)lstm_203/while/lstm_cell_56/Sigmoid_1:y:0lstm_203_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_203/while/lstm_cell_56/ReluRelu*lstm_203/while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_203/while/lstm_cell_56/mul_1Mul'lstm_203/while/lstm_cell_56/Sigmoid:y:0.lstm_203/while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_203/while/lstm_cell_56/add_1AddV2#lstm_203/while/lstm_cell_56/mul:z:0%lstm_203/while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_203/while/lstm_cell_56/Sigmoid_2Sigmoid*lstm_203/while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_203/while/lstm_cell_56/Relu_1Relu%lstm_203/while/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_203/while/lstm_cell_56/mul_2Mul)lstm_203/while/lstm_cell_56/Sigmoid_2:y:00lstm_203/while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_203/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_203_while_placeholder_1lstm_203_while_placeholder%lstm_203/while/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_203/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_203/while/addAddV2lstm_203_while_placeholderlstm_203/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_203/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_203/while/add_1AddV2*lstm_203_while_lstm_203_while_loop_counterlstm_203/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_203/while/IdentityIdentitylstm_203/while/add_1:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_1Identity0lstm_203_while_lstm_203_while_maximum_iterations^lstm_203/while/NoOp*
T0*
_output_shapes
: t
lstm_203/while/Identity_2Identitylstm_203/while/add:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_203/while/Identity_3IdentityClstm_203/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_4Identity%lstm_203/while/lstm_cell_56/mul_2:z:0^lstm_203/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_203/while/Identity_5Identity%lstm_203/while/lstm_cell_56/add_1:z:0^lstm_203/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_203/while/NoOpNoOp3^lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2^lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp4^lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_203_while_identity lstm_203/while/Identity:output:0"?
lstm_203_while_identity_1"lstm_203/while/Identity_1:output:0"?
lstm_203_while_identity_2"lstm_203/while/Identity_2:output:0"?
lstm_203_while_identity_3"lstm_203/while/Identity_3:output:0"?
lstm_203_while_identity_4"lstm_203/while/Identity_4:output:0"?
lstm_203_while_identity_5"lstm_203/while/Identity_5:output:0"T
'lstm_203_while_lstm_203_strided_slice_1)lstm_203_while_lstm_203_strided_slice_1_0"|
;lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource=lstm_203_while_lstm_cell_56_biasadd_readvariableop_resource_0"~
<lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource>lstm_203_while_lstm_cell_56_matmul_1_readvariableop_resource_0"z
:lstm_203_while_lstm_cell_56_matmul_readvariableop_resource<lstm_203_while_lstm_cell_56_matmul_readvariableop_resource_0"Ì
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2lstm_203/while/lstm_cell_56/BiasAdd/ReadVariableOp2f
1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp1lstm_203/while/lstm_cell_56/MatMul/ReadVariableOp2j
3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp3lstm_203/while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_343320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343320___redundant_placeholder04
0while_while_cond_343320___redundant_placeholder14
0while_while_cond_343320___redundant_placeholder24
0while_while_cond_343320___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_339785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339785___redundant_placeholder04
0while_while_cond_339785___redundant_placeholder14
0while_while_cond_339785___redundant_placeholder24
0while_while_cond_339785___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_342418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342418___redundant_placeholder04
0while_while_cond_342418___redundant_placeholder14
0while_while_cond_342418___redundant_placeholder24
0while_while_cond_342418___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_203_layer_call_and_return_conditional_losses_339855

inputs%
lstm_cell_56_339773:2(%
lstm_cell_56_339775:
(!
lstm_cell_56_339777:(
identity˘$lstm_cell_56/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskġ
$lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56_339773lstm_cell_56_339775lstm_cell_56_339777*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339772n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56_339773lstm_cell_56_339775lstm_cell_56_339777*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339786*
condR
while_cond_339785*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp%^lstm_cell_56/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_56/StatefulPartitionedCall$lstm_cell_56/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ó

H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_344334

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
à"
Ŭ
while_body_339786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_56_339810_0:2(-
while_lstm_cell_56_339812_0:
()
while_lstm_cell_56_339814_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_56_339810:2(+
while_lstm_cell_56_339812:
('
while_lstm_cell_56_339814:(˘*while/lstm_cell_56/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56_339810_0while_lstm_cell_56_339812_0while_lstm_cell_56_339814_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339772Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_56/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_56/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_56/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_56_339810while_lstm_cell_56_339810_0"8
while_lstm_cell_56_339812while_lstm_cell_56_339812_0"8
while_lstm_cell_56_339814while_lstm_cell_56_339814_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_56/StatefulPartitionedCall*while/lstm_cell_56/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
¤J

D__inference_lstm_202_layer_call_and_return_conditional_losses_340354

inputs>
+lstm_cell_55_matmul_readvariableop_resource:	dÈ@
-lstm_cell_55_matmul_1_readvariableop_resource:	2È;
,lstm_cell_55_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_55/BiasAdd/ReadVariableOp˘"lstm_cell_55/MatMul/ReadVariableOp˘$lstm_cell_55/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_55/MatMul/ReadVariableOpReadVariableOp+lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_55/MatMulMatMulstrided_slice_2:output:0*lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_55/MatMul_1MatMulzeros:output:0,lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_55/addAddV2lstm_cell_55/MatMul:product:0lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_55/BiasAddBiasAddlstm_cell_55/add:z:0+lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_55/splitSplit%lstm_cell_55/split/split_dim:output:0lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_55/SigmoidSigmoidlstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_1Sigmoidlstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_55/mulMullstm_cell_55/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_55/ReluRelulstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_1Mullstm_cell_55/Sigmoid:y:0lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_55/add_1AddV2lstm_cell_55/mul:z:0lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_2Sigmoidlstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_55/Relu_1Relulstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_2Mullstm_cell_55/Sigmoid_2:y:0!lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_55_matmul_readvariableop_resource-lstm_cell_55_matmul_1_readvariableop_resource,lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340270*
condR
while_cond_340269*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_55/BiasAdd/ReadVariableOp#^lstm_cell_55/MatMul/ReadVariableOp%^lstm_cell_55/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_55/BiasAdd/ReadVariableOp#lstm_cell_55/BiasAdd/ReadVariableOp2H
"lstm_cell_55/MatMul/ReadVariableOp"lstm_cell_55/MatMul/ReadVariableOp2L
$lstm_cell_55/MatMul_1/ReadVariableOp$lstm_cell_55/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_344236

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
âJ

D__inference_lstm_201_layer_call_and_return_conditional_losses_342503
inputs_0>
+lstm_cell_54_matmul_readvariableop_resource:	@
-lstm_cell_54_matmul_1_readvariableop_resource:	d;
,lstm_cell_54_biasadd_readvariableop_resource:	
identity˘#lstm_cell_54/BiasAdd/ReadVariableOp˘"lstm_cell_54/MatMul/ReadVariableOp˘$lstm_cell_54/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_54/MatMul/ReadVariableOpReadVariableOp+lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_54/MatMulMatMulstrided_slice_2:output:0*lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_54/MatMul_1MatMulzeros:output:0,lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_54/addAddV2lstm_cell_54/MatMul:product:0lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_54/BiasAddBiasAddlstm_cell_54/add:z:0+lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_54/splitSplit%lstm_cell_54/split/split_dim:output:0lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_54/SigmoidSigmoidlstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_1Sigmoidlstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_54/mulMullstm_cell_54/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_54/ReluRelulstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_1Mullstm_cell_54/Sigmoid:y:0lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_54/add_1AddV2lstm_cell_54/mul:z:0lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_2Sigmoidlstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_54/Relu_1Relulstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_2Mullstm_cell_54/Sigmoid_2:y:0!lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_54_matmul_readvariableop_resource-lstm_cell_54_matmul_1_readvariableop_resource,lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342419*
condR
while_cond_342418*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_54/BiasAdd/ReadVariableOp#^lstm_cell_54/MatMul/ReadVariableOp%^lstm_cell_54/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_54/BiasAdd/ReadVariableOp#lstm_cell_54/BiasAdd/ReadVariableOp2H
"lstm_cell_54/MatMul/ReadVariableOp"lstm_cell_54/MatMul/ReadVariableOp2L
$lstm_cell_54/MatMul_1/ReadVariableOp$lstm_cell_54/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
Ë

H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339772

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates
µ
?
while_cond_340800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340800___redundant_placeholder04
0while_while_cond_340800___redundant_placeholder14
0while_while_cond_340800___redundant_placeholder24
0while_while_cond_340800___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_339085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339085___redundant_placeholder04
0while_while_cond_339085___redundant_placeholder14
0while_while_cond_339085___redundant_placeholder24
0while_while_cond_339085___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
âJ

D__inference_lstm_201_layer_call_and_return_conditional_losses_342360
inputs_0>
+lstm_cell_54_matmul_readvariableop_resource:	@
-lstm_cell_54_matmul_1_readvariableop_resource:	d;
,lstm_cell_54_biasadd_readvariableop_resource:	
identity˘#lstm_cell_54/BiasAdd/ReadVariableOp˘"lstm_cell_54/MatMul/ReadVariableOp˘$lstm_cell_54/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_54/MatMul/ReadVariableOpReadVariableOp+lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_54/MatMulMatMulstrided_slice_2:output:0*lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_54/MatMul_1MatMulzeros:output:0,lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_54/addAddV2lstm_cell_54/MatMul:product:0lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_54/BiasAddBiasAddlstm_cell_54/add:z:0+lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_54/splitSplit%lstm_cell_54/split/split_dim:output:0lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_54/SigmoidSigmoidlstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_1Sigmoidlstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_54/mulMullstm_cell_54/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_54/ReluRelulstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_1Mullstm_cell_54/Sigmoid:y:0lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_54/add_1AddV2lstm_cell_54/mul:z:0lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_2Sigmoidlstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_54/Relu_1Relulstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_2Mullstm_cell_54/Sigmoid_2:y:0!lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_54_matmul_readvariableop_resource-lstm_cell_54_matmul_1_readvariableop_resource,lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342276*
condR
while_cond_342275*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_54/BiasAdd/ReadVariableOp#^lstm_cell_54/MatMul/ReadVariableOp%^lstm_cell_54/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_54/BiasAdd/ReadVariableOp#lstm_cell_54/BiasAdd/ReadVariableOp2H
"lstm_cell_54/MatMul/ReadVariableOp"lstm_cell_54/MatMul/ReadVariableOp2L
$lstm_cell_54/MatMul_1/ReadVariableOp$lstm_cell_54/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
˙7
Ê
while_body_343794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_56_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_56_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_56_matmul_readvariableop_resource:2(E
3while_lstm_cell_56_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_56_biasadd_readvariableop_resource:(˘)while/lstm_cell_56/BiasAdd/ReadVariableOp˘(while/lstm_cell_56/MatMul/ReadVariableOp˘*while/lstm_cell_56/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_340419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340419___redundant_placeholder04
0while_while_cond_340419___redundant_placeholder14
0while_while_cond_340419___redundant_placeholder24
0while_while_cond_340419___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ÛB
?

lstm_202_while_body_341517.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_3-
)lstm_202_while_lstm_202_strided_slice_1_0i
elstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈQ
>lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
lstm_202_while_identity
lstm_202_while_identity_1
lstm_202_while_identity_2
lstm_202_while_identity_3
lstm_202_while_identity_4
lstm_202_while_identity_5+
'lstm_202_while_lstm_202_strided_slice_1g
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorM
:lstm_202_while_lstm_cell_55_matmul_readvariableop_resource:	dÈO
<lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈJ
;lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource:	È˘2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp˘1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp˘3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp
@lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_202/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0lstm_202_while_placeholderIlstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp<lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_202/while/lstm_cell_55/MatMulMatMul9lstm_202/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp>lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_202/while/lstm_cell_55/MatMul_1MatMullstm_202_while_placeholder_2;lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_202/while/lstm_cell_55/addAddV2,lstm_202/while/lstm_cell_55/MatMul:product:0.lstm_202/while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp=lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_202/while/lstm_cell_55/BiasAddBiasAdd#lstm_202/while/lstm_cell_55/add:z:0:lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_202/while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_202/while/lstm_cell_55/splitSplit4lstm_202/while/lstm_cell_55/split/split_dim:output:0,lstm_202/while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_202/while/lstm_cell_55/SigmoidSigmoid*lstm_202/while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_202/while/lstm_cell_55/Sigmoid_1Sigmoid*lstm_202/while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_202/while/lstm_cell_55/mulMul)lstm_202/while/lstm_cell_55/Sigmoid_1:y:0lstm_202_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_202/while/lstm_cell_55/ReluRelu*lstm_202/while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_202/while/lstm_cell_55/mul_1Mul'lstm_202/while/lstm_cell_55/Sigmoid:y:0.lstm_202/while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_202/while/lstm_cell_55/add_1AddV2#lstm_202/while/lstm_cell_55/mul:z:0%lstm_202/while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_202/while/lstm_cell_55/Sigmoid_2Sigmoid*lstm_202/while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_202/while/lstm_cell_55/Relu_1Relu%lstm_202/while/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_202/while/lstm_cell_55/mul_2Mul)lstm_202/while/lstm_cell_55/Sigmoid_2:y:00lstm_202/while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_202/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_202_while_placeholder_1lstm_202_while_placeholder%lstm_202/while/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_202/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_202/while/addAddV2lstm_202_while_placeholderlstm_202/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_202/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_202/while/add_1AddV2*lstm_202_while_lstm_202_while_loop_counterlstm_202/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_202/while/IdentityIdentitylstm_202/while/add_1:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_1Identity0lstm_202_while_lstm_202_while_maximum_iterations^lstm_202/while/NoOp*
T0*
_output_shapes
: t
lstm_202/while/Identity_2Identitylstm_202/while/add:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_202/while/Identity_3IdentityClstm_202/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_4Identity%lstm_202/while/lstm_cell_55/mul_2:z:0^lstm_202/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_202/while/Identity_5Identity%lstm_202/while/lstm_cell_55/add_1:z:0^lstm_202/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_202/while/NoOpNoOp3^lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2^lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp4^lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_202_while_identity lstm_202/while/Identity:output:0"?
lstm_202_while_identity_1"lstm_202/while/Identity_1:output:0"?
lstm_202_while_identity_2"lstm_202/while/Identity_2:output:0"?
lstm_202_while_identity_3"lstm_202/while/Identity_3:output:0"?
lstm_202_while_identity_4"lstm_202/while/Identity_4:output:0"?
lstm_202_while_identity_5"lstm_202/while/Identity_5:output:0"T
'lstm_202_while_lstm_202_strided_slice_1)lstm_202_while_lstm_202_strided_slice_1_0"|
;lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource=lstm_202_while_lstm_cell_55_biasadd_readvariableop_resource_0"~
<lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource>lstm_202_while_lstm_cell_55_matmul_1_readvariableop_resource_0"z
:lstm_202_while_lstm_cell_55_matmul_readvariableop_resource<lstm_202_while_lstm_cell_55_matmul_readvariableop_resource_0"Ì
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2lstm_202/while/lstm_cell_55/BiasAdd/ReadVariableOp2f
1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp1lstm_202/while/lstm_cell_55/MatMul/ReadVariableOp2j
3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp3lstm_202/while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_203_while_cond_342082.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_30
,lstm_203_while_less_lstm_203_strided_slice_1F
Blstm_203_while_lstm_203_while_cond_342082___redundant_placeholder0F
Blstm_203_while_lstm_203_while_cond_342082___redundant_placeholder1F
Blstm_203_while_lstm_203_while_cond_342082___redundant_placeholder2F
Blstm_203_while_lstm_203_while_cond_342082___redundant_placeholder3
lstm_203_while_identity

lstm_203/while/LessLesslstm_203_while_placeholder,lstm_203_while_less_lstm_203_strided_slice_1*
T0*
_output_shapes
: ]
lstm_203/while/IdentityIdentitylstm_203/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_203_while_identity lstm_203/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_201_layer_call_and_return_conditional_losses_339346

inputs&
lstm_cell_54_339264:	&
lstm_cell_54_339266:	d"
lstm_cell_54_339268:	
identity˘$lstm_cell_54/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskġ
$lstm_cell_54/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_54_339264lstm_cell_54_339266lstm_cell_54_339268*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339218n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_54_339264lstm_cell_54_339266lstm_cell_54_339268*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339277*
condR
while_cond_339276*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙du
NoOpNoOp%^lstm_cell_54/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_54/StatefulPartitionedCall$lstm_cell_54/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĉ"
?
while_body_339277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_54_339301_0:	.
while_lstm_cell_54_339303_0:	d*
while_lstm_cell_54_339305_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_54_339301:	,
while_lstm_cell_54_339303:	d(
while_lstm_cell_54_339305:	˘*while/lstm_cell_54/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_54/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_54_339301_0while_lstm_cell_54_339303_0while_lstm_cell_54_339305_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339218Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_54/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_54/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_54/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_54_339301while_lstm_cell_54_339301_0"8
while_lstm_cell_54_339303while_lstm_cell_54_339303_0"8
while_lstm_cell_54_339305while_lstm_cell_54_339305_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_54/StatefulPartitionedCall*while/lstm_cell_54/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
ë
ö
-__inference_lstm_cell_55_layer_call_fn_344155

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
8
?
while_body_340966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_54_matmul_readvariableop_resource_0:	H
5while_lstm_cell_54_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_54_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_54_matmul_readvariableop_resource:	F
3while_lstm_cell_54_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_54_biasadd_readvariableop_resource:	˘)while/lstm_cell_54/BiasAdd/ReadVariableOp˘(while/lstm_cell_54/MatMul/ReadVariableOp˘*while/lstm_cell_54/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_54/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_54_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_54/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_54_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_54/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_54/addAddV2#while/lstm_cell_54/MatMul:product:0%while/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_54_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_54/BiasAddBiasAddwhile/lstm_cell_54/add:z:01while/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_54/splitSplit+while/lstm_cell_54/split/split_dim:output:0#while/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_54/SigmoidSigmoid!while/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_1Sigmoid!while/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mulMul while/lstm_cell_54/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_54/ReluRelu!while/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_1Mulwhile/lstm_cell_54/Sigmoid:y:0%while/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/add_1AddV2while/lstm_cell_54/mul:z:0while/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_54/Sigmoid_2Sigmoid!while/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_54/Relu_1Reluwhile/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_54/mul_2Mul while/lstm_cell_54/Sigmoid_2:y:0'while/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_54/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_54/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_54/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_54/BiasAdd/ReadVariableOp)^while/lstm_cell_54/MatMul/ReadVariableOp+^while/lstm_cell_54/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_54_biasadd_readvariableop_resource4while_lstm_cell_54_biasadd_readvariableop_resource_0"l
3while_lstm_cell_54_matmul_1_readvariableop_resource5while_lstm_cell_54_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_54_matmul_readvariableop_resource3while_lstm_cell_54_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_54/BiasAdd/ReadVariableOp)while/lstm_cell_54/BiasAdd/ReadVariableOp2T
(while/lstm_cell_54/MatMul/ReadVariableOp(while/lstm_cell_54/MatMul/ReadVariableOp2X
*while/lstm_cell_54/MatMul_1/ReadVariableOp*while/lstm_cell_54/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_202_layer_call_fn_342811
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_339696|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
µ
?
while_cond_339276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339276___redundant_placeholder04
0while_while_cond_339276___redundant_placeholder14
0while_while_cond_339276___redundant_placeholder24
0while_while_cond_339276___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_201_layer_call_and_return_conditional_losses_339155

inputs&
lstm_cell_54_339073:	&
lstm_cell_54_339075:	d"
lstm_cell_54_339077:	
identity˘$lstm_cell_54/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskġ
$lstm_cell_54/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_54_339073lstm_cell_54_339075lstm_cell_54_339077*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339072n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_54_339073lstm_cell_54_339075lstm_cell_54_339077*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339086*
condR
while_cond_339085*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙du
NoOpNoOp%^lstm_cell_54/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_54/StatefulPartitionedCall$lstm_cell_54/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_201_layer_call_fn_342217

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_341050s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş

(sequential_67_lstm_202_while_cond_338775J
Fsequential_67_lstm_202_while_sequential_67_lstm_202_while_loop_counterP
Lsequential_67_lstm_202_while_sequential_67_lstm_202_while_maximum_iterations,
(sequential_67_lstm_202_while_placeholder.
*sequential_67_lstm_202_while_placeholder_1.
*sequential_67_lstm_202_while_placeholder_2.
*sequential_67_lstm_202_while_placeholder_3L
Hsequential_67_lstm_202_while_less_sequential_67_lstm_202_strided_slice_1b
^sequential_67_lstm_202_while_sequential_67_lstm_202_while_cond_338775___redundant_placeholder0b
^sequential_67_lstm_202_while_sequential_67_lstm_202_while_cond_338775___redundant_placeholder1b
^sequential_67_lstm_202_while_sequential_67_lstm_202_while_cond_338775___redundant_placeholder2b
^sequential_67_lstm_202_while_sequential_67_lstm_202_while_cond_338775___redundant_placeholder3)
%sequential_67_lstm_202_while_identity
?
!sequential_67/lstm_202/while/LessLess(sequential_67_lstm_202_while_placeholderHsequential_67_lstm_202_while_less_sequential_67_lstm_202_strided_slice_1*
T0*
_output_shapes
: y
%sequential_67/lstm_202/while/IdentityIdentity%sequential_67/lstm_202/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_67_lstm_202_while_identity.sequential_67/lstm_202/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_343936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343936___redundant_placeholder04
0while_while_cond_343936___redundant_placeholder14
0while_while_cond_343936___redundant_placeholder24
0while_while_cond_343936___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_342561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342561___redundant_placeholder04
0while_while_cond_342561___redundant_placeholder14
0while_while_cond_342561___redundant_placeholder24
0while_while_cond_342561___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
ö
³
)__inference_lstm_203_layer_call_fn_343438

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
âJ

D__inference_lstm_202_layer_call_and_return_conditional_losses_343119
inputs_0>
+lstm_cell_55_matmul_readvariableop_resource:	dÈ@
-lstm_cell_55_matmul_1_readvariableop_resource:	2È;
,lstm_cell_55_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_55/BiasAdd/ReadVariableOp˘"lstm_cell_55/MatMul/ReadVariableOp˘$lstm_cell_55/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_55/MatMul/ReadVariableOpReadVariableOp+lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_55/MatMulMatMulstrided_slice_2:output:0*lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_55/MatMul_1MatMulzeros:output:0,lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_55/addAddV2lstm_cell_55/MatMul:product:0lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_55/BiasAddBiasAddlstm_cell_55/add:z:0+lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_55/splitSplit%lstm_cell_55/split/split_dim:output:0lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_55/SigmoidSigmoidlstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_1Sigmoidlstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_55/mulMullstm_cell_55/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_55/ReluRelulstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_1Mullstm_cell_55/Sigmoid:y:0lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_55/add_1AddV2lstm_cell_55/mul:z:0lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_2Sigmoidlstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_55/Relu_1Relulstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_2Mullstm_cell_55/Sigmoid_2:y:0!lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_55_matmul_readvariableop_resource-lstm_cell_55_matmul_1_readvariableop_resource,lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343035*
condR
while_cond_343034*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_55/BiasAdd/ReadVariableOp#^lstm_cell_55/MatMul/ReadVariableOp%^lstm_cell_55/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_55/BiasAdd/ReadVariableOp#lstm_cell_55/BiasAdd/ReadVariableOp2H
"lstm_cell_55/MatMul/ReadVariableOp"lstm_cell_55/MatMul/ReadVariableOp2L
$lstm_cell_55/MatMul_1/ReadVariableOp$lstm_cell_55/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
²

÷
lstm_201_while_cond_341377.
*lstm_201_while_lstm_201_while_loop_counter4
0lstm_201_while_lstm_201_while_maximum_iterations
lstm_201_while_placeholder 
lstm_201_while_placeholder_1 
lstm_201_while_placeholder_2 
lstm_201_while_placeholder_30
,lstm_201_while_less_lstm_201_strided_slice_1F
Blstm_201_while_lstm_201_while_cond_341377___redundant_placeholder0F
Blstm_201_while_lstm_201_while_cond_341377___redundant_placeholder1F
Blstm_201_while_lstm_201_while_cond_341377___redundant_placeholder2F
Blstm_201_while_lstm_201_while_cond_341377___redundant_placeholder3
lstm_201_while_identity

lstm_201/while/LessLesslstm_201_while_placeholder,lstm_201_while_less_lstm_201_strided_slice_1*
T0*
_output_shapes
: ]
lstm_201/while/IdentityIdentitylstm_201/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_201_while_identity lstm_201/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
è
ó
-__inference_lstm_cell_56_layer_call_fn_344270

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
Ŭ

H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_344138

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
ÔJ

D__inference_lstm_203_layer_call_and_return_conditional_losses_343592
inputs_0=
+lstm_cell_56_matmul_readvariableop_resource:2(?
-lstm_cell_56_matmul_1_readvariableop_resource:
(:
,lstm_cell_56_biasadd_readvariableop_resource:(
identity˘#lstm_cell_56/BiasAdd/ReadVariableOp˘"lstm_cell_56/MatMul/ReadVariableOp˘$lstm_cell_56/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343508*
condR
while_cond_343507*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ó

H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_344302

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
?
ó
I__inference_sequential_67_layer_call_and_return_conditional_losses_341200
lstm_201_input"
lstm_201_341173:	"
lstm_201_341175:	d
lstm_201_341177:	"
lstm_202_341180:	dÈ"
lstm_202_341182:	2È
lstm_202_341184:	È!
lstm_203_341187:2(!
lstm_203_341189:
(
lstm_203_341191:(!
dense_67_341194:

dense_67_341196:
identity˘ dense_67/StatefulPartitionedCall˘ lstm_201/StatefulPartitionedCall˘ lstm_202/StatefulPartitionedCall˘ lstm_203/StatefulPartitionedCall
 lstm_201/StatefulPartitionedCallStatefulPartitionedCalllstm_201_inputlstm_201_341173lstm_201_341175lstm_201_341177*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_201_layer_call_and_return_conditional_losses_340204Ş
 lstm_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_201/StatefulPartitionedCall:output:0lstm_202_341180lstm_202_341182lstm_202_341184*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_340354Ĥ
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_202/StatefulPartitionedCall:output:0lstm_203_341187lstm_203_341189lstm_203_341191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340504
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)lstm_203/StatefulPartitionedCall:output:0dense_67_341194dense_67_341196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_67_layer_call_and_return_conditional_losses_340522x
IdentityIdentity)dense_67/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_67/StatefulPartitionedCall!^lstm_201/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 lstm_201/StatefulPartitionedCall lstm_201/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_201_input
¤J

D__inference_lstm_201_layer_call_and_return_conditional_losses_342646

inputs>
+lstm_cell_54_matmul_readvariableop_resource:	@
-lstm_cell_54_matmul_1_readvariableop_resource:	d;
,lstm_cell_54_biasadd_readvariableop_resource:	
identity˘#lstm_cell_54/BiasAdd/ReadVariableOp˘"lstm_cell_54/MatMul/ReadVariableOp˘$lstm_cell_54/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_54/MatMul/ReadVariableOpReadVariableOp+lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_54/MatMulMatMulstrided_slice_2:output:0*lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_54/MatMul_1MatMulzeros:output:0,lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_54/addAddV2lstm_cell_54/MatMul:product:0lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_54/BiasAddBiasAddlstm_cell_54/add:z:0+lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_54/splitSplit%lstm_cell_54/split/split_dim:output:0lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_54/SigmoidSigmoidlstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_1Sigmoidlstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_54/mulMullstm_cell_54/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_54/ReluRelulstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_1Mullstm_cell_54/Sigmoid:y:0lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_54/add_1AddV2lstm_cell_54/mul:z:0lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_2Sigmoidlstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_54/Relu_1Relulstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_2Mullstm_cell_54/Sigmoid_2:y:0!lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_54_matmul_readvariableop_resource-lstm_cell_54_matmul_1_readvariableop_resource,lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342562*
condR
while_cond_342561*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_54/BiasAdd/ReadVariableOp#^lstm_cell_54/MatMul/ReadVariableOp%^lstm_cell_54/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_54/BiasAdd/ReadVariableOp#lstm_cell_54/BiasAdd/ReadVariableOp2H
"lstm_cell_54/MatMul/ReadVariableOp"lstm_cell_54/MatMul/ReadVariableOp2L
$lstm_cell_54/MatMul_1/ReadVariableOp$lstm_cell_54/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_202_layer_call_and_return_conditional_losses_339696

inputs&
lstm_cell_55_339614:	dÈ&
lstm_cell_55_339616:	2È"
lstm_cell_55_339618:	È
identity˘$lstm_cell_55/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskġ
$lstm_cell_55/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_55_339614lstm_cell_55_339616lstm_cell_55_339618*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339568n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_55_339614lstm_cell_55_339616lstm_cell_55_339618*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339627*
condR
while_cond_339626*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2u
NoOpNoOp%^lstm_cell_55/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_55/StatefulPartitionedCall$lstm_cell_55/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_340801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_55_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_55_biasadd_readvariableop_resource:	È˘)while/lstm_cell_55/BiasAdd/ReadVariableOp˘(while/lstm_cell_55/MatMul/ReadVariableOp˘*while/lstm_cell_55/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_55/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_55/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_55/addAddV2#while/lstm_cell_55/MatMul:product:0%while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_55/BiasAddBiasAddwhile/lstm_cell_55/add:z:01while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_55/splitSplit+while/lstm_cell_55/split/split_dim:output:0#while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_55/SigmoidSigmoid!while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_1Sigmoid!while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mulMul while/lstm_cell_55/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_55/ReluRelu!while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_1Mulwhile/lstm_cell_55/Sigmoid:y:0%while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/add_1AddV2while/lstm_cell_55/mul:z:0while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_2Sigmoid!while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_55/Relu_1Reluwhile/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_2Mul while/lstm_cell_55/Sigmoid_2:y:0'while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_55/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_55/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_55/BiasAdd/ReadVariableOp)^while/lstm_cell_55/MatMul/ReadVariableOp+^while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_55_biasadd_readvariableop_resource4while_lstm_cell_55_biasadd_readvariableop_resource_0"l
3while_lstm_cell_55_matmul_1_readvariableop_resource5while_lstm_cell_55_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_55_matmul_readvariableop_resource3while_lstm_cell_55_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_55/BiasAdd/ReadVariableOp)while/lstm_cell_55/BiasAdd/ReadVariableOp2T
(while/lstm_cell_55/MatMul/ReadVariableOp(while/lstm_cell_55/MatMul/ReadVariableOp2X
*while/lstm_cell_55/MatMul_1/ReadVariableOp*while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
ş

(sequential_67_lstm_201_while_cond_338636J
Fsequential_67_lstm_201_while_sequential_67_lstm_201_while_loop_counterP
Lsequential_67_lstm_201_while_sequential_67_lstm_201_while_maximum_iterations,
(sequential_67_lstm_201_while_placeholder.
*sequential_67_lstm_201_while_placeholder_1.
*sequential_67_lstm_201_while_placeholder_2.
*sequential_67_lstm_201_while_placeholder_3L
Hsequential_67_lstm_201_while_less_sequential_67_lstm_201_strided_slice_1b
^sequential_67_lstm_201_while_sequential_67_lstm_201_while_cond_338636___redundant_placeholder0b
^sequential_67_lstm_201_while_sequential_67_lstm_201_while_cond_338636___redundant_placeholder1b
^sequential_67_lstm_201_while_sequential_67_lstm_201_while_cond_338636___redundant_placeholder2b
^sequential_67_lstm_201_while_sequential_67_lstm_201_while_cond_338636___redundant_placeholder3)
%sequential_67_lstm_201_while_identity
?
!sequential_67/lstm_201/while/LessLess(sequential_67_lstm_201_while_placeholderHsequential_67_lstm_201_while_less_sequential_67_lstm_201_strided_slice_1*
T0*
_output_shapes
: y
%sequential_67/lstm_201/while/IdentityIdentity%sequential_67/lstm_201/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_67_lstm_201_while_identity.sequential_67/lstm_201/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
˙µ
Á
!__inference__wrapped_model_339005
lstm_201_inputU
Bsequential_67_lstm_201_lstm_cell_54_matmul_readvariableop_resource:	W
Dsequential_67_lstm_201_lstm_cell_54_matmul_1_readvariableop_resource:	dR
Csequential_67_lstm_201_lstm_cell_54_biasadd_readvariableop_resource:	U
Bsequential_67_lstm_202_lstm_cell_55_matmul_readvariableop_resource:	dÈW
Dsequential_67_lstm_202_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈR
Csequential_67_lstm_202_lstm_cell_55_biasadd_readvariableop_resource:	ÈT
Bsequential_67_lstm_203_lstm_cell_56_matmul_readvariableop_resource:2(V
Dsequential_67_lstm_203_lstm_cell_56_matmul_1_readvariableop_resource:
(Q
Csequential_67_lstm_203_lstm_cell_56_biasadd_readvariableop_resource:(G
5sequential_67_dense_67_matmul_readvariableop_resource:
D
6sequential_67_dense_67_biasadd_readvariableop_resource:
identity˘-sequential_67/dense_67/BiasAdd/ReadVariableOp˘,sequential_67/dense_67/MatMul/ReadVariableOp˘:sequential_67/lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp˘9sequential_67/lstm_201/lstm_cell_54/MatMul/ReadVariableOp˘;sequential_67/lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp˘sequential_67/lstm_201/while˘:sequential_67/lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp˘9sequential_67/lstm_202/lstm_cell_55/MatMul/ReadVariableOp˘;sequential_67/lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp˘sequential_67/lstm_202/while˘:sequential_67/lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp˘9sequential_67/lstm_203/lstm_cell_56/MatMul/ReadVariableOp˘;sequential_67/lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp˘sequential_67/lstm_203/whileZ
sequential_67/lstm_201/ShapeShapelstm_201_input*
T0*
_output_shapes
:t
*sequential_67/lstm_201/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_67/lstm_201/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_67/lstm_201/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_67/lstm_201/strided_sliceStridedSlice%sequential_67/lstm_201/Shape:output:03sequential_67/lstm_201/strided_slice/stack:output:05sequential_67/lstm_201/strided_slice/stack_1:output:05sequential_67/lstm_201/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_67/lstm_201/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_67/lstm_201/zeros/packedPack-sequential_67/lstm_201/strided_slice:output:0.sequential_67/lstm_201/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_67/lstm_201/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_67/lstm_201/zerosFill,sequential_67/lstm_201/zeros/packed:output:0+sequential_67/lstm_201/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_67/lstm_201/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_67/lstm_201/zeros_1/packedPack-sequential_67/lstm_201/strided_slice:output:00sequential_67/lstm_201/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_67/lstm_201/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_67/lstm_201/zeros_1Fill.sequential_67/lstm_201/zeros_1/packed:output:0-sequential_67/lstm_201/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_67/lstm_201/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_67/lstm_201/transpose	Transposelstm_201_input.sequential_67/lstm_201/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_67/lstm_201/Shape_1Shape$sequential_67/lstm_201/transpose:y:0*
T0*
_output_shapes
:v
,sequential_67/lstm_201/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_201/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_67/lstm_201/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_67/lstm_201/strided_slice_1StridedSlice'sequential_67/lstm_201/Shape_1:output:05sequential_67/lstm_201/strided_slice_1/stack:output:07sequential_67/lstm_201/strided_slice_1/stack_1:output:07sequential_67/lstm_201/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_67/lstm_201/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_67/lstm_201/TensorArrayV2TensorListReserve;sequential_67/lstm_201/TensorArrayV2/element_shape:output:0/sequential_67/lstm_201/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_67/lstm_201/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_67/lstm_201/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_67/lstm_201/transpose:y:0Usequential_67/lstm_201/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_67/lstm_201/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_201/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_67/lstm_201/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_67/lstm_201/strided_slice_2StridedSlice$sequential_67/lstm_201/transpose:y:05sequential_67/lstm_201/strided_slice_2/stack:output:07sequential_67/lstm_201/strided_slice_2/stack_1:output:07sequential_67/lstm_201/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_67/lstm_201/lstm_cell_54/MatMul/ReadVariableOpReadVariableOpBsequential_67_lstm_201_lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_67/lstm_201/lstm_cell_54/MatMulMatMul/sequential_67/lstm_201/strided_slice_2:output:0Asequential_67/lstm_201/lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_67/lstm_201/lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOpDsequential_67_lstm_201_lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_67/lstm_201/lstm_cell_54/MatMul_1MatMul%sequential_67/lstm_201/zeros:output:0Csequential_67/lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_67/lstm_201/lstm_cell_54/addAddV24sequential_67/lstm_201/lstm_cell_54/MatMul:product:06sequential_67/lstm_201/lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_67/lstm_201/lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOpCsequential_67_lstm_201_lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_67/lstm_201/lstm_cell_54/BiasAddBiasAdd+sequential_67/lstm_201/lstm_cell_54/add:z:0Bsequential_67/lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_67/lstm_201/lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_67/lstm_201/lstm_cell_54/splitSplit<sequential_67/lstm_201/lstm_cell_54/split/split_dim:output:04sequential_67/lstm_201/lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_67/lstm_201/lstm_cell_54/SigmoidSigmoid2sequential_67/lstm_201/lstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_67/lstm_201/lstm_cell_54/Sigmoid_1Sigmoid2sequential_67/lstm_201/lstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_67/lstm_201/lstm_cell_54/mulMul1sequential_67/lstm_201/lstm_cell_54/Sigmoid_1:y:0'sequential_67/lstm_201/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_67/lstm_201/lstm_cell_54/ReluRelu2sequential_67/lstm_201/lstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_67/lstm_201/lstm_cell_54/mul_1Mul/sequential_67/lstm_201/lstm_cell_54/Sigmoid:y:06sequential_67/lstm_201/lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_67/lstm_201/lstm_cell_54/add_1AddV2+sequential_67/lstm_201/lstm_cell_54/mul:z:0-sequential_67/lstm_201/lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_67/lstm_201/lstm_cell_54/Sigmoid_2Sigmoid2sequential_67/lstm_201/lstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_67/lstm_201/lstm_cell_54/Relu_1Relu-sequential_67/lstm_201/lstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_67/lstm_201/lstm_cell_54/mul_2Mul1sequential_67/lstm_201/lstm_cell_54/Sigmoid_2:y:08sequential_67/lstm_201/lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_67/lstm_201/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_67/lstm_201/TensorArrayV2_1TensorListReserve=sequential_67/lstm_201/TensorArrayV2_1/element_shape:output:0/sequential_67/lstm_201/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_67/lstm_201/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_67/lstm_201/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_67/lstm_201/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_67/lstm_201/whileWhile2sequential_67/lstm_201/while/loop_counter:output:08sequential_67/lstm_201/while/maximum_iterations:output:0$sequential_67/lstm_201/time:output:0/sequential_67/lstm_201/TensorArrayV2_1:handle:0%sequential_67/lstm_201/zeros:output:0'sequential_67/lstm_201/zeros_1:output:0/sequential_67/lstm_201/strided_slice_1:output:0Nsequential_67/lstm_201/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_67_lstm_201_lstm_cell_54_matmul_readvariableop_resourceDsequential_67_lstm_201_lstm_cell_54_matmul_1_readvariableop_resourceCsequential_67_lstm_201_lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_67_lstm_201_while_body_338637*4
cond,R*
(sequential_67_lstm_201_while_cond_338636*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_67/lstm_201/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_67/lstm_201/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_67/lstm_201/while:output:3Psequential_67/lstm_201/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_67/lstm_201/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_67/lstm_201/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_201/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_67/lstm_201/strided_slice_3StridedSliceBsequential_67/lstm_201/TensorArrayV2Stack/TensorListStack:tensor:05sequential_67/lstm_201/strided_slice_3/stack:output:07sequential_67/lstm_201/strided_slice_3/stack_1:output:07sequential_67/lstm_201/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_67/lstm_201/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_67/lstm_201/transpose_1	TransposeBsequential_67/lstm_201/TensorArrayV2Stack/TensorListStack:tensor:00sequential_67/lstm_201/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_67/lstm_201/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_67/lstm_202/ShapeShape&sequential_67/lstm_201/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_67/lstm_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_67/lstm_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_67/lstm_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_67/lstm_202/strided_sliceStridedSlice%sequential_67/lstm_202/Shape:output:03sequential_67/lstm_202/strided_slice/stack:output:05sequential_67/lstm_202/strided_slice/stack_1:output:05sequential_67/lstm_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_67/lstm_202/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_67/lstm_202/zeros/packedPack-sequential_67/lstm_202/strided_slice:output:0.sequential_67/lstm_202/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_67/lstm_202/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_67/lstm_202/zerosFill,sequential_67/lstm_202/zeros/packed:output:0+sequential_67/lstm_202/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_67/lstm_202/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_67/lstm_202/zeros_1/packedPack-sequential_67/lstm_202/strided_slice:output:00sequential_67/lstm_202/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_67/lstm_202/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_67/lstm_202/zeros_1Fill.sequential_67/lstm_202/zeros_1/packed:output:0-sequential_67/lstm_202/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_67/lstm_202/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_67/lstm_202/transpose	Transpose&sequential_67/lstm_201/transpose_1:y:0.sequential_67/lstm_202/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_67/lstm_202/Shape_1Shape$sequential_67/lstm_202/transpose:y:0*
T0*
_output_shapes
:v
,sequential_67/lstm_202/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_202/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_67/lstm_202/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_67/lstm_202/strided_slice_1StridedSlice'sequential_67/lstm_202/Shape_1:output:05sequential_67/lstm_202/strided_slice_1/stack:output:07sequential_67/lstm_202/strided_slice_1/stack_1:output:07sequential_67/lstm_202/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_67/lstm_202/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_67/lstm_202/TensorArrayV2TensorListReserve;sequential_67/lstm_202/TensorArrayV2/element_shape:output:0/sequential_67/lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_67/lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_67/lstm_202/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_67/lstm_202/transpose:y:0Usequential_67/lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_67/lstm_202/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_202/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_67/lstm_202/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_67/lstm_202/strided_slice_2StridedSlice$sequential_67/lstm_202/transpose:y:05sequential_67/lstm_202/strided_slice_2/stack:output:07sequential_67/lstm_202/strided_slice_2/stack_1:output:07sequential_67/lstm_202/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_67/lstm_202/lstm_cell_55/MatMul/ReadVariableOpReadVariableOpBsequential_67_lstm_202_lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_67/lstm_202/lstm_cell_55/MatMulMatMul/sequential_67/lstm_202/strided_slice_2:output:0Asequential_67/lstm_202/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_67/lstm_202/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOpDsequential_67_lstm_202_lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_67/lstm_202/lstm_cell_55/MatMul_1MatMul%sequential_67/lstm_202/zeros:output:0Csequential_67/lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_67/lstm_202/lstm_cell_55/addAddV24sequential_67/lstm_202/lstm_cell_55/MatMul:product:06sequential_67/lstm_202/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_67/lstm_202/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOpCsequential_67_lstm_202_lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_67/lstm_202/lstm_cell_55/BiasAddBiasAdd+sequential_67/lstm_202/lstm_cell_55/add:z:0Bsequential_67/lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_67/lstm_202/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_67/lstm_202/lstm_cell_55/splitSplit<sequential_67/lstm_202/lstm_cell_55/split/split_dim:output:04sequential_67/lstm_202/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_67/lstm_202/lstm_cell_55/SigmoidSigmoid2sequential_67/lstm_202/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_67/lstm_202/lstm_cell_55/Sigmoid_1Sigmoid2sequential_67/lstm_202/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_67/lstm_202/lstm_cell_55/mulMul1sequential_67/lstm_202/lstm_cell_55/Sigmoid_1:y:0'sequential_67/lstm_202/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_67/lstm_202/lstm_cell_55/ReluRelu2sequential_67/lstm_202/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_67/lstm_202/lstm_cell_55/mul_1Mul/sequential_67/lstm_202/lstm_cell_55/Sigmoid:y:06sequential_67/lstm_202/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_67/lstm_202/lstm_cell_55/add_1AddV2+sequential_67/lstm_202/lstm_cell_55/mul:z:0-sequential_67/lstm_202/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_67/lstm_202/lstm_cell_55/Sigmoid_2Sigmoid2sequential_67/lstm_202/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_67/lstm_202/lstm_cell_55/Relu_1Relu-sequential_67/lstm_202/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_67/lstm_202/lstm_cell_55/mul_2Mul1sequential_67/lstm_202/lstm_cell_55/Sigmoid_2:y:08sequential_67/lstm_202/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_67/lstm_202/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_67/lstm_202/TensorArrayV2_1TensorListReserve=sequential_67/lstm_202/TensorArrayV2_1/element_shape:output:0/sequential_67/lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_67/lstm_202/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_67/lstm_202/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_67/lstm_202/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_67/lstm_202/whileWhile2sequential_67/lstm_202/while/loop_counter:output:08sequential_67/lstm_202/while/maximum_iterations:output:0$sequential_67/lstm_202/time:output:0/sequential_67/lstm_202/TensorArrayV2_1:handle:0%sequential_67/lstm_202/zeros:output:0'sequential_67/lstm_202/zeros_1:output:0/sequential_67/lstm_202/strided_slice_1:output:0Nsequential_67/lstm_202/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_67_lstm_202_lstm_cell_55_matmul_readvariableop_resourceDsequential_67_lstm_202_lstm_cell_55_matmul_1_readvariableop_resourceCsequential_67_lstm_202_lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_67_lstm_202_while_body_338776*4
cond,R*
(sequential_67_lstm_202_while_cond_338775*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_67/lstm_202/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_67/lstm_202/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_67/lstm_202/while:output:3Psequential_67/lstm_202/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_67/lstm_202/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_67/lstm_202/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_202/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_67/lstm_202/strided_slice_3StridedSliceBsequential_67/lstm_202/TensorArrayV2Stack/TensorListStack:tensor:05sequential_67/lstm_202/strided_slice_3/stack:output:07sequential_67/lstm_202/strided_slice_3/stack_1:output:07sequential_67/lstm_202/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_67/lstm_202/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_67/lstm_202/transpose_1	TransposeBsequential_67/lstm_202/TensorArrayV2Stack/TensorListStack:tensor:00sequential_67/lstm_202/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_67/lstm_202/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_67/lstm_203/ShapeShape&sequential_67/lstm_202/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_67/lstm_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_67/lstm_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_67/lstm_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_67/lstm_203/strided_sliceStridedSlice%sequential_67/lstm_203/Shape:output:03sequential_67/lstm_203/strided_slice/stack:output:05sequential_67/lstm_203/strided_slice/stack_1:output:05sequential_67/lstm_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_67/lstm_203/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_67/lstm_203/zeros/packedPack-sequential_67/lstm_203/strided_slice:output:0.sequential_67/lstm_203/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_67/lstm_203/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_67/lstm_203/zerosFill,sequential_67/lstm_203/zeros/packed:output:0+sequential_67/lstm_203/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_67/lstm_203/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_67/lstm_203/zeros_1/packedPack-sequential_67/lstm_203/strided_slice:output:00sequential_67/lstm_203/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_67/lstm_203/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_67/lstm_203/zeros_1Fill.sequential_67/lstm_203/zeros_1/packed:output:0-sequential_67/lstm_203/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_67/lstm_203/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_67/lstm_203/transpose	Transpose&sequential_67/lstm_202/transpose_1:y:0.sequential_67/lstm_203/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_67/lstm_203/Shape_1Shape$sequential_67/lstm_203/transpose:y:0*
T0*
_output_shapes
:v
,sequential_67/lstm_203/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_203/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_67/lstm_203/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_67/lstm_203/strided_slice_1StridedSlice'sequential_67/lstm_203/Shape_1:output:05sequential_67/lstm_203/strided_slice_1/stack:output:07sequential_67/lstm_203/strided_slice_1/stack_1:output:07sequential_67/lstm_203/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_67/lstm_203/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_67/lstm_203/TensorArrayV2TensorListReserve;sequential_67/lstm_203/TensorArrayV2/element_shape:output:0/sequential_67/lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_67/lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_67/lstm_203/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_67/lstm_203/transpose:y:0Usequential_67/lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_67/lstm_203/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_203/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_67/lstm_203/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_67/lstm_203/strided_slice_2StridedSlice$sequential_67/lstm_203/transpose:y:05sequential_67/lstm_203/strided_slice_2/stack:output:07sequential_67/lstm_203/strided_slice_2/stack_1:output:07sequential_67/lstm_203/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_67/lstm_203/lstm_cell_56/MatMul/ReadVariableOpReadVariableOpBsequential_67_lstm_203_lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_67/lstm_203/lstm_cell_56/MatMulMatMul/sequential_67/lstm_203/strided_slice_2:output:0Asequential_67/lstm_203/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_67/lstm_203/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOpDsequential_67_lstm_203_lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_67/lstm_203/lstm_cell_56/MatMul_1MatMul%sequential_67/lstm_203/zeros:output:0Csequential_67/lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_67/lstm_203/lstm_cell_56/addAddV24sequential_67/lstm_203/lstm_cell_56/MatMul:product:06sequential_67/lstm_203/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_67/lstm_203/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOpCsequential_67_lstm_203_lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_67/lstm_203/lstm_cell_56/BiasAddBiasAdd+sequential_67/lstm_203/lstm_cell_56/add:z:0Bsequential_67/lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_67/lstm_203/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_67/lstm_203/lstm_cell_56/splitSplit<sequential_67/lstm_203/lstm_cell_56/split/split_dim:output:04sequential_67/lstm_203/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_67/lstm_203/lstm_cell_56/SigmoidSigmoid2sequential_67/lstm_203/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_67/lstm_203/lstm_cell_56/Sigmoid_1Sigmoid2sequential_67/lstm_203/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_67/lstm_203/lstm_cell_56/mulMul1sequential_67/lstm_203/lstm_cell_56/Sigmoid_1:y:0'sequential_67/lstm_203/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_67/lstm_203/lstm_cell_56/ReluRelu2sequential_67/lstm_203/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_67/lstm_203/lstm_cell_56/mul_1Mul/sequential_67/lstm_203/lstm_cell_56/Sigmoid:y:06sequential_67/lstm_203/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_67/lstm_203/lstm_cell_56/add_1AddV2+sequential_67/lstm_203/lstm_cell_56/mul:z:0-sequential_67/lstm_203/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_67/lstm_203/lstm_cell_56/Sigmoid_2Sigmoid2sequential_67/lstm_203/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_67/lstm_203/lstm_cell_56/Relu_1Relu-sequential_67/lstm_203/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_67/lstm_203/lstm_cell_56/mul_2Mul1sequential_67/lstm_203/lstm_cell_56/Sigmoid_2:y:08sequential_67/lstm_203/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_67/lstm_203/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_67/lstm_203/TensorArrayV2_1TensorListReserve=sequential_67/lstm_203/TensorArrayV2_1/element_shape:output:0/sequential_67/lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_67/lstm_203/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_67/lstm_203/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_67/lstm_203/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_67/lstm_203/whileWhile2sequential_67/lstm_203/while/loop_counter:output:08sequential_67/lstm_203/while/maximum_iterations:output:0$sequential_67/lstm_203/time:output:0/sequential_67/lstm_203/TensorArrayV2_1:handle:0%sequential_67/lstm_203/zeros:output:0'sequential_67/lstm_203/zeros_1:output:0/sequential_67/lstm_203/strided_slice_1:output:0Nsequential_67/lstm_203/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_67_lstm_203_lstm_cell_56_matmul_readvariableop_resourceDsequential_67_lstm_203_lstm_cell_56_matmul_1_readvariableop_resourceCsequential_67_lstm_203_lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_67_lstm_203_while_body_338915*4
cond,R*
(sequential_67_lstm_203_while_cond_338914*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_67/lstm_203/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_67/lstm_203/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_67/lstm_203/while:output:3Psequential_67/lstm_203/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_67/lstm_203/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_67/lstm_203/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_67/lstm_203/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_67/lstm_203/strided_slice_3StridedSliceBsequential_67/lstm_203/TensorArrayV2Stack/TensorListStack:tensor:05sequential_67/lstm_203/strided_slice_3/stack:output:07sequential_67/lstm_203/strided_slice_3/stack_1:output:07sequential_67/lstm_203/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_67/lstm_203/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_67/lstm_203/transpose_1	TransposeBsequential_67/lstm_203/TensorArrayV2Stack/TensorListStack:tensor:00sequential_67/lstm_203/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_67/lstm_203/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_67/dense_67/MatMul/ReadVariableOpReadVariableOp5sequential_67_dense_67_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_67/dense_67/MatMulMatMul/sequential_67/lstm_203/strided_slice_3:output:04sequential_67/dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_67/dense_67/BiasAdd/ReadVariableOpReadVariableOp6sequential_67_dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_67/dense_67/BiasAddBiasAdd'sequential_67/dense_67/MatMul:product:05sequential_67/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_67/dense_67/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_67/dense_67/BiasAdd/ReadVariableOp-^sequential_67/dense_67/MatMul/ReadVariableOp;^sequential_67/lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp:^sequential_67/lstm_201/lstm_cell_54/MatMul/ReadVariableOp<^sequential_67/lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp^sequential_67/lstm_201/while;^sequential_67/lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp:^sequential_67/lstm_202/lstm_cell_55/MatMul/ReadVariableOp<^sequential_67/lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp^sequential_67/lstm_202/while;^sequential_67/lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp:^sequential_67/lstm_203/lstm_cell_56/MatMul/ReadVariableOp<^sequential_67/lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp^sequential_67/lstm_203/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_67/dense_67/BiasAdd/ReadVariableOp-sequential_67/dense_67/BiasAdd/ReadVariableOp2\
,sequential_67/dense_67/MatMul/ReadVariableOp,sequential_67/dense_67/MatMul/ReadVariableOp2x
:sequential_67/lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp:sequential_67/lstm_201/lstm_cell_54/BiasAdd/ReadVariableOp2v
9sequential_67/lstm_201/lstm_cell_54/MatMul/ReadVariableOp9sequential_67/lstm_201/lstm_cell_54/MatMul/ReadVariableOp2z
;sequential_67/lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp;sequential_67/lstm_201/lstm_cell_54/MatMul_1/ReadVariableOp2<
sequential_67/lstm_201/whilesequential_67/lstm_201/while2x
:sequential_67/lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp:sequential_67/lstm_202/lstm_cell_55/BiasAdd/ReadVariableOp2v
9sequential_67/lstm_202/lstm_cell_55/MatMul/ReadVariableOp9sequential_67/lstm_202/lstm_cell_55/MatMul/ReadVariableOp2z
;sequential_67/lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp;sequential_67/lstm_202/lstm_cell_55/MatMul_1/ReadVariableOp2<
sequential_67/lstm_202/whilesequential_67/lstm_202/while2x
:sequential_67/lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp:sequential_67/lstm_203/lstm_cell_56/BiasAdd/ReadVariableOp2v
9sequential_67/lstm_203/lstm_cell_56/MatMul/ReadVariableOp9sequential_67/lstm_203/lstm_cell_56/MatMul/ReadVariableOp2z
;sequential_67/lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp;sequential_67/lstm_203/lstm_cell_56/MatMul_1/ReadVariableOp2<
sequential_67/lstm_203/whilesequential_67/lstm_203/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_201_input
²

÷
lstm_203_while_cond_341655.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_30
,lstm_203_while_less_lstm_203_strided_slice_1F
Blstm_203_while_lstm_203_while_cond_341655___redundant_placeholder0F
Blstm_203_while_lstm_203_while_cond_341655___redundant_placeholder1F
Blstm_203_while_lstm_203_while_cond_341655___redundant_placeholder2F
Blstm_203_while_lstm_203_while_cond_341655___redundant_placeholder3
lstm_203_while_identity

lstm_203/while/LessLesslstm_203_while_placeholder,lstm_203_while_less_lstm_203_strided_slice_1*
T0*
_output_shapes
: ]
lstm_203/while/IdentityIdentitylstm_203/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_203_while_identity lstm_203/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
à"
Ŭ
while_body_339977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_56_340001_0:2(-
while_lstm_cell_56_340003_0:
()
while_lstm_cell_56_340005_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_56_340001:2(+
while_lstm_cell_56_340003:
('
while_lstm_cell_56_340005:(˘*while/lstm_cell_56/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56_340001_0while_lstm_cell_56_340003_0while_lstm_cell_56_340005_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_339918Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_56/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_56/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_56/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_56_340001while_lstm_cell_56_340001_0"8
while_lstm_cell_56_340003while_lstm_cell_56_340003_0"8
while_lstm_cell_56_340005while_lstm_cell_56_340005_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_56/StatefulPartitionedCall*while/lstm_cell_56/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
J

D__inference_lstm_203_layer_call_and_return_conditional_losses_344021

inputs=
+lstm_cell_56_matmul_readvariableop_resource:2(?
-lstm_cell_56_matmul_1_readvariableop_resource:
(:
,lstm_cell_56_biasadd_readvariableop_resource:(
identity˘#lstm_cell_56/BiasAdd/ReadVariableOp˘"lstm_cell_56/MatMul/ReadVariableOp˘$lstm_cell_56/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343937*
condR
while_cond_343936*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
˙7
Ê
while_body_340636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_56_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_56_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_56_matmul_readvariableop_resource:2(E
3while_lstm_cell_56_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_56_biasadd_readvariableop_resource:(˘)while/lstm_cell_56/BiasAdd/ReadVariableOp˘(while/lstm_cell_56/MatMul/ReadVariableOp˘*while/lstm_cell_56/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ŭ

H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_344106

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1

ĥ
)__inference_lstm_202_layer_call_fn_342833

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_202_layer_call_and_return_conditional_losses_340885s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_343650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343650___redundant_placeholder04
0while_while_cond_343650___redundant_placeholder14
0while_while_cond_343650___redundant_placeholder24
0while_while_cond_343650___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ç¤

"__inference__traced_restore_344607
file_prefix2
 assignvariableop_dense_67_kernel:
.
 assignvariableop_1_dense_67_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_201_lstm_cell_201_kernel:	M
:assignvariableop_8_lstm_201_lstm_cell_201_recurrent_kernel:	d=
.assignvariableop_9_lstm_201_lstm_cell_201_bias:	D
1assignvariableop_10_lstm_202_lstm_cell_202_kernel:	dÈN
;assignvariableop_11_lstm_202_lstm_cell_202_recurrent_kernel:	2È>
/assignvariableop_12_lstm_202_lstm_cell_202_bias:	ÈC
1assignvariableop_13_lstm_203_lstm_cell_203_kernel:2(M
;assignvariableop_14_lstm_203_lstm_cell_203_recurrent_kernel:
(=
/assignvariableop_15_lstm_203_lstm_cell_203_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_67_kernel_m:
6
(assignvariableop_19_adam_dense_67_bias_m:K
8assignvariableop_20_adam_lstm_201_lstm_cell_201_kernel_m:	U
Bassignvariableop_21_adam_lstm_201_lstm_cell_201_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_201_lstm_cell_201_bias_m:	K
8assignvariableop_23_adam_lstm_202_lstm_cell_202_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_202_lstm_cell_202_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_202_lstm_cell_202_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_203_lstm_cell_203_kernel_m:2(T
Bassignvariableop_27_adam_lstm_203_lstm_cell_203_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_203_lstm_cell_203_bias_m:(<
*assignvariableop_29_adam_dense_67_kernel_v:
6
(assignvariableop_30_adam_dense_67_bias_v:K
8assignvariableop_31_adam_lstm_201_lstm_cell_201_kernel_v:	U
Bassignvariableop_32_adam_lstm_201_lstm_cell_201_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_201_lstm_cell_201_bias_v:	K
8assignvariableop_34_adam_lstm_202_lstm_cell_202_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_202_lstm_cell_202_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_202_lstm_cell_202_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_203_lstm_cell_203_kernel_v:2(T
Bassignvariableop_38_adam_lstm_203_lstm_cell_203_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_203_lstm_cell_203_bias_v:(
identity_41˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9È
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÂ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ş
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_67_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_67_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_201_lstm_cell_201_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_201_lstm_cell_201_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_201_lstm_cell_201_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_202_lstm_cell_202_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_202_lstm_cell_202_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_202_lstm_cell_202_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_203_lstm_cell_203_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_203_lstm_cell_203_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_203_lstm_cell_203_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_67_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_67_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_201_lstm_cell_201_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_201_lstm_cell_201_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_201_lstm_cell_201_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_202_lstm_cell_202_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_202_lstm_cell_202_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_202_lstm_cell_202_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_203_lstm_cell_203_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_203_lstm_cell_203_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_203_lstm_cell_203_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_67_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_67_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_201_lstm_cell_201_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_201_lstm_cell_201_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_201_lstm_cell_201_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_202_lstm_cell_202_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_202_lstm_cell_202_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_202_lstm_cell_202_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_203_lstm_cell_203_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_203_lstm_cell_203_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_203_lstm_cell_203_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ż
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ĵ
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
µ
?
while_cond_339976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339976___redundant_placeholder04
0while_while_cond_339976___redundant_placeholder14
0while_while_cond_339976___redundant_placeholder24
0while_while_cond_339976___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
¤J

D__inference_lstm_201_layer_call_and_return_conditional_losses_341050

inputs>
+lstm_cell_54_matmul_readvariableop_resource:	@
-lstm_cell_54_matmul_1_readvariableop_resource:	d;
,lstm_cell_54_biasadd_readvariableop_resource:	
identity˘#lstm_cell_54/BiasAdd/ReadVariableOp˘"lstm_cell_54/MatMul/ReadVariableOp˘$lstm_cell_54/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_54/MatMul/ReadVariableOpReadVariableOp+lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_54/MatMulMatMulstrided_slice_2:output:0*lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_54/MatMul_1MatMulzeros:output:0,lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_54/addAddV2lstm_cell_54/MatMul:product:0lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_54/BiasAddBiasAddlstm_cell_54/add:z:0+lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_54/splitSplit%lstm_cell_54/split/split_dim:output:0lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_54/SigmoidSigmoidlstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_1Sigmoidlstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_54/mulMullstm_cell_54/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_54/ReluRelulstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_1Mullstm_cell_54/Sigmoid:y:0lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_54/add_1AddV2lstm_cell_54/mul:z:0lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_2Sigmoidlstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_54/Relu_1Relulstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_2Mullstm_cell_54/Sigmoid_2:y:0!lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_54_matmul_readvariableop_resource-lstm_cell_54_matmul_1_readvariableop_resource,lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340966*
condR
while_cond_340965*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_54/BiasAdd/ReadVariableOp#^lstm_cell_54/MatMul/ReadVariableOp%^lstm_cell_54/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_54/BiasAdd/ReadVariableOp#lstm_cell_54/BiasAdd/ReadVariableOp2H
"lstm_cell_54/MatMul/ReadVariableOp"lstm_cell_54/MatMul/ReadVariableOp2L
$lstm_cell_54/MatMul_1/ReadVariableOp$lstm_cell_54/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_202_layer_call_and_return_conditional_losses_343262

inputs>
+lstm_cell_55_matmul_readvariableop_resource:	dÈ@
-lstm_cell_55_matmul_1_readvariableop_resource:	2È;
,lstm_cell_55_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_55/BiasAdd/ReadVariableOp˘"lstm_cell_55/MatMul/ReadVariableOp˘$lstm_cell_55/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_55/MatMul/ReadVariableOpReadVariableOp+lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_55/MatMulMatMulstrided_slice_2:output:0*lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_55/MatMul_1MatMulzeros:output:0,lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_55/addAddV2lstm_cell_55/MatMul:product:0lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_55/BiasAddBiasAddlstm_cell_55/add:z:0+lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_55/splitSplit%lstm_cell_55/split/split_dim:output:0lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_55/SigmoidSigmoidlstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_1Sigmoidlstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_55/mulMullstm_cell_55/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_55/ReluRelulstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_1Mullstm_cell_55/Sigmoid:y:0lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_55/add_1AddV2lstm_cell_55/mul:z:0lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_2Sigmoidlstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_55/Relu_1Relulstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_2Mullstm_cell_55/Sigmoid_2:y:0!lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_55_matmul_readvariableop_resource-lstm_cell_55_matmul_1_readvariableop_resource,lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343178*
condR
while_cond_343177*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_55/BiasAdd/ReadVariableOp#^lstm_cell_55/MatMul/ReadVariableOp%^lstm_cell_55/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_55/BiasAdd/ReadVariableOp#lstm_cell_55/BiasAdd/ReadVariableOp2H
"lstm_cell_55/MatMul/ReadVariableOp"lstm_cell_55/MatMul/ReadVariableOp2L
$lstm_cell_55/MatMul_1/ReadVariableOp$lstm_cell_55/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ò

˘
.__inference_sequential_67_layer_call_fn_341170
lstm_201_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_201_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_67_layer_call_and_return_conditional_losses_341118o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_201_input
Ġ

H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339218

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates
8

D__inference_lstm_202_layer_call_and_return_conditional_losses_339505

inputs&
lstm_cell_55_339423:	dÈ&
lstm_cell_55_339425:	2È"
lstm_cell_55_339427:	È
identity˘$lstm_cell_55/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskġ
$lstm_cell_55/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_55_339423lstm_cell_55_339425lstm_cell_55_339427*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_339422n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_55_339423lstm_cell_55_339425lstm_cell_55_339427*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339436*
condR
while_cond_339435*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2u
NoOpNoOp%^lstm_cell_55/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_55/StatefulPartitionedCall$lstm_cell_55/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
J

D__inference_lstm_203_layer_call_and_return_conditional_losses_343878

inputs=
+lstm_cell_56_matmul_readvariableop_resource:2(?
-lstm_cell_56_matmul_1_readvariableop_resource:
(:
,lstm_cell_56_biasadd_readvariableop_resource:(
identity˘#lstm_cell_56/BiasAdd/ReadVariableOp˘"lstm_cell_56/MatMul/ReadVariableOp˘$lstm_cell_56/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343794*
condR
while_cond_343793*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_342704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342704___redundant_placeholder04
0while_while_cond_342704___redundant_placeholder14
0while_while_cond_342704___redundant_placeholder24
0while_while_cond_342704___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
¤J

D__inference_lstm_202_layer_call_and_return_conditional_losses_343405

inputs>
+lstm_cell_55_matmul_readvariableop_resource:	dÈ@
-lstm_cell_55_matmul_1_readvariableop_resource:	2È;
,lstm_cell_55_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_55/BiasAdd/ReadVariableOp˘"lstm_cell_55/MatMul/ReadVariableOp˘$lstm_cell_55/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_55/MatMul/ReadVariableOpReadVariableOp+lstm_cell_55_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_55/MatMulMatMulstrided_slice_2:output:0*lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_55_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_55/MatMul_1MatMulzeros:output:0,lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_55/addAddV2lstm_cell_55/MatMul:product:0lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_55_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_55/BiasAddBiasAddlstm_cell_55/add:z:0+lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_55/splitSplit%lstm_cell_55/split/split_dim:output:0lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_55/SigmoidSigmoidlstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_1Sigmoidlstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_55/mulMullstm_cell_55/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_55/ReluRelulstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_1Mullstm_cell_55/Sigmoid:y:0lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_55/add_1AddV2lstm_cell_55/mul:z:0lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_55/Sigmoid_2Sigmoidlstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_55/Relu_1Relulstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_55/mul_2Mullstm_cell_55/Sigmoid_2:y:0!lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_55_matmul_readvariableop_resource-lstm_cell_55_matmul_1_readvariableop_resource,lstm_cell_55_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343321*
condR
while_cond_343320*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_55/BiasAdd/ReadVariableOp#^lstm_cell_55/MatMul/ReadVariableOp%^lstm_cell_55/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_55/BiasAdd/ReadVariableOp#lstm_cell_55/BiasAdd/ReadVariableOp2H
"lstm_cell_55/MatMul/ReadVariableOp"lstm_cell_55/MatMul/ReadVariableOp2L
$lstm_cell_55/MatMul_1/ReadVariableOp$lstm_cell_55/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_342891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342891___redundant_placeholder04
0while_while_cond_342891___redundant_placeholder14
0while_while_cond_342891___redundant_placeholder24
0while_while_cond_342891___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
¤J

D__inference_lstm_201_layer_call_and_return_conditional_losses_342789

inputs>
+lstm_cell_54_matmul_readvariableop_resource:	@
-lstm_cell_54_matmul_1_readvariableop_resource:	d;
,lstm_cell_54_biasadd_readvariableop_resource:	
identity˘#lstm_cell_54/BiasAdd/ReadVariableOp˘"lstm_cell_54/MatMul/ReadVariableOp˘$lstm_cell_54/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_54/MatMul/ReadVariableOpReadVariableOp+lstm_cell_54_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_54/MatMulMatMulstrided_slice_2:output:0*lstm_cell_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_54/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_54_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_54/MatMul_1MatMulzeros:output:0,lstm_cell_54/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_54/addAddV2lstm_cell_54/MatMul:product:0lstm_cell_54/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_54/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_54_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_54/BiasAddBiasAddlstm_cell_54/add:z:0+lstm_cell_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_54/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_54/splitSplit%lstm_cell_54/split/split_dim:output:0lstm_cell_54/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_54/SigmoidSigmoidlstm_cell_54/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_1Sigmoidlstm_cell_54/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_54/mulMullstm_cell_54/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_54/ReluRelulstm_cell_54/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_1Mullstm_cell_54/Sigmoid:y:0lstm_cell_54/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_54/add_1AddV2lstm_cell_54/mul:z:0lstm_cell_54/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_54/Sigmoid_2Sigmoidlstm_cell_54/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_54/Relu_1Relulstm_cell_54/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_54/mul_2Mullstm_cell_54/Sigmoid_2:y:0!lstm_cell_54/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_54_matmul_readvariableop_resource-lstm_cell_54_matmul_1_readvariableop_resource,lstm_cell_54_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342705*
condR
while_cond_342704*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_54/BiasAdd/ReadVariableOp#^lstm_cell_54/MatMul/ReadVariableOp%^lstm_cell_54/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_54/BiasAdd/ReadVariableOp#lstm_cell_54/BiasAdd/ReadVariableOp2H
"lstm_cell_54/MatMul/ReadVariableOp"lstm_cell_54/MatMul/ReadVariableOp2L
$lstm_cell_54/MatMul_1/ReadVariableOp$lstm_cell_54/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_340269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340269___redundant_placeholder04
0while_while_cond_340269___redundant_placeholder14
0while_while_cond_340269___redundant_placeholder24
0while_while_cond_340269___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
ö
³
)__inference_lstm_203_layer_call_fn_343449

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_203_layer_call_and_return_conditional_losses_340720o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_203_layer_call_and_return_conditional_losses_343735
inputs_0=
+lstm_cell_56_matmul_readvariableop_resource:2(?
-lstm_cell_56_matmul_1_readvariableop_resource:
(:
,lstm_cell_56_biasadd_readvariableop_resource:(
identity˘#lstm_cell_56/BiasAdd/ReadVariableOp˘"lstm_cell_56/MatMul/ReadVariableOp˘$lstm_cell_56/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_343651*
condR
while_cond_343650*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
µ
?
while_cond_343507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343507___redundant_placeholder04
0while_while_cond_343507___redundant_placeholder14
0while_while_cond_343507___redundant_placeholder24
0while_while_cond_343507___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ŭ

H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_344204

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
ĉ"
?
while_body_339086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_54_339110_0:	.
while_lstm_cell_54_339112_0:	d*
while_lstm_cell_54_339114_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_54_339110:	,
while_lstm_cell_54_339112:	d(
while_lstm_cell_54_339114:	˘*while/lstm_cell_54/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_54/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_54_339110_0while_lstm_cell_54_339112_0while_lstm_cell_54_339114_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339072Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_54/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_54/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_54/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_54_339110while_lstm_cell_54_339110_0"8
while_lstm_cell_54_339112while_lstm_cell_54_339112_0"8
while_lstm_cell_54_339114while_lstm_cell_54_339114_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_54/StatefulPartitionedCall*while/lstm_cell_54/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
ë
ö
-__inference_lstm_cell_54_layer_call_fn_344074

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_339218o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
µ
?
while_cond_343177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_343177___redundant_placeholder04
0while_while_cond_343177___redundant_placeholder14
0while_while_cond_343177___redundant_placeholder24
0while_while_cond_343177___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
8
?
while_body_343035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_55_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_55_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_55_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_55_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_55_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_55_biasadd_readvariableop_resource:	È˘)while/lstm_cell_55/BiasAdd/ReadVariableOp˘(while/lstm_cell_55/MatMul/ReadVariableOp˘*while/lstm_cell_55/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_55/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_55_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_55/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_55/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_55_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_55/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_55/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_55/addAddV2#while/lstm_cell_55/MatMul:product:0%while/lstm_cell_55/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_55/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_55_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_55/BiasAddBiasAddwhile/lstm_cell_55/add:z:01while/lstm_cell_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_55/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_55/splitSplit+while/lstm_cell_55/split/split_dim:output:0#while/lstm_cell_55/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_55/SigmoidSigmoid!while/lstm_cell_55/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_1Sigmoid!while/lstm_cell_55/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mulMul while/lstm_cell_55/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_55/ReluRelu!while/lstm_cell_55/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_1Mulwhile/lstm_cell_55/Sigmoid:y:0%while/lstm_cell_55/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/add_1AddV2while/lstm_cell_55/mul:z:0while/lstm_cell_55/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_55/Sigmoid_2Sigmoid!while/lstm_cell_55/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_55/Relu_1Reluwhile/lstm_cell_55/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_55/mul_2Mul while/lstm_cell_55/Sigmoid_2:y:0'while/lstm_cell_55/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_55/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_55/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_55/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_55/BiasAdd/ReadVariableOp)^while/lstm_cell_55/MatMul/ReadVariableOp+^while/lstm_cell_55/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_55_biasadd_readvariableop_resource4while_lstm_cell_55_biasadd_readvariableop_resource_0"l
3while_lstm_cell_55_matmul_1_readvariableop_resource5while_lstm_cell_55_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_55_matmul_readvariableop_resource3while_lstm_cell_55_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_55/BiasAdd/ReadVariableOp)while/lstm_cell_55/BiasAdd/ReadVariableOp2T
(while/lstm_cell_55/MatMul/ReadVariableOp(while/lstm_cell_55/MatMul/ReadVariableOp2X
*while/lstm_cell_55/MatMul_1/ReadVariableOp*while/lstm_cell_55/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: "L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_201_input;
 serving_default_lstm_201_input:0˙˙˙˙˙˙˙˙˙<
dense_670
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ŭ?
Ş
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
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
â

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
§
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v"
	optimizer
-
serving_default"
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
Î
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
ĵ

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
ĵ

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
ĵ

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_67/kernel
:2dense_67/bias
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
°
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	2lstm_201/lstm_cell_201/kernel
::8	d2'lstm_201/lstm_cell_201/recurrent_kernel
*:(2lstm_201/lstm_cell_201/bias
0:.	dÈ2lstm_202/lstm_cell_202/kernel
::8	2È2'lstm_202/lstm_cell_202/recurrent_kernel
*:(È2lstm_202/lstm_cell_202/bias
/:-2(2lstm_203/lstm_cell_203/kernel
9:7
(2'lstm_203/lstm_cell_203/recurrent_kernel
):'(2lstm_203/lstm_cell_203/bias
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
°
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
°
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
°
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
&:$
2Adam/dense_67/kernel/m
 :2Adam/dense_67/bias/m
5:3	2$Adam/lstm_201/lstm_cell_201/kernel/m
?:=	d2.Adam/lstm_201/lstm_cell_201/recurrent_kernel/m
/:-2"Adam/lstm_201/lstm_cell_201/bias/m
5:3	dÈ2$Adam/lstm_202/lstm_cell_202/kernel/m
?:=	2È2.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m
/:-È2"Adam/lstm_202/lstm_cell_202/bias/m
4:22(2$Adam/lstm_203/lstm_cell_203/kernel/m
>:<
(2.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m
.:,(2"Adam/lstm_203/lstm_cell_203/bias/m
&:$
2Adam/dense_67/kernel/v
 :2Adam/dense_67/bias/v
5:3	2$Adam/lstm_201/lstm_cell_201/kernel/v
?:=	d2.Adam/lstm_201/lstm_cell_201/recurrent_kernel/v
/:-2"Adam/lstm_201/lstm_cell_201/bias/v
5:3	dÈ2$Adam/lstm_202/lstm_cell_202/kernel/v
?:=	2È2.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v
/:-È2"Adam/lstm_202/lstm_cell_202/bias/v
4:22(2$Adam/lstm_203/lstm_cell_203/kernel/v
>:<
(2.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v
.:,(2"Adam/lstm_203/lstm_cell_203/bias/v
2
.__inference_sequential_67_layer_call_fn_340554
.__inference_sequential_67_layer_call_fn_341292
.__inference_sequential_67_layer_call_fn_341319
.__inference_sequential_67_layer_call_fn_341170À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ò2ï
I__inference_sequential_67_layer_call_and_return_conditional_losses_341746
I__inference_sequential_67_layer_call_and_return_conditional_losses_342173
I__inference_sequential_67_layer_call_and_return_conditional_losses_341200
I__inference_sequential_67_layer_call_and_return_conditional_losses_341230À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ÓB?
!__inference__wrapped_model_339005lstm_201_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
)__inference_lstm_201_layer_call_fn_342184
)__inference_lstm_201_layer_call_fn_342195
)__inference_lstm_201_layer_call_fn_342206
)__inference_lstm_201_layer_call_fn_342217Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_201_layer_call_and_return_conditional_losses_342360
D__inference_lstm_201_layer_call_and_return_conditional_losses_342503
D__inference_lstm_201_layer_call_and_return_conditional_losses_342646
D__inference_lstm_201_layer_call_and_return_conditional_losses_342789Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
2
)__inference_lstm_202_layer_call_fn_342800
)__inference_lstm_202_layer_call_fn_342811
)__inference_lstm_202_layer_call_fn_342822
)__inference_lstm_202_layer_call_fn_342833Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_202_layer_call_and_return_conditional_losses_342976
D__inference_lstm_202_layer_call_and_return_conditional_losses_343119
D__inference_lstm_202_layer_call_and_return_conditional_losses_343262
D__inference_lstm_202_layer_call_and_return_conditional_losses_343405Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
2
)__inference_lstm_203_layer_call_fn_343416
)__inference_lstm_203_layer_call_fn_343427
)__inference_lstm_203_layer_call_fn_343438
)__inference_lstm_203_layer_call_fn_343449Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_203_layer_call_and_return_conditional_losses_343592
D__inference_lstm_203_layer_call_and_return_conditional_losses_343735
D__inference_lstm_203_layer_call_and_return_conditional_losses_343878
D__inference_lstm_203_layer_call_and_return_conditional_losses_344021Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ó2?
)__inference_dense_67_layer_call_fn_344030˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_67_layer_call_and_return_conditional_losses_344040˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÒBÏ
$__inference_signature_wrapper_341265lstm_201_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
˘2
-__inference_lstm_cell_54_layer_call_fn_344057
-__inference_lstm_cell_54_layer_call_fn_344074?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_344106
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_344138?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
˘2
-__inference_lstm_cell_55_layer_call_fn_344155
-__inference_lstm_cell_55_layer_call_fn_344172?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_344204
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_344236?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
˘2
-__inference_lstm_cell_56_layer_call_fn_344253
-__inference_lstm_cell_56_layer_call_fn_344270?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_344302
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_344334?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 ¤
!__inference__wrapped_model_339005-./012345!";˘8
1˘.
,)
lstm_201_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_67"
dense_67˙˙˙˙˙˙˙˙˙¤
D__inference_dense_67_layer_call_and_return_conditional_losses_344040\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_67_layer_call_fn_344030O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_201_layer_call_and_return_conditional_losses_342360-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 Ó
D__inference_lstm_201_layer_call_and_return_conditional_losses_342503-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 ı
D__inference_lstm_201_layer_call_and_return_conditional_losses_342646q-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙d
 ı
D__inference_lstm_201_layer_call_and_return_conditional_losses_342789q-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙d
 Ş
)__inference_lstm_201_layer_call_fn_342184}-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dŞ
)__inference_lstm_201_layer_call_fn_342195}-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
)__inference_lstm_201_layer_call_fn_342206d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_201_layer_call_fn_342217d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_202_layer_call_and_return_conditional_losses_342976012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 Ó
D__inference_lstm_202_layer_call_and_return_conditional_losses_343119012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 ı
D__inference_lstm_202_layer_call_and_return_conditional_losses_343262q012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙2
 ı
D__inference_lstm_202_layer_call_and_return_conditional_losses_343405q012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙2
 Ş
)__inference_lstm_202_layer_call_fn_342800}012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2Ş
)__inference_lstm_202_layer_call_fn_342811}012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
)__inference_lstm_202_layer_call_fn_342822d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_202_layer_call_fn_342833d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_203_layer_call_and_return_conditional_losses_343592}345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Ċ
D__inference_lstm_203_layer_call_and_return_conditional_losses_343735}345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 µ
D__inference_lstm_203_layer_call_and_return_conditional_losses_343878m345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 µ
D__inference_lstm_203_layer_call_and_return_conditional_losses_344021m345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 
)__inference_lstm_203_layer_call_fn_343416p345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_203_layer_call_fn_343427p345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_203_layer_call_fn_343438`345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_203_layer_call_fn_343449`345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙
Ê
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_344106ŭ-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙d
EB

0/1/0˙˙˙˙˙˙˙˙˙d

0/1/1˙˙˙˙˙˙˙˙˙d
 Ê
H__inference_lstm_cell_54_layer_call_and_return_conditional_losses_344138ŭ-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙d
EB

0/1/0˙˙˙˙˙˙˙˙˙d

0/1/1˙˙˙˙˙˙˙˙˙d
 
-__inference_lstm_cell_54_layer_call_fn_344057í-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙d
A>

1/0˙˙˙˙˙˙˙˙˙d

1/1˙˙˙˙˙˙˙˙˙d
-__inference_lstm_cell_54_layer_call_fn_344074í-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙d
A>

1/0˙˙˙˙˙˙˙˙˙d

1/1˙˙˙˙˙˙˙˙˙dÊ
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_344204ŭ012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙2
EB

0/1/0˙˙˙˙˙˙˙˙˙2

0/1/1˙˙˙˙˙˙˙˙˙2
 Ê
H__inference_lstm_cell_55_layer_call_and_return_conditional_losses_344236ŭ012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙2
EB

0/1/0˙˙˙˙˙˙˙˙˙2

0/1/1˙˙˙˙˙˙˙˙˙2
 
-__inference_lstm_cell_55_layer_call_fn_344155í012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙2
A>

1/0˙˙˙˙˙˙˙˙˙2

1/1˙˙˙˙˙˙˙˙˙2
-__inference_lstm_cell_55_layer_call_fn_344172í012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙2
A>

1/0˙˙˙˙˙˙˙˙˙2

1/1˙˙˙˙˙˙˙˙˙2Ê
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_344302ŭ345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙

EB

0/1/0˙˙˙˙˙˙˙˙˙


0/1/1˙˙˙˙˙˙˙˙˙

 Ê
H__inference_lstm_cell_56_layer_call_and_return_conditional_losses_344334ŭ345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙

EB

0/1/0˙˙˙˙˙˙˙˙˙


0/1/1˙˙˙˙˙˙˙˙˙

 
-__inference_lstm_cell_56_layer_call_fn_344253í345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙

A>

1/0˙˙˙˙˙˙˙˙˙


1/1˙˙˙˙˙˙˙˙˙

-__inference_lstm_cell_56_layer_call_fn_344270í345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙

A>

1/0˙˙˙˙˙˙˙˙˙


1/1˙˙˙˙˙˙˙˙˙
Ĉ
I__inference_sequential_67_layer_call_and_return_conditional_losses_341200y-./012345!"C˘@
9˘6
,)
lstm_201_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_67_layer_call_and_return_conditional_losses_341230y-./012345!"C˘@
9˘6
,)
lstm_201_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_67_layer_call_and_return_conditional_losses_341746q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_67_layer_call_and_return_conditional_losses_342173q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
.__inference_sequential_67_layer_call_fn_340554l-./012345!"C˘@
9˘6
,)
lstm_201_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_67_layer_call_fn_341170l-./012345!"C˘@
9˘6
,)
lstm_201_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_67_layer_call_fn_341292d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_67_layer_call_fn_341319d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_341265-./012345!"M˘J
˘ 
CŞ@
>
lstm_201_input,)
lstm_201_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_67"
dense_67˙˙˙˙˙˙˙˙˙