/
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
«
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
num_elementsintÿÿÿÿÿÿÿÿÿ
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ô-
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:
*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
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

lstm_60/lstm_cell_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_60/lstm_cell_60/kernel

/lstm_60/lstm_cell_60/kernel/Read/ReadVariableOpReadVariableOplstm_60/lstm_cell_60/kernel*
_output_shapes
:	*
dtype0
§
%lstm_60/lstm_cell_60/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_60/lstm_cell_60/recurrent_kernel
 
9lstm_60/lstm_cell_60/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_60/lstm_cell_60/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_60/lstm_cell_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_60/lstm_cell_60/bias

-lstm_60/lstm_cell_60/bias/Read/ReadVariableOpReadVariableOplstm_60/lstm_cell_60/bias*
_output_shapes	
:*
dtype0

lstm_61/lstm_cell_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_61/lstm_cell_61/kernel

/lstm_61/lstm_cell_61/kernel/Read/ReadVariableOpReadVariableOplstm_61/lstm_cell_61/kernel*
_output_shapes
:	dÈ*
dtype0
§
%lstm_61/lstm_cell_61/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_61/lstm_cell_61/recurrent_kernel
 
9lstm_61/lstm_cell_61/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_61/lstm_cell_61/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_61/lstm_cell_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_61/lstm_cell_61/bias

-lstm_61/lstm_cell_61/bias/Read/ReadVariableOpReadVariableOplstm_61/lstm_cell_61/bias*
_output_shapes	
:È*
dtype0

lstm_62/lstm_cell_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_62/lstm_cell_62/kernel

/lstm_62/lstm_cell_62/kernel/Read/ReadVariableOpReadVariableOplstm_62/lstm_cell_62/kernel*
_output_shapes

:2(*
dtype0
¦
%lstm_62/lstm_cell_62/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_62/lstm_cell_62/recurrent_kernel

9lstm_62/lstm_cell_62/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_62/lstm_cell_62/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_62/lstm_cell_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_62/lstm_cell_62/bias

-lstm_62/lstm_cell_62/bias/Read/ReadVariableOpReadVariableOplstm_62/lstm_cell_62/bias*
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
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_20/kernel/m

*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_60/lstm_cell_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_60/lstm_cell_60/kernel/m

6Adam/lstm_60/lstm_cell_60/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_60/lstm_cell_60/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_60/lstm_cell_60/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_60/lstm_cell_60/recurrent_kernel/m
®
@Adam/lstm_60/lstm_cell_60/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_60/lstm_cell_60/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_60/lstm_cell_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_60/lstm_cell_60/bias/m

4Adam/lstm_60/lstm_cell_60/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_60/lstm_cell_60/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_61/lstm_cell_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_61/lstm_cell_61/kernel/m

6Adam/lstm_61/lstm_cell_61/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_61/lstm_cell_61/kernel/m*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_61/lstm_cell_61/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m
®
@Adam/lstm_61/lstm_cell_61/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

 Adam/lstm_61/lstm_cell_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_61/lstm_cell_61/bias/m

4Adam/lstm_61/lstm_cell_61/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_61/lstm_cell_61/bias/m*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_62/lstm_cell_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_62/lstm_cell_62/kernel/m

6Adam/lstm_62/lstm_cell_62/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_62/lstm_cell_62/kernel/m*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_62/lstm_cell_62/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_62/lstm_cell_62/recurrent_kernel/m
­
@Adam/lstm_62/lstm_cell_62/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_62/lstm_cell_62/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Adam/lstm_62/lstm_cell_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_62/lstm_cell_62/bias/m

4Adam/lstm_62/lstm_cell_62/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_62/lstm_cell_62/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_20/kernel/v

*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_60/lstm_cell_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_60/lstm_cell_60/kernel/v

6Adam/lstm_60/lstm_cell_60/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_60/lstm_cell_60/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_60/lstm_cell_60/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_60/lstm_cell_60/recurrent_kernel/v
®
@Adam/lstm_60/lstm_cell_60/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_60/lstm_cell_60/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_60/lstm_cell_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_60/lstm_cell_60/bias/v

4Adam/lstm_60/lstm_cell_60/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_60/lstm_cell_60/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_61/lstm_cell_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_61/lstm_cell_61/kernel/v

6Adam/lstm_61/lstm_cell_61/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_61/lstm_cell_61/kernel/v*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_61/lstm_cell_61/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v
®
@Adam/lstm_61/lstm_cell_61/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

 Adam/lstm_61/lstm_cell_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_61/lstm_cell_61/bias/v

4Adam/lstm_61/lstm_cell_61/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_61/lstm_cell_61/bias/v*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_62/lstm_cell_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_62/lstm_cell_62/kernel/v

6Adam/lstm_62/lstm_cell_62/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_62/lstm_cell_62/kernel/v*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_62/lstm_cell_62/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_62/lstm_cell_62/recurrent_kernel/v
­
@Adam/lstm_62/lstm_cell_62/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_62/lstm_cell_62/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Adam/lstm_62/lstm_cell_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_62/lstm_cell_62/bias/v

4Adam/lstm_62/lstm_cell_62/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_62/lstm_cell_62/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
©A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ä@
valueÚ@B×@ BÐ@
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
¹

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
¹

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
¹

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
VARIABLE_VALUEdense_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
WU
VARIABLE_VALUElstm_60/lstm_cell_60/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_60/lstm_cell_60/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_60/lstm_cell_60/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_61/lstm_cell_61/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_61/lstm_cell_61/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_61/lstm_cell_61/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_62/lstm_cell_62/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_62/lstm_cell_62/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_62/lstm_cell_62/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_20/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_60/lstm_cell_60/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_60/lstm_cell_60/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_60/lstm_cell_60/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_61/lstm_cell_61/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_61/lstm_cell_61/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_61/lstm_cell_61/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_62/lstm_cell_62/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_62/lstm_cell_62/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_62/lstm_cell_62/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_20/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_60/lstm_cell_60/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_60/lstm_cell_60/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_60/lstm_cell_60/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_61/lstm_cell_61/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_61/lstm_cell_61/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_61/lstm_cell_61/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_62/lstm_cell_62/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_62/lstm_cell_62/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_62/lstm_cell_62/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_60_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_60_inputlstm_60/lstm_cell_60/kernel%lstm_60/lstm_cell_60/recurrent_kernellstm_60/lstm_cell_60/biaslstm_61/lstm_cell_61/kernel%lstm_61/lstm_cell_61/recurrent_kernellstm_61/lstm_cell_61/biaslstm_62/lstm_cell_62/kernel%lstm_62/lstm_cell_62/recurrent_kernellstm_62/lstm_cell_62/biasdense_20/kerneldense_20/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2011214
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_60/lstm_cell_60/kernel/Read/ReadVariableOp9lstm_60/lstm_cell_60/recurrent_kernel/Read/ReadVariableOp-lstm_60/lstm_cell_60/bias/Read/ReadVariableOp/lstm_61/lstm_cell_61/kernel/Read/ReadVariableOp9lstm_61/lstm_cell_61/recurrent_kernel/Read/ReadVariableOp-lstm_61/lstm_cell_61/bias/Read/ReadVariableOp/lstm_62/lstm_cell_62/kernel/Read/ReadVariableOp9lstm_62/lstm_cell_62/recurrent_kernel/Read/ReadVariableOp-lstm_62/lstm_cell_62/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp6Adam/lstm_60/lstm_cell_60/kernel/m/Read/ReadVariableOp@Adam/lstm_60/lstm_cell_60/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_60/lstm_cell_60/bias/m/Read/ReadVariableOp6Adam/lstm_61/lstm_cell_61/kernel/m/Read/ReadVariableOp@Adam/lstm_61/lstm_cell_61/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_61/lstm_cell_61/bias/m/Read/ReadVariableOp6Adam/lstm_62/lstm_cell_62/kernel/m/Read/ReadVariableOp@Adam/lstm_62/lstm_cell_62/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_62/lstm_cell_62/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp6Adam/lstm_60/lstm_cell_60/kernel/v/Read/ReadVariableOp@Adam/lstm_60/lstm_cell_60/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_60/lstm_cell_60/bias/v/Read/ReadVariableOp6Adam/lstm_61/lstm_cell_61/kernel/v/Read/ReadVariableOp@Adam/lstm_61/lstm_cell_61/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_61/lstm_cell_61/bias/v/Read/ReadVariableOp6Adam/lstm_62/lstm_cell_62/kernel/v/Read/ReadVariableOp@Adam/lstm_62/lstm_cell_62/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_62/lstm_cell_62/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_2014426
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_20/kerneldense_20/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_60/lstm_cell_60/kernel%lstm_60/lstm_cell_60/recurrent_kernellstm_60/lstm_cell_60/biaslstm_61/lstm_cell_61/kernel%lstm_61/lstm_cell_61/recurrent_kernellstm_61/lstm_cell_61/biaslstm_62/lstm_cell_62/kernel%lstm_62/lstm_cell_62/recurrent_kernellstm_62/lstm_cell_62/biastotalcountAdam/dense_20/kernel/mAdam/dense_20/bias/m"Adam/lstm_60/lstm_cell_60/kernel/m,Adam/lstm_60/lstm_cell_60/recurrent_kernel/m Adam/lstm_60/lstm_cell_60/bias/m"Adam/lstm_61/lstm_cell_61/kernel/m,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m Adam/lstm_61/lstm_cell_61/bias/m"Adam/lstm_62/lstm_cell_62/kernel/m,Adam/lstm_62/lstm_cell_62/recurrent_kernel/m Adam/lstm_62/lstm_cell_62/bias/mAdam/dense_20/kernel/vAdam/dense_20/bias/v"Adam/lstm_60/lstm_cell_60/kernel/v,Adam/lstm_60/lstm_cell_60/recurrent_kernel/v Adam/lstm_60/lstm_cell_60/bias/v"Adam/lstm_61/lstm_cell_61/kernel/v,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v Adam/lstm_61/lstm_cell_61/bias/v"Adam/lstm_62/lstm_cell_62/kernel/v,Adam/lstm_62/lstm_cell_62/recurrent_kernel/v Adam/lstm_62/lstm_cell_62/bias/v*4
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_2014556Ú+
öV
é
 __inference__traced_save_2014426
file_prefix.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_60_lstm_cell_60_kernel_read_readvariableopD
@savev2_lstm_60_lstm_cell_60_recurrent_kernel_read_readvariableop8
4savev2_lstm_60_lstm_cell_60_bias_read_readvariableop:
6savev2_lstm_61_lstm_cell_61_kernel_read_readvariableopD
@savev2_lstm_61_lstm_cell_61_recurrent_kernel_read_readvariableop8
4savev2_lstm_61_lstm_cell_61_bias_read_readvariableop:
6savev2_lstm_62_lstm_cell_62_kernel_read_readvariableopD
@savev2_lstm_62_lstm_cell_62_recurrent_kernel_read_readvariableop8
4savev2_lstm_62_lstm_cell_62_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableopA
=savev2_adam_lstm_60_lstm_cell_60_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_60_lstm_cell_60_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_60_lstm_cell_60_bias_m_read_readvariableopA
=savev2_adam_lstm_61_lstm_cell_61_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_61_lstm_cell_61_bias_m_read_readvariableopA
=savev2_adam_lstm_62_lstm_cell_62_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_62_lstm_cell_62_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_62_lstm_cell_62_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableopA
=savev2_adam_lstm_60_lstm_cell_60_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_60_lstm_cell_60_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_60_lstm_cell_60_bias_v_read_readvariableopA
=savev2_adam_lstm_61_lstm_cell_61_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_61_lstm_cell_61_bias_v_read_readvariableopA
=savev2_adam_lstm_62_lstm_cell_62_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_62_lstm_cell_62_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_62_lstm_cell_62_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: Å
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¿
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ´
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_60_lstm_cell_60_kernel_read_readvariableop@savev2_lstm_60_lstm_cell_60_recurrent_kernel_read_readvariableop4savev2_lstm_60_lstm_cell_60_bias_read_readvariableop6savev2_lstm_61_lstm_cell_61_kernel_read_readvariableop@savev2_lstm_61_lstm_cell_61_recurrent_kernel_read_readvariableop4savev2_lstm_61_lstm_cell_61_bias_read_readvariableop6savev2_lstm_62_lstm_cell_62_kernel_read_readvariableop@savev2_lstm_62_lstm_cell_62_recurrent_kernel_read_readvariableop4savev2_lstm_62_lstm_cell_62_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop=savev2_adam_lstm_60_lstm_cell_60_kernel_m_read_readvariableopGsavev2_adam_lstm_60_lstm_cell_60_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_60_lstm_cell_60_bias_m_read_readvariableop=savev2_adam_lstm_61_lstm_cell_61_kernel_m_read_readvariableopGsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_61_lstm_cell_61_bias_m_read_readvariableop=savev2_adam_lstm_62_lstm_cell_62_kernel_m_read_readvariableopGsavev2_adam_lstm_62_lstm_cell_62_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_62_lstm_cell_62_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop=savev2_adam_lstm_60_lstm_cell_60_kernel_v_read_readvariableopGsavev2_adam_lstm_60_lstm_cell_60_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_60_lstm_cell_60_bias_v_read_readvariableop=savev2_adam_lstm_61_lstm_cell_61_kernel_v_read_readvariableopGsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_61_lstm_cell_61_bias_v_read_readvariableop=savev2_adam_lstm_62_lstm_cell_62_kernel_v_read_readvariableopGsavev2_adam_lstm_62_lstm_cell_62_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_62_lstm_cell_62_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¾: :
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
£

(sequential_20_lstm_62_while_cond_2008863H
Dsequential_20_lstm_62_while_sequential_20_lstm_62_while_loop_counterN
Jsequential_20_lstm_62_while_sequential_20_lstm_62_while_maximum_iterations+
'sequential_20_lstm_62_while_placeholder-
)sequential_20_lstm_62_while_placeholder_1-
)sequential_20_lstm_62_while_placeholder_2-
)sequential_20_lstm_62_while_placeholder_3J
Fsequential_20_lstm_62_while_less_sequential_20_lstm_62_strided_slice_1a
]sequential_20_lstm_62_while_sequential_20_lstm_62_while_cond_2008863___redundant_placeholder0a
]sequential_20_lstm_62_while_sequential_20_lstm_62_while_cond_2008863___redundant_placeholder1a
]sequential_20_lstm_62_while_sequential_20_lstm_62_while_cond_2008863___redundant_placeholder2a
]sequential_20_lstm_62_while_sequential_20_lstm_62_while_cond_2008863___redundant_placeholder3(
$sequential_20_lstm_62_while_identity
º
 sequential_20/lstm_62/while/LessLess'sequential_20_lstm_62_while_placeholderFsequential_20_lstm_62_while_less_sequential_20_lstm_62_strided_slice_1*
T0*
_output_shapes
: w
$sequential_20/lstm_62/while/IdentityIdentity$sequential_20/lstm_62/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_20_lstm_62_while_identity-sequential_20/lstm_62/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:

¶
)__inference_lstm_60_layer_call_fn_2012166

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010999s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_2010749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2010749___redundant_placeholder05
1while_while_cond_2010749___redundant_placeholder15
1while_while_cond_2010749___redundant_placeholder25
1while_while_cond_2010749___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
B
Ú

lstm_61_while_body_2011893,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3+
'lstm_61_while_lstm_61_strided_slice_1_0g
clstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈQ
>lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
lstm_61_while_identity
lstm_61_while_identity_1
lstm_61_while_identity_2
lstm_61_while_identity_3
lstm_61_while_identity_4
lstm_61_while_identity_5)
%lstm_61_while_lstm_61_strided_slice_1e
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorM
:lstm_61_while_lstm_cell_331_matmul_readvariableop_resource:	dÈO
<lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈJ
;lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource:	È¢2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp¢1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp¢3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp
?lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_61/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0lstm_61_while_placeholderHlstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp<lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_61/while/lstm_cell_331/MatMulMatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp>lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_61/while/lstm_cell_331/MatMul_1MatMullstm_61_while_placeholder_2;lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_61/while/lstm_cell_331/addAddV2,lstm_61/while/lstm_cell_331/MatMul:product:0.lstm_61/while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp=lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_61/while/lstm_cell_331/BiasAddBiasAdd#lstm_61/while/lstm_cell_331/add:z:0:lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_61/while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_61/while/lstm_cell_331/splitSplit4lstm_61/while/lstm_cell_331/split/split_dim:output:0,lstm_61/while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_61/while/lstm_cell_331/SigmoidSigmoid*lstm_61/while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_61/while/lstm_cell_331/Sigmoid_1Sigmoid*lstm_61/while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_61/while/lstm_cell_331/mulMul)lstm_61/while/lstm_cell_331/Sigmoid_1:y:0lstm_61_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_61/while/lstm_cell_331/ReluRelu*lstm_61/while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_61/while/lstm_cell_331/mul_1Mul'lstm_61/while/lstm_cell_331/Sigmoid:y:0.lstm_61/while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_61/while/lstm_cell_331/add_1AddV2#lstm_61/while/lstm_cell_331/mul:z:0%lstm_61/while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_61/while/lstm_cell_331/Sigmoid_2Sigmoid*lstm_61/while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_61/while/lstm_cell_331/Relu_1Relu%lstm_61/while/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_61/while/lstm_cell_331/mul_2Mul)lstm_61/while/lstm_cell_331/Sigmoid_2:y:00lstm_61/while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_61/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_61_while_placeholder_1lstm_61_while_placeholder%lstm_61/while/lstm_cell_331/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_61/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_61/while/addAddV2lstm_61_while_placeholderlstm_61/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_61/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_61/while/add_1AddV2(lstm_61_while_lstm_61_while_loop_counterlstm_61/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_61/while/IdentityIdentitylstm_61/while/add_1:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 
lstm_61/while/Identity_1Identity.lstm_61_while_lstm_61_while_maximum_iterations^lstm_61/while/NoOp*
T0*
_output_shapes
: q
lstm_61/while/Identity_2Identitylstm_61/while/add:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 
lstm_61/while/Identity_3IdentityBlstm_61/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 
lstm_61/while/Identity_4Identity%lstm_61/while/lstm_cell_331/mul_2:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/while/Identity_5Identity%lstm_61/while/lstm_cell_331/add_1:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_61/while/NoOpNoOp3^lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2^lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp4^lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_61_while_identitylstm_61/while/Identity:output:0"=
lstm_61_while_identity_1!lstm_61/while/Identity_1:output:0"=
lstm_61_while_identity_2!lstm_61/while/Identity_2:output:0"=
lstm_61_while_identity_3!lstm_61/while/Identity_3:output:0"=
lstm_61_while_identity_4!lstm_61/while/Identity_4:output:0"=
lstm_61_while_identity_5!lstm_61/while/Identity_5:output:0"P
%lstm_61_while_lstm_61_strided_slice_1'lstm_61_while_lstm_61_strided_slice_1_0"|
;lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource=lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0"~
<lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource>lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0"z
:lstm_61_while_lstm_cell_331_matmul_readvariableop_resource<lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0"È
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2f
1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp2j
3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
#
ñ
while_body_2009385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_331_2009409_0:	dÈ0
while_lstm_cell_331_2009411_0:	2È,
while_lstm_cell_331_2009413_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_331_2009409:	dÈ.
while_lstm_cell_331_2009411:	2È*
while_lstm_cell_331_2009413:	È¢+while/lstm_cell_331/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_331/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_331_2009409_0while_lstm_cell_331_2009411_0while_lstm_cell_331_2009413_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009371Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_331/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_331/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_331/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_331/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_331_2009409while_lstm_cell_331_2009409_0"<
while_lstm_cell_331_2009411while_lstm_cell_331_2009411_0"<
while_lstm_cell_331_2009413while_lstm_cell_331_2009413_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_331/StatefulPartitionedCall+while/lstm_cell_331/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ñ

