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
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:
*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
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
lstm_78/lstm_cell_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_78/lstm_cell_78/kernel

/lstm_78/lstm_cell_78/kernel/Read/ReadVariableOpReadVariableOplstm_78/lstm_cell_78/kernel*
_output_shapes
:	*
dtype0
§
%lstm_78/lstm_cell_78/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_78/lstm_cell_78/recurrent_kernel
 
9lstm_78/lstm_cell_78/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_78/lstm_cell_78/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_78/lstm_cell_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_78/lstm_cell_78/bias

-lstm_78/lstm_cell_78/bias/Read/ReadVariableOpReadVariableOplstm_78/lstm_cell_78/bias*
_output_shapes	
:*
dtype0

lstm_79/lstm_cell_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_79/lstm_cell_79/kernel

/lstm_79/lstm_cell_79/kernel/Read/ReadVariableOpReadVariableOplstm_79/lstm_cell_79/kernel*
_output_shapes
:	dÈ*
dtype0
§
%lstm_79/lstm_cell_79/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_79/lstm_cell_79/recurrent_kernel
 
9lstm_79/lstm_cell_79/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_79/lstm_cell_79/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_79/lstm_cell_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_79/lstm_cell_79/bias

-lstm_79/lstm_cell_79/bias/Read/ReadVariableOpReadVariableOplstm_79/lstm_cell_79/bias*
_output_shapes	
:È*
dtype0

lstm_80/lstm_cell_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_80/lstm_cell_80/kernel

/lstm_80/lstm_cell_80/kernel/Read/ReadVariableOpReadVariableOplstm_80/lstm_cell_80/kernel*
_output_shapes