¢
/__inference_sequential_20_layer_call_fn_2010503
lstm_60_input
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
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_2010478o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_60_input
º
È
while_cond_2010368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2010368___redundant_placeholder05
1while_while_cond_2010368___redundant_placeholder15
1while_while_cond_2010368___redundant_placeholder25
1while_while_cond_2010368___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Ä8
Ô
while_body_2013886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_332_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_332_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_332_matmul_readvariableop_resource:2(F
4while_lstm_cell_332_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_332_biasadd_readvariableop_resource:(¢*while/lstm_cell_332/BiasAdd/ReadVariableOp¢)while/lstm_cell_332/MatMul/ReadVariableOp¢+while/lstm_cell_332/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_332/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_332/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_332/addAddV2$while/lstm_cell_332/MatMul:product:0&while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_332/BiasAddBiasAddwhile/lstm_cell_332/add:z:02while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_332/splitSplit,while/lstm_cell_332/split/split_dim:output:0$while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_332/SigmoidSigmoid"while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_1Sigmoid"while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mulMul!while/lstm_cell_332/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_332/ReluRelu"while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_1Mulwhile/lstm_cell_332/Sigmoid:y:0&while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/add_1AddV2while/lstm_cell_332/mul:z:0while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_2Sigmoid"while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_332/Relu_1Reluwhile/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_2Mul!while/lstm_cell_332/Sigmoid_2:y:0(while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_332/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_332/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_332/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_332/BiasAdd/ReadVariableOp*^while/lstm_cell_332/MatMul/ReadVariableOp,^while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_332_biasadd_readvariableop_resource5while_lstm_cell_332_biasadd_readvariableop_resource_0"n
4while_lstm_cell_332_matmul_1_readvariableop_resource6while_lstm_cell_332_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_332_matmul_readvariableop_resource4while_lstm_cell_332_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_332/BiasAdd/ReadVariableOp*while/lstm_cell_332/BiasAdd/ReadVariableOp2V
)while/lstm_cell_332/MatMul/ReadVariableOp)while/lstm_cell_332/MatMul/ReadVariableOp2Z
+while/lstm_cell_332/MatMul_1/ReadVariableOp+while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Ý³
¾
"__inference__wrapped_model_2008954
lstm_60_inputU
Bsequential_20_lstm_60_lstm_cell_330_matmul_readvariableop_resource:	W
Dsequential_20_lstm_60_lstm_cell_330_matmul_1_readvariableop_resource:	dR
Csequential_20_lstm_60_lstm_cell_330_biasadd_readvariableop_resource:	U
Bsequential_20_lstm_61_lstm_cell_331_matmul_readvariableop_resource:	dÈW
Dsequential_20_lstm_61_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈR
Csequential_20_lstm_61_lstm_cell_331_biasadd_readvariableop_resource:	ÈT
Bsequential_20_lstm_62_lstm_cell_332_matmul_readvariableop_resource:2(V
Dsequential_20_lstm_62_lstm_cell_332_matmul_1_readvariableop_resource:
(Q
Csequential_20_lstm_62_lstm_cell_332_biasadd_readvariableop_resource:(G
5sequential_20_dense_20_matmul_readvariableop_resource:
D
6sequential_20_dense_20_biasadd_readvariableop_resource:
identity¢-sequential_20/dense_20/BiasAdd/ReadVariableOp¢,sequential_20/dense_20/MatMul/ReadVariableOp¢:sequential_20/lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp¢9sequential_20/lstm_60/lstm_cell_330/MatMul/ReadVariableOp¢;sequential_20/lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp¢sequential_20/lstm_60/while¢:sequential_20/lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp¢9sequential_20/lstm_61/lstm_cell_331/MatMul/ReadVariableOp¢;sequential_20/lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp¢sequential_20/lstm_61/while¢:sequential_20/lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp¢9sequential_20/lstm_62/lstm_cell_332/MatMul/ReadVariableOp¢;sequential_20/lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp¢sequential_20/lstm_62/whileX
sequential_20/lstm_60/ShapeShapelstm_60_input*
T0*
_output_shapes
:s
)sequential_20/lstm_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_20/lstm_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_20/lstm_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_20/lstm_60/strided_sliceStridedSlice$sequential_20/lstm_60/Shape:output:02sequential_20/lstm_60/strided_slice/stack:output:04sequential_20/lstm_60/strided_slice/stack_1:output:04sequential_20/lstm_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_20/lstm_60/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_20/lstm_60/zeros/packedPack,sequential_20/lstm_60/strided_slice:output:0-sequential_20/lstm_60/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_20/lstm_60/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_20/lstm_60/zerosFill+sequential_20/lstm_60/zeros/packed:output:0*sequential_20/lstm_60/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_20/lstm_60/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_20/lstm_60/zeros_1/packedPack,sequential_20/lstm_60/strided_slice:output:0/sequential_20/lstm_60/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_20/lstm_60/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_20/lstm_60/zeros_1Fill-sequential_20/lstm_60/zeros_1/packed:output:0,sequential_20/lstm_60/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_20/lstm_60/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_20/lstm_60/transpose	Transposelstm_60_input-sequential_20/lstm_60/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_20/lstm_60/Shape_1Shape#sequential_20/lstm_60/transpose:y:0*
T0*
_output_shapes
:u
+sequential_20/lstm_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_20/lstm_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_20/lstm_60/strided_slice_1StridedSlice&sequential_20/lstm_60/Shape_1:output:04sequential_20/lstm_60/strided_slice_1/stack:output:06sequential_20/lstm_60/strided_slice_1/stack_1:output:06sequential_20/lstm_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_20/lstm_60/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_20/lstm_60/TensorArrayV2TensorListReserve:sequential_20/lstm_60/TensorArrayV2/element_shape:output:0.sequential_20/lstm_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_20/lstm_60/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_20/lstm_60/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_20/lstm_60/transpose:y:0Tsequential_20/lstm_60/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_20/lstm_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_20/lstm_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_20/lstm_60/strided_slice_2StridedSlice#sequential_20/lstm_60/transpose:y:04sequential_20/lstm_60/strided_slice_2/stack:output:06sequential_20/lstm_60/strided_slice_2/stack_1:output:06sequential_20/lstm_60/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask½
9sequential_20/lstm_60/lstm_cell_330/MatMul/ReadVariableOpReadVariableOpBsequential_20_lstm_60_lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
*sequential_20/lstm_60/lstm_cell_330/MatMulMatMul.sequential_20/lstm_60/strided_slice_2:output:0Asequential_20/lstm_60/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
;sequential_20/lstm_60/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOpDsequential_20_lstm_60_lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ô
,sequential_20/lstm_60/lstm_cell_330/MatMul_1MatMul$sequential_20/lstm_60/zeros:output:0Csequential_20/lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential_20/lstm_60/lstm_cell_330/addAddV24sequential_20/lstm_60/lstm_cell_330/MatMul:product:06sequential_20/lstm_60/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:sequential_20/lstm_60/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOpCsequential_20_lstm_60_lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_20/lstm_60/lstm_cell_330/BiasAddBiasAdd+sequential_20/lstm_60/lstm_cell_330/add:z:0Bsequential_20/lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential_20/lstm_60/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_20/lstm_60/lstm_cell_330/splitSplit<sequential_20/lstm_60/lstm_cell_330/split/split_dim:output:04sequential_20/lstm_60/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
+sequential_20/lstm_60/lstm_cell_330/SigmoidSigmoid2sequential_20/lstm_60/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_20/lstm_60/lstm_cell_330/Sigmoid_1Sigmoid2sequential_20/lstm_60/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
'sequential_20/lstm_60/lstm_cell_330/mulMul1sequential_20/lstm_60/lstm_cell_330/Sigmoid_1:y:0&sequential_20/lstm_60/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(sequential_20/lstm_60/lstm_cell_330/ReluRelu2sequential_20/lstm_60/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
)sequential_20/lstm_60/lstm_cell_330/mul_1Mul/sequential_20/lstm_60/lstm_cell_330/Sigmoid:y:06sequential_20/lstm_60/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
)sequential_20/lstm_60/lstm_cell_330/add_1AddV2+sequential_20/lstm_60/lstm_cell_330/mul:z:0-sequential_20/lstm_60/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_20/lstm_60/lstm_cell_330/Sigmoid_2Sigmoid2sequential_20/lstm_60/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*sequential_20/lstm_60/lstm_cell_330/Relu_1Relu-sequential_20/lstm_60/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
)sequential_20/lstm_60/lstm_cell_330/mul_2Mul1sequential_20/lstm_60/lstm_cell_330/Sigmoid_2:y:08sequential_20/lstm_60/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_20/lstm_60/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ú
%sequential_20/lstm_60/TensorArrayV2_1TensorListReserve<sequential_20/lstm_60/TensorArrayV2_1/element_shape:output:0.sequential_20/lstm_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_20/lstm_60/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_20/lstm_60/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_20/lstm_60/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_20/lstm_60/whileWhile1sequential_20/lstm_60/while/loop_counter:output:07sequential_20/lstm_60/while/maximum_iterations:output:0#sequential_20/lstm_60/time:output:0.sequential_20/lstm_60/TensorArrayV2_1:handle:0$sequential_20/lstm_60/zeros:output:0&sequential_20/lstm_60/zeros_1:output:0.sequential_20/lstm_60/strided_slice_1:output:0Msequential_20/lstm_60/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_20_lstm_60_lstm_cell_330_matmul_readvariableop_resourceDsequential_20_lstm_60_lstm_cell_330_matmul_1_readvariableop_resourceCsequential_20_lstm_60_lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_20_lstm_60_while_body_2008586*4
cond,R*
(sequential_20_lstm_60_while_cond_2008585*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_20/lstm_60/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_20/lstm_60/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_20/lstm_60/while:output:3Osequential_20/lstm_60/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0~
+sequential_20/lstm_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_20/lstm_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_20/lstm_60/strided_slice_3StridedSliceAsequential_20/lstm_60/TensorArrayV2Stack/TensorListStack:tensor:04sequential_20/lstm_60/strided_slice_3/stack:output:06sequential_20/lstm_60/strided_slice_3/stack_1:output:06sequential_20/lstm_60/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_20/lstm_60/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_20/lstm_60/transpose_1	TransposeAsequential_20/lstm_60/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_20/lstm_60/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_20/lstm_60/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_20/lstm_61/ShapeShape%sequential_20/lstm_60/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_20/lstm_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_20/lstm_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_20/lstm_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_20/lstm_61/strided_sliceStridedSlice$sequential_20/lstm_61/Shape:output:02sequential_20/lstm_61/strided_slice/stack:output:04sequential_20/lstm_61/strided_slice/stack_1:output:04sequential_20/lstm_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_20/lstm_61/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_20/lstm_61/zeros/packedPack,sequential_20/lstm_61/strided_slice:output:0-sequential_20/lstm_61/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_20/lstm_61/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_20/lstm_61/zerosFill+sequential_20/lstm_61/zeros/packed:output:0*sequential_20/lstm_61/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_20/lstm_61/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_20/lstm_61/zeros_1/packedPack,sequential_20/lstm_61/strided_slice:output:0/sequential_20/lstm_61/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_20/lstm_61/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_20/lstm_61/zeros_1Fill-sequential_20/lstm_61/zeros_1/packed:output:0,sequential_20/lstm_61/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_20/lstm_61/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_20/lstm_61/transpose	Transpose%sequential_20/lstm_60/transpose_1:y:0-sequential_20/lstm_61/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_20/lstm_61/Shape_1Shape#sequential_20/lstm_61/transpose:y:0*
T0*
_output_shapes
:u
+sequential_20/lstm_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_20/lstm_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_20/lstm_61/strided_slice_1StridedSlice&sequential_20/lstm_61/Shape_1:output:04sequential_20/lstm_61/strided_slice_1/stack:output:06sequential_20/lstm_61/strided_slice_1/stack_1:output:06sequential_20/lstm_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_20/lstm_61/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_20/lstm_61/TensorArrayV2TensorListReserve:sequential_20/lstm_61/TensorArrayV2/element_shape:output:0.sequential_20/lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_20/lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_20/lstm_61/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_20/lstm_61/transpose:y:0Tsequential_20/lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_20/lstm_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_20/lstm_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_20/lstm_61/strided_slice_2StridedSlice#sequential_20/lstm_61/transpose:y:04sequential_20/lstm_61/strided_slice_2/stack:output:06sequential_20/lstm_61/strided_slice_2/stack_1:output:06sequential_20/lstm_61/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask½
9sequential_20/lstm_61/lstm_cell_331/MatMul/ReadVariableOpReadVariableOpBsequential_20_lstm_61_lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ú
*sequential_20/lstm_61/lstm_cell_331/MatMulMatMul.sequential_20/lstm_61/strided_slice_2:output:0Asequential_20/lstm_61/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÁ
;sequential_20/lstm_61/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOpDsequential_20_lstm_61_lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ô
,sequential_20/lstm_61/lstm_cell_331/MatMul_1MatMul$sequential_20/lstm_61/zeros:output:0Csequential_20/lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÑ
'sequential_20/lstm_61/lstm_cell_331/addAddV24sequential_20/lstm_61/lstm_cell_331/MatMul:product:06sequential_20/lstm_61/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ»
:sequential_20/lstm_61/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOpCsequential_20_lstm_61_lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_20/lstm_61/lstm_cell_331/BiasAddBiasAdd+sequential_20/lstm_61/lstm_cell_331/add:z:0Bsequential_20/lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈu
3sequential_20/lstm_61/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_20/lstm_61/lstm_cell_331/splitSplit<sequential_20/lstm_61/lstm_cell_331/split/split_dim:output:04sequential_20/lstm_61/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
+sequential_20/lstm_61/lstm_cell_331/SigmoidSigmoid2sequential_20/lstm_61/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_20/lstm_61/lstm_cell_331/Sigmoid_1Sigmoid2sequential_20/lstm_61/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
'sequential_20/lstm_61/lstm_cell_331/mulMul1sequential_20/lstm_61/lstm_cell_331/Sigmoid_1:y:0&sequential_20/lstm_61/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(sequential_20/lstm_61/lstm_cell_331/ReluRelu2sequential_20/lstm_61/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ë
)sequential_20/lstm_61/lstm_cell_331/mul_1Mul/sequential_20/lstm_61/lstm_cell_331/Sigmoid:y:06sequential_20/lstm_61/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
)sequential_20/lstm_61/lstm_cell_331/add_1AddV2+sequential_20/lstm_61/lstm_cell_331/mul:z:0-sequential_20/lstm_61/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_20/lstm_61/lstm_cell_331/Sigmoid_2Sigmoid2sequential_20/lstm_61/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_20/lstm_61/lstm_cell_331/Relu_1Relu-sequential_20/lstm_61/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
)sequential_20/lstm_61/lstm_cell_331/mul_2Mul1sequential_20/lstm_61/lstm_cell_331/Sigmoid_2:y:08sequential_20/lstm_61/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_20/lstm_61/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_20/lstm_61/TensorArrayV2_1TensorListReserve<sequential_20/lstm_61/TensorArrayV2_1/element_shape:output:0.sequential_20/lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_20/lstm_61/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_20/lstm_61/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_20/lstm_61/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_20/lstm_61/whileWhile1sequential_20/lstm_61/while/loop_counter:output:07sequential_20/lstm_61/while/maximum_iterations:output:0#sequential_20/lstm_61/time:output:0.sequential_20/lstm_61/TensorArrayV2_1:handle:0$sequential_20/lstm_61/zeros:output:0&sequential_20/lstm_61/zeros_1:output:0.sequential_20/lstm_61/strided_slice_1:output:0Msequential_20/lstm_61/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_20_lstm_61_lstm_cell_331_matmul_readvariableop_resourceDsequential_20_lstm_61_lstm_cell_331_matmul_1_readvariableop_resourceCsequential_20_lstm_61_lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_20_lstm_61_while_body_2008725*4
cond,R*
(sequential_20_lstm_61_while_cond_2008724*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_20/lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_20/lstm_61/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_20/lstm_61/while:output:3Osequential_20/lstm_61/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_20/lstm_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_20/lstm_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_20/lstm_61/strided_slice_3StridedSliceAsequential_20/lstm_61/TensorArrayV2Stack/TensorListStack:tensor:04sequential_20/lstm_61/strided_slice_3/stack:output:06sequential_20/lstm_61/strided_slice_3/stack_1:output:06sequential_20/lstm_61/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_20/lstm_61/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_20/lstm_61/transpose_1	TransposeAsequential_20/lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_20/lstm_61/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_20/lstm_61/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_20/lstm_62/ShapeShape%sequential_20/lstm_61/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_20/lstm_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_20/lstm_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_20/lstm_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_20/lstm_62/strided_sliceStridedSlice$sequential_20/lstm_62/Shape:output:02sequential_20/lstm_62/strided_slice/stack:output:04sequential_20/lstm_62/strided_slice/stack_1:output:04sequential_20/lstm_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_20/lstm_62/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
µ
"sequential_20/lstm_62/zeros/packedPack,sequential_20/lstm_62/strided_slice:output:0-sequential_20/lstm_62/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_20/lstm_62/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_20/lstm_62/zerosFill+sequential_20/lstm_62/zeros/packed:output:0*sequential_20/lstm_62/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
&sequential_20/lstm_62/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¹
$sequential_20/lstm_62/zeros_1/packedPack,sequential_20/lstm_62/strided_slice:output:0/sequential_20/lstm_62/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_20/lstm_62/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_20/lstm_62/zeros_1Fill-sequential_20/lstm_62/zeros_1/packed:output:0,sequential_20/lstm_62/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
$sequential_20/lstm_62/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_20/lstm_62/transpose	Transpose%sequential_20/lstm_61/transpose_1:y:0-sequential_20/lstm_62/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
sequential_20/lstm_62/Shape_1Shape#sequential_20/lstm_62/transpose:y:0*
T0*
_output_shapes
:u
+sequential_20/lstm_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_20/lstm_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_20/lstm_62/strided_slice_1StridedSlice&sequential_20/lstm_62/Shape_1:output:04sequential_20/lstm_62/strided_slice_1/stack:output:06sequential_20/lstm_62/strided_slice_1/stack_1:output:06sequential_20/lstm_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_20/lstm_62/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_20/lstm_62/TensorArrayV2TensorListReserve:sequential_20/lstm_62/TensorArrayV2/element_shape:output:0.sequential_20/lstm_62/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_20/lstm_62/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¢
=sequential_20/lstm_62/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_20/lstm_62/transpose:y:0Tsequential_20/lstm_62/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_20/lstm_62/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_62/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_20/lstm_62/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_20/lstm_62/strided_slice_2StridedSlice#sequential_20/lstm_62/transpose:y:04sequential_20/lstm_62/strided_slice_2/stack:output:06sequential_20/lstm_62/strided_slice_2/stack_1:output:06sequential_20/lstm_62/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¼
9sequential_20/lstm_62/lstm_cell_332/MatMul/ReadVariableOpReadVariableOpBsequential_20_lstm_62_lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ù
*sequential_20/lstm_62/lstm_cell_332/MatMulMatMul.sequential_20/lstm_62/strided_slice_2:output:0Asequential_20/lstm_62/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(À
;sequential_20/lstm_62/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOpDsequential_20_lstm_62_lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ó
,sequential_20/lstm_62/lstm_cell_332/MatMul_1MatMul$sequential_20/lstm_62/zeros:output:0Csequential_20/lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ð
'sequential_20/lstm_62/lstm_cell_332/addAddV24sequential_20/lstm_62/lstm_cell_332/MatMul:product:06sequential_20/lstm_62/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
:sequential_20/lstm_62/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOpCsequential_20_lstm_62_lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_20/lstm_62/lstm_cell_332/BiasAddBiasAdd+sequential_20/lstm_62/lstm_cell_332/add:z:0Bsequential_20/lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(u
3sequential_20/lstm_62/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_20/lstm_62/lstm_cell_332/splitSplit<sequential_20/lstm_62/lstm_cell_332/split/split_dim:output:04sequential_20/lstm_62/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
+sequential_20/lstm_62/lstm_cell_332/SigmoidSigmoid2sequential_20/lstm_62/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_20/lstm_62/lstm_cell_332/Sigmoid_1Sigmoid2sequential_20/lstm_62/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
'sequential_20/lstm_62/lstm_cell_332/mulMul1sequential_20/lstm_62/lstm_cell_332/Sigmoid_1:y:0&sequential_20/lstm_62/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(sequential_20/lstm_62/lstm_cell_332/ReluRelu2sequential_20/lstm_62/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
)sequential_20/lstm_62/lstm_cell_332/mul_1Mul/sequential_20/lstm_62/lstm_cell_332/Sigmoid:y:06sequential_20/lstm_62/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
)sequential_20/lstm_62/lstm_cell_332/add_1AddV2+sequential_20/lstm_62/lstm_cell_332/mul:z:0-sequential_20/lstm_62/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_20/lstm_62/lstm_cell_332/Sigmoid_2Sigmoid2sequential_20/lstm_62/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_20/lstm_62/lstm_cell_332/Relu_1Relu-sequential_20/lstm_62/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ï
)sequential_20/lstm_62/lstm_cell_332/mul_2Mul1sequential_20/lstm_62/lstm_cell_332/Sigmoid_2:y:08sequential_20/lstm_62/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