:2(*
dtype0
¦
%lstm_80/lstm_cell_80/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_80/lstm_cell_80/recurrent_kernel

9lstm_80/lstm_cell_80/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_80/lstm_cell_80/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_80/lstm_cell_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_80/lstm_cell_80/bias

-lstm_80/lstm_cell_80/bias/Read/ReadVariableOpReadVariableOplstm_80/lstm_cell_80/bias*
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
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_26/kernel/m

*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_78/lstm_cell_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_78/lstm_cell_78/kernel/m

6Adam/lstm_78/lstm_cell_78/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_78/lstm_cell_78/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_78/lstm_cell_78/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m
®
@Adam/lstm_78/lstm_cell_78/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_78/lstm_cell_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_78/lstm_cell_78/bias/m

4Adam/lstm_78/lstm_cell_78/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_78/lstm_cell_78/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_79/lstm_cell_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_79/lstm_cell_79/kernel/m

6Adam/lstm_79/lstm_cell_79/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_79/lstm_cell_79/kernel/m*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_79/lstm_cell_79/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m
®
@Adam/lstm_79/lstm_cell_79/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

 Adam/lstm_79/lstm_cell_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_79/lstm_cell_79/bias/m

4Adam/lstm_79/lstm_cell_79/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_79/lstm_cell_79/bias/m*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_80/lstm_cell_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_80/lstm_cell_80/kernel/m

6Adam/lstm_80/lstm_cell_80/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_80/lstm_cell_80/kernel/m*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_80/lstm_cell_80/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m
­
@Adam/lstm_80/lstm_cell_80/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Adam/lstm_80/lstm_cell_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_80/lstm_cell_80/bias/m

4Adam/lstm_80/lstm_cell_80/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_80/lstm_cell_80/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_26/kernel/v

*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_78/lstm_cell_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_78/lstm_cell_78/kernel/v

6Adam/lstm_78/lstm_cell_78/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_78/lstm_cell_78/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_78/lstm_cell_78/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v
®
@Adam/lstm_78/lstm_cell_78/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_78/lstm_cell_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_78/lstm_cell_78/bias/v

4Adam/lstm_78/lstm_cell_78/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_78/lstm_cell_78/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_79/lstm_cell_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_79/lstm_cell_79/kernel/v

6Adam/lstm_79/lstm_cell_79/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_79/lstm_cell_79/kernel/v*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_79/lstm_cell_79/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v
®
@Adam/lstm_79/lstm_cell_79/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

 Adam/lstm_79/lstm_cell_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_79/lstm_cell_79/bias/v

4Adam/lstm_79/lstm_cell_79/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_79/lstm_cell_79/bias/v*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_80/lstm_cell_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_80/lstm_cell_80/kernel/v

6Adam/lstm_80/lstm_cell_80/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_80/lstm_cell_80/kernel/v*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_80/lstm_cell_80/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v
­
@Adam/lstm_80/lstm_cell_80/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Adam/lstm_80/lstm_cell_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_80/lstm_cell_80/bias/v

4Adam/lstm_80/lstm_cell_80/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_80/lstm_cell_80/bias/v*
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
VARIABLE_VALUEdense_26/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_78/lstm_cell_78/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_78/lstm_cell_78/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_78/lstm_cell_78/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_79/lstm_cell_79/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_79/lstm_cell_79/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_79/lstm_cell_79/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_80/lstm_cell_80/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_80/lstm_cell_80/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_80/lstm_cell_80/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_78/lstm_cell_78/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_78/lstm_cell_78/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_78/lstm_cell_78/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_79/lstm_cell_79/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_79/lstm_cell_79/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_79/lstm_cell_79/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_80/lstm_cell_80/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_80/lstm_cell_80/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_80/lstm_cell_80/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_78/lstm_cell_78/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_78/lstm_cell_78/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_78/lstm_cell_78/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_79/lstm_cell_79/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_79/lstm_cell_79/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_79/lstm_cell_79/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_80/lstm_cell_80/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_80/lstm_cell_80/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_80/lstm_cell_80/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_78_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_78_inputlstm_78/lstm_cell_78/kernel%lstm_78/lstm_cell_78/recurrent_kernellstm_78/lstm_cell_78/biaslstm_79/lstm_cell_79/kernel%lstm_79/lstm_cell_79/recurrent_kernellstm_79/lstm_cell_79/biaslstm_80/lstm_cell_80/kernel%lstm_80/lstm_cell_80/recurrent_kernellstm_80/lstm_cell_80/biasdense_26/kerneldense_26/bias*
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
%__inference_signature_wrapper_2915669
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_78/lstm_cell_78/kernel/Read/ReadVariableOp9lstm_78/lstm_cell_78/recurrent_kernel/Read/ReadVariableOp-lstm_78/lstm_cell_78/bias/Read/ReadVariableOp/lstm_79/lstm_cell_79/kernel/Read/ReadVariableOp9lstm_79/lstm_cell_79/recurrent_kernel/Read/ReadVariableOp-lstm_79/lstm_cell_79/bias/Read/ReadVariableOp/lstm_80/lstm_cell_80/kernel/Read/ReadVariableOp9lstm_80/lstm_cell_80/recurrent_kernel/Read/ReadVariableOp-lstm_80/lstm_cell_80/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp6Adam/lstm_78/lstm_cell_78/kernel/m/Read/ReadVariableOp@Adam/lstm_78/lstm_cell_78/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_78/lstm_cell_78/bias/m/Read/ReadVariableOp6Adam/lstm_79/lstm_cell_79/kernel/m/Read/ReadVariableOp@Adam/lstm_79/lstm_cell_79/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_79/lstm_cell_79/bias/m/Read/ReadVariableOp6Adam/lstm_80/lstm_cell_80/kernel/m/Read/ReadVariableOp@Adam/lstm_80/lstm_cell_80/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_80/lstm_cell_80/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp6Adam/lstm_78/lstm_cell_78/kernel/v/Read/ReadVariableOp@Adam/lstm_78/lstm_cell_78/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_78/lstm_cell_78/bias/v/Read/ReadVariableOp6Adam/lstm_79/lstm_cell_79/kernel/v/Read/ReadVariableOp@Adam/lstm_79/lstm_cell_79/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_79/lstm_cell_79/bias/v/Read/ReadVariableOp6Adam/lstm_80/lstm_cell_80/kernel/v/Read/ReadVariableOp@Adam/lstm_80/lstm_cell_80/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_80/lstm_cell_80/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2918881
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_26/kerneldense_26/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_78/lstm_cell_78/kernel%lstm_78/lstm_cell_78/recurrent_kernellstm_78/lstm_cell_78/biaslstm_79/lstm_cell_79/kernel%lstm_79/lstm_cell_79/recurrent_kernellstm_79/lstm_cell_79/biaslstm_80/lstm_cell_80/kernel%lstm_80/lstm_cell_80/recurrent_kernellstm_80/lstm_cell_80/biastotalcountAdam/dense_26/kernel/mAdam/dense_26/bias/m"Adam/lstm_78/lstm_cell_78/kernel/m,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m Adam/lstm_78/lstm_cell_78/bias/m"Adam/lstm_79/lstm_cell_79/kernel/m,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m Adam/lstm_79/lstm_cell_79/bias/m"Adam/lstm_80/lstm_cell_80/kernel/m,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m Adam/lstm_80/lstm_cell_80/bias/mAdam/dense_26/kernel/vAdam/dense_26/bias/v"Adam/lstm_78/lstm_cell_78/kernel/v,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v Adam/lstm_78/lstm_cell_78/bias/v"Adam/lstm_79/lstm_cell_79/kernel/v,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v Adam/lstm_79/lstm_cell_79/bias/v"Adam/lstm_80/lstm_cell_80/kernel/v,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v Adam/lstm_80/lstm_cell_80/bias/v*4
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
#__inference__traced_restore_2919011Ú+
º
È
while_cond_2914823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2914823___redundant_placeholder05
1while_while_cond_2914823___redundant_placeholder15
1while_while_cond_2914823___redundant_placeholder25
1while_while_cond_2914823___redundant_placeholder3
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
ß

J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2918640

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
®8

D__inference_lstm_79_layer_call_and_return_conditional_losses_2914100

inputs(
lstm_cell_481_2914018:	dÈ(
lstm_cell_481_2914020:	2È$
lstm_cell_481_2914022:	È
identity¢%lstm_cell_481/StatefulPartitionedCall¢while;
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
%lstm_cell_481/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_481_2914018lstm_cell_481_2914020lstm_cell_481_2914022*
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913972n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_481_2914018lstm_cell_481_2914020lstm_cell_481_2914022*
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
while_body_2914031*
condR
while_cond_2914030*K
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
NoOpNoOp&^lstm_cell_481/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_481/StatefulPartitionedCall%lstm_cell_481/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_2915204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2915204___redundant_placeholder05
1while_while_cond_2915204___redundant_placeholder15
1while_while_cond_2915204___redundant_placeholder25
1while_while_cond_2915204___redundant_placeholder3
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
Ý³
¾
"__inference__wrapped_model_2913409
lstm_78_inputU
Bsequential_26_lstm_78_lstm_cell_480_matmul_readvariableop_resource:	W
Dsequential_26_lstm_78_lstm_cell_480_matmul_1_readvariableop_resource:	dR
Csequential_26_lstm_78_lstm_cell_480_biasadd_readvariableop_resource:	U
Bsequential_26_lstm_79_lstm_cell_481_matmul_readvariableop_resource:	dÈW
Dsequential_26_lstm_79_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈR
Csequential_26_lstm_79_lstm_cell_481_biasadd_readvariableop_resource:	ÈT
Bsequential_26_lstm_80_lstm_cell_482_matmul_readvariableop_resource:2(V
Dsequential_26_lstm_80_lstm_cell_482_matmul_1_readvariableop_resource:
(Q
Csequential_26_lstm_80_lstm_cell_482_biasadd_readvariableop_resource:(G
5sequential_26_dense_26_matmul_readvariableop_resource:
D
6sequential_26_dense_26_biasadd_readvariableop_resource:
identity¢-sequential_26/dense_26/BiasAdd/ReadVariableOp¢,sequential_26/dense_26/MatMul/ReadVariableOp¢:sequential_26/lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp¢9sequential_26/lstm_78/lstm_cell_480/MatMul/ReadVariableOp¢;sequential_26/lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp¢sequential_26/lstm_78/while¢:sequential_26/lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp¢9sequential_26/lstm_79/lstm_cell_481/MatMul/ReadVariableOp¢;sequential_26/lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp¢sequential_26/lstm_79/while¢:sequential_26/lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp¢9sequential_26/lstm_80/lstm_cell_482/MatMul/ReadVariableOp¢;sequential_26/lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp¢sequential_26/lstm_80/whileX
sequential_26/lstm_78/ShapeShapelstm_78_input*
T0*
_output_shapes
:s
)sequential_26/lstm_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_26/lstm_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_26/lstm_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_26/lstm_78/strided_sliceStridedSlice$sequential_26/lstm_78/Shape:output:02sequential_26/lstm_78/strided_slice/stack:output:04sequential_26/lstm_78/strided_slice/stack_1:output:04sequential_26/lstm_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_26/lstm_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_26/lstm_78/zeros/packedPack,sequential_26/lstm_78/strided_slice:output:0-sequential_26/lstm_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_26/lstm_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_26/lstm_78/zerosFill+sequential_26/lstm_78/zeros/packed:output:0*sequential_26/lstm_78/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_26/lstm_78/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_26/lstm_78/zeros_1/packedPack,sequential_26/lstm_78/strided_slice:output:0/sequential_26/lstm_78/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_26/lstm_78/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_26/lstm_78/zeros_1Fill-sequential_26/lstm_78/zeros_1/packed:output:0,sequential_26/lstm_78/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_26/lstm_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_26/lstm_78/transpose	Transposelstm_78_input-sequential_26/lstm_78/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_26/lstm_78/Shape_1Shape#sequential_26/lstm_78/transpose:y:0*
T0*
_output_shapes
:u
+sequential_26/lstm_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_26/lstm_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_26/lstm_78/strided_slice_1StridedSlice&sequential_26/lstm_78/Shape_1:output:04sequential_26/lstm_78/strided_slice_1/stack:output:06sequential_26/lstm_78/strided_slice_1/stack_1:output:06sequential_26/lstm_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_26/lstm_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_26/lstm_78/TensorArrayV2TensorListReserve:sequential_26/lstm_78/TensorArrayV2/element_shape:output:0.sequential_26/lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_26/lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_26/lstm_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_26/lstm_78/transpose:y:0Tsequential_26/lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_26/lstm_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_26/lstm_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_26/lstm_78/strided_slice_2StridedSlice#sequential_26/lstm_78/transpose:y:04sequential_26/lstm_78/strided_slice_2/stack:output:06sequential_26/lstm_78/strided_slice_2/stack_1:output:06sequential_26/lstm_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask½
9sequential_26/lstm_78/lstm_cell_480/MatMul/ReadVariableOpReadVariableOpBsequential_26_lstm_78_lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
*sequential_26/lstm_78/lstm_cell_480/MatMulMatMul.sequential_26/lstm_78/strided_slice_2:output:0Asequential_26/lstm_78/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
;sequential_26/lstm_78/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOpDsequential_26_lstm_78_lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ô
,sequential_26/lstm_78/lstm_cell_480/MatMul_1MatMul$sequential_26/lstm_78/zeros:output:0Csequential_26/lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential_26/lstm_78/lstm_cell_480/addAddV24sequential_26/lstm_78/lstm_cell_480/MatMul:product:06sequential_26/lstm_78/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:sequential_26/lstm_78/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOpCsequential_26_lstm_78_lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_26/lstm_78/lstm_cell_480/BiasAddBiasAdd+sequential_26/lstm_78/lstm_cell_480/add:z:0Bsequential_26/lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential_26/lstm_78/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_26/lstm_78/lstm_cell_480/splitSplit<sequential_26/lstm_78/lstm_cell_480/split/split_dim:output:04sequential_26/lstm_78/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
+sequential_26/lstm_78/lstm_cell_480/SigmoidSigmoid2sequential_26/lstm_78/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_26/lstm_78/lstm_cell_480/Sigmoid_1Sigmoid2sequential_26/lstm_78/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
'sequential_26/lstm_78/lstm_cell_480/mulMul1sequential_26/lstm_78/lstm_cell_480/Sigmoid_1:y:0&sequential_26/lstm_78/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(sequential_26/lstm_78/lstm_cell_480/ReluRelu2sequential_26/lstm_78/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
)sequential_26/lstm_78/lstm_cell_480/mul_1Mul/sequential_26/lstm_78/lstm_cell_480/Sigmoid:y:06sequential_26/lstm_78/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
)sequential_26/lstm_78/lstm_cell_480/add_1AddV2+sequential_26/lstm_78/lstm_cell_480/mul:z:0-sequential_26/lstm_78/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_26/lstm_78/lstm_cell_480/Sigmoid_2Sigmoid2sequential_26/lstm_78/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*sequential_26/lstm_78/lstm_cell_480/Relu_1Relu-sequential_26/lstm_78/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
)sequential_26/lstm_78/lstm_cell_480/mul_2Mul1sequential_26/lstm_78/lstm_cell_480/Sigmoid_2:y:08sequential_26/lstm_78/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_26/lstm_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ú
%sequential_26/lstm_78/TensorArrayV2_1TensorListReserve<sequential_26/lstm_78/TensorArrayV2_1/element_shape:output:0.sequential_26/lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_26/lstm_78/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_26/lstm_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_26/lstm_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_26/lstm_78/whileWhile1sequential_26/lstm_78/while/loop_counter:output:07sequential_26/lstm_78/while/maximum_iterations:output:0#sequential_26/lstm_78/time:output:0.sequential_26/lstm_78/TensorArrayV2_1:handle:0$sequential_26/lstm_78/zeros:output:0&sequential_26/lstm_78/zeros_1:output:0.sequential_26/lstm_78/strided_slice_1:output:0Msequential_26/lstm_78/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_26_lstm_78_lstm_cell_480_matmul_readvariableop_resourceDsequential_26_lstm_78_lstm_cell_480_matmul_1_readvariableop_resourceCsequential_26_lstm_78_lstm_cell_480_biasadd_readvariableop_resource*
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
(sequential_26_lstm_78_while_body_2913041*4
cond,R*
(sequential_26_lstm_78_while_cond_2913040*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_26/lstm_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_26/lstm_78/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_26/lstm_78/while:output:3Osequential_26/lstm_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0~
+sequential_26/lstm_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_26/lstm_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_26/lstm_78/strided_slice_3StridedSliceAsequential_26/lstm_78/TensorArrayV2Stack/TensorListStack:tensor:04sequential_26/lstm_78/strided_slice_3/stack:output:06sequential_26/lstm_78/strided_slice_3/stack_1:output:06sequential_26/lstm_78/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_26/lstm_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_26/lstm_78/transpose_1	TransposeAsequential_26/lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_26/lstm_78/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_26/lstm_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_26/lstm_79/ShapeShape%sequential_26/lstm_78/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_26/lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_26/lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_26/lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_26/lstm_79/strided_sliceStridedSlice$sequential_26/lstm_79/Shape:output:02sequential_26/lstm_79/strided_slice/stack:output:04sequential_26/lstm_79/strided_slice/stack_1:output:04sequential_26/lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_26/lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_26/lstm_79/zeros/packedPack,sequential_26/lstm_79/strided_slice:output:0-sequential_26/lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_26/lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_26/lstm_79/zerosFill+sequential_26/lstm_79/zeros/packed:output:0*sequential_26/lstm_79/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_26/lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_26/lstm_79/zeros_1/packedPack,sequential_26/lstm_79/strided_slice:output:0/sequential_26/lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_26/lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_26/lstm_79/zeros_1Fill-sequential_26/lstm_79/zeros_1/packed:output:0,sequential_26/lstm_79/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_26/lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_26/lstm_79/transpose	Transpose%sequential_26/lstm_78/transpose_1:y:0-sequential_26/lstm_79/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_26/lstm_79/Shape_1Shape#sequential_26/lstm_79/transpose:y:0*
T0*
_output_shapes
:u
+sequential_26/lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_26/lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_26/lstm_79/strided_slice_1StridedSlice&sequential_26/lstm_79/Shape_1:output:04sequential_26/lstm_79/strided_slice_1/stack:output:06sequential_26/lstm_79/strided_slice_1/stack_1:output:06sequential_26/lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_26/lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_26/lstm_79/TensorArrayV2TensorListReserve:sequential_26/lstm_79/TensorArrayV2/element_shape:output:0.sequential_26/lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_26/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_26/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_26/lstm_79/transpose:y:0Tsequential_26/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_26/lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_26/lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_26/lstm_79/strided_slice_2StridedSlice#sequential_26/lstm_79/transpose:y:04sequential_26/lstm_79/strided_slice_2/stack:output:06sequential_26/lstm_79/strided_slice_2/stack_1:output:06sequential_26/lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask½
9sequential_26/lstm_79/lstm_cell_481/MatMul/ReadVariableOpReadVariableOpBsequential_26_lstm_79_lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ú
*sequential_26/lstm_79/lstm_cell_481/MatMulMatMul.sequential_26/lstm_79/strided_slice_2:output:0Asequential_26/lstm_79/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÁ
;sequential_26/lstm_79/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOpDsequential_26_lstm_79_lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ô
,sequential_26/lstm_79/lstm_cell_481/MatMul_1MatMul$sequential_26/lstm_79/zeros:output:0Csequential_26/lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÑ
'sequential_26/lstm_79/lstm_cell_481/addAddV24sequential_26/lstm_79/lstm_cell_481/MatMul:product:06sequential_26/lstm_79/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ»
:sequential_26/lstm_79/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOpCsequential_26_lstm_79_lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_26/lstm_79/lstm_cell_481/BiasAddBiasAdd+sequential_26/lstm_79/lstm_cell_481/add:z:0Bsequential_26/lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈu
3sequential_26/lstm_79/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_26/lstm_79/lstm_cell_481/splitSplit<sequential_26/lstm_79/lstm_cell_481/split/split_dim:output:04sequential_26/lstm_79/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
+sequential_26/lstm_79/lstm_cell_481/SigmoidSigmoid2sequential_26/lstm_79/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_26/lstm_79/lstm_cell_481/Sigmoid_1Sigmoid2sequential_26/lstm_79/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
'sequential_26/lstm_79/lstm_cell_481/mulMul1sequential_26/lstm_79/lstm_cell_481/Sigmoid_1:y:0&sequential_26/lstm_79/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(sequential_26/lstm_79/lstm_cell_481/ReluRelu2sequential_26/lstm_79/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ë
)sequential_26/lstm_79/lstm_cell_481/mul_1Mul/sequential_26/lstm_79/lstm_cell_481/Sigmoid:y:06sequential_26/lstm_79/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
)sequential_26/lstm_79/lstm_cell_481/add_1AddV2+sequential_26/lstm_79/lstm_cell_481/mul:z:0-sequential_26/lstm_79/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_26/lstm_79/lstm_cell_481/Sigmoid_2Sigmoid2sequential_26/lstm_79/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_26/lstm_79/lstm_cell_481/Relu_1Relu-sequential_26/lstm_79/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
)sequential_26/lstm_79/lstm_cell_481/mul_2Mul1sequential_26/lstm_79/lstm_cell_481/Sigmoid_2:y:08sequential_26/lstm_79/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_26/lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_26/lstm_79/TensorArrayV2_1TensorListReserve<sequential_26/lstm_79/TensorArrayV2_1/element_shape:output:0.sequential_26/lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_26/lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_26/lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_26/lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_26/lstm_79/whileWhile1sequential_26/lstm_79/while/loop_counter:output:07sequential_26/lstm_79/while/maximum_iterations:output:0#sequential_26/lstm_79/time:output:0.sequential_26/lstm_79/TensorArrayV2_1:handle:0$sequential_26/lstm_79/zeros:output:0&sequential_26/lstm_79/zeros_1:output:0.sequential_26/lstm_79/strided_slice_1:output:0Msequential_26/lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_26_lstm_79_lstm_cell_481_matmul_readvariableop_resourceDsequential_26_lstm_79_lstm_cell_481_matmul_1_readvariableop_resourceCsequential_26_lstm_79_lstm_cell_481_biasadd_readvariableop_resource*
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
(sequential_26_lstm_79_while_body_2913180*4
cond,R*
(sequential_26_lstm_79_while_cond_2913179*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_26/lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_26/lstm_79/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_26/lstm_79/while:output:3Osequential_26/lstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_26/lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_26/lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_26/lstm_79/strided_slice_3StridedSliceAsequential_26/lstm_79/TensorArrayV2Stack/TensorListStack:tensor:04sequential_26/lstm_79/strided_slice_3/stack:output:06sequential_26/lstm_79/strided_slice_3/stack_1:output:06sequential_26/lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_26/lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_26/lstm_79/transpose_1	TransposeAsequential_26/lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_26/lstm_79/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_26/lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_26/lstm_80/ShapeShape%sequential_26/lstm_79/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_26/lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_26/lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_26/lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_26/lstm_80/strided_sliceStridedSlice$sequential_26/lstm_80/Shape:output:02sequential_26/lstm_80/strided_slice/stack:output:04sequential_26/lstm_80/strided_slice/stack_1:output:04sequential_26/lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_26/lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
µ
"sequential_26/lstm_80/zeros/packedPack,sequential_26/lstm_80/strided_slice:output:0-sequential_26/lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_26/lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_26/lstm_80/zerosFill+sequential_26/lstm_80/zeros/packed:output:0*sequential_26/lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
&sequential_26/lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¹
$sequential_26/lstm_80/zeros_1/packedPack,sequential_26/lstm_80/strided_slice:output:0/sequential_26/lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_26/lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_26/lstm_80/zeros_1Fill-sequential_26/lstm_80/zeros_1/packed:output:0,sequential_26/lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
$sequential_26/lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_26/lstm_80/transpose	Transpose%sequential_26/lstm_79/transpose_1:y:0-sequential_26/lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
sequential_26/lstm_80/Shape_1Shape#sequential_26/lstm_80/transpose:y:0*
T0*
_output_shapes
:u
+sequential_26/lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_26/lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_26/lstm_80/strided_slice_1StridedSlice&sequential_26/lstm_80/Shape_1:output:04sequential_26/lstm_80/strided_slice_1/stack:output:06sequential_26/lstm_80/strided_slice_1/stack_1:output:06sequential_26/lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_26/lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_26/lstm_80/TensorArrayV2TensorListReserve:sequential_26/lstm_80/TensorArrayV2/element_shape:output:0.sequential_26/lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_26/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¢
=sequential_26/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_26/lstm_80/transpose:y:0Tsequential_26/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_26/lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_26/lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_26/lstm_80/strided_slice_2StridedSlice#sequential_26/lstm_80/transpose:y:04sequential_26/lstm_80/strided_slice_2/stack:output:06sequential_26/lstm_80/strided_slice_2/stack_1:output:06sequential_26/lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¼
9sequential_26/lstm_80/lstm_cell_482/MatMul/ReadVariableOpReadVariableOpBsequential_26_lstm_80_lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ù
*sequential_26/lstm_80/lstm_cell_482/MatMulMatMul.sequential_26/lstm_80/strided_slice_2:output:0Asequential_26/lstm_80/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(À
;sequential_26/lstm_80/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOpDsequential_26_lstm_80_lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ó
,sequential_26/lstm_80/lstm_cell_482/MatMul_1MatMul$sequential_26/lstm_80/zeros:output:0Csequential_26/lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ð
'sequential_26/lstm_80/lstm_cell_482/addAddV24sequential_26/lstm_80/lstm_cell_482/MatMul:product:06sequential_26/lstm_80/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
:sequential_26/lstm_80/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOpCsequential_26_lstm_80_lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_26/lstm_80/lstm_cell_482/BiasAddBiasAdd+sequential_26/lstm_80/lstm_cell_482/add:z:0Bsequential_26/lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(u
3sequential_26/lstm_80/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_26/lstm_80/lstm_cell_482/splitSplit<sequential_26/lstm_80/lstm_cell_482/split/split_dim:output:04sequential_26/lstm_80/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
+sequential_26/lstm_80/lstm_cell_482/SigmoidSigmoid2sequential_26/lstm_80/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_26/lstm_80/lstm_cell_482/Sigmoid_1Sigmoid2sequential_26/lstm_80/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
'sequential_26/lstm_80/lstm_cell_482/mulMul1sequential_26/lstm_80/lstm_cell_482/Sigmoid_1:y:0&sequential_26/lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(sequential_26/lstm_80/lstm_cell_482/ReluRelu2sequential_26/lstm_80/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
)sequential_26/lstm_80/lstm_cell_482/mul_1Mul/sequential_26/lstm_80/lstm_cell_482/Sigmoid:y:06sequential_26/lstm_80/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
)sequential_26/lstm_80/lstm_cell_482/add_1AddV2+sequential_26/lstm_80/lstm_cell_482/mul:z:0-sequential_26/lstm_80/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_26/lstm_80/lstm_cell_482/Sigmoid_2Sigmoid2sequential_26/lstm_80/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_26/lstm_80/lstm_cell_482/Relu_1Relu-sequential_26/lstm_80/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ï
)sequential_26/lstm_80/lstm_cell_482/mul_2Mul1sequential_26/lstm_80/lstm_cell_482/Sigmoid_2:y:08sequential_26/lstm_80/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

3sequential_26/lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ú
%sequential_26/lstm_80/TensorArrayV2_1TensorListReserve<sequential_26/lstm_80/TensorArrayV2_1/element_shape:output:0.sequential_26/lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_26/lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_26/lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_26/lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_26/lstm_80/whileWhile1sequential_26/lstm_80/while/loop_counter:output:07sequential_26/lstm_80/while/maximum_iterations:output:0#sequential_26/lstm_80/time:output:0.sequential_26/lstm_80/TensorArrayV2_1:handle:0$sequential_26/lstm_80/zeros:output:0&sequential_26/lstm_80/zeros_1:output:0.sequential_26/lstm_80/strided_slice_1:output:0Msequential_26/lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_26_lstm_80_lstm_cell_482_matmul_readvariableop_resourceDsequential_26_lstm_80_lstm_cell_482_matmul_1_readvariableop_resourceCsequential_26_lstm_80_lstm_cell_482_biasadd_readvariableop_resource*
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
(sequential_26_lstm_80_while_body_2913319*4
cond,R*
(sequential_26_lstm_80_while_cond_2913318*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Fsequential_26/lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
8sequential_26/lstm_80/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_26/lstm_80/while:output:3Osequential_26/lstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0~
+sequential_26/lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_26/lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_26/lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_26/lstm_80/strided_slice_3StridedSliceAsequential_26/lstm_80/TensorArrayV2Stack/TensorListStack:tensor:04sequential_26/lstm_80/strided_slice_3/stack:output:06sequential_26/lstm_80/strided_slice_3/stack_1:output:06sequential_26/lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask{
&sequential_26/lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_26/lstm_80/transpose_1	TransposeAsequential_26/lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_26/lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
sequential_26/lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0¿
sequential_26/dense_26/MatMulMatMul.sequential_26/lstm_80/strided_slice_3:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_26/dense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp;^sequential_26/lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp:^sequential_26/lstm_78/lstm_cell_480/MatMul/ReadVariableOp<^sequential_26/lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp^sequential_26/lstm_78/while;^sequential_26/lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp:^sequential_26/lstm_79/lstm_cell_481/MatMul/ReadVariableOp<^sequential_26/lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp^sequential_26/lstm_79/while;^sequential_26/lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp:^sequential_26/lstm_80/lstm_cell_482/MatMul/ReadVariableOp<^sequential_26/lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp^sequential_26/lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp2x
:sequential_26/lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp:sequential_26/lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp2v
9sequential_26/lstm_78/lstm_cell_480/MatMul/ReadVariableOp9sequential_26/lstm_78/lstm_cell_480/MatMul/ReadVariableOp2z
;sequential_26/lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp;sequential_26/lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp2:
sequential_26/lstm_78/whilesequential_26/lstm_78/while2x
:sequential_26/lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp:sequential_26/lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp2v
9sequential_26/lstm_79/lstm_cell_481/MatMul/ReadVariableOp9sequential_26/lstm_79/lstm_cell_481/MatMul/ReadVariableOp2z
;sequential_26/lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp;sequential_26/lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp2:
sequential_26/lstm_79/whilesequential_26/lstm_79/while2x
:sequential_26/lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp:sequential_26/lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp2v
9sequential_26/lstm_80/lstm_cell_482/MatMul/ReadVariableOp9sequential_26/lstm_80/lstm_cell_482/MatMul/ReadVariableOp2z
;sequential_26/lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp;sequential_26/lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp2:
sequential_26/lstm_80/whilesequential_26/lstm_80/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_78_input
Í

J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914176

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
B
Ú

lstm_78_while_body_2915782,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3+
'lstm_78_while_lstm_78_strided_slice_1_0g
clstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0:	Q
>lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dL
=lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0:	
lstm_78_while_identity
lstm_78_while_identity_1
lstm_78_while_identity_2
lstm_78_while_identity_3
lstm_78_while_identity_4
lstm_78_while_identity_5)
%lstm_78_while_lstm_78_strided_slice_1e
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorM
:lstm_78_while_lstm_cell_480_matmul_readvariableop_resource:	O
<lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource:	dJ
;lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource:	¢2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp¢1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp¢3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp
?lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0lstm_78_while_placeholderHlstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp<lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_78/while/lstm_cell_480/MatMulMatMul8lstm_78/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp>lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_78/while/lstm_cell_480/MatMul_1MatMullstm_78_while_placeholder_2;lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_78/while/lstm_cell_480/addAddV2,lstm_78/while/lstm_cell_480/MatMul:product:0.lstm_78/while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp=lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_78/while/lstm_cell_480/BiasAddBiasAdd#lstm_78/while/lstm_cell_480/add:z:0:lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_78/while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_78/while/lstm_cell_480/splitSplit4lstm_78/while/lstm_cell_480/split/split_dim:output:0,lstm_78/while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_78/while/lstm_cell_480/SigmoidSigmoid*lstm_78/while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_78/while/lstm_cell_480/Sigmoid_1Sigmoid*lstm_78/while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_78/while/lstm_cell_480/mulMul)lstm_78/while/lstm_cell_480/Sigmoid_1:y:0lstm_78_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_78/while/lstm_cell_480/ReluRelu*lstm_78/while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_78/while/lstm_cell_480/mul_1Mul'lstm_78/while/lstm_cell_480/Sigmoid:y:0.lstm_78/while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_78/while/lstm_cell_480/add_1AddV2#lstm_78/while/lstm_cell_480/mul:z:0%lstm_78/while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_78/while/lstm_cell_480/Sigmoid_2Sigmoid*lstm_78/while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_78/while/lstm_cell_480/Relu_1Relu%lstm_78/while/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_78/while/lstm_cell_480/mul_2Mul)lstm_78/while/lstm_cell_480/Sigmoid_2:y:00lstm_78/while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_78_while_placeholder_1lstm_78_while_placeholder%lstm_78/while/lstm_cell_480/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_78/while/addAddV2lstm_78_while_placeholderlstm_78/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_78/while/add_1AddV2(lstm_78_while_lstm_78_while_loop_counterlstm_78/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_78/while/IdentityIdentitylstm_78/while/add_1:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 
lstm_78/while/Identity_1Identity.lstm_78_while_lstm_78_while_maximum_iterations^lstm_78/while/NoOp*
T0*
_output_shapes
: q
lstm_78/while/Identity_2Identitylstm_78/while/add:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 
lstm_78/while/Identity_3IdentityBlstm_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 
lstm_78/while/Identity_4Identity%lstm_78/while/lstm_cell_480/mul_2:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/while/Identity_5Identity%lstm_78/while/lstm_cell_480/add_1:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_78/while/NoOpNoOp3^lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2^lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp4^lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_78_while_identitylstm_78/while/Identity:output:0"=
lstm_78_while_identity_1!lstm_78/while/Identity_1:output:0"=
lstm_78_while_identity_2!lstm_78/while/Identity_2:output:0"=
lstm_78_while_identity_3!lstm_78/while/Identity_3:output:0"=
lstm_78_while_identity_4!lstm_78/while/Identity_4:output:0"=
lstm_78_while_identity_5!lstm_78/while/Identity_5:output:0"P
%lstm_78_while_lstm_78_strided_slice_1'lstm_78_while_lstm_78_strided_slice_1_0"|
;lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource=lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0"~
<lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource>lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0"z
:lstm_78_while_lstm_cell_480_matmul_readvariableop_resource<lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0"È
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2f
1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp2j
3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2918054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2918054___redundant_placeholder05
1while_while_cond_2918054___redundant_placeholder15
1while_while_cond_2918054___redundant_placeholder25
1while_while_cond_2918054___redundant_placeholder3
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

µ
)__inference_lstm_80_layer_call_fn_2917831
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2914450o
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
ß

J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2918510

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
ö
³
)__inference_lstm_80_layer_call_fn_2917853

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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2915124o
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
ï
ø
/__inference_lstm_cell_481_layer_call_fn_2918576

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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913972o
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
áJ
¢
D__inference_lstm_79_layer_call_and_return_conditional_losses_2914758

inputs?
,lstm_cell_481_matmul_readvariableop_resource:	dÈA
.lstm_cell_481_matmul_1_readvariableop_resource:	2È<
-lstm_cell_481_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_481/BiasAdd/ReadVariableOp¢#lstm_cell_481/MatMul/ReadVariableOp¢%lstm_cell_481/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_481/MatMul/ReadVariableOpReadVariableOp,lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_481/MatMulMatMulstrided_slice_2:output:0+lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_481/MatMul_1MatMulzeros:output:0-lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_481/addAddV2lstm_cell_481/MatMul:product:0 lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_481/BiasAddBiasAddlstm_cell_481/add:z:0,lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_481/splitSplit&lstm_cell_481/split/split_dim:output:0lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_481/SigmoidSigmoidlstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_1Sigmoidlstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_481/mulMullstm_cell_481/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_481/ReluRelulstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_1Mullstm_cell_481/Sigmoid:y:0 lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_481/add_1AddV2lstm_cell_481/mul:z:0lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_2Sigmoidlstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_481/Relu_1Relulstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_2Mullstm_cell_481/Sigmoid_2:y:0"lstm_cell_481/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_481_matmul_readvariableop_resource.lstm_cell_481_matmul_1_readvariableop_resource-lstm_cell_481_biasadd_readvariableop_resource*
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
while_body_2914674*
condR
while_cond_2914673*K
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
NoOpNoOp%^lstm_cell_481/BiasAdd/ReadVariableOp$^lstm_cell_481/MatMul/ReadVariableOp&^lstm_cell_481/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_481/BiasAdd/ReadVariableOp$lstm_cell_481/BiasAdd/ReadVariableOp2J
#lstm_cell_481/MatMul/ReadVariableOp#lstm_cell_481/MatMul/ReadVariableOp2N
%lstm_cell_481/MatMul_1/ReadVariableOp%lstm_cell_481/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ü


/__inference_sequential_26_layer_call_fn_2915696

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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2914933o
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


è
lstm_80_while_cond_2916059,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3.
*lstm_80_while_less_lstm_80_strided_slice_1E
Alstm_80_while_lstm_80_while_cond_2916059___redundant_placeholder0E
Alstm_80_while_lstm_80_while_cond_2916059___redundant_placeholder1E
Alstm_80_while_lstm_80_while_cond_2916059___redundant_placeholder2E
Alstm_80_while_lstm_80_while_cond_2916059___redundant_placeholder3
lstm_80_while_identity

lstm_80/while/LessLesslstm_80_while_placeholder*lstm_80_while_less_lstm_80_strided_slice_1*
T0*
_output_shapes
: [
lstm_80/while/IdentityIdentitylstm_80/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_80_while_identitylstm_80/while/Identity:output:0*(
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
§8

D__inference_lstm_80_layer_call_and_return_conditional_losses_2914450

inputs'
lstm_cell_482_2914368:2('
lstm_cell_482_2914370:
(#
lstm_cell_482_2914372:(
identity¢%lstm_cell_482/StatefulPartitionedCall¢while;
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
%lstm_cell_482/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_482_2914368lstm_cell_482_2914370lstm_cell_482_2914372*
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914322n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_482_2914368lstm_cell_482_2914370lstm_cell_482_2914372*
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
while_body_2914381*
condR
while_cond_2914380*K
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
NoOpNoOp&^lstm_cell_482/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_482/StatefulPartitionedCall%lstm_cell_482/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2915205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_481_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_481_biasadd_readvariableop_resource:	È¢*while/lstm_cell_481/BiasAdd/ReadVariableOp¢)while/lstm_cell_481/MatMul/ReadVariableOp¢+while/lstm_cell_481/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_481/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_481/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_481/addAddV2$while/lstm_cell_481/MatMul:product:0&while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_481/BiasAddBiasAddwhile/lstm_cell_481/add:z:02while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_481/splitSplit,while/lstm_cell_481/split/split_dim:output:0$while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_481/SigmoidSigmoid"while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_1Sigmoid"while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mulMul!while/lstm_cell_481/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_481/ReluRelu"while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_1Mulwhile/lstm_cell_481/Sigmoid:y:0&while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/add_1AddV2while/lstm_cell_481/mul:z:0while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_2Sigmoid"while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_481/Relu_1Reluwhile/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_2Mul!while/lstm_cell_481/Sigmoid_2:y:0(while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_481/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_481/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_481/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_481/BiasAdd/ReadVariableOp*^while/lstm_cell_481/MatMul/ReadVariableOp,^while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_481_biasadd_readvariableop_resource5while_lstm_cell_481_biasadd_readvariableop_resource_0"n
4while_lstm_cell_481_matmul_1_readvariableop_resource6while_lstm_cell_481_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_481_matmul_readvariableop_resource4while_lstm_cell_481_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_481/BiasAdd/ReadVariableOp*while/lstm_cell_481/BiasAdd/ReadVariableOp2V
)while/lstm_cell_481/MatMul/ReadVariableOp)while/lstm_cell_481/MatMul/ReadVariableOp2Z
+while/lstm_cell_481/MatMul_1/ReadVariableOp+while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2916679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2916679___redundant_placeholder05
1while_while_cond_2916679___redundant_placeholder15
1while_while_cond_2916679___redundant_placeholder25
1while_while_cond_2916679___redundant_placeholder3
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
#
ñ
while_body_2913490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_480_2913514_0:	0
while_lstm_cell_480_2913516_0:	d,
while_lstm_cell_480_2913518_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_480_2913514:	.
while_lstm_cell_480_2913516:	d*
while_lstm_cell_480_2913518:	¢+while/lstm_cell_480/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_480/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_480_2913514_0while_lstm_cell_480_2913516_0while_lstm_cell_480_2913518_0*
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913476Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_480/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_480/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_480/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_480/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_480_2913514while_lstm_cell_480_2913514_0"<
while_lstm_cell_480_2913516while_lstm_cell_480_2913516_0"<
while_lstm_cell_480_2913518while_lstm_cell_480_2913518_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_480/StatefulPartitionedCall+while/lstm_cell_480/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
#
ñ
while_body_2913840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_481_2913864_0:	dÈ0
while_lstm_cell_481_2913866_0:	2È,
while_lstm_cell_481_2913868_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_481_2913864:	dÈ.
while_lstm_cell_481_2913866:	2È*
while_lstm_cell_481_2913868:	È¢+while/lstm_cell_481/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_481/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_481_2913864_0while_lstm_cell_481_2913866_0while_lstm_cell_481_2913868_0*
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913826Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_481/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_481/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_481/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_481/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_481_2913864while_lstm_cell_481_2913864_0"<
while_lstm_cell_481_2913866while_lstm_cell_481_2913866_0"<
while_lstm_cell_481_2913868while_lstm_cell_481_2913868_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_481/StatefulPartitionedCall+while/lstm_cell_481/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ß

J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2918542

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
º
È
while_cond_2914673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2914673___redundant_placeholder05
1while_while_cond_2914673___redundant_placeholder15
1while_while_cond_2914673___redundant_placeholder25
1while_while_cond_2914673___redundant_placeholder3
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
®8

D__inference_lstm_78_layer_call_and_return_conditional_losses_2913559

inputs(
lstm_cell_480_2913477:	(
lstm_cell_480_2913479:	d$
lstm_cell_480_2913481:	
identity¢%lstm_cell_480/StatefulPartitionedCall¢while;
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
%lstm_cell_480/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_480_2913477lstm_cell_480_2913479lstm_cell_480_2913481*
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913476n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_480_2913477lstm_cell_480_2913479lstm_cell_480_2913481*
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
while_body_2913490*
condR
while_cond_2913489*K
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
NoOpNoOp&^lstm_cell_480/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_480/StatefulPartitionedCall%lstm_cell_480/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913476

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
Ñ8
Ú
while_body_2917296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_481_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_481_biasadd_readvariableop_resource:	È¢*while/lstm_cell_481/BiasAdd/ReadVariableOp¢)while/lstm_cell_481/MatMul/ReadVariableOp¢+while/lstm_cell_481/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_481/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_481/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_481/addAddV2$while/lstm_cell_481/MatMul:product:0&while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_481/BiasAddBiasAddwhile/lstm_cell_481/add:z:02while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_481/splitSplit,while/lstm_cell_481/split/split_dim:output:0$while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_481/SigmoidSigmoid"while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_1Sigmoid"while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mulMul!while/lstm_cell_481/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_481/ReluRelu"while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_1Mulwhile/lstm_cell_481/Sigmoid:y:0&while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/add_1AddV2while/lstm_cell_481/mul:z:0while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_2Sigmoid"while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_481/Relu_1Reluwhile/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_2Mul!while/lstm_cell_481/Sigmoid_2:y:0(while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_481/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_481/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_481/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_481/BiasAdd/ReadVariableOp*^while/lstm_cell_481/MatMul/ReadVariableOp,^while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_481_biasadd_readvariableop_resource5while_lstm_cell_481_biasadd_readvariableop_resource_0"n
4while_lstm_cell_481_matmul_1_readvariableop_resource6while_lstm_cell_481_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_481_matmul_readvariableop_resource4while_lstm_cell_481_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_481/BiasAdd/ReadVariableOp*while/lstm_cell_481/BiasAdd/ReadVariableOp2V
)while/lstm_cell_481/MatMul/ReadVariableOp)while/lstm_cell_481/MatMul/ReadVariableOp2Z
+while/lstm_cell_481/MatMul_1/ReadVariableOp+while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ï
ø
/__inference_lstm_cell_481_layer_call_fn_2918559

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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913826o
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
º
È
while_cond_2916965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2916965___redundant_placeholder05
1while_while_cond_2916965___redundant_placeholder15
1while_while_cond_2916965___redundant_placeholder25
1while_while_cond_2916965___redundant_placeholder3
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
þ

J__inference_sequential_26_layer_call_and_return_conditional_losses_2916577

inputsG
4lstm_78_lstm_cell_480_matmul_readvariableop_resource:	I
6lstm_78_lstm_cell_480_matmul_1_readvariableop_resource:	dD
5lstm_78_lstm_cell_480_biasadd_readvariableop_resource:	G
4lstm_79_lstm_cell_481_matmul_readvariableop_resource:	dÈI
6lstm_79_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈD
5lstm_79_lstm_cell_481_biasadd_readvariableop_resource:	ÈF
4lstm_80_lstm_cell_482_matmul_readvariableop_resource:2(H
6lstm_80_lstm_cell_482_matmul_1_readvariableop_resource:
(C
5lstm_80_lstm_cell_482_biasadd_readvariableop_resource:(9
'dense_26_matmul_readvariableop_resource:
6
(dense_26_biasadd_readvariableop_resource:
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOp¢,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp¢+lstm_78/lstm_cell_480/MatMul/ReadVariableOp¢-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp¢lstm_78/while¢,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp¢+lstm_79/lstm_cell_481/MatMul/ReadVariableOp¢-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp¢lstm_79/while¢,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp¢+lstm_80/lstm_cell_482/MatMul/ReadVariableOp¢-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp¢lstm_80/whileC
lstm_78/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_78/strided_sliceStridedSlicelstm_78/Shape:output:0$lstm_78/strided_slice/stack:output:0&lstm_78/strided_slice/stack_1:output:0&lstm_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_78/zeros/packedPacklstm_78/strided_slice:output:0lstm_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_78/zerosFilllstm_78/zeros/packed:output:0lstm_78/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_78/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_78/zeros_1/packedPacklstm_78/strided_slice:output:0!lstm_78/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_78/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_78/zeros_1Filllstm_78/zeros_1/packed:output:0lstm_78/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_78/transpose	Transposeinputslstm_78/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_78/Shape_1Shapelstm_78/transpose:y:0*
T0*
_output_shapes
:g
lstm_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_78/strided_slice_1StridedSlicelstm_78/Shape_1:output:0&lstm_78/strided_slice_1/stack:output:0(lstm_78/strided_slice_1/stack_1:output:0(lstm_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_78/TensorArrayV2TensorListReserve,lstm_78/TensorArrayV2/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_78/transpose:y:0Flstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_78/strided_slice_2StridedSlicelstm_78/transpose:y:0&lstm_78/strided_slice_2/stack:output:0(lstm_78/strided_slice_2/stack_1:output:0(lstm_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_78/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4lstm_78_lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_78/lstm_cell_480/MatMulMatMul lstm_78/strided_slice_2:output:03lstm_78/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6lstm_78_lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_78/lstm_cell_480/MatMul_1MatMullstm_78/zeros:output:05lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_78/lstm_cell_480/addAddV2&lstm_78/lstm_cell_480/MatMul:product:0(lstm_78/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5lstm_78_lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_78/lstm_cell_480/BiasAddBiasAddlstm_78/lstm_cell_480/add:z:04lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_78/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_78/lstm_cell_480/splitSplit.lstm_78/lstm_cell_480/split/split_dim:output:0&lstm_78/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_78/lstm_cell_480/SigmoidSigmoid$lstm_78/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/Sigmoid_1Sigmoid$lstm_78/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/mulMul#lstm_78/lstm_cell_480/Sigmoid_1:y:0lstm_78/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_78/lstm_cell_480/ReluRelu$lstm_78/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_78/lstm_cell_480/mul_1Mul!lstm_78/lstm_cell_480/Sigmoid:y:0(lstm_78/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/add_1AddV2lstm_78/lstm_cell_480/mul:z:0lstm_78/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/Sigmoid_2Sigmoid$lstm_78/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_78/lstm_cell_480/Relu_1Relulstm_78/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_78/lstm_cell_480/mul_2Mul#lstm_78/lstm_cell_480/Sigmoid_2:y:0*lstm_78/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_78/TensorArrayV2_1TensorListReserve.lstm_78/TensorArrayV2_1/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_78/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_78/whileWhile#lstm_78/while/loop_counter:output:0)lstm_78/while/maximum_iterations:output:0lstm_78/time:output:0 lstm_78/TensorArrayV2_1:handle:0lstm_78/zeros:output:0lstm_78/zeros_1:output:0 lstm_78/strided_slice_1:output:0?lstm_78/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_78_lstm_cell_480_matmul_readvariableop_resource6lstm_78_lstm_cell_480_matmul_1_readvariableop_resource5lstm_78_lstm_cell_480_biasadd_readvariableop_resource*
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
lstm_78_while_body_2916209*&
condR
lstm_78_while_cond_2916208*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_78/TensorArrayV2Stack/TensorListStackTensorListStacklstm_78/while:output:3Alstm_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_78/strided_slice_3StridedSlice3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_78/strided_slice_3/stack:output:0(lstm_78/strided_slice_3/stack_1:output:0(lstm_78/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_78/transpose_1	Transpose3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_78/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_79/ShapeShapelstm_78/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_79/strided_sliceStridedSlicelstm_79/Shape:output:0$lstm_79/strided_slice/stack:output:0&lstm_79/strided_slice/stack_1:output:0&lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros/packedPacklstm_79/strided_slice:output:0lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_79/zerosFilllstm_79/zeros/packed:output:0lstm_79/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros_1/packedPacklstm_79/strided_slice:output:0!lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_79/zeros_1Filllstm_79/zeros_1/packed:output:0lstm_79/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_79/transpose	Transposelstm_78/transpose_1:y:0lstm_79/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_79/Shape_1Shapelstm_79/transpose:y:0*
T0*
_output_shapes
:g
lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_79/strided_slice_1StridedSlicelstm_79/Shape_1:output:0&lstm_79/strided_slice_1/stack:output:0(lstm_79/strided_slice_1/stack_1:output:0(lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_79/TensorArrayV2TensorListReserve,lstm_79/TensorArrayV2/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_79/transpose:y:0Flstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_79/strided_slice_2StridedSlicelstm_79/transpose:y:0&lstm_79/strided_slice_2/stack:output:0(lstm_79/strided_slice_2/stack_1:output:0(lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_79/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4lstm_79_lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_79/lstm_cell_481/MatMulMatMul lstm_79/strided_slice_2:output:03lstm_79/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6lstm_79_lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_79/lstm_cell_481/MatMul_1MatMullstm_79/zeros:output:05lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_79/lstm_cell_481/addAddV2&lstm_79/lstm_cell_481/MatMul:product:0(lstm_79/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5lstm_79_lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_79/lstm_cell_481/BiasAddBiasAddlstm_79/lstm_cell_481/add:z:04lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_79/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_79/lstm_cell_481/splitSplit.lstm_79/lstm_cell_481/split/split_dim:output:0&lstm_79/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_79/lstm_cell_481/SigmoidSigmoid$lstm_79/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/Sigmoid_1Sigmoid$lstm_79/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/mulMul#lstm_79/lstm_cell_481/Sigmoid_1:y:0lstm_79/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_79/lstm_cell_481/ReluRelu$lstm_79/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_79/lstm_cell_481/mul_1Mul!lstm_79/lstm_cell_481/Sigmoid:y:0(lstm_79/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/add_1AddV2lstm_79/lstm_cell_481/mul:z:0lstm_79/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/Sigmoid_2Sigmoid$lstm_79/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_79/lstm_cell_481/Relu_1Relulstm_79/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_79/lstm_cell_481/mul_2Mul#lstm_79/lstm_cell_481/Sigmoid_2:y:0*lstm_79/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_79/TensorArrayV2_1TensorListReserve.lstm_79/TensorArrayV2_1/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_79/whileWhile#lstm_79/while/loop_counter:output:0)lstm_79/while/maximum_iterations:output:0lstm_79/time:output:0 lstm_79/TensorArrayV2_1:handle:0lstm_79/zeros:output:0lstm_79/zeros_1:output:0 lstm_79/strided_slice_1:output:0?lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_79_lstm_cell_481_matmul_readvariableop_resource6lstm_79_lstm_cell_481_matmul_1_readvariableop_resource5lstm_79_lstm_cell_481_biasadd_readvariableop_resource*
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
lstm_79_while_body_2916348*&
condR
lstm_79_while_cond_2916347*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_79/TensorArrayV2Stack/TensorListStackTensorListStacklstm_79/while:output:3Alstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_79/strided_slice_3StridedSlice3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_79/strided_slice_3/stack:output:0(lstm_79/strided_slice_3/stack_1:output:0(lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_79/transpose_1	Transpose3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_79/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_80/ShapeShapelstm_79/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_80/strided_sliceStridedSlicelstm_80/Shape:output:0$lstm_80/strided_slice/stack:output:0&lstm_80/strided_slice/stack_1:output:0&lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_80/zeros/packedPacklstm_80/strided_slice:output:0lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_80/zerosFilllstm_80/zeros/packed:output:0lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_80/zeros_1/packedPacklstm_80/strided_slice:output:0!lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_80/zeros_1Filllstm_80/zeros_1/packed:output:0lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_80/transpose	Transposelstm_79/transpose_1:y:0lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_80/Shape_1Shapelstm_80/transpose:y:0*
T0*
_output_shapes
:g
lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_80/strided_slice_1StridedSlicelstm_80/Shape_1:output:0&lstm_80/strided_slice_1/stack:output:0(lstm_80/strided_slice_1/stack_1:output:0(lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_80/TensorArrayV2TensorListReserve,lstm_80/TensorArrayV2/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_80/transpose:y:0Flstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_80/strided_slice_2StridedSlicelstm_80/transpose:y:0&lstm_80/strided_slice_2/stack:output:0(lstm_80/strided_slice_2/stack_1:output:0(lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_80/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4lstm_80_lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_80/lstm_cell_482/MatMulMatMul lstm_80/strided_slice_2:output:03lstm_80/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6lstm_80_lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_80/lstm_cell_482/MatMul_1MatMullstm_80/zeros:output:05lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_80/lstm_cell_482/addAddV2&lstm_80/lstm_cell_482/MatMul:product:0(lstm_80/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5lstm_80_lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_80/lstm_cell_482/BiasAddBiasAddlstm_80/lstm_cell_482/add:z:04lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_80/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_80/lstm_cell_482/splitSplit.lstm_80/lstm_cell_482/split/split_dim:output:0&lstm_80/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_80/lstm_cell_482/SigmoidSigmoid$lstm_80/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/Sigmoid_1Sigmoid$lstm_80/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/mulMul#lstm_80/lstm_cell_482/Sigmoid_1:y:0lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_80/lstm_cell_482/ReluRelu$lstm_80/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_80/lstm_cell_482/mul_1Mul!lstm_80/lstm_cell_482/Sigmoid:y:0(lstm_80/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/add_1AddV2lstm_80/lstm_cell_482/mul:z:0lstm_80/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/Sigmoid_2Sigmoid$lstm_80/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_80/lstm_cell_482/Relu_1Relulstm_80/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_80/lstm_cell_482/mul_2Mul#lstm_80/lstm_cell_482/Sigmoid_2:y:0*lstm_80/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_80/TensorArrayV2_1TensorListReserve.lstm_80/TensorArrayV2_1/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_80/whileWhile#lstm_80/while/loop_counter:output:0)lstm_80/while/maximum_iterations:output:0lstm_80/time:output:0 lstm_80/TensorArrayV2_1:handle:0lstm_80/zeros:output:0lstm_80/zeros_1:output:0 lstm_80/strided_slice_1:output:0?lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_80_lstm_cell_482_matmul_readvariableop_resource6lstm_80_lstm_cell_482_matmul_1_readvariableop_resource5lstm_80_lstm_cell_482_biasadd_readvariableop_resource*
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
lstm_80_while_body_2916487*&
condR
lstm_80_while_cond_2916486*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_80/TensorArrayV2Stack/TensorListStackTensorListStacklstm_80/while:output:3Alstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_80/strided_slice_3StridedSlice3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_80/strided_slice_3/stack:output:0(lstm_80/strided_slice_3/stack_1:output:0(lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_80/transpose_1	Transpose3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_26/MatMulMatMul lstm_80/strided_slice_3:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp-^lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp,^lstm_78/lstm_cell_480/MatMul/ReadVariableOp.^lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp^lstm_78/while-^lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp,^lstm_79/lstm_cell_481/MatMul/ReadVariableOp.^lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp^lstm_79/while-^lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp,^lstm_80/lstm_cell_482/MatMul/ReadVariableOp.^lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp^lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2\
,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp2Z
+lstm_78/lstm_cell_480/MatMul/ReadVariableOp+lstm_78/lstm_cell_480/MatMul/ReadVariableOp2^
-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp2
lstm_78/whilelstm_78/while2\
,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp2Z
+lstm_79/lstm_cell_481/MatMul/ReadVariableOp+lstm_79/lstm_cell_481/MatMul/ReadVariableOp2^
-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp2
lstm_79/whilelstm_79/while2\
,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp2Z
+lstm_80/lstm_cell_482/MatMul/ReadVariableOp+lstm_80/lstm_cell_482/MatMul/ReadVariableOp2^
-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp2
lstm_80/whilelstm_80/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2916823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_480_matmul_readvariableop_resource_0:	I
6while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_480_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_480_matmul_readvariableop_resource:	G
4while_lstm_cell_480_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_480_biasadd_readvariableop_resource:	¢*while/lstm_cell_480/BiasAdd/ReadVariableOp¢)while/lstm_cell_480/MatMul/ReadVariableOp¢+while/lstm_cell_480/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_480/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_480/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_480/addAddV2$while/lstm_cell_480/MatMul:product:0&while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_480/BiasAddBiasAddwhile/lstm_cell_480/add:z:02while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_480/splitSplit,while/lstm_cell_480/split/split_dim:output:0$while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_480/SigmoidSigmoid"while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_1Sigmoid"while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mulMul!while/lstm_cell_480/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_480/ReluRelu"while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_1Mulwhile/lstm_cell_480/Sigmoid:y:0&while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/add_1AddV2while/lstm_cell_480/mul:z:0while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_2Sigmoid"while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_480/Relu_1Reluwhile/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_2Mul!while/lstm_cell_480/Sigmoid_2:y:0(while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_480/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_480/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_480/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_480/BiasAdd/ReadVariableOp*^while/lstm_cell_480/MatMul/ReadVariableOp,^while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_480_biasadd_readvariableop_resource5while_lstm_cell_480_biasadd_readvariableop_resource_0"n
4while_lstm_cell_480_matmul_1_readvariableop_resource6while_lstm_cell_480_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_480_matmul_readvariableop_resource4while_lstm_cell_480_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_480/BiasAdd/ReadVariableOp*while/lstm_cell_480/BiasAdd/ReadVariableOp2V
)while/lstm_cell_480/MatMul/ReadVariableOp)while/lstm_cell_480/MatMul/ReadVariableOp2Z
+while/lstm_cell_480/MatMul_1/ReadVariableOp+while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

ë
J__inference_sequential_26_layer_call_and_return_conditional_losses_2914933

inputs"
lstm_78_2914609:	"
lstm_78_2914611:	d
lstm_78_2914613:	"
lstm_79_2914759:	dÈ"
lstm_79_2914761:	2È
lstm_79_2914763:	È!
lstm_80_2914909:2(!
lstm_80_2914911:
(
lstm_80_2914913:("
dense_26_2914927:

dense_26_2914929:
identity¢ dense_26/StatefulPartitionedCall¢lstm_78/StatefulPartitionedCall¢lstm_79/StatefulPartitionedCall¢lstm_80/StatefulPartitionedCall
lstm_78/StatefulPartitionedCallStatefulPartitionedCallinputslstm_78_2914609lstm_78_2914611lstm_78_2914613*
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2914608¨
lstm_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_78/StatefulPartitionedCall:output:0lstm_79_2914759lstm_79_2914761lstm_79_2914763*
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2914758¤
lstm_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0lstm_80_2914909lstm_80_2914911lstm_80_2914913*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2914908
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_26_2914927dense_26_2914929*
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
E__inference_dense_26_layer_call_and_return_conditional_losses_2914926x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_26/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


è
lstm_78_while_cond_2916208,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3.
*lstm_78_while_less_lstm_78_strided_slice_1E
Alstm_78_while_lstm_78_while_cond_2916208___redundant_placeholder0E
Alstm_78_while_lstm_78_while_cond_2916208___redundant_placeholder1E
Alstm_78_while_lstm_78_while_cond_2916208___redundant_placeholder2E
Alstm_78_while_lstm_78_while_cond_2916208___redundant_placeholder3
lstm_78_while_identity

lstm_78/while/LessLesslstm_78_while_placeholder*lstm_78_while_less_lstm_78_strided_slice_1*
T0*
_output_shapes
: [
lstm_78/while/IdentityIdentitylstm_78/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_78_while_identitylstm_78/while/Identity:output:0*(
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
Í

J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914322

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
º
È
while_cond_2913839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2913839___redundant_placeholder05
1while_while_cond_2913839___redundant_placeholder15
1while_while_cond_2913839___redundant_placeholder25
1while_while_cond_2913839___redundant_placeholder3
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
§8

D__inference_lstm_80_layer_call_and_return_conditional_losses_2914259

inputs'
lstm_cell_482_2914177:2('
lstm_cell_482_2914179:
(#
lstm_cell_482_2914181:(
identity¢%lstm_cell_482/StatefulPartitionedCall¢while;
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
%lstm_cell_482/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_482_2914177lstm_cell_482_2914179lstm_cell_482_2914181*
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914176n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_482_2914177lstm_cell_482_2914179lstm_cell_482_2914181*
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
while_body_2914190*
condR
while_cond_2914189*K
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
NoOpNoOp&^lstm_cell_482/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_482/StatefulPartitionedCall%lstm_cell_482/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ýA
Ô

lstm_80_while_body_2916060,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3+
'lstm_80_while_lstm_80_strided_slice_1_0g
clstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0:2(P
>lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(K
=lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0:(
lstm_80_while_identity
lstm_80_while_identity_1
lstm_80_while_identity_2
lstm_80_while_identity_3
lstm_80_while_identity_4
lstm_80_while_identity_5)
%lstm_80_while_lstm_80_strided_slice_1e
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorL
:lstm_80_while_lstm_cell_482_matmul_readvariableop_resource:2(N
<lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource:
(I
;lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource:(¢2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp¢1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp¢3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0lstm_80_while_placeholderHlstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp<lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_80/while/lstm_cell_482/MatMulMatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp>lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_80/while/lstm_cell_482/MatMul_1MatMullstm_80_while_placeholder_2;lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_80/while/lstm_cell_482/addAddV2,lstm_80/while/lstm_cell_482/MatMul:product:0.lstm_80/while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp=lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_80/while/lstm_cell_482/BiasAddBiasAdd#lstm_80/while/lstm_cell_482/add:z:0:lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_80/while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_80/while/lstm_cell_482/splitSplit4lstm_80/while/lstm_cell_482/split/split_dim:output:0,lstm_80/while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_80/while/lstm_cell_482/SigmoidSigmoid*lstm_80/while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_80/while/lstm_cell_482/Sigmoid_1Sigmoid*lstm_80/while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_80/while/lstm_cell_482/mulMul)lstm_80/while/lstm_cell_482/Sigmoid_1:y:0lstm_80_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_80/while/lstm_cell_482/ReluRelu*lstm_80/while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_80/while/lstm_cell_482/mul_1Mul'lstm_80/while/lstm_cell_482/Sigmoid:y:0.lstm_80/while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_80/while/lstm_cell_482/add_1AddV2#lstm_80/while/lstm_cell_482/mul:z:0%lstm_80/while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_80/while/lstm_cell_482/Sigmoid_2Sigmoid*lstm_80/while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_80/while/lstm_cell_482/Relu_1Relu%lstm_80/while/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_80/while/lstm_cell_482/mul_2Mul)lstm_80/while/lstm_cell_482/Sigmoid_2:y:00lstm_80/while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_80_while_placeholder_1lstm_80_while_placeholder%lstm_80/while/lstm_cell_482/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_80/while/addAddV2lstm_80_while_placeholderlstm_80/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_80/while/add_1AddV2(lstm_80_while_lstm_80_while_loop_counterlstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_80/while/IdentityIdentitylstm_80/while/add_1:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 
lstm_80/while/Identity_1Identity.lstm_80_while_lstm_80_while_maximum_iterations^lstm_80/while/NoOp*
T0*
_output_shapes
: q
lstm_80/while/Identity_2Identitylstm_80/while/add:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 
lstm_80/while/Identity_3IdentityBlstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 
lstm_80/while/Identity_4Identity%lstm_80/while/lstm_cell_482/mul_2:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/while/Identity_5Identity%lstm_80/while/lstm_cell_482/add_1:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_80/while/NoOpNoOp3^lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2^lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp4^lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_80_while_identitylstm_80/while/Identity:output:0"=
lstm_80_while_identity_1!lstm_80/while/Identity_1:output:0"=
lstm_80_while_identity_2!lstm_80/while/Identity_2:output:0"=
lstm_80_while_identity_3!lstm_80/while/Identity_3:output:0"=
lstm_80_while_identity_4!lstm_80/while/Identity_4:output:0"=
lstm_80_while_identity_5!lstm_80/while/Identity_5:output:0"P
%lstm_80_while_lstm_80_strided_slice_1'lstm_80_while_lstm_80_strided_slice_1_0"|
;lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource=lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0"~
<lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource>lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0"z
:lstm_80_while_lstm_cell_482_matmul_readvariableop_resource<lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0"È
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2f
1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp2j
3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_78_layer_call_fn_2916588
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2913559|
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
´
ò
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915604
lstm_78_input"
lstm_78_2915577:	"
lstm_78_2915579:	d
lstm_78_2915581:	"
lstm_79_2915584:	dÈ"
lstm_79_2915586:	2È
lstm_79_2915588:	È!
lstm_80_2915591:2(!
lstm_80_2915593:
(
lstm_80_2915595:("
dense_26_2915598:

dense_26_2915600:
identity¢ dense_26/StatefulPartitionedCall¢lstm_78/StatefulPartitionedCall¢lstm_79/StatefulPartitionedCall¢lstm_80/StatefulPartitionedCall
lstm_78/StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputlstm_78_2915577lstm_78_2915579lstm_78_2915581*
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2914608¨
lstm_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_78/StatefulPartitionedCall:output:0lstm_79_2915584lstm_79_2915586lstm_79_2915588*
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2914758¤
lstm_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0lstm_80_2915591lstm_80_2915593lstm_80_2915595*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2914908
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_26_2915598dense_26_2915600*
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
E__inference_dense_26_layer_call_and_return_conditional_losses_2914926x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_26/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_78_input
áJ
¢
D__inference_lstm_78_layer_call_and_return_conditional_losses_2917193

inputs?
,lstm_cell_480_matmul_readvariableop_resource:	A
.lstm_cell_480_matmul_1_readvariableop_resource:	d<
-lstm_cell_480_biasadd_readvariableop_resource:	
identity¢$lstm_cell_480/BiasAdd/ReadVariableOp¢#lstm_cell_480/MatMul/ReadVariableOp¢%lstm_cell_480/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_480/MatMul/ReadVariableOpReadVariableOp,lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_480/MatMulMatMulstrided_slice_2:output:0+lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_480/MatMul_1MatMulzeros:output:0-lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_480/addAddV2lstm_cell_480/MatMul:product:0 lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_480/BiasAddBiasAddlstm_cell_480/add:z:0,lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_480/splitSplit&lstm_cell_480/split/split_dim:output:0lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_480/SigmoidSigmoidlstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_1Sigmoidlstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_480/mulMullstm_cell_480/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_480/ReluRelulstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_1Mullstm_cell_480/Sigmoid:y:0 lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_480/add_1AddV2lstm_cell_480/mul:z:0lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_2Sigmoidlstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_480/Relu_1Relulstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_2Mullstm_cell_480/Sigmoid_2:y:0"lstm_cell_480/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_480_matmul_readvariableop_resource.lstm_cell_480_matmul_1_readvariableop_resource-lstm_cell_480_biasadd_readvariableop_resource*
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
while_body_2917109*
condR
while_cond_2917108*K
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
NoOpNoOp%^lstm_cell_480/BiasAdd/ReadVariableOp$^lstm_cell_480/MatMul/ReadVariableOp&^lstm_cell_480/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_480/BiasAdd/ReadVariableOp$lstm_cell_480/BiasAdd/ReadVariableOp2J
#lstm_cell_480/MatMul/ReadVariableOp#lstm_cell_480/MatMul/ReadVariableOp2N
%lstm_cell_480/MatMul_1/ReadVariableOp%lstm_cell_480/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÊR

(sequential_26_lstm_79_while_body_2913180H
Dsequential_26_lstm_79_while_sequential_26_lstm_79_while_loop_counterN
Jsequential_26_lstm_79_while_sequential_26_lstm_79_while_maximum_iterations+
'sequential_26_lstm_79_while_placeholder-
)sequential_26_lstm_79_while_placeholder_1-
)sequential_26_lstm_79_while_placeholder_2-
)sequential_26_lstm_79_while_placeholder_3G
Csequential_26_lstm_79_while_sequential_26_lstm_79_strided_slice_1_0
sequential_26_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_79_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_26_lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈ_
Lsequential_26_lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_26_lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0:	È(
$sequential_26_lstm_79_while_identity*
&sequential_26_lstm_79_while_identity_1*
&sequential_26_lstm_79_while_identity_2*
&sequential_26_lstm_79_while_identity_3*
&sequential_26_lstm_79_while_identity_4*
&sequential_26_lstm_79_while_identity_5E
Asequential_26_lstm_79_while_sequential_26_lstm_79_strided_slice_1
}sequential_26_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_79_tensorarrayunstack_tensorlistfromtensor[
Hsequential_26_lstm_79_while_lstm_cell_481_matmul_readvariableop_resource:	dÈ]
Jsequential_26_lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈX
Isequential_26_lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource:	È¢@sequential_26/lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp¢?sequential_26/lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp¢Asequential_26/lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp
Msequential_26/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_26/lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_26_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_79_tensorarrayunstack_tensorlistfromtensor_0'sequential_26_lstm_79_while_placeholderVsequential_26/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0Ë
?sequential_26/lstm_79/while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOpJsequential_26_lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0þ
0sequential_26/lstm_79/while/lstm_cell_481/MatMulMatMulFsequential_26/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_26/lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÏ
Asequential_26/lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOpLsequential_26_lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0å
2sequential_26/lstm_79/while/lstm_cell_481/MatMul_1MatMul)sequential_26_lstm_79_while_placeholder_2Isequential_26/lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈã
-sequential_26/lstm_79/while/lstm_cell_481/addAddV2:sequential_26/lstm_79/while/lstm_cell_481/MatMul:product:0<sequential_26/lstm_79/while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÉ
@sequential_26/lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOpKsequential_26_lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_26/lstm_79/while/lstm_cell_481/BiasAddBiasAdd1sequential_26/lstm_79/while/lstm_cell_481/add:z:0Hsequential_26/lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ{
9sequential_26/lstm_79/while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_26/lstm_79/while/lstm_cell_481/splitSplitBsequential_26/lstm_79/while/lstm_cell_481/split/split_dim:output:0:sequential_26/lstm_79/while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¨
1sequential_26/lstm_79/while/lstm_cell_481/SigmoidSigmoid8sequential_26/lstm_79/while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_26/lstm_79/while/lstm_cell_481/Sigmoid_1Sigmoid8sequential_26/lstm_79/while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ê
-sequential_26/lstm_79/while/lstm_cell_481/mulMul7sequential_26/lstm_79/while/lstm_cell_481/Sigmoid_1:y:0)sequential_26_lstm_79_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
.sequential_26/lstm_79/while/lstm_cell_481/ReluRelu8sequential_26/lstm_79/while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ý
/sequential_26/lstm_79/while/lstm_cell_481/mul_1Mul5sequential_26/lstm_79/while/lstm_cell_481/Sigmoid:y:0<sequential_26/lstm_79/while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ò
/sequential_26/lstm_79/while/lstm_cell_481/add_1AddV21sequential_26/lstm_79/while/lstm_cell_481/mul:z:03sequential_26/lstm_79/while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_26/lstm_79/while/lstm_cell_481/Sigmoid_2Sigmoid8sequential_26/lstm_79/while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
0sequential_26/lstm_79/while/lstm_cell_481/Relu_1Relu3sequential_26/lstm_79/while/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2á
/sequential_26/lstm_79/while/lstm_cell_481/mul_2Mul7sequential_26/lstm_79/while/lstm_cell_481/Sigmoid_2:y:0>sequential_26/lstm_79/while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_26/lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_26_lstm_79_while_placeholder_1'sequential_26_lstm_79_while_placeholder3sequential_26/lstm_79/while/lstm_cell_481/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_26/lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_26/lstm_79/while/addAddV2'sequential_26_lstm_79_while_placeholder*sequential_26/lstm_79/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_26/lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_26/lstm_79/while/add_1AddV2Dsequential_26_lstm_79_while_sequential_26_lstm_79_while_loop_counter,sequential_26/lstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_26/lstm_79/while/IdentityIdentity%sequential_26/lstm_79/while/add_1:z:0!^sequential_26/lstm_79/while/NoOp*
T0*
_output_shapes
: Â
&sequential_26/lstm_79/while/Identity_1IdentityJsequential_26_lstm_79_while_sequential_26_lstm_79_while_maximum_iterations!^sequential_26/lstm_79/while/NoOp*
T0*
_output_shapes
: 
&sequential_26/lstm_79/while/Identity_2Identity#sequential_26/lstm_79/while/add:z:0!^sequential_26/lstm_79/while/NoOp*
T0*
_output_shapes
: È
&sequential_26/lstm_79/while/Identity_3IdentityPsequential_26/lstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_26/lstm_79/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_26/lstm_79/while/Identity_4Identity3sequential_26/lstm_79/while/lstm_cell_481/mul_2:z:0!^sequential_26/lstm_79/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¼
&sequential_26/lstm_79/while/Identity_5Identity3sequential_26/lstm_79/while/lstm_cell_481/add_1:z:0!^sequential_26/lstm_79/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2«
 sequential_26/lstm_79/while/NoOpNoOpA^sequential_26/lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp@^sequential_26/lstm_79/while/lstm_cell_481/MatMul/ReadVariableOpB^sequential_26/lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_26_lstm_79_while_identity-sequential_26/lstm_79/while/Identity:output:0"Y
&sequential_26_lstm_79_while_identity_1/sequential_26/lstm_79/while/Identity_1:output:0"Y
&sequential_26_lstm_79_while_identity_2/sequential_26/lstm_79/while/Identity_2:output:0"Y
&sequential_26_lstm_79_while_identity_3/sequential_26/lstm_79/while/Identity_3:output:0"Y
&sequential_26_lstm_79_while_identity_4/sequential_26/lstm_79/while/Identity_4:output:0"Y
&sequential_26_lstm_79_while_identity_5/sequential_26/lstm_79/while/Identity_5:output:0"
Isequential_26_lstm_79_while_lstm_cell_481_biasadd_readvariableop_resourceKsequential_26_lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0"
Jsequential_26_lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resourceLsequential_26_lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0"
Hsequential_26_lstm_79_while_lstm_cell_481_matmul_readvariableop_resourceJsequential_26_lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0"
Asequential_26_lstm_79_while_sequential_26_lstm_79_strided_slice_1Csequential_26_lstm_79_while_sequential_26_lstm_79_strided_slice_1_0"
}sequential_26_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_79_tensorarrayunstack_tensorlistfromtensorsequential_26_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
@sequential_26/lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp@sequential_26/lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2
?sequential_26/lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp?sequential_26/lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp2
Asequential_26/lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOpAsequential_26/lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
áJ
¢
D__inference_lstm_79_layer_call_and_return_conditional_losses_2915289

inputs?
,lstm_cell_481_matmul_readvariableop_resource:	dÈA
.lstm_cell_481_matmul_1_readvariableop_resource:	2È<
-lstm_cell_481_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_481/BiasAdd/ReadVariableOp¢#lstm_cell_481/MatMul/ReadVariableOp¢%lstm_cell_481/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_481/MatMul/ReadVariableOpReadVariableOp,lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_481/MatMulMatMulstrided_slice_2:output:0+lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_481/MatMul_1MatMulzeros:output:0-lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_481/addAddV2lstm_cell_481/MatMul:product:0 lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_481/BiasAddBiasAddlstm_cell_481/add:z:0,lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_481/splitSplit&lstm_cell_481/split/split_dim:output:0lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_481/SigmoidSigmoidlstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_1Sigmoidlstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_481/mulMullstm_cell_481/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_481/ReluRelulstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_1Mullstm_cell_481/Sigmoid:y:0 lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_481/add_1AddV2lstm_cell_481/mul:z:0lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_2Sigmoidlstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_481/Relu_1Relulstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_2Mullstm_cell_481/Sigmoid_2:y:0"lstm_cell_481/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_481_matmul_readvariableop_resource.lstm_cell_481_matmul_1_readvariableop_resource-lstm_cell_481_biasadd_readvariableop_resource*
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
while_body_2915205*
condR
while_cond_2915204*K
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
NoOpNoOp%^lstm_cell_481/BiasAdd/ReadVariableOp$^lstm_cell_481/MatMul/ReadVariableOp&^lstm_cell_481/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_481/BiasAdd/ReadVariableOp$lstm_cell_481/BiasAdd/ReadVariableOp2J
#lstm_cell_481/MatMul/ReadVariableOp#lstm_cell_481/MatMul/ReadVariableOp2N
%lstm_cell_481/MatMul_1/ReadVariableOp%lstm_cell_481/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
#
ñ
while_body_2913681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_480_2913705_0:	0
while_lstm_cell_480_2913707_0:	d,
while_lstm_cell_480_2913709_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_480_2913705:	.
while_lstm_cell_480_2913707:	d*
while_lstm_cell_480_2913709:	¢+while/lstm_cell_480/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_480/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_480_2913705_0while_lstm_cell_480_2913707_0while_lstm_cell_480_2913709_0*
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913622Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_480/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_480/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_480/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_480/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_480_2913705while_lstm_cell_480_2913705_0"<
while_lstm_cell_480_2913707while_lstm_cell_480_2913707_0"<
while_lstm_cell_480_2913709while_lstm_cell_480_2913709_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_480/StatefulPartitionedCall+while/lstm_cell_480/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2917439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_481_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_481_biasadd_readvariableop_resource:	È¢*while/lstm_cell_481/BiasAdd/ReadVariableOp¢)while/lstm_cell_481/MatMul/ReadVariableOp¢+while/lstm_cell_481/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_481/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_481/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_481/addAddV2$while/lstm_cell_481/MatMul:product:0&while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_481/BiasAddBiasAddwhile/lstm_cell_481/add:z:02while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_481/splitSplit,while/lstm_cell_481/split/split_dim:output:0$while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_481/SigmoidSigmoid"while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_1Sigmoid"while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mulMul!while/lstm_cell_481/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_481/ReluRelu"while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_1Mulwhile/lstm_cell_481/Sigmoid:y:0&while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/add_1AddV2while/lstm_cell_481/mul:z:0while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_2Sigmoid"while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_481/Relu_1Reluwhile/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_2Mul!while/lstm_cell_481/Sigmoid_2:y:0(while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_481/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_481/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_481/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_481/BiasAdd/ReadVariableOp*^while/lstm_cell_481/MatMul/ReadVariableOp,^while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_481_biasadd_readvariableop_resource5while_lstm_cell_481_biasadd_readvariableop_resource_0"n
4while_lstm_cell_481_matmul_1_readvariableop_resource6while_lstm_cell_481_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_481_matmul_readvariableop_resource4while_lstm_cell_481_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_481/BiasAdd/ReadVariableOp*while/lstm_cell_481/BiasAdd/ReadVariableOp2V
)while/lstm_cell_481/MatMul/ReadVariableOp)while/lstm_cell_481/MatMul/ReadVariableOp2Z
+while/lstm_cell_481/MatMul_1/ReadVariableOp+while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917380
inputs_0?
,lstm_cell_481_matmul_readvariableop_resource:	dÈA
.lstm_cell_481_matmul_1_readvariableop_resource:	2È<
-lstm_cell_481_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_481/BiasAdd/ReadVariableOp¢#lstm_cell_481/MatMul/ReadVariableOp¢%lstm_cell_481/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_481/MatMul/ReadVariableOpReadVariableOp,lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_481/MatMulMatMulstrided_slice_2:output:0+lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_481/MatMul_1MatMulzeros:output:0-lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_481/addAddV2lstm_cell_481/MatMul:product:0 lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_481/BiasAddBiasAddlstm_cell_481/add:z:0,lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_481/splitSplit&lstm_cell_481/split/split_dim:output:0lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_481/SigmoidSigmoidlstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_1Sigmoidlstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_481/mulMullstm_cell_481/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_481/ReluRelulstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_1Mullstm_cell_481/Sigmoid:y:0 lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_481/add_1AddV2lstm_cell_481/mul:z:0lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_2Sigmoidlstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_481/Relu_1Relulstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_2Mullstm_cell_481/Sigmoid_2:y:0"lstm_cell_481/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_481_matmul_readvariableop_resource.lstm_cell_481_matmul_1_readvariableop_resource-lstm_cell_481_biasadd_readvariableop_resource*
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
while_body_2917296*
condR
while_cond_2917295*K
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
NoOpNoOp%^lstm_cell_481/BiasAdd/ReadVariableOp$^lstm_cell_481/MatMul/ReadVariableOp&^lstm_cell_481/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_481/BiasAdd/ReadVariableOp$lstm_cell_481/BiasAdd/ReadVariableOp2J
#lstm_cell_481/MatMul/ReadVariableOp#lstm_cell_481/MatMul/ReadVariableOp2N
%lstm_cell_481/MatMul_1/ReadVariableOp%lstm_cell_481/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
º
È
while_cond_2915039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2915039___redundant_placeholder05
1while_while_cond_2915039___redundant_placeholder15
1while_while_cond_2915039___redundant_placeholder25
1while_while_cond_2915039___redundant_placeholder3
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
ÜJ

D__inference_lstm_80_layer_call_and_return_conditional_losses_2914908

inputs>
,lstm_cell_482_matmul_readvariableop_resource:2(@
.lstm_cell_482_matmul_1_readvariableop_resource:
(;
-lstm_cell_482_biasadd_readvariableop_resource:(
identity¢$lstm_cell_482/BiasAdd/ReadVariableOp¢#lstm_cell_482/MatMul/ReadVariableOp¢%lstm_cell_482/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_482/MatMul/ReadVariableOpReadVariableOp,lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_482/MatMulMatMulstrided_slice_2:output:0+lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_482/MatMul_1MatMulzeros:output:0-lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_482/addAddV2lstm_cell_482/MatMul:product:0 lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_482/BiasAddBiasAddlstm_cell_482/add:z:0,lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_482/splitSplit&lstm_cell_482/split/split_dim:output:0lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_482/SigmoidSigmoidlstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_1Sigmoidlstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_482/mulMullstm_cell_482/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_482/ReluRelulstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_1Mullstm_cell_482/Sigmoid:y:0 lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_482/add_1AddV2lstm_cell_482/mul:z:0lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_2Sigmoidlstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_482/Relu_1Relulstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_2Mullstm_cell_482/Sigmoid_2:y:0"lstm_cell_482/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_482_matmul_readvariableop_resource.lstm_cell_482_matmul_1_readvariableop_resource-lstm_cell_482_biasadd_readvariableop_resource*
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
while_body_2914824*
condR
while_cond_2914823*K
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
NoOpNoOp%^lstm_cell_482/BiasAdd/ReadVariableOp$^lstm_cell_482/MatMul/ReadVariableOp&^lstm_cell_482/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_482/BiasAdd/ReadVariableOp$lstm_cell_482/BiasAdd/ReadVariableOp2J
#lstm_cell_482/MatMul/ReadVariableOp#lstm_cell_482/MatMul/ReadVariableOp2N
%lstm_cell_482/MatMul_1/ReadVariableOp%lstm_cell_482/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¿


%__inference_signature_wrapper_2915669
lstm_78_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2913409o
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
_user_specified_namelstm_78_input
Ñ8
Ú
while_body_2917725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_481_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_481_biasadd_readvariableop_resource:	È¢*while/lstm_cell_481/BiasAdd/ReadVariableOp¢)while/lstm_cell_481/MatMul/ReadVariableOp¢+while/lstm_cell_481/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_481/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_481/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_481/addAddV2$while/lstm_cell_481/MatMul:product:0&while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_481/BiasAddBiasAddwhile/lstm_cell_481/add:z:02while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_481/splitSplit,while/lstm_cell_481/split/split_dim:output:0$while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_481/SigmoidSigmoid"while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_1Sigmoid"while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mulMul!while/lstm_cell_481/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_481/ReluRelu"while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_1Mulwhile/lstm_cell_481/Sigmoid:y:0&while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/add_1AddV2while/lstm_cell_481/mul:z:0while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_2Sigmoid"while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_481/Relu_1Reluwhile/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_2Mul!while/lstm_cell_481/Sigmoid_2:y:0(while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_481/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_481/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_481/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_481/BiasAdd/ReadVariableOp*^while/lstm_cell_481/MatMul/ReadVariableOp,^while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_481_biasadd_readvariableop_resource5while_lstm_cell_481_biasadd_readvariableop_resource_0"n
4while_lstm_cell_481_matmul_1_readvariableop_resource6while_lstm_cell_481_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_481_matmul_readvariableop_resource4while_lstm_cell_481_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_481/BiasAdd/ReadVariableOp*while/lstm_cell_481/BiasAdd/ReadVariableOp2V
)while/lstm_cell_481/MatMul/ReadVariableOp)while/lstm_cell_481/MatMul/ReadVariableOp2Z
+while/lstm_cell_481/MatMul_1/ReadVariableOp+while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
áJ
¢
D__inference_lstm_78_layer_call_and_return_conditional_losses_2917050

inputs?
,lstm_cell_480_matmul_readvariableop_resource:	A
.lstm_cell_480_matmul_1_readvariableop_resource:	d<
-lstm_cell_480_biasadd_readvariableop_resource:	
identity¢$lstm_cell_480/BiasAdd/ReadVariableOp¢#lstm_cell_480/MatMul/ReadVariableOp¢%lstm_cell_480/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_480/MatMul/ReadVariableOpReadVariableOp,lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_480/MatMulMatMulstrided_slice_2:output:0+lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_480/MatMul_1MatMulzeros:output:0-lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_480/addAddV2lstm_cell_480/MatMul:product:0 lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_480/BiasAddBiasAddlstm_cell_480/add:z:0,lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_480/splitSplit&lstm_cell_480/split/split_dim:output:0lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_480/SigmoidSigmoidlstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_1Sigmoidlstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_480/mulMullstm_cell_480/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_480/ReluRelulstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_1Mullstm_cell_480/Sigmoid:y:0 lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_480/add_1AddV2lstm_cell_480/mul:z:0lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_2Sigmoidlstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_480/Relu_1Relulstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_2Mullstm_cell_480/Sigmoid_2:y:0"lstm_cell_480/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_480_matmul_readvariableop_resource.lstm_cell_480_matmul_1_readvariableop_resource-lstm_cell_480_biasadd_readvariableop_resource*
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
while_body_2916966*
condR
while_cond_2916965*K
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
NoOpNoOp%^lstm_cell_480/BiasAdd/ReadVariableOp$^lstm_cell_480/MatMul/ReadVariableOp&^lstm_cell_480/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_480/BiasAdd/ReadVariableOp$lstm_cell_480/BiasAdd/ReadVariableOp2J
#lstm_cell_480/MatMul/ReadVariableOp#lstm_cell_480/MatMul/ReadVariableOp2N
%lstm_cell_480/MatMul_1/ReadVariableOp%lstm_cell_480/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
áJ
¢
D__inference_lstm_78_layer_call_and_return_conditional_losses_2915454

inputs?
,lstm_cell_480_matmul_readvariableop_resource:	A
.lstm_cell_480_matmul_1_readvariableop_resource:	d<
-lstm_cell_480_biasadd_readvariableop_resource:	
identity¢$lstm_cell_480/BiasAdd/ReadVariableOp¢#lstm_cell_480/MatMul/ReadVariableOp¢%lstm_cell_480/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_480/MatMul/ReadVariableOpReadVariableOp,lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_480/MatMulMatMulstrided_slice_2:output:0+lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_480/MatMul_1MatMulzeros:output:0-lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_480/addAddV2lstm_cell_480/MatMul:product:0 lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_480/BiasAddBiasAddlstm_cell_480/add:z:0,lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_480/splitSplit&lstm_cell_480/split/split_dim:output:0lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_480/SigmoidSigmoidlstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_1Sigmoidlstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_480/mulMullstm_cell_480/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_480/ReluRelulstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_1Mullstm_cell_480/Sigmoid:y:0 lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_480/add_1AddV2lstm_cell_480/mul:z:0lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_2Sigmoidlstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_480/Relu_1Relulstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_2Mullstm_cell_480/Sigmoid_2:y:0"lstm_cell_480/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_480_matmul_readvariableop_resource.lstm_cell_480_matmul_1_readvariableop_resource-lstm_cell_480_biasadd_readvariableop_resource*
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
while_body_2915370*
condR
while_cond_2915369*K
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
NoOpNoOp%^lstm_cell_480/BiasAdd/ReadVariableOp$^lstm_cell_480/MatMul/ReadVariableOp&^lstm_cell_480/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_480/BiasAdd/ReadVariableOp$lstm_cell_480/BiasAdd/ReadVariableOp2J
#lstm_cell_480/MatMul/ReadVariableOp#lstm_cell_480/MatMul/ReadVariableOp2N
%lstm_cell_480/MatMul_1/ReadVariableOp%lstm_cell_480/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2916680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_480_matmul_readvariableop_resource_0:	I
6while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_480_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_480_matmul_readvariableop_resource:	G
4while_lstm_cell_480_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_480_biasadd_readvariableop_resource:	¢*while/lstm_cell_480/BiasAdd/ReadVariableOp¢)while/lstm_cell_480/MatMul/ReadVariableOp¢+while/lstm_cell_480/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_480/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_480/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_480/addAddV2$while/lstm_cell_480/MatMul:product:0&while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_480/BiasAddBiasAddwhile/lstm_cell_480/add:z:02while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_480/splitSplit,while/lstm_cell_480/split/split_dim:output:0$while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_480/SigmoidSigmoid"while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_1Sigmoid"while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mulMul!while/lstm_cell_480/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_480/ReluRelu"while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_1Mulwhile/lstm_cell_480/Sigmoid:y:0&while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/add_1AddV2while/lstm_cell_480/mul:z:0while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_2Sigmoid"while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_480/Relu_1Reluwhile/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_2Mul!while/lstm_cell_480/Sigmoid_2:y:0(while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_480/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_480/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_480/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_480/BiasAdd/ReadVariableOp*^while/lstm_cell_480/MatMul/ReadVariableOp,^while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_480_biasadd_readvariableop_resource5while_lstm_cell_480_biasadd_readvariableop_resource_0"n
4while_lstm_cell_480_matmul_1_readvariableop_resource6while_lstm_cell_480_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_480_matmul_readvariableop_resource4while_lstm_cell_480_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_480/BiasAdd/ReadVariableOp*while/lstm_cell_480/BiasAdd/ReadVariableOp2V
)while/lstm_cell_480/MatMul/ReadVariableOp)while/lstm_cell_480/MatMul/ReadVariableOp2Z
+while/lstm_cell_480/MatMul_1/ReadVariableOp+while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_80_while_cond_2916486,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3.
*lstm_80_while_less_lstm_80_strided_slice_1E
Alstm_80_while_lstm_80_while_cond_2916486___redundant_placeholder0E
Alstm_80_while_lstm_80_while_cond_2916486___redundant_placeholder1E
Alstm_80_while_lstm_80_while_cond_2916486___redundant_placeholder2E
Alstm_80_while_lstm_80_while_cond_2916486___redundant_placeholder3
lstm_80_while_identity

lstm_80/while/LessLesslstm_80_while_placeholder*lstm_80_while_less_lstm_80_strided_slice_1*
T0*
_output_shapes
: [
lstm_80/while/IdentityIdentitylstm_80/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_80_while_identitylstm_80/while/Identity:output:0*(
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
while_cond_2918197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2918197___redundant_placeholder05
1while_while_cond_2918197___redundant_placeholder15
1while_while_cond_2918197___redundant_placeholder25
1while_while_cond_2918197___redundant_placeholder3
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
«
¸
)__inference_lstm_79_layer_call_fn_2917204
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2913909|
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
ß

J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2918608

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
öV
é
 __inference__traced_save_2918881
file_prefix.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_78_lstm_cell_78_kernel_read_readvariableopD
@savev2_lstm_78_lstm_cell_78_recurrent_kernel_read_readvariableop8
4savev2_lstm_78_lstm_cell_78_bias_read_readvariableop:
6savev2_lstm_79_lstm_cell_79_kernel_read_readvariableopD
@savev2_lstm_79_lstm_cell_79_recurrent_kernel_read_readvariableop8
4savev2_lstm_79_lstm_cell_79_bias_read_readvariableop:
6savev2_lstm_80_lstm_cell_80_kernel_read_readvariableopD
@savev2_lstm_80_lstm_cell_80_recurrent_kernel_read_readvariableop8
4savev2_lstm_80_lstm_cell_80_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableopA
=savev2_adam_lstm_78_lstm_cell_78_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_78_lstm_cell_78_bias_m_read_readvariableopA
=savev2_adam_lstm_79_lstm_cell_79_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_79_lstm_cell_79_bias_m_read_readvariableopA
=savev2_adam_lstm_80_lstm_cell_80_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_80_lstm_cell_80_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableopA
=savev2_adam_lstm_78_lstm_cell_78_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_78_lstm_cell_78_bias_v_read_readvariableopA
=savev2_adam_lstm_79_lstm_cell_79_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_79_lstm_cell_79_bias_v_read_readvariableopA
=savev2_adam_lstm_80_lstm_cell_80_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_80_lstm_cell_80_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_78_lstm_cell_78_kernel_read_readvariableop@savev2_lstm_78_lstm_cell_78_recurrent_kernel_read_readvariableop4savev2_lstm_78_lstm_cell_78_bias_read_readvariableop6savev2_lstm_79_lstm_cell_79_kernel_read_readvariableop@savev2_lstm_79_lstm_cell_79_recurrent_kernel_read_readvariableop4savev2_lstm_79_lstm_cell_79_bias_read_readvariableop6savev2_lstm_80_lstm_cell_80_kernel_read_readvariableop@savev2_lstm_80_lstm_cell_80_recurrent_kernel_read_readvariableop4savev2_lstm_80_lstm_cell_80_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop=savev2_adam_lstm_78_lstm_cell_78_kernel_m_read_readvariableopGsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_78_lstm_cell_78_bias_m_read_readvariableop=savev2_adam_lstm_79_lstm_cell_79_kernel_m_read_readvariableopGsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_79_lstm_cell_79_bias_m_read_readvariableop=savev2_adam_lstm_80_lstm_cell_80_kernel_m_read_readvariableopGsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_80_lstm_cell_80_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop=savev2_adam_lstm_78_lstm_cell_78_kernel_v_read_readvariableopGsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_78_lstm_cell_78_bias_v_read_readvariableop=savev2_adam_lstm_79_lstm_cell_79_kernel_v_read_readvariableopGsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_79_lstm_cell_79_bias_v_read_readvariableop=savev2_adam_lstm_80_lstm_cell_80_kernel_v_read_readvariableopGsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_80_lstm_cell_80_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
K
¤
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917523
inputs_0?
,lstm_cell_481_matmul_readvariableop_resource:	dÈA
.lstm_cell_481_matmul_1_readvariableop_resource:	2È<
-lstm_cell_481_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_481/BiasAdd/ReadVariableOp¢#lstm_cell_481/MatMul/ReadVariableOp¢%lstm_cell_481/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_481/MatMul/ReadVariableOpReadVariableOp,lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_481/MatMulMatMulstrided_slice_2:output:0+lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_481/MatMul_1MatMulzeros:output:0-lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_481/addAddV2lstm_cell_481/MatMul:product:0 lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_481/BiasAddBiasAddlstm_cell_481/add:z:0,lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_481/splitSplit&lstm_cell_481/split/split_dim:output:0lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_481/SigmoidSigmoidlstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_1Sigmoidlstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_481/mulMullstm_cell_481/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_481/ReluRelulstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_1Mullstm_cell_481/Sigmoid:y:0 lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_481/add_1AddV2lstm_cell_481/mul:z:0lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_2Sigmoidlstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_481/Relu_1Relulstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_2Mullstm_cell_481/Sigmoid_2:y:0"lstm_cell_481/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_481_matmul_readvariableop_resource.lstm_cell_481_matmul_1_readvariableop_resource-lstm_cell_481_biasadd_readvariableop_resource*
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
while_body_2917439*
condR
while_cond_2917438*K
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
NoOpNoOp%^lstm_cell_481/BiasAdd/ReadVariableOp$^lstm_cell_481/MatMul/ReadVariableOp&^lstm_cell_481/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_481/BiasAdd/ReadVariableOp$lstm_cell_481/BiasAdd/ReadVariableOp2J
#lstm_cell_481/MatMul/ReadVariableOp#lstm_cell_481/MatMul/ReadVariableOp2N
%lstm_cell_481/MatMul_1/ReadVariableOp%lstm_cell_481/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
«
¸
)__inference_lstm_79_layer_call_fn_2917215
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2914100|
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
Ä8
Ô
while_body_2914824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_482_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_482_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_482_matmul_readvariableop_resource:2(F
4while_lstm_cell_482_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_482_biasadd_readvariableop_resource:(¢*while/lstm_cell_482/BiasAdd/ReadVariableOp¢)while/lstm_cell_482/MatMul/ReadVariableOp¢+while/lstm_cell_482/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_482/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_482/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_482/addAddV2$while/lstm_cell_482/MatMul:product:0&while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_482/BiasAddBiasAddwhile/lstm_cell_482/add:z:02while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_482/splitSplit,while/lstm_cell_482/split/split_dim:output:0$while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_482/SigmoidSigmoid"while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_1Sigmoid"while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mulMul!while/lstm_cell_482/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_482/ReluRelu"while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_1Mulwhile/lstm_cell_482/Sigmoid:y:0&while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/add_1AddV2while/lstm_cell_482/mul:z:0while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_2Sigmoid"while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_482/Relu_1Reluwhile/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_2Mul!while/lstm_cell_482/Sigmoid_2:y:0(while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_482/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_482/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_482/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_482/BiasAdd/ReadVariableOp*^while/lstm_cell_482/MatMul/ReadVariableOp,^while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_482_biasadd_readvariableop_resource5while_lstm_cell_482_biasadd_readvariableop_resource_0"n
4while_lstm_cell_482_matmul_1_readvariableop_resource6while_lstm_cell_482_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_482_matmul_readvariableop_resource4while_lstm_cell_482_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_482/BiasAdd/ReadVariableOp*while/lstm_cell_482/BiasAdd/ReadVariableOp2V
)while/lstm_cell_482/MatMul/ReadVariableOp)while/lstm_cell_482/MatMul/ReadVariableOp2Z
+while/lstm_cell_482/MatMul_1/ReadVariableOp+while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2917911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2917911___redundant_placeholder05
1while_while_cond_2917911___redundant_placeholder15
1while_while_cond_2917911___redundant_placeholder25
1while_while_cond_2917911___redundant_placeholder3
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
K
¡
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918139
inputs_0>
,lstm_cell_482_matmul_readvariableop_resource:2(@
.lstm_cell_482_matmul_1_readvariableop_resource:
(;
-lstm_cell_482_biasadd_readvariableop_resource:(
identity¢$lstm_cell_482/BiasAdd/ReadVariableOp¢#lstm_cell_482/MatMul/ReadVariableOp¢%lstm_cell_482/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_482/MatMul/ReadVariableOpReadVariableOp,lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_482/MatMulMatMulstrided_slice_2:output:0+lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_482/MatMul_1MatMulzeros:output:0-lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_482/addAddV2lstm_cell_482/MatMul:product:0 lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_482/BiasAddBiasAddlstm_cell_482/add:z:0,lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_482/splitSplit&lstm_cell_482/split/split_dim:output:0lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_482/SigmoidSigmoidlstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_1Sigmoidlstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_482/mulMullstm_cell_482/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_482/ReluRelulstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_1Mullstm_cell_482/Sigmoid:y:0 lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_482/add_1AddV2lstm_cell_482/mul:z:0lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_2Sigmoidlstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_482/Relu_1Relulstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_2Mullstm_cell_482/Sigmoid_2:y:0"lstm_cell_482/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_482_matmul_readvariableop_resource.lstm_cell_482_matmul_1_readvariableop_resource-lstm_cell_482_biasadd_readvariableop_resource*
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
while_body_2918055*
condR
while_cond_2918054*K
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
NoOpNoOp%^lstm_cell_482/BiasAdd/ReadVariableOp$^lstm_cell_482/MatMul/ReadVariableOp&^lstm_cell_482/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_482/BiasAdd/ReadVariableOp$lstm_cell_482/BiasAdd/ReadVariableOp2J
#lstm_cell_482/MatMul/ReadVariableOp#lstm_cell_482/MatMul/ReadVariableOp2N
%lstm_cell_482/MatMul_1/ReadVariableOp%lstm_cell_482/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0

¶
)__inference_lstm_79_layer_call_fn_2917237

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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2915289s
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


è
lstm_79_while_cond_2915920,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3.
*lstm_79_while_less_lstm_79_strided_slice_1E
Alstm_79_while_lstm_79_while_cond_2915920___redundant_placeholder0E
Alstm_79_while_lstm_79_while_cond_2915920___redundant_placeholder1E
Alstm_79_while_lstm_79_while_cond_2915920___redundant_placeholder2E
Alstm_79_while_lstm_79_while_cond_2915920___redundant_placeholder3
lstm_79_while_identity

lstm_79/while/LessLesslstm_79_while_placeholder*lstm_79_while_less_lstm_79_strided_slice_1*
T0*
_output_shapes
: [
lstm_79/while/IdentityIdentitylstm_79/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_79_while_identitylstm_79/while/Identity:output:0*(
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
while_cond_2914523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2914523___redundant_placeholder05
1while_while_cond_2914523___redundant_placeholder15
1while_while_cond_2914523___redundant_placeholder25
1while_while_cond_2914523___redundant_placeholder3
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
while_body_2916966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_480_matmul_readvariableop_resource_0:	I
6while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_480_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_480_matmul_readvariableop_resource:	G
4while_lstm_cell_480_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_480_biasadd_readvariableop_resource:	¢*while/lstm_cell_480/BiasAdd/ReadVariableOp¢)while/lstm_cell_480/MatMul/ReadVariableOp¢+while/lstm_cell_480/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_480/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_480/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_480/addAddV2$while/lstm_cell_480/MatMul:product:0&while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_480/BiasAddBiasAddwhile/lstm_cell_480/add:z:02while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_480/splitSplit,while/lstm_cell_480/split/split_dim:output:0$while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_480/SigmoidSigmoid"while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_1Sigmoid"while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mulMul!while/lstm_cell_480/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_480/ReluRelu"while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_1Mulwhile/lstm_cell_480/Sigmoid:y:0&while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/add_1AddV2while/lstm_cell_480/mul:z:0while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_2Sigmoid"while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_480/Relu_1Reluwhile/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_2Mul!while/lstm_cell_480/Sigmoid_2:y:0(while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_480/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_480/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_480/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_480/BiasAdd/ReadVariableOp*^while/lstm_cell_480/MatMul/ReadVariableOp,^while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_480_biasadd_readvariableop_resource5while_lstm_cell_480_biasadd_readvariableop_resource_0"n
4while_lstm_cell_480_matmul_1_readvariableop_resource6while_lstm_cell_480_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_480_matmul_readvariableop_resource4while_lstm_cell_480_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_480/BiasAdd/ReadVariableOp*while/lstm_cell_480/BiasAdd/ReadVariableOp2V
)while/lstm_cell_480/MatMul/ReadVariableOp)while/lstm_cell_480/MatMul/ReadVariableOp2Z
+while/lstm_cell_480/MatMul_1/ReadVariableOp+while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2914381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_482_2914405_0:2(/
while_lstm_cell_482_2914407_0:
(+
while_lstm_cell_482_2914409_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_482_2914405:2(-
while_lstm_cell_482_2914407:
()
while_lstm_cell_482_2914409:(¢+while/lstm_cell_482/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_482/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_482_2914405_0while_lstm_cell_482_2914407_0while_lstm_cell_482_2914409_0*
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914322Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_482/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_482/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_482/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_482/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_482_2914405while_lstm_cell_482_2914405_0"<
while_lstm_cell_482_2914407while_lstm_cell_482_2914407_0"<
while_lstm_cell_482_2914409while_lstm_cell_482_2914409_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_482/StatefulPartitionedCall+while/lstm_cell_482/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ü


/__inference_sequential_26_layer_call_fn_2915723

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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915522o
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
º
È
while_cond_2914189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2914189___redundant_placeholder05
1while_while_cond_2914189___redundant_placeholder15
1while_while_cond_2914189___redundant_placeholder25
1while_while_cond_2914189___redundant_placeholder3
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
while_cond_2914030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2914030___redundant_placeholder05
1while_while_cond_2914030___redundant_placeholder15
1while_while_cond_2914030___redundant_placeholder25
1while_while_cond_2914030___redundant_placeholder3
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
ì
õ
/__inference_lstm_cell_482_layer_call_fn_2918674

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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914322o
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
º
È
while_cond_2916822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2916822___redundant_placeholder05
1while_while_cond_2916822___redundant_placeholder15
1while_while_cond_2916822___redundant_placeholder25
1while_while_cond_2916822___redundant_placeholder3
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918282

inputs>
,lstm_cell_482_matmul_readvariableop_resource:2(@
.lstm_cell_482_matmul_1_readvariableop_resource:
(;
-lstm_cell_482_biasadd_readvariableop_resource:(
identity¢$lstm_cell_482/BiasAdd/ReadVariableOp¢#lstm_cell_482/MatMul/ReadVariableOp¢%lstm_cell_482/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_482/MatMul/ReadVariableOpReadVariableOp,lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_482/MatMulMatMulstrided_slice_2:output:0+lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_482/MatMul_1MatMulzeros:output:0-lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_482/addAddV2lstm_cell_482/MatMul:product:0 lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_482/BiasAddBiasAddlstm_cell_482/add:z:0,lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_482/splitSplit&lstm_cell_482/split/split_dim:output:0lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_482/SigmoidSigmoidlstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_1Sigmoidlstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_482/mulMullstm_cell_482/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_482/ReluRelulstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_1Mullstm_cell_482/Sigmoid:y:0 lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_482/add_1AddV2lstm_cell_482/mul:z:0lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_2Sigmoidlstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_482/Relu_1Relulstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_2Mullstm_cell_482/Sigmoid_2:y:0"lstm_cell_482/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_482_matmul_readvariableop_resource.lstm_cell_482_matmul_1_readvariableop_resource-lstm_cell_482_biasadd_readvariableop_resource*
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
while_body_2918198*
condR
while_cond_2918197*K
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
NoOpNoOp%^lstm_cell_482/BiasAdd/ReadVariableOp$^lstm_cell_482/MatMul/ReadVariableOp&^lstm_cell_482/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_482/BiasAdd/ReadVariableOp$lstm_cell_482/BiasAdd/ReadVariableOp2J
#lstm_cell_482/MatMul/ReadVariableOp#lstm_cell_482/MatMul/ReadVariableOp2N
%lstm_cell_482/MatMul_1/ReadVariableOp%lstm_cell_482/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
K
¤
D__inference_lstm_78_layer_call_and_return_conditional_losses_2916764
inputs_0?
,lstm_cell_480_matmul_readvariableop_resource:	A
.lstm_cell_480_matmul_1_readvariableop_resource:	d<
-lstm_cell_480_biasadd_readvariableop_resource:	
identity¢$lstm_cell_480/BiasAdd/ReadVariableOp¢#lstm_cell_480/MatMul/ReadVariableOp¢%lstm_cell_480/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_480/MatMul/ReadVariableOpReadVariableOp,lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_480/MatMulMatMulstrided_slice_2:output:0+lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_480/MatMul_1MatMulzeros:output:0-lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_480/addAddV2lstm_cell_480/MatMul:product:0 lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_480/BiasAddBiasAddlstm_cell_480/add:z:0,lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_480/splitSplit&lstm_cell_480/split/split_dim:output:0lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_480/SigmoidSigmoidlstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_1Sigmoidlstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_480/mulMullstm_cell_480/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_480/ReluRelulstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_1Mullstm_cell_480/Sigmoid:y:0 lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_480/add_1AddV2lstm_cell_480/mul:z:0lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_2Sigmoidlstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_480/Relu_1Relulstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_2Mullstm_cell_480/Sigmoid_2:y:0"lstm_cell_480/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_480_matmul_readvariableop_resource.lstm_cell_480_matmul_1_readvariableop_resource-lstm_cell_480_biasadd_readvariableop_resource*
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
while_body_2916680*
condR
while_cond_2916679*K
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
NoOpNoOp%^lstm_cell_480/BiasAdd/ReadVariableOp$^lstm_cell_480/MatMul/ReadVariableOp&^lstm_cell_480/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_480/BiasAdd/ReadVariableOp$lstm_cell_480/BiasAdd/ReadVariableOp2J
#lstm_cell_480/MatMul/ReadVariableOp#lstm_cell_480/MatMul/ReadVariableOp2N
%lstm_cell_480/MatMul_1/ReadVariableOp%lstm_cell_480/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ä8
Ô
while_body_2918055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_482_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_482_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_482_matmul_readvariableop_resource:2(F
4while_lstm_cell_482_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_482_biasadd_readvariableop_resource:(¢*while/lstm_cell_482/BiasAdd/ReadVariableOp¢)while/lstm_cell_482/MatMul/ReadVariableOp¢+while/lstm_cell_482/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_482/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_482/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_482/addAddV2$while/lstm_cell_482/MatMul:product:0&while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_482/BiasAddBiasAddwhile/lstm_cell_482/add:z:02while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_482/splitSplit,while/lstm_cell_482/split/split_dim:output:0$while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_482/SigmoidSigmoid"while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_1Sigmoid"while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mulMul!while/lstm_cell_482/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_482/ReluRelu"while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_1Mulwhile/lstm_cell_482/Sigmoid:y:0&while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/add_1AddV2while/lstm_cell_482/mul:z:0while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_2Sigmoid"while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_482/Relu_1Reluwhile/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_2Mul!while/lstm_cell_482/Sigmoid_2:y:0(while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_482/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_482/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_482/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_482/BiasAdd/ReadVariableOp*^while/lstm_cell_482/MatMul/ReadVariableOp,^while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_482_biasadd_readvariableop_resource5while_lstm_cell_482_biasadd_readvariableop_resource_0"n
4while_lstm_cell_482_matmul_1_readvariableop_resource6while_lstm_cell_482_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_482_matmul_readvariableop_resource4while_lstm_cell_482_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_482/BiasAdd/ReadVariableOp*while/lstm_cell_482/BiasAdd/ReadVariableOp2V
)while/lstm_cell_482/MatMul/ReadVariableOp)while/lstm_cell_482/MatMul/ReadVariableOp2Z
+while/lstm_cell_482/MatMul_1/ReadVariableOp+while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
£

(sequential_26_lstm_79_while_cond_2913179H
Dsequential_26_lstm_79_while_sequential_26_lstm_79_while_loop_counterN
Jsequential_26_lstm_79_while_sequential_26_lstm_79_while_maximum_iterations+
'sequential_26_lstm_79_while_placeholder-
)sequential_26_lstm_79_while_placeholder_1-
)sequential_26_lstm_79_while_placeholder_2-
)sequential_26_lstm_79_while_placeholder_3J
Fsequential_26_lstm_79_while_less_sequential_26_lstm_79_strided_slice_1a
]sequential_26_lstm_79_while_sequential_26_lstm_79_while_cond_2913179___redundant_placeholder0a
]sequential_26_lstm_79_while_sequential_26_lstm_79_while_cond_2913179___redundant_placeholder1a
]sequential_26_lstm_79_while_sequential_26_lstm_79_while_cond_2913179___redundant_placeholder2a
]sequential_26_lstm_79_while_sequential_26_lstm_79_while_cond_2913179___redundant_placeholder3(
$sequential_26_lstm_79_while_identity
º
 sequential_26/lstm_79/while/LessLess'sequential_26_lstm_79_while_placeholderFsequential_26_lstm_79_while_less_sequential_26_lstm_79_strided_slice_1*
T0*
_output_shapes
: w
$sequential_26/lstm_79/while/IdentityIdentity$sequential_26/lstm_79/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_26_lstm_79_while_identity-sequential_26/lstm_79/while/Identity:output:0*(
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
ñ

¢
/__inference_sequential_26_layer_call_fn_2914958
lstm_78_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2914933o
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
_user_specified_namelstm_78_input
áJ
¢
D__inference_lstm_78_layer_call_and_return_conditional_losses_2914608

inputs?
,lstm_cell_480_matmul_readvariableop_resource:	A
.lstm_cell_480_matmul_1_readvariableop_resource:	d<
-lstm_cell_480_biasadd_readvariableop_resource:	
identity¢$lstm_cell_480/BiasAdd/ReadVariableOp¢#lstm_cell_480/MatMul/ReadVariableOp¢%lstm_cell_480/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_480/MatMul/ReadVariableOpReadVariableOp,lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_480/MatMulMatMulstrided_slice_2:output:0+lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_480/MatMul_1MatMulzeros:output:0-lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_480/addAddV2lstm_cell_480/MatMul:product:0 lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_480/BiasAddBiasAddlstm_cell_480/add:z:0,lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_480/splitSplit&lstm_cell_480/split/split_dim:output:0lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_480/SigmoidSigmoidlstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_1Sigmoidlstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_480/mulMullstm_cell_480/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_480/ReluRelulstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_1Mullstm_cell_480/Sigmoid:y:0 lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_480/add_1AddV2lstm_cell_480/mul:z:0lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_2Sigmoidlstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_480/Relu_1Relulstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_2Mullstm_cell_480/Sigmoid_2:y:0"lstm_cell_480/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_480_matmul_readvariableop_resource.lstm_cell_480_matmul_1_readvariableop_resource-lstm_cell_480_biasadd_readvariableop_resource*
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
while_body_2914524*
condR
while_cond_2914523*K
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
NoOpNoOp%^lstm_cell_480/BiasAdd/ReadVariableOp$^lstm_cell_480/MatMul/ReadVariableOp&^lstm_cell_480/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_480/BiasAdd/ReadVariableOp$lstm_cell_480/BiasAdd/ReadVariableOp2J
#lstm_cell_480/MatMul/ReadVariableOp#lstm_cell_480/MatMul/ReadVariableOp2N
%lstm_cell_480/MatMul_1/ReadVariableOp%lstm_cell_480/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

J__inference_sequential_26_layer_call_and_return_conditional_losses_2916150

inputsG
4lstm_78_lstm_cell_480_matmul_readvariableop_resource:	I
6lstm_78_lstm_cell_480_matmul_1_readvariableop_resource:	dD
5lstm_78_lstm_cell_480_biasadd_readvariableop_resource:	G
4lstm_79_lstm_cell_481_matmul_readvariableop_resource:	dÈI
6lstm_79_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈD
5lstm_79_lstm_cell_481_biasadd_readvariableop_resource:	ÈF
4lstm_80_lstm_cell_482_matmul_readvariableop_resource:2(H
6lstm_80_lstm_cell_482_matmul_1_readvariableop_resource:
(C
5lstm_80_lstm_cell_482_biasadd_readvariableop_resource:(9
'dense_26_matmul_readvariableop_resource:
6
(dense_26_biasadd_readvariableop_resource:
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOp¢,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp¢+lstm_78/lstm_cell_480/MatMul/ReadVariableOp¢-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp¢lstm_78/while¢,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp¢+lstm_79/lstm_cell_481/MatMul/ReadVariableOp¢-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp¢lstm_79/while¢,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp¢+lstm_80/lstm_cell_482/MatMul/ReadVariableOp¢-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp¢lstm_80/whileC
lstm_78/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_78/strided_sliceStridedSlicelstm_78/Shape:output:0$lstm_78/strided_slice/stack:output:0&lstm_78/strided_slice/stack_1:output:0&lstm_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_78/zeros/packedPacklstm_78/strided_slice:output:0lstm_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_78/zerosFilllstm_78/zeros/packed:output:0lstm_78/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_78/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_78/zeros_1/packedPacklstm_78/strided_slice:output:0!lstm_78/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_78/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_78/zeros_1Filllstm_78/zeros_1/packed:output:0lstm_78/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_78/transpose	Transposeinputslstm_78/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_78/Shape_1Shapelstm_78/transpose:y:0*
T0*
_output_shapes
:g
lstm_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_78/strided_slice_1StridedSlicelstm_78/Shape_1:output:0&lstm_78/strided_slice_1/stack:output:0(lstm_78/strided_slice_1/stack_1:output:0(lstm_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_78/TensorArrayV2TensorListReserve,lstm_78/TensorArrayV2/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_78/transpose:y:0Flstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_78/strided_slice_2StridedSlicelstm_78/transpose:y:0&lstm_78/strided_slice_2/stack:output:0(lstm_78/strided_slice_2/stack_1:output:0(lstm_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_78/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4lstm_78_lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_78/lstm_cell_480/MatMulMatMul lstm_78/strided_slice_2:output:03lstm_78/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6lstm_78_lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_78/lstm_cell_480/MatMul_1MatMullstm_78/zeros:output:05lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_78/lstm_cell_480/addAddV2&lstm_78/lstm_cell_480/MatMul:product:0(lstm_78/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5lstm_78_lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_78/lstm_cell_480/BiasAddBiasAddlstm_78/lstm_cell_480/add:z:04lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_78/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_78/lstm_cell_480/splitSplit.lstm_78/lstm_cell_480/split/split_dim:output:0&lstm_78/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_78/lstm_cell_480/SigmoidSigmoid$lstm_78/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/Sigmoid_1Sigmoid$lstm_78/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/mulMul#lstm_78/lstm_cell_480/Sigmoid_1:y:0lstm_78/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_78/lstm_cell_480/ReluRelu$lstm_78/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_78/lstm_cell_480/mul_1Mul!lstm_78/lstm_cell_480/Sigmoid:y:0(lstm_78/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/add_1AddV2lstm_78/lstm_cell_480/mul:z:0lstm_78/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/lstm_cell_480/Sigmoid_2Sigmoid$lstm_78/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_78/lstm_cell_480/Relu_1Relulstm_78/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_78/lstm_cell_480/mul_2Mul#lstm_78/lstm_cell_480/Sigmoid_2:y:0*lstm_78/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_78/TensorArrayV2_1TensorListReserve.lstm_78/TensorArrayV2_1/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_78/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_78/whileWhile#lstm_78/while/loop_counter:output:0)lstm_78/while/maximum_iterations:output:0lstm_78/time:output:0 lstm_78/TensorArrayV2_1:handle:0lstm_78/zeros:output:0lstm_78/zeros_1:output:0 lstm_78/strided_slice_1:output:0?lstm_78/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_78_lstm_cell_480_matmul_readvariableop_resource6lstm_78_lstm_cell_480_matmul_1_readvariableop_resource5lstm_78_lstm_cell_480_biasadd_readvariableop_resource*
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
lstm_78_while_body_2915782*&
condR
lstm_78_while_cond_2915781*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_78/TensorArrayV2Stack/TensorListStackTensorListStacklstm_78/while:output:3Alstm_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_78/strided_slice_3StridedSlice3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_78/strided_slice_3/stack:output:0(lstm_78/strided_slice_3/stack_1:output:0(lstm_78/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_78/transpose_1	Transpose3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_78/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_79/ShapeShapelstm_78/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_79/strided_sliceStridedSlicelstm_79/Shape:output:0$lstm_79/strided_slice/stack:output:0&lstm_79/strided_slice/stack_1:output:0&lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros/packedPacklstm_79/strided_slice:output:0lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_79/zerosFilllstm_79/zeros/packed:output:0lstm_79/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros_1/packedPacklstm_79/strided_slice:output:0!lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_79/zeros_1Filllstm_79/zeros_1/packed:output:0lstm_79/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_79/transpose	Transposelstm_78/transpose_1:y:0lstm_79/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_79/Shape_1Shapelstm_79/transpose:y:0*
T0*
_output_shapes
:g
lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_79/strided_slice_1StridedSlicelstm_79/Shape_1:output:0&lstm_79/strided_slice_1/stack:output:0(lstm_79/strided_slice_1/stack_1:output:0(lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_79/TensorArrayV2TensorListReserve,lstm_79/TensorArrayV2/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_79/transpose:y:0Flstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_79/strided_slice_2StridedSlicelstm_79/transpose:y:0&lstm_79/strided_slice_2/stack:output:0(lstm_79/strided_slice_2/stack_1:output:0(lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_79/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4lstm_79_lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_79/lstm_cell_481/MatMulMatMul lstm_79/strided_slice_2:output:03lstm_79/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6lstm_79_lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_79/lstm_cell_481/MatMul_1MatMullstm_79/zeros:output:05lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_79/lstm_cell_481/addAddV2&lstm_79/lstm_cell_481/MatMul:product:0(lstm_79/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5lstm_79_lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_79/lstm_cell_481/BiasAddBiasAddlstm_79/lstm_cell_481/add:z:04lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_79/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_79/lstm_cell_481/splitSplit.lstm_79/lstm_cell_481/split/split_dim:output:0&lstm_79/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_79/lstm_cell_481/SigmoidSigmoid$lstm_79/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/Sigmoid_1Sigmoid$lstm_79/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/mulMul#lstm_79/lstm_cell_481/Sigmoid_1:y:0lstm_79/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_79/lstm_cell_481/ReluRelu$lstm_79/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_79/lstm_cell_481/mul_1Mul!lstm_79/lstm_cell_481/Sigmoid:y:0(lstm_79/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/add_1AddV2lstm_79/lstm_cell_481/mul:z:0lstm_79/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/lstm_cell_481/Sigmoid_2Sigmoid$lstm_79/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_79/lstm_cell_481/Relu_1Relulstm_79/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_79/lstm_cell_481/mul_2Mul#lstm_79/lstm_cell_481/Sigmoid_2:y:0*lstm_79/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_79/TensorArrayV2_1TensorListReserve.lstm_79/TensorArrayV2_1/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_79/whileWhile#lstm_79/while/loop_counter:output:0)lstm_79/while/maximum_iterations:output:0lstm_79/time:output:0 lstm_79/TensorArrayV2_1:handle:0lstm_79/zeros:output:0lstm_79/zeros_1:output:0 lstm_79/strided_slice_1:output:0?lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_79_lstm_cell_481_matmul_readvariableop_resource6lstm_79_lstm_cell_481_matmul_1_readvariableop_resource5lstm_79_lstm_cell_481_biasadd_readvariableop_resource*
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
lstm_79_while_body_2915921*&
condR
lstm_79_while_cond_2915920*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_79/TensorArrayV2Stack/TensorListStackTensorListStacklstm_79/while:output:3Alstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_79/strided_slice_3StridedSlice3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_79/strided_slice_3/stack:output:0(lstm_79/strided_slice_3/stack_1:output:0(lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_79/transpose_1	Transpose3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_79/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_80/ShapeShapelstm_79/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_80/strided_sliceStridedSlicelstm_80/Shape:output:0$lstm_80/strided_slice/stack:output:0&lstm_80/strided_slice/stack_1:output:0&lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_80/zeros/packedPacklstm_80/strided_slice:output:0lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_80/zerosFilllstm_80/zeros/packed:output:0lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_80/zeros_1/packedPacklstm_80/strided_slice:output:0!lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_80/zeros_1Filllstm_80/zeros_1/packed:output:0lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_80/transpose	Transposelstm_79/transpose_1:y:0lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_80/Shape_1Shapelstm_80/transpose:y:0*
T0*
_output_shapes
:g
lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_80/strided_slice_1StridedSlicelstm_80/Shape_1:output:0&lstm_80/strided_slice_1/stack:output:0(lstm_80/strided_slice_1/stack_1:output:0(lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_80/TensorArrayV2TensorListReserve,lstm_80/TensorArrayV2/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_80/transpose:y:0Flstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_80/strided_slice_2StridedSlicelstm_80/transpose:y:0&lstm_80/strided_slice_2/stack:output:0(lstm_80/strided_slice_2/stack_1:output:0(lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_80/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4lstm_80_lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_80/lstm_cell_482/MatMulMatMul lstm_80/strided_slice_2:output:03lstm_80/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6lstm_80_lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_80/lstm_cell_482/MatMul_1MatMullstm_80/zeros:output:05lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_80/lstm_cell_482/addAddV2&lstm_80/lstm_cell_482/MatMul:product:0(lstm_80/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5lstm_80_lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_80/lstm_cell_482/BiasAddBiasAddlstm_80/lstm_cell_482/add:z:04lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_80/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_80/lstm_cell_482/splitSplit.lstm_80/lstm_cell_482/split/split_dim:output:0&lstm_80/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_80/lstm_cell_482/SigmoidSigmoid$lstm_80/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/Sigmoid_1Sigmoid$lstm_80/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/mulMul#lstm_80/lstm_cell_482/Sigmoid_1:y:0lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_80/lstm_cell_482/ReluRelu$lstm_80/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_80/lstm_cell_482/mul_1Mul!lstm_80/lstm_cell_482/Sigmoid:y:0(lstm_80/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/add_1AddV2lstm_80/lstm_cell_482/mul:z:0lstm_80/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/lstm_cell_482/Sigmoid_2Sigmoid$lstm_80/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_80/lstm_cell_482/Relu_1Relulstm_80/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_80/lstm_cell_482/mul_2Mul#lstm_80/lstm_cell_482/Sigmoid_2:y:0*lstm_80/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_80/TensorArrayV2_1TensorListReserve.lstm_80/TensorArrayV2_1/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_80/whileWhile#lstm_80/while/loop_counter:output:0)lstm_80/while/maximum_iterations:output:0lstm_80/time:output:0 lstm_80/TensorArrayV2_1:handle:0lstm_80/zeros:output:0lstm_80/zeros_1:output:0 lstm_80/strided_slice_1:output:0?lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_80_lstm_cell_482_matmul_readvariableop_resource6lstm_80_lstm_cell_482_matmul_1_readvariableop_resource5lstm_80_lstm_cell_482_biasadd_readvariableop_resource*
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
lstm_80_while_body_2916060*&
condR
lstm_80_while_cond_2916059*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_80/TensorArrayV2Stack/TensorListStackTensorListStacklstm_80/while:output:3Alstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_80/strided_slice_3StridedSlice3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_80/strided_slice_3/stack:output:0(lstm_80/strided_slice_3/stack_1:output:0(lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_80/transpose_1	Transpose3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_26/MatMulMatMul lstm_80/strided_slice_3:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp-^lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp,^lstm_78/lstm_cell_480/MatMul/ReadVariableOp.^lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp^lstm_78/while-^lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp,^lstm_79/lstm_cell_481/MatMul/ReadVariableOp.^lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp^lstm_79/while-^lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp,^lstm_80/lstm_cell_482/MatMul/ReadVariableOp.^lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp^lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2\
,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp,lstm_78/lstm_cell_480/BiasAdd/ReadVariableOp2Z
+lstm_78/lstm_cell_480/MatMul/ReadVariableOp+lstm_78/lstm_cell_480/MatMul/ReadVariableOp2^
-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp-lstm_78/lstm_cell_480/MatMul_1/ReadVariableOp2
lstm_78/whilelstm_78/while2\
,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp,lstm_79/lstm_cell_481/BiasAdd/ReadVariableOp2Z
+lstm_79/lstm_cell_481/MatMul/ReadVariableOp+lstm_79/lstm_cell_481/MatMul/ReadVariableOp2^
-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp-lstm_79/lstm_cell_481/MatMul_1/ReadVariableOp2
lstm_79/whilelstm_79/while2\
,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp,lstm_80/lstm_cell_482/BiasAdd/ReadVariableOp2Z
+lstm_80/lstm_cell_482/MatMul/ReadVariableOp+lstm_80/lstm_cell_482/MatMul/ReadVariableOp2^
-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp-lstm_80/lstm_cell_482/MatMul_1/ReadVariableOp2
lstm_80/whilelstm_80/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_2917438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2917438___redundant_placeholder05
1while_while_cond_2917438___redundant_placeholder15
1while_while_cond_2917438___redundant_placeholder25
1while_while_cond_2917438___redundant_placeholder3
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
while_body_2915370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_480_matmul_readvariableop_resource_0:	I
6while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_480_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_480_matmul_readvariableop_resource:	G
4while_lstm_cell_480_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_480_biasadd_readvariableop_resource:	¢*while/lstm_cell_480/BiasAdd/ReadVariableOp¢)while/lstm_cell_480/MatMul/ReadVariableOp¢+while/lstm_cell_480/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_480/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_480/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_480/addAddV2$while/lstm_cell_480/MatMul:product:0&while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_480/BiasAddBiasAddwhile/lstm_cell_480/add:z:02while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_480/splitSplit,while/lstm_cell_480/split/split_dim:output:0$while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_480/SigmoidSigmoid"while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_1Sigmoid"while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mulMul!while/lstm_cell_480/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_480/ReluRelu"while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_1Mulwhile/lstm_cell_480/Sigmoid:y:0&while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/add_1AddV2while/lstm_cell_480/mul:z:0while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_2Sigmoid"while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_480/Relu_1Reluwhile/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_2Mul!while/lstm_cell_480/Sigmoid_2:y:0(while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_480/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_480/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_480/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_480/BiasAdd/ReadVariableOp*^while/lstm_cell_480/MatMul/ReadVariableOp,^while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_480_biasadd_readvariableop_resource5while_lstm_cell_480_biasadd_readvariableop_resource_0"n
4while_lstm_cell_480_matmul_1_readvariableop_resource6while_lstm_cell_480_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_480_matmul_readvariableop_resource4while_lstm_cell_480_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_480/BiasAdd/ReadVariableOp*while/lstm_cell_480/BiasAdd/ReadVariableOp2V
)while/lstm_cell_480/MatMul/ReadVariableOp)while/lstm_cell_480/MatMul/ReadVariableOp2Z
+while/lstm_cell_480/MatMul_1/ReadVariableOp+while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
B
Ú

lstm_79_while_body_2916348,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3+
'lstm_79_while_lstm_79_strided_slice_1_0g
clstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈQ
>lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
lstm_79_while_identity
lstm_79_while_identity_1
lstm_79_while_identity_2
lstm_79_while_identity_3
lstm_79_while_identity_4
lstm_79_while_identity_5)
%lstm_79_while_lstm_79_strided_slice_1e
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorM
:lstm_79_while_lstm_cell_481_matmul_readvariableop_resource:	dÈO
<lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈJ
;lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource:	È¢2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp¢1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp¢3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0lstm_79_while_placeholderHlstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp<lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_79/while/lstm_cell_481/MatMulMatMul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp>lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_79/while/lstm_cell_481/MatMul_1MatMullstm_79_while_placeholder_2;lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_79/while/lstm_cell_481/addAddV2,lstm_79/while/lstm_cell_481/MatMul:product:0.lstm_79/while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp=lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_79/while/lstm_cell_481/BiasAddBiasAdd#lstm_79/while/lstm_cell_481/add:z:0:lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_79/while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_79/while/lstm_cell_481/splitSplit4lstm_79/while/lstm_cell_481/split/split_dim:output:0,lstm_79/while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_79/while/lstm_cell_481/SigmoidSigmoid*lstm_79/while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_79/while/lstm_cell_481/Sigmoid_1Sigmoid*lstm_79/while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_79/while/lstm_cell_481/mulMul)lstm_79/while/lstm_cell_481/Sigmoid_1:y:0lstm_79_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_79/while/lstm_cell_481/ReluRelu*lstm_79/while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_79/while/lstm_cell_481/mul_1Mul'lstm_79/while/lstm_cell_481/Sigmoid:y:0.lstm_79/while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_79/while/lstm_cell_481/add_1AddV2#lstm_79/while/lstm_cell_481/mul:z:0%lstm_79/while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_79/while/lstm_cell_481/Sigmoid_2Sigmoid*lstm_79/while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_79/while/lstm_cell_481/Relu_1Relu%lstm_79/while/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_79/while/lstm_cell_481/mul_2Mul)lstm_79/while/lstm_cell_481/Sigmoid_2:y:00lstm_79/while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_79_while_placeholder_1lstm_79_while_placeholder%lstm_79/while/lstm_cell_481/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_79/while/addAddV2lstm_79_while_placeholderlstm_79/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_79/while/add_1AddV2(lstm_79_while_lstm_79_while_loop_counterlstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_79/while/IdentityIdentitylstm_79/while/add_1:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 
lstm_79/while/Identity_1Identity.lstm_79_while_lstm_79_while_maximum_iterations^lstm_79/while/NoOp*
T0*
_output_shapes
: q
lstm_79/while/Identity_2Identitylstm_79/while/add:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 
lstm_79/while/Identity_3IdentityBlstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 
lstm_79/while/Identity_4Identity%lstm_79/while/lstm_cell_481/mul_2:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/while/Identity_5Identity%lstm_79/while/lstm_cell_481/add_1:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_79/while/NoOpNoOp3^lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2^lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp4^lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_79_while_identitylstm_79/while/Identity:output:0"=
lstm_79_while_identity_1!lstm_79/while/Identity_1:output:0"=
lstm_79_while_identity_2!lstm_79/while/Identity_2:output:0"=
lstm_79_while_identity_3!lstm_79/while/Identity_3:output:0"=
lstm_79_while_identity_4!lstm_79/while/Identity_4:output:0"=
lstm_79_while_identity_5!lstm_79/while/Identity_5:output:0"P
%lstm_79_while_lstm_79_strided_slice_1'lstm_79_while_lstm_79_strided_slice_1_0"|
;lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource=lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0"~
<lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource>lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0"z
:lstm_79_while_lstm_cell_481_matmul_readvariableop_resource<lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0"È
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2f
1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp2j
3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ñ8
Ú
while_body_2917582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_481_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_481_biasadd_readvariableop_resource:	È¢*while/lstm_cell_481/BiasAdd/ReadVariableOp¢)while/lstm_cell_481/MatMul/ReadVariableOp¢+while/lstm_cell_481/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_481/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_481/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_481/addAddV2$while/lstm_cell_481/MatMul:product:0&while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_481/BiasAddBiasAddwhile/lstm_cell_481/add:z:02while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_481/splitSplit,while/lstm_cell_481/split/split_dim:output:0$while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_481/SigmoidSigmoid"while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_1Sigmoid"while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mulMul!while/lstm_cell_481/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_481/ReluRelu"while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_1Mulwhile/lstm_cell_481/Sigmoid:y:0&while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/add_1AddV2while/lstm_cell_481/mul:z:0while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_2Sigmoid"while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_481/Relu_1Reluwhile/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_2Mul!while/lstm_cell_481/Sigmoid_2:y:0(while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_481/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_481/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_481/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_481/BiasAdd/ReadVariableOp*^while/lstm_cell_481/MatMul/ReadVariableOp,^while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_481_biasadd_readvariableop_resource5while_lstm_cell_481_biasadd_readvariableop_resource_0"n
4while_lstm_cell_481_matmul_1_readvariableop_resource6while_lstm_cell_481_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_481_matmul_readvariableop_resource4while_lstm_cell_481_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_481/BiasAdd/ReadVariableOp*while/lstm_cell_481/BiasAdd/ReadVariableOp2V
)while/lstm_cell_481/MatMul/ReadVariableOp)while/lstm_cell_481/MatMul/ReadVariableOp2Z
+while/lstm_cell_481/MatMul_1/ReadVariableOp+while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2916907
inputs_0?
,lstm_cell_480_matmul_readvariableop_resource:	A
.lstm_cell_480_matmul_1_readvariableop_resource:	d<
-lstm_cell_480_biasadd_readvariableop_resource:	
identity¢$lstm_cell_480/BiasAdd/ReadVariableOp¢#lstm_cell_480/MatMul/ReadVariableOp¢%lstm_cell_480/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_480/MatMul/ReadVariableOpReadVariableOp,lstm_cell_480_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_480/MatMulMatMulstrided_slice_2:output:0+lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_480_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_480/MatMul_1MatMulzeros:output:0-lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_480/addAddV2lstm_cell_480/MatMul:product:0 lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_480_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_480/BiasAddBiasAddlstm_cell_480/add:z:0,lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_480/splitSplit&lstm_cell_480/split/split_dim:output:0lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_480/SigmoidSigmoidlstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_1Sigmoidlstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_480/mulMullstm_cell_480/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_480/ReluRelulstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_1Mullstm_cell_480/Sigmoid:y:0 lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_480/add_1AddV2lstm_cell_480/mul:z:0lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_480/Sigmoid_2Sigmoidlstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_480/Relu_1Relulstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_480/mul_2Mullstm_cell_480/Sigmoid_2:y:0"lstm_cell_480/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_480_matmul_readvariableop_resource.lstm_cell_480_matmul_1_readvariableop_resource-lstm_cell_480_biasadd_readvariableop_resource*
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
while_body_2916823*
condR
while_cond_2916822*K
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
NoOpNoOp%^lstm_cell_480/BiasAdd/ReadVariableOp$^lstm_cell_480/MatMul/ReadVariableOp&^lstm_cell_480/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_480/BiasAdd/ReadVariableOp$lstm_cell_480/BiasAdd/ReadVariableOp2J
#lstm_cell_480/MatMul/ReadVariableOp#lstm_cell_480/MatMul/ReadVariableOp2N
%lstm_cell_480/MatMul_1/ReadVariableOp%lstm_cell_480/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ñ

¢
/__inference_sequential_26_layer_call_fn_2915574
lstm_78_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915522o
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
_user_specified_namelstm_78_input
ü£
à
#__inference__traced_restore_2919011
file_prefix2
 assignvariableop_dense_26_kernel:
.
 assignvariableop_1_dense_26_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_78_lstm_cell_78_kernel:	K
8assignvariableop_8_lstm_78_lstm_cell_78_recurrent_kernel:	d;
,assignvariableop_9_lstm_78_lstm_cell_78_bias:	B
/assignvariableop_10_lstm_79_lstm_cell_79_kernel:	dÈL
9assignvariableop_11_lstm_79_lstm_cell_79_recurrent_kernel:	2È<
-assignvariableop_12_lstm_79_lstm_cell_79_bias:	ÈA
/assignvariableop_13_lstm_80_lstm_cell_80_kernel:2(K
9assignvariableop_14_lstm_80_lstm_cell_80_recurrent_kernel:
(;
-assignvariableop_15_lstm_80_lstm_cell_80_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_26_kernel_m:
6
(assignvariableop_19_adam_dense_26_bias_m:I
6assignvariableop_20_adam_lstm_78_lstm_cell_78_kernel_m:	S
@assignvariableop_21_adam_lstm_78_lstm_cell_78_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_78_lstm_cell_78_bias_m:	I
6assignvariableop_23_adam_lstm_79_lstm_cell_79_kernel_m:	dÈS
@assignvariableop_24_adam_lstm_79_lstm_cell_79_recurrent_kernel_m:	2ÈC
4assignvariableop_25_adam_lstm_79_lstm_cell_79_bias_m:	ÈH
6assignvariableop_26_adam_lstm_80_lstm_cell_80_kernel_m:2(R
@assignvariableop_27_adam_lstm_80_lstm_cell_80_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_80_lstm_cell_80_bias_m:(<
*assignvariableop_29_adam_dense_26_kernel_v:
6
(assignvariableop_30_adam_dense_26_bias_v:I
6assignvariableop_31_adam_lstm_78_lstm_cell_78_kernel_v:	S
@assignvariableop_32_adam_lstm_78_lstm_cell_78_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_78_lstm_cell_78_bias_v:	I
6assignvariableop_34_adam_lstm_79_lstm_cell_79_kernel_v:	dÈS
@assignvariableop_35_adam_lstm_79_lstm_cell_79_recurrent_kernel_v:	2ÈC
4assignvariableop_36_adam_lstm_79_lstm_cell_79_bias_v:	ÈH
6assignvariableop_37_adam_lstm_80_lstm_cell_80_kernel_v:2(R
@assignvariableop_38_adam_lstm_80_lstm_cell_80_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_80_lstm_cell_80_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_26_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_26_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_78_lstm_cell_78_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_78_lstm_cell_78_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_78_lstm_cell_78_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_79_lstm_cell_79_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_79_lstm_cell_79_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_79_lstm_cell_79_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_80_lstm_cell_80_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_80_lstm_cell_80_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_80_lstm_cell_80_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_26_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_26_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_78_lstm_cell_78_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_78_lstm_cell_78_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_78_lstm_cell_78_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_79_lstm_cell_79_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_79_lstm_cell_79_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_79_lstm_cell_79_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_80_lstm_cell_80_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_80_lstm_cell_80_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_80_lstm_cell_80_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_26_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_26_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_78_lstm_cell_78_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_78_lstm_cell_78_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_78_lstm_cell_78_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_79_lstm_cell_79_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_79_lstm_cell_79_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_79_lstm_cell_79_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_80_lstm_cell_80_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_80_lstm_cell_80_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_80_lstm_cell_80_bias_vIdentity_39:output:0"/device:CPU:0*
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
ö
³
)__inference_lstm_80_layer_call_fn_2917842

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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2914908o
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
Ä

*__inference_dense_26_layer_call_fn_2918434

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
E__inference_dense_26_layer_call_and_return_conditional_losses_2914926o
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
£

(sequential_26_lstm_80_while_cond_2913318H
Dsequential_26_lstm_80_while_sequential_26_lstm_80_while_loop_counterN
Jsequential_26_lstm_80_while_sequential_26_lstm_80_while_maximum_iterations+
'sequential_26_lstm_80_while_placeholder-
)sequential_26_lstm_80_while_placeholder_1-
)sequential_26_lstm_80_while_placeholder_2-
)sequential_26_lstm_80_while_placeholder_3J
Fsequential_26_lstm_80_while_less_sequential_26_lstm_80_strided_slice_1a
]sequential_26_lstm_80_while_sequential_26_lstm_80_while_cond_2913318___redundant_placeholder0a
]sequential_26_lstm_80_while_sequential_26_lstm_80_while_cond_2913318___redundant_placeholder1a
]sequential_26_lstm_80_while_sequential_26_lstm_80_while_cond_2913318___redundant_placeholder2a
]sequential_26_lstm_80_while_sequential_26_lstm_80_while_cond_2913318___redundant_placeholder3(
$sequential_26_lstm_80_while_identity
º
 sequential_26/lstm_80/while/LessLess'sequential_26_lstm_80_while_placeholderFsequential_26_lstm_80_while_less_sequential_26_lstm_80_strided_slice_1*
T0*
_output_shapes
: w
$sequential_26/lstm_80/while/IdentityIdentity$sequential_26/lstm_80/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_26_lstm_80_while_identity-sequential_26/lstm_80/while/Identity:output:0*(
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
/__inference_lstm_cell_482_layer_call_fn_2918657

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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914176o
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
ýA
Ô

lstm_80_while_body_2916487,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3+
'lstm_80_while_lstm_80_strided_slice_1_0g
clstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0:2(P
>lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(K
=lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0:(
lstm_80_while_identity
lstm_80_while_identity_1
lstm_80_while_identity_2
lstm_80_while_identity_3
lstm_80_while_identity_4
lstm_80_while_identity_5)
%lstm_80_while_lstm_80_strided_slice_1e
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorL
:lstm_80_while_lstm_cell_482_matmul_readvariableop_resource:2(N
<lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource:
(I
;lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource:(¢2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp¢1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp¢3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0lstm_80_while_placeholderHlstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp<lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_80/while/lstm_cell_482/MatMulMatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp>lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_80/while/lstm_cell_482/MatMul_1MatMullstm_80_while_placeholder_2;lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_80/while/lstm_cell_482/addAddV2,lstm_80/while/lstm_cell_482/MatMul:product:0.lstm_80/while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp=lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_80/while/lstm_cell_482/BiasAddBiasAdd#lstm_80/while/lstm_cell_482/add:z:0:lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_80/while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_80/while/lstm_cell_482/splitSplit4lstm_80/while/lstm_cell_482/split/split_dim:output:0,lstm_80/while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_80/while/lstm_cell_482/SigmoidSigmoid*lstm_80/while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_80/while/lstm_cell_482/Sigmoid_1Sigmoid*lstm_80/while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_80/while/lstm_cell_482/mulMul)lstm_80/while/lstm_cell_482/Sigmoid_1:y:0lstm_80_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_80/while/lstm_cell_482/ReluRelu*lstm_80/while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_80/while/lstm_cell_482/mul_1Mul'lstm_80/while/lstm_cell_482/Sigmoid:y:0.lstm_80/while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_80/while/lstm_cell_482/add_1AddV2#lstm_80/while/lstm_cell_482/mul:z:0%lstm_80/while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_80/while/lstm_cell_482/Sigmoid_2Sigmoid*lstm_80/while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_80/while/lstm_cell_482/Relu_1Relu%lstm_80/while/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_80/while/lstm_cell_482/mul_2Mul)lstm_80/while/lstm_cell_482/Sigmoid_2:y:00lstm_80/while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_80_while_placeholder_1lstm_80_while_placeholder%lstm_80/while/lstm_cell_482/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_80/while/addAddV2lstm_80_while_placeholderlstm_80/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_80/while/add_1AddV2(lstm_80_while_lstm_80_while_loop_counterlstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_80/while/IdentityIdentitylstm_80/while/add_1:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 
lstm_80/while/Identity_1Identity.lstm_80_while_lstm_80_while_maximum_iterations^lstm_80/while/NoOp*
T0*
_output_shapes
: q
lstm_80/while/Identity_2Identitylstm_80/while/add:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 
lstm_80/while/Identity_3IdentityBlstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 
lstm_80/while/Identity_4Identity%lstm_80/while/lstm_cell_482/mul_2:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_80/while/Identity_5Identity%lstm_80/while/lstm_cell_482/add_1:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_80/while/NoOpNoOp3^lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2^lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp4^lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_80_while_identitylstm_80/while/Identity:output:0"=
lstm_80_while_identity_1!lstm_80/while/Identity_1:output:0"=
lstm_80_while_identity_2!lstm_80/while/Identity_2:output:0"=
lstm_80_while_identity_3!lstm_80/while/Identity_3:output:0"=
lstm_80_while_identity_4!lstm_80/while/Identity_4:output:0"=
lstm_80_while_identity_5!lstm_80/while/Identity_5:output:0"P
%lstm_80_while_lstm_80_strided_slice_1'lstm_80_while_lstm_80_strided_slice_1_0"|
;lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource=lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0"~
<lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource>lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0"z
:lstm_80_while_lstm_cell_482_matmul_readvariableop_resource<lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0"È
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2f
1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp1lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp2j
3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp3lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÊR

(sequential_26_lstm_78_while_body_2913041H
Dsequential_26_lstm_78_while_sequential_26_lstm_78_while_loop_counterN
Jsequential_26_lstm_78_while_sequential_26_lstm_78_while_maximum_iterations+
'sequential_26_lstm_78_while_placeholder-
)sequential_26_lstm_78_while_placeholder_1-
)sequential_26_lstm_78_while_placeholder_2-
)sequential_26_lstm_78_while_placeholder_3G
Csequential_26_lstm_78_while_sequential_26_lstm_78_strided_slice_1_0
sequential_26_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_78_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_26_lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0:	_
Lsequential_26_lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dZ
Ksequential_26_lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0:	(
$sequential_26_lstm_78_while_identity*
&sequential_26_lstm_78_while_identity_1*
&sequential_26_lstm_78_while_identity_2*
&sequential_26_lstm_78_while_identity_3*
&sequential_26_lstm_78_while_identity_4*
&sequential_26_lstm_78_while_identity_5E
Asequential_26_lstm_78_while_sequential_26_lstm_78_strided_slice_1
}sequential_26_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_78_tensorarrayunstack_tensorlistfromtensor[
Hsequential_26_lstm_78_while_lstm_cell_480_matmul_readvariableop_resource:	]
Jsequential_26_lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource:	dX
Isequential_26_lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource:	¢@sequential_26/lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp¢?sequential_26/lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp¢Asequential_26/lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp
Msequential_26/lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_26/lstm_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_26_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_78_tensorarrayunstack_tensorlistfromtensor_0'sequential_26_lstm_78_while_placeholderVsequential_26/lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ë
?sequential_26/lstm_78/while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOpJsequential_26_lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0þ
0sequential_26/lstm_78/while/lstm_cell_480/MatMulMatMulFsequential_26/lstm_78/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_26/lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Asequential_26/lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOpLsequential_26_lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0å
2sequential_26/lstm_78/while/lstm_cell_480/MatMul_1MatMul)sequential_26_lstm_78_while_placeholder_2Isequential_26/lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
-sequential_26/lstm_78/while/lstm_cell_480/addAddV2:sequential_26/lstm_78/while/lstm_cell_480/MatMul:product:0<sequential_26/lstm_78/while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
@sequential_26/lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOpKsequential_26_lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_26/lstm_78/while/lstm_cell_480/BiasAddBiasAdd1sequential_26/lstm_78/while/lstm_cell_480/add:z:0Hsequential_26/lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9sequential_26/lstm_78/while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_26/lstm_78/while/lstm_cell_480/splitSplitBsequential_26/lstm_78/while/lstm_cell_480/split/split_dim:output:0:sequential_26/lstm_78/while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¨
1sequential_26/lstm_78/while/lstm_cell_480/SigmoidSigmoid8sequential_26/lstm_78/while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_26/lstm_78/while/lstm_cell_480/Sigmoid_1Sigmoid8sequential_26/lstm_78/while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÊ
-sequential_26/lstm_78/while/lstm_cell_480/mulMul7sequential_26/lstm_78/while/lstm_cell_480/Sigmoid_1:y:0)sequential_26_lstm_78_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
.sequential_26/lstm_78/while/lstm_cell_480/ReluRelu8sequential_26/lstm_78/while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÝ
/sequential_26/lstm_78/while/lstm_cell_480/mul_1Mul5sequential_26/lstm_78/while/lstm_cell_480/Sigmoid:y:0<sequential_26/lstm_78/while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÒ
/sequential_26/lstm_78/while/lstm_cell_480/add_1AddV21sequential_26/lstm_78/while/lstm_cell_480/mul:z:03sequential_26/lstm_78/while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_26/lstm_78/while/lstm_cell_480/Sigmoid_2Sigmoid8sequential_26/lstm_78/while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
0sequential_26/lstm_78/while/lstm_cell_480/Relu_1Relu3sequential_26/lstm_78/while/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdá
/sequential_26/lstm_78/while/lstm_cell_480/mul_2Mul7sequential_26/lstm_78/while/lstm_cell_480/Sigmoid_2:y:0>sequential_26/lstm_78/while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
@sequential_26/lstm_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_26_lstm_78_while_placeholder_1'sequential_26_lstm_78_while_placeholder3sequential_26/lstm_78/while/lstm_cell_480/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_26/lstm_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_26/lstm_78/while/addAddV2'sequential_26_lstm_78_while_placeholder*sequential_26/lstm_78/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_26/lstm_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_26/lstm_78/while/add_1AddV2Dsequential_26_lstm_78_while_sequential_26_lstm_78_while_loop_counter,sequential_26/lstm_78/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_26/lstm_78/while/IdentityIdentity%sequential_26/lstm_78/while/add_1:z:0!^sequential_26/lstm_78/while/NoOp*
T0*
_output_shapes
: Â
&sequential_26/lstm_78/while/Identity_1IdentityJsequential_26_lstm_78_while_sequential_26_lstm_78_while_maximum_iterations!^sequential_26/lstm_78/while/NoOp*
T0*
_output_shapes
: 
&sequential_26/lstm_78/while/Identity_2Identity#sequential_26/lstm_78/while/add:z:0!^sequential_26/lstm_78/while/NoOp*
T0*
_output_shapes
: È
&sequential_26/lstm_78/while/Identity_3IdentityPsequential_26/lstm_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_26/lstm_78/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_26/lstm_78/while/Identity_4Identity3sequential_26/lstm_78/while/lstm_cell_480/mul_2:z:0!^sequential_26/lstm_78/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¼
&sequential_26/lstm_78/while/Identity_5Identity3sequential_26/lstm_78/while/lstm_cell_480/add_1:z:0!^sequential_26/lstm_78/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
 sequential_26/lstm_78/while/NoOpNoOpA^sequential_26/lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp@^sequential_26/lstm_78/while/lstm_cell_480/MatMul/ReadVariableOpB^sequential_26/lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_26_lstm_78_while_identity-sequential_26/lstm_78/while/Identity:output:0"Y
&sequential_26_lstm_78_while_identity_1/sequential_26/lstm_78/while/Identity_1:output:0"Y
&sequential_26_lstm_78_while_identity_2/sequential_26/lstm_78/while/Identity_2:output:0"Y
&sequential_26_lstm_78_while_identity_3/sequential_26/lstm_78/while/Identity_3:output:0"Y
&sequential_26_lstm_78_while_identity_4/sequential_26/lstm_78/while/Identity_4:output:0"Y
&sequential_26_lstm_78_while_identity_5/sequential_26/lstm_78/while/Identity_5:output:0"
Isequential_26_lstm_78_while_lstm_cell_480_biasadd_readvariableop_resourceKsequential_26_lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0"
Jsequential_26_lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resourceLsequential_26_lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0"
Hsequential_26_lstm_78_while_lstm_cell_480_matmul_readvariableop_resourceJsequential_26_lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0"
Asequential_26_lstm_78_while_sequential_26_lstm_78_strided_slice_1Csequential_26_lstm_78_while_sequential_26_lstm_78_strided_slice_1_0"
}sequential_26_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_78_tensorarrayunstack_tensorlistfromtensorsequential_26_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
@sequential_26/lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp@sequential_26/lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2
?sequential_26/lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp?sequential_26/lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp2
Asequential_26/lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOpAsequential_26/lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

µ
)__inference_lstm_80_layer_call_fn_2917820
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2914259o
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
º
È
while_cond_2917295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2917295___redundant_placeholder05
1while_while_cond_2917295___redundant_placeholder15
1while_while_cond_2917295___redundant_placeholder25
1while_while_cond_2917295___redundant_placeholder3
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
Õ

J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2918706

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
Ä8
Ô
while_body_2917912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_482_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_482_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_482_matmul_readvariableop_resource:2(F
4while_lstm_cell_482_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_482_biasadd_readvariableop_resource:(¢*while/lstm_cell_482/BiasAdd/ReadVariableOp¢)while/lstm_cell_482/MatMul/ReadVariableOp¢+while/lstm_cell_482/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_482/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_482/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_482/addAddV2$while/lstm_cell_482/MatMul:product:0&while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_482/BiasAddBiasAddwhile/lstm_cell_482/add:z:02while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_482/splitSplit,while/lstm_cell_482/split/split_dim:output:0$while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_482/SigmoidSigmoid"while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_1Sigmoid"while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mulMul!while/lstm_cell_482/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_482/ReluRelu"while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_1Mulwhile/lstm_cell_482/Sigmoid:y:0&while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/add_1AddV2while/lstm_cell_482/mul:z:0while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_2Sigmoid"while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_482/Relu_1Reluwhile/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_2Mul!while/lstm_cell_482/Sigmoid_2:y:0(while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_482/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_482/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_482/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_482/BiasAdd/ReadVariableOp*^while/lstm_cell_482/MatMul/ReadVariableOp,^while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_482_biasadd_readvariableop_resource5while_lstm_cell_482_biasadd_readvariableop_resource_0"n
4while_lstm_cell_482_matmul_1_readvariableop_resource6while_lstm_cell_482_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_482_matmul_readvariableop_resource4while_lstm_cell_482_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_482/BiasAdd/ReadVariableOp*while/lstm_cell_482/BiasAdd/ReadVariableOp2V
)while/lstm_cell_482/MatMul/ReadVariableOp)while/lstm_cell_482/MatMul/ReadVariableOp2Z
+while/lstm_cell_482/MatMul_1/ReadVariableOp+while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918425

inputs>
,lstm_cell_482_matmul_readvariableop_resource:2(@
.lstm_cell_482_matmul_1_readvariableop_resource:
(;
-lstm_cell_482_biasadd_readvariableop_resource:(
identity¢$lstm_cell_482/BiasAdd/ReadVariableOp¢#lstm_cell_482/MatMul/ReadVariableOp¢%lstm_cell_482/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_482/MatMul/ReadVariableOpReadVariableOp,lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_482/MatMulMatMulstrided_slice_2:output:0+lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_482/MatMul_1MatMulzeros:output:0-lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_482/addAddV2lstm_cell_482/MatMul:product:0 lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_482/BiasAddBiasAddlstm_cell_482/add:z:0,lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_482/splitSplit&lstm_cell_482/split/split_dim:output:0lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_482/SigmoidSigmoidlstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_1Sigmoidlstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_482/mulMullstm_cell_482/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_482/ReluRelulstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_1Mullstm_cell_482/Sigmoid:y:0 lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_482/add_1AddV2lstm_cell_482/mul:z:0lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_2Sigmoidlstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_482/Relu_1Relulstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_2Mullstm_cell_482/Sigmoid_2:y:0"lstm_cell_482/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_482_matmul_readvariableop_resource.lstm_cell_482_matmul_1_readvariableop_resource-lstm_cell_482_biasadd_readvariableop_resource*
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
while_body_2918341*
condR
while_cond_2918340*K
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
NoOpNoOp%^lstm_cell_482/BiasAdd/ReadVariableOp$^lstm_cell_482/MatMul/ReadVariableOp&^lstm_cell_482/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_482/BiasAdd/ReadVariableOp$lstm_cell_482/BiasAdd/ReadVariableOp2J
#lstm_cell_482/MatMul/ReadVariableOp#lstm_cell_482/MatMul/ReadVariableOp2N
%lstm_cell_482/MatMul_1/ReadVariableOp%lstm_cell_482/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï
ø
/__inference_lstm_cell_480_layer_call_fn_2918478

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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913622o
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

ë
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915522

inputs"
lstm_78_2915495:	"
lstm_78_2915497:	d
lstm_78_2915499:	"
lstm_79_2915502:	dÈ"
lstm_79_2915504:	2È
lstm_79_2915506:	È!
lstm_80_2915509:2(!
lstm_80_2915511:
(
lstm_80_2915513:("
dense_26_2915516:

dense_26_2915518:
identity¢ dense_26/StatefulPartitionedCall¢lstm_78/StatefulPartitionedCall¢lstm_79/StatefulPartitionedCall¢lstm_80/StatefulPartitionedCall
lstm_78/StatefulPartitionedCallStatefulPartitionedCallinputslstm_78_2915495lstm_78_2915497lstm_78_2915499*
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2915454¨
lstm_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_78/StatefulPartitionedCall:output:0lstm_79_2915502lstm_79_2915504lstm_79_2915506*
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2915289¤
lstm_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0lstm_80_2915509lstm_80_2915511lstm_80_2915513*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2915124
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_26_2915516dense_26_2915518*
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
E__inference_dense_26_layer_call_and_return_conditional_losses_2914926x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_26/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_2913489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2913489___redundant_placeholder05
1while_while_cond_2913489___redundant_placeholder15
1while_while_cond_2913489___redundant_placeholder25
1while_while_cond_2913489___redundant_placeholder3
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
while_body_2914524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_480_matmul_readvariableop_resource_0:	I
6while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_480_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_480_matmul_readvariableop_resource:	G
4while_lstm_cell_480_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_480_biasadd_readvariableop_resource:	¢*while/lstm_cell_480/BiasAdd/ReadVariableOp¢)while/lstm_cell_480/MatMul/ReadVariableOp¢+while/lstm_cell_480/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_480/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_480/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_480/addAddV2$while/lstm_cell_480/MatMul:product:0&while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_480/BiasAddBiasAddwhile/lstm_cell_480/add:z:02while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_480/splitSplit,while/lstm_cell_480/split/split_dim:output:0$while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_480/SigmoidSigmoid"while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_1Sigmoid"while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mulMul!while/lstm_cell_480/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_480/ReluRelu"while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_1Mulwhile/lstm_cell_480/Sigmoid:y:0&while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/add_1AddV2while/lstm_cell_480/mul:z:0while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_2Sigmoid"while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_480/Relu_1Reluwhile/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_2Mul!while/lstm_cell_480/Sigmoid_2:y:0(while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_480/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_480/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_480/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_480/BiasAdd/ReadVariableOp*^while/lstm_cell_480/MatMul/ReadVariableOp,^while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_480_biasadd_readvariableop_resource5while_lstm_cell_480_biasadd_readvariableop_resource_0"n
4while_lstm_cell_480_matmul_1_readvariableop_resource6while_lstm_cell_480_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_480_matmul_readvariableop_resource4while_lstm_cell_480_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_480/BiasAdd/ReadVariableOp*while/lstm_cell_480/BiasAdd/ReadVariableOp2V
)while/lstm_cell_480/MatMul/ReadVariableOp)while/lstm_cell_480/MatMul/ReadVariableOp2Z
+while/lstm_cell_480/MatMul_1/ReadVariableOp+while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
×

J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913972

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
B
Ú

lstm_79_while_body_2915921,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3+
'lstm_79_while_lstm_79_strided_slice_1_0g
clstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈQ
>lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
lstm_79_while_identity
lstm_79_while_identity_1
lstm_79_while_identity_2
lstm_79_while_identity_3
lstm_79_while_identity_4
lstm_79_while_identity_5)
%lstm_79_while_lstm_79_strided_slice_1e
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorM
:lstm_79_while_lstm_cell_481_matmul_readvariableop_resource:	dÈO
<lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈJ
;lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource:	È¢2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp¢1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp¢3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0lstm_79_while_placeholderHlstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp<lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_79/while/lstm_cell_481/MatMulMatMul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp>lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_79/while/lstm_cell_481/MatMul_1MatMullstm_79_while_placeholder_2;lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_79/while/lstm_cell_481/addAddV2,lstm_79/while/lstm_cell_481/MatMul:product:0.lstm_79/while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp=lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_79/while/lstm_cell_481/BiasAddBiasAdd#lstm_79/while/lstm_cell_481/add:z:0:lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_79/while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_79/while/lstm_cell_481/splitSplit4lstm_79/while/lstm_cell_481/split/split_dim:output:0,lstm_79/while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_79/while/lstm_cell_481/SigmoidSigmoid*lstm_79/while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_79/while/lstm_cell_481/Sigmoid_1Sigmoid*lstm_79/while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_79/while/lstm_cell_481/mulMul)lstm_79/while/lstm_cell_481/Sigmoid_1:y:0lstm_79_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_79/while/lstm_cell_481/ReluRelu*lstm_79/while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_79/while/lstm_cell_481/mul_1Mul'lstm_79/while/lstm_cell_481/Sigmoid:y:0.lstm_79/while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_79/while/lstm_cell_481/add_1AddV2#lstm_79/while/lstm_cell_481/mul:z:0%lstm_79/while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_79/while/lstm_cell_481/Sigmoid_2Sigmoid*lstm_79/while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_79/while/lstm_cell_481/Relu_1Relu%lstm_79/while/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_79/while/lstm_cell_481/mul_2Mul)lstm_79/while/lstm_cell_481/Sigmoid_2:y:00lstm_79/while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_79_while_placeholder_1lstm_79_while_placeholder%lstm_79/while/lstm_cell_481/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_79/while/addAddV2lstm_79_while_placeholderlstm_79/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_79/while/add_1AddV2(lstm_79_while_lstm_79_while_loop_counterlstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_79/while/IdentityIdentitylstm_79/while/add_1:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 
lstm_79/while/Identity_1Identity.lstm_79_while_lstm_79_while_maximum_iterations^lstm_79/while/NoOp*
T0*
_output_shapes
: q
lstm_79/while/Identity_2Identitylstm_79/while/add:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 
lstm_79/while/Identity_3IdentityBlstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 
lstm_79/while/Identity_4Identity%lstm_79/while/lstm_cell_481/mul_2:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_79/while/Identity_5Identity%lstm_79/while/lstm_cell_481/add_1:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_79/while/NoOpNoOp3^lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2^lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp4^lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_79_while_identitylstm_79/while/Identity:output:0"=
lstm_79_while_identity_1!lstm_79/while/Identity_1:output:0"=
lstm_79_while_identity_2!lstm_79/while/Identity_2:output:0"=
lstm_79_while_identity_3!lstm_79/while/Identity_3:output:0"=
lstm_79_while_identity_4!lstm_79/while/Identity_4:output:0"=
lstm_79_while_identity_5!lstm_79/while/Identity_5:output:0"P
%lstm_79_while_lstm_79_strided_slice_1'lstm_79_while_lstm_79_strided_slice_1_0"|
;lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource=lstm_79_while_lstm_cell_481_biasadd_readvariableop_resource_0"~
<lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource>lstm_79_while_lstm_cell_481_matmul_1_readvariableop_resource_0"z
:lstm_79_while_lstm_cell_481_matmul_readvariableop_resource<lstm_79_while_lstm_cell_481_matmul_readvariableop_resource_0"È
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2lstm_79/while/lstm_cell_481/BiasAdd/ReadVariableOp2f
1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp1lstm_79/while/lstm_cell_481/MatMul/ReadVariableOp2j
3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp3lstm_79/while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2915124

inputs>
,lstm_cell_482_matmul_readvariableop_resource:2(@
.lstm_cell_482_matmul_1_readvariableop_resource:
(;
-lstm_cell_482_biasadd_readvariableop_resource:(
identity¢$lstm_cell_482/BiasAdd/ReadVariableOp¢#lstm_cell_482/MatMul/ReadVariableOp¢%lstm_cell_482/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_482/MatMul/ReadVariableOpReadVariableOp,lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_482/MatMulMatMulstrided_slice_2:output:0+lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_482/MatMul_1MatMulzeros:output:0-lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_482/addAddV2lstm_cell_482/MatMul:product:0 lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_482/BiasAddBiasAddlstm_cell_482/add:z:0,lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_482/splitSplit&lstm_cell_482/split/split_dim:output:0lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_482/SigmoidSigmoidlstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_1Sigmoidlstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_482/mulMullstm_cell_482/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_482/ReluRelulstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_1Mullstm_cell_482/Sigmoid:y:0 lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_482/add_1AddV2lstm_cell_482/mul:z:0lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_2Sigmoidlstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_482/Relu_1Relulstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_2Mullstm_cell_482/Sigmoid_2:y:0"lstm_cell_482/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_482_matmul_readvariableop_resource.lstm_cell_482_matmul_1_readvariableop_resource-lstm_cell_482_biasadd_readvariableop_resource*
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
while_body_2915040*
condR
while_cond_2915039*K
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
NoOpNoOp%^lstm_cell_482/BiasAdd/ReadVariableOp$^lstm_cell_482/MatMul/ReadVariableOp&^lstm_cell_482/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_482/BiasAdd/ReadVariableOp$lstm_cell_482/BiasAdd/ReadVariableOp2J
#lstm_cell_482/MatMul/ReadVariableOp#lstm_cell_482/MatMul/ReadVariableOp2N
%lstm_cell_482/MatMul_1/ReadVariableOp%lstm_cell_482/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_2917724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2917724___redundant_placeholder05
1while_while_cond_2917724___redundant_placeholder15
1while_while_cond_2917724___redundant_placeholder25
1while_while_cond_2917724___redundant_placeholder3
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
×

J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913622

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
Ñ8
Ú
while_body_2914674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_481_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_481_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_481_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_481_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_481_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_481_biasadd_readvariableop_resource:	È¢*while/lstm_cell_481/BiasAdd/ReadVariableOp¢)while/lstm_cell_481/MatMul/ReadVariableOp¢+while/lstm_cell_481/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_481/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_481_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_481/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_481_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_481/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_481/addAddV2$while/lstm_cell_481/MatMul:product:0&while/lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_481_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_481/BiasAddBiasAddwhile/lstm_cell_481/add:z:02while/lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_481/splitSplit,while/lstm_cell_481/split/split_dim:output:0$while/lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_481/SigmoidSigmoid"while/lstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_1Sigmoid"while/lstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mulMul!while/lstm_cell_481/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_481/ReluRelu"while/lstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_1Mulwhile/lstm_cell_481/Sigmoid:y:0&while/lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/add_1AddV2while/lstm_cell_481/mul:z:0while/lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_481/Sigmoid_2Sigmoid"while/lstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_481/Relu_1Reluwhile/lstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_481/mul_2Mul!while/lstm_cell_481/Sigmoid_2:y:0(while/lstm_cell_481/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_481/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_481/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_481/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_481/BiasAdd/ReadVariableOp*^while/lstm_cell_481/MatMul/ReadVariableOp,^while/lstm_cell_481/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_481_biasadd_readvariableop_resource5while_lstm_cell_481_biasadd_readvariableop_resource_0"n
4while_lstm_cell_481_matmul_1_readvariableop_resource6while_lstm_cell_481_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_481_matmul_readvariableop_resource4while_lstm_cell_481_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_481/BiasAdd/ReadVariableOp*while/lstm_cell_481/BiasAdd/ReadVariableOp2V
)while/lstm_cell_481/MatMul/ReadVariableOp)while/lstm_cell_481/MatMul/ReadVariableOp2Z
+while/lstm_cell_481/MatMul_1/ReadVariableOp+while/lstm_cell_481/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
«
¸
)__inference_lstm_78_layer_call_fn_2916599
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2913750|
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
®8

D__inference_lstm_78_layer_call_and_return_conditional_losses_2913750

inputs(
lstm_cell_480_2913668:	(
lstm_cell_480_2913670:	d$
lstm_cell_480_2913672:	
identity¢%lstm_cell_480/StatefulPartitionedCall¢while;
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
%lstm_cell_480/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_480_2913668lstm_cell_480_2913670lstm_cell_480_2913672*
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913622n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_480_2913668lstm_cell_480_2913670lstm_cell_480_2913672*
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
while_body_2913681*
condR
while_cond_2913680*K
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
NoOpNoOp&^lstm_cell_480/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_480/StatefulPartitionedCall%lstm_cell_480/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È	
ö
E__inference_dense_26_layer_call_and_return_conditional_losses_2914926

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
´
ò
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915634
lstm_78_input"
lstm_78_2915607:	"
lstm_78_2915609:	d
lstm_78_2915611:	"
lstm_79_2915614:	dÈ"
lstm_79_2915616:	2È
lstm_79_2915618:	È!
lstm_80_2915621:2(!
lstm_80_2915623:
(
lstm_80_2915625:("
dense_26_2915628:

dense_26_2915630:
identity¢ dense_26/StatefulPartitionedCall¢lstm_78/StatefulPartitionedCall¢lstm_79/StatefulPartitionedCall¢lstm_80/StatefulPartitionedCall
lstm_78/StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputlstm_78_2915607lstm_78_2915609lstm_78_2915611*
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2915454¨
lstm_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_78/StatefulPartitionedCall:output:0lstm_79_2915614lstm_79_2915616lstm_79_2915618*
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2915289¤
lstm_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0lstm_80_2915621lstm_80_2915623lstm_80_2915625*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2915124
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_26_2915628dense_26_2915630*
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
E__inference_dense_26_layer_call_and_return_conditional_losses_2914926x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_26/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_78_input
È	
ö
E__inference_dense_26_layer_call_and_return_conditional_losses_2918444

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
×

J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913826

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
B
Ú

lstm_78_while_body_2916209,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3+
'lstm_78_while_lstm_78_strided_slice_1_0g
clstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0:	Q
>lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dL
=lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0:	
lstm_78_while_identity
lstm_78_while_identity_1
lstm_78_while_identity_2
lstm_78_while_identity_3
lstm_78_while_identity_4
lstm_78_while_identity_5)
%lstm_78_while_lstm_78_strided_slice_1e
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorM
:lstm_78_while_lstm_cell_480_matmul_readvariableop_resource:	O
<lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource:	dJ
;lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource:	¢2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp¢1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp¢3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp
?lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0lstm_78_while_placeholderHlstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp<lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_78/while/lstm_cell_480/MatMulMatMul8lstm_78/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp>lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_78/while/lstm_cell_480/MatMul_1MatMullstm_78_while_placeholder_2;lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_78/while/lstm_cell_480/addAddV2,lstm_78/while/lstm_cell_480/MatMul:product:0.lstm_78/while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp=lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_78/while/lstm_cell_480/BiasAddBiasAdd#lstm_78/while/lstm_cell_480/add:z:0:lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_78/while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_78/while/lstm_cell_480/splitSplit4lstm_78/while/lstm_cell_480/split/split_dim:output:0,lstm_78/while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_78/while/lstm_cell_480/SigmoidSigmoid*lstm_78/while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_78/while/lstm_cell_480/Sigmoid_1Sigmoid*lstm_78/while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_78/while/lstm_cell_480/mulMul)lstm_78/while/lstm_cell_480/Sigmoid_1:y:0lstm_78_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_78/while/lstm_cell_480/ReluRelu*lstm_78/while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_78/while/lstm_cell_480/mul_1Mul'lstm_78/while/lstm_cell_480/Sigmoid:y:0.lstm_78/while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_78/while/lstm_cell_480/add_1AddV2#lstm_78/while/lstm_cell_480/mul:z:0%lstm_78/while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_78/while/lstm_cell_480/Sigmoid_2Sigmoid*lstm_78/while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_78/while/lstm_cell_480/Relu_1Relu%lstm_78/while/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_78/while/lstm_cell_480/mul_2Mul)lstm_78/while/lstm_cell_480/Sigmoid_2:y:00lstm_78/while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_78_while_placeholder_1lstm_78_while_placeholder%lstm_78/while/lstm_cell_480/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_78/while/addAddV2lstm_78_while_placeholderlstm_78/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_78/while/add_1AddV2(lstm_78_while_lstm_78_while_loop_counterlstm_78/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_78/while/IdentityIdentitylstm_78/while/add_1:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 
lstm_78/while/Identity_1Identity.lstm_78_while_lstm_78_while_maximum_iterations^lstm_78/while/NoOp*
T0*
_output_shapes
: q
lstm_78/while/Identity_2Identitylstm_78/while/add:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 
lstm_78/while/Identity_3IdentityBlstm_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 
lstm_78/while/Identity_4Identity%lstm_78/while/lstm_cell_480/mul_2:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_78/while/Identity_5Identity%lstm_78/while/lstm_cell_480/add_1:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_78/while/NoOpNoOp3^lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2^lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp4^lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_78_while_identitylstm_78/while/Identity:output:0"=
lstm_78_while_identity_1!lstm_78/while/Identity_1:output:0"=
lstm_78_while_identity_2!lstm_78/while/Identity_2:output:0"=
lstm_78_while_identity_3!lstm_78/while/Identity_3:output:0"=
lstm_78_while_identity_4!lstm_78/while/Identity_4:output:0"=
lstm_78_while_identity_5!lstm_78/while/Identity_5:output:0"P
%lstm_78_while_lstm_78_strided_slice_1'lstm_78_while_lstm_78_strided_slice_1_0"|
;lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource=lstm_78_while_lstm_cell_480_biasadd_readvariableop_resource_0"~
<lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource>lstm_78_while_lstm_cell_480_matmul_1_readvariableop_resource_0"z
:lstm_78_while_lstm_cell_480_matmul_readvariableop_resource<lstm_78_while_lstm_cell_480_matmul_readvariableop_resource_0"È
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2lstm_78/while/lstm_cell_480/BiasAdd/ReadVariableOp2f
1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp1lstm_78/while/lstm_cell_480/MatMul/ReadVariableOp2j
3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp3lstm_78/while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_79_while_cond_2916347,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3.
*lstm_79_while_less_lstm_79_strided_slice_1E
Alstm_79_while_lstm_79_while_cond_2916347___redundant_placeholder0E
Alstm_79_while_lstm_79_while_cond_2916347___redundant_placeholder1E
Alstm_79_while_lstm_79_while_cond_2916347___redundant_placeholder2E
Alstm_79_while_lstm_79_while_cond_2916347___redundant_placeholder3
lstm_79_while_identity

lstm_79/while/LessLesslstm_79_while_placeholder*lstm_79_while_less_lstm_79_strided_slice_1*
T0*
_output_shapes
: [
lstm_79/while/IdentityIdentitylstm_79/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_79_while_identitylstm_79/while/Identity:output:0*(
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
while_cond_2918340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2918340___redundant_placeholder05
1while_while_cond_2918340___redundant_placeholder15
1while_while_cond_2918340___redundant_placeholder25
1while_while_cond_2918340___redundant_placeholder3
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
while_cond_2914380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2914380___redundant_placeholder05
1while_while_cond_2914380___redundant_placeholder15
1while_while_cond_2914380___redundant_placeholder25
1while_while_cond_2914380___redundant_placeholder3
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
ï
ø
/__inference_lstm_cell_480_layer_call_fn_2918461

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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2913476o
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
áJ
¢
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917666

inputs?
,lstm_cell_481_matmul_readvariableop_resource:	dÈA
.lstm_cell_481_matmul_1_readvariableop_resource:	2È<
-lstm_cell_481_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_481/BiasAdd/ReadVariableOp¢#lstm_cell_481/MatMul/ReadVariableOp¢%lstm_cell_481/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_481/MatMul/ReadVariableOpReadVariableOp,lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_481/MatMulMatMulstrided_slice_2:output:0+lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_481/MatMul_1MatMulzeros:output:0-lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_481/addAddV2lstm_cell_481/MatMul:product:0 lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_481/BiasAddBiasAddlstm_cell_481/add:z:0,lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_481/splitSplit&lstm_cell_481/split/split_dim:output:0lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_481/SigmoidSigmoidlstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_1Sigmoidlstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_481/mulMullstm_cell_481/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_481/ReluRelulstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_1Mullstm_cell_481/Sigmoid:y:0 lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_481/add_1AddV2lstm_cell_481/mul:z:0lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_2Sigmoidlstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_481/Relu_1Relulstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_2Mullstm_cell_481/Sigmoid_2:y:0"lstm_cell_481/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_481_matmul_readvariableop_resource.lstm_cell_481_matmul_1_readvariableop_resource-lstm_cell_481_biasadd_readvariableop_resource*
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
while_body_2917582*
condR
while_cond_2917581*K
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
NoOpNoOp%^lstm_cell_481/BiasAdd/ReadVariableOp$^lstm_cell_481/MatMul/ReadVariableOp&^lstm_cell_481/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_481/BiasAdd/ReadVariableOp$lstm_cell_481/BiasAdd/ReadVariableOp2J
#lstm_cell_481/MatMul/ReadVariableOp#lstm_cell_481/MatMul/ReadVariableOp2N
%lstm_cell_481/MatMul_1/ReadVariableOp%lstm_cell_481/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
K
¡
D__inference_lstm_80_layer_call_and_return_conditional_losses_2917996
inputs_0>
,lstm_cell_482_matmul_readvariableop_resource:2(@
.lstm_cell_482_matmul_1_readvariableop_resource:
(;
-lstm_cell_482_biasadd_readvariableop_resource:(
identity¢$lstm_cell_482/BiasAdd/ReadVariableOp¢#lstm_cell_482/MatMul/ReadVariableOp¢%lstm_cell_482/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_482/MatMul/ReadVariableOpReadVariableOp,lstm_cell_482_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_482/MatMulMatMulstrided_slice_2:output:0+lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_482_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_482/MatMul_1MatMulzeros:output:0-lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_482/addAddV2lstm_cell_482/MatMul:product:0 lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_482_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_482/BiasAddBiasAddlstm_cell_482/add:z:0,lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_482/splitSplit&lstm_cell_482/split/split_dim:output:0lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_482/SigmoidSigmoidlstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_1Sigmoidlstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_482/mulMullstm_cell_482/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_482/ReluRelulstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_1Mullstm_cell_482/Sigmoid:y:0 lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_482/add_1AddV2lstm_cell_482/mul:z:0lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_482/Sigmoid_2Sigmoidlstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_482/Relu_1Relulstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_482/mul_2Mullstm_cell_482/Sigmoid_2:y:0"lstm_cell_482/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_482_matmul_readvariableop_resource.lstm_cell_482_matmul_1_readvariableop_resource-lstm_cell_482_biasadd_readvariableop_resource*
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
while_body_2917912*
condR
while_cond_2917911*K
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
NoOpNoOp%^lstm_cell_482/BiasAdd/ReadVariableOp$^lstm_cell_482/MatMul/ReadVariableOp&^lstm_cell_482/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_482/BiasAdd/ReadVariableOp$lstm_cell_482/BiasAdd/ReadVariableOp2J
#lstm_cell_482/MatMul/ReadVariableOp#lstm_cell_482/MatMul/ReadVariableOp2N
%lstm_cell_482/MatMul_1/ReadVariableOp%lstm_cell_482/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0

¶
)__inference_lstm_79_layer_call_fn_2917226

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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2914758s
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
Ñ8
Ú
while_body_2917109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_480_matmul_readvariableop_resource_0:	I
6while_lstm_cell_480_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_480_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_480_matmul_readvariableop_resource:	G
4while_lstm_cell_480_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_480_biasadd_readvariableop_resource:	¢*while/lstm_cell_480/BiasAdd/ReadVariableOp¢)while/lstm_cell_480/MatMul/ReadVariableOp¢+while/lstm_cell_480/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_480/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_480_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_480/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_480/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_480/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_480_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_480/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_480/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_480/addAddV2$while/lstm_cell_480/MatMul:product:0&while/lstm_cell_480/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_480/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_480_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_480/BiasAddBiasAddwhile/lstm_cell_480/add:z:02while/lstm_cell_480/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_480/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_480/splitSplit,while/lstm_cell_480/split/split_dim:output:0$while/lstm_cell_480/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_480/SigmoidSigmoid"while/lstm_cell_480/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_1Sigmoid"while/lstm_cell_480/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mulMul!while/lstm_cell_480/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_480/ReluRelu"while/lstm_cell_480/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_1Mulwhile/lstm_cell_480/Sigmoid:y:0&while/lstm_cell_480/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/add_1AddV2while/lstm_cell_480/mul:z:0while/lstm_cell_480/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_480/Sigmoid_2Sigmoid"while/lstm_cell_480/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_480/Relu_1Reluwhile/lstm_cell_480/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_480/mul_2Mul!while/lstm_cell_480/Sigmoid_2:y:0(while/lstm_cell_480/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_480/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_480/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_480/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_480/BiasAdd/ReadVariableOp*^while/lstm_cell_480/MatMul/ReadVariableOp,^while/lstm_cell_480/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_480_biasadd_readvariableop_resource5while_lstm_cell_480_biasadd_readvariableop_resource_0"n
4while_lstm_cell_480_matmul_1_readvariableop_resource6while_lstm_cell_480_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_480_matmul_readvariableop_resource4while_lstm_cell_480_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_480/BiasAdd/ReadVariableOp*while/lstm_cell_480/BiasAdd/ReadVariableOp2V
)while/lstm_cell_480/MatMul/ReadVariableOp)while/lstm_cell_480/MatMul/ReadVariableOp2Z
+while/lstm_cell_480/MatMul_1/ReadVariableOp+while/lstm_cell_480/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2915369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2915369___redundant_placeholder05
1while_while_cond_2915369___redundant_placeholder15
1while_while_cond_2915369___redundant_placeholder25
1while_while_cond_2915369___redundant_placeholder3
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
º
È
while_cond_2913680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2913680___redundant_placeholder05
1while_while_cond_2913680___redundant_placeholder15
1while_while_cond_2913680___redundant_placeholder25
1while_while_cond_2913680___redundant_placeholder3
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
º
È
while_cond_2917108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2917108___redundant_placeholder05
1while_while_cond_2917108___redundant_placeholder15
1while_while_cond_2917108___redundant_placeholder25
1while_while_cond_2917108___redundant_placeholder3
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
Ä8
Ô
while_body_2915040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_482_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_482_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_482_matmul_readvariableop_resource:2(F
4while_lstm_cell_482_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_482_biasadd_readvariableop_resource:(¢*while/lstm_cell_482/BiasAdd/ReadVariableOp¢)while/lstm_cell_482/MatMul/ReadVariableOp¢+while/lstm_cell_482/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_482/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_482/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_482/addAddV2$while/lstm_cell_482/MatMul:product:0&while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_482/BiasAddBiasAddwhile/lstm_cell_482/add:z:02while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_482/splitSplit,while/lstm_cell_482/split/split_dim:output:0$while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_482/SigmoidSigmoid"while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_1Sigmoid"while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mulMul!while/lstm_cell_482/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_482/ReluRelu"while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_1Mulwhile/lstm_cell_482/Sigmoid:y:0&while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/add_1AddV2while/lstm_cell_482/mul:z:0while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_2Sigmoid"while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_482/Relu_1Reluwhile/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_2Mul!while/lstm_cell_482/Sigmoid_2:y:0(while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_482/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_482/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_482/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_482/BiasAdd/ReadVariableOp*^while/lstm_cell_482/MatMul/ReadVariableOp,^while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_482_biasadd_readvariableop_resource5while_lstm_cell_482_biasadd_readvariableop_resource_0"n
4while_lstm_cell_482_matmul_1_readvariableop_resource6while_lstm_cell_482_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_482_matmul_readvariableop_resource4while_lstm_cell_482_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_482/BiasAdd/ReadVariableOp*while/lstm_cell_482/BiasAdd/ReadVariableOp2V
)while/lstm_cell_482/MatMul/ReadVariableOp)while/lstm_cell_482/MatMul/ReadVariableOp2Z
+while/lstm_cell_482/MatMul_1/ReadVariableOp+while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
½R

(sequential_26_lstm_80_while_body_2913319H
Dsequential_26_lstm_80_while_sequential_26_lstm_80_while_loop_counterN
Jsequential_26_lstm_80_while_sequential_26_lstm_80_while_maximum_iterations+
'sequential_26_lstm_80_while_placeholder-
)sequential_26_lstm_80_while_placeholder_1-
)sequential_26_lstm_80_while_placeholder_2-
)sequential_26_lstm_80_while_placeholder_3G
Csequential_26_lstm_80_while_sequential_26_lstm_80_strided_slice_1_0
sequential_26_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_80_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_26_lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0:2(^
Lsequential_26_lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(Y
Ksequential_26_lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0:((
$sequential_26_lstm_80_while_identity*
&sequential_26_lstm_80_while_identity_1*
&sequential_26_lstm_80_while_identity_2*
&sequential_26_lstm_80_while_identity_3*
&sequential_26_lstm_80_while_identity_4*
&sequential_26_lstm_80_while_identity_5E
Asequential_26_lstm_80_while_sequential_26_lstm_80_strided_slice_1
}sequential_26_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_80_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_26_lstm_80_while_lstm_cell_482_matmul_readvariableop_resource:2(\
Jsequential_26_lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource:
(W
Isequential_26_lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource:(¢@sequential_26/lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp¢?sequential_26/lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp¢Asequential_26/lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp
Msequential_26/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
?sequential_26/lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_26_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_80_tensorarrayunstack_tensorlistfromtensor_0'sequential_26_lstm_80_while_placeholderVsequential_26/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Ê
?sequential_26/lstm_80/while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOpJsequential_26_lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ý
0sequential_26/lstm_80/while/lstm_cell_482/MatMulMatMulFsequential_26/lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_26/lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Î
Asequential_26/lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOpLsequential_26_lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ä
2sequential_26/lstm_80/while/lstm_cell_482/MatMul_1MatMul)sequential_26_lstm_80_while_placeholder_2Isequential_26/lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(â
-sequential_26/lstm_80/while/lstm_cell_482/addAddV2:sequential_26/lstm_80/while/lstm_cell_482/MatMul:product:0<sequential_26/lstm_80/while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(È
@sequential_26/lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOpKsequential_26_lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_26/lstm_80/while/lstm_cell_482/BiasAddBiasAdd1sequential_26/lstm_80/while/lstm_cell_482/add:z:0Hsequential_26/lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ({
9sequential_26/lstm_80/while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_26/lstm_80/while/lstm_cell_482/splitSplitBsequential_26/lstm_80/while/lstm_cell_482/split/split_dim:output:0:sequential_26/lstm_80/while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¨
1sequential_26/lstm_80/while/lstm_cell_482/SigmoidSigmoid8sequential_26/lstm_80/while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_26/lstm_80/while/lstm_cell_482/Sigmoid_1Sigmoid8sequential_26/lstm_80/while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
-sequential_26/lstm_80/while/lstm_cell_482/mulMul7sequential_26/lstm_80/while/lstm_cell_482/Sigmoid_1:y:0)sequential_26_lstm_80_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
.sequential_26/lstm_80/while/lstm_cell_482/ReluRelu8sequential_26/lstm_80/while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
/sequential_26/lstm_80/while/lstm_cell_482/mul_1Mul5sequential_26/lstm_80/while/lstm_cell_482/Sigmoid:y:0<sequential_26/lstm_80/while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
/sequential_26/lstm_80/while/lstm_cell_482/add_1AddV21sequential_26/lstm_80/while/lstm_cell_482/mul:z:03sequential_26/lstm_80/while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_26/lstm_80/while/lstm_cell_482/Sigmoid_2Sigmoid8sequential_26/lstm_80/while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

0sequential_26/lstm_80/while/lstm_cell_482/Relu_1Relu3sequential_26/lstm_80/while/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
/sequential_26/lstm_80/while/lstm_cell_482/mul_2Mul7sequential_26/lstm_80/while/lstm_cell_482/Sigmoid_2:y:0>sequential_26/lstm_80/while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@sequential_26/lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_26_lstm_80_while_placeholder_1'sequential_26_lstm_80_while_placeholder3sequential_26/lstm_80/while/lstm_cell_482/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_26/lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_26/lstm_80/while/addAddV2'sequential_26_lstm_80_while_placeholder*sequential_26/lstm_80/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_26/lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_26/lstm_80/while/add_1AddV2Dsequential_26_lstm_80_while_sequential_26_lstm_80_while_loop_counter,sequential_26/lstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_26/lstm_80/while/IdentityIdentity%sequential_26/lstm_80/while/add_1:z:0!^sequential_26/lstm_80/while/NoOp*
T0*
_output_shapes
: Â
&sequential_26/lstm_80/while/Identity_1IdentityJsequential_26_lstm_80_while_sequential_26_lstm_80_while_maximum_iterations!^sequential_26/lstm_80/while/NoOp*
T0*
_output_shapes
: 
&sequential_26/lstm_80/while/Identity_2Identity#sequential_26/lstm_80/while/add:z:0!^sequential_26/lstm_80/while/NoOp*
T0*
_output_shapes
: È
&sequential_26/lstm_80/while/Identity_3IdentityPsequential_26/lstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_26/lstm_80/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_26/lstm_80/while/Identity_4Identity3sequential_26/lstm_80/while/lstm_cell_482/mul_2:z:0!^sequential_26/lstm_80/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
&sequential_26/lstm_80/while/Identity_5Identity3sequential_26/lstm_80/while/lstm_cell_482/add_1:z:0!^sequential_26/lstm_80/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
«
 sequential_26/lstm_80/while/NoOpNoOpA^sequential_26/lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp@^sequential_26/lstm_80/while/lstm_cell_482/MatMul/ReadVariableOpB^sequential_26/lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_26_lstm_80_while_identity-sequential_26/lstm_80/while/Identity:output:0"Y
&sequential_26_lstm_80_while_identity_1/sequential_26/lstm_80/while/Identity_1:output:0"Y
&sequential_26_lstm_80_while_identity_2/sequential_26/lstm_80/while/Identity_2:output:0"Y
&sequential_26_lstm_80_while_identity_3/sequential_26/lstm_80/while/Identity_3:output:0"Y
&sequential_26_lstm_80_while_identity_4/sequential_26/lstm_80/while/Identity_4:output:0"Y
&sequential_26_lstm_80_while_identity_5/sequential_26/lstm_80/while/Identity_5:output:0"
Isequential_26_lstm_80_while_lstm_cell_482_biasadd_readvariableop_resourceKsequential_26_lstm_80_while_lstm_cell_482_biasadd_readvariableop_resource_0"
Jsequential_26_lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resourceLsequential_26_lstm_80_while_lstm_cell_482_matmul_1_readvariableop_resource_0"
Hsequential_26_lstm_80_while_lstm_cell_482_matmul_readvariableop_resourceJsequential_26_lstm_80_while_lstm_cell_482_matmul_readvariableop_resource_0"
Asequential_26_lstm_80_while_sequential_26_lstm_80_strided_slice_1Csequential_26_lstm_80_while_sequential_26_lstm_80_strided_slice_1_0"
}sequential_26_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_80_tensorarrayunstack_tensorlistfromtensorsequential_26_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_26_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2
@sequential_26/lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp@sequential_26/lstm_80/while/lstm_cell_482/BiasAdd/ReadVariableOp2
?sequential_26/lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp?sequential_26/lstm_80/while/lstm_cell_482/MatMul/ReadVariableOp2
Asequential_26/lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOpAsequential_26/lstm_80/while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
£

(sequential_26_lstm_78_while_cond_2913040H
Dsequential_26_lstm_78_while_sequential_26_lstm_78_while_loop_counterN
Jsequential_26_lstm_78_while_sequential_26_lstm_78_while_maximum_iterations+
'sequential_26_lstm_78_while_placeholder-
)sequential_26_lstm_78_while_placeholder_1-
)sequential_26_lstm_78_while_placeholder_2-
)sequential_26_lstm_78_while_placeholder_3J
Fsequential_26_lstm_78_while_less_sequential_26_lstm_78_strided_slice_1a
]sequential_26_lstm_78_while_sequential_26_lstm_78_while_cond_2913040___redundant_placeholder0a
]sequential_26_lstm_78_while_sequential_26_lstm_78_while_cond_2913040___redundant_placeholder1a
]sequential_26_lstm_78_while_sequential_26_lstm_78_while_cond_2913040___redundant_placeholder2a
]sequential_26_lstm_78_while_sequential_26_lstm_78_while_cond_2913040___redundant_placeholder3(
$sequential_26_lstm_78_while_identity
º
 sequential_26/lstm_78/while/LessLess'sequential_26_lstm_78_while_placeholderFsequential_26_lstm_78_while_less_sequential_26_lstm_78_strided_slice_1*
T0*
_output_shapes
: w
$sequential_26/lstm_78/while/IdentityIdentity$sequential_26/lstm_78/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_26_lstm_78_while_identity-sequential_26/lstm_78/while/Identity:output:0*(
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
®8

D__inference_lstm_79_layer_call_and_return_conditional_losses_2913909

inputs(
lstm_cell_481_2913827:	dÈ(
lstm_cell_481_2913829:	2È$
lstm_cell_481_2913831:	È
identity¢%lstm_cell_481/StatefulPartitionedCall¢while;
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
%lstm_cell_481/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_481_2913827lstm_cell_481_2913829lstm_cell_481_2913831*
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913826n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_481_2913827lstm_cell_481_2913829lstm_cell_481_2913831*
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
while_body_2913840*
condR
while_cond_2913839*K
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
NoOpNoOp&^lstm_cell_481/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_481/StatefulPartitionedCall%lstm_cell_481/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

¶
)__inference_lstm_78_layer_call_fn_2916610

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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2914608s
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
while_cond_2917581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2917581___redundant_placeholder05
1while_while_cond_2917581___redundant_placeholder15
1while_while_cond_2917581___redundant_placeholder25
1while_while_cond_2917581___redundant_placeholder3
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
#
ë
while_body_2914190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_482_2914214_0:2(/
while_lstm_cell_482_2914216_0:
(+
while_lstm_cell_482_2914218_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_482_2914214:2(-
while_lstm_cell_482_2914216:
()
while_lstm_cell_482_2914218:(¢+while/lstm_cell_482/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_482/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_482_2914214_0while_lstm_cell_482_2914216_0while_lstm_cell_482_2914218_0*
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2914176Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_482/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_482/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_482/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_482/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_482_2914214while_lstm_cell_482_2914214_0"<
while_lstm_cell_482_2914216while_lstm_cell_482_2914216_0"<
while_lstm_cell_482_2914218while_lstm_cell_482_2914218_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_482/StatefulPartitionedCall+while/lstm_cell_482/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

¶
)__inference_lstm_78_layer_call_fn_2916621

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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2915454s
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
#
ñ
while_body_2914031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_481_2914055_0:	dÈ0
while_lstm_cell_481_2914057_0:	2È,
while_lstm_cell_481_2914059_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_481_2914055:	dÈ.
while_lstm_cell_481_2914057:	2È*
while_lstm_cell_481_2914059:	È¢+while/lstm_cell_481/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_481/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_481_2914055_0while_lstm_cell_481_2914057_0while_lstm_cell_481_2914059_0*
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2913972Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_481/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_481/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_481/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_481/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_481_2914055while_lstm_cell_481_2914055_0"<
while_lstm_cell_481_2914057while_lstm_cell_481_2914057_0"<
while_lstm_cell_481_2914059while_lstm_cell_481_2914059_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_481/StatefulPartitionedCall+while/lstm_cell_481/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2918341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_482_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_482_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_482_matmul_readvariableop_resource:2(F
4while_lstm_cell_482_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_482_biasadd_readvariableop_resource:(¢*while/lstm_cell_482/BiasAdd/ReadVariableOp¢)while/lstm_cell_482/MatMul/ReadVariableOp¢+while/lstm_cell_482/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_482/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_482/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_482/addAddV2$while/lstm_cell_482/MatMul:product:0&while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_482/BiasAddBiasAddwhile/lstm_cell_482/add:z:02while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_482/splitSplit,while/lstm_cell_482/split/split_dim:output:0$while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_482/SigmoidSigmoid"while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_1Sigmoid"while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mulMul!while/lstm_cell_482/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_482/ReluRelu"while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_1Mulwhile/lstm_cell_482/Sigmoid:y:0&while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/add_1AddV2while/lstm_cell_482/mul:z:0while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_2Sigmoid"while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_482/Relu_1Reluwhile/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_2Mul!while/lstm_cell_482/Sigmoid_2:y:0(while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_482/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_482/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_482/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_482/BiasAdd/ReadVariableOp*^while/lstm_cell_482/MatMul/ReadVariableOp,^while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_482_biasadd_readvariableop_resource5while_lstm_cell_482_biasadd_readvariableop_resource_0"n
4while_lstm_cell_482_matmul_1_readvariableop_resource6while_lstm_cell_482_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_482_matmul_readvariableop_resource4while_lstm_cell_482_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_482/BiasAdd/ReadVariableOp*while/lstm_cell_482/BiasAdd/ReadVariableOp2V
)while/lstm_cell_482/MatMul/ReadVariableOp)while/lstm_cell_482/MatMul/ReadVariableOp2Z
+while/lstm_cell_482/MatMul_1/ReadVariableOp+while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2918738

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
lstm_78_while_cond_2915781,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3.
*lstm_78_while_less_lstm_78_strided_slice_1E
Alstm_78_while_lstm_78_while_cond_2915781___redundant_placeholder0E
Alstm_78_while_lstm_78_while_cond_2915781___redundant_placeholder1E
Alstm_78_while_lstm_78_while_cond_2915781___redundant_placeholder2E
Alstm_78_while_lstm_78_while_cond_2915781___redundant_placeholder3
lstm_78_while_identity

lstm_78/while/LessLesslstm_78_while_placeholder*lstm_78_while_less_lstm_78_strided_slice_1*
T0*
_output_shapes
: [
lstm_78/while/IdentityIdentitylstm_78/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_78_while_identitylstm_78/while/Identity:output:0*(
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917809

inputs?
,lstm_cell_481_matmul_readvariableop_resource:	dÈA
.lstm_cell_481_matmul_1_readvariableop_resource:	2È<
-lstm_cell_481_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_481/BiasAdd/ReadVariableOp¢#lstm_cell_481/MatMul/ReadVariableOp¢%lstm_cell_481/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_481/MatMul/ReadVariableOpReadVariableOp,lstm_cell_481_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_481/MatMulMatMulstrided_slice_2:output:0+lstm_cell_481/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_481/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_481_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_481/MatMul_1MatMulzeros:output:0-lstm_cell_481/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_481/addAddV2lstm_cell_481/MatMul:product:0 lstm_cell_481/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_481/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_481_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_481/BiasAddBiasAddlstm_cell_481/add:z:0,lstm_cell_481/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_481/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_481/splitSplit&lstm_cell_481/split/split_dim:output:0lstm_cell_481/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_481/SigmoidSigmoidlstm_cell_481/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_1Sigmoidlstm_cell_481/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_481/mulMullstm_cell_481/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_481/ReluRelulstm_cell_481/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_1Mullstm_cell_481/Sigmoid:y:0 lstm_cell_481/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_481/add_1AddV2lstm_cell_481/mul:z:0lstm_cell_481/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_481/Sigmoid_2Sigmoidlstm_cell_481/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_481/Relu_1Relulstm_cell_481/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_481/mul_2Mullstm_cell_481/Sigmoid_2:y:0"lstm_cell_481/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_481_matmul_readvariableop_resource.lstm_cell_481_matmul_1_readvariableop_resource-lstm_cell_481_biasadd_readvariableop_resource*
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
while_body_2917725*
condR
while_cond_2917724*K
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
NoOpNoOp%^lstm_cell_481/BiasAdd/ReadVariableOp$^lstm_cell_481/MatMul/ReadVariableOp&^lstm_cell_481/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_481/BiasAdd/ReadVariableOp$lstm_cell_481/BiasAdd/ReadVariableOp2J
#lstm_cell_481/MatMul/ReadVariableOp#lstm_cell_481/MatMul/ReadVariableOp2N
%lstm_cell_481/MatMul_1/ReadVariableOp%lstm_cell_481/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ä8
Ô
while_body_2918198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_482_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_482_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_482_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_482_matmul_readvariableop_resource:2(F
4while_lstm_cell_482_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_482_biasadd_readvariableop_resource:(¢*while/lstm_cell_482/BiasAdd/ReadVariableOp¢)while/lstm_cell_482/MatMul/ReadVariableOp¢+while/lstm_cell_482/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_482/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_482_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_482/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_482/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_482/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_482_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_482/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_482/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_482/addAddV2$while/lstm_cell_482/MatMul:product:0&while/lstm_cell_482/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_482/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_482_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_482/BiasAddBiasAddwhile/lstm_cell_482/add:z:02while/lstm_cell_482/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_482/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_482/splitSplit,while/lstm_cell_482/split/split_dim:output:0$while/lstm_cell_482/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_482/SigmoidSigmoid"while/lstm_cell_482/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_1Sigmoid"while/lstm_cell_482/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mulMul!while/lstm_cell_482/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_482/ReluRelu"while/lstm_cell_482/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_1Mulwhile/lstm_cell_482/Sigmoid:y:0&while/lstm_cell_482/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/add_1AddV2while/lstm_cell_482/mul:z:0while/lstm_cell_482/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_482/Sigmoid_2Sigmoid"while/lstm_cell_482/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_482/Relu_1Reluwhile/lstm_cell_482/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_482/mul_2Mul!while/lstm_cell_482/Sigmoid_2:y:0(while/lstm_cell_482/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_482/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_482/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_482/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_482/BiasAdd/ReadVariableOp*^while/lstm_cell_482/MatMul/ReadVariableOp,^while/lstm_cell_482/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_482_biasadd_readvariableop_resource5while_lstm_cell_482_biasadd_readvariableop_resource_0"n
4while_lstm_cell_482_matmul_1_readvariableop_resource6while_lstm_cell_482_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_482_matmul_readvariableop_resource4while_lstm_cell_482_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_482/BiasAdd/ReadVariableOp*while/lstm_cell_482/BiasAdd/ReadVariableOp2V
)while/lstm_cell_482/MatMul/ReadVariableOp)while/lstm_cell_482/MatMul/ReadVariableOp2Z
+while/lstm_cell_482/MatMul_1/ReadVariableOp+while/lstm_cell_482/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
: "L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_78_input:
serving_default_lstm_78_input:0ÿÿÿÿÿÿÿÿÿ<
dense_260
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
2dense_26/kernel
:2dense_26/bias
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
.:,	2lstm_78/lstm_cell_78/kernel
8:6	d2%lstm_78/lstm_cell_78/recurrent_kernel
(:&2lstm_78/lstm_cell_78/bias
.:,	dÈ2lstm_79/lstm_cell_79/kernel
8:6	2È2%lstm_79/lstm_cell_79/recurrent_kernel
(:&È2lstm_79/lstm_cell_79/bias
-:+2(2lstm_80/lstm_cell_80/kernel
7:5
(2%lstm_80/lstm_cell_80/recurrent_kernel
':%(2lstm_80/lstm_cell_80/bias
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
2Adam/dense_26/kernel/m
 :2Adam/dense_26/bias/m
3:1	2"Adam/lstm_78/lstm_cell_78/kernel/m
=:;	d2,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m
-:+2 Adam/lstm_78/lstm_cell_78/bias/m
3:1	dÈ2"Adam/lstm_79/lstm_cell_79/kernel/m
=:;	2È2,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m
-:+È2 Adam/lstm_79/lstm_cell_79/bias/m
2:02(2"Adam/lstm_80/lstm_cell_80/kernel/m
<::
(2,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m
,:*(2 Adam/lstm_80/lstm_cell_80/bias/m
&:$
2Adam/dense_26/kernel/v
 :2Adam/dense_26/bias/v
3:1	2"Adam/lstm_78/lstm_cell_78/kernel/v
=:;	d2,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v
-:+2 Adam/lstm_78/lstm_cell_78/bias/v
3:1	dÈ2"Adam/lstm_79/lstm_cell_79/kernel/v
=:;	2È2,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v
-:+È2 Adam/lstm_79/lstm_cell_79/bias/v
2:02(2"Adam/lstm_80/lstm_cell_80/kernel/v
<::
(2,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v
,:*(2 Adam/lstm_80/lstm_cell_80/bias/v
2
/__inference_sequential_26_layer_call_fn_2914958
/__inference_sequential_26_layer_call_fn_2915696
/__inference_sequential_26_layer_call_fn_2915723
/__inference_sequential_26_layer_call_fn_2915574À
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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2916150
J__inference_sequential_26_layer_call_and_return_conditional_losses_2916577
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915604
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915634À
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
"__inference__wrapped_model_2913409lstm_78_input"
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
)__inference_lstm_78_layer_call_fn_2916588
)__inference_lstm_78_layer_call_fn_2916599
)__inference_lstm_78_layer_call_fn_2916610
)__inference_lstm_78_layer_call_fn_2916621Õ
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2916764
D__inference_lstm_78_layer_call_and_return_conditional_losses_2916907
D__inference_lstm_78_layer_call_and_return_conditional_losses_2917050
D__inference_lstm_78_layer_call_and_return_conditional_losses_2917193Õ
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
)__inference_lstm_79_layer_call_fn_2917204
)__inference_lstm_79_layer_call_fn_2917215
)__inference_lstm_79_layer_call_fn_2917226
)__inference_lstm_79_layer_call_fn_2917237Õ
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917380
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917523
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917666
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917809Õ
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
)__inference_lstm_80_layer_call_fn_2917820
)__inference_lstm_80_layer_call_fn_2917831
)__inference_lstm_80_layer_call_fn_2917842
)__inference_lstm_80_layer_call_fn_2917853Õ
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2917996
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918139
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918282
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918425Õ
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
*__inference_dense_26_layer_call_fn_2918434¢
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
E__inference_dense_26_layer_call_and_return_conditional_losses_2918444¢
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
%__inference_signature_wrapper_2915669lstm_78_input"
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
/__inference_lstm_cell_480_layer_call_fn_2918461
/__inference_lstm_cell_480_layer_call_fn_2918478¾
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2918510
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2918542¾
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
/__inference_lstm_cell_481_layer_call_fn_2918559
/__inference_lstm_cell_481_layer_call_fn_2918576¾
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2918608
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2918640¾
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
/__inference_lstm_cell_482_layer_call_fn_2918657
/__inference_lstm_cell_482_layer_call_fn_2918674¾
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2918706
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2918738¾
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
"__inference__wrapped_model_2913409~-./012345!":¢7
0¢-
+(
lstm_78_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_26"
dense_26ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_26_layer_call_and_return_conditional_losses_2918444\!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_26_layer_call_fn_2918434O!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÓ
D__inference_lstm_78_layer_call_and_return_conditional_losses_2916764-./O¢L
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2916907-./O¢L
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2917050q-./?¢<
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
D__inference_lstm_78_layer_call_and_return_conditional_losses_2917193q-./?¢<
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
)__inference_lstm_78_layer_call_fn_2916588}-./O¢L
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
)__inference_lstm_78_layer_call_fn_2916599}-./O¢L
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
)__inference_lstm_78_layer_call_fn_2916610d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_78_layer_call_fn_2916621d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917380012O¢L
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917523012O¢L
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917666q012?¢<
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
D__inference_lstm_79_layer_call_and_return_conditional_losses_2917809q012?¢<
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
)__inference_lstm_79_layer_call_fn_2917204}012O¢L
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
)__inference_lstm_79_layer_call_fn_2917215}012O¢L
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
)__inference_lstm_79_layer_call_fn_2917226d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_79_layer_call_fn_2917237d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Å
D__inference_lstm_80_layer_call_and_return_conditional_losses_2917996}345O¢L
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918139}345O¢L
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918282m345?¢<
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2918425m345?¢<
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
)__inference_lstm_80_layer_call_fn_2917820p345O¢L
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
)__inference_lstm_80_layer_call_fn_2917831p345O¢L
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
)__inference_lstm_80_layer_call_fn_2917842`345?¢<
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
)__inference_lstm_80_layer_call_fn_2917853`345?¢<
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2918510ý-./¢}
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
J__inference_lstm_cell_480_layer_call_and_return_conditional_losses_2918542ý-./¢}
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
/__inference_lstm_cell_480_layer_call_fn_2918461í-./¢}
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
/__inference_lstm_cell_480_layer_call_fn_2918478í-./¢}
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2918608ý012¢}
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
J__inference_lstm_cell_481_layer_call_and_return_conditional_losses_2918640ý012¢}
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
/__inference_lstm_cell_481_layer_call_fn_2918559í012¢}
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
/__inference_lstm_cell_481_layer_call_fn_2918576í012¢}
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2918706ý345¢}
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
J__inference_lstm_cell_482_layer_call_and_return_conditional_losses_2918738ý345¢}
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
/__inference_lstm_cell_482_layer_call_fn_2918657í345¢}
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
/__inference_lstm_cell_482_layer_call_fn_2918674í345¢}
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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915604x-./012345!"B¢?
8¢5
+(
lstm_78_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
J__inference_sequential_26_layer_call_and_return_conditional_losses_2915634x-./012345!"B¢?
8¢5
+(
lstm_78_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_26_layer_call_and_return_conditional_losses_2916150q-./012345!";¢8
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
J__inference_sequential_26_layer_call_and_return_conditional_losses_2916577q-./012345!";¢8
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
/__inference_sequential_26_layer_call_fn_2914958k-./012345!"B¢?
8¢5
+(
lstm_78_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_26_layer_call_fn_2915574k-./012345!"B¢?
8¢5
+(
lstm_78_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_26_layer_call_fn_2915696d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_26_layer_call_fn_2915723d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
%__inference_signature_wrapper_2915669-./012345!"K¢H
¢ 
Aª>
<
lstm_78_input+(
lstm_78_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_26"
dense_26ÿÿÿÿÿÿÿÿÿ