3sequential_20/lstm_62/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ú
%sequential_20/lstm_62/TensorArrayV2_1TensorListReserve<sequential_20/lstm_62/TensorArrayV2_1/element_shape:output:0.sequential_20/lstm_62/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_20/lstm_62/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_20/lstm_62/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_20/lstm_62/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_20/lstm_62/whileWhile1sequential_20/lstm_62/while/loop_counter:output:07sequential_20/lstm_62/while/maximum_iterations:output:0#sequential_20/lstm_62/time:output:0.sequential_20/lstm_62/TensorArrayV2_1:handle:0$sequential_20/lstm_62/zeros:output:0&sequential_20/lstm_62/zeros_1:output:0.sequential_20/lstm_62/strided_slice_1:output:0Msequential_20/lstm_62/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_20_lstm_62_lstm_cell_332_matmul_readvariableop_resourceDsequential_20_lstm_62_lstm_cell_332_matmul_1_readvariableop_resourceCsequential_20_lstm_62_lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_20_lstm_62_while_body_2008864*4
cond,R*
(sequential_20_lstm_62_while_cond_2008863*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Fsequential_20/lstm_62/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
8sequential_20/lstm_62/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_20/lstm_62/while:output:3Osequential_20/lstm_62/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0~
+sequential_20/lstm_62/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_20/lstm_62/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_20/lstm_62/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_20/lstm_62/strided_slice_3StridedSliceAsequential_20/lstm_62/TensorArrayV2Stack/TensorListStack:tensor:04sequential_20/lstm_62/strided_slice_3/stack:output:06sequential_20/lstm_62/strided_slice_3/stack_1:output:06sequential_20/lstm_62/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask{
&sequential_20/lstm_62/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_20/lstm_62/transpose_1	TransposeAsequential_20/lstm_62/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_20/lstm_62/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
sequential_20/lstm_62/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_20/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_20_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0¿
sequential_20/dense_20/MatMulMatMul.sequential_20/lstm_62/strided_slice_3:output:04sequential_20/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_20/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_20/dense_20/BiasAddBiasAdd'sequential_20/dense_20/MatMul:product:05sequential_20/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_20/dense_20/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp.^sequential_20/dense_20/BiasAdd/ReadVariableOp-^sequential_20/dense_20/MatMul/ReadVariableOp;^sequential_20/lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp:^sequential_20/lstm_60/lstm_cell_330/MatMul/ReadVariableOp<^sequential_20/lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp^sequential_20/lstm_60/while;^sequential_20/lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp:^sequential_20/lstm_61/lstm_cell_331/MatMul/ReadVariableOp<^sequential_20/lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp^sequential_20/lstm_61/while;^sequential_20/lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp:^sequential_20/lstm_62/lstm_cell_332/MatMul/ReadVariableOp<^sequential_20/lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp^sequential_20/lstm_62/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2^
-sequential_20/dense_20/BiasAdd/ReadVariableOp-sequential_20/dense_20/BiasAdd/ReadVariableOp2\
,sequential_20/dense_20/MatMul/ReadVariableOp,sequential_20/dense_20/MatMul/ReadVariableOp2x
:sequential_20/lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp:sequential_20/lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp2v
9sequential_20/lstm_60/lstm_cell_330/MatMul/ReadVariableOp9sequential_20/lstm_60/lstm_cell_330/MatMul/ReadVariableOp2z
;sequential_20/lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp;sequential_20/lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp2:
sequential_20/lstm_60/whilesequential_20/lstm_60/while2x
:sequential_20/lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp:sequential_20/lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp2v
9sequential_20/lstm_61/lstm_cell_331/MatMul/ReadVariableOp9sequential_20/lstm_61/lstm_cell_331/MatMul/ReadVariableOp2z
;sequential_20/lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp;sequential_20/lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp2:
sequential_20/lstm_61/whilesequential_20/lstm_61/while2x
:sequential_20/lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp:sequential_20/lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp2v
9sequential_20/lstm_62/lstm_cell_332/MatMul/ReadVariableOp9sequential_20/lstm_62/lstm_cell_332/MatMul/ReadVariableOp2z
;sequential_20/lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp;sequential_20/lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp2:
sequential_20/lstm_62/whilesequential_20/lstm_62/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_60_input
áJ
¢
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010834

inputs?
,lstm_cell_331_matmul_readvariableop_resource:	dÈA
.lstm_cell_331_matmul_1_readvariableop_resource:	2È<
-lstm_cell_331_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_331/BiasAdd/ReadVariableOp¢#lstm_cell_331/MatMul/ReadVariableOp¢%lstm_cell_331/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_331/MatMul/ReadVariableOpReadVariableOp,lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_331/MatMulMatMulstrided_slice_2:output:0+lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_331/MatMul_1MatMulzeros:output:0-lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_331/addAddV2lstm_cell_331/MatMul:product:0 lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_331/BiasAddBiasAddlstm_cell_331/add:z:0,lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_331/splitSplit&lstm_cell_331/split/split_dim:output:0lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_331/SigmoidSigmoidlstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_1Sigmoidlstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_331/mulMullstm_cell_331/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_331/ReluRelulstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_1Mullstm_cell_331/Sigmoid:y:0 lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_331/add_1AddV2lstm_cell_331/mul:z:0lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_2Sigmoidlstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_331/Relu_1Relulstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_2Mullstm_cell_331/Sigmoid_2:y:0"lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_331_matmul_readvariableop_resource.lstm_cell_331_matmul_1_readvariableop_resource-lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2010750*
condR
while_cond_2010749*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_331/BiasAdd/ReadVariableOp$^lstm_cell_331/MatMul/ReadVariableOp&^lstm_cell_331/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_331/BiasAdd/ReadVariableOp$lstm_cell_331/BiasAdd/ReadVariableOp2J
#lstm_cell_331/MatMul/ReadVariableOp#lstm_cell_331/MatMul/ReadVariableOp2N
%lstm_cell_331/MatMul_1/ReadVariableOp%lstm_cell_331/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
£

(sequential_20_lstm_60_while_cond_2008585H
Dsequential_20_lstm_60_while_sequential_20_lstm_60_while_loop_counterN
Jsequential_20_lstm_60_while_sequential_20_lstm_60_while_maximum_iterations+
'sequential_20_lstm_60_while_placeholder-
)sequential_20_lstm_60_while_placeholder_1-
)sequential_20_lstm_60_while_placeholder_2-
)sequential_20_lstm_60_while_placeholder_3J
Fsequential_20_lstm_60_while_less_sequential_20_lstm_60_strided_slice_1a
]sequential_20_lstm_60_while_sequential_20_lstm_60_while_cond_2008585___redundant_placeholder0a
]sequential_20_lstm_60_while_sequential_20_lstm_60_while_cond_2008585___redundant_placeholder1a
]sequential_20_lstm_60_while_sequential_20_lstm_60_while_cond_2008585___redundant_placeholder2a
]sequential_20_lstm_60_while_sequential_20_lstm_60_while_cond_2008585___redundant_placeholder3(
$sequential_20_lstm_60_while_identity
º
 sequential_20/lstm_60/while/LessLess'sequential_20_lstm_60_while_placeholderFsequential_20_lstm_60_while_less_sequential_20_lstm_60_strided_slice_1*
T0*
_output_shapes
: w
$sequential_20/lstm_60/while/IdentityIdentity$sequential_20/lstm_60/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_20_lstm_60_while_identity-sequential_20/lstm_60/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
´
ò
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011179
lstm_60_input"
lstm_60_2011152:	"
lstm_60_2011154:	d
lstm_60_2011156:	"
lstm_61_2011159:	dÈ"
lstm_61_2011161:	2È
lstm_61_2011163:	È!
lstm_62_2011166:2(!
lstm_62_2011168:
(
lstm_62_2011170:("
dense_20_2011173:

dense_20_2011175:
identity¢ dense_20/StatefulPartitionedCall¢lstm_60/StatefulPartitionedCall¢lstm_61/StatefulPartitionedCall¢lstm_62/StatefulPartitionedCall
lstm_60/StatefulPartitionedCallStatefulPartitionedCalllstm_60_inputlstm_60_2011152lstm_60_2011154lstm_60_2011156*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010999¨
lstm_61/StatefulPartitionedCallStatefulPartitionedCall(lstm_60/StatefulPartitionedCall:output:0lstm_61_2011159lstm_61_2011161lstm_61_2011163*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010834¤
lstm_62/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0lstm_62_2011166lstm_62_2011168lstm_62_2011170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2010669
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_62/StatefulPartitionedCall:output:0dense_20_2011173dense_20_2011175*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2010471x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_20/StatefulPartitionedCall ^lstm_60/StatefulPartitionedCall ^lstm_61/StatefulPartitionedCall ^lstm_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_60/StatefulPartitionedCalllstm_60/StatefulPartitionedCall2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2B
lstm_62/StatefulPartitionedCalllstm_62/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_60_input
º
È
while_cond_2013126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2013126___redundant_placeholder05
1while_while_cond_2013126___redundant_placeholder15
1while_while_cond_2013126___redundant_placeholder25
1while_while_cond_2013126___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
#
ñ
while_body_2009576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_331_2009600_0:	dÈ0
while_lstm_cell_331_2009602_0:	2È,
while_lstm_cell_331_2009604_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_331_2009600:	dÈ.
while_lstm_cell_331_2009602:	2È*
while_lstm_cell_331_2009604:	È¢+while/lstm_cell_331/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_331/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_331_2009600_0while_lstm_cell_331_2009602_0while_lstm_cell_331_2009604_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009517Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_331/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_331/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_331/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_331/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_331_2009600while_lstm_cell_331_2009600_0"<
while_lstm_cell_331_2009602while_lstm_cell_331_2009602_0"<
while_lstm_cell_331_2009604while_lstm_cell_331_2009604_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_331/StatefulPartitionedCall+while/lstm_cell_331/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
£

(sequential_20_lstm_61_while_cond_2008724H
Dsequential_20_lstm_61_while_sequential_20_lstm_61_while_loop_counterN
Jsequential_20_lstm_61_while_sequential_20_lstm_61_while_maximum_iterations+
'sequential_20_lstm_61_while_placeholder-
)sequential_20_lstm_61_while_placeholder_1-
)sequential_20_lstm_61_while_placeholder_2-
)sequential_20_lstm_61_while_placeholder_3J
Fsequential_20_lstm_61_while_less_sequential_20_lstm_61_strided_slice_1a
]sequential_20_lstm_61_while_sequential_20_lstm_61_while_cond_2008724___redundant_placeholder0a
]sequential_20_lstm_61_while_sequential_20_lstm_61_while_cond_2008724___redundant_placeholder1a
]sequential_20_lstm_61_while_sequential_20_lstm_61_while_cond_2008724___redundant_placeholder2a
]sequential_20_lstm_61_while_sequential_20_lstm_61_while_cond_2008724___redundant_placeholder3(
$sequential_20_lstm_61_while_identity
º
 sequential_20/lstm_61/while/LessLess'sequential_20_lstm_61_while_placeholderFsequential_20_lstm_61_while_less_sequential_20_lstm_61_strided_slice_1*
T0*
_output_shapes
: w
$sequential_20/lstm_61/while/IdentityIdentity$sequential_20/lstm_61/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_20_lstm_61_while_identity-sequential_20/lstm_61/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_2013742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2013742___redundant_placeholder05
1while_while_cond_2013742___redundant_placeholder15
1while_while_cond_2013742___redundant_placeholder25
1while_while_cond_2013742___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
#
ñ
while_body_2009226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_330_2009250_0:	0
while_lstm_cell_330_2009252_0:	d,
while_lstm_cell_330_2009254_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_330_2009250:	.
while_lstm_cell_330_2009252:	d*
while_lstm_cell_330_2009254:	¢+while/lstm_cell_330/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_330/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_330_2009250_0while_lstm_cell_330_2009252_0while_lstm_cell_330_2009254_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009167Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_330/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_330/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_330/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_330/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_330_2009250while_lstm_cell_330_2009250_0"<
while_lstm_cell_330_2009252while_lstm_cell_330_2009252_0"<
while_lstm_cell_330_2009254while_lstm_cell_330_2009254_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_330/StatefulPartitionedCall+while/lstm_cell_330/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
È	
ö
E__inference_dense_20_layer_call_and_return_conditional_losses_2010471

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ä8
Ô
while_body_2013743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_332_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_332_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_332_matmul_readvariableop_resource:2(F
4while_lstm_cell_332_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_332_biasadd_readvariableop_resource:(¢*while/lstm_cell_332/BiasAdd/ReadVariableOp¢)while/lstm_cell_332/MatMul/ReadVariableOp¢+while/lstm_cell_332/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_332/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_332/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_332/addAddV2$while/lstm_cell_332/MatMul:product:0&while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_332/BiasAddBiasAddwhile/lstm_cell_332/add:z:02while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_332/splitSplit,while/lstm_cell_332/split/split_dim:output:0$while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_332/SigmoidSigmoid"while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_1Sigmoid"while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mulMul!while/lstm_cell_332/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_332/ReluRelu"while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_1Mulwhile/lstm_cell_332/Sigmoid:y:0&while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/add_1AddV2while/lstm_cell_332/mul:z:0while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_2Sigmoid"while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_332/Relu_1Reluwhile/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_2Mul!while/lstm_cell_332/Sigmoid_2:y:0(while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_332/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_332/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_332/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_332/BiasAdd/ReadVariableOp*^while/lstm_cell_332/MatMul/ReadVariableOp,^while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_332_biasadd_readvariableop_resource5while_lstm_cell_332_biasadd_readvariableop_resource_0"n
4while_lstm_cell_332_matmul_1_readvariableop_resource6while_lstm_cell_332_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_332_matmul_readvariableop_resource4while_lstm_cell_332_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_332/BiasAdd/ReadVariableOp*while/lstm_cell_332/BiasAdd/ReadVariableOp2V
)while/lstm_cell_332/MatMul/ReadVariableOp)while/lstm_cell_332/MatMul/ReadVariableOp2Z
+while/lstm_cell_332/MatMul_1/ReadVariableOp+while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Õ

J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2014283

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1


è
lstm_60_while_cond_2011326,
(lstm_60_while_lstm_60_while_loop_counter2
.lstm_60_while_lstm_60_while_maximum_iterations
lstm_60_while_placeholder
lstm_60_while_placeholder_1
lstm_60_while_placeholder_2
lstm_60_while_placeholder_3.
*lstm_60_while_less_lstm_60_strided_slice_1E
Alstm_60_while_lstm_60_while_cond_2011326___redundant_placeholder0E
Alstm_60_while_lstm_60_while_cond_2011326___redundant_placeholder1E
Alstm_60_while_lstm_60_while_cond_2011326___redundant_placeholder2E
Alstm_60_while_lstm_60_while_cond_2011326___redundant_placeholder3
lstm_60_while_identity

lstm_60/while/LessLesslstm_60_while_placeholder*lstm_60_while_less_lstm_60_strided_slice_1*
T0*
_output_shapes
: [
lstm_60/while/IdentityIdentitylstm_60/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_60_while_identitylstm_60/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_2013885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2013885___redundant_placeholder05
1while_while_cond_2013885___redundant_placeholder15
1while_while_cond_2013885___redundant_placeholder25
1while_while_cond_2013885___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
×

J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009021

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
º
È
while_cond_2012224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2012224___redundant_placeholder05
1while_while_cond_2012224___redundant_placeholder15
1while_while_cond_2012224___redundant_placeholder25
1while_while_cond_2012224___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_2013127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_331_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_331_biasadd_readvariableop_resource:	È¢*while/lstm_cell_331/BiasAdd/ReadVariableOp¢)while/lstm_cell_331/MatMul/ReadVariableOp¢+while/lstm_cell_331/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_331/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_331/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_331/addAddV2$while/lstm_cell_331/MatMul:product:0&while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_331/BiasAddBiasAddwhile/lstm_cell_331/add:z:02while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_331/splitSplit,while/lstm_cell_331/split/split_dim:output:0$while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_331/SigmoidSigmoid"while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_1Sigmoid"while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mulMul!while/lstm_cell_331/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_331/ReluRelu"while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_1Mulwhile/lstm_cell_331/Sigmoid:y:0&while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/add_1AddV2while/lstm_cell_331/mul:z:0while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_2Sigmoid"while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_331/Relu_1Reluwhile/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_2Mul!while/lstm_cell_331/Sigmoid_2:y:0(while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_331/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_331/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_331/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_331/BiasAdd/ReadVariableOp*^while/lstm_cell_331/MatMul/ReadVariableOp,^while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_331_biasadd_readvariableop_resource5while_lstm_cell_331_biasadd_readvariableop_resource_0"n
4while_lstm_cell_331_matmul_1_readvariableop_resource6while_lstm_cell_331_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_331_matmul_readvariableop_resource4while_lstm_cell_331_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_331/BiasAdd/ReadVariableOp*while/lstm_cell_331/BiasAdd/ReadVariableOp2V
)while/lstm_cell_331/MatMul/ReadVariableOp)while/lstm_cell_331/MatMul/ReadVariableOp2Z
+while/lstm_cell_331/MatMul_1/ReadVariableOp+while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ýA
Ô

lstm_62_while_body_2012032,
(lstm_62_while_lstm_62_while_loop_counter2
.lstm_62_while_lstm_62_while_maximum_iterations
lstm_62_while_placeholder
lstm_62_while_placeholder_1
lstm_62_while_placeholder_2
lstm_62_while_placeholder_3+
'lstm_62_while_lstm_62_strided_slice_1_0g
clstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0:2(P
>lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(K
=lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0:(
lstm_62_while_identity
lstm_62_while_identity_1
lstm_62_while_identity_2
lstm_62_while_identity_3
lstm_62_while_identity_4
lstm_62_while_identity_5)
%lstm_62_while_lstm_62_strided_slice_1e
alstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensorL
:lstm_62_while_lstm_cell_332_matmul_readvariableop_resource:2(N
<lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource:
(I
;lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource:(¢2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp¢1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp¢3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp
?lstm_62/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_62/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensor_0lstm_62_while_placeholderHlstm_62/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp<lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_62/while/lstm_cell_332/MatMulMatMul8lstm_62/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp>lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_62/while/lstm_cell_332/MatMul_1MatMullstm_62_while_placeholder_2;lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_62/while/lstm_cell_332/addAddV2,lstm_62/while/lstm_cell_332/MatMul:product:0.lstm_62/while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp=lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_62/while/lstm_cell_332/BiasAddBiasAdd#lstm_62/while/lstm_cell_332/add:z:0:lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_62/while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_62/while/lstm_cell_332/splitSplit4lstm_62/while/lstm_cell_332/split/split_dim:output:0,lstm_62/while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_62/while/lstm_cell_332/SigmoidSigmoid*lstm_62/while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_62/while/lstm_cell_332/Sigmoid_1Sigmoid*lstm_62/while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_62/while/lstm_cell_332/mulMul)lstm_62/while/lstm_cell_332/Sigmoid_1:y:0lstm_62_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_62/while/lstm_cell_332/ReluRelu*lstm_62/while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_62/while/lstm_cell_332/mul_1Mul'lstm_62/while/lstm_cell_332/Sigmoid:y:0.lstm_62/while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_62/while/lstm_cell_332/add_1AddV2#lstm_62/while/lstm_cell_332/mul:z:0%lstm_62/while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_62/while/lstm_cell_332/Sigmoid_2Sigmoid*lstm_62/while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_62/while/lstm_cell_332/Relu_1Relu%lstm_62/while/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_62/while/lstm_cell_332/mul_2Mul)lstm_62/while/lstm_cell_332/Sigmoid_2:y:00lstm_62/while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_62/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_62_while_placeholder_1lstm_62_while_placeholder%lstm_62/while/lstm_cell_332/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_62/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_62/while/addAddV2lstm_62_while_placeholderlstm_62/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_62/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_62/while/add_1AddV2(lstm_62_while_lstm_62_while_loop_counterlstm_62/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_62/while/IdentityIdentitylstm_62/while/add_1:z:0^lstm_62/while/NoOp*
T0*
_output_shapes
: 
lstm_62/while/Identity_1Identity.lstm_62_while_lstm_62_while_maximum_iterations^lstm_62/while/NoOp*
T0*
_output_shapes
: q
lstm_62/while/Identity_2Identitylstm_62/while/add:z:0^lstm_62/while/NoOp*
T0*
_output_shapes
: 
lstm_62/while/Identity_3IdentityBlstm_62/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_62/while/NoOp*
T0*
_output_shapes
: 
lstm_62/while/Identity_4Identity%lstm_62/while/lstm_cell_332/mul_2:z:0^lstm_62/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/while/Identity_5Identity%lstm_62/while/lstm_cell_332/add_1:z:0^lstm_62/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_62/while/NoOpNoOp3^lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2^lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp4^lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_62_while_identitylstm_62/while/Identity:output:0"=
lstm_62_while_identity_1!lstm_62/while/Identity_1:output:0"=
lstm_62_while_identity_2!lstm_62/while/Identity_2:output:0"=
lstm_62_while_identity_3!lstm_62/while/Identity_3:output:0"=
lstm_62_while_identity_4!lstm_62/while/Identity_4:output:0"=
lstm_62_while_identity_5!lstm_62/while/Identity_5:output:0"P
%lstm_62_while_lstm_62_strided_slice_1'lstm_62_while_lstm_62_strided_slice_1_0"|
;lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource=lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0"~
<lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource>lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0"z
:lstm_62_while_lstm_cell_332_matmul_readvariableop_resource<lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0"È
alstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensorclstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2f
1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp2j
3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
«
¸
)__inference_lstm_60_layer_call_fn_2012144
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2009295|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ï
ø
/__inference_lstm_cell_331_layer_call_fn_2014121

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009517o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
Ñ8
Ú
while_body_2013270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_331_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_331_biasadd_readvariableop_resource:	È¢*while/lstm_cell_331/BiasAdd/ReadVariableOp¢)while/lstm_cell_331/MatMul/ReadVariableOp¢+while/lstm_cell_331/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_331/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_331/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_331/addAddV2$while/lstm_cell_331/MatMul:product:0&while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_331/BiasAddBiasAddwhile/lstm_cell_331/add:z:02while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_331/splitSplit,while/lstm_cell_331/split/split_dim:output:0$while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_331/SigmoidSigmoid"while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_1Sigmoid"while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mulMul!while/lstm_cell_331/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_331/ReluRelu"while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_1Mulwhile/lstm_cell_331/Sigmoid:y:0&while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/add_1AddV2while/lstm_cell_331/mul:z:0while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_2Sigmoid"while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_331/Relu_1Reluwhile/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_2Mul!while/lstm_cell_331/Sigmoid_2:y:0(while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_331/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_331/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_331/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_331/BiasAdd/ReadVariableOp*^while/lstm_cell_331/MatMul/ReadVariableOp,^while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_331_biasadd_readvariableop_resource5while_lstm_cell_331_biasadd_readvariableop_resource_0"n
4while_lstm_cell_331_matmul_1_readvariableop_resource6while_lstm_cell_331_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_331_matmul_readvariableop_resource4while_lstm_cell_331_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_331/BiasAdd/ReadVariableOp*while/lstm_cell_331/BiasAdd/ReadVariableOp2V
)while/lstm_cell_331/MatMul/ReadVariableOp)while/lstm_cell_331/MatMul/ReadVariableOp2Z
+while/lstm_cell_331/MatMul_1/ReadVariableOp+while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ä8
Ô
while_body_2010369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_332_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_332_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_332_matmul_readvariableop_resource:2(F
4while_lstm_cell_332_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_332_biasadd_readvariableop_resource:(¢*while/lstm_cell_332/BiasAdd/ReadVariableOp¢)while/lstm_cell_332/MatMul/ReadVariableOp¢+while/lstm_cell_332/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_332/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_332/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_332/addAddV2$while/lstm_cell_332/MatMul:product:0&while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_332/BiasAddBiasAddwhile/lstm_cell_332/add:z:02while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_332/splitSplit,while/lstm_cell_332/split/split_dim:output:0$while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_332/SigmoidSigmoid"while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_1Sigmoid"while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mulMul!while/lstm_cell_332/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_332/ReluRelu"while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_1Mulwhile/lstm_cell_332/Sigmoid:y:0&while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/add_1AddV2while/lstm_cell_332/mul:z:0while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_2Sigmoid"while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_332/Relu_1Reluwhile/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_2Mul!while/lstm_cell_332/Sigmoid_2:y:0(while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_332/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_332/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_332/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_332/BiasAdd/ReadVariableOp*^while/lstm_cell_332/MatMul/ReadVariableOp,^while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_332_biasadd_readvariableop_resource5while_lstm_cell_332_biasadd_readvariableop_resource_0"n
4while_lstm_cell_332_matmul_1_readvariableop_resource6while_lstm_cell_332_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_332_matmul_readvariableop_resource4while_lstm_cell_332_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_332/BiasAdd/ReadVariableOp*while/lstm_cell_332/BiasAdd/ReadVariableOp2V
)while/lstm_cell_332/MatMul/ReadVariableOp)while/lstm_cell_332/MatMul/ReadVariableOp2Z
+while/lstm_cell_332/MatMul_1/ReadVariableOp+while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
×

J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009371

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
#
ñ
while_body_2009035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_330_2009059_0:	0
while_lstm_cell_330_2009061_0:	d,
while_lstm_cell_330_2009063_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_330_2009059:	.
while_lstm_cell_330_2009061:	d*
while_lstm_cell_330_2009063:	¢+while/lstm_cell_330/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_330/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_330_2009059_0while_lstm_cell_330_2009061_0while_lstm_cell_330_2009063_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009021Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_330/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_330/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_330/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_330/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_330_2009059while_lstm_cell_330_2009059_0"<
while_lstm_cell_330_2009061while_lstm_cell_330_2009061_0"<
while_lstm_cell_330_2009063while_lstm_cell_330_2009063_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_330/StatefulPartitionedCall+while/lstm_cell_330/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 


è
lstm_62_while_cond_2012031,
(lstm_62_while_lstm_62_while_loop_counter2
.lstm_62_while_lstm_62_while_maximum_iterations
lstm_62_while_placeholder
lstm_62_while_placeholder_1
lstm_62_while_placeholder_2
lstm_62_while_placeholder_3.
*lstm_62_while_less_lstm_62_strided_slice_1E
Alstm_62_while_lstm_62_while_cond_2012031___redundant_placeholder0E
Alstm_62_while_lstm_62_while_cond_2012031___redundant_placeholder1E
Alstm_62_while_lstm_62_while_cond_2012031___redundant_placeholder2E
Alstm_62_while_lstm_62_while_cond_2012031___redundant_placeholder3
lstm_62_while_identity

lstm_62/while/LessLesslstm_62_while_placeholder*lstm_62_while_less_lstm_62_strided_slice_1*
T0*
_output_shapes
: [
lstm_62/while/IdentityIdentitylstm_62/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_62_while_identitylstm_62/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Ä8
Ô
while_body_2013600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_332_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_332_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_332_matmul_readvariableop_resource:2(F
4while_lstm_cell_332_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_332_biasadd_readvariableop_resource:(¢*while/lstm_cell_332/BiasAdd/ReadVariableOp¢)while/lstm_cell_332/MatMul/ReadVariableOp¢+while/lstm_cell_332/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_332/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_332/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_332/addAddV2$while/lstm_cell_332/MatMul:product:0&while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_332/BiasAddBiasAddwhile/lstm_cell_332/add:z:02while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_332/splitSplit,while/lstm_cell_332/split/split_dim:output:0$while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_332/SigmoidSigmoid"while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_1Sigmoid"while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mulMul!while/lstm_cell_332/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_332/ReluRelu"while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_1Mulwhile/lstm_cell_332/Sigmoid:y:0&while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/add_1AddV2while/lstm_cell_332/mul:z:0while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_2Sigmoid"while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_332/Relu_1Reluwhile/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_2Mul!while/lstm_cell_332/Sigmoid_2:y:0(while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_332/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_332/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_332/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_332/BiasAdd/ReadVariableOp*^while/lstm_cell_332/MatMul/ReadVariableOp,^while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_332_biasadd_readvariableop_resource5while_lstm_cell_332_biasadd_readvariableop_resource_0"n
4while_lstm_cell_332_matmul_1_readvariableop_resource6while_lstm_cell_332_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_332_matmul_readvariableop_resource4while_lstm_cell_332_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_332/BiasAdd/ReadVariableOp*while/lstm_cell_332/BiasAdd/ReadVariableOp2V
)while/lstm_cell_332/MatMul/ReadVariableOp)while/lstm_cell_332/MatMul/ReadVariableOp2Z
+while/lstm_cell_332/MatMul_1/ReadVariableOp+while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 


è
lstm_61_while_cond_2011465,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3.
*lstm_61_while_less_lstm_61_strided_slice_1E
Alstm_61_while_lstm_61_while_cond_2011465___redundant_placeholder0E
Alstm_61_while_lstm_61_while_cond_2011465___redundant_placeholder1E
Alstm_61_while_lstm_61_while_cond_2011465___redundant_placeholder2E
Alstm_61_while_lstm_61_while_cond_2011465___redundant_placeholder3
lstm_61_while_identity

lstm_61/while/LessLesslstm_61_while_placeholder*lstm_61_while_less_lstm_61_strided_slice_1*
T0*
_output_shapes
: [
lstm_61/while/IdentityIdentitylstm_61/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_61_while_identitylstm_61/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_2010915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_330_matmul_readvariableop_resource_0:	I
6while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_330_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_330_matmul_readvariableop_resource:	G
4while_lstm_cell_330_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_330_biasadd_readvariableop_resource:	¢*while/lstm_cell_330/BiasAdd/ReadVariableOp¢)while/lstm_cell_330/MatMul/ReadVariableOp¢+while/lstm_cell_330/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_330/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_330/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_330/addAddV2$while/lstm_cell_330/MatMul:product:0&while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_330/BiasAddBiasAddwhile/lstm_cell_330/add:z:02while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_330/splitSplit,while/lstm_cell_330/split/split_dim:output:0$while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_330/SigmoidSigmoid"while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_1Sigmoid"while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mulMul!while/lstm_cell_330/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_330/ReluRelu"while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_1Mulwhile/lstm_cell_330/Sigmoid:y:0&while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/add_1AddV2while/lstm_cell_330/mul:z:0while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_2Sigmoid"while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_330/Relu_1Reluwhile/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_2Mul!while/lstm_cell_330/Sigmoid_2:y:0(while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_330/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_330/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_330/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_330/BiasAdd/ReadVariableOp*^while/lstm_cell_330/MatMul/ReadVariableOp,^while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_330_biasadd_readvariableop_resource5while_lstm_cell_330_biasadd_readvariableop_resource_0"n
4while_lstm_cell_330_matmul_1_readvariableop_resource6while_lstm_cell_330_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_330_matmul_readvariableop_resource4while_lstm_cell_330_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_330/BiasAdd/ReadVariableOp*while/lstm_cell_330/BiasAdd/ReadVariableOp2V
)while/lstm_cell_330/MatMul/ReadVariableOp)while/lstm_cell_330/MatMul/ReadVariableOp2Z
+while/lstm_cell_330/MatMul_1/ReadVariableOp+while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_2010218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2010218___redundant_placeholder05
1while_while_cond_2010218___redundant_placeholder15
1while_while_cond_2010218___redundant_placeholder25
1while_while_cond_2010218___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ï
ø
/__inference_lstm_cell_331_layer_call_fn_2014104

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009371o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
þ

J__inference_sequential_20_layer_call_and_return_conditional_losses_2011695

inputsG
4lstm_60_lstm_cell_330_matmul_readvariableop_resource:	I
6lstm_60_lstm_cell_330_matmul_1_readvariableop_resource:	dD
5lstm_60_lstm_cell_330_biasadd_readvariableop_resource:	G
4lstm_61_lstm_cell_331_matmul_readvariableop_resource:	dÈI
6lstm_61_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈD
5lstm_61_lstm_cell_331_biasadd_readvariableop_resource:	ÈF
4lstm_62_lstm_cell_332_matmul_readvariableop_resource:2(H
6lstm_62_lstm_cell_332_matmul_1_readvariableop_resource:
(C
5lstm_62_lstm_cell_332_biasadd_readvariableop_resource:(9
'dense_20_matmul_readvariableop_resource:
6
(dense_20_biasadd_readvariableop_resource:
identity¢dense_20/BiasAdd/ReadVariableOp¢dense_20/MatMul/ReadVariableOp¢,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp¢+lstm_60/lstm_cell_330/MatMul/ReadVariableOp¢-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp¢lstm_60/while¢,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp¢+lstm_61/lstm_cell_331/MatMul/ReadVariableOp¢-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp¢lstm_61/while¢,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp¢+lstm_62/lstm_cell_332/MatMul/ReadVariableOp¢-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp¢lstm_62/whileC
lstm_60/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_60/strided_sliceStridedSlicelstm_60/Shape:output:0$lstm_60/strided_slice/stack:output:0&lstm_60/strided_slice/stack_1:output:0&lstm_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_60/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_60/zeros/packedPacklstm_60/strided_slice:output:0lstm_60/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_60/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_60/zerosFilllstm_60/zeros/packed:output:0lstm_60/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_60/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_60/zeros_1/packedPacklstm_60/strided_slice:output:0!lstm_60/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_60/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_60/zeros_1Filllstm_60/zeros_1/packed:output:0lstm_60/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_60/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_60/transpose	Transposeinputslstm_60/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_60/Shape_1Shapelstm_60/transpose:y:0*
T0*
_output_shapes
:g
lstm_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_60/strided_slice_1StridedSlicelstm_60/Shape_1:output:0&lstm_60/strided_slice_1/stack:output:0(lstm_60/strided_slice_1/stack_1:output:0(lstm_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_60/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_60/TensorArrayV2TensorListReserve,lstm_60/TensorArrayV2/element_shape:output:0 lstm_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_60/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_60/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_60/transpose:y:0Flstm_60/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_60/strided_slice_2StridedSlicelstm_60/transpose:y:0&lstm_60/strided_slice_2/stack:output:0(lstm_60/strided_slice_2/stack_1:output:0(lstm_60/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_60/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4lstm_60_lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_60/lstm_cell_330/MatMulMatMul lstm_60/strided_slice_2:output:03lstm_60/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6lstm_60_lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_60/lstm_cell_330/MatMul_1MatMullstm_60/zeros:output:05lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_60/lstm_cell_330/addAddV2&lstm_60/lstm_cell_330/MatMul:product:0(lstm_60/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5lstm_60_lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_60/lstm_cell_330/BiasAddBiasAddlstm_60/lstm_cell_330/add:z:04lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_60/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_60/lstm_cell_330/splitSplit.lstm_60/lstm_cell_330/split/split_dim:output:0&lstm_60/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_60/lstm_cell_330/SigmoidSigmoid$lstm_60/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/Sigmoid_1Sigmoid$lstm_60/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/mulMul#lstm_60/lstm_cell_330/Sigmoid_1:y:0lstm_60/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_60/lstm_cell_330/ReluRelu$lstm_60/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_60/lstm_cell_330/mul_1Mul!lstm_60/lstm_cell_330/Sigmoid:y:0(lstm_60/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/add_1AddV2lstm_60/lstm_cell_330/mul:z:0lstm_60/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/Sigmoid_2Sigmoid$lstm_60/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_60/lstm_cell_330/Relu_1Relulstm_60/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_60/lstm_cell_330/mul_2Mul#lstm_60/lstm_cell_330/Sigmoid_2:y:0*lstm_60/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_60/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_60/TensorArrayV2_1TensorListReserve.lstm_60/TensorArrayV2_1/element_shape:output:0 lstm_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_60/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_60/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_60/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_60/whileWhile#lstm_60/while/loop_counter:output:0)lstm_60/while/maximum_iterations:output:0lstm_60/time:output:0 lstm_60/TensorArrayV2_1:handle:0lstm_60/zeros:output:0lstm_60/zeros_1:output:0 lstm_60/strided_slice_1:output:0?lstm_60/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_60_lstm_cell_330_matmul_readvariableop_resource6lstm_60_lstm_cell_330_matmul_1_readvariableop_resource5lstm_60_lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_60_while_body_2011327*&
condR
lstm_60_while_cond_2011326*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_60/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_60/TensorArrayV2Stack/TensorListStackTensorListStacklstm_60/while:output:3Alstm_60/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_60/strided_slice_3StridedSlice3lstm_60/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_60/strided_slice_3/stack:output:0(lstm_60/strided_slice_3/stack_1:output:0(lstm_60/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_60/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_60/transpose_1	Transpose3lstm_60/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_60/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_60/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_61/ShapeShapelstm_60/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_61/strided_sliceStridedSlicelstm_61/Shape:output:0$lstm_61/strided_slice/stack:output:0&lstm_61/strided_slice/stack_1:output:0&lstm_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_61/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/zeros/packedPacklstm_61/strided_slice:output:0lstm_61/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_61/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_61/zerosFilllstm_61/zeros/packed:output:0lstm_61/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_61/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/zeros_1/packedPacklstm_61/strided_slice:output:0!lstm_61/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_61/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_61/zeros_1Filllstm_61/zeros_1/packed:output:0lstm_61/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_61/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_61/transpose	Transposelstm_60/transpose_1:y:0lstm_61/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_61/Shape_1Shapelstm_61/transpose:y:0*
T0*
_output_shapes
:g
lstm_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_61/strided_slice_1StridedSlicelstm_61/Shape_1:output:0&lstm_61/strided_slice_1/stack:output:0(lstm_61/strided_slice_1/stack_1:output:0(lstm_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_61/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_61/TensorArrayV2TensorListReserve,lstm_61/TensorArrayV2/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_61/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_61/transpose:y:0Flstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_61/strided_slice_2StridedSlicelstm_61/transpose:y:0&lstm_61/strided_slice_2/stack:output:0(lstm_61/strided_slice_2/stack_1:output:0(lstm_61/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_61/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4lstm_61_lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_61/lstm_cell_331/MatMulMatMul lstm_61/strided_slice_2:output:03lstm_61/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6lstm_61_lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_61/lstm_cell_331/MatMul_1MatMullstm_61/zeros:output:05lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_61/lstm_cell_331/addAddV2&lstm_61/lstm_cell_331/MatMul:product:0(lstm_61/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5lstm_61_lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_61/lstm_cell_331/BiasAddBiasAddlstm_61/lstm_cell_331/add:z:04lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_61/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_61/lstm_cell_331/splitSplit.lstm_61/lstm_cell_331/split/split_dim:output:0&lstm_61/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_61/lstm_cell_331/SigmoidSigmoid$lstm_61/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/Sigmoid_1Sigmoid$lstm_61/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/mulMul#lstm_61/lstm_cell_331/Sigmoid_1:y:0lstm_61/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_61/lstm_cell_331/ReluRelu$lstm_61/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_61/lstm_cell_331/mul_1Mul!lstm_61/lstm_cell_331/Sigmoid:y:0(lstm_61/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/add_1AddV2lstm_61/lstm_cell_331/mul:z:0lstm_61/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/Sigmoid_2Sigmoid$lstm_61/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_61/lstm_cell_331/Relu_1Relulstm_61/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_61/lstm_cell_331/mul_2Mul#lstm_61/lstm_cell_331/Sigmoid_2:y:0*lstm_61/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_61/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_61/TensorArrayV2_1TensorListReserve.lstm_61/TensorArrayV2_1/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_61/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_61/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_61/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_61/whileWhile#lstm_61/while/loop_counter:output:0)lstm_61/while/maximum_iterations:output:0lstm_61/time:output:0 lstm_61/TensorArrayV2_1:handle:0lstm_61/zeros:output:0lstm_61/zeros_1:output:0 lstm_61/strided_slice_1:output:0?lstm_61/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_61_lstm_cell_331_matmul_readvariableop_resource6lstm_61_lstm_cell_331_matmul_1_readvariableop_resource5lstm_61_lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_61_while_body_2011466*&
condR
lstm_61_while_cond_2011465*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_61/TensorArrayV2Stack/TensorListStackTensorListStacklstm_61/while:output:3Alstm_61/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_61/strided_slice_3StridedSlice3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_61/strided_slice_3/stack:output:0(lstm_61/strided_slice_3/stack_1:output:0(lstm_61/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_61/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_61/transpose_1	Transpose3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_61/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_61/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_62/ShapeShapelstm_61/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_62/strided_sliceStridedSlicelstm_62/Shape:output:0$lstm_62/strided_slice/stack:output:0&lstm_62/strided_slice/stack_1:output:0&lstm_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_62/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_62/zeros/packedPacklstm_62/strided_slice:output:0lstm_62/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_62/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_62/zerosFilllstm_62/zeros/packed:output:0lstm_62/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_62/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_62/zeros_1/packedPacklstm_62/strided_slice:output:0!lstm_62/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_62/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_62/zeros_1Filllstm_62/zeros_1/packed:output:0lstm_62/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_62/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_62/transpose	Transposelstm_61/transpose_1:y:0lstm_62/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_62/Shape_1Shapelstm_62/transpose:y:0*
T0*
_output_shapes
:g
lstm_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_62/strided_slice_1StridedSlicelstm_62/Shape_1:output:0&lstm_62/strided_slice_1/stack:output:0(lstm_62/strided_slice_1/stack_1:output:0(lstm_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_62/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_62/TensorArrayV2TensorListReserve,lstm_62/TensorArrayV2/element_shape:output:0 lstm_62/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_62/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_62/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_62/transpose:y:0Flstm_62/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_62/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_62/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_62/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_62/strided_slice_2StridedSlicelstm_62/transpose:y:0&lstm_62/strided_slice_2/stack:output:0(lstm_62/strided_slice_2/stack_1:output:0(lstm_62/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_62/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4lstm_62_lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_62/lstm_cell_332/MatMulMatMul lstm_62/strided_slice_2:output:03lstm_62/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6lstm_62_lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_62/lstm_cell_332/MatMul_1MatMullstm_62/zeros:output:05lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_62/lstm_cell_332/addAddV2&lstm_62/lstm_cell_332/MatMul:product:0(lstm_62/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5lstm_62_lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_62/lstm_cell_332/BiasAddBiasAddlstm_62/lstm_cell_332/add:z:04lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_62/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_62/lstm_cell_332/splitSplit.lstm_62/lstm_cell_332/split/split_dim:output:0&lstm_62/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_62/lstm_cell_332/SigmoidSigmoid$lstm_62/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/Sigmoid_1Sigmoid$lstm_62/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/mulMul#lstm_62/lstm_cell_332/Sigmoid_1:y:0lstm_62/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_62/lstm_cell_332/ReluRelu$lstm_62/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_62/lstm_cell_332/mul_1Mul!lstm_62/lstm_cell_332/Sigmoid:y:0(lstm_62/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/add_1AddV2lstm_62/lstm_cell_332/mul:z:0lstm_62/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/Sigmoid_2Sigmoid$lstm_62/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_62/lstm_cell_332/Relu_1Relulstm_62/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_62/lstm_cell_332/mul_2Mul#lstm_62/lstm_cell_332/Sigmoid_2:y:0*lstm_62/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_62/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_62/TensorArrayV2_1TensorListReserve.lstm_62/TensorArrayV2_1/element_shape:output:0 lstm_62/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_62/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_62/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_62/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_62/whileWhile#lstm_62/while/loop_counter:output:0)lstm_62/while/maximum_iterations:output:0lstm_62/time:output:0 lstm_62/TensorArrayV2_1:handle:0lstm_62/zeros:output:0lstm_62/zeros_1:output:0 lstm_62/strided_slice_1:output:0?lstm_62/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_62_lstm_cell_332_matmul_readvariableop_resource6lstm_62_lstm_cell_332_matmul_1_readvariableop_resource5lstm_62_lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_62_while_body_2011605*&
condR
lstm_62_while_cond_2011604*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_62/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_62/TensorArrayV2Stack/TensorListStackTensorListStacklstm_62/while:output:3Alstm_62/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_62/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_62/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_62/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_62/strided_slice_3StridedSlice3lstm_62/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_62/strided_slice_3/stack:output:0(lstm_62/strided_slice_3/stack_1:output:0(lstm_62/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_62/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_62/transpose_1	Transpose3lstm_62/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_62/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_62/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_20/MatMulMatMul lstm_62/strided_slice_3:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_20/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp-^lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp,^lstm_60/lstm_cell_330/MatMul/ReadVariableOp.^lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp^lstm_60/while-^lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp,^lstm_61/lstm_cell_331/MatMul/ReadVariableOp.^lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp^lstm_61/while-^lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp,^lstm_62/lstm_cell_332/MatMul/ReadVariableOp.^lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp^lstm_62/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2\
,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp2Z
+lstm_60/lstm_cell_330/MatMul/ReadVariableOp+lstm_60/lstm_cell_330/MatMul/ReadVariableOp2^
-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp2
lstm_60/whilelstm_60/while2\
,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp2Z
+lstm_61/lstm_cell_331/MatMul/ReadVariableOp+lstm_61/lstm_cell_331/MatMul/ReadVariableOp2^
-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp2
lstm_61/whilelstm_61/while2\
,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp2Z
+lstm_62/lstm_cell_332/MatMul/ReadVariableOp+lstm_62/lstm_cell_332/MatMul/ReadVariableOp2^
-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp2
lstm_62/whilelstm_62/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009517

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
ÊR

(sequential_20_lstm_60_while_body_2008586H
Dsequential_20_lstm_60_while_sequential_20_lstm_60_while_loop_counterN
Jsequential_20_lstm_60_while_sequential_20_lstm_60_while_maximum_iterations+
'sequential_20_lstm_60_while_placeholder-
)sequential_20_lstm_60_while_placeholder_1-
)sequential_20_lstm_60_while_placeholder_2-
)sequential_20_lstm_60_while_placeholder_3G
Csequential_20_lstm_60_while_sequential_20_lstm_60_strided_slice_1_0
sequential_20_lstm_60_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_60_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_20_lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0:	_
Lsequential_20_lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dZ
Ksequential_20_lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0:	(
$sequential_20_lstm_60_while_identity*
&sequential_20_lstm_60_while_identity_1*
&sequential_20_lstm_60_while_identity_2*
&sequential_20_lstm_60_while_identity_3*
&sequential_20_lstm_60_while_identity_4*
&sequential_20_lstm_60_while_identity_5E
Asequential_20_lstm_60_while_sequential_20_lstm_60_strided_slice_1
}sequential_20_lstm_60_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_60_tensorarrayunstack_tensorlistfromtensor[
Hsequential_20_lstm_60_while_lstm_cell_330_matmul_readvariableop_resource:	]
Jsequential_20_lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource:	dX
Isequential_20_lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource:	¢@sequential_20/lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp¢?sequential_20/lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp¢Asequential_20/lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp
Msequential_20/lstm_60/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_20/lstm_60/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_20_lstm_60_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_60_tensorarrayunstack_tensorlistfromtensor_0'sequential_20_lstm_60_while_placeholderVsequential_20/lstm_60/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ë
?sequential_20/lstm_60/while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOpJsequential_20_lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0þ
0sequential_20/lstm_60/while/lstm_cell_330/MatMulMatMulFsequential_20/lstm_60/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_20/lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Asequential_20/lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOpLsequential_20_lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0å
2sequential_20/lstm_60/while/lstm_cell_330/MatMul_1MatMul)sequential_20_lstm_60_while_placeholder_2Isequential_20/lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
-sequential_20/lstm_60/while/lstm_cell_330/addAddV2:sequential_20/lstm_60/while/lstm_cell_330/MatMul:product:0<sequential_20/lstm_60/while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
@sequential_20/lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOpKsequential_20_lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_20/lstm_60/while/lstm_cell_330/BiasAddBiasAdd1sequential_20/lstm_60/while/lstm_cell_330/add:z:0Hsequential_20/lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9sequential_20/lstm_60/while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_20/lstm_60/while/lstm_cell_330/splitSplitBsequential_20/lstm_60/while/lstm_cell_330/split/split_dim:output:0:sequential_20/lstm_60/while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¨
1sequential_20/lstm_60/while/lstm_cell_330/SigmoidSigmoid8sequential_20/lstm_60/while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_20/lstm_60/while/lstm_cell_330/Sigmoid_1Sigmoid8sequential_20/lstm_60/while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÊ
-sequential_20/lstm_60/while/lstm_cell_330/mulMul7sequential_20/lstm_60/while/lstm_cell_330/Sigmoid_1:y:0)sequential_20_lstm_60_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
.sequential_20/lstm_60/while/lstm_cell_330/ReluRelu8sequential_20/lstm_60/while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÝ
/sequential_20/lstm_60/while/lstm_cell_330/mul_1Mul5sequential_20/lstm_60/while/lstm_cell_330/Sigmoid:y:0<sequential_20/lstm_60/while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÒ
/sequential_20/lstm_60/while/lstm_cell_330/add_1AddV21sequential_20/lstm_60/while/lstm_cell_330/mul:z:03sequential_20/lstm_60/while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_20/lstm_60/while/lstm_cell_330/Sigmoid_2Sigmoid8sequential_20/lstm_60/while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
0sequential_20/lstm_60/while/lstm_cell_330/Relu_1Relu3sequential_20/lstm_60/while/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdá
/sequential_20/lstm_60/while/lstm_cell_330/mul_2Mul7sequential_20/lstm_60/while/lstm_cell_330/Sigmoid_2:y:0>sequential_20/lstm_60/while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
@sequential_20/lstm_60/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_20_lstm_60_while_placeholder_1'sequential_20_lstm_60_while_placeholder3sequential_20/lstm_60/while/lstm_cell_330/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_20/lstm_60/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_20/lstm_60/while/addAddV2'sequential_20_lstm_60_while_placeholder*sequential_20/lstm_60/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_20/lstm_60/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_20/lstm_60/while/add_1AddV2Dsequential_20_lstm_60_while_sequential_20_lstm_60_while_loop_counter,sequential_20/lstm_60/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_20/lstm_60/while/IdentityIdentity%sequential_20/lstm_60/while/add_1:z:0!^sequential_20/lstm_60/while/NoOp*
T0*
_output_shapes
: Â
&sequential_20/lstm_60/while/Identity_1IdentityJsequential_20_lstm_60_while_sequential_20_lstm_60_while_maximum_iterations!^sequential_20/lstm_60/while/NoOp*
T0*
_output_shapes
: 
&sequential_20/lstm_60/while/Identity_2Identity#sequential_20/lstm_60/while/add:z:0!^sequential_20/lstm_60/while/NoOp*
T0*
_output_shapes
: È
&sequential_20/lstm_60/while/Identity_3IdentityPsequential_20/lstm_60/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_20/lstm_60/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_20/lstm_60/while/Identity_4Identity3sequential_20/lstm_60/while/lstm_cell_330/mul_2:z:0!^sequential_20/lstm_60/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¼
&sequential_20/lstm_60/while/Identity_5Identity3sequential_20/lstm_60/while/lstm_cell_330/add_1:z:0!^sequential_20/lstm_60/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
 sequential_20/lstm_60/while/NoOpNoOpA^sequential_20/lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp@^sequential_20/lstm_60/while/lstm_cell_330/MatMul/ReadVariableOpB^sequential_20/lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_20_lstm_60_while_identity-sequential_20/lstm_60/while/Identity:output:0"Y
&sequential_20_lstm_60_while_identity_1/sequential_20/lstm_60/while/Identity_1:output:0"Y
&sequential_20_lstm_60_while_identity_2/sequential_20/lstm_60/while/Identity_2:output:0"Y
&sequential_20_lstm_60_while_identity_3/sequential_20/lstm_60/while/Identity_3:output:0"Y
&sequential_20_lstm_60_while_identity_4/sequential_20/lstm_60/while/Identity_4:output:0"Y
&sequential_20_lstm_60_while_identity_5/sequential_20/lstm_60/while/Identity_5:output:0"
Isequential_20_lstm_60_while_lstm_cell_330_biasadd_readvariableop_resourceKsequential_20_lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0"
Jsequential_20_lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resourceLsequential_20_lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0"
Hsequential_20_lstm_60_while_lstm_cell_330_matmul_readvariableop_resourceJsequential_20_lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0"
Asequential_20_lstm_60_while_sequential_20_lstm_60_strided_slice_1Csequential_20_lstm_60_while_sequential_20_lstm_60_strided_slice_1_0"
}sequential_20_lstm_60_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_60_tensorarrayunstack_tensorlistfromtensorsequential_20_lstm_60_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_60_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
@sequential_20/lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp@sequential_20/lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2
?sequential_20/lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp?sequential_20/lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp2
Asequential_20/lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOpAsequential_20/lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
Ñ8
Ú
while_body_2012368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_330_matmul_readvariableop_resource_0:	I
6while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_330_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_330_matmul_readvariableop_resource:	G
4while_lstm_cell_330_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_330_biasadd_readvariableop_resource:	¢*while/lstm_cell_330/BiasAdd/ReadVariableOp¢)while/lstm_cell_330/MatMul/ReadVariableOp¢+while/lstm_cell_330/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_330/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_330/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_330/addAddV2$while/lstm_cell_330/MatMul:product:0&while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_330/BiasAddBiasAddwhile/lstm_cell_330/add:z:02while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_330/splitSplit,while/lstm_cell_330/split/split_dim:output:0$while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_330/SigmoidSigmoid"while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_1Sigmoid"while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mulMul!while/lstm_cell_330/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_330/ReluRelu"while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_1Mulwhile/lstm_cell_330/Sigmoid:y:0&while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/add_1AddV2while/lstm_cell_330/mul:z:0while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_2Sigmoid"while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_330/Relu_1Reluwhile/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_2Mul!while/lstm_cell_330/Sigmoid_2:y:0(while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_330/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_330/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_330/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_330/BiasAdd/ReadVariableOp*^while/lstm_cell_330/MatMul/ReadVariableOp,^while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_330_biasadd_readvariableop_resource5while_lstm_cell_330_biasadd_readvariableop_resource_0"n
4while_lstm_cell_330_matmul_1_readvariableop_resource6while_lstm_cell_330_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_330_matmul_readvariableop_resource4while_lstm_cell_330_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_330/BiasAdd/ReadVariableOp*while/lstm_cell_330/BiasAdd/ReadVariableOp2V
)while/lstm_cell_330/MatMul/ReadVariableOp)while/lstm_cell_330/MatMul/ReadVariableOp2Z
+while/lstm_cell_330/MatMul_1/ReadVariableOp+while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
ì
õ
/__inference_lstm_cell_332_layer_call_fn_2014219

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
Ä8
Ô
while_body_2013457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_332_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_332_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_332_matmul_readvariableop_resource:2(F
4while_lstm_cell_332_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_332_biasadd_readvariableop_resource:(¢*while/lstm_cell_332/BiasAdd/ReadVariableOp¢)while/lstm_cell_332/MatMul/ReadVariableOp¢+while/lstm_cell_332/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_332/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_332/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_332/addAddV2$while/lstm_cell_332/MatMul:product:0&while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_332/BiasAddBiasAddwhile/lstm_cell_332/add:z:02while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_332/splitSplit,while/lstm_cell_332/split/split_dim:output:0$while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_332/SigmoidSigmoid"while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_1Sigmoid"while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mulMul!while/lstm_cell_332/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_332/ReluRelu"while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_1Mulwhile/lstm_cell_332/Sigmoid:y:0&while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/add_1AddV2while/lstm_cell_332/mul:z:0while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_2Sigmoid"while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_332/Relu_1Reluwhile/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_2Mul!while/lstm_cell_332/Sigmoid_2:y:0(while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_332/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_332/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_332/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_332/BiasAdd/ReadVariableOp*^while/lstm_cell_332/MatMul/ReadVariableOp,^while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_332_biasadd_readvariableop_resource5while_lstm_cell_332_biasadd_readvariableop_resource_0"n
4while_lstm_cell_332_matmul_1_readvariableop_resource6while_lstm_cell_332_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_332_matmul_readvariableop_resource4while_lstm_cell_332_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_332/BiasAdd/ReadVariableOp*while/lstm_cell_332/BiasAdd/ReadVariableOp2V
)while/lstm_cell_332/MatMul/ReadVariableOp)while/lstm_cell_332/MatMul/ReadVariableOp2Z
+while/lstm_cell_332/MatMul_1/ReadVariableOp+while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_2009034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2009034___redundant_placeholder05
1while_while_cond_2009034___redundant_placeholder15
1while_while_cond_2009034___redundant_placeholder25
1while_while_cond_2009034___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
áJ
¢
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013354

inputs?
,lstm_cell_331_matmul_readvariableop_resource:	dÈA
.lstm_cell_331_matmul_1_readvariableop_resource:	2È<
-lstm_cell_331_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_331/BiasAdd/ReadVariableOp¢#lstm_cell_331/MatMul/ReadVariableOp¢%lstm_cell_331/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_331/MatMul/ReadVariableOpReadVariableOp,lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_331/MatMulMatMulstrided_slice_2:output:0+lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_331/MatMul_1MatMulzeros:output:0-lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_331/addAddV2lstm_cell_331/MatMul:product:0 lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_331/BiasAddBiasAddlstm_cell_331/add:z:0,lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_331/splitSplit&lstm_cell_331/split/split_dim:output:0lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_331/SigmoidSigmoidlstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_1Sigmoidlstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_331/mulMullstm_cell_331/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_331/ReluRelulstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_1Mullstm_cell_331/Sigmoid:y:0 lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_331/add_1AddV2lstm_cell_331/mul:z:0lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_2Sigmoidlstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_331/Relu_1Relulstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_2Mullstm_cell_331/Sigmoid_2:y:0"lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_331_matmul_readvariableop_resource.lstm_cell_331_matmul_1_readvariableop_resource-lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2013270*
condR
while_cond_2013269*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_331/BiasAdd/ReadVariableOp$^lstm_cell_331/MatMul/ReadVariableOp&^lstm_cell_331/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_331/BiasAdd/ReadVariableOp$lstm_cell_331/BiasAdd/ReadVariableOp2J
#lstm_cell_331/MatMul/ReadVariableOp#lstm_cell_331/MatMul/ReadVariableOp2N
%lstm_cell_331/MatMul_1/ReadVariableOp%lstm_cell_331/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

ë
J__inference_sequential_20_layer_call_and_return_conditional_losses_2010478

inputs"
lstm_60_2010154:	"
lstm_60_2010156:	d
lstm_60_2010158:	"
lstm_61_2010304:	dÈ"
lstm_61_2010306:	2È
lstm_61_2010308:	È!
lstm_62_2010454:2(!
lstm_62_2010456:
(
lstm_62_2010458:("
dense_20_2010472:

dense_20_2010474:
identity¢ dense_20/StatefulPartitionedCall¢lstm_60/StatefulPartitionedCall¢lstm_61/StatefulPartitionedCall¢lstm_62/StatefulPartitionedCall
lstm_60/StatefulPartitionedCallStatefulPartitionedCallinputslstm_60_2010154lstm_60_2010156lstm_60_2010158*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010153¨
lstm_61/StatefulPartitionedCallStatefulPartitionedCall(lstm_60/StatefulPartitionedCall:output:0lstm_61_2010304lstm_61_2010306lstm_61_2010308*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010303¤
lstm_62/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0lstm_62_2010454lstm_62_2010456lstm_62_2010458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2010453
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_62/StatefulPartitionedCall:output:0dense_20_2010472dense_20_2010474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2010471x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_20/StatefulPartitionedCall ^lstm_60/StatefulPartitionedCall ^lstm_61/StatefulPartitionedCall ^lstm_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_60/StatefulPartitionedCalllstm_60/StatefulPartitionedCall2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2B
lstm_62/StatefulPartitionedCalllstm_62/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
áJ
¢
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012738

inputs?
,lstm_cell_330_matmul_readvariableop_resource:	A
.lstm_cell_330_matmul_1_readvariableop_resource:	d<
-lstm_cell_330_biasadd_readvariableop_resource:	
identity¢$lstm_cell_330/BiasAdd/ReadVariableOp¢#lstm_cell_330/MatMul/ReadVariableOp¢%lstm_cell_330/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_330/MatMul/ReadVariableOpReadVariableOp,lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_330/MatMulMatMulstrided_slice_2:output:0+lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_330/MatMul_1MatMulzeros:output:0-lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_330/addAddV2lstm_cell_330/MatMul:product:0 lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_330/BiasAddBiasAddlstm_cell_330/add:z:0,lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_330/splitSplit&lstm_cell_330/split/split_dim:output:0lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_330/SigmoidSigmoidlstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_1Sigmoidlstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_330/mulMullstm_cell_330/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_330/ReluRelulstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_1Mullstm_cell_330/Sigmoid:y:0 lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_330/add_1AddV2lstm_cell_330/mul:z:0lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_2Sigmoidlstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_330/Relu_1Relulstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_2Mullstm_cell_330/Sigmoid_2:y:0"lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_330_matmul_readvariableop_resource.lstm_cell_330_matmul_1_readvariableop_resource-lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2012654*
condR
while_cond_2012653*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_330/BiasAdd/ReadVariableOp$^lstm_cell_330/MatMul/ReadVariableOp&^lstm_cell_330/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_330/BiasAdd/ReadVariableOp$lstm_cell_330/BiasAdd/ReadVariableOp2J
#lstm_cell_330/MatMul/ReadVariableOp#lstm_cell_330/MatMul/ReadVariableOp2N
%lstm_cell_330/MatMul_1/ReadVariableOp%lstm_cell_330/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
ø
/__inference_lstm_cell_330_layer_call_fn_2014006

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009021o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
ß

J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2014055

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1

µ
)__inference_lstm_62_layer_call_fn_2013365
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2009804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
«
¸
)__inference_lstm_61_layer_call_fn_2012760
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2009645|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
º
È
while_cond_2013269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2013269___redundant_placeholder05
1while_while_cond_2013269___redundant_placeholder15
1while_while_cond_2013269___redundant_placeholder25
1while_while_cond_2013269___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:

ë
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011067

inputs"
lstm_60_2011040:	"
lstm_60_2011042:	d
lstm_60_2011044:	"
lstm_61_2011047:	dÈ"
lstm_61_2011049:	2È
lstm_61_2011051:	È!
lstm_62_2011054:2(!
lstm_62_2011056:
(
lstm_62_2011058:("
dense_20_2011061:

dense_20_2011063:
identity¢ dense_20/StatefulPartitionedCall¢lstm_60/StatefulPartitionedCall¢lstm_61/StatefulPartitionedCall¢lstm_62/StatefulPartitionedCall
lstm_60/StatefulPartitionedCallStatefulPartitionedCallinputslstm_60_2011040lstm_60_2011042lstm_60_2011044*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010999¨
lstm_61/StatefulPartitionedCallStatefulPartitionedCall(lstm_60/StatefulPartitionedCall:output:0lstm_61_2011047lstm_61_2011049lstm_61_2011051*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010834¤
lstm_62/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0lstm_62_2011054lstm_62_2011056lstm_62_2011058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2010669
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_62/StatefulPartitionedCall:output:0dense_20_2011061dense_20_2011063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2010471x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_20/StatefulPartitionedCall ^lstm_60/StatefulPartitionedCall ^lstm_61/StatefulPartitionedCall ^lstm_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_60/StatefulPartitionedCalllstm_60/StatefulPartitionedCall2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2B
lstm_62/StatefulPartitionedCalllstm_62/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_2012653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2012653___redundant_placeholder05
1while_while_cond_2012653___redundant_placeholder15
1while_while_cond_2012653___redundant_placeholder25
1while_while_cond_2012653___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ñ

¢
/__inference_sequential_20_layer_call_fn_2011119
lstm_60_input
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
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_60_input
áJ
¢
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013211

inputs?
,lstm_cell_331_matmul_readvariableop_resource:	dÈA
.lstm_cell_331_matmul_1_readvariableop_resource:	2È<
-lstm_cell_331_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_331/BiasAdd/ReadVariableOp¢#lstm_cell_331/MatMul/ReadVariableOp¢%lstm_cell_331/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_331/MatMul/ReadVariableOpReadVariableOp,lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_331/MatMulMatMulstrided_slice_2:output:0+lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_331/MatMul_1MatMulzeros:output:0-lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_331/addAddV2lstm_cell_331/MatMul:product:0 lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_331/BiasAddBiasAddlstm_cell_331/add:z:0,lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_331/splitSplit&lstm_cell_331/split/split_dim:output:0lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_331/SigmoidSigmoidlstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_1Sigmoidlstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_331/mulMullstm_cell_331/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_331/ReluRelulstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_1Mullstm_cell_331/Sigmoid:y:0 lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_331/add_1AddV2lstm_cell_331/mul:z:0lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_2Sigmoidlstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_331/Relu_1Relulstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_2Mullstm_cell_331/Sigmoid_2:y:0"lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_331_matmul_readvariableop_resource.lstm_cell_331_matmul_1_readvariableop_resource-lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2013127*
condR
while_cond_2013126*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_331/BiasAdd/ReadVariableOp$^lstm_cell_331/MatMul/ReadVariableOp&^lstm_cell_331/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_331/BiasAdd/ReadVariableOp$lstm_cell_331/BiasAdd/ReadVariableOp2J
#lstm_cell_331/MatMul/ReadVariableOp#lstm_cell_331/MatMul/ReadVariableOp2N
%lstm_cell_331/MatMul_1/ReadVariableOp%lstm_cell_331/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2012511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_330_matmul_readvariableop_resource_0:	I
6while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_330_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_330_matmul_readvariableop_resource:	G
4while_lstm_cell_330_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_330_biasadd_readvariableop_resource:	¢*while/lstm_cell_330/BiasAdd/ReadVariableOp¢)while/lstm_cell_330/MatMul/ReadVariableOp¢+while/lstm_cell_330/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_330/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_330/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_330/addAddV2$while/lstm_cell_330/MatMul:product:0&while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_330/BiasAddBiasAddwhile/lstm_cell_330/add:z:02while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_330/splitSplit,while/lstm_cell_330/split/split_dim:output:0$while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_330/SigmoidSigmoid"while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_1Sigmoid"while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mulMul!while/lstm_cell_330/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_330/ReluRelu"while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_1Mulwhile/lstm_cell_330/Sigmoid:y:0&while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/add_1AddV2while/lstm_cell_330/mul:z:0while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_2Sigmoid"while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_330/Relu_1Reluwhile/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_2Mul!while/lstm_cell_330/Sigmoid_2:y:0(while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_330/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_330/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_330/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_330/BiasAdd/ReadVariableOp*^while/lstm_cell_330/MatMul/ReadVariableOp,^while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_330_biasadd_readvariableop_resource5while_lstm_cell_330_biasadd_readvariableop_resource_0"n
4while_lstm_cell_330_matmul_1_readvariableop_resource6while_lstm_cell_330_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_330_matmul_readvariableop_resource4while_lstm_cell_330_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_330/BiasAdd/ReadVariableOp*while/lstm_cell_330/BiasAdd/ReadVariableOp2V
)while/lstm_cell_330/MatMul/ReadVariableOp)while/lstm_cell_330/MatMul/ReadVariableOp2Z
+while/lstm_cell_330/MatMul_1/ReadVariableOp+while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
§8

D__inference_lstm_62_layer_call_and_return_conditional_losses_2009804

inputs'
lstm_cell_332_2009722:2('
lstm_cell_332_2009724:
(#
lstm_cell_332_2009726:(
identity¢%lstm_cell_332/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskþ
%lstm_cell_332/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_332_2009722lstm_cell_332_2009724lstm_cell_332_2009726*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009721n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_332_2009722lstm_cell_332_2009724lstm_cell_332_2009726*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2009735*
condR
while_cond_2009734*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
v
NoOpNoOp&^lstm_cell_332/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_332/StatefulPartitionedCall%lstm_cell_332/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
þ

J__inference_sequential_20_layer_call_and_return_conditional_losses_2012122

inputsG
4lstm_60_lstm_cell_330_matmul_readvariableop_resource:	I
6lstm_60_lstm_cell_330_matmul_1_readvariableop_resource:	dD
5lstm_60_lstm_cell_330_biasadd_readvariableop_resource:	G
4lstm_61_lstm_cell_331_matmul_readvariableop_resource:	dÈI
6lstm_61_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈD
5lstm_61_lstm_cell_331_biasadd_readvariableop_resource:	ÈF
4lstm_62_lstm_cell_332_matmul_readvariableop_resource:2(H
6lstm_62_lstm_cell_332_matmul_1_readvariableop_resource:
(C
5lstm_62_lstm_cell_332_biasadd_readvariableop_resource:(9
'dense_20_matmul_readvariableop_resource:
6
(dense_20_biasadd_readvariableop_resource:
identity¢dense_20/BiasAdd/ReadVariableOp¢dense_20/MatMul/ReadVariableOp¢,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp¢+lstm_60/lstm_cell_330/MatMul/ReadVariableOp¢-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp¢lstm_60/while¢,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp¢+lstm_61/lstm_cell_331/MatMul/ReadVariableOp¢-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp¢lstm_61/while¢,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp¢+lstm_62/lstm_cell_332/MatMul/ReadVariableOp¢-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp¢lstm_62/whileC
lstm_60/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_60/strided_sliceStridedSlicelstm_60/Shape:output:0$lstm_60/strided_slice/stack:output:0&lstm_60/strided_slice/stack_1:output:0&lstm_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_60/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_60/zeros/packedPacklstm_60/strided_slice:output:0lstm_60/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_60/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_60/zerosFilllstm_60/zeros/packed:output:0lstm_60/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_60/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_60/zeros_1/packedPacklstm_60/strided_slice:output:0!lstm_60/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_60/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_60/zeros_1Filllstm_60/zeros_1/packed:output:0lstm_60/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_60/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_60/transpose	Transposeinputslstm_60/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_60/Shape_1Shapelstm_60/transpose:y:0*
T0*
_output_shapes
:g
lstm_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_60/strided_slice_1StridedSlicelstm_60/Shape_1:output:0&lstm_60/strided_slice_1/stack:output:0(lstm_60/strided_slice_1/stack_1:output:0(lstm_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_60/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_60/TensorArrayV2TensorListReserve,lstm_60/TensorArrayV2/element_shape:output:0 lstm_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_60/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_60/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_60/transpose:y:0Flstm_60/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_60/strided_slice_2StridedSlicelstm_60/transpose:y:0&lstm_60/strided_slice_2/stack:output:0(lstm_60/strided_slice_2/stack_1:output:0(lstm_60/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_60/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4lstm_60_lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_60/lstm_cell_330/MatMulMatMul lstm_60/strided_slice_2:output:03lstm_60/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6lstm_60_lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_60/lstm_cell_330/MatMul_1MatMullstm_60/zeros:output:05lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_60/lstm_cell_330/addAddV2&lstm_60/lstm_cell_330/MatMul:product:0(lstm_60/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5lstm_60_lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_60/lstm_cell_330/BiasAddBiasAddlstm_60/lstm_cell_330/add:z:04lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_60/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_60/lstm_cell_330/splitSplit.lstm_60/lstm_cell_330/split/split_dim:output:0&lstm_60/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_60/lstm_cell_330/SigmoidSigmoid$lstm_60/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/Sigmoid_1Sigmoid$lstm_60/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/mulMul#lstm_60/lstm_cell_330/Sigmoid_1:y:0lstm_60/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_60/lstm_cell_330/ReluRelu$lstm_60/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_60/lstm_cell_330/mul_1Mul!lstm_60/lstm_cell_330/Sigmoid:y:0(lstm_60/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/add_1AddV2lstm_60/lstm_cell_330/mul:z:0lstm_60/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/lstm_cell_330/Sigmoid_2Sigmoid$lstm_60/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_60/lstm_cell_330/Relu_1Relulstm_60/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_60/lstm_cell_330/mul_2Mul#lstm_60/lstm_cell_330/Sigmoid_2:y:0*lstm_60/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_60/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_60/TensorArrayV2_1TensorListReserve.lstm_60/TensorArrayV2_1/element_shape:output:0 lstm_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_60/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_60/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_60/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_60/whileWhile#lstm_60/while/loop_counter:output:0)lstm_60/while/maximum_iterations:output:0lstm_60/time:output:0 lstm_60/TensorArrayV2_1:handle:0lstm_60/zeros:output:0lstm_60/zeros_1:output:0 lstm_60/strided_slice_1:output:0?lstm_60/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_60_lstm_cell_330_matmul_readvariableop_resource6lstm_60_lstm_cell_330_matmul_1_readvariableop_resource5lstm_60_lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_60_while_body_2011754*&
condR
lstm_60_while_cond_2011753*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_60/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_60/TensorArrayV2Stack/TensorListStackTensorListStacklstm_60/while:output:3Alstm_60/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_60/strided_slice_3StridedSlice3lstm_60/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_60/strided_slice_3/stack:output:0(lstm_60/strided_slice_3/stack_1:output:0(lstm_60/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_60/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_60/transpose_1	Transpose3lstm_60/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_60/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_60/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_61/ShapeShapelstm_60/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_61/strided_sliceStridedSlicelstm_61/Shape:output:0$lstm_61/strided_slice/stack:output:0&lstm_61/strided_slice/stack_1:output:0&lstm_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_61/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/zeros/packedPacklstm_61/strided_slice:output:0lstm_61/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_61/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_61/zerosFilllstm_61/zeros/packed:output:0lstm_61/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_61/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/zeros_1/packedPacklstm_61/strided_slice:output:0!lstm_61/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_61/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_61/zeros_1Filllstm_61/zeros_1/packed:output:0lstm_61/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_61/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_61/transpose	Transposelstm_60/transpose_1:y:0lstm_61/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_61/Shape_1Shapelstm_61/transpose:y:0*
T0*
_output_shapes
:g
lstm_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_61/strided_slice_1StridedSlicelstm_61/Shape_1:output:0&lstm_61/strided_slice_1/stack:output:0(lstm_61/strided_slice_1/stack_1:output:0(lstm_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_61/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_61/TensorArrayV2TensorListReserve,lstm_61/TensorArrayV2/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_61/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_61/transpose:y:0Flstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_61/strided_slice_2StridedSlicelstm_61/transpose:y:0&lstm_61/strided_slice_2/stack:output:0(lstm_61/strided_slice_2/stack_1:output:0(lstm_61/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_61/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4lstm_61_lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_61/lstm_cell_331/MatMulMatMul lstm_61/strided_slice_2:output:03lstm_61/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6lstm_61_lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_61/lstm_cell_331/MatMul_1MatMullstm_61/zeros:output:05lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_61/lstm_cell_331/addAddV2&lstm_61/lstm_cell_331/MatMul:product:0(lstm_61/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5lstm_61_lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_61/lstm_cell_331/BiasAddBiasAddlstm_61/lstm_cell_331/add:z:04lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_61/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_61/lstm_cell_331/splitSplit.lstm_61/lstm_cell_331/split/split_dim:output:0&lstm_61/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_61/lstm_cell_331/SigmoidSigmoid$lstm_61/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/Sigmoid_1Sigmoid$lstm_61/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/mulMul#lstm_61/lstm_cell_331/Sigmoid_1:y:0lstm_61/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_61/lstm_cell_331/ReluRelu$lstm_61/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_61/lstm_cell_331/mul_1Mul!lstm_61/lstm_cell_331/Sigmoid:y:0(lstm_61/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/add_1AddV2lstm_61/lstm_cell_331/mul:z:0lstm_61/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/lstm_cell_331/Sigmoid_2Sigmoid$lstm_61/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_61/lstm_cell_331/Relu_1Relulstm_61/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_61/lstm_cell_331/mul_2Mul#lstm_61/lstm_cell_331/Sigmoid_2:y:0*lstm_61/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_61/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_61/TensorArrayV2_1TensorListReserve.lstm_61/TensorArrayV2_1/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_61/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_61/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_61/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_61/whileWhile#lstm_61/while/loop_counter:output:0)lstm_61/while/maximum_iterations:output:0lstm_61/time:output:0 lstm_61/TensorArrayV2_1:handle:0lstm_61/zeros:output:0lstm_61/zeros_1:output:0 lstm_61/strided_slice_1:output:0?lstm_61/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_61_lstm_cell_331_matmul_readvariableop_resource6lstm_61_lstm_cell_331_matmul_1_readvariableop_resource5lstm_61_lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_61_while_body_2011893*&
condR
lstm_61_while_cond_2011892*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_61/TensorArrayV2Stack/TensorListStackTensorListStacklstm_61/while:output:3Alstm_61/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_61/strided_slice_3StridedSlice3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_61/strided_slice_3/stack:output:0(lstm_61/strided_slice_3/stack_1:output:0(lstm_61/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_61/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_61/transpose_1	Transpose3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_61/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_61/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_62/ShapeShapelstm_61/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_62/strided_sliceStridedSlicelstm_62/Shape:output:0$lstm_62/strided_slice/stack:output:0&lstm_62/strided_slice/stack_1:output:0&lstm_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_62/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_62/zeros/packedPacklstm_62/strided_slice:output:0lstm_62/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_62/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_62/zerosFilllstm_62/zeros/packed:output:0lstm_62/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_62/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_62/zeros_1/packedPacklstm_62/strided_slice:output:0!lstm_62/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_62/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_62/zeros_1Filllstm_62/zeros_1/packed:output:0lstm_62/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_62/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_62/transpose	Transposelstm_61/transpose_1:y:0lstm_62/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_62/Shape_1Shapelstm_62/transpose:y:0*
T0*
_output_shapes
:g
lstm_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_62/strided_slice_1StridedSlicelstm_62/Shape_1:output:0&lstm_62/strided_slice_1/stack:output:0(lstm_62/strided_slice_1/stack_1:output:0(lstm_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_62/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_62/TensorArrayV2TensorListReserve,lstm_62/TensorArrayV2/element_shape:output:0 lstm_62/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_62/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_62/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_62/transpose:y:0Flstm_62/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_62/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_62/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_62/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_62/strided_slice_2StridedSlicelstm_62/transpose:y:0&lstm_62/strided_slice_2/stack:output:0(lstm_62/strided_slice_2/stack_1:output:0(lstm_62/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_62/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4lstm_62_lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_62/lstm_cell_332/MatMulMatMul lstm_62/strided_slice_2:output:03lstm_62/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6lstm_62_lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_62/lstm_cell_332/MatMul_1MatMullstm_62/zeros:output:05lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_62/lstm_cell_332/addAddV2&lstm_62/lstm_cell_332/MatMul:product:0(lstm_62/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5lstm_62_lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_62/lstm_cell_332/BiasAddBiasAddlstm_62/lstm_cell_332/add:z:04lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_62/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_62/lstm_cell_332/splitSplit.lstm_62/lstm_cell_332/split/split_dim:output:0&lstm_62/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_62/lstm_cell_332/SigmoidSigmoid$lstm_62/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/Sigmoid_1Sigmoid$lstm_62/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/mulMul#lstm_62/lstm_cell_332/Sigmoid_1:y:0lstm_62/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_62/lstm_cell_332/ReluRelu$lstm_62/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_62/lstm_cell_332/mul_1Mul!lstm_62/lstm_cell_332/Sigmoid:y:0(lstm_62/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/add_1AddV2lstm_62/lstm_cell_332/mul:z:0lstm_62/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/lstm_cell_332/Sigmoid_2Sigmoid$lstm_62/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_62/lstm_cell_332/Relu_1Relulstm_62/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_62/lstm_cell_332/mul_2Mul#lstm_62/lstm_cell_332/Sigmoid_2:y:0*lstm_62/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_62/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_62/TensorArrayV2_1TensorListReserve.lstm_62/TensorArrayV2_1/element_shape:output:0 lstm_62/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_62/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_62/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_62/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_62/whileWhile#lstm_62/while/loop_counter:output:0)lstm_62/while/maximum_iterations:output:0lstm_62/time:output:0 lstm_62/TensorArrayV2_1:handle:0lstm_62/zeros:output:0lstm_62/zeros_1:output:0 lstm_62/strided_slice_1:output:0?lstm_62/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_62_lstm_cell_332_matmul_readvariableop_resource6lstm_62_lstm_cell_332_matmul_1_readvariableop_resource5lstm_62_lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_62_while_body_2012032*&
condR
lstm_62_while_cond_2012031*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_62/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_62/TensorArrayV2Stack/TensorListStackTensorListStacklstm_62/while:output:3Alstm_62/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_62/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_62/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_62/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_62/strided_slice_3StridedSlice3lstm_62/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_62/strided_slice_3/stack:output:0(lstm_62/strided_slice_3/stack_1:output:0(lstm_62/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_62/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_62/transpose_1	Transpose3lstm_62/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_62/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_62/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_20/MatMulMatMul lstm_62/strided_slice_3:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_20/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp-^lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp,^lstm_60/lstm_cell_330/MatMul/ReadVariableOp.^lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp^lstm_60/while-^lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp,^lstm_61/lstm_cell_331/MatMul/ReadVariableOp.^lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp^lstm_61/while-^lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp,^lstm_62/lstm_cell_332/MatMul/ReadVariableOp.^lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp^lstm_62/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2\
,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp,lstm_60/lstm_cell_330/BiasAdd/ReadVariableOp2Z
+lstm_60/lstm_cell_330/MatMul/ReadVariableOp+lstm_60/lstm_cell_330/MatMul/ReadVariableOp2^
-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp-lstm_60/lstm_cell_330/MatMul_1/ReadVariableOp2
lstm_60/whilelstm_60/while2\
,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp,lstm_61/lstm_cell_331/BiasAdd/ReadVariableOp2Z
+lstm_61/lstm_cell_331/MatMul/ReadVariableOp+lstm_61/lstm_cell_331/MatMul/ReadVariableOp2^
-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp-lstm_61/lstm_cell_331/MatMul_1/ReadVariableOp2
lstm_61/whilelstm_61/while2\
,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp,lstm_62/lstm_cell_332/BiasAdd/ReadVariableOp2Z
+lstm_62/lstm_cell_332/MatMul/ReadVariableOp+lstm_62/lstm_cell_332/MatMul/ReadVariableOp2^
-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp-lstm_62/lstm_cell_332/MatMul_1/ReadVariableOp2
lstm_62/whilelstm_62/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
#
ë
while_body_2009735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_332_2009759_0:2(/
while_lstm_cell_332_2009761_0:
(+
while_lstm_cell_332_2009763_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_332_2009759:2(-
while_lstm_cell_332_2009761:
()
while_lstm_cell_332_2009763:(¢+while/lstm_cell_332/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_332/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_332_2009759_0while_lstm_cell_332_2009761_0while_lstm_cell_332_2009763_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009721Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_332/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_332/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_332/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_332/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_332_2009759while_lstm_cell_332_2009759_0"<
while_lstm_cell_332_2009761while_lstm_cell_332_2009761_0"<
while_lstm_cell_332_2009763while_lstm_cell_332_2009763_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_332/StatefulPartitionedCall+while/lstm_cell_332/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
K
¤
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012309
inputs_0?
,lstm_cell_330_matmul_readvariableop_resource:	A
.lstm_cell_330_matmul_1_readvariableop_resource:	d<
-lstm_cell_330_biasadd_readvariableop_resource:	
identity¢$lstm_cell_330/BiasAdd/ReadVariableOp¢#lstm_cell_330/MatMul/ReadVariableOp¢%lstm_cell_330/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_330/MatMul/ReadVariableOpReadVariableOp,lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_330/MatMulMatMulstrided_slice_2:output:0+lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_330/MatMul_1MatMulzeros:output:0-lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_330/addAddV2lstm_cell_330/MatMul:product:0 lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_330/BiasAddBiasAddlstm_cell_330/add:z:0,lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_330/splitSplit&lstm_cell_330/split/split_dim:output:0lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_330/SigmoidSigmoidlstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_1Sigmoidlstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_330/mulMullstm_cell_330/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_330/ReluRelulstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_1Mullstm_cell_330/Sigmoid:y:0 lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_330/add_1AddV2lstm_cell_330/mul:z:0lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_2Sigmoidlstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_330/Relu_1Relulstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_2Mullstm_cell_330/Sigmoid_2:y:0"lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_330_matmul_readvariableop_resource.lstm_cell_330_matmul_1_readvariableop_resource-lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2012225*
condR
while_cond_2012224*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_330/BiasAdd/ReadVariableOp$^lstm_cell_330/MatMul/ReadVariableOp&^lstm_cell_330/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_330/BiasAdd/ReadVariableOp$lstm_cell_330/BiasAdd/ReadVariableOp2J
#lstm_cell_330/MatMul/ReadVariableOp#lstm_cell_330/MatMul/ReadVariableOp2N
%lstm_cell_330/MatMul_1/ReadVariableOp%lstm_cell_330/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ñ8
Ú
while_body_2012841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_331_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_331_biasadd_readvariableop_resource:	È¢*while/lstm_cell_331/BiasAdd/ReadVariableOp¢)while/lstm_cell_331/MatMul/ReadVariableOp¢+while/lstm_cell_331/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_331/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_331/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_331/addAddV2$while/lstm_cell_331/MatMul:product:0&while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_331/BiasAddBiasAddwhile/lstm_cell_331/add:z:02while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_331/splitSplit,while/lstm_cell_331/split/split_dim:output:0$while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_331/SigmoidSigmoid"while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_1Sigmoid"while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mulMul!while/lstm_cell_331/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_331/ReluRelu"while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_1Mulwhile/lstm_cell_331/Sigmoid:y:0&while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/add_1AddV2while/lstm_cell_331/mul:z:0while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_2Sigmoid"while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_331/Relu_1Reluwhile/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_2Mul!while/lstm_cell_331/Sigmoid_2:y:0(while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_331/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_331/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_331/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_331/BiasAdd/ReadVariableOp*^while/lstm_cell_331/MatMul/ReadVariableOp,^while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_331_biasadd_readvariableop_resource5while_lstm_cell_331_biasadd_readvariableop_resource_0"n
4while_lstm_cell_331_matmul_1_readvariableop_resource6while_lstm_cell_331_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_331_matmul_readvariableop_resource4while_lstm_cell_331_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_331/BiasAdd/ReadVariableOp*while/lstm_cell_331/BiasAdd/ReadVariableOp2V
)while/lstm_cell_331/MatMul/ReadVariableOp)while/lstm_cell_331/MatMul/ReadVariableOp2Z
+while/lstm_cell_331/MatMul_1/ReadVariableOp+while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
´
ò
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011149
lstm_60_input"
lstm_60_2011122:	"
lstm_60_2011124:	d
lstm_60_2011126:	"
lstm_61_2011129:	dÈ"
lstm_61_2011131:	2È
lstm_61_2011133:	È!
lstm_62_2011136:2(!
lstm_62_2011138:
(
lstm_62_2011140:("
dense_20_2011143:

dense_20_2011145:
identity¢ dense_20/StatefulPartitionedCall¢lstm_60/StatefulPartitionedCall¢lstm_61/StatefulPartitionedCall¢lstm_62/StatefulPartitionedCall
lstm_60/StatefulPartitionedCallStatefulPartitionedCalllstm_60_inputlstm_60_2011122lstm_60_2011124lstm_60_2011126*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010153¨
lstm_61/StatefulPartitionedCallStatefulPartitionedCall(lstm_60/StatefulPartitionedCall:output:0lstm_61_2011129lstm_61_2011131lstm_61_2011133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010303¤
lstm_62/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0lstm_62_2011136lstm_62_2011138lstm_62_2011140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2010453
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_62/StatefulPartitionedCall:output:0dense_20_2011143dense_20_2011145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2010471x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_20/StatefulPartitionedCall ^lstm_60/StatefulPartitionedCall ^lstm_61/StatefulPartitionedCall ^lstm_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_60/StatefulPartitionedCalllstm_60/StatefulPartitionedCall2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2B
lstm_62/StatefulPartitionedCalllstm_62/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_60_input
º
È
while_cond_2010914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2010914___redundant_placeholder05
1while_while_cond_2010914___redundant_placeholder15
1while_while_cond_2010914___redundant_placeholder25
1while_while_cond_2010914___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:

¶
)__inference_lstm_61_layer_call_fn_2012771

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010303s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ü£
à
#__inference__traced_restore_2014556
file_prefix2
 assignvariableop_dense_20_kernel:
.
 assignvariableop_1_dense_20_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_60_lstm_cell_60_kernel:	K
8assignvariableop_8_lstm_60_lstm_cell_60_recurrent_kernel:	d;
,assignvariableop_9_lstm_60_lstm_cell_60_bias:	B
/assignvariableop_10_lstm_61_lstm_cell_61_kernel:	dÈL
9assignvariableop_11_lstm_61_lstm_cell_61_recurrent_kernel:	2È<
-assignvariableop_12_lstm_61_lstm_cell_61_bias:	ÈA
/assignvariableop_13_lstm_62_lstm_cell_62_kernel:2(K
9assignvariableop_14_lstm_62_lstm_cell_62_recurrent_kernel:
(;
-assignvariableop_15_lstm_62_lstm_cell_62_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_20_kernel_m:
6
(assignvariableop_19_adam_dense_20_bias_m:I
6assignvariableop_20_adam_lstm_60_lstm_cell_60_kernel_m:	S
@assignvariableop_21_adam_lstm_60_lstm_cell_60_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_60_lstm_cell_60_bias_m:	I
6assignvariableop_23_adam_lstm_61_lstm_cell_61_kernel_m:	dÈS
@assignvariableop_24_adam_lstm_61_lstm_cell_61_recurrent_kernel_m:	2ÈC
4assignvariableop_25_adam_lstm_61_lstm_cell_61_bias_m:	ÈH
6assignvariableop_26_adam_lstm_62_lstm_cell_62_kernel_m:2(R
@assignvariableop_27_adam_lstm_62_lstm_cell_62_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_62_lstm_cell_62_bias_m:(<
*assignvariableop_29_adam_dense_20_kernel_v:
6
(assignvariableop_30_adam_dense_20_bias_v:I
6assignvariableop_31_adam_lstm_60_lstm_cell_60_kernel_v:	S
@assignvariableop_32_adam_lstm_60_lstm_cell_60_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_60_lstm_cell_60_bias_v:	I
6assignvariableop_34_adam_lstm_61_lstm_cell_61_kernel_v:	dÈS
@assignvariableop_35_adam_lstm_61_lstm_cell_61_recurrent_kernel_v:	2ÈC
4assignvariableop_36_adam_lstm_61_lstm_cell_61_bias_v:	ÈH
6assignvariableop_37_adam_lstm_62_lstm_cell_62_kernel_v:2(R
@assignvariableop_38_adam_lstm_62_lstm_cell_62_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_62_lstm_cell_62_bias_v:(
identity_41¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9È
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
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*º
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_20_biasIdentity_1:output:0"/device:CPU:0*
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
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_60_lstm_cell_60_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_60_lstm_cell_60_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_60_lstm_cell_60_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_61_lstm_cell_61_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_61_lstm_cell_61_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_61_lstm_cell_61_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_62_lstm_cell_62_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_62_lstm_cell_62_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_62_lstm_cell_62_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_20_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_20_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_60_lstm_cell_60_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_60_lstm_cell_60_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_60_lstm_cell_60_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_61_lstm_cell_61_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_61_lstm_cell_61_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_61_lstm_cell_61_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_62_lstm_cell_62_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_62_lstm_cell_62_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_62_lstm_cell_62_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_20_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_20_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_60_lstm_cell_60_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_60_lstm_cell_60_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_60_lstm_cell_60_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_61_lstm_cell_61_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_61_lstm_cell_61_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_61_lstm_cell_61_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_62_lstm_cell_62_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_62_lstm_cell_62_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_62_lstm_cell_62_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¿
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ¬
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
º
È
while_cond_2012510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2012510___redundant_placeholder05
1while_while_cond_2012510___redundant_placeholder15
1while_while_cond_2012510___redundant_placeholder25
1while_while_cond_2012510___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ÜJ

D__inference_lstm_62_layer_call_and_return_conditional_losses_2013970

inputs>
,lstm_cell_332_matmul_readvariableop_resource:2(@
.lstm_cell_332_matmul_1_readvariableop_resource:
(;
-lstm_cell_332_biasadd_readvariableop_resource:(
identity¢$lstm_cell_332/BiasAdd/ReadVariableOp¢#lstm_cell_332/MatMul/ReadVariableOp¢%lstm_cell_332/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_332/MatMul/ReadVariableOpReadVariableOp,lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_332/MatMulMatMulstrided_slice_2:output:0+lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_332/MatMul_1MatMulzeros:output:0-lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_332/addAddV2lstm_cell_332/MatMul:product:0 lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_332/BiasAddBiasAddlstm_cell_332/add:z:0,lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_332/splitSplit&lstm_cell_332/split/split_dim:output:0lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_332/SigmoidSigmoidlstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_1Sigmoidlstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_332/mulMullstm_cell_332/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_332/ReluRelulstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_1Mullstm_cell_332/Sigmoid:y:0 lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_332/add_1AddV2lstm_cell_332/mul:z:0lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_2Sigmoidlstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_332/Relu_1Relulstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_2Mullstm_cell_332/Sigmoid_2:y:0"lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_332_matmul_readvariableop_resource.lstm_cell_332_matmul_1_readvariableop_resource-lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2013886*
condR
while_cond_2013885*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_332/BiasAdd/ReadVariableOp$^lstm_cell_332/MatMul/ReadVariableOp&^lstm_cell_332/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_332/BiasAdd/ReadVariableOp$lstm_cell_332/BiasAdd/ReadVariableOp2J
#lstm_cell_332/MatMul/ReadVariableOp#lstm_cell_332/MatMul/ReadVariableOp2N
%lstm_cell_332/MatMul_1/ReadVariableOp%lstm_cell_332/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÊR

(sequential_20_lstm_61_while_body_2008725H
Dsequential_20_lstm_61_while_sequential_20_lstm_61_while_loop_counterN
Jsequential_20_lstm_61_while_sequential_20_lstm_61_while_maximum_iterations+
'sequential_20_lstm_61_while_placeholder-
)sequential_20_lstm_61_while_placeholder_1-
)sequential_20_lstm_61_while_placeholder_2-
)sequential_20_lstm_61_while_placeholder_3G
Csequential_20_lstm_61_while_sequential_20_lstm_61_strided_slice_1_0
sequential_20_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_61_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_20_lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈ_
Lsequential_20_lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_20_lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0:	È(
$sequential_20_lstm_61_while_identity*
&sequential_20_lstm_61_while_identity_1*
&sequential_20_lstm_61_while_identity_2*
&sequential_20_lstm_61_while_identity_3*
&sequential_20_lstm_61_while_identity_4*
&sequential_20_lstm_61_while_identity_5E
Asequential_20_lstm_61_while_sequential_20_lstm_61_strided_slice_1
}sequential_20_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_61_tensorarrayunstack_tensorlistfromtensor[
Hsequential_20_lstm_61_while_lstm_cell_331_matmul_readvariableop_resource:	dÈ]
Jsequential_20_lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈX
Isequential_20_lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource:	È¢@sequential_20/lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp¢?sequential_20/lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp¢Asequential_20/lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp
Msequential_20/lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_20/lstm_61/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_20_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_61_tensorarrayunstack_tensorlistfromtensor_0'sequential_20_lstm_61_while_placeholderVsequential_20/lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0Ë
?sequential_20/lstm_61/while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOpJsequential_20_lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0þ
0sequential_20/lstm_61/while/lstm_cell_331/MatMulMatMulFsequential_20/lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_20/lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÏ
Asequential_20/lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOpLsequential_20_lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0å
2sequential_20/lstm_61/while/lstm_cell_331/MatMul_1MatMul)sequential_20_lstm_61_while_placeholder_2Isequential_20/lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈã
-sequential_20/lstm_61/while/lstm_cell_331/addAddV2:sequential_20/lstm_61/while/lstm_cell_331/MatMul:product:0<sequential_20/lstm_61/while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÉ
@sequential_20/lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOpKsequential_20_lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_20/lstm_61/while/lstm_cell_331/BiasAddBiasAdd1sequential_20/lstm_61/while/lstm_cell_331/add:z:0Hsequential_20/lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ{
9sequential_20/lstm_61/while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_20/lstm_61/while/lstm_cell_331/splitSplitBsequential_20/lstm_61/while/lstm_cell_331/split/split_dim:output:0:sequential_20/lstm_61/while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¨
1sequential_20/lstm_61/while/lstm_cell_331/SigmoidSigmoid8sequential_20/lstm_61/while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_20/lstm_61/while/lstm_cell_331/Sigmoid_1Sigmoid8sequential_20/lstm_61/while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ê
-sequential_20/lstm_61/while/lstm_cell_331/mulMul7sequential_20/lstm_61/while/lstm_cell_331/Sigmoid_1:y:0)sequential_20_lstm_61_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
.sequential_20/lstm_61/while/lstm_cell_331/ReluRelu8sequential_20/lstm_61/while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ý
/sequential_20/lstm_61/while/lstm_cell_331/mul_1Mul5sequential_20/lstm_61/while/lstm_cell_331/Sigmoid:y:0<sequential_20/lstm_61/while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ò
/sequential_20/lstm_61/while/lstm_cell_331/add_1AddV21sequential_20/lstm_61/while/lstm_cell_331/mul:z:03sequential_20/lstm_61/while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_20/lstm_61/while/lstm_cell_331/Sigmoid_2Sigmoid8sequential_20/lstm_61/while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
0sequential_20/lstm_61/while/lstm_cell_331/Relu_1Relu3sequential_20/lstm_61/while/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2á
/sequential_20/lstm_61/while/lstm_cell_331/mul_2Mul7sequential_20/lstm_61/while/lstm_cell_331/Sigmoid_2:y:0>sequential_20/lstm_61/while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_20/lstm_61/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_20_lstm_61_while_placeholder_1'sequential_20_lstm_61_while_placeholder3sequential_20/lstm_61/while/lstm_cell_331/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_20/lstm_61/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_20/lstm_61/while/addAddV2'sequential_20_lstm_61_while_placeholder*sequential_20/lstm_61/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_20/lstm_61/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_20/lstm_61/while/add_1AddV2Dsequential_20_lstm_61_while_sequential_20_lstm_61_while_loop_counter,sequential_20/lstm_61/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_20/lstm_61/while/IdentityIdentity%sequential_20/lstm_61/while/add_1:z:0!^sequential_20/lstm_61/while/NoOp*
T0*
_output_shapes
: Â
&sequential_20/lstm_61/while/Identity_1IdentityJsequential_20_lstm_61_while_sequential_20_lstm_61_while_maximum_iterations!^sequential_20/lstm_61/while/NoOp*
T0*
_output_shapes
: 
&sequential_20/lstm_61/while/Identity_2Identity#sequential_20/lstm_61/while/add:z:0!^sequential_20/lstm_61/while/NoOp*
T0*
_output_shapes
: È
&sequential_20/lstm_61/while/Identity_3IdentityPsequential_20/lstm_61/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_20/lstm_61/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_20/lstm_61/while/Identity_4Identity3sequential_20/lstm_61/while/lstm_cell_331/mul_2:z:0!^sequential_20/lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¼
&sequential_20/lstm_61/while/Identity_5Identity3sequential_20/lstm_61/while/lstm_cell_331/add_1:z:0!^sequential_20/lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2«
 sequential_20/lstm_61/while/NoOpNoOpA^sequential_20/lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp@^sequential_20/lstm_61/while/lstm_cell_331/MatMul/ReadVariableOpB^sequential_20/lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_20_lstm_61_while_identity-sequential_20/lstm_61/while/Identity:output:0"Y
&sequential_20_lstm_61_while_identity_1/sequential_20/lstm_61/while/Identity_1:output:0"Y
&sequential_20_lstm_61_while_identity_2/sequential_20/lstm_61/while/Identity_2:output:0"Y
&sequential_20_lstm_61_while_identity_3/sequential_20/lstm_61/while/Identity_3:output:0"Y
&sequential_20_lstm_61_while_identity_4/sequential_20/lstm_61/while/Identity_4:output:0"Y
&sequential_20_lstm_61_while_identity_5/sequential_20/lstm_61/while/Identity_5:output:0"
Isequential_20_lstm_61_while_lstm_cell_331_biasadd_readvariableop_resourceKsequential_20_lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0"
Jsequential_20_lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resourceLsequential_20_lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0"
Hsequential_20_lstm_61_while_lstm_cell_331_matmul_readvariableop_resourceJsequential_20_lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0"
Asequential_20_lstm_61_while_sequential_20_lstm_61_strided_slice_1Csequential_20_lstm_61_while_sequential_20_lstm_61_strided_slice_1_0"
}sequential_20_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_61_tensorarrayunstack_tensorlistfromtensorsequential_20_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_61_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
@sequential_20/lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp@sequential_20/lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2
?sequential_20/lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp?sequential_20/lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp2
Asequential_20/lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOpAsequential_20/lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_2010584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2010584___redundant_placeholder05
1while_while_cond_2010584___redundant_placeholder15
1while_while_cond_2010584___redundant_placeholder25
1while_while_cond_2010584___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
áJ
¢
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010153

inputs?
,lstm_cell_330_matmul_readvariableop_resource:	A
.lstm_cell_330_matmul_1_readvariableop_resource:	d<
-lstm_cell_330_biasadd_readvariableop_resource:	
identity¢$lstm_cell_330/BiasAdd/ReadVariableOp¢#lstm_cell_330/MatMul/ReadVariableOp¢%lstm_cell_330/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_330/MatMul/ReadVariableOpReadVariableOp,lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_330/MatMulMatMulstrided_slice_2:output:0+lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_330/MatMul_1MatMulzeros:output:0-lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_330/addAddV2lstm_cell_330/MatMul:product:0 lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_330/BiasAddBiasAddlstm_cell_330/add:z:0,lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_330/splitSplit&lstm_cell_330/split/split_dim:output:0lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_330/SigmoidSigmoidlstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_1Sigmoidlstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_330/mulMullstm_cell_330/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_330/ReluRelulstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_1Mullstm_cell_330/Sigmoid:y:0 lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_330/add_1AddV2lstm_cell_330/mul:z:0lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_2Sigmoidlstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_330/Relu_1Relulstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_2Mullstm_cell_330/Sigmoid_2:y:0"lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_330_matmul_readvariableop_resource.lstm_cell_330_matmul_1_readvariableop_resource-lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2010069*
condR
while_cond_2010068*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_330/BiasAdd/ReadVariableOp$^lstm_cell_330/MatMul/ReadVariableOp&^lstm_cell_330/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_330/BiasAdd/ReadVariableOp$lstm_cell_330/BiasAdd/ReadVariableOp2J
#lstm_cell_330/MatMul/ReadVariableOp#lstm_cell_330/MatMul/ReadVariableOp2N
%lstm_cell_330/MatMul_1/ReadVariableOp%lstm_cell_330/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü


/__inference_sequential_20_layer_call_fn_2011268

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
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
¸
)__inference_lstm_60_layer_call_fn_2012133
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2009104|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ

J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2014251

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
ß

J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2014185

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
¿


%__inference_signature_wrapper_2011214
lstm_60_input
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
identity¢StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCalllstm_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2008954o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_60_input
º
È
while_cond_2012840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2012840___redundant_placeholder05
1while_while_cond_2012840___redundant_placeholder15
1while_while_cond_2012840___redundant_placeholder25
1while_while_cond_2012840___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_2010219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_331_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_331_biasadd_readvariableop_resource:	È¢*while/lstm_cell_331/BiasAdd/ReadVariableOp¢)while/lstm_cell_331/MatMul/ReadVariableOp¢+while/lstm_cell_331/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_331/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_331/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_331/addAddV2$while/lstm_cell_331/MatMul:product:0&while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_331/BiasAddBiasAddwhile/lstm_cell_331/add:z:02while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_331/splitSplit,while/lstm_cell_331/split/split_dim:output:0$while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_331/SigmoidSigmoid"while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_1Sigmoid"while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mulMul!while/lstm_cell_331/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_331/ReluRelu"while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_1Mulwhile/lstm_cell_331/Sigmoid:y:0&while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/add_1AddV2while/lstm_cell_331/mul:z:0while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_2Sigmoid"while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_331/Relu_1Reluwhile/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_2Mul!while/lstm_cell_331/Sigmoid_2:y:0(while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_331/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_331/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_331/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_331/BiasAdd/ReadVariableOp*^while/lstm_cell_331/MatMul/ReadVariableOp,^while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_331_biasadd_readvariableop_resource5while_lstm_cell_331_biasadd_readvariableop_resource_0"n
4while_lstm_cell_331_matmul_1_readvariableop_resource6while_lstm_cell_331_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_331_matmul_readvariableop_resource4while_lstm_cell_331_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_331/BiasAdd/ReadVariableOp*while/lstm_cell_331/BiasAdd/ReadVariableOp2V
)while/lstm_cell_331/MatMul/ReadVariableOp)while/lstm_cell_331/MatMul/ReadVariableOp2Z
+while/lstm_cell_331/MatMul_1/ReadVariableOp+while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
K
¤
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013068
inputs_0?
,lstm_cell_331_matmul_readvariableop_resource:	dÈA
.lstm_cell_331_matmul_1_readvariableop_resource:	2È<
-lstm_cell_331_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_331/BiasAdd/ReadVariableOp¢#lstm_cell_331/MatMul/ReadVariableOp¢%lstm_cell_331/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_331/MatMul/ReadVariableOpReadVariableOp,lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_331/MatMulMatMulstrided_slice_2:output:0+lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_331/MatMul_1MatMulzeros:output:0-lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_331/addAddV2lstm_cell_331/MatMul:product:0 lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_331/BiasAddBiasAddlstm_cell_331/add:z:0,lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_331/splitSplit&lstm_cell_331/split/split_dim:output:0lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_331/SigmoidSigmoidlstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_1Sigmoidlstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_331/mulMullstm_cell_331/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_331/ReluRelulstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_1Mullstm_cell_331/Sigmoid:y:0 lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_331/add_1AddV2lstm_cell_331/mul:z:0lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_2Sigmoidlstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_331/Relu_1Relulstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_2Mullstm_cell_331/Sigmoid_2:y:0"lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_331_matmul_readvariableop_resource.lstm_cell_331_matmul_1_readvariableop_resource-lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2012984*
condR
while_cond_2012983*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_331/BiasAdd/ReadVariableOp$^lstm_cell_331/MatMul/ReadVariableOp&^lstm_cell_331/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_331/BiasAdd/ReadVariableOp$lstm_cell_331/BiasAdd/ReadVariableOp2J
#lstm_cell_331/MatMul/ReadVariableOp#lstm_cell_331/MatMul/ReadVariableOp2N
%lstm_cell_331/MatMul_1/ReadVariableOp%lstm_cell_331/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ß

J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2014153

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
º
È
while_cond_2012983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2012983___redundant_placeholder05
1while_while_cond_2012983___redundant_placeholder15
1while_while_cond_2012983___redundant_placeholder25
1while_while_cond_2012983___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ß

J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2014087

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
ýA
Ô

lstm_62_while_body_2011605,
(lstm_62_while_lstm_62_while_loop_counter2
.lstm_62_while_lstm_62_while_maximum_iterations
lstm_62_while_placeholder
lstm_62_while_placeholder_1
lstm_62_while_placeholder_2
lstm_62_while_placeholder_3+
'lstm_62_while_lstm_62_strided_slice_1_0g
clstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0:2(P
>lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(K
=lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0:(
lstm_62_while_identity
lstm_62_while_identity_1
lstm_62_while_identity_2
lstm_62_while_identity_3
lstm_62_while_identity_4
lstm_62_while_identity_5)
%lstm_62_while_lstm_62_strided_slice_1e
alstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensorL
:lstm_62_while_lstm_cell_332_matmul_readvariableop_resource:2(N
<lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource:
(I
;lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource:(¢2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp¢1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp¢3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp
?lstm_62/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_62/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensor_0lstm_62_while_placeholderHlstm_62/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp<lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_62/while/lstm_cell_332/MatMulMatMul8lstm_62/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp>lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_62/while/lstm_cell_332/MatMul_1MatMullstm_62_while_placeholder_2;lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_62/while/lstm_cell_332/addAddV2,lstm_62/while/lstm_cell_332/MatMul:product:0.lstm_62/while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp=lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_62/while/lstm_cell_332/BiasAddBiasAdd#lstm_62/while/lstm_cell_332/add:z:0:lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_62/while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_62/while/lstm_cell_332/splitSplit4lstm_62/while/lstm_cell_332/split/split_dim:output:0,lstm_62/while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_62/while/lstm_cell_332/SigmoidSigmoid*lstm_62/while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_62/while/lstm_cell_332/Sigmoid_1Sigmoid*lstm_62/while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_62/while/lstm_cell_332/mulMul)lstm_62/while/lstm_cell_332/Sigmoid_1:y:0lstm_62_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_62/while/lstm_cell_332/ReluRelu*lstm_62/while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_62/while/lstm_cell_332/mul_1Mul'lstm_62/while/lstm_cell_332/Sigmoid:y:0.lstm_62/while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_62/while/lstm_cell_332/add_1AddV2#lstm_62/while/lstm_cell_332/mul:z:0%lstm_62/while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_62/while/lstm_cell_332/Sigmoid_2Sigmoid*lstm_62/while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_62/while/lstm_cell_332/Relu_1Relu%lstm_62/while/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_62/while/lstm_cell_332/mul_2Mul)lstm_62/while/lstm_cell_332/Sigmoid_2:y:00lstm_62/while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_62/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_62_while_placeholder_1lstm_62_while_placeholder%lstm_62/while/lstm_cell_332/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_62/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_62/while/addAddV2lstm_62_while_placeholderlstm_62/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_62/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_62/while/add_1AddV2(lstm_62_while_lstm_62_while_loop_counterlstm_62/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_62/while/IdentityIdentitylstm_62/while/add_1:z:0^lstm_62/while/NoOp*
T0*
_output_shapes
: 
lstm_62/while/Identity_1Identity.lstm_62_while_lstm_62_while_maximum_iterations^lstm_62/while/NoOp*
T0*
_output_shapes
: q
lstm_62/while/Identity_2Identitylstm_62/while/add:z:0^lstm_62/while/NoOp*
T0*
_output_shapes
: 
lstm_62/while/Identity_3IdentityBlstm_62/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_62/while/NoOp*
T0*
_output_shapes
: 
lstm_62/while/Identity_4Identity%lstm_62/while/lstm_cell_332/mul_2:z:0^lstm_62/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_62/while/Identity_5Identity%lstm_62/while/lstm_cell_332/add_1:z:0^lstm_62/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_62/while/NoOpNoOp3^lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2^lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp4^lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_62_while_identitylstm_62/while/Identity:output:0"=
lstm_62_while_identity_1!lstm_62/while/Identity_1:output:0"=
lstm_62_while_identity_2!lstm_62/while/Identity_2:output:0"=
lstm_62_while_identity_3!lstm_62/while/Identity_3:output:0"=
lstm_62_while_identity_4!lstm_62/while/Identity_4:output:0"=
lstm_62_while_identity_5!lstm_62/while/Identity_5:output:0"P
%lstm_62_while_lstm_62_strided_slice_1'lstm_62_while_lstm_62_strided_slice_1_0"|
;lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource=lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0"~
<lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource>lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0"z
:lstm_62_while_lstm_cell_332_matmul_readvariableop_resource<lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0"È
alstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensorclstm_62_while_tensorarrayv2read_tensorlistgetitem_lstm_62_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2f
1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp1lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp2j
3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp3lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Ñ8
Ú
while_body_2012984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_331_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_331_biasadd_readvariableop_resource:	È¢*while/lstm_cell_331/BiasAdd/ReadVariableOp¢)while/lstm_cell_331/MatMul/ReadVariableOp¢+while/lstm_cell_331/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_331/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_331/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_331/addAddV2$while/lstm_cell_331/MatMul:product:0&while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_331/BiasAddBiasAddwhile/lstm_cell_331/add:z:02while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_331/splitSplit,while/lstm_cell_331/split/split_dim:output:0$while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_331/SigmoidSigmoid"while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_1Sigmoid"while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mulMul!while/lstm_cell_331/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_331/ReluRelu"while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_1Mulwhile/lstm_cell_331/Sigmoid:y:0&while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/add_1AddV2while/lstm_cell_331/mul:z:0while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_2Sigmoid"while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_331/Relu_1Reluwhile/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_2Mul!while/lstm_cell_331/Sigmoid_2:y:0(while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_331/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_331/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_331/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_331/BiasAdd/ReadVariableOp*^while/lstm_cell_331/MatMul/ReadVariableOp,^while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_331_biasadd_readvariableop_resource5while_lstm_cell_331_biasadd_readvariableop_resource_0"n
4while_lstm_cell_331_matmul_1_readvariableop_resource6while_lstm_cell_331_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_331_matmul_readvariableop_resource4while_lstm_cell_331_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_331/BiasAdd/ReadVariableOp*while/lstm_cell_331/BiasAdd/ReadVariableOp2V
)while/lstm_cell_331/MatMul/ReadVariableOp)while/lstm_cell_331/MatMul/ReadVariableOp2Z
+while/lstm_cell_331/MatMul_1/ReadVariableOp+while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ÜJ

D__inference_lstm_62_layer_call_and_return_conditional_losses_2013827

inputs>
,lstm_cell_332_matmul_readvariableop_resource:2(@
.lstm_cell_332_matmul_1_readvariableop_resource:
(;
-lstm_cell_332_biasadd_readvariableop_resource:(
identity¢$lstm_cell_332/BiasAdd/ReadVariableOp¢#lstm_cell_332/MatMul/ReadVariableOp¢%lstm_cell_332/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_332/MatMul/ReadVariableOpReadVariableOp,lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_332/MatMulMatMulstrided_slice_2:output:0+lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_332/MatMul_1MatMulzeros:output:0-lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_332/addAddV2lstm_cell_332/MatMul:product:0 lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_332/BiasAddBiasAddlstm_cell_332/add:z:0,lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_332/splitSplit&lstm_cell_332/split/split_dim:output:0lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_332/SigmoidSigmoidlstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_1Sigmoidlstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_332/mulMullstm_cell_332/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_332/ReluRelulstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_1Mullstm_cell_332/Sigmoid:y:0 lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_332/add_1AddV2lstm_cell_332/mul:z:0lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_2Sigmoidlstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_332/Relu_1Relulstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_2Mullstm_cell_332/Sigmoid_2:y:0"lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_332_matmul_readvariableop_resource.lstm_cell_332_matmul_1_readvariableop_resource-lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2013743*
condR
while_cond_2013742*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_332/BiasAdd/ReadVariableOp$^lstm_cell_332/MatMul/ReadVariableOp&^lstm_cell_332/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_332/BiasAdd/ReadVariableOp$lstm_cell_332/BiasAdd/ReadVariableOp2J
#lstm_cell_332/MatMul/ReadVariableOp#lstm_cell_332/MatMul/ReadVariableOp2N
%lstm_cell_332/MatMul_1/ReadVariableOp%lstm_cell_332/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
®8

D__inference_lstm_61_layer_call_and_return_conditional_losses_2009454

inputs(
lstm_cell_331_2009372:	dÈ(
lstm_cell_331_2009374:	2È$
lstm_cell_331_2009376:	È
identity¢%lstm_cell_331/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskþ
%lstm_cell_331/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_331_2009372lstm_cell_331_2009374lstm_cell_331_2009376*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009371n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_331_2009372lstm_cell_331_2009374lstm_cell_331_2009376*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2009385*
condR
while_cond_2009384*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2v
NoOpNoOp&^lstm_cell_331/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_331/StatefulPartitionedCall%lstm_cell_331/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_2009225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2009225___redundant_placeholder05
1while_while_cond_2009225___redundant_placeholder15
1while_while_cond_2009225___redundant_placeholder25
1while_while_cond_2009225___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:


è
lstm_60_while_cond_2011753,
(lstm_60_while_lstm_60_while_loop_counter2
.lstm_60_while_lstm_60_while_maximum_iterations
lstm_60_while_placeholder
lstm_60_while_placeholder_1
lstm_60_while_placeholder_2
lstm_60_while_placeholder_3.
*lstm_60_while_less_lstm_60_strided_slice_1E
Alstm_60_while_lstm_60_while_cond_2011753___redundant_placeholder0E
Alstm_60_while_lstm_60_while_cond_2011753___redundant_placeholder1E
Alstm_60_while_lstm_60_while_cond_2011753___redundant_placeholder2E
Alstm_60_while_lstm_60_while_cond_2011753___redundant_placeholder3
lstm_60_while_identity

lstm_60/while/LessLesslstm_60_while_placeholder*lstm_60_while_less_lstm_60_strided_slice_1*
T0*
_output_shapes
: [
lstm_60/while/IdentityIdentitylstm_60/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_60_while_identitylstm_60/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
B
Ú

lstm_60_while_body_2011754,
(lstm_60_while_lstm_60_while_loop_counter2
.lstm_60_while_lstm_60_while_maximum_iterations
lstm_60_while_placeholder
lstm_60_while_placeholder_1
lstm_60_while_placeholder_2
lstm_60_while_placeholder_3+
'lstm_60_while_lstm_60_strided_slice_1_0g
clstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0:	Q
>lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dL
=lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0:	
lstm_60_while_identity
lstm_60_while_identity_1
lstm_60_while_identity_2
lstm_60_while_identity_3
lstm_60_while_identity_4
lstm_60_while_identity_5)
%lstm_60_while_lstm_60_strided_slice_1e
alstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensorM
:lstm_60_while_lstm_cell_330_matmul_readvariableop_resource:	O
<lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource:	dJ
;lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource:	¢2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp¢1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp¢3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp
?lstm_60/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_60/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensor_0lstm_60_while_placeholderHlstm_60/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp<lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_60/while/lstm_cell_330/MatMulMatMul8lstm_60/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp>lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_60/while/lstm_cell_330/MatMul_1MatMullstm_60_while_placeholder_2;lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_60/while/lstm_cell_330/addAddV2,lstm_60/while/lstm_cell_330/MatMul:product:0.lstm_60/while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp=lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_60/while/lstm_cell_330/BiasAddBiasAdd#lstm_60/while/lstm_cell_330/add:z:0:lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_60/while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_60/while/lstm_cell_330/splitSplit4lstm_60/while/lstm_cell_330/split/split_dim:output:0,lstm_60/while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_60/while/lstm_cell_330/SigmoidSigmoid*lstm_60/while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_60/while/lstm_cell_330/Sigmoid_1Sigmoid*lstm_60/while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_60/while/lstm_cell_330/mulMul)lstm_60/while/lstm_cell_330/Sigmoid_1:y:0lstm_60_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_60/while/lstm_cell_330/ReluRelu*lstm_60/while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_60/while/lstm_cell_330/mul_1Mul'lstm_60/while/lstm_cell_330/Sigmoid:y:0.lstm_60/while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_60/while/lstm_cell_330/add_1AddV2#lstm_60/while/lstm_cell_330/mul:z:0%lstm_60/while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_60/while/lstm_cell_330/Sigmoid_2Sigmoid*lstm_60/while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_60/while/lstm_cell_330/Relu_1Relu%lstm_60/while/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_60/while/lstm_cell_330/mul_2Mul)lstm_60/while/lstm_cell_330/Sigmoid_2:y:00lstm_60/while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_60/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_60_while_placeholder_1lstm_60_while_placeholder%lstm_60/while/lstm_cell_330/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_60/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_60/while/addAddV2lstm_60_while_placeholderlstm_60/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_60/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_60/while/add_1AddV2(lstm_60_while_lstm_60_while_loop_counterlstm_60/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_60/while/IdentityIdentitylstm_60/while/add_1:z:0^lstm_60/while/NoOp*
T0*
_output_shapes
: 
lstm_60/while/Identity_1Identity.lstm_60_while_lstm_60_while_maximum_iterations^lstm_60/while/NoOp*
T0*
_output_shapes
: q
lstm_60/while/Identity_2Identitylstm_60/while/add:z:0^lstm_60/while/NoOp*
T0*
_output_shapes
: 
lstm_60/while/Identity_3IdentityBlstm_60/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_60/while/NoOp*
T0*
_output_shapes
: 
lstm_60/while/Identity_4Identity%lstm_60/while/lstm_cell_330/mul_2:z:0^lstm_60/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/while/Identity_5Identity%lstm_60/while/lstm_cell_330/add_1:z:0^lstm_60/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_60/while/NoOpNoOp3^lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2^lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp4^lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_60_while_identitylstm_60/while/Identity:output:0"=
lstm_60_while_identity_1!lstm_60/while/Identity_1:output:0"=
lstm_60_while_identity_2!lstm_60/while/Identity_2:output:0"=
lstm_60_while_identity_3!lstm_60/while/Identity_3:output:0"=
lstm_60_while_identity_4!lstm_60/while/Identity_4:output:0"=
lstm_60_while_identity_5!lstm_60/while/Identity_5:output:0"P
%lstm_60_while_lstm_60_strided_slice_1'lstm_60_while_lstm_60_strided_slice_1_0"|
;lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource=lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0"~
<lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource>lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0"z
:lstm_60_while_lstm_cell_330_matmul_readvariableop_resource<lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0"È
alstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensorclstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2f
1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp2j
3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
#
ë
while_body_2009926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_332_2009950_0:2(/
while_lstm_cell_332_2009952_0:
(+
while_lstm_cell_332_2009954_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_332_2009950:2(-
while_lstm_cell_332_2009952:
()
while_lstm_cell_332_2009954:(¢+while/lstm_cell_332/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_332/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_332_2009950_0while_lstm_cell_332_2009952_0while_lstm_cell_332_2009954_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009867Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_332/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_332/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_332/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_332/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_332_2009950while_lstm_cell_332_2009950_0"<
while_lstm_cell_332_2009952while_lstm_cell_332_2009952_0"<
while_lstm_cell_332_2009954while_lstm_cell_332_2009954_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_332/StatefulPartitionedCall+while/lstm_cell_332/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 


è
lstm_61_while_cond_2011892,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3.
*lstm_61_while_less_lstm_61_strided_slice_1E
Alstm_61_while_lstm_61_while_cond_2011892___redundant_placeholder0E
Alstm_61_while_lstm_61_while_cond_2011892___redundant_placeholder1E
Alstm_61_while_lstm_61_while_cond_2011892___redundant_placeholder2E
Alstm_61_while_lstm_61_while_cond_2011892___redundant_placeholder3
lstm_61_while_identity

lstm_61/while/LessLesslstm_61_while_placeholder*lstm_61_while_less_lstm_61_strided_slice_1*
T0*
_output_shapes
: [
lstm_61/while/IdentityIdentitylstm_61/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_61_while_identitylstm_61/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ö
³
)__inference_lstm_62_layer_call_fn_2013398

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2010669o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_2009575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2009575___redundant_placeholder05
1while_while_cond_2009575___redundant_placeholder15
1while_while_cond_2009575___redundant_placeholder25
1while_while_cond_2009575___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
áJ
¢
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010999

inputs?
,lstm_cell_330_matmul_readvariableop_resource:	A
.lstm_cell_330_matmul_1_readvariableop_resource:	d<
-lstm_cell_330_biasadd_readvariableop_resource:	
identity¢$lstm_cell_330/BiasAdd/ReadVariableOp¢#lstm_cell_330/MatMul/ReadVariableOp¢%lstm_cell_330/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_330/MatMul/ReadVariableOpReadVariableOp,lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_330/MatMulMatMulstrided_slice_2:output:0+lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_330/MatMul_1MatMulzeros:output:0-lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_330/addAddV2lstm_cell_330/MatMul:product:0 lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_330/BiasAddBiasAddlstm_cell_330/add:z:0,lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_330/splitSplit&lstm_cell_330/split/split_dim:output:0lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_330/SigmoidSigmoidlstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_1Sigmoidlstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_330/mulMullstm_cell_330/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_330/ReluRelulstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_1Mullstm_cell_330/Sigmoid:y:0 lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_330/add_1AddV2lstm_cell_330/mul:z:0lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_2Sigmoidlstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_330/Relu_1Relulstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_2Mullstm_cell_330/Sigmoid_2:y:0"lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_330_matmul_readvariableop_resource.lstm_cell_330_matmul_1_readvariableop_resource-lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2010915*
condR
while_cond_2010914*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_330/BiasAdd/ReadVariableOp$^lstm_cell_330/MatMul/ReadVariableOp&^lstm_cell_330/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_330/BiasAdd/ReadVariableOp$lstm_cell_330/BiasAdd/ReadVariableOp2J
#lstm_cell_330/MatMul/ReadVariableOp#lstm_cell_330/MatMul/ReadVariableOp2N
%lstm_cell_330/MatMul_1/ReadVariableOp%lstm_cell_330/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä8
Ô
while_body_2010585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_332_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_332_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_332_matmul_readvariableop_resource:2(F
4while_lstm_cell_332_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_332_biasadd_readvariableop_resource:(¢*while/lstm_cell_332/BiasAdd/ReadVariableOp¢)while/lstm_cell_332/MatMul/ReadVariableOp¢+while/lstm_cell_332/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_332/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_332/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_332/addAddV2$while/lstm_cell_332/MatMul:product:0&while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_332/BiasAddBiasAddwhile/lstm_cell_332/add:z:02while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_332/splitSplit,while/lstm_cell_332/split/split_dim:output:0$while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_332/SigmoidSigmoid"while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_1Sigmoid"while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mulMul!while/lstm_cell_332/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_332/ReluRelu"while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_1Mulwhile/lstm_cell_332/Sigmoid:y:0&while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/add_1AddV2while/lstm_cell_332/mul:z:0while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_332/Sigmoid_2Sigmoid"while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_332/Relu_1Reluwhile/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_332/mul_2Mul!while/lstm_cell_332/Sigmoid_2:y:0(while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_332/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_332/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_332/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_332/BiasAdd/ReadVariableOp*^while/lstm_cell_332/MatMul/ReadVariableOp,^while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_332_biasadd_readvariableop_resource5while_lstm_cell_332_biasadd_readvariableop_resource_0"n
4while_lstm_cell_332_matmul_1_readvariableop_resource6while_lstm_cell_332_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_332_matmul_readvariableop_resource4while_lstm_cell_332_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_332/BiasAdd/ReadVariableOp*while/lstm_cell_332/BiasAdd/ReadVariableOp2V
)while/lstm_cell_332/MatMul/ReadVariableOp)while/lstm_cell_332/MatMul/ReadVariableOp2Z
+while/lstm_cell_332/MatMul_1/ReadVariableOp+while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
ÜJ

D__inference_lstm_62_layer_call_and_return_conditional_losses_2010453

inputs>
,lstm_cell_332_matmul_readvariableop_resource:2(@
.lstm_cell_332_matmul_1_readvariableop_resource:
(;
-lstm_cell_332_biasadd_readvariableop_resource:(
identity¢$lstm_cell_332/BiasAdd/ReadVariableOp¢#lstm_cell_332/MatMul/ReadVariableOp¢%lstm_cell_332/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_332/MatMul/ReadVariableOpReadVariableOp,lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_332/MatMulMatMulstrided_slice_2:output:0+lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_332/MatMul_1MatMulzeros:output:0-lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_332/addAddV2lstm_cell_332/MatMul:product:0 lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_332/BiasAddBiasAddlstm_cell_332/add:z:0,lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_332/splitSplit&lstm_cell_332/split/split_dim:output:0lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_332/SigmoidSigmoidlstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_1Sigmoidlstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_332/mulMullstm_cell_332/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_332/ReluRelulstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_1Mullstm_cell_332/Sigmoid:y:0 lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_332/add_1AddV2lstm_cell_332/mul:z:0lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_2Sigmoidlstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_332/Relu_1Relulstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_2Mullstm_cell_332/Sigmoid_2:y:0"lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_332_matmul_readvariableop_resource.lstm_cell_332_matmul_1_readvariableop_resource-lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2010369*
condR
while_cond_2010368*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_332/BiasAdd/ReadVariableOp$^lstm_cell_332/MatMul/ReadVariableOp&^lstm_cell_332/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_332/BiasAdd/ReadVariableOp$lstm_cell_332/BiasAdd/ReadVariableOp2J
#lstm_cell_332/MatMul/ReadVariableOp#lstm_cell_332/MatMul/ReadVariableOp2N
%lstm_cell_332/MatMul_1/ReadVariableOp%lstm_cell_332/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_2010068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2010068___redundant_placeholder05
1while_while_cond_2010068___redundant_placeholder15
1while_while_cond_2010068___redundant_placeholder25
1while_while_cond_2010068___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
«
¸
)__inference_lstm_61_layer_call_fn_2012749
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2009454|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0

µ
)__inference_lstm_62_layer_call_fn_2013376
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2009995o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
B
Ú

lstm_61_while_body_2011466,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3+
'lstm_61_while_lstm_61_strided_slice_1_0g
clstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈQ
>lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
lstm_61_while_identity
lstm_61_while_identity_1
lstm_61_while_identity_2
lstm_61_while_identity_3
lstm_61_while_identity_4
lstm_61_while_identity_5)
%lstm_61_while_lstm_61_strided_slice_1e
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorM
:lstm_61_while_lstm_cell_331_matmul_readvariableop_resource:	dÈO
<lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈJ
;lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource:	È¢2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp¢1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp¢3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp
?lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_61/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0lstm_61_while_placeholderHlstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp<lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_61/while/lstm_cell_331/MatMulMatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp>lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_61/while/lstm_cell_331/MatMul_1MatMullstm_61_while_placeholder_2;lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_61/while/lstm_cell_331/addAddV2,lstm_61/while/lstm_cell_331/MatMul:product:0.lstm_61/while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp=lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_61/while/lstm_cell_331/BiasAddBiasAdd#lstm_61/while/lstm_cell_331/add:z:0:lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_61/while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_61/while/lstm_cell_331/splitSplit4lstm_61/while/lstm_cell_331/split/split_dim:output:0,lstm_61/while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_61/while/lstm_cell_331/SigmoidSigmoid*lstm_61/while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_61/while/lstm_cell_331/Sigmoid_1Sigmoid*lstm_61/while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_61/while/lstm_cell_331/mulMul)lstm_61/while/lstm_cell_331/Sigmoid_1:y:0lstm_61_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_61/while/lstm_cell_331/ReluRelu*lstm_61/while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_61/while/lstm_cell_331/mul_1Mul'lstm_61/while/lstm_cell_331/Sigmoid:y:0.lstm_61/while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_61/while/lstm_cell_331/add_1AddV2#lstm_61/while/lstm_cell_331/mul:z:0%lstm_61/while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_61/while/lstm_cell_331/Sigmoid_2Sigmoid*lstm_61/while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_61/while/lstm_cell_331/Relu_1Relu%lstm_61/while/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_61/while/lstm_cell_331/mul_2Mul)lstm_61/while/lstm_cell_331/Sigmoid_2:y:00lstm_61/while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_61/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_61_while_placeholder_1lstm_61_while_placeholder%lstm_61/while/lstm_cell_331/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_61/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_61/while/addAddV2lstm_61_while_placeholderlstm_61/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_61/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_61/while/add_1AddV2(lstm_61_while_lstm_61_while_loop_counterlstm_61/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_61/while/IdentityIdentitylstm_61/while/add_1:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 
lstm_61/while/Identity_1Identity.lstm_61_while_lstm_61_while_maximum_iterations^lstm_61/while/NoOp*
T0*
_output_shapes
: q
lstm_61/while/Identity_2Identitylstm_61/while/add:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 
lstm_61/while/Identity_3IdentityBlstm_61/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 
lstm_61/while/Identity_4Identity%lstm_61/while/lstm_cell_331/mul_2:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/while/Identity_5Identity%lstm_61/while/lstm_cell_331/add_1:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_61/while/NoOpNoOp3^lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2^lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp4^lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_61_while_identitylstm_61/while/Identity:output:0"=
lstm_61_while_identity_1!lstm_61/while/Identity_1:output:0"=
lstm_61_while_identity_2!lstm_61/while/Identity_2:output:0"=
lstm_61_while_identity_3!lstm_61/while/Identity_3:output:0"=
lstm_61_while_identity_4!lstm_61/while/Identity_4:output:0"=
lstm_61_while_identity_5!lstm_61/while/Identity_5:output:0"P
%lstm_61_while_lstm_61_strided_slice_1'lstm_61_while_lstm_61_strided_slice_1_0"|
;lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource=lstm_61_while_lstm_cell_331_biasadd_readvariableop_resource_0"~
<lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource>lstm_61_while_lstm_cell_331_matmul_1_readvariableop_resource_0"z
:lstm_61_while_lstm_cell_331_matmul_readvariableop_resource<lstm_61_while_lstm_cell_331_matmul_readvariableop_resource_0"È
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2lstm_61/while/lstm_cell_331/BiasAdd/ReadVariableOp2f
1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp1lstm_61/while/lstm_cell_331/MatMul/ReadVariableOp2j
3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp3lstm_61/while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ä

*__inference_dense_20_layer_call_fn_2013979

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2010471o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ö
³
)__inference_lstm_62_layer_call_fn_2013387

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_62_layer_call_and_return_conditional_losses_2010453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
K
¡
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013541
inputs_0>
,lstm_cell_332_matmul_readvariableop_resource:2(@
.lstm_cell_332_matmul_1_readvariableop_resource:
(;
-lstm_cell_332_biasadd_readvariableop_resource:(
identity¢$lstm_cell_332/BiasAdd/ReadVariableOp¢#lstm_cell_332/MatMul/ReadVariableOp¢%lstm_cell_332/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_332/MatMul/ReadVariableOpReadVariableOp,lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_332/MatMulMatMulstrided_slice_2:output:0+lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_332/MatMul_1MatMulzeros:output:0-lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_332/addAddV2lstm_cell_332/MatMul:product:0 lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_332/BiasAddBiasAddlstm_cell_332/add:z:0,lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_332/splitSplit&lstm_cell_332/split/split_dim:output:0lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_332/SigmoidSigmoidlstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_1Sigmoidlstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_332/mulMullstm_cell_332/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_332/ReluRelulstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_1Mullstm_cell_332/Sigmoid:y:0 lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_332/add_1AddV2lstm_cell_332/mul:z:0lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_2Sigmoidlstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_332/Relu_1Relulstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_2Mullstm_cell_332/Sigmoid_2:y:0"lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_332_matmul_readvariableop_resource.lstm_cell_332_matmul_1_readvariableop_resource-lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2013457*
condR
while_cond_2013456*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_332/BiasAdd/ReadVariableOp$^lstm_cell_332/MatMul/ReadVariableOp&^lstm_cell_332/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_332/BiasAdd/ReadVariableOp$lstm_cell_332/BiasAdd/ReadVariableOp2J
#lstm_cell_332/MatMul/ReadVariableOp#lstm_cell_332/MatMul/ReadVariableOp2N
%lstm_cell_332/MatMul_1/ReadVariableOp%lstm_cell_332/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
ï
ø
/__inference_lstm_cell_330_layer_call_fn_2014023

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009167o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
K
¤
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012452
inputs_0?
,lstm_cell_330_matmul_readvariableop_resource:	A
.lstm_cell_330_matmul_1_readvariableop_resource:	d<
-lstm_cell_330_biasadd_readvariableop_resource:	
identity¢$lstm_cell_330/BiasAdd/ReadVariableOp¢#lstm_cell_330/MatMul/ReadVariableOp¢%lstm_cell_330/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_330/MatMul/ReadVariableOpReadVariableOp,lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_330/MatMulMatMulstrided_slice_2:output:0+lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_330/MatMul_1MatMulzeros:output:0-lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_330/addAddV2lstm_cell_330/MatMul:product:0 lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_330/BiasAddBiasAddlstm_cell_330/add:z:0,lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_330/splitSplit&lstm_cell_330/split/split_dim:output:0lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_330/SigmoidSigmoidlstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_1Sigmoidlstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_330/mulMullstm_cell_330/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_330/ReluRelulstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_1Mullstm_cell_330/Sigmoid:y:0 lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_330/add_1AddV2lstm_cell_330/mul:z:0lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_2Sigmoidlstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_330/Relu_1Relulstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_2Mullstm_cell_330/Sigmoid_2:y:0"lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_330_matmul_readvariableop_resource.lstm_cell_330_matmul_1_readvariableop_resource-lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2012368*
condR
while_cond_2012367*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_330/BiasAdd/ReadVariableOp$^lstm_cell_330/MatMul/ReadVariableOp&^lstm_cell_330/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_330/BiasAdd/ReadVariableOp$lstm_cell_330/BiasAdd/ReadVariableOp2J
#lstm_cell_330/MatMul/ReadVariableOp#lstm_cell_330/MatMul/ReadVariableOp2N
%lstm_cell_330/MatMul_1/ReadVariableOp%lstm_cell_330/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
×

J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009167

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
K
¡
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013684
inputs_0>
,lstm_cell_332_matmul_readvariableop_resource:2(@
.lstm_cell_332_matmul_1_readvariableop_resource:
(;
-lstm_cell_332_biasadd_readvariableop_resource:(
identity¢$lstm_cell_332/BiasAdd/ReadVariableOp¢#lstm_cell_332/MatMul/ReadVariableOp¢%lstm_cell_332/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_332/MatMul/ReadVariableOpReadVariableOp,lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_332/MatMulMatMulstrided_slice_2:output:0+lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_332/MatMul_1MatMulzeros:output:0-lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_332/addAddV2lstm_cell_332/MatMul:product:0 lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_332/BiasAddBiasAddlstm_cell_332/add:z:0,lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_332/splitSplit&lstm_cell_332/split/split_dim:output:0lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_332/SigmoidSigmoidlstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_1Sigmoidlstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_332/mulMullstm_cell_332/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_332/ReluRelulstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_1Mullstm_cell_332/Sigmoid:y:0 lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_332/add_1AddV2lstm_cell_332/mul:z:0lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_2Sigmoidlstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_332/Relu_1Relulstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_2Mullstm_cell_332/Sigmoid_2:y:0"lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_332_matmul_readvariableop_resource.lstm_cell_332_matmul_1_readvariableop_resource-lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2013600*
condR
while_cond_2013599*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_332/BiasAdd/ReadVariableOp$^lstm_cell_332/MatMul/ReadVariableOp&^lstm_cell_332/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_332/BiasAdd/ReadVariableOp$lstm_cell_332/BiasAdd/ReadVariableOp2J
#lstm_cell_332/MatMul/ReadVariableOp#lstm_cell_332/MatMul/ReadVariableOp2N
%lstm_cell_332/MatMul_1/ReadVariableOp%lstm_cell_332/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
K
¤
D__inference_lstm_61_layer_call_and_return_conditional_losses_2012925
inputs_0?
,lstm_cell_331_matmul_readvariableop_resource:	dÈA
.lstm_cell_331_matmul_1_readvariableop_resource:	2È<
-lstm_cell_331_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_331/BiasAdd/ReadVariableOp¢#lstm_cell_331/MatMul/ReadVariableOp¢%lstm_cell_331/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_331/MatMul/ReadVariableOpReadVariableOp,lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_331/MatMulMatMulstrided_slice_2:output:0+lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_331/MatMul_1MatMulzeros:output:0-lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_331/addAddV2lstm_cell_331/MatMul:product:0 lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_331/BiasAddBiasAddlstm_cell_331/add:z:0,lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_331/splitSplit&lstm_cell_331/split/split_dim:output:0lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_331/SigmoidSigmoidlstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_1Sigmoidlstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_331/mulMullstm_cell_331/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_331/ReluRelulstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_1Mullstm_cell_331/Sigmoid:y:0 lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_331/add_1AddV2lstm_cell_331/mul:z:0lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_2Sigmoidlstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_331/Relu_1Relulstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_2Mullstm_cell_331/Sigmoid_2:y:0"lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_331_matmul_readvariableop_resource.lstm_cell_331_matmul_1_readvariableop_resource-lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2012841*
condR
while_cond_2012840*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_331/BiasAdd/ReadVariableOp$^lstm_cell_331/MatMul/ReadVariableOp&^lstm_cell_331/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_331/BiasAdd/ReadVariableOp$lstm_cell_331/BiasAdd/ReadVariableOp2J
#lstm_cell_331/MatMul/ReadVariableOp#lstm_cell_331/MatMul/ReadVariableOp2N
%lstm_cell_331/MatMul_1/ReadVariableOp%lstm_cell_331/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Ñ8
Ú
while_body_2010750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_331_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_331_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_331_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_331_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_331_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_331_biasadd_readvariableop_resource:	È¢*while/lstm_cell_331/BiasAdd/ReadVariableOp¢)while/lstm_cell_331/MatMul/ReadVariableOp¢+while/lstm_cell_331/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_331/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_331_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_331/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_331_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_331/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_331/addAddV2$while/lstm_cell_331/MatMul:product:0&while/lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_331_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_331/BiasAddBiasAddwhile/lstm_cell_331/add:z:02while/lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_331/splitSplit,while/lstm_cell_331/split/split_dim:output:0$while/lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_331/SigmoidSigmoid"while/lstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_1Sigmoid"while/lstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mulMul!while/lstm_cell_331/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_331/ReluRelu"while/lstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_1Mulwhile/lstm_cell_331/Sigmoid:y:0&while/lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/add_1AddV2while/lstm_cell_331/mul:z:0while/lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_331/Sigmoid_2Sigmoid"while/lstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_331/Relu_1Reluwhile/lstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_331/mul_2Mul!while/lstm_cell_331/Sigmoid_2:y:0(while/lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_331/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_331/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_331/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_331/BiasAdd/ReadVariableOp*^while/lstm_cell_331/MatMul/ReadVariableOp,^while/lstm_cell_331/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_331_biasadd_readvariableop_resource5while_lstm_cell_331_biasadd_readvariableop_resource_0"n
4while_lstm_cell_331_matmul_1_readvariableop_resource6while_lstm_cell_331_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_331_matmul_readvariableop_resource4while_lstm_cell_331_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_331/BiasAdd/ReadVariableOp*while/lstm_cell_331/BiasAdd/ReadVariableOp2V
)while/lstm_cell_331/MatMul/ReadVariableOp)while/lstm_cell_331/MatMul/ReadVariableOp2Z
+while/lstm_cell_331/MatMul_1/ReadVariableOp+while/lstm_cell_331/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_2009384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2009384___redundant_placeholder05
1while_while_cond_2009384___redundant_placeholder15
1while_while_cond_2009384___redundant_placeholder25
1while_while_cond_2009384___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_2009734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2009734___redundant_placeholder05
1while_while_cond_2009734___redundant_placeholder15
1while_while_cond_2009734___redundant_placeholder25
1while_while_cond_2009734___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
ì
õ
/__inference_lstm_cell_332_layer_call_fn_2014202

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009721o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
Ñ8
Ú
while_body_2012654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_330_matmul_readvariableop_resource_0:	I
6while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_330_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_330_matmul_readvariableop_resource:	G
4while_lstm_cell_330_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_330_biasadd_readvariableop_resource:	¢*while/lstm_cell_330/BiasAdd/ReadVariableOp¢)while/lstm_cell_330/MatMul/ReadVariableOp¢+while/lstm_cell_330/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_330/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_330/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_330/addAddV2$while/lstm_cell_330/MatMul:product:0&while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_330/BiasAddBiasAddwhile/lstm_cell_330/add:z:02while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_330/splitSplit,while/lstm_cell_330/split/split_dim:output:0$while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_330/SigmoidSigmoid"while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_1Sigmoid"while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mulMul!while/lstm_cell_330/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_330/ReluRelu"while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_1Mulwhile/lstm_cell_330/Sigmoid:y:0&while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/add_1AddV2while/lstm_cell_330/mul:z:0while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_2Sigmoid"while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_330/Relu_1Reluwhile/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_2Mul!while/lstm_cell_330/Sigmoid_2:y:0(while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_330/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_330/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_330/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_330/BiasAdd/ReadVariableOp*^while/lstm_cell_330/MatMul/ReadVariableOp,^while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_330_biasadd_readvariableop_resource5while_lstm_cell_330_biasadd_readvariableop_resource_0"n
4while_lstm_cell_330_matmul_1_readvariableop_resource6while_lstm_cell_330_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_330_matmul_readvariableop_resource4while_lstm_cell_330_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_330/BiasAdd/ReadVariableOp*while/lstm_cell_330/BiasAdd/ReadVariableOp2V
)while/lstm_cell_330/MatMul/ReadVariableOp)while/lstm_cell_330/MatMul/ReadVariableOp2Z
+while/lstm_cell_330/MatMul_1/ReadVariableOp+while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_2013599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2013599___redundant_placeholder05
1while_while_cond_2013599___redundant_placeholder15
1while_while_cond_2013599___redundant_placeholder25
1while_while_cond_2013599___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_2009925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2009925___redundant_placeholder05
1while_while_cond_2009925___redundant_placeholder15
1while_while_cond_2009925___redundant_placeholder25
1while_while_cond_2009925___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:

¶
)__inference_lstm_60_layer_call_fn_2012155

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_60_layer_call_and_return_conditional_losses_2010153s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_2012367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2012367___redundant_placeholder05
1while_while_cond_2012367___redundant_placeholder15
1while_while_cond_2012367___redundant_placeholder25
1while_while_cond_2012367___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ÜJ

D__inference_lstm_62_layer_call_and_return_conditional_losses_2010669

inputs>
,lstm_cell_332_matmul_readvariableop_resource:2(@
.lstm_cell_332_matmul_1_readvariableop_resource:
(;
-lstm_cell_332_biasadd_readvariableop_resource:(
identity¢$lstm_cell_332/BiasAdd/ReadVariableOp¢#lstm_cell_332/MatMul/ReadVariableOp¢%lstm_cell_332/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_332/MatMul/ReadVariableOpReadVariableOp,lstm_cell_332_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_332/MatMulMatMulstrided_slice_2:output:0+lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_332_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_332/MatMul_1MatMulzeros:output:0-lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_332/addAddV2lstm_cell_332/MatMul:product:0 lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_332_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_332/BiasAddBiasAddlstm_cell_332/add:z:0,lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_332/splitSplit&lstm_cell_332/split/split_dim:output:0lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_332/SigmoidSigmoidlstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_1Sigmoidlstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_332/mulMullstm_cell_332/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_332/ReluRelulstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_1Mullstm_cell_332/Sigmoid:y:0 lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_332/add_1AddV2lstm_cell_332/mul:z:0lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_332/Sigmoid_2Sigmoidlstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_332/Relu_1Relulstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_332/mul_2Mullstm_cell_332/Sigmoid_2:y:0"lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_332_matmul_readvariableop_resource.lstm_cell_332_matmul_1_readvariableop_resource-lstm_cell_332_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2010585*
condR
while_cond_2010584*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_332/BiasAdd/ReadVariableOp$^lstm_cell_332/MatMul/ReadVariableOp&^lstm_cell_332/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_332/BiasAdd/ReadVariableOp$lstm_cell_332/BiasAdd/ReadVariableOp2J
#lstm_cell_332/MatMul/ReadVariableOp#lstm_cell_332/MatMul/ReadVariableOp2N
%lstm_cell_332/MatMul_1/ReadVariableOp%lstm_cell_332/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2010069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_330_matmul_readvariableop_resource_0:	I
6while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_330_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_330_matmul_readvariableop_resource:	G
4while_lstm_cell_330_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_330_biasadd_readvariableop_resource:	¢*while/lstm_cell_330/BiasAdd/ReadVariableOp¢)while/lstm_cell_330/MatMul/ReadVariableOp¢+while/lstm_cell_330/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_330/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_330/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_330/addAddV2$while/lstm_cell_330/MatMul:product:0&while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_330/BiasAddBiasAddwhile/lstm_cell_330/add:z:02while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_330/splitSplit,while/lstm_cell_330/split/split_dim:output:0$while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_330/SigmoidSigmoid"while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_1Sigmoid"while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mulMul!while/lstm_cell_330/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_330/ReluRelu"while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_1Mulwhile/lstm_cell_330/Sigmoid:y:0&while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/add_1AddV2while/lstm_cell_330/mul:z:0while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_2Sigmoid"while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_330/Relu_1Reluwhile/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_2Mul!while/lstm_cell_330/Sigmoid_2:y:0(while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_330/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_330/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_330/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_330/BiasAdd/ReadVariableOp*^while/lstm_cell_330/MatMul/ReadVariableOp,^while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_330_biasadd_readvariableop_resource5while_lstm_cell_330_biasadd_readvariableop_resource_0"n
4while_lstm_cell_330_matmul_1_readvariableop_resource6while_lstm_cell_330_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_330_matmul_readvariableop_resource4while_lstm_cell_330_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_330/BiasAdd/ReadVariableOp*while/lstm_cell_330/BiasAdd/ReadVariableOp2V
)while/lstm_cell_330/MatMul/ReadVariableOp)while/lstm_cell_330/MatMul/ReadVariableOp2Z
+while/lstm_cell_330/MatMul_1/ReadVariableOp+while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_2013456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2013456___redundant_placeholder05
1while_while_cond_2013456___redundant_placeholder15
1while_while_cond_2013456___redundant_placeholder25
1while_while_cond_2013456___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
½R

(sequential_20_lstm_62_while_body_2008864H
Dsequential_20_lstm_62_while_sequential_20_lstm_62_while_loop_counterN
Jsequential_20_lstm_62_while_sequential_20_lstm_62_while_maximum_iterations+
'sequential_20_lstm_62_while_placeholder-
)sequential_20_lstm_62_while_placeholder_1-
)sequential_20_lstm_62_while_placeholder_2-
)sequential_20_lstm_62_while_placeholder_3G
Csequential_20_lstm_62_while_sequential_20_lstm_62_strided_slice_1_0
sequential_20_lstm_62_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_62_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_20_lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0:2(^
Lsequential_20_lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0:
(Y
Ksequential_20_lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0:((
$sequential_20_lstm_62_while_identity*
&sequential_20_lstm_62_while_identity_1*
&sequential_20_lstm_62_while_identity_2*
&sequential_20_lstm_62_while_identity_3*
&sequential_20_lstm_62_while_identity_4*
&sequential_20_lstm_62_while_identity_5E
Asequential_20_lstm_62_while_sequential_20_lstm_62_strided_slice_1
}sequential_20_lstm_62_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_62_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_20_lstm_62_while_lstm_cell_332_matmul_readvariableop_resource:2(\
Jsequential_20_lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource:
(W
Isequential_20_lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource:(¢@sequential_20/lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp¢?sequential_20/lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp¢Asequential_20/lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp
Msequential_20/lstm_62/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
?sequential_20/lstm_62/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_20_lstm_62_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_62_tensorarrayunstack_tensorlistfromtensor_0'sequential_20_lstm_62_while_placeholderVsequential_20/lstm_62/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Ê
?sequential_20/lstm_62/while/lstm_cell_332/MatMul/ReadVariableOpReadVariableOpJsequential_20_lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ý
0sequential_20/lstm_62/while/lstm_cell_332/MatMulMatMulFsequential_20/lstm_62/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_20/lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Î
Asequential_20/lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOpReadVariableOpLsequential_20_lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ä
2sequential_20/lstm_62/while/lstm_cell_332/MatMul_1MatMul)sequential_20_lstm_62_while_placeholder_2Isequential_20/lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(â
-sequential_20/lstm_62/while/lstm_cell_332/addAddV2:sequential_20/lstm_62/while/lstm_cell_332/MatMul:product:0<sequential_20/lstm_62/while/lstm_cell_332/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(È
@sequential_20/lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOpReadVariableOpKsequential_20_lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_20/lstm_62/while/lstm_cell_332/BiasAddBiasAdd1sequential_20/lstm_62/while/lstm_cell_332/add:z:0Hsequential_20/lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ({
9sequential_20/lstm_62/while/lstm_cell_332/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_20/lstm_62/while/lstm_cell_332/splitSplitBsequential_20/lstm_62/while/lstm_cell_332/split/split_dim:output:0:sequential_20/lstm_62/while/lstm_cell_332/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¨
1sequential_20/lstm_62/while/lstm_cell_332/SigmoidSigmoid8sequential_20/lstm_62/while/lstm_cell_332/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_20/lstm_62/while/lstm_cell_332/Sigmoid_1Sigmoid8sequential_20/lstm_62/while/lstm_cell_332/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
-sequential_20/lstm_62/while/lstm_cell_332/mulMul7sequential_20/lstm_62/while/lstm_cell_332/Sigmoid_1:y:0)sequential_20_lstm_62_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
.sequential_20/lstm_62/while/lstm_cell_332/ReluRelu8sequential_20/lstm_62/while/lstm_cell_332/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
/sequential_20/lstm_62/while/lstm_cell_332/mul_1Mul5sequential_20/lstm_62/while/lstm_cell_332/Sigmoid:y:0<sequential_20/lstm_62/while/lstm_cell_332/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
/sequential_20/lstm_62/while/lstm_cell_332/add_1AddV21sequential_20/lstm_62/while/lstm_cell_332/mul:z:03sequential_20/lstm_62/while/lstm_cell_332/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_20/lstm_62/while/lstm_cell_332/Sigmoid_2Sigmoid8sequential_20/lstm_62/while/lstm_cell_332/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

0sequential_20/lstm_62/while/lstm_cell_332/Relu_1Relu3sequential_20/lstm_62/while/lstm_cell_332/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
/sequential_20/lstm_62/while/lstm_cell_332/mul_2Mul7sequential_20/lstm_62/while/lstm_cell_332/Sigmoid_2:y:0>sequential_20/lstm_62/while/lstm_cell_332/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@sequential_20/lstm_62/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_20_lstm_62_while_placeholder_1'sequential_20_lstm_62_while_placeholder3sequential_20/lstm_62/while/lstm_cell_332/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_20/lstm_62/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_20/lstm_62/while/addAddV2'sequential_20_lstm_62_while_placeholder*sequential_20/lstm_62/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_20/lstm_62/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_20/lstm_62/while/add_1AddV2Dsequential_20_lstm_62_while_sequential_20_lstm_62_while_loop_counter,sequential_20/lstm_62/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_20/lstm_62/while/IdentityIdentity%sequential_20/lstm_62/while/add_1:z:0!^sequential_20/lstm_62/while/NoOp*
T0*
_output_shapes
: Â
&sequential_20/lstm_62/while/Identity_1IdentityJsequential_20_lstm_62_while_sequential_20_lstm_62_while_maximum_iterations!^sequential_20/lstm_62/while/NoOp*
T0*
_output_shapes
: 
&sequential_20/lstm_62/while/Identity_2Identity#sequential_20/lstm_62/while/add:z:0!^sequential_20/lstm_62/while/NoOp*
T0*
_output_shapes
: È
&sequential_20/lstm_62/while/Identity_3IdentityPsequential_20/lstm_62/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_20/lstm_62/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_20/lstm_62/while/Identity_4Identity3sequential_20/lstm_62/while/lstm_cell_332/mul_2:z:0!^sequential_20/lstm_62/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
&sequential_20/lstm_62/while/Identity_5Identity3sequential_20/lstm_62/while/lstm_cell_332/add_1:z:0!^sequential_20/lstm_62/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
«
 sequential_20/lstm_62/while/NoOpNoOpA^sequential_20/lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp@^sequential_20/lstm_62/while/lstm_cell_332/MatMul/ReadVariableOpB^sequential_20/lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_20_lstm_62_while_identity-sequential_20/lstm_62/while/Identity:output:0"Y
&sequential_20_lstm_62_while_identity_1/sequential_20/lstm_62/while/Identity_1:output:0"Y
&sequential_20_lstm_62_while_identity_2/sequential_20/lstm_62/while/Identity_2:output:0"Y
&sequential_20_lstm_62_while_identity_3/sequential_20/lstm_62/while/Identity_3:output:0"Y
&sequential_20_lstm_62_while_identity_4/sequential_20/lstm_62/while/Identity_4:output:0"Y
&sequential_20_lstm_62_while_identity_5/sequential_20/lstm_62/while/Identity_5:output:0"
Isequential_20_lstm_62_while_lstm_cell_332_biasadd_readvariableop_resourceKsequential_20_lstm_62_while_lstm_cell_332_biasadd_readvariableop_resource_0"
Jsequential_20_lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resourceLsequential_20_lstm_62_while_lstm_cell_332_matmul_1_readvariableop_resource_0"
Hsequential_20_lstm_62_while_lstm_cell_332_matmul_readvariableop_resourceJsequential_20_lstm_62_while_lstm_cell_332_matmul_readvariableop_resource_0"
Asequential_20_lstm_62_while_sequential_20_lstm_62_strided_slice_1Csequential_20_lstm_62_while_sequential_20_lstm_62_strided_slice_1_0"
}sequential_20_lstm_62_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_62_tensorarrayunstack_tensorlistfromtensorsequential_20_lstm_62_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_62_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2
@sequential_20/lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp@sequential_20/lstm_62/while/lstm_cell_332/BiasAdd/ReadVariableOp2
?sequential_20/lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp?sequential_20/lstm_62/while/lstm_cell_332/MatMul/ReadVariableOp2
Asequential_20/lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOpAsequential_20/lstm_62/while/lstm_cell_332/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
áJ
¢
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010303

inputs?
,lstm_cell_331_matmul_readvariableop_resource:	dÈA
.lstm_cell_331_matmul_1_readvariableop_resource:	2È<
-lstm_cell_331_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_331/BiasAdd/ReadVariableOp¢#lstm_cell_331/MatMul/ReadVariableOp¢%lstm_cell_331/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_331/MatMul/ReadVariableOpReadVariableOp,lstm_cell_331_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_331/MatMulMatMulstrided_slice_2:output:0+lstm_cell_331/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_331/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_331_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_331/MatMul_1MatMulzeros:output:0-lstm_cell_331/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_331/addAddV2lstm_cell_331/MatMul:product:0 lstm_cell_331/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_331/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_331_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_331/BiasAddBiasAddlstm_cell_331/add:z:0,lstm_cell_331/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_331/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_331/splitSplit&lstm_cell_331/split/split_dim:output:0lstm_cell_331/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_331/SigmoidSigmoidlstm_cell_331/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_1Sigmoidlstm_cell_331/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_331/mulMullstm_cell_331/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_331/ReluRelulstm_cell_331/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_1Mullstm_cell_331/Sigmoid:y:0 lstm_cell_331/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_331/add_1AddV2lstm_cell_331/mul:z:0lstm_cell_331/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_331/Sigmoid_2Sigmoidlstm_cell_331/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_331/Relu_1Relulstm_cell_331/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_331/mul_2Mullstm_cell_331/Sigmoid_2:y:0"lstm_cell_331/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_331_matmul_readvariableop_resource.lstm_cell_331_matmul_1_readvariableop_resource-lstm_cell_331_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2010219*
condR
while_cond_2010218*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_331/BiasAdd/ReadVariableOp$^lstm_cell_331/MatMul/ReadVariableOp&^lstm_cell_331/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_331/BiasAdd/ReadVariableOp$lstm_cell_331/BiasAdd/ReadVariableOp2J
#lstm_cell_331/MatMul/ReadVariableOp#lstm_cell_331/MatMul/ReadVariableOp2N
%lstm_cell_331/MatMul_1/ReadVariableOp%lstm_cell_331/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Í

J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009867

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
®8

D__inference_lstm_61_layer_call_and_return_conditional_losses_2009645

inputs(
lstm_cell_331_2009563:	dÈ(
lstm_cell_331_2009565:	2È$
lstm_cell_331_2009567:	È
identity¢%lstm_cell_331/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskþ
%lstm_cell_331/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_331_2009563lstm_cell_331_2009565lstm_cell_331_2009567*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2009517n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_331_2009563lstm_cell_331_2009565lstm_cell_331_2009567*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2009576*
condR
while_cond_2009575*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2v
NoOpNoOp&^lstm_cell_331/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_331/StatefulPartitionedCall%lstm_cell_331/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
B
Ú

lstm_60_while_body_2011327,
(lstm_60_while_lstm_60_while_loop_counter2
.lstm_60_while_lstm_60_while_maximum_iterations
lstm_60_while_placeholder
lstm_60_while_placeholder_1
lstm_60_while_placeholder_2
lstm_60_while_placeholder_3+
'lstm_60_while_lstm_60_strided_slice_1_0g
clstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0:	Q
>lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dL
=lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0:	
lstm_60_while_identity
lstm_60_while_identity_1
lstm_60_while_identity_2
lstm_60_while_identity_3
lstm_60_while_identity_4
lstm_60_while_identity_5)
%lstm_60_while_lstm_60_strided_slice_1e
alstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensorM
:lstm_60_while_lstm_cell_330_matmul_readvariableop_resource:	O
<lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource:	dJ
;lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource:	¢2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp¢1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp¢3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp
?lstm_60/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_60/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensor_0lstm_60_while_placeholderHlstm_60/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp<lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_60/while/lstm_cell_330/MatMulMatMul8lstm_60/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp>lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_60/while/lstm_cell_330/MatMul_1MatMullstm_60_while_placeholder_2;lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_60/while/lstm_cell_330/addAddV2,lstm_60/while/lstm_cell_330/MatMul:product:0.lstm_60/while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp=lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_60/while/lstm_cell_330/BiasAddBiasAdd#lstm_60/while/lstm_cell_330/add:z:0:lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_60/while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_60/while/lstm_cell_330/splitSplit4lstm_60/while/lstm_cell_330/split/split_dim:output:0,lstm_60/while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_60/while/lstm_cell_330/SigmoidSigmoid*lstm_60/while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_60/while/lstm_cell_330/Sigmoid_1Sigmoid*lstm_60/while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_60/while/lstm_cell_330/mulMul)lstm_60/while/lstm_cell_330/Sigmoid_1:y:0lstm_60_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_60/while/lstm_cell_330/ReluRelu*lstm_60/while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_60/while/lstm_cell_330/mul_1Mul'lstm_60/while/lstm_cell_330/Sigmoid:y:0.lstm_60/while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_60/while/lstm_cell_330/add_1AddV2#lstm_60/while/lstm_cell_330/mul:z:0%lstm_60/while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_60/while/lstm_cell_330/Sigmoid_2Sigmoid*lstm_60/while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_60/while/lstm_cell_330/Relu_1Relu%lstm_60/while/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_60/while/lstm_cell_330/mul_2Mul)lstm_60/while/lstm_cell_330/Sigmoid_2:y:00lstm_60/while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_60/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_60_while_placeholder_1lstm_60_while_placeholder%lstm_60/while/lstm_cell_330/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_60/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_60/while/addAddV2lstm_60_while_placeholderlstm_60/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_60/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_60/while/add_1AddV2(lstm_60_while_lstm_60_while_loop_counterlstm_60/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_60/while/IdentityIdentitylstm_60/while/add_1:z:0^lstm_60/while/NoOp*
T0*
_output_shapes
: 
lstm_60/while/Identity_1Identity.lstm_60_while_lstm_60_while_maximum_iterations^lstm_60/while/NoOp*
T0*
_output_shapes
: q
lstm_60/while/Identity_2Identitylstm_60/while/add:z:0^lstm_60/while/NoOp*
T0*
_output_shapes
: 
lstm_60/while/Identity_3IdentityBlstm_60/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_60/while/NoOp*
T0*
_output_shapes
: 
lstm_60/while/Identity_4Identity%lstm_60/while/lstm_cell_330/mul_2:z:0^lstm_60/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_60/while/Identity_5Identity%lstm_60/while/lstm_cell_330/add_1:z:0^lstm_60/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_60/while/NoOpNoOp3^lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2^lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp4^lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_60_while_identitylstm_60/while/Identity:output:0"=
lstm_60_while_identity_1!lstm_60/while/Identity_1:output:0"=
lstm_60_while_identity_2!lstm_60/while/Identity_2:output:0"=
lstm_60_while_identity_3!lstm_60/while/Identity_3:output:0"=
lstm_60_while_identity_4!lstm_60/while/Identity_4:output:0"=
lstm_60_while_identity_5!lstm_60/while/Identity_5:output:0"P
%lstm_60_while_lstm_60_strided_slice_1'lstm_60_while_lstm_60_strided_slice_1_0"|
;lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource=lstm_60_while_lstm_cell_330_biasadd_readvariableop_resource_0"~
<lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource>lstm_60_while_lstm_cell_330_matmul_1_readvariableop_resource_0"z
:lstm_60_while_lstm_cell_330_matmul_readvariableop_resource<lstm_60_while_lstm_cell_330_matmul_readvariableop_resource_0"È
alstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensorclstm_60_while_tensorarrayv2read_tensorlistgetitem_lstm_60_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2lstm_60/while/lstm_cell_330/BiasAdd/ReadVariableOp2f
1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp1lstm_60/while/lstm_cell_330/MatMul/ReadVariableOp2j
3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp3lstm_60/while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
áJ
¢
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012595

inputs?
,lstm_cell_330_matmul_readvariableop_resource:	A
.lstm_cell_330_matmul_1_readvariableop_resource:	d<
-lstm_cell_330_biasadd_readvariableop_resource:	
identity¢$lstm_cell_330/BiasAdd/ReadVariableOp¢#lstm_cell_330/MatMul/ReadVariableOp¢%lstm_cell_330/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_330/MatMul/ReadVariableOpReadVariableOp,lstm_cell_330_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_330/MatMulMatMulstrided_slice_2:output:0+lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_330_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_330/MatMul_1MatMulzeros:output:0-lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_330/addAddV2lstm_cell_330/MatMul:product:0 lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_330_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_330/BiasAddBiasAddlstm_cell_330/add:z:0,lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_330/splitSplit&lstm_cell_330/split/split_dim:output:0lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_330/SigmoidSigmoidlstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_1Sigmoidlstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_330/mulMullstm_cell_330/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_330/ReluRelulstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_1Mullstm_cell_330/Sigmoid:y:0 lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_330/add_1AddV2lstm_cell_330/mul:z:0lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_330/Sigmoid_2Sigmoidlstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_330/Relu_1Relulstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_330/mul_2Mullstm_cell_330/Sigmoid_2:y:0"lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_330_matmul_readvariableop_resource.lstm_cell_330_matmul_1_readvariableop_resource-lstm_cell_330_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2012511*
condR
while_cond_2012510*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_330/BiasAdd/ReadVariableOp$^lstm_cell_330/MatMul/ReadVariableOp&^lstm_cell_330/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_330/BiasAdd/ReadVariableOp$lstm_cell_330/BiasAdd/ReadVariableOp2J
#lstm_cell_330/MatMul/ReadVariableOp#lstm_cell_330/MatMul/ReadVariableOp2N
%lstm_cell_330/MatMul_1/ReadVariableOp%lstm_cell_330/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§8

D__inference_lstm_62_layer_call_and_return_conditional_losses_2009995

inputs'
lstm_cell_332_2009913:2('
lstm_cell_332_2009915:
(#
lstm_cell_332_2009917:(
identity¢%lstm_cell_332/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskþ
%lstm_cell_332/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_332_2009913lstm_cell_332_2009915lstm_cell_332_2009917*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009867n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_332_2009913lstm_cell_332_2009915lstm_cell_332_2009917*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2009926*
condR
while_cond_2009925*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
v
NoOpNoOp&^lstm_cell_332/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_332/StatefulPartitionedCall%lstm_cell_332/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


è
lstm_62_while_cond_2011604,
(lstm_62_while_lstm_62_while_loop_counter2
.lstm_62_while_lstm_62_while_maximum_iterations
lstm_62_while_placeholder
lstm_62_while_placeholder_1
lstm_62_while_placeholder_2
lstm_62_while_placeholder_3.
*lstm_62_while_less_lstm_62_strided_slice_1E
Alstm_62_while_lstm_62_while_cond_2011604___redundant_placeholder0E
Alstm_62_while_lstm_62_while_cond_2011604___redundant_placeholder1E
Alstm_62_while_lstm_62_while_cond_2011604___redundant_placeholder2E
Alstm_62_while_lstm_62_while_cond_2011604___redundant_placeholder3
lstm_62_while_identity

lstm_62/while/LessLesslstm_62_while_placeholder*lstm_62_while_less_lstm_62_strided_slice_1*
T0*
_output_shapes
: [
lstm_62/while/IdentityIdentitylstm_62/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_62_while_identitylstm_62/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_2012225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_330_matmul_readvariableop_resource_0:	I
6while_lstm_cell_330_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_330_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_330_matmul_readvariableop_resource:	G
4while_lstm_cell_330_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_330_biasadd_readvariableop_resource:	¢*while/lstm_cell_330/BiasAdd/ReadVariableOp¢)while/lstm_cell_330/MatMul/ReadVariableOp¢+while/lstm_cell_330/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_330/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_330_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_330/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_330/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_330/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_330_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_330/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_330/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_330/addAddV2$while/lstm_cell_330/MatMul:product:0&while/lstm_cell_330/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_330/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_330_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_330/BiasAddBiasAddwhile/lstm_cell_330/add:z:02while/lstm_cell_330/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_330/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_330/splitSplit,while/lstm_cell_330/split/split_dim:output:0$while/lstm_cell_330/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_330/SigmoidSigmoid"while/lstm_cell_330/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_1Sigmoid"while/lstm_cell_330/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mulMul!while/lstm_cell_330/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_330/ReluRelu"while/lstm_cell_330/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_1Mulwhile/lstm_cell_330/Sigmoid:y:0&while/lstm_cell_330/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/add_1AddV2while/lstm_cell_330/mul:z:0while/lstm_cell_330/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_330/Sigmoid_2Sigmoid"while/lstm_cell_330/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_330/Relu_1Reluwhile/lstm_cell_330/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_330/mul_2Mul!while/lstm_cell_330/Sigmoid_2:y:0(while/lstm_cell_330/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_330/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_330/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_330/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_330/BiasAdd/ReadVariableOp*^while/lstm_cell_330/MatMul/ReadVariableOp,^while/lstm_cell_330/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_330_biasadd_readvariableop_resource5while_lstm_cell_330_biasadd_readvariableop_resource_0"n
4while_lstm_cell_330_matmul_1_readvariableop_resource6while_lstm_cell_330_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_330_matmul_readvariableop_resource4while_lstm_cell_330_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_330/BiasAdd/ReadVariableOp*while/lstm_cell_330/BiasAdd/ReadVariableOp2V
)while/lstm_cell_330/MatMul/ReadVariableOp)while/lstm_cell_330/MatMul/ReadVariableOp2Z
+while/lstm_cell_330/MatMul_1/ReadVariableOp+while/lstm_cell_330/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
Ü


/__inference_sequential_20_layer_call_fn_2011241

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
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_2010478o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®8

D__inference_lstm_60_layer_call_and_return_conditional_losses_2009104

inputs(
lstm_cell_330_2009022:	(
lstm_cell_330_2009024:	d$
lstm_cell_330_2009026:	
identity¢%lstm_cell_330/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskþ
%lstm_cell_330/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_330_2009022lstm_cell_330_2009024lstm_cell_330_2009026*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009021n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_330_2009022lstm_cell_330_2009024lstm_cell_330_2009026*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2009035*
condR
while_cond_2009034*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdv
NoOpNoOp&^lstm_cell_330/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_330/StatefulPartitionedCall%lstm_cell_330/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2009721

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
È	
ö
E__inference_dense_20_layer_call_and_return_conditional_losses_2013989

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs

¶
)__inference_lstm_61_layer_call_fn_2012782

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_61_layer_call_and_return_conditional_losses_2010834s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
®8

D__inference_lstm_60_layer_call_and_return_conditional_losses_2009295

inputs(
lstm_cell_330_2009213:	(
lstm_cell_330_2009215:	d$
lstm_cell_330_2009217:	
identity¢%lstm_cell_330/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskþ
%lstm_cell_330/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_330_2009213lstm_cell_330_2009215lstm_cell_330_2009217*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2009167n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_330_2009213lstm_cell_330_2009215lstm_cell_330_2009217*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2009226*
condR
while_cond_2009225*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdv
NoOpNoOp&^lstm_cell_330/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_330/StatefulPartitionedCall%lstm_cell_330/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_60_input:
serving_default_lstm_60_input:0ÿÿÿÿÿÿÿÿÿ<
dense_200
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ñ
ª
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
¼

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
¼

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
¼

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
2dense_20/kernel
:2dense_20/bias
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
.:,	2lstm_60/lstm_cell_60/kernel
8:6	d2%lstm_60/lstm_cell_60/recurrent_kernel
(:&2lstm_60/lstm_cell_60/bias
.:,	dÈ2lstm_61/lstm_cell_61/kernel
8:6	2È2%lstm_61/lstm_cell_61/recurrent_kernel
(:&È2lstm_61/lstm_cell_61/bias
-:+2(2lstm_62/lstm_cell_62/kernel
7:5
(2%lstm_62/lstm_cell_62/recurrent_kernel
':%(2lstm_62/lstm_cell_62/bias
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
2Adam/dense_20/kernel/m
 :2Adam/dense_20/bias/m
3:1	2"Adam/lstm_60/lstm_cell_60/kernel/m
=:;	d2,Adam/lstm_60/lstm_cell_60/recurrent_kernel/m
-:+2 Adam/lstm_60/lstm_cell_60/bias/m
3:1	dÈ2"Adam/lstm_61/lstm_cell_61/kernel/m
=:;	2È2,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m
-:+È2 Adam/lstm_61/lstm_cell_61/bias/m
2:02(2"Adam/lstm_62/lstm_cell_62/kernel/m
<::
(2,Adam/lstm_62/lstm_cell_62/recurrent_kernel/m
,:*(2 Adam/lstm_62/lstm_cell_62/bias/m
&:$
2Adam/dense_20/kernel/v
 :2Adam/dense_20/bias/v
3:1	2"Adam/lstm_60/lstm_cell_60/kernel/v
=:;	d2,Adam/lstm_60/lstm_cell_60/recurrent_kernel/v
-:+2 Adam/lstm_60/lstm_cell_60/bias/v
3:1	dÈ2"Adam/lstm_61/lstm_cell_61/kernel/v
=:;	2È2,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v
-:+È2 Adam/lstm_61/lstm_cell_61/bias/v
2:02(2"Adam/lstm_62/lstm_cell_62/kernel/v
<::
(2,Adam/lstm_62/lstm_cell_62/recurrent_kernel/v
,:*(2 Adam/lstm_62/lstm_cell_62/bias/v
2
/__inference_sequential_20_layer_call_fn_2010503
/__inference_sequential_20_layer_call_fn_2011241
/__inference_sequential_20_layer_call_fn_2011268
/__inference_sequential_20_layer_call_fn_2011119À
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
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011695
J__inference_sequential_20_layer_call_and_return_conditional_losses_2012122
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011149
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011179À
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
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
"__inference__wrapped_model_2008954lstm_60_input"
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
annotationsª *
 
2
)__inference_lstm_60_layer_call_fn_2012133
)__inference_lstm_60_layer_call_fn_2012144
)__inference_lstm_60_layer_call_fn_2012155
)__inference_lstm_60_layer_call_fn_2012166Õ
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
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012309
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012452
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012595
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012738Õ
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
kwonlydefaultsª 
annotationsª *
 
2
)__inference_lstm_61_layer_call_fn_2012749
)__inference_lstm_61_layer_call_fn_2012760
)__inference_lstm_61_layer_call_fn_2012771
)__inference_lstm_61_layer_call_fn_2012782Õ
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
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_61_layer_call_and_return_conditional_losses_2012925
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013068
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013211
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013354Õ
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
kwonlydefaultsª 
annotationsª *
 
2
)__inference_lstm_62_layer_call_fn_2013365
)__inference_lstm_62_layer_call_fn_2013376
)__inference_lstm_62_layer_call_fn_2013387
)__inference_lstm_62_layer_call_fn_2013398Õ
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
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013541
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013684
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013827
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013970Õ
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
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_dense_20_layer_call_fn_2013979¢
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
annotationsª *
 
ï2ì
E__inference_dense_20_layer_call_and_return_conditional_losses_2013989¢
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
annotationsª *
 
ÒBÏ
%__inference_signature_wrapper_2011214lstm_60_input"
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
annotationsª *
 
¦2£
/__inference_lstm_cell_330_layer_call_fn_2014006
/__inference_lstm_cell_330_layer_call_fn_2014023¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2014055
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2014087¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
¦2£
/__inference_lstm_cell_331_layer_call_fn_2014104
/__inference_lstm_cell_331_layer_call_fn_2014121¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2014153
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2014185¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
¦2£
/__inference_lstm_cell_332_layer_call_fn_2014202
/__inference_lstm_cell_332_layer_call_fn_2014219¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2014251
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2014283¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 ¤
"__inference__wrapped_model_2008954~-./012345!":¢7
0¢-
+(
lstm_60_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_20"
dense_20ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_20_layer_call_and_return_conditional_losses_2013989\!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_20_layer_call_fn_2013979O!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÓ
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012309-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 Ó
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012452-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 ¹
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012595q-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 ¹
D__inference_lstm_60_layer_call_and_return_conditional_losses_2012738q-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 ª
)__inference_lstm_60_layer_call_fn_2012133}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdª
)__inference_lstm_60_layer_call_fn_2012144}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
)__inference_lstm_60_layer_call_fn_2012155d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_60_layer_call_fn_2012166d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_61_layer_call_and_return_conditional_losses_2012925012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 Ó
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013068012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 ¹
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013211q012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ¹
D__inference_lstm_61_layer_call_and_return_conditional_losses_2013354q012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ª
)__inference_lstm_61_layer_call_fn_2012749}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2ª
)__inference_lstm_61_layer_call_fn_2012760}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_61_layer_call_fn_2012771d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_61_layer_call_fn_2012782d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Å
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013541}345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Å
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013684}345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013827m345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
D__inference_lstm_62_layer_call_and_return_conditional_losses_2013970m345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
)__inference_lstm_62_layer_call_fn_2013365p345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_lstm_62_layer_call_fn_2013376p345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_lstm_62_layer_call_fn_2013387`345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_lstm_62_layer_call_fn_2013398`345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Ì
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2014055ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 Ì
J__inference_lstm_cell_330_layer_call_and_return_conditional_losses_2014087ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 ¡
/__inference_lstm_cell_330_layer_call_fn_2014006í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿd¡
/__inference_lstm_cell_330_layer_call_fn_2014023í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿdÌ
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2014153ý012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 Ì
J__inference_lstm_cell_331_layer_call_and_return_conditional_losses_2014185ý012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 ¡
/__inference_lstm_cell_331_layer_call_fn_2014104í012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2¡
/__inference_lstm_cell_331_layer_call_fn_2014121í012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2Ì
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2014251ý345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ

EB

0/1/0ÿÿÿÿÿÿÿÿÿ


0/1/1ÿÿÿÿÿÿÿÿÿ

 Ì
J__inference_lstm_cell_332_layer_call_and_return_conditional_losses_2014283ý345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ

EB

0/1/0ÿÿÿÿÿÿÿÿÿ


0/1/1ÿÿÿÿÿÿÿÿÿ

 ¡
/__inference_lstm_cell_332_layer_call_fn_2014202í345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ

A>

1/0ÿÿÿÿÿÿÿÿÿ


1/1ÿÿÿÿÿÿÿÿÿ
¡
/__inference_lstm_cell_332_layer_call_fn_2014219í345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ

A>

1/0ÿÿÿÿÿÿÿÿÿ


1/1ÿÿÿÿÿÿÿÿÿ
Æ
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011149x-./012345!"B¢?
8¢5
+(
lstm_60_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011179x-./012345!"B¢?
8¢5
+(
lstm_60_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_20_layer_call_and_return_conditional_losses_2011695q-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_20_layer_call_and_return_conditional_losses_2012122q-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_20_layer_call_fn_2010503k-./012345!"B¢?
8¢5
+(
lstm_60_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_20_layer_call_fn_2011119k-./012345!"B¢?
8¢5
+(
lstm_60_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_20_layer_call_fn_2011241d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_20_layer_call_fn_2011268d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
%__inference_signature_wrapper_2011214-./012345!"K¢H
¢ 
Aª>
<
lstm_60_input+(
lstm_60_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_20"
dense_20ÿÿÿÿÿÿÿÿÿ