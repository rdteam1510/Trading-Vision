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
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

:
*
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
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
lstm_93/lstm_cell_93/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_93/lstm_cell_93/kernel

/lstm_93/lstm_cell_93/kernel/Read/ReadVariableOpReadVariableOplstm_93/lstm_cell_93/kernel*
_output_shapes
:	*
dtype0
§
%lstm_93/lstm_cell_93/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_93/lstm_cell_93/recurrent_kernel
 
9lstm_93/lstm_cell_93/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_93/lstm_cell_93/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_93/lstm_cell_93/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_93/lstm_cell_93/bias

-lstm_93/lstm_cell_93/bias/Read/ReadVariableOpReadVariableOplstm_93/lstm_cell_93/bias*
_output_shapes	
:*
dtype0

lstm_94/lstm_cell_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_94/lstm_cell_94/kernel

/lstm_94/lstm_cell_94/kernel/Read/ReadVariableOpReadVariableOplstm_94/lstm_cell_94/kernel*
_output_shapes
:	dÈ*
dtype0
§
%lstm_94/lstm_cell_94/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_94/lstm_cell_94/recurrent_kernel
 
9lstm_94/lstm_cell_94/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_94/lstm_cell_94/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_94/lstm_cell_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_94/lstm_cell_94/bias

-lstm_94/lstm_cell_94/bias/Read/ReadVariableOpReadVariableOplstm_94/lstm_cell_94/bias*
_output_shapes	
:È*
dtype0

lstm_95/lstm_cell_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_95/lstm_cell_95/kernel

/lstm_95/lstm_cell_95/kernel/Read/ReadVariableOpReadVariableOplstm_95/lstm_cell_95/kernel*
_output_shapes

:2(*
dtype0
¦
%lstm_95/lstm_cell_95/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_95/lstm_cell_95/recurrent_kernel

9lstm_95/lstm_cell_95/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_95/lstm_cell_95/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_95/lstm_cell_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_95/lstm_cell_95/bias

-lstm_95/lstm_cell_95/bias/Read/ReadVariableOpReadVariableOplstm_95/lstm_cell_95/bias*
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
Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_31/kernel/m

*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_93/lstm_cell_93/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_93/lstm_cell_93/kernel/m

6Adam/lstm_93/lstm_cell_93/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_93/lstm_cell_93/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_93/lstm_cell_93/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_93/lstm_cell_93/recurrent_kernel/m
®
@Adam/lstm_93/lstm_cell_93/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_93/lstm_cell_93/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_93/lstm_cell_93/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_93/lstm_cell_93/bias/m

4Adam/lstm_93/lstm_cell_93/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_93/lstm_cell_93/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_94/lstm_cell_94/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_94/lstm_cell_94/kernel/m

6Adam/lstm_94/lstm_cell_94/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_94/lstm_cell_94/kernel/m*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_94/lstm_cell_94/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_94/lstm_cell_94/recurrent_kernel/m
®
@Adam/lstm_94/lstm_cell_94/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_94/lstm_cell_94/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

 Adam/lstm_94/lstm_cell_94/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_94/lstm_cell_94/bias/m

4Adam/lstm_94/lstm_cell_94/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_94/lstm_cell_94/bias/m*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_95/lstm_cell_95/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_95/lstm_cell_95/kernel/m

6Adam/lstm_95/lstm_cell_95/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_95/lstm_cell_95/kernel/m*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_95/lstm_cell_95/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_95/lstm_cell_95/recurrent_kernel/m
­
@Adam/lstm_95/lstm_cell_95/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_95/lstm_cell_95/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Adam/lstm_95/lstm_cell_95/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_95/lstm_cell_95/bias/m

4Adam/lstm_95/lstm_cell_95/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_95/lstm_cell_95/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_31/kernel/v

*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_93/lstm_cell_93/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_93/lstm_cell_93/kernel/v

6Adam/lstm_93/lstm_cell_93/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_93/lstm_cell_93/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_93/lstm_cell_93/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_93/lstm_cell_93/recurrent_kernel/v
®
@Adam/lstm_93/lstm_cell_93/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_93/lstm_cell_93/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_93/lstm_cell_93/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_93/lstm_cell_93/bias/v

4Adam/lstm_93/lstm_cell_93/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_93/lstm_cell_93/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_94/lstm_cell_94/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_94/lstm_cell_94/kernel/v

6Adam/lstm_94/lstm_cell_94/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_94/lstm_cell_94/kernel/v*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_94/lstm_cell_94/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_94/lstm_cell_94/recurrent_kernel/v
®
@Adam/lstm_94/lstm_cell_94/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_94/lstm_cell_94/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

 Adam/lstm_94/lstm_cell_94/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_94/lstm_cell_94/bias/v

4Adam/lstm_94/lstm_cell_94/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_94/lstm_cell_94/bias/v*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_95/lstm_cell_95/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_95/lstm_cell_95/kernel/v

6Adam/lstm_95/lstm_cell_95/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_95/lstm_cell_95/kernel/v*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_95/lstm_cell_95/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_95/lstm_cell_95/recurrent_kernel/v
­
@Adam/lstm_95/lstm_cell_95/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_95/lstm_cell_95/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Adam/lstm_95/lstm_cell_95/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_95/lstm_cell_95/bias/v

4Adam/lstm_95/lstm_cell_95/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_95/lstm_cell_95/bias/v*
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
VARIABLE_VALUEdense_31/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_93/lstm_cell_93/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_93/lstm_cell_93/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_93/lstm_cell_93/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_94/lstm_cell_94/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_94/lstm_cell_94/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_94/lstm_cell_94/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_95/lstm_cell_95/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_95/lstm_cell_95/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_95/lstm_cell_95/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_93/lstm_cell_93/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_93/lstm_cell_93/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_93/lstm_cell_93/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_94/lstm_cell_94/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_94/lstm_cell_94/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_94/lstm_cell_94/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_95/lstm_cell_95/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_95/lstm_cell_95/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_95/lstm_cell_95/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_93/lstm_cell_93/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_93/lstm_cell_93/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_93/lstm_cell_93/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_94/lstm_cell_94/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_94/lstm_cell_94/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_94/lstm_cell_94/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_95/lstm_cell_95/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_95/lstm_cell_95/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_95/lstm_cell_95/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_93_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_93_inputlstm_93/lstm_cell_93/kernel%lstm_93/lstm_cell_93/recurrent_kernellstm_93/lstm_cell_93/biaslstm_94/lstm_cell_94/kernel%lstm_94/lstm_cell_94/recurrent_kernellstm_94/lstm_cell_94/biaslstm_95/lstm_cell_95/kernel%lstm_95/lstm_cell_95/recurrent_kernellstm_95/lstm_cell_95/biasdense_31/kerneldense_31/bias*
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
%__inference_signature_wrapper_2933918
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_93/lstm_cell_93/kernel/Read/ReadVariableOp9lstm_93/lstm_cell_93/recurrent_kernel/Read/ReadVariableOp-lstm_93/lstm_cell_93/bias/Read/ReadVariableOp/lstm_94/lstm_cell_94/kernel/Read/ReadVariableOp9lstm_94/lstm_cell_94/recurrent_kernel/Read/ReadVariableOp-lstm_94/lstm_cell_94/bias/Read/ReadVariableOp/lstm_95/lstm_cell_95/kernel/Read/ReadVariableOp9lstm_95/lstm_cell_95/recurrent_kernel/Read/ReadVariableOp-lstm_95/lstm_cell_95/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOp6Adam/lstm_93/lstm_cell_93/kernel/m/Read/ReadVariableOp@Adam/lstm_93/lstm_cell_93/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_93/lstm_cell_93/bias/m/Read/ReadVariableOp6Adam/lstm_94/lstm_cell_94/kernel/m/Read/ReadVariableOp@Adam/lstm_94/lstm_cell_94/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_94/lstm_cell_94/bias/m/Read/ReadVariableOp6Adam/lstm_95/lstm_cell_95/kernel/m/Read/ReadVariableOp@Adam/lstm_95/lstm_cell_95/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_95/lstm_cell_95/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOp6Adam/lstm_93/lstm_cell_93/kernel/v/Read/ReadVariableOp@Adam/lstm_93/lstm_cell_93/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_93/lstm_cell_93/bias/v/Read/ReadVariableOp6Adam/lstm_94/lstm_cell_94/kernel/v/Read/ReadVariableOp@Adam/lstm_94/lstm_cell_94/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_94/lstm_cell_94/bias/v/Read/ReadVariableOp6Adam/lstm_95/lstm_cell_95/kernel/v/Read/ReadVariableOp@Adam/lstm_95/lstm_cell_95/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_95/lstm_cell_95/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2937130
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_31/kerneldense_31/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_93/lstm_cell_93/kernel%lstm_93/lstm_cell_93/recurrent_kernellstm_93/lstm_cell_93/biaslstm_94/lstm_cell_94/kernel%lstm_94/lstm_cell_94/recurrent_kernellstm_94/lstm_cell_94/biaslstm_95/lstm_cell_95/kernel%lstm_95/lstm_cell_95/recurrent_kernellstm_95/lstm_cell_95/biastotalcountAdam/dense_31/kernel/mAdam/dense_31/bias/m"Adam/lstm_93/lstm_cell_93/kernel/m,Adam/lstm_93/lstm_cell_93/recurrent_kernel/m Adam/lstm_93/lstm_cell_93/bias/m"Adam/lstm_94/lstm_cell_94/kernel/m,Adam/lstm_94/lstm_cell_94/recurrent_kernel/m Adam/lstm_94/lstm_cell_94/bias/m"Adam/lstm_95/lstm_cell_95/kernel/m,Adam/lstm_95/lstm_cell_95/recurrent_kernel/m Adam/lstm_95/lstm_cell_95/bias/mAdam/dense_31/kernel/vAdam/dense_31/bias/v"Adam/lstm_93/lstm_cell_93/kernel/v,Adam/lstm_93/lstm_cell_93/recurrent_kernel/v Adam/lstm_93/lstm_cell_93/bias/v"Adam/lstm_94/lstm_cell_94/kernel/v,Adam/lstm_94/lstm_cell_94/recurrent_kernel/v Adam/lstm_94/lstm_cell_94/bias/v"Adam/lstm_95/lstm_cell_95/kernel/v,Adam/lstm_95/lstm_cell_95/recurrent_kernel/v Adam/lstm_95/lstm_cell_95/bias/v*4
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
#__inference__traced_restore_2937260Ú+
Ñ8
Ú
while_body_2933454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_484_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_484_biasadd_readvariableop_resource:	È¢*while/lstm_cell_484/BiasAdd/ReadVariableOp¢)while/lstm_cell_484/MatMul/ReadVariableOp¢+while/lstm_cell_484/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_484/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_484/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_484/addAddV2$while/lstm_cell_484/MatMul:product:0&while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_484/BiasAddBiasAddwhile/lstm_cell_484/add:z:02while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_484/splitSplit,while/lstm_cell_484/split/split_dim:output:0$while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_484/SigmoidSigmoid"while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_1Sigmoid"while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mulMul!while/lstm_cell_484/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_484/ReluRelu"while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_1Mulwhile/lstm_cell_484/Sigmoid:y:0&while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/add_1AddV2while/lstm_cell_484/mul:z:0while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_2Sigmoid"while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_484/Relu_1Reluwhile/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_2Mul!while/lstm_cell_484/Sigmoid_2:y:0(while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_484/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_484/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_484/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_484/BiasAdd/ReadVariableOp*^while/lstm_cell_484/MatMul/ReadVariableOp,^while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_484_biasadd_readvariableop_resource5while_lstm_cell_484_biasadd_readvariableop_resource_0"n
4while_lstm_cell_484_matmul_1_readvariableop_resource6while_lstm_cell_484_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_484_matmul_readvariableop_resource4while_lstm_cell_484_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_484/BiasAdd/ReadVariableOp*while/lstm_cell_484/BiasAdd/ReadVariableOp2V
)while/lstm_cell_484/MatMul/ReadVariableOp)while/lstm_cell_484/MatMul/ReadVariableOp2Z
+while/lstm_cell_484/MatMul_1/ReadVariableOp+while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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


è
lstm_95_while_cond_2934735,
(lstm_95_while_lstm_95_while_loop_counter2
.lstm_95_while_lstm_95_while_maximum_iterations
lstm_95_while_placeholder
lstm_95_while_placeholder_1
lstm_95_while_placeholder_2
lstm_95_while_placeholder_3.
*lstm_95_while_less_lstm_95_strided_slice_1E
Alstm_95_while_lstm_95_while_cond_2934735___redundant_placeholder0E
Alstm_95_while_lstm_95_while_cond_2934735___redundant_placeholder1E
Alstm_95_while_lstm_95_while_cond_2934735___redundant_placeholder2E
Alstm_95_while_lstm_95_while_cond_2934735___redundant_placeholder3
lstm_95_while_identity

lstm_95/while/LessLesslstm_95_while_placeholder*lstm_95_while_less_lstm_95_strided_slice_1*
T0*
_output_shapes
: [
lstm_95/while/IdentityIdentitylstm_95/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_95_while_identitylstm_95/while/Identity:output:0*(
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
while_body_2936590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_485_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_485_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_485_matmul_readvariableop_resource:2(F
4while_lstm_cell_485_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_485_biasadd_readvariableop_resource:(¢*while/lstm_cell_485/BiasAdd/ReadVariableOp¢)while/lstm_cell_485/MatMul/ReadVariableOp¢+while/lstm_cell_485/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_485/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_485/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_485/addAddV2$while/lstm_cell_485/MatMul:product:0&while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_485/BiasAddBiasAddwhile/lstm_cell_485/add:z:02while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_485/splitSplit,while/lstm_cell_485/split/split_dim:output:0$while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_485/SigmoidSigmoid"while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_1Sigmoid"while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mulMul!while/lstm_cell_485/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_485/ReluRelu"while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_1Mulwhile/lstm_cell_485/Sigmoid:y:0&while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/add_1AddV2while/lstm_cell_485/mul:z:0while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_2Sigmoid"while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_485/Relu_1Reluwhile/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_2Mul!while/lstm_cell_485/Sigmoid_2:y:0(while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_485/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_485/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_485/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_485/BiasAdd/ReadVariableOp*^while/lstm_cell_485/MatMul/ReadVariableOp,^while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_485_biasadd_readvariableop_resource5while_lstm_cell_485_biasadd_readvariableop_resource_0"n
4while_lstm_cell_485_matmul_1_readvariableop_resource6while_lstm_cell_485_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_485_matmul_readvariableop_resource4while_lstm_cell_485_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_485/BiasAdd/ReadVariableOp*while/lstm_cell_485/BiasAdd/ReadVariableOp2V
)while/lstm_cell_485/MatMul/ReadVariableOp)while/lstm_cell_485/MatMul/ReadVariableOp2Z
+while/lstm_cell_485/MatMul_1/ReadVariableOp+while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ß

J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2936889

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
ì
õ
/__inference_lstm_cell_485_layer_call_fn_2936906

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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932425o
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
ñ

¢
/__inference_sequential_31_layer_call_fn_2933207
lstm_93_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_93_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933182o
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
_user_specified_namelstm_93_input
È	
ö
E__inference_dense_31_layer_call_and_return_conditional_losses_2933175

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
®8

D__inference_lstm_94_layer_call_and_return_conditional_losses_2932158

inputs(
lstm_cell_484_2932076:	dÈ(
lstm_cell_484_2932078:	2È$
lstm_cell_484_2932080:	È
identity¢%lstm_cell_484/StatefulPartitionedCall¢while;
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
%lstm_cell_484/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_484_2932076lstm_cell_484_2932078lstm_cell_484_2932080*
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932075n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_484_2932076lstm_cell_484_2932078lstm_cell_484_2932080*
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
while_body_2932089*
condR
while_cond_2932088*K
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
NoOpNoOp&^lstm_cell_484/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_484/StatefulPartitionedCall%lstm_cell_484/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ö
³
)__inference_lstm_95_layer_call_fn_2936102

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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933373o
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
ýA
Ô

lstm_95_while_body_2934309,
(lstm_95_while_lstm_95_while_loop_counter2
.lstm_95_while_lstm_95_while_maximum_iterations
lstm_95_while_placeholder
lstm_95_while_placeholder_1
lstm_95_while_placeholder_2
lstm_95_while_placeholder_3+
'lstm_95_while_lstm_95_strided_slice_1_0g
clstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0:2(P
>lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(K
=lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0:(
lstm_95_while_identity
lstm_95_while_identity_1
lstm_95_while_identity_2
lstm_95_while_identity_3
lstm_95_while_identity_4
lstm_95_while_identity_5)
%lstm_95_while_lstm_95_strided_slice_1e
alstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensorL
:lstm_95_while_lstm_cell_485_matmul_readvariableop_resource:2(N
<lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource:
(I
;lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource:(¢2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp¢1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp¢3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp
?lstm_95/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_95/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensor_0lstm_95_while_placeholderHlstm_95/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp<lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_95/while/lstm_cell_485/MatMulMatMul8lstm_95/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp>lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_95/while/lstm_cell_485/MatMul_1MatMullstm_95_while_placeholder_2;lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_95/while/lstm_cell_485/addAddV2,lstm_95/while/lstm_cell_485/MatMul:product:0.lstm_95/while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp=lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_95/while/lstm_cell_485/BiasAddBiasAdd#lstm_95/while/lstm_cell_485/add:z:0:lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_95/while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_95/while/lstm_cell_485/splitSplit4lstm_95/while/lstm_cell_485/split/split_dim:output:0,lstm_95/while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_95/while/lstm_cell_485/SigmoidSigmoid*lstm_95/while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_95/while/lstm_cell_485/Sigmoid_1Sigmoid*lstm_95/while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_95/while/lstm_cell_485/mulMul)lstm_95/while/lstm_cell_485/Sigmoid_1:y:0lstm_95_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_95/while/lstm_cell_485/ReluRelu*lstm_95/while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_95/while/lstm_cell_485/mul_1Mul'lstm_95/while/lstm_cell_485/Sigmoid:y:0.lstm_95/while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_95/while/lstm_cell_485/add_1AddV2#lstm_95/while/lstm_cell_485/mul:z:0%lstm_95/while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_95/while/lstm_cell_485/Sigmoid_2Sigmoid*lstm_95/while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_95/while/lstm_cell_485/Relu_1Relu%lstm_95/while/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_95/while/lstm_cell_485/mul_2Mul)lstm_95/while/lstm_cell_485/Sigmoid_2:y:00lstm_95/while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_95/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_95_while_placeholder_1lstm_95_while_placeholder%lstm_95/while/lstm_cell_485/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_95/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_95/while/addAddV2lstm_95_while_placeholderlstm_95/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_95/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_95/while/add_1AddV2(lstm_95_while_lstm_95_while_loop_counterlstm_95/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_95/while/IdentityIdentitylstm_95/while/add_1:z:0^lstm_95/while/NoOp*
T0*
_output_shapes
: 
lstm_95/while/Identity_1Identity.lstm_95_while_lstm_95_while_maximum_iterations^lstm_95/while/NoOp*
T0*
_output_shapes
: q
lstm_95/while/Identity_2Identitylstm_95/while/add:z:0^lstm_95/while/NoOp*
T0*
_output_shapes
: 
lstm_95/while/Identity_3IdentityBlstm_95/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_95/while/NoOp*
T0*
_output_shapes
: 
lstm_95/while/Identity_4Identity%lstm_95/while/lstm_cell_485/mul_2:z:0^lstm_95/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/while/Identity_5Identity%lstm_95/while/lstm_cell_485/add_1:z:0^lstm_95/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_95/while/NoOpNoOp3^lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2^lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp4^lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_95_while_identitylstm_95/while/Identity:output:0"=
lstm_95_while_identity_1!lstm_95/while/Identity_1:output:0"=
lstm_95_while_identity_2!lstm_95/while/Identity_2:output:0"=
lstm_95_while_identity_3!lstm_95/while/Identity_3:output:0"=
lstm_95_while_identity_4!lstm_95/while/Identity_4:output:0"=
lstm_95_while_identity_5!lstm_95/while/Identity_5:output:0"P
%lstm_95_while_lstm_95_strided_slice_1'lstm_95_while_lstm_95_strided_slice_1_0"|
;lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource=lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0"~
<lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource>lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0"z
:lstm_95_while_lstm_cell_485_matmul_readvariableop_resource<lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0"È
alstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensorclstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2f
1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp2j
3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ß

J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2936759

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
®8

D__inference_lstm_94_layer_call_and_return_conditional_losses_2932349

inputs(
lstm_cell_484_2932267:	dÈ(
lstm_cell_484_2932269:	2È$
lstm_cell_484_2932271:	È
identity¢%lstm_cell_484/StatefulPartitionedCall¢while;
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
%lstm_cell_484/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_484_2932267lstm_cell_484_2932269lstm_cell_484_2932271*
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932221n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_484_2932267lstm_cell_484_2932269lstm_cell_484_2932271*
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
while_body_2932280*
condR
while_cond_2932279*K
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
NoOpNoOp&^lstm_cell_484/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_484/StatefulPartitionedCall%lstm_cell_484/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_2933288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2933288___redundant_placeholder05
1while_while_cond_2933288___redundant_placeholder15
1while_while_cond_2933288___redundant_placeholder25
1while_while_cond_2933288___redundant_placeholder3
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
while_cond_2934928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2934928___redundant_placeholder05
1while_while_cond_2934928___redundant_placeholder15
1while_while_cond_2934928___redundant_placeholder25
1while_while_cond_2934928___redundant_placeholder3
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
#
ë
while_body_2932439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_485_2932463_0:2(/
while_lstm_cell_485_2932465_0:
(+
while_lstm_cell_485_2932467_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_485_2932463:2(-
while_lstm_cell_485_2932465:
()
while_lstm_cell_485_2932467:(¢+while/lstm_cell_485/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_485/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_485_2932463_0while_lstm_cell_485_2932465_0while_lstm_cell_485_2932467_0*
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932425Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_485/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_485/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_485/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_485/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_485_2932463while_lstm_cell_485_2932463_0"<
while_lstm_cell_485_2932465while_lstm_cell_485_2932465_0"<
while_lstm_cell_485_2932467while_lstm_cell_485_2932467_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_485/StatefulPartitionedCall+while/lstm_cell_485/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ö
³
)__inference_lstm_95_layer_call_fn_2936091

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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933157o
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
*__inference_dense_31_layer_call_fn_2936683

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
E__inference_dense_31_layer_call_and_return_conditional_losses_2933175o
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
Ñ8
Ú
while_body_2935358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_483_matmul_readvariableop_resource_0:	I
6while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_483_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_483_matmul_readvariableop_resource:	G
4while_lstm_cell_483_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_483_biasadd_readvariableop_resource:	¢*while/lstm_cell_483/BiasAdd/ReadVariableOp¢)while/lstm_cell_483/MatMul/ReadVariableOp¢+while/lstm_cell_483/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_483/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_483/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_483/addAddV2$while/lstm_cell_483/MatMul:product:0&while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_483/BiasAddBiasAddwhile/lstm_cell_483/add:z:02while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_483/splitSplit,while/lstm_cell_483/split/split_dim:output:0$while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_483/SigmoidSigmoid"while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_1Sigmoid"while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mulMul!while/lstm_cell_483/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_483/ReluRelu"while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_1Mulwhile/lstm_cell_483/Sigmoid:y:0&while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/add_1AddV2while/lstm_cell_483/mul:z:0while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_2Sigmoid"while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_483/Relu_1Reluwhile/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_2Mul!while/lstm_cell_483/Sigmoid_2:y:0(while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_483/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_483/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_483/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_483/BiasAdd/ReadVariableOp*^while/lstm_cell_483/MatMul/ReadVariableOp,^while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_483_biasadd_readvariableop_resource5while_lstm_cell_483_biasadd_readvariableop_resource_0"n
4while_lstm_cell_483_matmul_1_readvariableop_resource6while_lstm_cell_483_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_483_matmul_readvariableop_resource4while_lstm_cell_483_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_483/BiasAdd/ReadVariableOp*while/lstm_cell_483/BiasAdd/ReadVariableOp2V
)while/lstm_cell_483/MatMul/ReadVariableOp)while/lstm_cell_483/MatMul/ReadVariableOp2Z
+while/lstm_cell_483/MatMul_1/ReadVariableOp+while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ä8
Ô
while_body_2933289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_485_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_485_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_485_matmul_readvariableop_resource:2(F
4while_lstm_cell_485_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_485_biasadd_readvariableop_resource:(¢*while/lstm_cell_485/BiasAdd/ReadVariableOp¢)while/lstm_cell_485/MatMul/ReadVariableOp¢+while/lstm_cell_485/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_485/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_485/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_485/addAddV2$while/lstm_cell_485/MatMul:product:0&while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_485/BiasAddBiasAddwhile/lstm_cell_485/add:z:02while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_485/splitSplit,while/lstm_cell_485/split/split_dim:output:0$while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_485/SigmoidSigmoid"while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_1Sigmoid"while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mulMul!while/lstm_cell_485/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_485/ReluRelu"while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_1Mulwhile/lstm_cell_485/Sigmoid:y:0&while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/add_1AddV2while/lstm_cell_485/mul:z:0while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_2Sigmoid"while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_485/Relu_1Reluwhile/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_2Mul!while/lstm_cell_485/Sigmoid_2:y:0(while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_485/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_485/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_485/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_485/BiasAdd/ReadVariableOp*^while/lstm_cell_485/MatMul/ReadVariableOp,^while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_485_biasadd_readvariableop_resource5while_lstm_cell_485_biasadd_readvariableop_resource_0"n
4while_lstm_cell_485_matmul_1_readvariableop_resource6while_lstm_cell_485_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_485_matmul_readvariableop_resource4while_lstm_cell_485_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_485/BiasAdd/ReadVariableOp*while/lstm_cell_485/BiasAdd/ReadVariableOp2V
)while/lstm_cell_485/MatMul/ReadVariableOp)while/lstm_cell_485/MatMul/ReadVariableOp2Z
+while/lstm_cell_485/MatMul_1/ReadVariableOp+while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933538

inputs?
,lstm_cell_484_matmul_readvariableop_resource:	dÈA
.lstm_cell_484_matmul_1_readvariableop_resource:	2È<
-lstm_cell_484_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_484/BiasAdd/ReadVariableOp¢#lstm_cell_484/MatMul/ReadVariableOp¢%lstm_cell_484/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_484/MatMul/ReadVariableOpReadVariableOp,lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_484/MatMulMatMulstrided_slice_2:output:0+lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_484/MatMul_1MatMulzeros:output:0-lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_484/addAddV2lstm_cell_484/MatMul:product:0 lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_484/BiasAddBiasAddlstm_cell_484/add:z:0,lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_484/splitSplit&lstm_cell_484/split/split_dim:output:0lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_484/SigmoidSigmoidlstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_1Sigmoidlstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_484/mulMullstm_cell_484/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_484/ReluRelulstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_1Mullstm_cell_484/Sigmoid:y:0 lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_484/add_1AddV2lstm_cell_484/mul:z:0lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_2Sigmoidlstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_484/Relu_1Relulstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_2Mullstm_cell_484/Sigmoid_2:y:0"lstm_cell_484/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_484_matmul_readvariableop_resource.lstm_cell_484_matmul_1_readvariableop_resource-lstm_cell_484_biasadd_readvariableop_resource*
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
while_body_2933454*
condR
while_cond_2933453*K
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
NoOpNoOp%^lstm_cell_484/BiasAdd/ReadVariableOp$^lstm_cell_484/MatMul/ReadVariableOp&^lstm_cell_484/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_484/BiasAdd/ReadVariableOp$lstm_cell_484/BiasAdd/ReadVariableOp2J
#lstm_cell_484/MatMul/ReadVariableOp#lstm_cell_484/MatMul/ReadVariableOp2N
%lstm_cell_484/MatMul_1/ReadVariableOp%lstm_cell_484/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2934929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_483_matmul_readvariableop_resource_0:	I
6while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_483_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_483_matmul_readvariableop_resource:	G
4while_lstm_cell_483_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_483_biasadd_readvariableop_resource:	¢*while/lstm_cell_483/BiasAdd/ReadVariableOp¢)while/lstm_cell_483/MatMul/ReadVariableOp¢+while/lstm_cell_483/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_483/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_483/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_483/addAddV2$while/lstm_cell_483/MatMul:product:0&while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_483/BiasAddBiasAddwhile/lstm_cell_483/add:z:02while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_483/splitSplit,while/lstm_cell_483/split/split_dim:output:0$while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_483/SigmoidSigmoid"while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_1Sigmoid"while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mulMul!while/lstm_cell_483/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_483/ReluRelu"while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_1Mulwhile/lstm_cell_483/Sigmoid:y:0&while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/add_1AddV2while/lstm_cell_483/mul:z:0while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_2Sigmoid"while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_483/Relu_1Reluwhile/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_2Mul!while/lstm_cell_483/Sigmoid_2:y:0(while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_483/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_483/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_483/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_483/BiasAdd/ReadVariableOp*^while/lstm_cell_483/MatMul/ReadVariableOp,^while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_483_biasadd_readvariableop_resource5while_lstm_cell_483_biasadd_readvariableop_resource_0"n
4while_lstm_cell_483_matmul_1_readvariableop_resource6while_lstm_cell_483_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_483_matmul_readvariableop_resource4while_lstm_cell_483_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_483/BiasAdd/ReadVariableOp*while/lstm_cell_483/BiasAdd/ReadVariableOp2V
)while/lstm_cell_483/MatMul/ReadVariableOp)while/lstm_cell_483/MatMul/ReadVariableOp2Z
+while/lstm_cell_483/MatMul_1/ReadVariableOp+while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2932857

inputs?
,lstm_cell_483_matmul_readvariableop_resource:	A
.lstm_cell_483_matmul_1_readvariableop_resource:	d<
-lstm_cell_483_biasadd_readvariableop_resource:	
identity¢$lstm_cell_483/BiasAdd/ReadVariableOp¢#lstm_cell_483/MatMul/ReadVariableOp¢%lstm_cell_483/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_483/MatMul/ReadVariableOpReadVariableOp,lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_483/MatMulMatMulstrided_slice_2:output:0+lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_483/MatMul_1MatMulzeros:output:0-lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_483/addAddV2lstm_cell_483/MatMul:product:0 lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_483/BiasAddBiasAddlstm_cell_483/add:z:0,lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_483/splitSplit&lstm_cell_483/split/split_dim:output:0lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_483/SigmoidSigmoidlstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_1Sigmoidlstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_483/mulMullstm_cell_483/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_483/ReluRelulstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_1Mullstm_cell_483/Sigmoid:y:0 lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_483/add_1AddV2lstm_cell_483/mul:z:0lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_2Sigmoidlstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_483/Relu_1Relulstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_2Mullstm_cell_483/Sigmoid_2:y:0"lstm_cell_483/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_483_matmul_readvariableop_resource.lstm_cell_483_matmul_1_readvariableop_resource-lstm_cell_483_biasadd_readvariableop_resource*
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
while_body_2932773*
condR
while_cond_2932772*K
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
NoOpNoOp%^lstm_cell_483/BiasAdd/ReadVariableOp$^lstm_cell_483/MatMul/ReadVariableOp&^lstm_cell_483/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_483/BiasAdd/ReadVariableOp$lstm_cell_483/BiasAdd/ReadVariableOp2J
#lstm_cell_483/MatMul/ReadVariableOp#lstm_cell_483/MatMul/ReadVariableOp2N
%lstm_cell_483/MatMul_1/ReadVariableOp%lstm_cell_483/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
K
¤
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935156
inputs_0?
,lstm_cell_483_matmul_readvariableop_resource:	A
.lstm_cell_483_matmul_1_readvariableop_resource:	d<
-lstm_cell_483_biasadd_readvariableop_resource:	
identity¢$lstm_cell_483/BiasAdd/ReadVariableOp¢#lstm_cell_483/MatMul/ReadVariableOp¢%lstm_cell_483/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_483/MatMul/ReadVariableOpReadVariableOp,lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_483/MatMulMatMulstrided_slice_2:output:0+lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_483/MatMul_1MatMulzeros:output:0-lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_483/addAddV2lstm_cell_483/MatMul:product:0 lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_483/BiasAddBiasAddlstm_cell_483/add:z:0,lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_483/splitSplit&lstm_cell_483/split/split_dim:output:0lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_483/SigmoidSigmoidlstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_1Sigmoidlstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_483/mulMullstm_cell_483/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_483/ReluRelulstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_1Mullstm_cell_483/Sigmoid:y:0 lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_483/add_1AddV2lstm_cell_483/mul:z:0lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_2Sigmoidlstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_483/Relu_1Relulstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_2Mullstm_cell_483/Sigmoid_2:y:0"lstm_cell_483/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_483_matmul_readvariableop_resource.lstm_cell_483_matmul_1_readvariableop_resource-lstm_cell_483_biasadd_readvariableop_resource*
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
while_body_2935072*
condR
while_cond_2935071*K
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
NoOpNoOp%^lstm_cell_483/BiasAdd/ReadVariableOp$^lstm_cell_483/MatMul/ReadVariableOp&^lstm_cell_483/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_483/BiasAdd/ReadVariableOp$lstm_cell_483/BiasAdd/ReadVariableOp2J
#lstm_cell_483/MatMul/ReadVariableOp#lstm_cell_483/MatMul/ReadVariableOp2N
%lstm_cell_483/MatMul_1/ReadVariableOp%lstm_cell_483/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ä8
Ô
while_body_2936304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_485_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_485_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_485_matmul_readvariableop_resource:2(F
4while_lstm_cell_485_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_485_biasadd_readvariableop_resource:(¢*while/lstm_cell_485/BiasAdd/ReadVariableOp¢)while/lstm_cell_485/MatMul/ReadVariableOp¢+while/lstm_cell_485/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_485/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_485/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_485/addAddV2$while/lstm_cell_485/MatMul:product:0&while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_485/BiasAddBiasAddwhile/lstm_cell_485/add:z:02while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_485/splitSplit,while/lstm_cell_485/split/split_dim:output:0$while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_485/SigmoidSigmoid"while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_1Sigmoid"while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mulMul!while/lstm_cell_485/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_485/ReluRelu"while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_1Mulwhile/lstm_cell_485/Sigmoid:y:0&while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/add_1AddV2while/lstm_cell_485/mul:z:0while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_2Sigmoid"while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_485/Relu_1Reluwhile/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_2Mul!while/lstm_cell_485/Sigmoid_2:y:0(while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_485/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_485/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_485/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_485/BiasAdd/ReadVariableOp*^while/lstm_cell_485/MatMul/ReadVariableOp,^while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_485_biasadd_readvariableop_resource5while_lstm_cell_485_biasadd_readvariableop_resource_0"n
4while_lstm_cell_485_matmul_1_readvariableop_resource6while_lstm_cell_485_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_485_matmul_readvariableop_resource4while_lstm_cell_485_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_485/BiasAdd/ReadVariableOp*while/lstm_cell_485/BiasAdd/ReadVariableOp2V
)while/lstm_cell_485/MatMul/ReadVariableOp)while/lstm_cell_485/MatMul/ReadVariableOp2Z
+while/lstm_cell_485/MatMul_1/ReadVariableOp+while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935442

inputs?
,lstm_cell_483_matmul_readvariableop_resource:	A
.lstm_cell_483_matmul_1_readvariableop_resource:	d<
-lstm_cell_483_biasadd_readvariableop_resource:	
identity¢$lstm_cell_483/BiasAdd/ReadVariableOp¢#lstm_cell_483/MatMul/ReadVariableOp¢%lstm_cell_483/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_483/MatMul/ReadVariableOpReadVariableOp,lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_483/MatMulMatMulstrided_slice_2:output:0+lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_483/MatMul_1MatMulzeros:output:0-lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_483/addAddV2lstm_cell_483/MatMul:product:0 lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_483/BiasAddBiasAddlstm_cell_483/add:z:0,lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_483/splitSplit&lstm_cell_483/split/split_dim:output:0lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_483/SigmoidSigmoidlstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_1Sigmoidlstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_483/mulMullstm_cell_483/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_483/ReluRelulstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_1Mullstm_cell_483/Sigmoid:y:0 lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_483/add_1AddV2lstm_cell_483/mul:z:0lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_2Sigmoidlstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_483/Relu_1Relulstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_2Mullstm_cell_483/Sigmoid_2:y:0"lstm_cell_483/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_483_matmul_readvariableop_resource.lstm_cell_483_matmul_1_readvariableop_resource-lstm_cell_483_biasadd_readvariableop_resource*
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
while_body_2935358*
condR
while_cond_2935357*K
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
NoOpNoOp%^lstm_cell_483/BiasAdd/ReadVariableOp$^lstm_cell_483/MatMul/ReadVariableOp&^lstm_cell_483/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_483/BiasAdd/ReadVariableOp$lstm_cell_483/BiasAdd/ReadVariableOp2J
#lstm_cell_483/MatMul/ReadVariableOp#lstm_cell_483/MatMul/ReadVariableOp2N
%lstm_cell_483/MatMul_1/ReadVariableOp%lstm_cell_483/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
õ
/__inference_lstm_cell_485_layer_call_fn_2936923

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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932571o
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
while_body_2933073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_485_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_485_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_485_matmul_readvariableop_resource:2(F
4while_lstm_cell_485_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_485_biasadd_readvariableop_resource:(¢*while/lstm_cell_485/BiasAdd/ReadVariableOp¢)while/lstm_cell_485/MatMul/ReadVariableOp¢+while/lstm_cell_485/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_485/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_485/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_485/addAddV2$while/lstm_cell_485/MatMul:product:0&while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_485/BiasAddBiasAddwhile/lstm_cell_485/add:z:02while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_485/splitSplit,while/lstm_cell_485/split/split_dim:output:0$while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_485/SigmoidSigmoid"while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_1Sigmoid"while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mulMul!while/lstm_cell_485/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_485/ReluRelu"while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_1Mulwhile/lstm_cell_485/Sigmoid:y:0&while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/add_1AddV2while/lstm_cell_485/mul:z:0while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_2Sigmoid"while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_485/Relu_1Reluwhile/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_2Mul!while/lstm_cell_485/Sigmoid_2:y:0(while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_485/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_485/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_485/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_485/BiasAdd/ReadVariableOp*^while/lstm_cell_485/MatMul/ReadVariableOp,^while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_485_biasadd_readvariableop_resource5while_lstm_cell_485_biasadd_readvariableop_resource_0"n
4while_lstm_cell_485_matmul_1_readvariableop_resource6while_lstm_cell_485_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_485_matmul_readvariableop_resource4while_lstm_cell_485_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_485/BiasAdd/ReadVariableOp*while/lstm_cell_485/BiasAdd/ReadVariableOp2V
)while/lstm_cell_485/MatMul/ReadVariableOp)while/lstm_cell_485/MatMul/ReadVariableOp2Z
+while/lstm_cell_485/MatMul_1/ReadVariableOp+while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ýA
Ô

lstm_95_while_body_2934736,
(lstm_95_while_lstm_95_while_loop_counter2
.lstm_95_while_lstm_95_while_maximum_iterations
lstm_95_while_placeholder
lstm_95_while_placeholder_1
lstm_95_while_placeholder_2
lstm_95_while_placeholder_3+
'lstm_95_while_lstm_95_strided_slice_1_0g
clstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0:2(P
>lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(K
=lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0:(
lstm_95_while_identity
lstm_95_while_identity_1
lstm_95_while_identity_2
lstm_95_while_identity_3
lstm_95_while_identity_4
lstm_95_while_identity_5)
%lstm_95_while_lstm_95_strided_slice_1e
alstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensorL
:lstm_95_while_lstm_cell_485_matmul_readvariableop_resource:2(N
<lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource:
(I
;lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource:(¢2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp¢1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp¢3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp
?lstm_95/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_95/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensor_0lstm_95_while_placeholderHlstm_95/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp<lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_95/while/lstm_cell_485/MatMulMatMul8lstm_95/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp>lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_95/while/lstm_cell_485/MatMul_1MatMullstm_95_while_placeholder_2;lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_95/while/lstm_cell_485/addAddV2,lstm_95/while/lstm_cell_485/MatMul:product:0.lstm_95/while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp=lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_95/while/lstm_cell_485/BiasAddBiasAdd#lstm_95/while/lstm_cell_485/add:z:0:lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_95/while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_95/while/lstm_cell_485/splitSplit4lstm_95/while/lstm_cell_485/split/split_dim:output:0,lstm_95/while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_95/while/lstm_cell_485/SigmoidSigmoid*lstm_95/while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_95/while/lstm_cell_485/Sigmoid_1Sigmoid*lstm_95/while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_95/while/lstm_cell_485/mulMul)lstm_95/while/lstm_cell_485/Sigmoid_1:y:0lstm_95_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_95/while/lstm_cell_485/ReluRelu*lstm_95/while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_95/while/lstm_cell_485/mul_1Mul'lstm_95/while/lstm_cell_485/Sigmoid:y:0.lstm_95/while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_95/while/lstm_cell_485/add_1AddV2#lstm_95/while/lstm_cell_485/mul:z:0%lstm_95/while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_95/while/lstm_cell_485/Sigmoid_2Sigmoid*lstm_95/while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_95/while/lstm_cell_485/Relu_1Relu%lstm_95/while/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_95/while/lstm_cell_485/mul_2Mul)lstm_95/while/lstm_cell_485/Sigmoid_2:y:00lstm_95/while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_95/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_95_while_placeholder_1lstm_95_while_placeholder%lstm_95/while/lstm_cell_485/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_95/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_95/while/addAddV2lstm_95_while_placeholderlstm_95/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_95/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_95/while/add_1AddV2(lstm_95_while_lstm_95_while_loop_counterlstm_95/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_95/while/IdentityIdentitylstm_95/while/add_1:z:0^lstm_95/while/NoOp*
T0*
_output_shapes
: 
lstm_95/while/Identity_1Identity.lstm_95_while_lstm_95_while_maximum_iterations^lstm_95/while/NoOp*
T0*
_output_shapes
: q
lstm_95/while/Identity_2Identitylstm_95/while/add:z:0^lstm_95/while/NoOp*
T0*
_output_shapes
: 
lstm_95/while/Identity_3IdentityBlstm_95/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_95/while/NoOp*
T0*
_output_shapes
: 
lstm_95/while/Identity_4Identity%lstm_95/while/lstm_cell_485/mul_2:z:0^lstm_95/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/while/Identity_5Identity%lstm_95/while/lstm_cell_485/add_1:z:0^lstm_95/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_95/while/NoOpNoOp3^lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2^lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp4^lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_95_while_identitylstm_95/while/Identity:output:0"=
lstm_95_while_identity_1!lstm_95/while/Identity_1:output:0"=
lstm_95_while_identity_2!lstm_95/while/Identity_2:output:0"=
lstm_95_while_identity_3!lstm_95/while/Identity_3:output:0"=
lstm_95_while_identity_4!lstm_95/while/Identity_4:output:0"=
lstm_95_while_identity_5!lstm_95/while/Identity_5:output:0"P
%lstm_95_while_lstm_95_strided_slice_1'lstm_95_while_lstm_95_strided_slice_1_0"|
;lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource=lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0"~
<lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource>lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0"z
:lstm_95_while_lstm_cell_485_matmul_readvariableop_resource<lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0"È
alstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensorclstm_95_while_tensorarrayv2read_tensorlistgetitem_lstm_95_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2f
1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp1lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp2j
3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp3lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933007

inputs?
,lstm_cell_484_matmul_readvariableop_resource:	dÈA
.lstm_cell_484_matmul_1_readvariableop_resource:	2È<
-lstm_cell_484_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_484/BiasAdd/ReadVariableOp¢#lstm_cell_484/MatMul/ReadVariableOp¢%lstm_cell_484/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_484/MatMul/ReadVariableOpReadVariableOp,lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_484/MatMulMatMulstrided_slice_2:output:0+lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_484/MatMul_1MatMulzeros:output:0-lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_484/addAddV2lstm_cell_484/MatMul:product:0 lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_484/BiasAddBiasAddlstm_cell_484/add:z:0,lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_484/splitSplit&lstm_cell_484/split/split_dim:output:0lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_484/SigmoidSigmoidlstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_1Sigmoidlstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_484/mulMullstm_cell_484/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_484/ReluRelulstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_1Mullstm_cell_484/Sigmoid:y:0 lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_484/add_1AddV2lstm_cell_484/mul:z:0lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_2Sigmoidlstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_484/Relu_1Relulstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_2Mullstm_cell_484/Sigmoid_2:y:0"lstm_cell_484/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_484_matmul_readvariableop_resource.lstm_cell_484_matmul_1_readvariableop_resource-lstm_cell_484_biasadd_readvariableop_resource*
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
while_body_2932923*
condR
while_cond_2932922*K
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
NoOpNoOp%^lstm_cell_484/BiasAdd/ReadVariableOp$^lstm_cell_484/MatMul/ReadVariableOp&^lstm_cell_484/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_484/BiasAdd/ReadVariableOp$lstm_cell_484/BiasAdd/ReadVariableOp2J
#lstm_cell_484/MatMul/ReadVariableOp#lstm_cell_484/MatMul/ReadVariableOp2N
%lstm_cell_484/MatMul_1/ReadVariableOp%lstm_cell_484/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ß

J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2936857

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
Í

J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932425

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

lstm_93_while_body_2934458,
(lstm_93_while_lstm_93_while_loop_counter2
.lstm_93_while_lstm_93_while_maximum_iterations
lstm_93_while_placeholder
lstm_93_while_placeholder_1
lstm_93_while_placeholder_2
lstm_93_while_placeholder_3+
'lstm_93_while_lstm_93_strided_slice_1_0g
clstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0:	Q
>lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dL
=lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0:	
lstm_93_while_identity
lstm_93_while_identity_1
lstm_93_while_identity_2
lstm_93_while_identity_3
lstm_93_while_identity_4
lstm_93_while_identity_5)
%lstm_93_while_lstm_93_strided_slice_1e
alstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensorM
:lstm_93_while_lstm_cell_483_matmul_readvariableop_resource:	O
<lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource:	dJ
;lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource:	¢2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp¢1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp¢3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp
?lstm_93/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_93/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensor_0lstm_93_while_placeholderHlstm_93/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp<lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_93/while/lstm_cell_483/MatMulMatMul8lstm_93/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp>lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_93/while/lstm_cell_483/MatMul_1MatMullstm_93_while_placeholder_2;lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_93/while/lstm_cell_483/addAddV2,lstm_93/while/lstm_cell_483/MatMul:product:0.lstm_93/while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp=lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_93/while/lstm_cell_483/BiasAddBiasAdd#lstm_93/while/lstm_cell_483/add:z:0:lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_93/while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_93/while/lstm_cell_483/splitSplit4lstm_93/while/lstm_cell_483/split/split_dim:output:0,lstm_93/while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_93/while/lstm_cell_483/SigmoidSigmoid*lstm_93/while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_93/while/lstm_cell_483/Sigmoid_1Sigmoid*lstm_93/while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_93/while/lstm_cell_483/mulMul)lstm_93/while/lstm_cell_483/Sigmoid_1:y:0lstm_93_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_93/while/lstm_cell_483/ReluRelu*lstm_93/while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_93/while/lstm_cell_483/mul_1Mul'lstm_93/while/lstm_cell_483/Sigmoid:y:0.lstm_93/while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_93/while/lstm_cell_483/add_1AddV2#lstm_93/while/lstm_cell_483/mul:z:0%lstm_93/while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_93/while/lstm_cell_483/Sigmoid_2Sigmoid*lstm_93/while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_93/while/lstm_cell_483/Relu_1Relu%lstm_93/while/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_93/while/lstm_cell_483/mul_2Mul)lstm_93/while/lstm_cell_483/Sigmoid_2:y:00lstm_93/while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_93/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_93_while_placeholder_1lstm_93_while_placeholder%lstm_93/while/lstm_cell_483/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_93/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_93/while/addAddV2lstm_93_while_placeholderlstm_93/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_93/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_93/while/add_1AddV2(lstm_93_while_lstm_93_while_loop_counterlstm_93/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_93/while/IdentityIdentitylstm_93/while/add_1:z:0^lstm_93/while/NoOp*
T0*
_output_shapes
: 
lstm_93/while/Identity_1Identity.lstm_93_while_lstm_93_while_maximum_iterations^lstm_93/while/NoOp*
T0*
_output_shapes
: q
lstm_93/while/Identity_2Identitylstm_93/while/add:z:0^lstm_93/while/NoOp*
T0*
_output_shapes
: 
lstm_93/while/Identity_3IdentityBlstm_93/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_93/while/NoOp*
T0*
_output_shapes
: 
lstm_93/while/Identity_4Identity%lstm_93/while/lstm_cell_483/mul_2:z:0^lstm_93/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/while/Identity_5Identity%lstm_93/while/lstm_cell_483/add_1:z:0^lstm_93/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_93/while/NoOpNoOp3^lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2^lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp4^lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_93_while_identitylstm_93/while/Identity:output:0"=
lstm_93_while_identity_1!lstm_93/while/Identity_1:output:0"=
lstm_93_while_identity_2!lstm_93/while/Identity_2:output:0"=
lstm_93_while_identity_3!lstm_93/while/Identity_3:output:0"=
lstm_93_while_identity_4!lstm_93/while/Identity_4:output:0"=
lstm_93_while_identity_5!lstm_93/while/Identity_5:output:0"P
%lstm_93_while_lstm_93_strided_slice_1'lstm_93_while_lstm_93_strided_slice_1_0"|
;lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource=lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0"~
<lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource>lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0"z
:lstm_93_while_lstm_cell_483_matmul_readvariableop_resource<lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0"È
alstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensorclstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2f
1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp2j
3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_94_while_body_2934597,
(lstm_94_while_lstm_94_while_loop_counter2
.lstm_94_while_lstm_94_while_maximum_iterations
lstm_94_while_placeholder
lstm_94_while_placeholder_1
lstm_94_while_placeholder_2
lstm_94_while_placeholder_3+
'lstm_94_while_lstm_94_strided_slice_1_0g
clstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈQ
>lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
lstm_94_while_identity
lstm_94_while_identity_1
lstm_94_while_identity_2
lstm_94_while_identity_3
lstm_94_while_identity_4
lstm_94_while_identity_5)
%lstm_94_while_lstm_94_strided_slice_1e
alstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensorM
:lstm_94_while_lstm_cell_484_matmul_readvariableop_resource:	dÈO
<lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈJ
;lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource:	È¢2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp¢1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp¢3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp
?lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensor_0lstm_94_while_placeholderHlstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp<lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_94/while/lstm_cell_484/MatMulMatMul8lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp>lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_94/while/lstm_cell_484/MatMul_1MatMullstm_94_while_placeholder_2;lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_94/while/lstm_cell_484/addAddV2,lstm_94/while/lstm_cell_484/MatMul:product:0.lstm_94/while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp=lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_94/while/lstm_cell_484/BiasAddBiasAdd#lstm_94/while/lstm_cell_484/add:z:0:lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_94/while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_94/while/lstm_cell_484/splitSplit4lstm_94/while/lstm_cell_484/split/split_dim:output:0,lstm_94/while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_94/while/lstm_cell_484/SigmoidSigmoid*lstm_94/while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_94/while/lstm_cell_484/Sigmoid_1Sigmoid*lstm_94/while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_94/while/lstm_cell_484/mulMul)lstm_94/while/lstm_cell_484/Sigmoid_1:y:0lstm_94_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_94/while/lstm_cell_484/ReluRelu*lstm_94/while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_94/while/lstm_cell_484/mul_1Mul'lstm_94/while/lstm_cell_484/Sigmoid:y:0.lstm_94/while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_94/while/lstm_cell_484/add_1AddV2#lstm_94/while/lstm_cell_484/mul:z:0%lstm_94/while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_94/while/lstm_cell_484/Sigmoid_2Sigmoid*lstm_94/while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_94/while/lstm_cell_484/Relu_1Relu%lstm_94/while/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_94/while/lstm_cell_484/mul_2Mul)lstm_94/while/lstm_cell_484/Sigmoid_2:y:00lstm_94/while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_94_while_placeholder_1lstm_94_while_placeholder%lstm_94/while/lstm_cell_484/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_94/while/addAddV2lstm_94_while_placeholderlstm_94/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_94/while/add_1AddV2(lstm_94_while_lstm_94_while_loop_counterlstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_94/while/IdentityIdentitylstm_94/while/add_1:z:0^lstm_94/while/NoOp*
T0*
_output_shapes
: 
lstm_94/while/Identity_1Identity.lstm_94_while_lstm_94_while_maximum_iterations^lstm_94/while/NoOp*
T0*
_output_shapes
: q
lstm_94/while/Identity_2Identitylstm_94/while/add:z:0^lstm_94/while/NoOp*
T0*
_output_shapes
: 
lstm_94/while/Identity_3IdentityBlstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_94/while/NoOp*
T0*
_output_shapes
: 
lstm_94/while/Identity_4Identity%lstm_94/while/lstm_cell_484/mul_2:z:0^lstm_94/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/while/Identity_5Identity%lstm_94/while/lstm_cell_484/add_1:z:0^lstm_94/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_94/while/NoOpNoOp3^lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2^lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp4^lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_94_while_identitylstm_94/while/Identity:output:0"=
lstm_94_while_identity_1!lstm_94/while/Identity_1:output:0"=
lstm_94_while_identity_2!lstm_94/while/Identity_2:output:0"=
lstm_94_while_identity_3!lstm_94/while/Identity_3:output:0"=
lstm_94_while_identity_4!lstm_94/while/Identity_4:output:0"=
lstm_94_while_identity_5!lstm_94/while/Identity_5:output:0"P
%lstm_94_while_lstm_94_strided_slice_1'lstm_94_while_lstm_94_strided_slice_1_0"|
;lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource=lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0"~
<lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource>lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0"z
:lstm_94_while_lstm_cell_484_matmul_readvariableop_resource<lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0"È
alstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensorclstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2f
1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp2j
3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933883
lstm_93_input"
lstm_93_2933856:	"
lstm_93_2933858:	d
lstm_93_2933860:	"
lstm_94_2933863:	dÈ"
lstm_94_2933865:	2È
lstm_94_2933867:	È!
lstm_95_2933870:2(!
lstm_95_2933872:
(
lstm_95_2933874:("
dense_31_2933877:

dense_31_2933879:
identity¢ dense_31/StatefulPartitionedCall¢lstm_93/StatefulPartitionedCall¢lstm_94/StatefulPartitionedCall¢lstm_95/StatefulPartitionedCall
lstm_93/StatefulPartitionedCallStatefulPartitionedCalllstm_93_inputlstm_93_2933856lstm_93_2933858lstm_93_2933860*
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2933703¨
lstm_94/StatefulPartitionedCallStatefulPartitionedCall(lstm_93/StatefulPartitionedCall:output:0lstm_94_2933863lstm_94_2933865lstm_94_2933867*
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933538¤
lstm_95/StatefulPartitionedCallStatefulPartitionedCall(lstm_94/StatefulPartitionedCall:output:0lstm_95_2933870lstm_95_2933872lstm_95_2933874*
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933373
 dense_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_95/StatefulPartitionedCall:output:0dense_31_2933877dense_31_2933879*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_2933175x
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_31/StatefulPartitionedCall ^lstm_93/StatefulPartitionedCall ^lstm_94/StatefulPartitionedCall ^lstm_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_93/StatefulPartitionedCalllstm_93/StatefulPartitionedCall2B
lstm_94/StatefulPartitionedCalllstm_94/StatefulPartitionedCall2B
lstm_95/StatefulPartitionedCalllstm_95/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_93_input
¿


%__inference_signature_wrapper_2933918
lstm_93_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_93_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2931658o
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
_user_specified_namelstm_93_input
þ

J__inference_sequential_31_layer_call_and_return_conditional_losses_2934826

inputsG
4lstm_93_lstm_cell_483_matmul_readvariableop_resource:	I
6lstm_93_lstm_cell_483_matmul_1_readvariableop_resource:	dD
5lstm_93_lstm_cell_483_biasadd_readvariableop_resource:	G
4lstm_94_lstm_cell_484_matmul_readvariableop_resource:	dÈI
6lstm_94_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈD
5lstm_94_lstm_cell_484_biasadd_readvariableop_resource:	ÈF
4lstm_95_lstm_cell_485_matmul_readvariableop_resource:2(H
6lstm_95_lstm_cell_485_matmul_1_readvariableop_resource:
(C
5lstm_95_lstm_cell_485_biasadd_readvariableop_resource:(9
'dense_31_matmul_readvariableop_resource:
6
(dense_31_biasadd_readvariableop_resource:
identity¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp¢,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp¢+lstm_93/lstm_cell_483/MatMul/ReadVariableOp¢-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp¢lstm_93/while¢,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp¢+lstm_94/lstm_cell_484/MatMul/ReadVariableOp¢-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp¢lstm_94/while¢,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp¢+lstm_95/lstm_cell_485/MatMul/ReadVariableOp¢-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp¢lstm_95/whileC
lstm_93/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_93/strided_sliceStridedSlicelstm_93/Shape:output:0$lstm_93/strided_slice/stack:output:0&lstm_93/strided_slice/stack_1:output:0&lstm_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_93/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_93/zeros/packedPacklstm_93/strided_slice:output:0lstm_93/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_93/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_93/zerosFilllstm_93/zeros/packed:output:0lstm_93/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_93/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_93/zeros_1/packedPacklstm_93/strided_slice:output:0!lstm_93/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_93/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_93/zeros_1Filllstm_93/zeros_1/packed:output:0lstm_93/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_93/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_93/transpose	Transposeinputslstm_93/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_93/Shape_1Shapelstm_93/transpose:y:0*
T0*
_output_shapes
:g
lstm_93/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_93/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_93/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_93/strided_slice_1StridedSlicelstm_93/Shape_1:output:0&lstm_93/strided_slice_1/stack:output:0(lstm_93/strided_slice_1/stack_1:output:0(lstm_93/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_93/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_93/TensorArrayV2TensorListReserve,lstm_93/TensorArrayV2/element_shape:output:0 lstm_93/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_93/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_93/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_93/transpose:y:0Flstm_93/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_93/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_93/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_93/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_93/strided_slice_2StridedSlicelstm_93/transpose:y:0&lstm_93/strided_slice_2/stack:output:0(lstm_93/strided_slice_2/stack_1:output:0(lstm_93/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_93/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4lstm_93_lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_93/lstm_cell_483/MatMulMatMul lstm_93/strided_slice_2:output:03lstm_93/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6lstm_93_lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_93/lstm_cell_483/MatMul_1MatMullstm_93/zeros:output:05lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_93/lstm_cell_483/addAddV2&lstm_93/lstm_cell_483/MatMul:product:0(lstm_93/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5lstm_93_lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_93/lstm_cell_483/BiasAddBiasAddlstm_93/lstm_cell_483/add:z:04lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_93/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_93/lstm_cell_483/splitSplit.lstm_93/lstm_cell_483/split/split_dim:output:0&lstm_93/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_93/lstm_cell_483/SigmoidSigmoid$lstm_93/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/Sigmoid_1Sigmoid$lstm_93/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/mulMul#lstm_93/lstm_cell_483/Sigmoid_1:y:0lstm_93/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_93/lstm_cell_483/ReluRelu$lstm_93/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_93/lstm_cell_483/mul_1Mul!lstm_93/lstm_cell_483/Sigmoid:y:0(lstm_93/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/add_1AddV2lstm_93/lstm_cell_483/mul:z:0lstm_93/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/Sigmoid_2Sigmoid$lstm_93/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_93/lstm_cell_483/Relu_1Relulstm_93/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_93/lstm_cell_483/mul_2Mul#lstm_93/lstm_cell_483/Sigmoid_2:y:0*lstm_93/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_93/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_93/TensorArrayV2_1TensorListReserve.lstm_93/TensorArrayV2_1/element_shape:output:0 lstm_93/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_93/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_93/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_93/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_93/whileWhile#lstm_93/while/loop_counter:output:0)lstm_93/while/maximum_iterations:output:0lstm_93/time:output:0 lstm_93/TensorArrayV2_1:handle:0lstm_93/zeros:output:0lstm_93/zeros_1:output:0 lstm_93/strided_slice_1:output:0?lstm_93/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_93_lstm_cell_483_matmul_readvariableop_resource6lstm_93_lstm_cell_483_matmul_1_readvariableop_resource5lstm_93_lstm_cell_483_biasadd_readvariableop_resource*
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
lstm_93_while_body_2934458*&
condR
lstm_93_while_cond_2934457*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_93/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_93/TensorArrayV2Stack/TensorListStackTensorListStacklstm_93/while:output:3Alstm_93/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_93/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_93/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_93/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_93/strided_slice_3StridedSlice3lstm_93/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_93/strided_slice_3/stack:output:0(lstm_93/strided_slice_3/stack_1:output:0(lstm_93/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_93/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_93/transpose_1	Transpose3lstm_93/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_93/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_93/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_94/ShapeShapelstm_93/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_94/strided_sliceStridedSlicelstm_94/Shape:output:0$lstm_94/strided_slice/stack:output:0&lstm_94/strided_slice/stack_1:output:0&lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_94/zeros/packedPacklstm_94/strided_slice:output:0lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_94/zerosFilllstm_94/zeros/packed:output:0lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_94/zeros_1/packedPacklstm_94/strided_slice:output:0!lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_94/zeros_1Filllstm_94/zeros_1/packed:output:0lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_94/transpose	Transposelstm_93/transpose_1:y:0lstm_94/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_94/Shape_1Shapelstm_94/transpose:y:0*
T0*
_output_shapes
:g
lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_94/strided_slice_1StridedSlicelstm_94/Shape_1:output:0&lstm_94/strided_slice_1/stack:output:0(lstm_94/strided_slice_1/stack_1:output:0(lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_94/TensorArrayV2TensorListReserve,lstm_94/TensorArrayV2/element_shape:output:0 lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_94/transpose:y:0Flstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_94/strided_slice_2StridedSlicelstm_94/transpose:y:0&lstm_94/strided_slice_2/stack:output:0(lstm_94/strided_slice_2/stack_1:output:0(lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_94/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4lstm_94_lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_94/lstm_cell_484/MatMulMatMul lstm_94/strided_slice_2:output:03lstm_94/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6lstm_94_lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_94/lstm_cell_484/MatMul_1MatMullstm_94/zeros:output:05lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_94/lstm_cell_484/addAddV2&lstm_94/lstm_cell_484/MatMul:product:0(lstm_94/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5lstm_94_lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_94/lstm_cell_484/BiasAddBiasAddlstm_94/lstm_cell_484/add:z:04lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_94/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_94/lstm_cell_484/splitSplit.lstm_94/lstm_cell_484/split/split_dim:output:0&lstm_94/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_94/lstm_cell_484/SigmoidSigmoid$lstm_94/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/Sigmoid_1Sigmoid$lstm_94/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/mulMul#lstm_94/lstm_cell_484/Sigmoid_1:y:0lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_94/lstm_cell_484/ReluRelu$lstm_94/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_94/lstm_cell_484/mul_1Mul!lstm_94/lstm_cell_484/Sigmoid:y:0(lstm_94/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/add_1AddV2lstm_94/lstm_cell_484/mul:z:0lstm_94/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/Sigmoid_2Sigmoid$lstm_94/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_94/lstm_cell_484/Relu_1Relulstm_94/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_94/lstm_cell_484/mul_2Mul#lstm_94/lstm_cell_484/Sigmoid_2:y:0*lstm_94/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_94/TensorArrayV2_1TensorListReserve.lstm_94/TensorArrayV2_1/element_shape:output:0 lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_94/whileWhile#lstm_94/while/loop_counter:output:0)lstm_94/while/maximum_iterations:output:0lstm_94/time:output:0 lstm_94/TensorArrayV2_1:handle:0lstm_94/zeros:output:0lstm_94/zeros_1:output:0 lstm_94/strided_slice_1:output:0?lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_94_lstm_cell_484_matmul_readvariableop_resource6lstm_94_lstm_cell_484_matmul_1_readvariableop_resource5lstm_94_lstm_cell_484_biasadd_readvariableop_resource*
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
lstm_94_while_body_2934597*&
condR
lstm_94_while_cond_2934596*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_94/TensorArrayV2Stack/TensorListStackTensorListStacklstm_94/while:output:3Alstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_94/strided_slice_3StridedSlice3lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_94/strided_slice_3/stack:output:0(lstm_94/strided_slice_3/stack_1:output:0(lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_94/transpose_1	Transpose3lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_94/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_95/ShapeShapelstm_94/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_95/strided_sliceStridedSlicelstm_95/Shape:output:0$lstm_95/strided_slice/stack:output:0&lstm_95/strided_slice/stack_1:output:0&lstm_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_95/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_95/zeros/packedPacklstm_95/strided_slice:output:0lstm_95/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_95/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_95/zerosFilllstm_95/zeros/packed:output:0lstm_95/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_95/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_95/zeros_1/packedPacklstm_95/strided_slice:output:0!lstm_95/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_95/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_95/zeros_1Filllstm_95/zeros_1/packed:output:0lstm_95/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_95/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_95/transpose	Transposelstm_94/transpose_1:y:0lstm_95/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_95/Shape_1Shapelstm_95/transpose:y:0*
T0*
_output_shapes
:g
lstm_95/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_95/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_95/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_95/strided_slice_1StridedSlicelstm_95/Shape_1:output:0&lstm_95/strided_slice_1/stack:output:0(lstm_95/strided_slice_1/stack_1:output:0(lstm_95/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_95/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_95/TensorArrayV2TensorListReserve,lstm_95/TensorArrayV2/element_shape:output:0 lstm_95/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_95/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_95/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_95/transpose:y:0Flstm_95/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_95/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_95/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_95/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_95/strided_slice_2StridedSlicelstm_95/transpose:y:0&lstm_95/strided_slice_2/stack:output:0(lstm_95/strided_slice_2/stack_1:output:0(lstm_95/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_95/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4lstm_95_lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_95/lstm_cell_485/MatMulMatMul lstm_95/strided_slice_2:output:03lstm_95/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6lstm_95_lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_95/lstm_cell_485/MatMul_1MatMullstm_95/zeros:output:05lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_95/lstm_cell_485/addAddV2&lstm_95/lstm_cell_485/MatMul:product:0(lstm_95/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5lstm_95_lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_95/lstm_cell_485/BiasAddBiasAddlstm_95/lstm_cell_485/add:z:04lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_95/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_95/lstm_cell_485/splitSplit.lstm_95/lstm_cell_485/split/split_dim:output:0&lstm_95/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_95/lstm_cell_485/SigmoidSigmoid$lstm_95/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/Sigmoid_1Sigmoid$lstm_95/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/mulMul#lstm_95/lstm_cell_485/Sigmoid_1:y:0lstm_95/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_95/lstm_cell_485/ReluRelu$lstm_95/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_95/lstm_cell_485/mul_1Mul!lstm_95/lstm_cell_485/Sigmoid:y:0(lstm_95/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/add_1AddV2lstm_95/lstm_cell_485/mul:z:0lstm_95/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/Sigmoid_2Sigmoid$lstm_95/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_95/lstm_cell_485/Relu_1Relulstm_95/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_95/lstm_cell_485/mul_2Mul#lstm_95/lstm_cell_485/Sigmoid_2:y:0*lstm_95/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_95/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_95/TensorArrayV2_1TensorListReserve.lstm_95/TensorArrayV2_1/element_shape:output:0 lstm_95/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_95/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_95/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_95/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_95/whileWhile#lstm_95/while/loop_counter:output:0)lstm_95/while/maximum_iterations:output:0lstm_95/time:output:0 lstm_95/TensorArrayV2_1:handle:0lstm_95/zeros:output:0lstm_95/zeros_1:output:0 lstm_95/strided_slice_1:output:0?lstm_95/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_95_lstm_cell_485_matmul_readvariableop_resource6lstm_95_lstm_cell_485_matmul_1_readvariableop_resource5lstm_95_lstm_cell_485_biasadd_readvariableop_resource*
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
lstm_95_while_body_2934736*&
condR
lstm_95_while_cond_2934735*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_95/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_95/TensorArrayV2Stack/TensorListStackTensorListStacklstm_95/while:output:3Alstm_95/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_95/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_95/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_95/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_95/strided_slice_3StridedSlice3lstm_95/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_95/strided_slice_3/stack:output:0(lstm_95/strided_slice_3/stack_1:output:0(lstm_95/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_95/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_95/transpose_1	Transpose3lstm_95/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_95/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_95/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_31/MatMulMatMul lstm_95/strided_slice_3:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_31/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp-^lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp,^lstm_93/lstm_cell_483/MatMul/ReadVariableOp.^lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp^lstm_93/while-^lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp,^lstm_94/lstm_cell_484/MatMul/ReadVariableOp.^lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp^lstm_94/while-^lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp,^lstm_95/lstm_cell_485/MatMul/ReadVariableOp.^lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp^lstm_95/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2\
,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp2Z
+lstm_93/lstm_cell_483/MatMul/ReadVariableOp+lstm_93/lstm_cell_483/MatMul/ReadVariableOp2^
-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp2
lstm_93/whilelstm_93/while2\
,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp2Z
+lstm_94/lstm_cell_484/MatMul/ReadVariableOp+lstm_94/lstm_cell_484/MatMul/ReadVariableOp2^
-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp2
lstm_94/whilelstm_94/while2\
,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp2Z
+lstm_95/lstm_cell_485/MatMul/ReadVariableOp+lstm_95/lstm_cell_485/MatMul/ReadVariableOp2^
-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp2
lstm_95/whilelstm_95/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
B
Ú

lstm_94_while_body_2934170,
(lstm_94_while_lstm_94_while_loop_counter2
.lstm_94_while_lstm_94_while_maximum_iterations
lstm_94_while_placeholder
lstm_94_while_placeholder_1
lstm_94_while_placeholder_2
lstm_94_while_placeholder_3+
'lstm_94_while_lstm_94_strided_slice_1_0g
clstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈQ
>lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
lstm_94_while_identity
lstm_94_while_identity_1
lstm_94_while_identity_2
lstm_94_while_identity_3
lstm_94_while_identity_4
lstm_94_while_identity_5)
%lstm_94_while_lstm_94_strided_slice_1e
alstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensorM
:lstm_94_while_lstm_cell_484_matmul_readvariableop_resource:	dÈO
<lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈJ
;lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource:	È¢2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp¢1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp¢3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp
?lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensor_0lstm_94_while_placeholderHlstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp<lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_94/while/lstm_cell_484/MatMulMatMul8lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp>lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_94/while/lstm_cell_484/MatMul_1MatMullstm_94_while_placeholder_2;lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_94/while/lstm_cell_484/addAddV2,lstm_94/while/lstm_cell_484/MatMul:product:0.lstm_94/while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp=lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_94/while/lstm_cell_484/BiasAddBiasAdd#lstm_94/while/lstm_cell_484/add:z:0:lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_94/while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_94/while/lstm_cell_484/splitSplit4lstm_94/while/lstm_cell_484/split/split_dim:output:0,lstm_94/while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_94/while/lstm_cell_484/SigmoidSigmoid*lstm_94/while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_94/while/lstm_cell_484/Sigmoid_1Sigmoid*lstm_94/while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_94/while/lstm_cell_484/mulMul)lstm_94/while/lstm_cell_484/Sigmoid_1:y:0lstm_94_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_94/while/lstm_cell_484/ReluRelu*lstm_94/while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_94/while/lstm_cell_484/mul_1Mul'lstm_94/while/lstm_cell_484/Sigmoid:y:0.lstm_94/while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_94/while/lstm_cell_484/add_1AddV2#lstm_94/while/lstm_cell_484/mul:z:0%lstm_94/while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_94/while/lstm_cell_484/Sigmoid_2Sigmoid*lstm_94/while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_94/while/lstm_cell_484/Relu_1Relu%lstm_94/while/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_94/while/lstm_cell_484/mul_2Mul)lstm_94/while/lstm_cell_484/Sigmoid_2:y:00lstm_94/while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_94_while_placeholder_1lstm_94_while_placeholder%lstm_94/while/lstm_cell_484/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_94/while/addAddV2lstm_94_while_placeholderlstm_94/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_94/while/add_1AddV2(lstm_94_while_lstm_94_while_loop_counterlstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_94/while/IdentityIdentitylstm_94/while/add_1:z:0^lstm_94/while/NoOp*
T0*
_output_shapes
: 
lstm_94/while/Identity_1Identity.lstm_94_while_lstm_94_while_maximum_iterations^lstm_94/while/NoOp*
T0*
_output_shapes
: q
lstm_94/while/Identity_2Identitylstm_94/while/add:z:0^lstm_94/while/NoOp*
T0*
_output_shapes
: 
lstm_94/while/Identity_3IdentityBlstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_94/while/NoOp*
T0*
_output_shapes
: 
lstm_94/while/Identity_4Identity%lstm_94/while/lstm_cell_484/mul_2:z:0^lstm_94/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/while/Identity_5Identity%lstm_94/while/lstm_cell_484/add_1:z:0^lstm_94/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_94/while/NoOpNoOp3^lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2^lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp4^lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_94_while_identitylstm_94/while/Identity:output:0"=
lstm_94_while_identity_1!lstm_94/while/Identity_1:output:0"=
lstm_94_while_identity_2!lstm_94/while/Identity_2:output:0"=
lstm_94_while_identity_3!lstm_94/while/Identity_3:output:0"=
lstm_94_while_identity_4!lstm_94/while/Identity_4:output:0"=
lstm_94_while_identity_5!lstm_94/while/Identity_5:output:0"P
%lstm_94_while_lstm_94_strided_slice_1'lstm_94_while_lstm_94_strided_slice_1_0"|
;lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource=lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0"~
<lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource>lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0"z
:lstm_94_while_lstm_cell_484_matmul_readvariableop_resource<lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0"È
alstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensorclstm_94_while_tensorarrayv2read_tensorlistgetitem_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2f
1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp1lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp2j
3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp3lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

ë
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933771

inputs"
lstm_93_2933744:	"
lstm_93_2933746:	d
lstm_93_2933748:	"
lstm_94_2933751:	dÈ"
lstm_94_2933753:	2È
lstm_94_2933755:	È!
lstm_95_2933758:2(!
lstm_95_2933760:
(
lstm_95_2933762:("
dense_31_2933765:

dense_31_2933767:
identity¢ dense_31/StatefulPartitionedCall¢lstm_93/StatefulPartitionedCall¢lstm_94/StatefulPartitionedCall¢lstm_95/StatefulPartitionedCall
lstm_93/StatefulPartitionedCallStatefulPartitionedCallinputslstm_93_2933744lstm_93_2933746lstm_93_2933748*
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2933703¨
lstm_94/StatefulPartitionedCallStatefulPartitionedCall(lstm_93/StatefulPartitionedCall:output:0lstm_94_2933751lstm_94_2933753lstm_94_2933755*
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933538¤
lstm_95/StatefulPartitionedCallStatefulPartitionedCall(lstm_94/StatefulPartitionedCall:output:0lstm_95_2933758lstm_95_2933760lstm_95_2933762*
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933373
 dense_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_95/StatefulPartitionedCall:output:0dense_31_2933765dense_31_2933767*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_2933175x
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_31/StatefulPartitionedCall ^lstm_93/StatefulPartitionedCall ^lstm_94/StatefulPartitionedCall ^lstm_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_93/StatefulPartitionedCalllstm_93/StatefulPartitionedCall2B
lstm_94/StatefulPartitionedCalllstm_94/StatefulPartitionedCall2B
lstm_95/StatefulPartitionedCalllstm_95/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÊR

(sequential_31_lstm_93_while_body_2931290H
Dsequential_31_lstm_93_while_sequential_31_lstm_93_while_loop_counterN
Jsequential_31_lstm_93_while_sequential_31_lstm_93_while_maximum_iterations+
'sequential_31_lstm_93_while_placeholder-
)sequential_31_lstm_93_while_placeholder_1-
)sequential_31_lstm_93_while_placeholder_2-
)sequential_31_lstm_93_while_placeholder_3G
Csequential_31_lstm_93_while_sequential_31_lstm_93_strided_slice_1_0
sequential_31_lstm_93_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_93_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_31_lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0:	_
Lsequential_31_lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dZ
Ksequential_31_lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0:	(
$sequential_31_lstm_93_while_identity*
&sequential_31_lstm_93_while_identity_1*
&sequential_31_lstm_93_while_identity_2*
&sequential_31_lstm_93_while_identity_3*
&sequential_31_lstm_93_while_identity_4*
&sequential_31_lstm_93_while_identity_5E
Asequential_31_lstm_93_while_sequential_31_lstm_93_strided_slice_1
}sequential_31_lstm_93_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_93_tensorarrayunstack_tensorlistfromtensor[
Hsequential_31_lstm_93_while_lstm_cell_483_matmul_readvariableop_resource:	]
Jsequential_31_lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource:	dX
Isequential_31_lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource:	¢@sequential_31/lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp¢?sequential_31/lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp¢Asequential_31/lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp
Msequential_31/lstm_93/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_31/lstm_93/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_31_lstm_93_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_93_tensorarrayunstack_tensorlistfromtensor_0'sequential_31_lstm_93_while_placeholderVsequential_31/lstm_93/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ë
?sequential_31/lstm_93/while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOpJsequential_31_lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0þ
0sequential_31/lstm_93/while/lstm_cell_483/MatMulMatMulFsequential_31/lstm_93/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_31/lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Asequential_31/lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOpLsequential_31_lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0å
2sequential_31/lstm_93/while/lstm_cell_483/MatMul_1MatMul)sequential_31_lstm_93_while_placeholder_2Isequential_31/lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
-sequential_31/lstm_93/while/lstm_cell_483/addAddV2:sequential_31/lstm_93/while/lstm_cell_483/MatMul:product:0<sequential_31/lstm_93/while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
@sequential_31/lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOpKsequential_31_lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_31/lstm_93/while/lstm_cell_483/BiasAddBiasAdd1sequential_31/lstm_93/while/lstm_cell_483/add:z:0Hsequential_31/lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9sequential_31/lstm_93/while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_31/lstm_93/while/lstm_cell_483/splitSplitBsequential_31/lstm_93/while/lstm_cell_483/split/split_dim:output:0:sequential_31/lstm_93/while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¨
1sequential_31/lstm_93/while/lstm_cell_483/SigmoidSigmoid8sequential_31/lstm_93/while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_31/lstm_93/while/lstm_cell_483/Sigmoid_1Sigmoid8sequential_31/lstm_93/while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÊ
-sequential_31/lstm_93/while/lstm_cell_483/mulMul7sequential_31/lstm_93/while/lstm_cell_483/Sigmoid_1:y:0)sequential_31_lstm_93_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
.sequential_31/lstm_93/while/lstm_cell_483/ReluRelu8sequential_31/lstm_93/while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÝ
/sequential_31/lstm_93/while/lstm_cell_483/mul_1Mul5sequential_31/lstm_93/while/lstm_cell_483/Sigmoid:y:0<sequential_31/lstm_93/while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÒ
/sequential_31/lstm_93/while/lstm_cell_483/add_1AddV21sequential_31/lstm_93/while/lstm_cell_483/mul:z:03sequential_31/lstm_93/while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_31/lstm_93/while/lstm_cell_483/Sigmoid_2Sigmoid8sequential_31/lstm_93/while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
0sequential_31/lstm_93/while/lstm_cell_483/Relu_1Relu3sequential_31/lstm_93/while/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdá
/sequential_31/lstm_93/while/lstm_cell_483/mul_2Mul7sequential_31/lstm_93/while/lstm_cell_483/Sigmoid_2:y:0>sequential_31/lstm_93/while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
@sequential_31/lstm_93/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_31_lstm_93_while_placeholder_1'sequential_31_lstm_93_while_placeholder3sequential_31/lstm_93/while/lstm_cell_483/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_31/lstm_93/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_31/lstm_93/while/addAddV2'sequential_31_lstm_93_while_placeholder*sequential_31/lstm_93/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_31/lstm_93/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_31/lstm_93/while/add_1AddV2Dsequential_31_lstm_93_while_sequential_31_lstm_93_while_loop_counter,sequential_31/lstm_93/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_31/lstm_93/while/IdentityIdentity%sequential_31/lstm_93/while/add_1:z:0!^sequential_31/lstm_93/while/NoOp*
T0*
_output_shapes
: Â
&sequential_31/lstm_93/while/Identity_1IdentityJsequential_31_lstm_93_while_sequential_31_lstm_93_while_maximum_iterations!^sequential_31/lstm_93/while/NoOp*
T0*
_output_shapes
: 
&sequential_31/lstm_93/while/Identity_2Identity#sequential_31/lstm_93/while/add:z:0!^sequential_31/lstm_93/while/NoOp*
T0*
_output_shapes
: È
&sequential_31/lstm_93/while/Identity_3IdentityPsequential_31/lstm_93/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_31/lstm_93/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_31/lstm_93/while/Identity_4Identity3sequential_31/lstm_93/while/lstm_cell_483/mul_2:z:0!^sequential_31/lstm_93/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¼
&sequential_31/lstm_93/while/Identity_5Identity3sequential_31/lstm_93/while/lstm_cell_483/add_1:z:0!^sequential_31/lstm_93/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
 sequential_31/lstm_93/while/NoOpNoOpA^sequential_31/lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp@^sequential_31/lstm_93/while/lstm_cell_483/MatMul/ReadVariableOpB^sequential_31/lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_31_lstm_93_while_identity-sequential_31/lstm_93/while/Identity:output:0"Y
&sequential_31_lstm_93_while_identity_1/sequential_31/lstm_93/while/Identity_1:output:0"Y
&sequential_31_lstm_93_while_identity_2/sequential_31/lstm_93/while/Identity_2:output:0"Y
&sequential_31_lstm_93_while_identity_3/sequential_31/lstm_93/while/Identity_3:output:0"Y
&sequential_31_lstm_93_while_identity_4/sequential_31/lstm_93/while/Identity_4:output:0"Y
&sequential_31_lstm_93_while_identity_5/sequential_31/lstm_93/while/Identity_5:output:0"
Isequential_31_lstm_93_while_lstm_cell_483_biasadd_readvariableop_resourceKsequential_31_lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0"
Jsequential_31_lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resourceLsequential_31_lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0"
Hsequential_31_lstm_93_while_lstm_cell_483_matmul_readvariableop_resourceJsequential_31_lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0"
Asequential_31_lstm_93_while_sequential_31_lstm_93_strided_slice_1Csequential_31_lstm_93_while_sequential_31_lstm_93_strided_slice_1_0"
}sequential_31_lstm_93_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_93_tensorarrayunstack_tensorlistfromtensorsequential_31_lstm_93_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_93_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
@sequential_31/lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp@sequential_31/lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2
?sequential_31/lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp?sequential_31/lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp2
Asequential_31/lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOpAsequential_31/lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Í

J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932571

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
áJ
¢
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935915

inputs?
,lstm_cell_484_matmul_readvariableop_resource:	dÈA
.lstm_cell_484_matmul_1_readvariableop_resource:	2È<
-lstm_cell_484_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_484/BiasAdd/ReadVariableOp¢#lstm_cell_484/MatMul/ReadVariableOp¢%lstm_cell_484/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_484/MatMul/ReadVariableOpReadVariableOp,lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_484/MatMulMatMulstrided_slice_2:output:0+lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_484/MatMul_1MatMulzeros:output:0-lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_484/addAddV2lstm_cell_484/MatMul:product:0 lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_484/BiasAddBiasAddlstm_cell_484/add:z:0,lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_484/splitSplit&lstm_cell_484/split/split_dim:output:0lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_484/SigmoidSigmoidlstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_1Sigmoidlstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_484/mulMullstm_cell_484/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_484/ReluRelulstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_1Mullstm_cell_484/Sigmoid:y:0 lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_484/add_1AddV2lstm_cell_484/mul:z:0lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_2Sigmoidlstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_484/Relu_1Relulstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_2Mullstm_cell_484/Sigmoid_2:y:0"lstm_cell_484/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_484_matmul_readvariableop_resource.lstm_cell_484_matmul_1_readvariableop_resource-lstm_cell_484_biasadd_readvariableop_resource*
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
while_body_2935831*
condR
while_cond_2935830*K
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
NoOpNoOp%^lstm_cell_484/BiasAdd/ReadVariableOp$^lstm_cell_484/MatMul/ReadVariableOp&^lstm_cell_484/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_484/BiasAdd/ReadVariableOp$lstm_cell_484/BiasAdd/ReadVariableOp2J
#lstm_cell_484/MatMul/ReadVariableOp#lstm_cell_484/MatMul/ReadVariableOp2N
%lstm_cell_484/MatMul_1/ReadVariableOp%lstm_cell_484/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_2932438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932438___redundant_placeholder05
1while_while_cond_2932438___redundant_placeholder15
1while_while_cond_2932438___redundant_placeholder25
1while_while_cond_2932438___redundant_placeholder3
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
Ü


/__inference_sequential_31_layer_call_fn_2933945

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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933182o
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
while_cond_2936303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2936303___redundant_placeholder05
1while_while_cond_2936303___redundant_placeholder15
1while_while_cond_2936303___redundant_placeholder25
1while_while_cond_2936303___redundant_placeholder3
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
)__inference_lstm_94_layer_call_fn_2935475

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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933007s
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
Ý³
¾
"__inference__wrapped_model_2931658
lstm_93_inputU
Bsequential_31_lstm_93_lstm_cell_483_matmul_readvariableop_resource:	W
Dsequential_31_lstm_93_lstm_cell_483_matmul_1_readvariableop_resource:	dR
Csequential_31_lstm_93_lstm_cell_483_biasadd_readvariableop_resource:	U
Bsequential_31_lstm_94_lstm_cell_484_matmul_readvariableop_resource:	dÈW
Dsequential_31_lstm_94_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈR
Csequential_31_lstm_94_lstm_cell_484_biasadd_readvariableop_resource:	ÈT
Bsequential_31_lstm_95_lstm_cell_485_matmul_readvariableop_resource:2(V
Dsequential_31_lstm_95_lstm_cell_485_matmul_1_readvariableop_resource:
(Q
Csequential_31_lstm_95_lstm_cell_485_biasadd_readvariableop_resource:(G
5sequential_31_dense_31_matmul_readvariableop_resource:
D
6sequential_31_dense_31_biasadd_readvariableop_resource:
identity¢-sequential_31/dense_31/BiasAdd/ReadVariableOp¢,sequential_31/dense_31/MatMul/ReadVariableOp¢:sequential_31/lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp¢9sequential_31/lstm_93/lstm_cell_483/MatMul/ReadVariableOp¢;sequential_31/lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp¢sequential_31/lstm_93/while¢:sequential_31/lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp¢9sequential_31/lstm_94/lstm_cell_484/MatMul/ReadVariableOp¢;sequential_31/lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp¢sequential_31/lstm_94/while¢:sequential_31/lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp¢9sequential_31/lstm_95/lstm_cell_485/MatMul/ReadVariableOp¢;sequential_31/lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp¢sequential_31/lstm_95/whileX
sequential_31/lstm_93/ShapeShapelstm_93_input*
T0*
_output_shapes
:s
)sequential_31/lstm_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_31/lstm_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_31/lstm_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_31/lstm_93/strided_sliceStridedSlice$sequential_31/lstm_93/Shape:output:02sequential_31/lstm_93/strided_slice/stack:output:04sequential_31/lstm_93/strided_slice/stack_1:output:04sequential_31/lstm_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_31/lstm_93/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_31/lstm_93/zeros/packedPack,sequential_31/lstm_93/strided_slice:output:0-sequential_31/lstm_93/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_31/lstm_93/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_31/lstm_93/zerosFill+sequential_31/lstm_93/zeros/packed:output:0*sequential_31/lstm_93/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_31/lstm_93/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_31/lstm_93/zeros_1/packedPack,sequential_31/lstm_93/strided_slice:output:0/sequential_31/lstm_93/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_31/lstm_93/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_31/lstm_93/zeros_1Fill-sequential_31/lstm_93/zeros_1/packed:output:0,sequential_31/lstm_93/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_31/lstm_93/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_31/lstm_93/transpose	Transposelstm_93_input-sequential_31/lstm_93/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_31/lstm_93/Shape_1Shape#sequential_31/lstm_93/transpose:y:0*
T0*
_output_shapes
:u
+sequential_31/lstm_93/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_93/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_93/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_31/lstm_93/strided_slice_1StridedSlice&sequential_31/lstm_93/Shape_1:output:04sequential_31/lstm_93/strided_slice_1/stack:output:06sequential_31/lstm_93/strided_slice_1/stack_1:output:06sequential_31/lstm_93/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_31/lstm_93/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_31/lstm_93/TensorArrayV2TensorListReserve:sequential_31/lstm_93/TensorArrayV2/element_shape:output:0.sequential_31/lstm_93/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_31/lstm_93/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_31/lstm_93/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_31/lstm_93/transpose:y:0Tsequential_31/lstm_93/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_31/lstm_93/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_93/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_93/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_31/lstm_93/strided_slice_2StridedSlice#sequential_31/lstm_93/transpose:y:04sequential_31/lstm_93/strided_slice_2/stack:output:06sequential_31/lstm_93/strided_slice_2/stack_1:output:06sequential_31/lstm_93/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask½
9sequential_31/lstm_93/lstm_cell_483/MatMul/ReadVariableOpReadVariableOpBsequential_31_lstm_93_lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
*sequential_31/lstm_93/lstm_cell_483/MatMulMatMul.sequential_31/lstm_93/strided_slice_2:output:0Asequential_31/lstm_93/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
;sequential_31/lstm_93/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOpDsequential_31_lstm_93_lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ô
,sequential_31/lstm_93/lstm_cell_483/MatMul_1MatMul$sequential_31/lstm_93/zeros:output:0Csequential_31/lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential_31/lstm_93/lstm_cell_483/addAddV24sequential_31/lstm_93/lstm_cell_483/MatMul:product:06sequential_31/lstm_93/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:sequential_31/lstm_93/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOpCsequential_31_lstm_93_lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_31/lstm_93/lstm_cell_483/BiasAddBiasAdd+sequential_31/lstm_93/lstm_cell_483/add:z:0Bsequential_31/lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential_31/lstm_93/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_31/lstm_93/lstm_cell_483/splitSplit<sequential_31/lstm_93/lstm_cell_483/split/split_dim:output:04sequential_31/lstm_93/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
+sequential_31/lstm_93/lstm_cell_483/SigmoidSigmoid2sequential_31/lstm_93/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_31/lstm_93/lstm_cell_483/Sigmoid_1Sigmoid2sequential_31/lstm_93/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
'sequential_31/lstm_93/lstm_cell_483/mulMul1sequential_31/lstm_93/lstm_cell_483/Sigmoid_1:y:0&sequential_31/lstm_93/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(sequential_31/lstm_93/lstm_cell_483/ReluRelu2sequential_31/lstm_93/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
)sequential_31/lstm_93/lstm_cell_483/mul_1Mul/sequential_31/lstm_93/lstm_cell_483/Sigmoid:y:06sequential_31/lstm_93/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
)sequential_31/lstm_93/lstm_cell_483/add_1AddV2+sequential_31/lstm_93/lstm_cell_483/mul:z:0-sequential_31/lstm_93/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_31/lstm_93/lstm_cell_483/Sigmoid_2Sigmoid2sequential_31/lstm_93/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*sequential_31/lstm_93/lstm_cell_483/Relu_1Relu-sequential_31/lstm_93/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
)sequential_31/lstm_93/lstm_cell_483/mul_2Mul1sequential_31/lstm_93/lstm_cell_483/Sigmoid_2:y:08sequential_31/lstm_93/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_31/lstm_93/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ú
%sequential_31/lstm_93/TensorArrayV2_1TensorListReserve<sequential_31/lstm_93/TensorArrayV2_1/element_shape:output:0.sequential_31/lstm_93/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_31/lstm_93/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_31/lstm_93/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_31/lstm_93/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_31/lstm_93/whileWhile1sequential_31/lstm_93/while/loop_counter:output:07sequential_31/lstm_93/while/maximum_iterations:output:0#sequential_31/lstm_93/time:output:0.sequential_31/lstm_93/TensorArrayV2_1:handle:0$sequential_31/lstm_93/zeros:output:0&sequential_31/lstm_93/zeros_1:output:0.sequential_31/lstm_93/strided_slice_1:output:0Msequential_31/lstm_93/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_31_lstm_93_lstm_cell_483_matmul_readvariableop_resourceDsequential_31_lstm_93_lstm_cell_483_matmul_1_readvariableop_resourceCsequential_31_lstm_93_lstm_cell_483_biasadd_readvariableop_resource*
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
(sequential_31_lstm_93_while_body_2931290*4
cond,R*
(sequential_31_lstm_93_while_cond_2931289*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_31/lstm_93/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_31/lstm_93/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_31/lstm_93/while:output:3Osequential_31/lstm_93/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0~
+sequential_31/lstm_93/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_31/lstm_93/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_93/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_31/lstm_93/strided_slice_3StridedSliceAsequential_31/lstm_93/TensorArrayV2Stack/TensorListStack:tensor:04sequential_31/lstm_93/strided_slice_3/stack:output:06sequential_31/lstm_93/strided_slice_3/stack_1:output:06sequential_31/lstm_93/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_31/lstm_93/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_31/lstm_93/transpose_1	TransposeAsequential_31/lstm_93/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_31/lstm_93/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_31/lstm_93/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_31/lstm_94/ShapeShape%sequential_31/lstm_93/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_31/lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_31/lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_31/lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_31/lstm_94/strided_sliceStridedSlice$sequential_31/lstm_94/Shape:output:02sequential_31/lstm_94/strided_slice/stack:output:04sequential_31/lstm_94/strided_slice/stack_1:output:04sequential_31/lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_31/lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_31/lstm_94/zeros/packedPack,sequential_31/lstm_94/strided_slice:output:0-sequential_31/lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_31/lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_31/lstm_94/zerosFill+sequential_31/lstm_94/zeros/packed:output:0*sequential_31/lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_31/lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_31/lstm_94/zeros_1/packedPack,sequential_31/lstm_94/strided_slice:output:0/sequential_31/lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_31/lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_31/lstm_94/zeros_1Fill-sequential_31/lstm_94/zeros_1/packed:output:0,sequential_31/lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_31/lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_31/lstm_94/transpose	Transpose%sequential_31/lstm_93/transpose_1:y:0-sequential_31/lstm_94/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_31/lstm_94/Shape_1Shape#sequential_31/lstm_94/transpose:y:0*
T0*
_output_shapes
:u
+sequential_31/lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_31/lstm_94/strided_slice_1StridedSlice&sequential_31/lstm_94/Shape_1:output:04sequential_31/lstm_94/strided_slice_1/stack:output:06sequential_31/lstm_94/strided_slice_1/stack_1:output:06sequential_31/lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_31/lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_31/lstm_94/TensorArrayV2TensorListReserve:sequential_31/lstm_94/TensorArrayV2/element_shape:output:0.sequential_31/lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_31/lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_31/lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_31/lstm_94/transpose:y:0Tsequential_31/lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_31/lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_31/lstm_94/strided_slice_2StridedSlice#sequential_31/lstm_94/transpose:y:04sequential_31/lstm_94/strided_slice_2/stack:output:06sequential_31/lstm_94/strided_slice_2/stack_1:output:06sequential_31/lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask½
9sequential_31/lstm_94/lstm_cell_484/MatMul/ReadVariableOpReadVariableOpBsequential_31_lstm_94_lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ú
*sequential_31/lstm_94/lstm_cell_484/MatMulMatMul.sequential_31/lstm_94/strided_slice_2:output:0Asequential_31/lstm_94/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÁ
;sequential_31/lstm_94/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOpDsequential_31_lstm_94_lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ô
,sequential_31/lstm_94/lstm_cell_484/MatMul_1MatMul$sequential_31/lstm_94/zeros:output:0Csequential_31/lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÑ
'sequential_31/lstm_94/lstm_cell_484/addAddV24sequential_31/lstm_94/lstm_cell_484/MatMul:product:06sequential_31/lstm_94/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ»
:sequential_31/lstm_94/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOpCsequential_31_lstm_94_lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_31/lstm_94/lstm_cell_484/BiasAddBiasAdd+sequential_31/lstm_94/lstm_cell_484/add:z:0Bsequential_31/lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈu
3sequential_31/lstm_94/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_31/lstm_94/lstm_cell_484/splitSplit<sequential_31/lstm_94/lstm_cell_484/split/split_dim:output:04sequential_31/lstm_94/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
+sequential_31/lstm_94/lstm_cell_484/SigmoidSigmoid2sequential_31/lstm_94/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_31/lstm_94/lstm_cell_484/Sigmoid_1Sigmoid2sequential_31/lstm_94/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
'sequential_31/lstm_94/lstm_cell_484/mulMul1sequential_31/lstm_94/lstm_cell_484/Sigmoid_1:y:0&sequential_31/lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(sequential_31/lstm_94/lstm_cell_484/ReluRelu2sequential_31/lstm_94/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ë
)sequential_31/lstm_94/lstm_cell_484/mul_1Mul/sequential_31/lstm_94/lstm_cell_484/Sigmoid:y:06sequential_31/lstm_94/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
)sequential_31/lstm_94/lstm_cell_484/add_1AddV2+sequential_31/lstm_94/lstm_cell_484/mul:z:0-sequential_31/lstm_94/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_31/lstm_94/lstm_cell_484/Sigmoid_2Sigmoid2sequential_31/lstm_94/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_31/lstm_94/lstm_cell_484/Relu_1Relu-sequential_31/lstm_94/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
)sequential_31/lstm_94/lstm_cell_484/mul_2Mul1sequential_31/lstm_94/lstm_cell_484/Sigmoid_2:y:08sequential_31/lstm_94/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_31/lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_31/lstm_94/TensorArrayV2_1TensorListReserve<sequential_31/lstm_94/TensorArrayV2_1/element_shape:output:0.sequential_31/lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_31/lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_31/lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_31/lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_31/lstm_94/whileWhile1sequential_31/lstm_94/while/loop_counter:output:07sequential_31/lstm_94/while/maximum_iterations:output:0#sequential_31/lstm_94/time:output:0.sequential_31/lstm_94/TensorArrayV2_1:handle:0$sequential_31/lstm_94/zeros:output:0&sequential_31/lstm_94/zeros_1:output:0.sequential_31/lstm_94/strided_slice_1:output:0Msequential_31/lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_31_lstm_94_lstm_cell_484_matmul_readvariableop_resourceDsequential_31_lstm_94_lstm_cell_484_matmul_1_readvariableop_resourceCsequential_31_lstm_94_lstm_cell_484_biasadd_readvariableop_resource*
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
(sequential_31_lstm_94_while_body_2931429*4
cond,R*
(sequential_31_lstm_94_while_cond_2931428*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_31/lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_31/lstm_94/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_31/lstm_94/while:output:3Osequential_31/lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_31/lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_31/lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_31/lstm_94/strided_slice_3StridedSliceAsequential_31/lstm_94/TensorArrayV2Stack/TensorListStack:tensor:04sequential_31/lstm_94/strided_slice_3/stack:output:06sequential_31/lstm_94/strided_slice_3/stack_1:output:06sequential_31/lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_31/lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_31/lstm_94/transpose_1	TransposeAsequential_31/lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_31/lstm_94/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_31/lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_31/lstm_95/ShapeShape%sequential_31/lstm_94/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_31/lstm_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_31/lstm_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_31/lstm_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_31/lstm_95/strided_sliceStridedSlice$sequential_31/lstm_95/Shape:output:02sequential_31/lstm_95/strided_slice/stack:output:04sequential_31/lstm_95/strided_slice/stack_1:output:04sequential_31/lstm_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_31/lstm_95/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
µ
"sequential_31/lstm_95/zeros/packedPack,sequential_31/lstm_95/strided_slice:output:0-sequential_31/lstm_95/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_31/lstm_95/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_31/lstm_95/zerosFill+sequential_31/lstm_95/zeros/packed:output:0*sequential_31/lstm_95/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
&sequential_31/lstm_95/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¹
$sequential_31/lstm_95/zeros_1/packedPack,sequential_31/lstm_95/strided_slice:output:0/sequential_31/lstm_95/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_31/lstm_95/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_31/lstm_95/zeros_1Fill-sequential_31/lstm_95/zeros_1/packed:output:0,sequential_31/lstm_95/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
$sequential_31/lstm_95/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_31/lstm_95/transpose	Transpose%sequential_31/lstm_94/transpose_1:y:0-sequential_31/lstm_95/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
sequential_31/lstm_95/Shape_1Shape#sequential_31/lstm_95/transpose:y:0*
T0*
_output_shapes
:u
+sequential_31/lstm_95/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_95/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_95/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_31/lstm_95/strided_slice_1StridedSlice&sequential_31/lstm_95/Shape_1:output:04sequential_31/lstm_95/strided_slice_1/stack:output:06sequential_31/lstm_95/strided_slice_1/stack_1:output:06sequential_31/lstm_95/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_31/lstm_95/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_31/lstm_95/TensorArrayV2TensorListReserve:sequential_31/lstm_95/TensorArrayV2/element_shape:output:0.sequential_31/lstm_95/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_31/lstm_95/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¢
=sequential_31/lstm_95/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_31/lstm_95/transpose:y:0Tsequential_31/lstm_95/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_31/lstm_95/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_95/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_95/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_31/lstm_95/strided_slice_2StridedSlice#sequential_31/lstm_95/transpose:y:04sequential_31/lstm_95/strided_slice_2/stack:output:06sequential_31/lstm_95/strided_slice_2/stack_1:output:06sequential_31/lstm_95/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¼
9sequential_31/lstm_95/lstm_cell_485/MatMul/ReadVariableOpReadVariableOpBsequential_31_lstm_95_lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ù
*sequential_31/lstm_95/lstm_cell_485/MatMulMatMul.sequential_31/lstm_95/strided_slice_2:output:0Asequential_31/lstm_95/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(À
;sequential_31/lstm_95/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOpDsequential_31_lstm_95_lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ó
,sequential_31/lstm_95/lstm_cell_485/MatMul_1MatMul$sequential_31/lstm_95/zeros:output:0Csequential_31/lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ð
'sequential_31/lstm_95/lstm_cell_485/addAddV24sequential_31/lstm_95/lstm_cell_485/MatMul:product:06sequential_31/lstm_95/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
:sequential_31/lstm_95/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOpCsequential_31_lstm_95_lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_31/lstm_95/lstm_cell_485/BiasAddBiasAdd+sequential_31/lstm_95/lstm_cell_485/add:z:0Bsequential_31/lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(u
3sequential_31/lstm_95/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_31/lstm_95/lstm_cell_485/splitSplit<sequential_31/lstm_95/lstm_cell_485/split/split_dim:output:04sequential_31/lstm_95/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
+sequential_31/lstm_95/lstm_cell_485/SigmoidSigmoid2sequential_31/lstm_95/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_31/lstm_95/lstm_cell_485/Sigmoid_1Sigmoid2sequential_31/lstm_95/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
'sequential_31/lstm_95/lstm_cell_485/mulMul1sequential_31/lstm_95/lstm_cell_485/Sigmoid_1:y:0&sequential_31/lstm_95/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(sequential_31/lstm_95/lstm_cell_485/ReluRelu2sequential_31/lstm_95/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
)sequential_31/lstm_95/lstm_cell_485/mul_1Mul/sequential_31/lstm_95/lstm_cell_485/Sigmoid:y:06sequential_31/lstm_95/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
)sequential_31/lstm_95/lstm_cell_485/add_1AddV2+sequential_31/lstm_95/lstm_cell_485/mul:z:0-sequential_31/lstm_95/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_31/lstm_95/lstm_cell_485/Sigmoid_2Sigmoid2sequential_31/lstm_95/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_31/lstm_95/lstm_cell_485/Relu_1Relu-sequential_31/lstm_95/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ï
)sequential_31/lstm_95/lstm_cell_485/mul_2Mul1sequential_31/lstm_95/lstm_cell_485/Sigmoid_2:y:08sequential_31/lstm_95/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

3sequential_31/lstm_95/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ú
%sequential_31/lstm_95/TensorArrayV2_1TensorListReserve<sequential_31/lstm_95/TensorArrayV2_1/element_shape:output:0.sequential_31/lstm_95/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_31/lstm_95/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_31/lstm_95/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_31/lstm_95/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_31/lstm_95/whileWhile1sequential_31/lstm_95/while/loop_counter:output:07sequential_31/lstm_95/while/maximum_iterations:output:0#sequential_31/lstm_95/time:output:0.sequential_31/lstm_95/TensorArrayV2_1:handle:0$sequential_31/lstm_95/zeros:output:0&sequential_31/lstm_95/zeros_1:output:0.sequential_31/lstm_95/strided_slice_1:output:0Msequential_31/lstm_95/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_31_lstm_95_lstm_cell_485_matmul_readvariableop_resourceDsequential_31_lstm_95_lstm_cell_485_matmul_1_readvariableop_resourceCsequential_31_lstm_95_lstm_cell_485_biasadd_readvariableop_resource*
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
(sequential_31_lstm_95_while_body_2931568*4
cond,R*
(sequential_31_lstm_95_while_cond_2931567*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Fsequential_31/lstm_95/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
8sequential_31/lstm_95/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_31/lstm_95/while:output:3Osequential_31/lstm_95/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0~
+sequential_31/lstm_95/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_31/lstm_95/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_95/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_31/lstm_95/strided_slice_3StridedSliceAsequential_31/lstm_95/TensorArrayV2Stack/TensorListStack:tensor:04sequential_31/lstm_95/strided_slice_3/stack:output:06sequential_31/lstm_95/strided_slice_3/stack_1:output:06sequential_31/lstm_95/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask{
&sequential_31/lstm_95/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_31/lstm_95/transpose_1	TransposeAsequential_31/lstm_95/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_31/lstm_95/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
sequential_31/lstm_95/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_31/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_31_dense_31_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0¿
sequential_31/dense_31/MatMulMatMul.sequential_31/lstm_95/strided_slice_3:output:04sequential_31/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_31/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_31_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_31/dense_31/BiasAddBiasAdd'sequential_31/dense_31/MatMul:product:05sequential_31/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_31/dense_31/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp.^sequential_31/dense_31/BiasAdd/ReadVariableOp-^sequential_31/dense_31/MatMul/ReadVariableOp;^sequential_31/lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp:^sequential_31/lstm_93/lstm_cell_483/MatMul/ReadVariableOp<^sequential_31/lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp^sequential_31/lstm_93/while;^sequential_31/lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp:^sequential_31/lstm_94/lstm_cell_484/MatMul/ReadVariableOp<^sequential_31/lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp^sequential_31/lstm_94/while;^sequential_31/lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp:^sequential_31/lstm_95/lstm_cell_485/MatMul/ReadVariableOp<^sequential_31/lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp^sequential_31/lstm_95/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2^
-sequential_31/dense_31/BiasAdd/ReadVariableOp-sequential_31/dense_31/BiasAdd/ReadVariableOp2\
,sequential_31/dense_31/MatMul/ReadVariableOp,sequential_31/dense_31/MatMul/ReadVariableOp2x
:sequential_31/lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp:sequential_31/lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp2v
9sequential_31/lstm_93/lstm_cell_483/MatMul/ReadVariableOp9sequential_31/lstm_93/lstm_cell_483/MatMul/ReadVariableOp2z
;sequential_31/lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp;sequential_31/lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp2:
sequential_31/lstm_93/whilesequential_31/lstm_93/while2x
:sequential_31/lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp:sequential_31/lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp2v
9sequential_31/lstm_94/lstm_cell_484/MatMul/ReadVariableOp9sequential_31/lstm_94/lstm_cell_484/MatMul/ReadVariableOp2z
;sequential_31/lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp;sequential_31/lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp2:
sequential_31/lstm_94/whilesequential_31/lstm_94/while2x
:sequential_31/lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp:sequential_31/lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp2v
9sequential_31/lstm_95/lstm_cell_485/MatMul/ReadVariableOp9sequential_31/lstm_95/lstm_cell_485/MatMul/ReadVariableOp2z
;sequential_31/lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp;sequential_31/lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp2:
sequential_31/lstm_95/whilesequential_31/lstm_95/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_93_input
£

(sequential_31_lstm_93_while_cond_2931289H
Dsequential_31_lstm_93_while_sequential_31_lstm_93_while_loop_counterN
Jsequential_31_lstm_93_while_sequential_31_lstm_93_while_maximum_iterations+
'sequential_31_lstm_93_while_placeholder-
)sequential_31_lstm_93_while_placeholder_1-
)sequential_31_lstm_93_while_placeholder_2-
)sequential_31_lstm_93_while_placeholder_3J
Fsequential_31_lstm_93_while_less_sequential_31_lstm_93_strided_slice_1a
]sequential_31_lstm_93_while_sequential_31_lstm_93_while_cond_2931289___redundant_placeholder0a
]sequential_31_lstm_93_while_sequential_31_lstm_93_while_cond_2931289___redundant_placeholder1a
]sequential_31_lstm_93_while_sequential_31_lstm_93_while_cond_2931289___redundant_placeholder2a
]sequential_31_lstm_93_while_sequential_31_lstm_93_while_cond_2931289___redundant_placeholder3(
$sequential_31_lstm_93_while_identity
º
 sequential_31/lstm_93/while/LessLess'sequential_31_lstm_93_while_placeholderFsequential_31_lstm_93_while_less_sequential_31_lstm_93_strided_slice_1*
T0*
_output_shapes
: w
$sequential_31/lstm_93/while/IdentityIdentity$sequential_31/lstm_93/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_31_lstm_93_while_identity-sequential_31/lstm_93/while/Identity:output:0*(
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
while_cond_2933618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2933618___redundant_placeholder05
1while_while_cond_2933618___redundant_placeholder15
1while_while_cond_2933618___redundant_placeholder25
1while_while_cond_2933618___redundant_placeholder3
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
while_cond_2935214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935214___redundant_placeholder05
1while_while_cond_2935214___redundant_placeholder15
1while_while_cond_2935214___redundant_placeholder25
1while_while_cond_2935214___redundant_placeholder3
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
while_cond_2932922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932922___redundant_placeholder05
1while_while_cond_2932922___redundant_placeholder15
1while_while_cond_2932922___redundant_placeholder25
1while_while_cond_2932922___redundant_placeholder3
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
/__inference_lstm_cell_484_layer_call_fn_2936825

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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932221o
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
K
¤
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935629
inputs_0?
,lstm_cell_484_matmul_readvariableop_resource:	dÈA
.lstm_cell_484_matmul_1_readvariableop_resource:	2È<
-lstm_cell_484_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_484/BiasAdd/ReadVariableOp¢#lstm_cell_484/MatMul/ReadVariableOp¢%lstm_cell_484/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_484/MatMul/ReadVariableOpReadVariableOp,lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_484/MatMulMatMulstrided_slice_2:output:0+lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_484/MatMul_1MatMulzeros:output:0-lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_484/addAddV2lstm_cell_484/MatMul:product:0 lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_484/BiasAddBiasAddlstm_cell_484/add:z:0,lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_484/splitSplit&lstm_cell_484/split/split_dim:output:0lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_484/SigmoidSigmoidlstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_1Sigmoidlstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_484/mulMullstm_cell_484/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_484/ReluRelulstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_1Mullstm_cell_484/Sigmoid:y:0 lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_484/add_1AddV2lstm_cell_484/mul:z:0lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_2Sigmoidlstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_484/Relu_1Relulstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_2Mullstm_cell_484/Sigmoid_2:y:0"lstm_cell_484/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_484_matmul_readvariableop_resource.lstm_cell_484_matmul_1_readvariableop_resource-lstm_cell_484_biasadd_readvariableop_resource*
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
while_body_2935545*
condR
while_cond_2935544*K
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
NoOpNoOp%^lstm_cell_484/BiasAdd/ReadVariableOp$^lstm_cell_484/MatMul/ReadVariableOp&^lstm_cell_484/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_484/BiasAdd/ReadVariableOp$lstm_cell_484/BiasAdd/ReadVariableOp2J
#lstm_cell_484/MatMul/ReadVariableOp#lstm_cell_484/MatMul/ReadVariableOp2N
%lstm_cell_484/MatMul_1/ReadVariableOp%lstm_cell_484/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
áJ
¢
D__inference_lstm_94_layer_call_and_return_conditional_losses_2936058

inputs?
,lstm_cell_484_matmul_readvariableop_resource:	dÈA
.lstm_cell_484_matmul_1_readvariableop_resource:	2È<
-lstm_cell_484_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_484/BiasAdd/ReadVariableOp¢#lstm_cell_484/MatMul/ReadVariableOp¢%lstm_cell_484/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_484/MatMul/ReadVariableOpReadVariableOp,lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_484/MatMulMatMulstrided_slice_2:output:0+lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_484/MatMul_1MatMulzeros:output:0-lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_484/addAddV2lstm_cell_484/MatMul:product:0 lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_484/BiasAddBiasAddlstm_cell_484/add:z:0,lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_484/splitSplit&lstm_cell_484/split/split_dim:output:0lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_484/SigmoidSigmoidlstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_1Sigmoidlstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_484/mulMullstm_cell_484/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_484/ReluRelulstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_1Mullstm_cell_484/Sigmoid:y:0 lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_484/add_1AddV2lstm_cell_484/mul:z:0lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_2Sigmoidlstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_484/Relu_1Relulstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_2Mullstm_cell_484/Sigmoid_2:y:0"lstm_cell_484/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_484_matmul_readvariableop_resource.lstm_cell_484_matmul_1_readvariableop_resource-lstm_cell_484_biasadd_readvariableop_resource*
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
while_body_2935974*
condR
while_cond_2935973*K
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
NoOpNoOp%^lstm_cell_484/BiasAdd/ReadVariableOp$^lstm_cell_484/MatMul/ReadVariableOp&^lstm_cell_484/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_484/BiasAdd/ReadVariableOp$lstm_cell_484/BiasAdd/ReadVariableOp2J
#lstm_cell_484/MatMul/ReadVariableOp#lstm_cell_484/MatMul/ReadVariableOp2N
%lstm_cell_484/MatMul_1/ReadVariableOp%lstm_cell_484/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_2935071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935071___redundant_placeholder05
1while_while_cond_2935071___redundant_placeholder15
1while_while_cond_2935071___redundant_placeholder25
1while_while_cond_2935071___redundant_placeholder3
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
while_body_2935072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_483_matmul_readvariableop_resource_0:	I
6while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_483_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_483_matmul_readvariableop_resource:	G
4while_lstm_cell_483_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_483_biasadd_readvariableop_resource:	¢*while/lstm_cell_483/BiasAdd/ReadVariableOp¢)while/lstm_cell_483/MatMul/ReadVariableOp¢+while/lstm_cell_483/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_483/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_483/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_483/addAddV2$while/lstm_cell_483/MatMul:product:0&while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_483/BiasAddBiasAddwhile/lstm_cell_483/add:z:02while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_483/splitSplit,while/lstm_cell_483/split/split_dim:output:0$while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_483/SigmoidSigmoid"while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_1Sigmoid"while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mulMul!while/lstm_cell_483/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_483/ReluRelu"while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_1Mulwhile/lstm_cell_483/Sigmoid:y:0&while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/add_1AddV2while/lstm_cell_483/mul:z:0while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_2Sigmoid"while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_483/Relu_1Reluwhile/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_2Mul!while/lstm_cell_483/Sigmoid_2:y:0(while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_483/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_483/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_483/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_483/BiasAdd/ReadVariableOp*^while/lstm_cell_483/MatMul/ReadVariableOp,^while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_483_biasadd_readvariableop_resource5while_lstm_cell_483_biasadd_readvariableop_resource_0"n
4while_lstm_cell_483_matmul_1_readvariableop_resource6while_lstm_cell_483_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_483_matmul_readvariableop_resource4while_lstm_cell_483_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_483/BiasAdd/ReadVariableOp*while/lstm_cell_483/BiasAdd/ReadVariableOp2V
)while/lstm_cell_483/MatMul/ReadVariableOp)while/lstm_cell_483/MatMul/ReadVariableOp2Z
+while/lstm_cell_483/MatMul_1/ReadVariableOp+while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2932699

inputs'
lstm_cell_485_2932617:2('
lstm_cell_485_2932619:
(#
lstm_cell_485_2932621:(
identity¢%lstm_cell_485/StatefulPartitionedCall¢while;
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
%lstm_cell_485/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_485_2932617lstm_cell_485_2932619lstm_cell_485_2932621*
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932571n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_485_2932617lstm_cell_485_2932619lstm_cell_485_2932621*
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
while_body_2932630*
condR
while_cond_2932629*K
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
NoOpNoOp&^lstm_cell_485/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_485/StatefulPartitionedCall%lstm_cell_485/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÊR

(sequential_31_lstm_94_while_body_2931429H
Dsequential_31_lstm_94_while_sequential_31_lstm_94_while_loop_counterN
Jsequential_31_lstm_94_while_sequential_31_lstm_94_while_maximum_iterations+
'sequential_31_lstm_94_while_placeholder-
)sequential_31_lstm_94_while_placeholder_1-
)sequential_31_lstm_94_while_placeholder_2-
)sequential_31_lstm_94_while_placeholder_3G
Csequential_31_lstm_94_while_sequential_31_lstm_94_strided_slice_1_0
sequential_31_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_94_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_31_lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈ_
Lsequential_31_lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_31_lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0:	È(
$sequential_31_lstm_94_while_identity*
&sequential_31_lstm_94_while_identity_1*
&sequential_31_lstm_94_while_identity_2*
&sequential_31_lstm_94_while_identity_3*
&sequential_31_lstm_94_while_identity_4*
&sequential_31_lstm_94_while_identity_5E
Asequential_31_lstm_94_while_sequential_31_lstm_94_strided_slice_1
}sequential_31_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_94_tensorarrayunstack_tensorlistfromtensor[
Hsequential_31_lstm_94_while_lstm_cell_484_matmul_readvariableop_resource:	dÈ]
Jsequential_31_lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈX
Isequential_31_lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource:	È¢@sequential_31/lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp¢?sequential_31/lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp¢Asequential_31/lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp
Msequential_31/lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_31/lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_31_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_94_tensorarrayunstack_tensorlistfromtensor_0'sequential_31_lstm_94_while_placeholderVsequential_31/lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0Ë
?sequential_31/lstm_94/while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOpJsequential_31_lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0þ
0sequential_31/lstm_94/while/lstm_cell_484/MatMulMatMulFsequential_31/lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_31/lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÏ
Asequential_31/lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOpLsequential_31_lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0å
2sequential_31/lstm_94/while/lstm_cell_484/MatMul_1MatMul)sequential_31_lstm_94_while_placeholder_2Isequential_31/lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈã
-sequential_31/lstm_94/while/lstm_cell_484/addAddV2:sequential_31/lstm_94/while/lstm_cell_484/MatMul:product:0<sequential_31/lstm_94/while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÉ
@sequential_31/lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOpKsequential_31_lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_31/lstm_94/while/lstm_cell_484/BiasAddBiasAdd1sequential_31/lstm_94/while/lstm_cell_484/add:z:0Hsequential_31/lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ{
9sequential_31/lstm_94/while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_31/lstm_94/while/lstm_cell_484/splitSplitBsequential_31/lstm_94/while/lstm_cell_484/split/split_dim:output:0:sequential_31/lstm_94/while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¨
1sequential_31/lstm_94/while/lstm_cell_484/SigmoidSigmoid8sequential_31/lstm_94/while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_31/lstm_94/while/lstm_cell_484/Sigmoid_1Sigmoid8sequential_31/lstm_94/while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ê
-sequential_31/lstm_94/while/lstm_cell_484/mulMul7sequential_31/lstm_94/while/lstm_cell_484/Sigmoid_1:y:0)sequential_31_lstm_94_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
.sequential_31/lstm_94/while/lstm_cell_484/ReluRelu8sequential_31/lstm_94/while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ý
/sequential_31/lstm_94/while/lstm_cell_484/mul_1Mul5sequential_31/lstm_94/while/lstm_cell_484/Sigmoid:y:0<sequential_31/lstm_94/while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ò
/sequential_31/lstm_94/while/lstm_cell_484/add_1AddV21sequential_31/lstm_94/while/lstm_cell_484/mul:z:03sequential_31/lstm_94/while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_31/lstm_94/while/lstm_cell_484/Sigmoid_2Sigmoid8sequential_31/lstm_94/while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
0sequential_31/lstm_94/while/lstm_cell_484/Relu_1Relu3sequential_31/lstm_94/while/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2á
/sequential_31/lstm_94/while/lstm_cell_484/mul_2Mul7sequential_31/lstm_94/while/lstm_cell_484/Sigmoid_2:y:0>sequential_31/lstm_94/while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_31/lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_31_lstm_94_while_placeholder_1'sequential_31_lstm_94_while_placeholder3sequential_31/lstm_94/while/lstm_cell_484/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_31/lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_31/lstm_94/while/addAddV2'sequential_31_lstm_94_while_placeholder*sequential_31/lstm_94/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_31/lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_31/lstm_94/while/add_1AddV2Dsequential_31_lstm_94_while_sequential_31_lstm_94_while_loop_counter,sequential_31/lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_31/lstm_94/while/IdentityIdentity%sequential_31/lstm_94/while/add_1:z:0!^sequential_31/lstm_94/while/NoOp*
T0*
_output_shapes
: Â
&sequential_31/lstm_94/while/Identity_1IdentityJsequential_31_lstm_94_while_sequential_31_lstm_94_while_maximum_iterations!^sequential_31/lstm_94/while/NoOp*
T0*
_output_shapes
: 
&sequential_31/lstm_94/while/Identity_2Identity#sequential_31/lstm_94/while/add:z:0!^sequential_31/lstm_94/while/NoOp*
T0*
_output_shapes
: È
&sequential_31/lstm_94/while/Identity_3IdentityPsequential_31/lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_31/lstm_94/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_31/lstm_94/while/Identity_4Identity3sequential_31/lstm_94/while/lstm_cell_484/mul_2:z:0!^sequential_31/lstm_94/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¼
&sequential_31/lstm_94/while/Identity_5Identity3sequential_31/lstm_94/while/lstm_cell_484/add_1:z:0!^sequential_31/lstm_94/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2«
 sequential_31/lstm_94/while/NoOpNoOpA^sequential_31/lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp@^sequential_31/lstm_94/while/lstm_cell_484/MatMul/ReadVariableOpB^sequential_31/lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_31_lstm_94_while_identity-sequential_31/lstm_94/while/Identity:output:0"Y
&sequential_31_lstm_94_while_identity_1/sequential_31/lstm_94/while/Identity_1:output:0"Y
&sequential_31_lstm_94_while_identity_2/sequential_31/lstm_94/while/Identity_2:output:0"Y
&sequential_31_lstm_94_while_identity_3/sequential_31/lstm_94/while/Identity_3:output:0"Y
&sequential_31_lstm_94_while_identity_4/sequential_31/lstm_94/while/Identity_4:output:0"Y
&sequential_31_lstm_94_while_identity_5/sequential_31/lstm_94/while/Identity_5:output:0"
Isequential_31_lstm_94_while_lstm_cell_484_biasadd_readvariableop_resourceKsequential_31_lstm_94_while_lstm_cell_484_biasadd_readvariableop_resource_0"
Jsequential_31_lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resourceLsequential_31_lstm_94_while_lstm_cell_484_matmul_1_readvariableop_resource_0"
Hsequential_31_lstm_94_while_lstm_cell_484_matmul_readvariableop_resourceJsequential_31_lstm_94_while_lstm_cell_484_matmul_readvariableop_resource_0"
Asequential_31_lstm_94_while_sequential_31_lstm_94_strided_slice_1Csequential_31_lstm_94_while_sequential_31_lstm_94_strided_slice_1_0"
}sequential_31_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_94_tensorarrayunstack_tensorlistfromtensorsequential_31_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
@sequential_31/lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp@sequential_31/lstm_94/while/lstm_cell_484/BiasAdd/ReadVariableOp2
?sequential_31/lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp?sequential_31/lstm_94/while/lstm_cell_484/MatMul/ReadVariableOp2
Asequential_31/lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOpAsequential_31/lstm_94/while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

¶
)__inference_lstm_94_layer_call_fn_2935486

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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933538s
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
º
È
while_cond_2936160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2936160___redundant_placeholder05
1while_while_cond_2936160___redundant_placeholder15
1while_while_cond_2936160___redundant_placeholder25
1while_while_cond_2936160___redundant_placeholder3
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
while_cond_2936589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2936589___redundant_placeholder05
1while_while_cond_2936589___redundant_placeholder15
1while_while_cond_2936589___redundant_placeholder25
1while_while_cond_2936589___redundant_placeholder3
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
Ñ8
Ú
while_body_2933619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_483_matmul_readvariableop_resource_0:	I
6while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_483_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_483_matmul_readvariableop_resource:	G
4while_lstm_cell_483_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_483_biasadd_readvariableop_resource:	¢*while/lstm_cell_483/BiasAdd/ReadVariableOp¢)while/lstm_cell_483/MatMul/ReadVariableOp¢+while/lstm_cell_483/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_483/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_483/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_483/addAddV2$while/lstm_cell_483/MatMul:product:0&while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_483/BiasAddBiasAddwhile/lstm_cell_483/add:z:02while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_483/splitSplit,while/lstm_cell_483/split/split_dim:output:0$while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_483/SigmoidSigmoid"while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_1Sigmoid"while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mulMul!while/lstm_cell_483/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_483/ReluRelu"while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_1Mulwhile/lstm_cell_483/Sigmoid:y:0&while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/add_1AddV2while/lstm_cell_483/mul:z:0while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_2Sigmoid"while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_483/Relu_1Reluwhile/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_2Mul!while/lstm_cell_483/Sigmoid_2:y:0(while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_483/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_483/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_483/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_483/BiasAdd/ReadVariableOp*^while/lstm_cell_483/MatMul/ReadVariableOp,^while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_483_biasadd_readvariableop_resource5while_lstm_cell_483_biasadd_readvariableop_resource_0"n
4while_lstm_cell_483_matmul_1_readvariableop_resource6while_lstm_cell_483_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_483_matmul_readvariableop_resource4while_lstm_cell_483_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_483/BiasAdd/ReadVariableOp*while/lstm_cell_483/BiasAdd/ReadVariableOp2V
)while/lstm_cell_483/MatMul/ReadVariableOp)while/lstm_cell_483/MatMul/ReadVariableOp2Z
+while/lstm_cell_483/MatMul_1/ReadVariableOp+while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ï
ø
/__inference_lstm_cell_483_layer_call_fn_2936710

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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931725o
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
ÜJ

D__inference_lstm_95_layer_call_and_return_conditional_losses_2936531

inputs>
,lstm_cell_485_matmul_readvariableop_resource:2(@
.lstm_cell_485_matmul_1_readvariableop_resource:
(;
-lstm_cell_485_biasadd_readvariableop_resource:(
identity¢$lstm_cell_485/BiasAdd/ReadVariableOp¢#lstm_cell_485/MatMul/ReadVariableOp¢%lstm_cell_485/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_485/MatMul/ReadVariableOpReadVariableOp,lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_485/MatMulMatMulstrided_slice_2:output:0+lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_485/MatMul_1MatMulzeros:output:0-lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_485/addAddV2lstm_cell_485/MatMul:product:0 lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_485/BiasAddBiasAddlstm_cell_485/add:z:0,lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_485/splitSplit&lstm_cell_485/split/split_dim:output:0lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_485/SigmoidSigmoidlstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_1Sigmoidlstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_485/mulMullstm_cell_485/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_485/ReluRelulstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_1Mullstm_cell_485/Sigmoid:y:0 lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_485/add_1AddV2lstm_cell_485/mul:z:0lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_2Sigmoidlstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_485/Relu_1Relulstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_2Mullstm_cell_485/Sigmoid_2:y:0"lstm_cell_485/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_485_matmul_readvariableop_resource.lstm_cell_485_matmul_1_readvariableop_resource-lstm_cell_485_biasadd_readvariableop_resource*
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
while_body_2936447*
condR
while_cond_2936446*K
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
NoOpNoOp%^lstm_cell_485/BiasAdd/ReadVariableOp$^lstm_cell_485/MatMul/ReadVariableOp&^lstm_cell_485/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_485/BiasAdd/ReadVariableOp$lstm_cell_485/BiasAdd/ReadVariableOp2J
#lstm_cell_485/MatMul/ReadVariableOp#lstm_cell_485/MatMul/ReadVariableOp2N
%lstm_cell_485/MatMul_1/ReadVariableOp%lstm_cell_485/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2935831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_484_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_484_biasadd_readvariableop_resource:	È¢*while/lstm_cell_484/BiasAdd/ReadVariableOp¢)while/lstm_cell_484/MatMul/ReadVariableOp¢+while/lstm_cell_484/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_484/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_484/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_484/addAddV2$while/lstm_cell_484/MatMul:product:0&while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_484/BiasAddBiasAddwhile/lstm_cell_484/add:z:02while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_484/splitSplit,while/lstm_cell_484/split/split_dim:output:0$while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_484/SigmoidSigmoid"while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_1Sigmoid"while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mulMul!while/lstm_cell_484/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_484/ReluRelu"while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_1Mulwhile/lstm_cell_484/Sigmoid:y:0&while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/add_1AddV2while/lstm_cell_484/mul:z:0while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_2Sigmoid"while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_484/Relu_1Reluwhile/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_2Mul!while/lstm_cell_484/Sigmoid_2:y:0(while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_484/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_484/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_484/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_484/BiasAdd/ReadVariableOp*^while/lstm_cell_484/MatMul/ReadVariableOp,^while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_484_biasadd_readvariableop_resource5while_lstm_cell_484_biasadd_readvariableop_resource_0"n
4while_lstm_cell_484_matmul_1_readvariableop_resource6while_lstm_cell_484_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_484_matmul_readvariableop_resource4while_lstm_cell_484_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_484/BiasAdd/ReadVariableOp*while/lstm_cell_484/BiasAdd/ReadVariableOp2V
)while/lstm_cell_484/MatMul/ReadVariableOp)while/lstm_cell_484/MatMul/ReadVariableOp2Z
+while/lstm_cell_484/MatMul_1/ReadVariableOp+while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#
ë
while_body_2932630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_485_2932654_0:2(/
while_lstm_cell_485_2932656_0:
(+
while_lstm_cell_485_2932658_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_485_2932654:2(-
while_lstm_cell_485_2932656:
()
while_lstm_cell_485_2932658:(¢+while/lstm_cell_485/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_485/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_485_2932654_0while_lstm_cell_485_2932656_0while_lstm_cell_485_2932658_0*
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932571Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_485/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_485/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_485/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_485/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_485_2932654while_lstm_cell_485_2932654_0"<
while_lstm_cell_485_2932656while_lstm_cell_485_2932656_0"<
while_lstm_cell_485_2932658while_lstm_cell_485_2932658_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_485/StatefulPartitionedCall+while/lstm_cell_485/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ü£
à
#__inference__traced_restore_2937260
file_prefix2
 assignvariableop_dense_31_kernel:
.
 assignvariableop_1_dense_31_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_93_lstm_cell_93_kernel:	K
8assignvariableop_8_lstm_93_lstm_cell_93_recurrent_kernel:	d;
,assignvariableop_9_lstm_93_lstm_cell_93_bias:	B
/assignvariableop_10_lstm_94_lstm_cell_94_kernel:	dÈL
9assignvariableop_11_lstm_94_lstm_cell_94_recurrent_kernel:	2È<
-assignvariableop_12_lstm_94_lstm_cell_94_bias:	ÈA
/assignvariableop_13_lstm_95_lstm_cell_95_kernel:2(K
9assignvariableop_14_lstm_95_lstm_cell_95_recurrent_kernel:
(;
-assignvariableop_15_lstm_95_lstm_cell_95_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_31_kernel_m:
6
(assignvariableop_19_adam_dense_31_bias_m:I
6assignvariableop_20_adam_lstm_93_lstm_cell_93_kernel_m:	S
@assignvariableop_21_adam_lstm_93_lstm_cell_93_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_93_lstm_cell_93_bias_m:	I
6assignvariableop_23_adam_lstm_94_lstm_cell_94_kernel_m:	dÈS
@assignvariableop_24_adam_lstm_94_lstm_cell_94_recurrent_kernel_m:	2ÈC
4assignvariableop_25_adam_lstm_94_lstm_cell_94_bias_m:	ÈH
6assignvariableop_26_adam_lstm_95_lstm_cell_95_kernel_m:2(R
@assignvariableop_27_adam_lstm_95_lstm_cell_95_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_95_lstm_cell_95_bias_m:(<
*assignvariableop_29_adam_dense_31_kernel_v:
6
(assignvariableop_30_adam_dense_31_bias_v:I
6assignvariableop_31_adam_lstm_93_lstm_cell_93_kernel_v:	S
@assignvariableop_32_adam_lstm_93_lstm_cell_93_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_93_lstm_cell_93_bias_v:	I
6assignvariableop_34_adam_lstm_94_lstm_cell_94_kernel_v:	dÈS
@assignvariableop_35_adam_lstm_94_lstm_cell_94_recurrent_kernel_v:	2ÈC
4assignvariableop_36_adam_lstm_94_lstm_cell_94_bias_v:	ÈH
6assignvariableop_37_adam_lstm_95_lstm_cell_95_kernel_v:2(R
@assignvariableop_38_adam_lstm_95_lstm_cell_95_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_95_lstm_cell_95_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_31_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_31_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_93_lstm_cell_93_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_93_lstm_cell_93_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_93_lstm_cell_93_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_94_lstm_cell_94_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_94_lstm_cell_94_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_94_lstm_cell_94_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_95_lstm_cell_95_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_95_lstm_cell_95_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_95_lstm_cell_95_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_31_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_31_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_93_lstm_cell_93_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_93_lstm_cell_93_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_93_lstm_cell_93_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_94_lstm_cell_94_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_94_lstm_cell_94_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_94_lstm_cell_94_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_95_lstm_cell_95_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_95_lstm_cell_95_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_95_lstm_cell_95_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_31_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_31_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_93_lstm_cell_93_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_93_lstm_cell_93_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_93_lstm_cell_93_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_94_lstm_cell_94_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_94_lstm_cell_94_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_94_lstm_cell_94_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_95_lstm_cell_95_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_95_lstm_cell_95_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_95_lstm_cell_95_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2933453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2933453___redundant_placeholder05
1while_while_cond_2933453___redundant_placeholder15
1while_while_cond_2933453___redundant_placeholder25
1while_while_cond_2933453___redundant_placeholder3
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
K
¤
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935013
inputs_0?
,lstm_cell_483_matmul_readvariableop_resource:	A
.lstm_cell_483_matmul_1_readvariableop_resource:	d<
-lstm_cell_483_biasadd_readvariableop_resource:	
identity¢$lstm_cell_483/BiasAdd/ReadVariableOp¢#lstm_cell_483/MatMul/ReadVariableOp¢%lstm_cell_483/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_483/MatMul/ReadVariableOpReadVariableOp,lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_483/MatMulMatMulstrided_slice_2:output:0+lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_483/MatMul_1MatMulzeros:output:0-lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_483/addAddV2lstm_cell_483/MatMul:product:0 lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_483/BiasAddBiasAddlstm_cell_483/add:z:0,lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_483/splitSplit&lstm_cell_483/split/split_dim:output:0lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_483/SigmoidSigmoidlstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_1Sigmoidlstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_483/mulMullstm_cell_483/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_483/ReluRelulstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_1Mullstm_cell_483/Sigmoid:y:0 lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_483/add_1AddV2lstm_cell_483/mul:z:0lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_2Sigmoidlstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_483/Relu_1Relulstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_2Mullstm_cell_483/Sigmoid_2:y:0"lstm_cell_483/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_483_matmul_readvariableop_resource.lstm_cell_483_matmul_1_readvariableop_resource-lstm_cell_483_biasadd_readvariableop_resource*
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
while_body_2934929*
condR
while_cond_2934928*K
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
NoOpNoOp%^lstm_cell_483/BiasAdd/ReadVariableOp$^lstm_cell_483/MatMul/ReadVariableOp&^lstm_cell_483/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_483/BiasAdd/ReadVariableOp$lstm_cell_483/BiasAdd/ReadVariableOp2J
#lstm_cell_483/MatMul/ReadVariableOp#lstm_cell_483/MatMul/ReadVariableOp2N
%lstm_cell_483/MatMul_1/ReadVariableOp%lstm_cell_483/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ñ8
Ú
while_body_2935545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_484_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_484_biasadd_readvariableop_resource:	È¢*while/lstm_cell_484/BiasAdd/ReadVariableOp¢)while/lstm_cell_484/MatMul/ReadVariableOp¢+while/lstm_cell_484/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_484/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_484/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_484/addAddV2$while/lstm_cell_484/MatMul:product:0&while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_484/BiasAddBiasAddwhile/lstm_cell_484/add:z:02while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_484/splitSplit,while/lstm_cell_484/split/split_dim:output:0$while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_484/SigmoidSigmoid"while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_1Sigmoid"while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mulMul!while/lstm_cell_484/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_484/ReluRelu"while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_1Mulwhile/lstm_cell_484/Sigmoid:y:0&while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/add_1AddV2while/lstm_cell_484/mul:z:0while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_2Sigmoid"while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_484/Relu_1Reluwhile/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_2Mul!while/lstm_cell_484/Sigmoid_2:y:0(while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_484/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_484/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_484/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_484/BiasAdd/ReadVariableOp*^while/lstm_cell_484/MatMul/ReadVariableOp,^while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_484_biasadd_readvariableop_resource5while_lstm_cell_484_biasadd_readvariableop_resource_0"n
4while_lstm_cell_484_matmul_1_readvariableop_resource6while_lstm_cell_484_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_484_matmul_readvariableop_resource4while_lstm_cell_484_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_484/BiasAdd/ReadVariableOp*while/lstm_cell_484/BiasAdd/ReadVariableOp2V
)while/lstm_cell_484/MatMul/ReadVariableOp)while/lstm_cell_484/MatMul/ReadVariableOp2Z
+while/lstm_cell_484/MatMul_1/ReadVariableOp+while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_483_layer_call_fn_2936727

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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931871o
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


è
lstm_94_while_cond_2934169,
(lstm_94_while_lstm_94_while_loop_counter2
.lstm_94_while_lstm_94_while_maximum_iterations
lstm_94_while_placeholder
lstm_94_while_placeholder_1
lstm_94_while_placeholder_2
lstm_94_while_placeholder_3.
*lstm_94_while_less_lstm_94_strided_slice_1E
Alstm_94_while_lstm_94_while_cond_2934169___redundant_placeholder0E
Alstm_94_while_lstm_94_while_cond_2934169___redundant_placeholder1E
Alstm_94_while_lstm_94_while_cond_2934169___redundant_placeholder2E
Alstm_94_while_lstm_94_while_cond_2934169___redundant_placeholder3
lstm_94_while_identity

lstm_94/while/LessLesslstm_94_while_placeholder*lstm_94_while_less_lstm_94_strided_slice_1*
T0*
_output_shapes
: [
lstm_94/while/IdentityIdentitylstm_94/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_94_while_identitylstm_94/while/Identity:output:0*(
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
while_cond_2935830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935830___redundant_placeholder05
1while_while_cond_2935830___redundant_placeholder15
1while_while_cond_2935830___redundant_placeholder25
1while_while_cond_2935830___redundant_placeholder3
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2931999

inputs(
lstm_cell_483_2931917:	(
lstm_cell_483_2931919:	d$
lstm_cell_483_2931921:	
identity¢%lstm_cell_483/StatefulPartitionedCall¢while;
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
%lstm_cell_483/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_483_2931917lstm_cell_483_2931919lstm_cell_483_2931921*
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931871n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_483_2931917lstm_cell_483_2931919lstm_cell_483_2931921*
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
while_body_2931930*
condR
while_cond_2931929*K
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
NoOpNoOp&^lstm_cell_483/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_483/StatefulPartitionedCall%lstm_cell_483/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2932923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_484_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_484_biasadd_readvariableop_resource:	È¢*while/lstm_cell_484/BiasAdd/ReadVariableOp¢)while/lstm_cell_484/MatMul/ReadVariableOp¢+while/lstm_cell_484/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_484/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_484/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_484/addAddV2$while/lstm_cell_484/MatMul:product:0&while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_484/BiasAddBiasAddwhile/lstm_cell_484/add:z:02while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_484/splitSplit,while/lstm_cell_484/split/split_dim:output:0$while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_484/SigmoidSigmoid"while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_1Sigmoid"while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mulMul!while/lstm_cell_484/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_484/ReluRelu"while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_1Mulwhile/lstm_cell_484/Sigmoid:y:0&while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/add_1AddV2while/lstm_cell_484/mul:z:0while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_2Sigmoid"while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_484/Relu_1Reluwhile/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_2Mul!while/lstm_cell_484/Sigmoid_2:y:0(while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_484/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_484/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_484/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_484/BiasAdd/ReadVariableOp*^while/lstm_cell_484/MatMul/ReadVariableOp,^while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_484_biasadd_readvariableop_resource5while_lstm_cell_484_biasadd_readvariableop_resource_0"n
4while_lstm_cell_484_matmul_1_readvariableop_resource6while_lstm_cell_484_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_484_matmul_readvariableop_resource4while_lstm_cell_484_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_484/BiasAdd/ReadVariableOp*while/lstm_cell_484/BiasAdd/ReadVariableOp2V
)while/lstm_cell_484/MatMul/ReadVariableOp)while/lstm_cell_484/MatMul/ReadVariableOp2Z
+while/lstm_cell_484/MatMul_1/ReadVariableOp+while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933157

inputs>
,lstm_cell_485_matmul_readvariableop_resource:2(@
.lstm_cell_485_matmul_1_readvariableop_resource:
(;
-lstm_cell_485_biasadd_readvariableop_resource:(
identity¢$lstm_cell_485/BiasAdd/ReadVariableOp¢#lstm_cell_485/MatMul/ReadVariableOp¢%lstm_cell_485/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_485/MatMul/ReadVariableOpReadVariableOp,lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_485/MatMulMatMulstrided_slice_2:output:0+lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_485/MatMul_1MatMulzeros:output:0-lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_485/addAddV2lstm_cell_485/MatMul:product:0 lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_485/BiasAddBiasAddlstm_cell_485/add:z:0,lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_485/splitSplit&lstm_cell_485/split/split_dim:output:0lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_485/SigmoidSigmoidlstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_1Sigmoidlstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_485/mulMullstm_cell_485/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_485/ReluRelulstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_1Mullstm_cell_485/Sigmoid:y:0 lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_485/add_1AddV2lstm_cell_485/mul:z:0lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_2Sigmoidlstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_485/Relu_1Relulstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_2Mullstm_cell_485/Sigmoid_2:y:0"lstm_cell_485/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_485_matmul_readvariableop_resource.lstm_cell_485_matmul_1_readvariableop_resource-lstm_cell_485_biasadd_readvariableop_resource*
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
while_body_2933073*
condR
while_cond_2933072*K
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
NoOpNoOp%^lstm_cell_485/BiasAdd/ReadVariableOp$^lstm_cell_485/MatMul/ReadVariableOp&^lstm_cell_485/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_485/BiasAdd/ReadVariableOp$lstm_cell_485/BiasAdd/ReadVariableOp2J
#lstm_cell_485/MatMul/ReadVariableOp#lstm_cell_485/MatMul/ReadVariableOp2N
%lstm_cell_485/MatMul_1/ReadVariableOp%lstm_cell_485/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_2935687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935687___redundant_placeholder05
1while_while_cond_2935687___redundant_placeholder15
1while_while_cond_2935687___redundant_placeholder25
1while_while_cond_2935687___redundant_placeholder3
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
«
¸
)__inference_lstm_94_layer_call_fn_2935453
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2932158|
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
Ñ8
Ú
while_body_2935688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_484_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_484_biasadd_readvariableop_resource:	È¢*while/lstm_cell_484/BiasAdd/ReadVariableOp¢)while/lstm_cell_484/MatMul/ReadVariableOp¢+while/lstm_cell_484/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_484/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_484/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_484/addAddV2$while/lstm_cell_484/MatMul:product:0&while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_484/BiasAddBiasAddwhile/lstm_cell_484/add:z:02while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_484/splitSplit,while/lstm_cell_484/split/split_dim:output:0$while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_484/SigmoidSigmoid"while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_1Sigmoid"while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mulMul!while/lstm_cell_484/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_484/ReluRelu"while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_1Mulwhile/lstm_cell_484/Sigmoid:y:0&while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/add_1AddV2while/lstm_cell_484/mul:z:0while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_2Sigmoid"while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_484/Relu_1Reluwhile/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_2Mul!while/lstm_cell_484/Sigmoid_2:y:0(while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_484/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_484/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_484/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_484/BiasAdd/ReadVariableOp*^while/lstm_cell_484/MatMul/ReadVariableOp,^while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_484_biasadd_readvariableop_resource5while_lstm_cell_484_biasadd_readvariableop_resource_0"n
4while_lstm_cell_484_matmul_1_readvariableop_resource6while_lstm_cell_484_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_484_matmul_readvariableop_resource4while_lstm_cell_484_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_484/BiasAdd/ReadVariableOp*while/lstm_cell_484/BiasAdd/ReadVariableOp2V
)while/lstm_cell_484/MatMul/ReadVariableOp)while/lstm_cell_484/MatMul/ReadVariableOp2Z
+while/lstm_cell_484/MatMul_1/ReadVariableOp+while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
½R

(sequential_31_lstm_95_while_body_2931568H
Dsequential_31_lstm_95_while_sequential_31_lstm_95_while_loop_counterN
Jsequential_31_lstm_95_while_sequential_31_lstm_95_while_maximum_iterations+
'sequential_31_lstm_95_while_placeholder-
)sequential_31_lstm_95_while_placeholder_1-
)sequential_31_lstm_95_while_placeholder_2-
)sequential_31_lstm_95_while_placeholder_3G
Csequential_31_lstm_95_while_sequential_31_lstm_95_strided_slice_1_0
sequential_31_lstm_95_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_95_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_31_lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0:2(^
Lsequential_31_lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(Y
Ksequential_31_lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0:((
$sequential_31_lstm_95_while_identity*
&sequential_31_lstm_95_while_identity_1*
&sequential_31_lstm_95_while_identity_2*
&sequential_31_lstm_95_while_identity_3*
&sequential_31_lstm_95_while_identity_4*
&sequential_31_lstm_95_while_identity_5E
Asequential_31_lstm_95_while_sequential_31_lstm_95_strided_slice_1
}sequential_31_lstm_95_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_95_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_31_lstm_95_while_lstm_cell_485_matmul_readvariableop_resource:2(\
Jsequential_31_lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource:
(W
Isequential_31_lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource:(¢@sequential_31/lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp¢?sequential_31/lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp¢Asequential_31/lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp
Msequential_31/lstm_95/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
?sequential_31/lstm_95/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_31_lstm_95_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_95_tensorarrayunstack_tensorlistfromtensor_0'sequential_31_lstm_95_while_placeholderVsequential_31/lstm_95/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Ê
?sequential_31/lstm_95/while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOpJsequential_31_lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ý
0sequential_31/lstm_95/while/lstm_cell_485/MatMulMatMulFsequential_31/lstm_95/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_31/lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Î
Asequential_31/lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOpLsequential_31_lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ä
2sequential_31/lstm_95/while/lstm_cell_485/MatMul_1MatMul)sequential_31_lstm_95_while_placeholder_2Isequential_31/lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(â
-sequential_31/lstm_95/while/lstm_cell_485/addAddV2:sequential_31/lstm_95/while/lstm_cell_485/MatMul:product:0<sequential_31/lstm_95/while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(È
@sequential_31/lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOpKsequential_31_lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_31/lstm_95/while/lstm_cell_485/BiasAddBiasAdd1sequential_31/lstm_95/while/lstm_cell_485/add:z:0Hsequential_31/lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ({
9sequential_31/lstm_95/while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_31/lstm_95/while/lstm_cell_485/splitSplitBsequential_31/lstm_95/while/lstm_cell_485/split/split_dim:output:0:sequential_31/lstm_95/while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¨
1sequential_31/lstm_95/while/lstm_cell_485/SigmoidSigmoid8sequential_31/lstm_95/while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_31/lstm_95/while/lstm_cell_485/Sigmoid_1Sigmoid8sequential_31/lstm_95/while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
-sequential_31/lstm_95/while/lstm_cell_485/mulMul7sequential_31/lstm_95/while/lstm_cell_485/Sigmoid_1:y:0)sequential_31_lstm_95_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
.sequential_31/lstm_95/while/lstm_cell_485/ReluRelu8sequential_31/lstm_95/while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
/sequential_31/lstm_95/while/lstm_cell_485/mul_1Mul5sequential_31/lstm_95/while/lstm_cell_485/Sigmoid:y:0<sequential_31/lstm_95/while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
/sequential_31/lstm_95/while/lstm_cell_485/add_1AddV21sequential_31/lstm_95/while/lstm_cell_485/mul:z:03sequential_31/lstm_95/while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_31/lstm_95/while/lstm_cell_485/Sigmoid_2Sigmoid8sequential_31/lstm_95/while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

0sequential_31/lstm_95/while/lstm_cell_485/Relu_1Relu3sequential_31/lstm_95/while/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
/sequential_31/lstm_95/while/lstm_cell_485/mul_2Mul7sequential_31/lstm_95/while/lstm_cell_485/Sigmoid_2:y:0>sequential_31/lstm_95/while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@sequential_31/lstm_95/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_31_lstm_95_while_placeholder_1'sequential_31_lstm_95_while_placeholder3sequential_31/lstm_95/while/lstm_cell_485/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_31/lstm_95/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_31/lstm_95/while/addAddV2'sequential_31_lstm_95_while_placeholder*sequential_31/lstm_95/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_31/lstm_95/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_31/lstm_95/while/add_1AddV2Dsequential_31_lstm_95_while_sequential_31_lstm_95_while_loop_counter,sequential_31/lstm_95/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_31/lstm_95/while/IdentityIdentity%sequential_31/lstm_95/while/add_1:z:0!^sequential_31/lstm_95/while/NoOp*
T0*
_output_shapes
: Â
&sequential_31/lstm_95/while/Identity_1IdentityJsequential_31_lstm_95_while_sequential_31_lstm_95_while_maximum_iterations!^sequential_31/lstm_95/while/NoOp*
T0*
_output_shapes
: 
&sequential_31/lstm_95/while/Identity_2Identity#sequential_31/lstm_95/while/add:z:0!^sequential_31/lstm_95/while/NoOp*
T0*
_output_shapes
: È
&sequential_31/lstm_95/while/Identity_3IdentityPsequential_31/lstm_95/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_31/lstm_95/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_31/lstm_95/while/Identity_4Identity3sequential_31/lstm_95/while/lstm_cell_485/mul_2:z:0!^sequential_31/lstm_95/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
&sequential_31/lstm_95/while/Identity_5Identity3sequential_31/lstm_95/while/lstm_cell_485/add_1:z:0!^sequential_31/lstm_95/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
«
 sequential_31/lstm_95/while/NoOpNoOpA^sequential_31/lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp@^sequential_31/lstm_95/while/lstm_cell_485/MatMul/ReadVariableOpB^sequential_31/lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_31_lstm_95_while_identity-sequential_31/lstm_95/while/Identity:output:0"Y
&sequential_31_lstm_95_while_identity_1/sequential_31/lstm_95/while/Identity_1:output:0"Y
&sequential_31_lstm_95_while_identity_2/sequential_31/lstm_95/while/Identity_2:output:0"Y
&sequential_31_lstm_95_while_identity_3/sequential_31/lstm_95/while/Identity_3:output:0"Y
&sequential_31_lstm_95_while_identity_4/sequential_31/lstm_95/while/Identity_4:output:0"Y
&sequential_31_lstm_95_while_identity_5/sequential_31/lstm_95/while/Identity_5:output:0"
Isequential_31_lstm_95_while_lstm_cell_485_biasadd_readvariableop_resourceKsequential_31_lstm_95_while_lstm_cell_485_biasadd_readvariableop_resource_0"
Jsequential_31_lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resourceLsequential_31_lstm_95_while_lstm_cell_485_matmul_1_readvariableop_resource_0"
Hsequential_31_lstm_95_while_lstm_cell_485_matmul_readvariableop_resourceJsequential_31_lstm_95_while_lstm_cell_485_matmul_readvariableop_resource_0"
Asequential_31_lstm_95_while_sequential_31_lstm_95_strided_slice_1Csequential_31_lstm_95_while_sequential_31_lstm_95_strided_slice_1_0"
}sequential_31_lstm_95_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_95_tensorarrayunstack_tensorlistfromtensorsequential_31_lstm_95_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_95_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2
@sequential_31/lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp@sequential_31/lstm_95/while/lstm_cell_485/BiasAdd/ReadVariableOp2
?sequential_31/lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp?sequential_31/lstm_95/while/lstm_cell_485/MatMul/ReadVariableOp2
Asequential_31/lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOpAsequential_31/lstm_95/while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932075

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
º
È
while_cond_2932629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932629___redundant_placeholder05
1while_while_cond_2932629___redundant_placeholder15
1while_while_cond_2932629___redundant_placeholder25
1while_while_cond_2932629___redundant_placeholder3
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
§8

D__inference_lstm_95_layer_call_and_return_conditional_losses_2932508

inputs'
lstm_cell_485_2932426:2('
lstm_cell_485_2932428:
(#
lstm_cell_485_2932430:(
identity¢%lstm_cell_485/StatefulPartitionedCall¢while;
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
%lstm_cell_485/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_485_2932426lstm_cell_485_2932428lstm_cell_485_2932430*
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2932425n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_485_2932426lstm_cell_485_2932428lstm_cell_485_2932430*
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
while_body_2932439*
condR
while_cond_2932438*K
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
NoOpNoOp&^lstm_cell_485/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_485/StatefulPartitionedCall%lstm_cell_485/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÜJ

D__inference_lstm_95_layer_call_and_return_conditional_losses_2933373

inputs>
,lstm_cell_485_matmul_readvariableop_resource:2(@
.lstm_cell_485_matmul_1_readvariableop_resource:
(;
-lstm_cell_485_biasadd_readvariableop_resource:(
identity¢$lstm_cell_485/BiasAdd/ReadVariableOp¢#lstm_cell_485/MatMul/ReadVariableOp¢%lstm_cell_485/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_485/MatMul/ReadVariableOpReadVariableOp,lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_485/MatMulMatMulstrided_slice_2:output:0+lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_485/MatMul_1MatMulzeros:output:0-lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_485/addAddV2lstm_cell_485/MatMul:product:0 lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_485/BiasAddBiasAddlstm_cell_485/add:z:0,lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_485/splitSplit&lstm_cell_485/split/split_dim:output:0lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_485/SigmoidSigmoidlstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_1Sigmoidlstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_485/mulMullstm_cell_485/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_485/ReluRelulstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_1Mullstm_cell_485/Sigmoid:y:0 lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_485/add_1AddV2lstm_cell_485/mul:z:0lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_2Sigmoidlstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_485/Relu_1Relulstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_2Mullstm_cell_485/Sigmoid_2:y:0"lstm_cell_485/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_485_matmul_readvariableop_resource.lstm_cell_485_matmul_1_readvariableop_resource-lstm_cell_485_biasadd_readvariableop_resource*
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
while_body_2933289*
condR
while_cond_2933288*K
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
NoOpNoOp%^lstm_cell_485/BiasAdd/ReadVariableOp$^lstm_cell_485/MatMul/ReadVariableOp&^lstm_cell_485/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_485/BiasAdd/ReadVariableOp$lstm_cell_485/BiasAdd/ReadVariableOp2J
#lstm_cell_485/MatMul/ReadVariableOp#lstm_cell_485/MatMul/ReadVariableOp2N
%lstm_cell_485/MatMul_1/ReadVariableOp%lstm_cell_485/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
K
¡
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936388
inputs_0>
,lstm_cell_485_matmul_readvariableop_resource:2(@
.lstm_cell_485_matmul_1_readvariableop_resource:
(;
-lstm_cell_485_biasadd_readvariableop_resource:(
identity¢$lstm_cell_485/BiasAdd/ReadVariableOp¢#lstm_cell_485/MatMul/ReadVariableOp¢%lstm_cell_485/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_485/MatMul/ReadVariableOpReadVariableOp,lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_485/MatMulMatMulstrided_slice_2:output:0+lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_485/MatMul_1MatMulzeros:output:0-lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_485/addAddV2lstm_cell_485/MatMul:product:0 lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_485/BiasAddBiasAddlstm_cell_485/add:z:0,lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_485/splitSplit&lstm_cell_485/split/split_dim:output:0lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_485/SigmoidSigmoidlstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_1Sigmoidlstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_485/mulMullstm_cell_485/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_485/ReluRelulstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_1Mullstm_cell_485/Sigmoid:y:0 lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_485/add_1AddV2lstm_cell_485/mul:z:0lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_2Sigmoidlstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_485/Relu_1Relulstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_2Mullstm_cell_485/Sigmoid_2:y:0"lstm_cell_485/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_485_matmul_readvariableop_resource.lstm_cell_485_matmul_1_readvariableop_resource-lstm_cell_485_biasadd_readvariableop_resource*
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
while_body_2936304*
condR
while_cond_2936303*K
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
NoOpNoOp%^lstm_cell_485/BiasAdd/ReadVariableOp$^lstm_cell_485/MatMul/ReadVariableOp&^lstm_cell_485/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_485/BiasAdd/ReadVariableOp$lstm_cell_485/BiasAdd/ReadVariableOp2J
#lstm_cell_485/MatMul/ReadVariableOp#lstm_cell_485/MatMul/ReadVariableOp2N
%lstm_cell_485/MatMul_1/ReadVariableOp%lstm_cell_485/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
£

(sequential_31_lstm_95_while_cond_2931567H
Dsequential_31_lstm_95_while_sequential_31_lstm_95_while_loop_counterN
Jsequential_31_lstm_95_while_sequential_31_lstm_95_while_maximum_iterations+
'sequential_31_lstm_95_while_placeholder-
)sequential_31_lstm_95_while_placeholder_1-
)sequential_31_lstm_95_while_placeholder_2-
)sequential_31_lstm_95_while_placeholder_3J
Fsequential_31_lstm_95_while_less_sequential_31_lstm_95_strided_slice_1a
]sequential_31_lstm_95_while_sequential_31_lstm_95_while_cond_2931567___redundant_placeholder0a
]sequential_31_lstm_95_while_sequential_31_lstm_95_while_cond_2931567___redundant_placeholder1a
]sequential_31_lstm_95_while_sequential_31_lstm_95_while_cond_2931567___redundant_placeholder2a
]sequential_31_lstm_95_while_sequential_31_lstm_95_while_cond_2931567___redundant_placeholder3(
$sequential_31_lstm_95_while_identity
º
 sequential_31/lstm_95/while/LessLess'sequential_31_lstm_95_while_placeholderFsequential_31_lstm_95_while_less_sequential_31_lstm_95_strided_slice_1*
T0*
_output_shapes
: w
$sequential_31/lstm_95/while/IdentityIdentity$sequential_31/lstm_95/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_31_lstm_95_while_identity-sequential_31/lstm_95/while/Identity:output:0*(
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
È	
ö
E__inference_dense_31_layer_call_and_return_conditional_losses_2936693

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
)__inference_lstm_93_layer_call_fn_2934870

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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2933703s
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
while_body_2932280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_484_2932304_0:	dÈ0
while_lstm_cell_484_2932306_0:	2È,
while_lstm_cell_484_2932308_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_484_2932304:	dÈ.
while_lstm_cell_484_2932306:	2È*
while_lstm_cell_484_2932308:	È¢+while/lstm_cell_484/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_484/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_484_2932304_0while_lstm_cell_484_2932306_0while_lstm_cell_484_2932308_0*
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932221Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_484/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_484/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_484/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_484/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_484_2932304while_lstm_cell_484_2932304_0"<
while_lstm_cell_484_2932306while_lstm_cell_484_2932306_0"<
while_lstm_cell_484_2932308while_lstm_cell_484_2932308_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_484/StatefulPartitionedCall+while/lstm_cell_484/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_484_layer_call_fn_2936808

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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932075o
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
Ü


/__inference_sequential_31_layer_call_fn_2933972

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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933771o
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
Õ

J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2936955

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
«
¸
)__inference_lstm_93_layer_call_fn_2934848
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2931999|
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
º
È
while_cond_2931929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2931929___redundant_placeholder05
1while_while_cond_2931929___redundant_placeholder15
1while_while_cond_2931929___redundant_placeholder25
1while_while_cond_2931929___redundant_placeholder3
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935299

inputs?
,lstm_cell_483_matmul_readvariableop_resource:	A
.lstm_cell_483_matmul_1_readvariableop_resource:	d<
-lstm_cell_483_biasadd_readvariableop_resource:	
identity¢$lstm_cell_483/BiasAdd/ReadVariableOp¢#lstm_cell_483/MatMul/ReadVariableOp¢%lstm_cell_483/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_483/MatMul/ReadVariableOpReadVariableOp,lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_483/MatMulMatMulstrided_slice_2:output:0+lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_483/MatMul_1MatMulzeros:output:0-lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_483/addAddV2lstm_cell_483/MatMul:product:0 lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_483/BiasAddBiasAddlstm_cell_483/add:z:0,lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_483/splitSplit&lstm_cell_483/split/split_dim:output:0lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_483/SigmoidSigmoidlstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_1Sigmoidlstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_483/mulMullstm_cell_483/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_483/ReluRelulstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_1Mullstm_cell_483/Sigmoid:y:0 lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_483/add_1AddV2lstm_cell_483/mul:z:0lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_2Sigmoidlstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_483/Relu_1Relulstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_2Mullstm_cell_483/Sigmoid_2:y:0"lstm_cell_483/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_483_matmul_readvariableop_resource.lstm_cell_483_matmul_1_readvariableop_resource-lstm_cell_483_biasadd_readvariableop_resource*
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
while_body_2935215*
condR
while_cond_2935214*K
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
NoOpNoOp%^lstm_cell_483/BiasAdd/ReadVariableOp$^lstm_cell_483/MatMul/ReadVariableOp&^lstm_cell_483/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_483/BiasAdd/ReadVariableOp$lstm_cell_483/BiasAdd/ReadVariableOp2J
#lstm_cell_483/MatMul/ReadVariableOp#lstm_cell_483/MatMul/ReadVariableOp2N
%lstm_cell_483/MatMul_1/ReadVariableOp%lstm_cell_483/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
öV
é
 __inference__traced_save_2937130
file_prefix.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_93_lstm_cell_93_kernel_read_readvariableopD
@savev2_lstm_93_lstm_cell_93_recurrent_kernel_read_readvariableop8
4savev2_lstm_93_lstm_cell_93_bias_read_readvariableop:
6savev2_lstm_94_lstm_cell_94_kernel_read_readvariableopD
@savev2_lstm_94_lstm_cell_94_recurrent_kernel_read_readvariableop8
4savev2_lstm_94_lstm_cell_94_bias_read_readvariableop:
6savev2_lstm_95_lstm_cell_95_kernel_read_readvariableopD
@savev2_lstm_95_lstm_cell_95_recurrent_kernel_read_readvariableop8
4savev2_lstm_95_lstm_cell_95_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableopA
=savev2_adam_lstm_93_lstm_cell_93_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_93_lstm_cell_93_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_93_lstm_cell_93_bias_m_read_readvariableopA
=savev2_adam_lstm_94_lstm_cell_94_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_94_lstm_cell_94_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_94_lstm_cell_94_bias_m_read_readvariableopA
=savev2_adam_lstm_95_lstm_cell_95_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_95_lstm_cell_95_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_95_lstm_cell_95_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableopA
=savev2_adam_lstm_93_lstm_cell_93_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_93_lstm_cell_93_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_93_lstm_cell_93_bias_v_read_readvariableopA
=savev2_adam_lstm_94_lstm_cell_94_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_94_lstm_cell_94_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_94_lstm_cell_94_bias_v_read_readvariableopA
=savev2_adam_lstm_95_lstm_cell_95_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_95_lstm_cell_95_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_95_lstm_cell_95_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_93_lstm_cell_93_kernel_read_readvariableop@savev2_lstm_93_lstm_cell_93_recurrent_kernel_read_readvariableop4savev2_lstm_93_lstm_cell_93_bias_read_readvariableop6savev2_lstm_94_lstm_cell_94_kernel_read_readvariableop@savev2_lstm_94_lstm_cell_94_recurrent_kernel_read_readvariableop4savev2_lstm_94_lstm_cell_94_bias_read_readvariableop6savev2_lstm_95_lstm_cell_95_kernel_read_readvariableop@savev2_lstm_95_lstm_cell_95_recurrent_kernel_read_readvariableop4savev2_lstm_95_lstm_cell_95_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableop=savev2_adam_lstm_93_lstm_cell_93_kernel_m_read_readvariableopGsavev2_adam_lstm_93_lstm_cell_93_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_93_lstm_cell_93_bias_m_read_readvariableop=savev2_adam_lstm_94_lstm_cell_94_kernel_m_read_readvariableopGsavev2_adam_lstm_94_lstm_cell_94_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_94_lstm_cell_94_bias_m_read_readvariableop=savev2_adam_lstm_95_lstm_cell_95_kernel_m_read_readvariableopGsavev2_adam_lstm_95_lstm_cell_95_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_95_lstm_cell_95_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableop=savev2_adam_lstm_93_lstm_cell_93_kernel_v_read_readvariableopGsavev2_adam_lstm_93_lstm_cell_93_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_93_lstm_cell_93_bias_v_read_readvariableop=savev2_adam_lstm_94_lstm_cell_94_kernel_v_read_readvariableopGsavev2_adam_lstm_94_lstm_cell_94_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_94_lstm_cell_94_bias_v_read_readvariableop=savev2_adam_lstm_95_lstm_cell_95_kernel_v_read_readvariableopGsavev2_adam_lstm_95_lstm_cell_95_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_95_lstm_cell_95_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
º
È
while_cond_2936446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2936446___redundant_placeholder05
1while_while_cond_2936446___redundant_placeholder15
1while_while_cond_2936446___redundant_placeholder25
1while_while_cond_2936446___redundant_placeholder3
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
while_cond_2932772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932772___redundant_placeholder05
1while_while_cond_2932772___redundant_placeholder15
1while_while_cond_2932772___redundant_placeholder25
1while_while_cond_2932772___redundant_placeholder3
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
×

J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932221

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
áJ
¢
D__inference_lstm_93_layer_call_and_return_conditional_losses_2933703

inputs?
,lstm_cell_483_matmul_readvariableop_resource:	A
.lstm_cell_483_matmul_1_readvariableop_resource:	d<
-lstm_cell_483_biasadd_readvariableop_resource:	
identity¢$lstm_cell_483/BiasAdd/ReadVariableOp¢#lstm_cell_483/MatMul/ReadVariableOp¢%lstm_cell_483/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_483/MatMul/ReadVariableOpReadVariableOp,lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_483/MatMulMatMulstrided_slice_2:output:0+lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_483/MatMul_1MatMulzeros:output:0-lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_483/addAddV2lstm_cell_483/MatMul:product:0 lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_483/BiasAddBiasAddlstm_cell_483/add:z:0,lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_483/splitSplit&lstm_cell_483/split/split_dim:output:0lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_483/SigmoidSigmoidlstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_1Sigmoidlstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_483/mulMullstm_cell_483/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_483/ReluRelulstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_1Mullstm_cell_483/Sigmoid:y:0 lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_483/add_1AddV2lstm_cell_483/mul:z:0lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_483/Sigmoid_2Sigmoidlstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_483/Relu_1Relulstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_483/mul_2Mullstm_cell_483/Sigmoid_2:y:0"lstm_cell_483/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_483_matmul_readvariableop_resource.lstm_cell_483_matmul_1_readvariableop_resource-lstm_cell_483_biasadd_readvariableop_resource*
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
while_body_2933619*
condR
while_cond_2933618*K
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
NoOpNoOp%^lstm_cell_483/BiasAdd/ReadVariableOp$^lstm_cell_483/MatMul/ReadVariableOp&^lstm_cell_483/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_483/BiasAdd/ReadVariableOp$lstm_cell_483/BiasAdd/ReadVariableOp2J
#lstm_cell_483/MatMul/ReadVariableOp#lstm_cell_483/MatMul/ReadVariableOp2N
%lstm_cell_483/MatMul_1/ReadVariableOp%lstm_cell_483/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2936791

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
®8

D__inference_lstm_93_layer_call_and_return_conditional_losses_2931808

inputs(
lstm_cell_483_2931726:	(
lstm_cell_483_2931728:	d$
lstm_cell_483_2931730:	
identity¢%lstm_cell_483/StatefulPartitionedCall¢while;
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
%lstm_cell_483/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_483_2931726lstm_cell_483_2931728lstm_cell_483_2931730*
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931725n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_483_2931726lstm_cell_483_2931728lstm_cell_483_2931730*
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
while_body_2931739*
condR
while_cond_2931738*K
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
NoOpNoOp&^lstm_cell_483/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_483/StatefulPartitionedCall%lstm_cell_483/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
#
ñ
while_body_2932089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_484_2932113_0:	dÈ0
while_lstm_cell_484_2932115_0:	2È,
while_lstm_cell_484_2932117_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_484_2932113:	dÈ.
while_lstm_cell_484_2932115:	2È*
while_lstm_cell_484_2932117:	È¢+while/lstm_cell_484/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_484/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_484_2932113_0while_lstm_cell_484_2932115_0while_lstm_cell_484_2932117_0*
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2932075Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_484/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_484/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_484/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_484/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_484_2932113while_lstm_cell_484_2932113_0"<
while_lstm_cell_484_2932115while_lstm_cell_484_2932115_0"<
while_lstm_cell_484_2932117while_lstm_cell_484_2932117_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_484/StatefulPartitionedCall+while/lstm_cell_484/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

¶
)__inference_lstm_93_layer_call_fn_2934859

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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2932857s
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

µ
)__inference_lstm_95_layer_call_fn_2936069
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2932508o
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
Ä8
Ô
while_body_2936161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_485_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_485_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_485_matmul_readvariableop_resource:2(F
4while_lstm_cell_485_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_485_biasadd_readvariableop_resource:(¢*while/lstm_cell_485/BiasAdd/ReadVariableOp¢)while/lstm_cell_485/MatMul/ReadVariableOp¢+while/lstm_cell_485/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_485/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_485/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_485/addAddV2$while/lstm_cell_485/MatMul:product:0&while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_485/BiasAddBiasAddwhile/lstm_cell_485/add:z:02while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_485/splitSplit,while/lstm_cell_485/split/split_dim:output:0$while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_485/SigmoidSigmoid"while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_1Sigmoid"while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mulMul!while/lstm_cell_485/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_485/ReluRelu"while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_1Mulwhile/lstm_cell_485/Sigmoid:y:0&while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/add_1AddV2while/lstm_cell_485/mul:z:0while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_2Sigmoid"while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_485/Relu_1Reluwhile/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_2Mul!while/lstm_cell_485/Sigmoid_2:y:0(while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_485/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_485/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_485/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_485/BiasAdd/ReadVariableOp*^while/lstm_cell_485/MatMul/ReadVariableOp,^while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_485_biasadd_readvariableop_resource5while_lstm_cell_485_biasadd_readvariableop_resource_0"n
4while_lstm_cell_485_matmul_1_readvariableop_resource6while_lstm_cell_485_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_485_matmul_readvariableop_resource4while_lstm_cell_485_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_485/BiasAdd/ReadVariableOp*while/lstm_cell_485/BiasAdd/ReadVariableOp2V
)while/lstm_cell_485/MatMul/ReadVariableOp)while/lstm_cell_485/MatMul/ReadVariableOp2Z
+while/lstm_cell_485/MatMul_1/ReadVariableOp+while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_94_while_cond_2934596,
(lstm_94_while_lstm_94_while_loop_counter2
.lstm_94_while_lstm_94_while_maximum_iterations
lstm_94_while_placeholder
lstm_94_while_placeholder_1
lstm_94_while_placeholder_2
lstm_94_while_placeholder_3.
*lstm_94_while_less_lstm_94_strided_slice_1E
Alstm_94_while_lstm_94_while_cond_2934596___redundant_placeholder0E
Alstm_94_while_lstm_94_while_cond_2934596___redundant_placeholder1E
Alstm_94_while_lstm_94_while_cond_2934596___redundant_placeholder2E
Alstm_94_while_lstm_94_while_cond_2934596___redundant_placeholder3
lstm_94_while_identity

lstm_94/while/LessLesslstm_94_while_placeholder*lstm_94_while_less_lstm_94_strided_slice_1*
T0*
_output_shapes
: [
lstm_94/while/IdentityIdentitylstm_94/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_94_while_identitylstm_94/while/Identity:output:0*(
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
ÜJ

D__inference_lstm_95_layer_call_and_return_conditional_losses_2936674

inputs>
,lstm_cell_485_matmul_readvariableop_resource:2(@
.lstm_cell_485_matmul_1_readvariableop_resource:
(;
-lstm_cell_485_biasadd_readvariableop_resource:(
identity¢$lstm_cell_485/BiasAdd/ReadVariableOp¢#lstm_cell_485/MatMul/ReadVariableOp¢%lstm_cell_485/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_485/MatMul/ReadVariableOpReadVariableOp,lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_485/MatMulMatMulstrided_slice_2:output:0+lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_485/MatMul_1MatMulzeros:output:0-lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_485/addAddV2lstm_cell_485/MatMul:product:0 lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_485/BiasAddBiasAddlstm_cell_485/add:z:0,lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_485/splitSplit&lstm_cell_485/split/split_dim:output:0lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_485/SigmoidSigmoidlstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_1Sigmoidlstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_485/mulMullstm_cell_485/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_485/ReluRelulstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_1Mullstm_cell_485/Sigmoid:y:0 lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_485/add_1AddV2lstm_cell_485/mul:z:0lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_2Sigmoidlstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_485/Relu_1Relulstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_2Mullstm_cell_485/Sigmoid_2:y:0"lstm_cell_485/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_485_matmul_readvariableop_resource.lstm_cell_485_matmul_1_readvariableop_resource-lstm_cell_485_biasadd_readvariableop_resource*
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
while_body_2936590*
condR
while_cond_2936589*K
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
NoOpNoOp%^lstm_cell_485/BiasAdd/ReadVariableOp$^lstm_cell_485/MatMul/ReadVariableOp&^lstm_cell_485/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_485/BiasAdd/ReadVariableOp$lstm_cell_485/BiasAdd/ReadVariableOp2J
#lstm_cell_485/MatMul/ReadVariableOp#lstm_cell_485/MatMul/ReadVariableOp2N
%lstm_cell_485/MatMul_1/ReadVariableOp%lstm_cell_485/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ä8
Ô
while_body_2936447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_485_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_485_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_485_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_485_matmul_readvariableop_resource:2(F
4while_lstm_cell_485_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_485_biasadd_readvariableop_resource:(¢*while/lstm_cell_485/BiasAdd/ReadVariableOp¢)while/lstm_cell_485/MatMul/ReadVariableOp¢+while/lstm_cell_485/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_485_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_485/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_485_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_485/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_485/addAddV2$while/lstm_cell_485/MatMul:product:0&while/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_485_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_485/BiasAddBiasAddwhile/lstm_cell_485/add:z:02while/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_485/splitSplit,while/lstm_cell_485/split/split_dim:output:0$while/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_485/SigmoidSigmoid"while/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_1Sigmoid"while/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mulMul!while/lstm_cell_485/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_485/ReluRelu"while/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_1Mulwhile/lstm_cell_485/Sigmoid:y:0&while/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/add_1AddV2while/lstm_cell_485/mul:z:0while/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_485/Sigmoid_2Sigmoid"while/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_485/Relu_1Reluwhile/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_485/mul_2Mul!while/lstm_cell_485/Sigmoid_2:y:0(while/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_485/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_485/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_485/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_485/BiasAdd/ReadVariableOp*^while/lstm_cell_485/MatMul/ReadVariableOp,^while/lstm_cell_485/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_485_biasadd_readvariableop_resource5while_lstm_cell_485_biasadd_readvariableop_resource_0"n
4while_lstm_cell_485_matmul_1_readvariableop_resource6while_lstm_cell_485_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_485_matmul_readvariableop_resource4while_lstm_cell_485_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_485/BiasAdd/ReadVariableOp*while/lstm_cell_485/BiasAdd/ReadVariableOp2V
)while/lstm_cell_485/MatMul/ReadVariableOp)while/lstm_cell_485/MatMul/ReadVariableOp2Z
+while/lstm_cell_485/MatMul_1/ReadVariableOp+while/lstm_cell_485/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
´
ò
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933853
lstm_93_input"
lstm_93_2933826:	"
lstm_93_2933828:	d
lstm_93_2933830:	"
lstm_94_2933833:	dÈ"
lstm_94_2933835:	2È
lstm_94_2933837:	È!
lstm_95_2933840:2(!
lstm_95_2933842:
(
lstm_95_2933844:("
dense_31_2933847:

dense_31_2933849:
identity¢ dense_31/StatefulPartitionedCall¢lstm_93/StatefulPartitionedCall¢lstm_94/StatefulPartitionedCall¢lstm_95/StatefulPartitionedCall
lstm_93/StatefulPartitionedCallStatefulPartitionedCalllstm_93_inputlstm_93_2933826lstm_93_2933828lstm_93_2933830*
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2932857¨
lstm_94/StatefulPartitionedCallStatefulPartitionedCall(lstm_93/StatefulPartitionedCall:output:0lstm_94_2933833lstm_94_2933835lstm_94_2933837*
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933007¤
lstm_95/StatefulPartitionedCallStatefulPartitionedCall(lstm_94/StatefulPartitionedCall:output:0lstm_95_2933840lstm_95_2933842lstm_95_2933844*
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933157
 dense_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_95/StatefulPartitionedCall:output:0dense_31_2933847dense_31_2933849*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_2933175x
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_31/StatefulPartitionedCall ^lstm_93/StatefulPartitionedCall ^lstm_94/StatefulPartitionedCall ^lstm_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_93/StatefulPartitionedCalllstm_93/StatefulPartitionedCall2B
lstm_94/StatefulPartitionedCalllstm_94/StatefulPartitionedCall2B
lstm_95/StatefulPartitionedCalllstm_95/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_93_input


è
lstm_93_while_cond_2934457,
(lstm_93_while_lstm_93_while_loop_counter2
.lstm_93_while_lstm_93_while_maximum_iterations
lstm_93_while_placeholder
lstm_93_while_placeholder_1
lstm_93_while_placeholder_2
lstm_93_while_placeholder_3.
*lstm_93_while_less_lstm_93_strided_slice_1E
Alstm_93_while_lstm_93_while_cond_2934457___redundant_placeholder0E
Alstm_93_while_lstm_93_while_cond_2934457___redundant_placeholder1E
Alstm_93_while_lstm_93_while_cond_2934457___redundant_placeholder2E
Alstm_93_while_lstm_93_while_cond_2934457___redundant_placeholder3
lstm_93_while_identity

lstm_93/while/LessLesslstm_93_while_placeholder*lstm_93_while_less_lstm_93_strided_slice_1*
T0*
_output_shapes
: [
lstm_93/while/IdentityIdentitylstm_93/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_93_while_identitylstm_93/while/Identity:output:0*(
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
£

(sequential_31_lstm_94_while_cond_2931428H
Dsequential_31_lstm_94_while_sequential_31_lstm_94_while_loop_counterN
Jsequential_31_lstm_94_while_sequential_31_lstm_94_while_maximum_iterations+
'sequential_31_lstm_94_while_placeholder-
)sequential_31_lstm_94_while_placeholder_1-
)sequential_31_lstm_94_while_placeholder_2-
)sequential_31_lstm_94_while_placeholder_3J
Fsequential_31_lstm_94_while_less_sequential_31_lstm_94_strided_slice_1a
]sequential_31_lstm_94_while_sequential_31_lstm_94_while_cond_2931428___redundant_placeholder0a
]sequential_31_lstm_94_while_sequential_31_lstm_94_while_cond_2931428___redundant_placeholder1a
]sequential_31_lstm_94_while_sequential_31_lstm_94_while_cond_2931428___redundant_placeholder2a
]sequential_31_lstm_94_while_sequential_31_lstm_94_while_cond_2931428___redundant_placeholder3(
$sequential_31_lstm_94_while_identity
º
 sequential_31/lstm_94/while/LessLess'sequential_31_lstm_94_while_placeholderFsequential_31_lstm_94_while_less_sequential_31_lstm_94_strided_slice_1*
T0*
_output_shapes
: w
$sequential_31/lstm_94/while/IdentityIdentity$sequential_31/lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_31_lstm_94_while_identity-sequential_31/lstm_94/while/Identity:output:0*(
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
þ

J__inference_sequential_31_layer_call_and_return_conditional_losses_2934399

inputsG
4lstm_93_lstm_cell_483_matmul_readvariableop_resource:	I
6lstm_93_lstm_cell_483_matmul_1_readvariableop_resource:	dD
5lstm_93_lstm_cell_483_biasadd_readvariableop_resource:	G
4lstm_94_lstm_cell_484_matmul_readvariableop_resource:	dÈI
6lstm_94_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈD
5lstm_94_lstm_cell_484_biasadd_readvariableop_resource:	ÈF
4lstm_95_lstm_cell_485_matmul_readvariableop_resource:2(H
6lstm_95_lstm_cell_485_matmul_1_readvariableop_resource:
(C
5lstm_95_lstm_cell_485_biasadd_readvariableop_resource:(9
'dense_31_matmul_readvariableop_resource:
6
(dense_31_biasadd_readvariableop_resource:
identity¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp¢,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp¢+lstm_93/lstm_cell_483/MatMul/ReadVariableOp¢-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp¢lstm_93/while¢,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp¢+lstm_94/lstm_cell_484/MatMul/ReadVariableOp¢-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp¢lstm_94/while¢,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp¢+lstm_95/lstm_cell_485/MatMul/ReadVariableOp¢-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp¢lstm_95/whileC
lstm_93/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_93/strided_sliceStridedSlicelstm_93/Shape:output:0$lstm_93/strided_slice/stack:output:0&lstm_93/strided_slice/stack_1:output:0&lstm_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_93/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_93/zeros/packedPacklstm_93/strided_slice:output:0lstm_93/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_93/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_93/zerosFilllstm_93/zeros/packed:output:0lstm_93/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_93/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_93/zeros_1/packedPacklstm_93/strided_slice:output:0!lstm_93/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_93/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_93/zeros_1Filllstm_93/zeros_1/packed:output:0lstm_93/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_93/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_93/transpose	Transposeinputslstm_93/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_93/Shape_1Shapelstm_93/transpose:y:0*
T0*
_output_shapes
:g
lstm_93/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_93/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_93/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_93/strided_slice_1StridedSlicelstm_93/Shape_1:output:0&lstm_93/strided_slice_1/stack:output:0(lstm_93/strided_slice_1/stack_1:output:0(lstm_93/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_93/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_93/TensorArrayV2TensorListReserve,lstm_93/TensorArrayV2/element_shape:output:0 lstm_93/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_93/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_93/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_93/transpose:y:0Flstm_93/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_93/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_93/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_93/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_93/strided_slice_2StridedSlicelstm_93/transpose:y:0&lstm_93/strided_slice_2/stack:output:0(lstm_93/strided_slice_2/stack_1:output:0(lstm_93/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_93/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4lstm_93_lstm_cell_483_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_93/lstm_cell_483/MatMulMatMul lstm_93/strided_slice_2:output:03lstm_93/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6lstm_93_lstm_cell_483_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_93/lstm_cell_483/MatMul_1MatMullstm_93/zeros:output:05lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_93/lstm_cell_483/addAddV2&lstm_93/lstm_cell_483/MatMul:product:0(lstm_93/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5lstm_93_lstm_cell_483_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_93/lstm_cell_483/BiasAddBiasAddlstm_93/lstm_cell_483/add:z:04lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_93/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_93/lstm_cell_483/splitSplit.lstm_93/lstm_cell_483/split/split_dim:output:0&lstm_93/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_93/lstm_cell_483/SigmoidSigmoid$lstm_93/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/Sigmoid_1Sigmoid$lstm_93/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/mulMul#lstm_93/lstm_cell_483/Sigmoid_1:y:0lstm_93/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_93/lstm_cell_483/ReluRelu$lstm_93/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_93/lstm_cell_483/mul_1Mul!lstm_93/lstm_cell_483/Sigmoid:y:0(lstm_93/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/add_1AddV2lstm_93/lstm_cell_483/mul:z:0lstm_93/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/lstm_cell_483/Sigmoid_2Sigmoid$lstm_93/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_93/lstm_cell_483/Relu_1Relulstm_93/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_93/lstm_cell_483/mul_2Mul#lstm_93/lstm_cell_483/Sigmoid_2:y:0*lstm_93/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_93/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_93/TensorArrayV2_1TensorListReserve.lstm_93/TensorArrayV2_1/element_shape:output:0 lstm_93/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_93/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_93/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_93/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_93/whileWhile#lstm_93/while/loop_counter:output:0)lstm_93/while/maximum_iterations:output:0lstm_93/time:output:0 lstm_93/TensorArrayV2_1:handle:0lstm_93/zeros:output:0lstm_93/zeros_1:output:0 lstm_93/strided_slice_1:output:0?lstm_93/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_93_lstm_cell_483_matmul_readvariableop_resource6lstm_93_lstm_cell_483_matmul_1_readvariableop_resource5lstm_93_lstm_cell_483_biasadd_readvariableop_resource*
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
lstm_93_while_body_2934031*&
condR
lstm_93_while_cond_2934030*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_93/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_93/TensorArrayV2Stack/TensorListStackTensorListStacklstm_93/while:output:3Alstm_93/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_93/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_93/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_93/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_93/strided_slice_3StridedSlice3lstm_93/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_93/strided_slice_3/stack:output:0(lstm_93/strided_slice_3/stack_1:output:0(lstm_93/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_93/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_93/transpose_1	Transpose3lstm_93/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_93/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_93/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_94/ShapeShapelstm_93/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_94/strided_sliceStridedSlicelstm_94/Shape:output:0$lstm_94/strided_slice/stack:output:0&lstm_94/strided_slice/stack_1:output:0&lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_94/zeros/packedPacklstm_94/strided_slice:output:0lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_94/zerosFilllstm_94/zeros/packed:output:0lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_94/zeros_1/packedPacklstm_94/strided_slice:output:0!lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_94/zeros_1Filllstm_94/zeros_1/packed:output:0lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_94/transpose	Transposelstm_93/transpose_1:y:0lstm_94/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_94/Shape_1Shapelstm_94/transpose:y:0*
T0*
_output_shapes
:g
lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_94/strided_slice_1StridedSlicelstm_94/Shape_1:output:0&lstm_94/strided_slice_1/stack:output:0(lstm_94/strided_slice_1/stack_1:output:0(lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_94/TensorArrayV2TensorListReserve,lstm_94/TensorArrayV2/element_shape:output:0 lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_94/transpose:y:0Flstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_94/strided_slice_2StridedSlicelstm_94/transpose:y:0&lstm_94/strided_slice_2/stack:output:0(lstm_94/strided_slice_2/stack_1:output:0(lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_94/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4lstm_94_lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_94/lstm_cell_484/MatMulMatMul lstm_94/strided_slice_2:output:03lstm_94/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6lstm_94_lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_94/lstm_cell_484/MatMul_1MatMullstm_94/zeros:output:05lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_94/lstm_cell_484/addAddV2&lstm_94/lstm_cell_484/MatMul:product:0(lstm_94/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5lstm_94_lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_94/lstm_cell_484/BiasAddBiasAddlstm_94/lstm_cell_484/add:z:04lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_94/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_94/lstm_cell_484/splitSplit.lstm_94/lstm_cell_484/split/split_dim:output:0&lstm_94/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_94/lstm_cell_484/SigmoidSigmoid$lstm_94/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/Sigmoid_1Sigmoid$lstm_94/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/mulMul#lstm_94/lstm_cell_484/Sigmoid_1:y:0lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_94/lstm_cell_484/ReluRelu$lstm_94/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_94/lstm_cell_484/mul_1Mul!lstm_94/lstm_cell_484/Sigmoid:y:0(lstm_94/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/add_1AddV2lstm_94/lstm_cell_484/mul:z:0lstm_94/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_94/lstm_cell_484/Sigmoid_2Sigmoid$lstm_94/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_94/lstm_cell_484/Relu_1Relulstm_94/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_94/lstm_cell_484/mul_2Mul#lstm_94/lstm_cell_484/Sigmoid_2:y:0*lstm_94/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_94/TensorArrayV2_1TensorListReserve.lstm_94/TensorArrayV2_1/element_shape:output:0 lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_94/whileWhile#lstm_94/while/loop_counter:output:0)lstm_94/while/maximum_iterations:output:0lstm_94/time:output:0 lstm_94/TensorArrayV2_1:handle:0lstm_94/zeros:output:0lstm_94/zeros_1:output:0 lstm_94/strided_slice_1:output:0?lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_94_lstm_cell_484_matmul_readvariableop_resource6lstm_94_lstm_cell_484_matmul_1_readvariableop_resource5lstm_94_lstm_cell_484_biasadd_readvariableop_resource*
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
lstm_94_while_body_2934170*&
condR
lstm_94_while_cond_2934169*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_94/TensorArrayV2Stack/TensorListStackTensorListStacklstm_94/while:output:3Alstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_94/strided_slice_3StridedSlice3lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_94/strided_slice_3/stack:output:0(lstm_94/strided_slice_3/stack_1:output:0(lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_94/transpose_1	Transpose3lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_94/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_95/ShapeShapelstm_94/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_95/strided_sliceStridedSlicelstm_95/Shape:output:0$lstm_95/strided_slice/stack:output:0&lstm_95/strided_slice/stack_1:output:0&lstm_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_95/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_95/zeros/packedPacklstm_95/strided_slice:output:0lstm_95/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_95/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_95/zerosFilllstm_95/zeros/packed:output:0lstm_95/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_95/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_95/zeros_1/packedPacklstm_95/strided_slice:output:0!lstm_95/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_95/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_95/zeros_1Filllstm_95/zeros_1/packed:output:0lstm_95/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_95/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_95/transpose	Transposelstm_94/transpose_1:y:0lstm_95/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_95/Shape_1Shapelstm_95/transpose:y:0*
T0*
_output_shapes
:g
lstm_95/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_95/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_95/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_95/strided_slice_1StridedSlicelstm_95/Shape_1:output:0&lstm_95/strided_slice_1/stack:output:0(lstm_95/strided_slice_1/stack_1:output:0(lstm_95/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_95/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_95/TensorArrayV2TensorListReserve,lstm_95/TensorArrayV2/element_shape:output:0 lstm_95/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_95/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_95/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_95/transpose:y:0Flstm_95/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_95/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_95/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_95/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_95/strided_slice_2StridedSlicelstm_95/transpose:y:0&lstm_95/strided_slice_2/stack:output:0(lstm_95/strided_slice_2/stack_1:output:0(lstm_95/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_95/lstm_cell_485/MatMul/ReadVariableOpReadVariableOp4lstm_95_lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_95/lstm_cell_485/MatMulMatMul lstm_95/strided_slice_2:output:03lstm_95/lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp6lstm_95_lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_95/lstm_cell_485/MatMul_1MatMullstm_95/zeros:output:05lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_95/lstm_cell_485/addAddV2&lstm_95/lstm_cell_485/MatMul:product:0(lstm_95/lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp5lstm_95_lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_95/lstm_cell_485/BiasAddBiasAddlstm_95/lstm_cell_485/add:z:04lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_95/lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_95/lstm_cell_485/splitSplit.lstm_95/lstm_cell_485/split/split_dim:output:0&lstm_95/lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_95/lstm_cell_485/SigmoidSigmoid$lstm_95/lstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/Sigmoid_1Sigmoid$lstm_95/lstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/mulMul#lstm_95/lstm_cell_485/Sigmoid_1:y:0lstm_95/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_95/lstm_cell_485/ReluRelu$lstm_95/lstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_95/lstm_cell_485/mul_1Mul!lstm_95/lstm_cell_485/Sigmoid:y:0(lstm_95/lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/add_1AddV2lstm_95/lstm_cell_485/mul:z:0lstm_95/lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_95/lstm_cell_485/Sigmoid_2Sigmoid$lstm_95/lstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_95/lstm_cell_485/Relu_1Relulstm_95/lstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_95/lstm_cell_485/mul_2Mul#lstm_95/lstm_cell_485/Sigmoid_2:y:0*lstm_95/lstm_cell_485/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_95/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_95/TensorArrayV2_1TensorListReserve.lstm_95/TensorArrayV2_1/element_shape:output:0 lstm_95/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_95/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_95/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_95/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_95/whileWhile#lstm_95/while/loop_counter:output:0)lstm_95/while/maximum_iterations:output:0lstm_95/time:output:0 lstm_95/TensorArrayV2_1:handle:0lstm_95/zeros:output:0lstm_95/zeros_1:output:0 lstm_95/strided_slice_1:output:0?lstm_95/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_95_lstm_cell_485_matmul_readvariableop_resource6lstm_95_lstm_cell_485_matmul_1_readvariableop_resource5lstm_95_lstm_cell_485_biasadd_readvariableop_resource*
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
lstm_95_while_body_2934309*&
condR
lstm_95_while_cond_2934308*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_95/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_95/TensorArrayV2Stack/TensorListStackTensorListStacklstm_95/while:output:3Alstm_95/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_95/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_95/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_95/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_95/strided_slice_3StridedSlice3lstm_95/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_95/strided_slice_3/stack:output:0(lstm_95/strided_slice_3/stack_1:output:0(lstm_95/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_95/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_95/transpose_1	Transpose3lstm_95/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_95/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_95/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_31/MatMulMatMul lstm_95/strided_slice_3:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_31/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp-^lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp,^lstm_93/lstm_cell_483/MatMul/ReadVariableOp.^lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp^lstm_93/while-^lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp,^lstm_94/lstm_cell_484/MatMul/ReadVariableOp.^lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp^lstm_94/while-^lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp,^lstm_95/lstm_cell_485/MatMul/ReadVariableOp.^lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp^lstm_95/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2\
,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp,lstm_93/lstm_cell_483/BiasAdd/ReadVariableOp2Z
+lstm_93/lstm_cell_483/MatMul/ReadVariableOp+lstm_93/lstm_cell_483/MatMul/ReadVariableOp2^
-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp-lstm_93/lstm_cell_483/MatMul_1/ReadVariableOp2
lstm_93/whilelstm_93/while2\
,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp,lstm_94/lstm_cell_484/BiasAdd/ReadVariableOp2Z
+lstm_94/lstm_cell_484/MatMul/ReadVariableOp+lstm_94/lstm_cell_484/MatMul/ReadVariableOp2^
-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp-lstm_94/lstm_cell_484/MatMul_1/ReadVariableOp2
lstm_94/whilelstm_94/while2\
,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp,lstm_95/lstm_cell_485/BiasAdd/ReadVariableOp2Z
+lstm_95/lstm_cell_485/MatMul/ReadVariableOp+lstm_95/lstm_cell_485/MatMul/ReadVariableOp2^
-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp-lstm_95/lstm_cell_485/MatMul_1/ReadVariableOp2
lstm_95/whilelstm_95/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_2935544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935544___redundant_placeholder05
1while_while_cond_2935544___redundant_placeholder15
1while_while_cond_2935544___redundant_placeholder25
1while_while_cond_2935544___redundant_placeholder3
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
while_body_2931930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_483_2931954_0:	0
while_lstm_cell_483_2931956_0:	d,
while_lstm_cell_483_2931958_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_483_2931954:	.
while_lstm_cell_483_2931956:	d*
while_lstm_cell_483_2931958:	¢+while/lstm_cell_483/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_483/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_483_2931954_0while_lstm_cell_483_2931956_0while_lstm_cell_483_2931958_0*
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931871Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_483/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_483/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_483/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_483/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_483_2931954while_lstm_cell_483_2931954_0"<
while_lstm_cell_483_2931956while_lstm_cell_483_2931956_0"<
while_lstm_cell_483_2931958while_lstm_cell_483_2931958_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_483/StatefulPartitionedCall+while/lstm_cell_483/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K
¤
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935772
inputs_0?
,lstm_cell_484_matmul_readvariableop_resource:	dÈA
.lstm_cell_484_matmul_1_readvariableop_resource:	2È<
-lstm_cell_484_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_484/BiasAdd/ReadVariableOp¢#lstm_cell_484/MatMul/ReadVariableOp¢%lstm_cell_484/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_484/MatMul/ReadVariableOpReadVariableOp,lstm_cell_484_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_484/MatMulMatMulstrided_slice_2:output:0+lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_484_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_484/MatMul_1MatMulzeros:output:0-lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_484/addAddV2lstm_cell_484/MatMul:product:0 lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_484_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_484/BiasAddBiasAddlstm_cell_484/add:z:0,lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_484/splitSplit&lstm_cell_484/split/split_dim:output:0lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_484/SigmoidSigmoidlstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_1Sigmoidlstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_484/mulMullstm_cell_484/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_484/ReluRelulstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_1Mullstm_cell_484/Sigmoid:y:0 lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_484/add_1AddV2lstm_cell_484/mul:z:0lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_484/Sigmoid_2Sigmoidlstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_484/Relu_1Relulstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_484/mul_2Mullstm_cell_484/Sigmoid_2:y:0"lstm_cell_484/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_484_matmul_readvariableop_resource.lstm_cell_484_matmul_1_readvariableop_resource-lstm_cell_484_biasadd_readvariableop_resource*
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
while_body_2935688*
condR
while_cond_2935687*K
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
NoOpNoOp%^lstm_cell_484/BiasAdd/ReadVariableOp$^lstm_cell_484/MatMul/ReadVariableOp&^lstm_cell_484/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_484/BiasAdd/ReadVariableOp$lstm_cell_484/BiasAdd/ReadVariableOp2J
#lstm_cell_484/MatMul/ReadVariableOp#lstm_cell_484/MatMul/ReadVariableOp2N
%lstm_cell_484/MatMul_1/ReadVariableOp%lstm_cell_484/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
«
¸
)__inference_lstm_94_layer_call_fn_2935464
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2932349|
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
×

J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931725

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
while_body_2935215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_483_matmul_readvariableop_resource_0:	I
6while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_483_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_483_matmul_readvariableop_resource:	G
4while_lstm_cell_483_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_483_biasadd_readvariableop_resource:	¢*while/lstm_cell_483/BiasAdd/ReadVariableOp¢)while/lstm_cell_483/MatMul/ReadVariableOp¢+while/lstm_cell_483/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_483/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_483/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_483/addAddV2$while/lstm_cell_483/MatMul:product:0&while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_483/BiasAddBiasAddwhile/lstm_cell_483/add:z:02while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_483/splitSplit,while/lstm_cell_483/split/split_dim:output:0$while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_483/SigmoidSigmoid"while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_1Sigmoid"while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mulMul!while/lstm_cell_483/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_483/ReluRelu"while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_1Mulwhile/lstm_cell_483/Sigmoid:y:0&while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/add_1AddV2while/lstm_cell_483/mul:z:0while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_2Sigmoid"while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_483/Relu_1Reluwhile/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_2Mul!while/lstm_cell_483/Sigmoid_2:y:0(while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_483/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_483/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_483/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_483/BiasAdd/ReadVariableOp*^while/lstm_cell_483/MatMul/ReadVariableOp,^while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_483_biasadd_readvariableop_resource5while_lstm_cell_483_biasadd_readvariableop_resource_0"n
4while_lstm_cell_483_matmul_1_readvariableop_resource6while_lstm_cell_483_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_483_matmul_readvariableop_resource4while_lstm_cell_483_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_483/BiasAdd/ReadVariableOp*while/lstm_cell_483/BiasAdd/ReadVariableOp2V
)while/lstm_cell_483/MatMul/ReadVariableOp)while/lstm_cell_483/MatMul/ReadVariableOp2Z
+while/lstm_cell_483/MatMul_1/ReadVariableOp+while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_95_while_cond_2934308,
(lstm_95_while_lstm_95_while_loop_counter2
.lstm_95_while_lstm_95_while_maximum_iterations
lstm_95_while_placeholder
lstm_95_while_placeholder_1
lstm_95_while_placeholder_2
lstm_95_while_placeholder_3.
*lstm_95_while_less_lstm_95_strided_slice_1E
Alstm_95_while_lstm_95_while_cond_2934308___redundant_placeholder0E
Alstm_95_while_lstm_95_while_cond_2934308___redundant_placeholder1E
Alstm_95_while_lstm_95_while_cond_2934308___redundant_placeholder2E
Alstm_95_while_lstm_95_while_cond_2934308___redundant_placeholder3
lstm_95_while_identity

lstm_95/while/LessLesslstm_95_while_placeholder*lstm_95_while_less_lstm_95_strided_slice_1*
T0*
_output_shapes
: [
lstm_95/while/IdentityIdentitylstm_95/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_95_while_identitylstm_95/while/Identity:output:0*(
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
while_cond_2933072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2933072___redundant_placeholder05
1while_while_cond_2933072___redundant_placeholder15
1while_while_cond_2933072___redundant_placeholder25
1while_while_cond_2933072___redundant_placeholder3
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
while_cond_2932088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932088___redundant_placeholder05
1while_while_cond_2932088___redundant_placeholder15
1while_while_cond_2932088___redundant_placeholder25
1while_while_cond_2932088___redundant_placeholder3
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
while_cond_2935357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935357___redundant_placeholder05
1while_while_cond_2935357___redundant_placeholder15
1while_while_cond_2935357___redundant_placeholder25
1while_while_cond_2935357___redundant_placeholder3
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
while_cond_2931738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2931738___redundant_placeholder05
1while_while_cond_2931738___redundant_placeholder15
1while_while_cond_2931738___redundant_placeholder25
1while_while_cond_2931738___redundant_placeholder3
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
while_body_2935974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_484_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_484_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_484_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_484_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_484_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_484_biasadd_readvariableop_resource:	È¢*while/lstm_cell_484/BiasAdd/ReadVariableOp¢)while/lstm_cell_484/MatMul/ReadVariableOp¢+while/lstm_cell_484/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_484/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_484_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_484/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_484/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_484/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_484_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_484/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_484/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_484/addAddV2$while/lstm_cell_484/MatMul:product:0&while/lstm_cell_484/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_484/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_484_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_484/BiasAddBiasAddwhile/lstm_cell_484/add:z:02while/lstm_cell_484/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_484/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_484/splitSplit,while/lstm_cell_484/split/split_dim:output:0$while/lstm_cell_484/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_484/SigmoidSigmoid"while/lstm_cell_484/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_1Sigmoid"while/lstm_cell_484/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mulMul!while/lstm_cell_484/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_484/ReluRelu"while/lstm_cell_484/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_1Mulwhile/lstm_cell_484/Sigmoid:y:0&while/lstm_cell_484/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/add_1AddV2while/lstm_cell_484/mul:z:0while/lstm_cell_484/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_484/Sigmoid_2Sigmoid"while/lstm_cell_484/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_484/Relu_1Reluwhile/lstm_cell_484/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_484/mul_2Mul!while/lstm_cell_484/Sigmoid_2:y:0(while/lstm_cell_484/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_484/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_484/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_484/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_484/BiasAdd/ReadVariableOp*^while/lstm_cell_484/MatMul/ReadVariableOp,^while/lstm_cell_484/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_484_biasadd_readvariableop_resource5while_lstm_cell_484_biasadd_readvariableop_resource_0"n
4while_lstm_cell_484_matmul_1_readvariableop_resource6while_lstm_cell_484_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_484_matmul_readvariableop_resource4while_lstm_cell_484_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_484/BiasAdd/ReadVariableOp*while/lstm_cell_484/BiasAdd/ReadVariableOp2V
)while/lstm_cell_484/MatMul/ReadVariableOp)while/lstm_cell_484/MatMul/ReadVariableOp2Z
+while/lstm_cell_484/MatMul_1/ReadVariableOp+while/lstm_cell_484/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2931739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_483_2931763_0:	0
while_lstm_cell_483_2931765_0:	d,
while_lstm_cell_483_2931767_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_483_2931763:	.
while_lstm_cell_483_2931765:	d*
while_lstm_cell_483_2931767:	¢+while/lstm_cell_483/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_483/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_483_2931763_0while_lstm_cell_483_2931765_0while_lstm_cell_483_2931767_0*
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931725Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_483/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_483/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_483/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_483/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_483_2931763while_lstm_cell_483_2931763_0"<
while_lstm_cell_483_2931765while_lstm_cell_483_2931765_0"<
while_lstm_cell_483_2931767while_lstm_cell_483_2931767_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_483/StatefulPartitionedCall+while/lstm_cell_483/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_93_while_body_2934031,
(lstm_93_while_lstm_93_while_loop_counter2
.lstm_93_while_lstm_93_while_maximum_iterations
lstm_93_while_placeholder
lstm_93_while_placeholder_1
lstm_93_while_placeholder_2
lstm_93_while_placeholder_3+
'lstm_93_while_lstm_93_strided_slice_1_0g
clstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0:	Q
>lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dL
=lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0:	
lstm_93_while_identity
lstm_93_while_identity_1
lstm_93_while_identity_2
lstm_93_while_identity_3
lstm_93_while_identity_4
lstm_93_while_identity_5)
%lstm_93_while_lstm_93_strided_slice_1e
alstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensorM
:lstm_93_while_lstm_cell_483_matmul_readvariableop_resource:	O
<lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource:	dJ
;lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource:	¢2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp¢1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp¢3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp
?lstm_93/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_93/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensor_0lstm_93_while_placeholderHlstm_93/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp<lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_93/while/lstm_cell_483/MatMulMatMul8lstm_93/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp>lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_93/while/lstm_cell_483/MatMul_1MatMullstm_93_while_placeholder_2;lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_93/while/lstm_cell_483/addAddV2,lstm_93/while/lstm_cell_483/MatMul:product:0.lstm_93/while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp=lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_93/while/lstm_cell_483/BiasAddBiasAdd#lstm_93/while/lstm_cell_483/add:z:0:lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_93/while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_93/while/lstm_cell_483/splitSplit4lstm_93/while/lstm_cell_483/split/split_dim:output:0,lstm_93/while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_93/while/lstm_cell_483/SigmoidSigmoid*lstm_93/while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_93/while/lstm_cell_483/Sigmoid_1Sigmoid*lstm_93/while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_93/while/lstm_cell_483/mulMul)lstm_93/while/lstm_cell_483/Sigmoid_1:y:0lstm_93_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_93/while/lstm_cell_483/ReluRelu*lstm_93/while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_93/while/lstm_cell_483/mul_1Mul'lstm_93/while/lstm_cell_483/Sigmoid:y:0.lstm_93/while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_93/while/lstm_cell_483/add_1AddV2#lstm_93/while/lstm_cell_483/mul:z:0%lstm_93/while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_93/while/lstm_cell_483/Sigmoid_2Sigmoid*lstm_93/while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_93/while/lstm_cell_483/Relu_1Relu%lstm_93/while/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_93/while/lstm_cell_483/mul_2Mul)lstm_93/while/lstm_cell_483/Sigmoid_2:y:00lstm_93/while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_93/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_93_while_placeholder_1lstm_93_while_placeholder%lstm_93/while/lstm_cell_483/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_93/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_93/while/addAddV2lstm_93_while_placeholderlstm_93/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_93/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_93/while/add_1AddV2(lstm_93_while_lstm_93_while_loop_counterlstm_93/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_93/while/IdentityIdentitylstm_93/while/add_1:z:0^lstm_93/while/NoOp*
T0*
_output_shapes
: 
lstm_93/while/Identity_1Identity.lstm_93_while_lstm_93_while_maximum_iterations^lstm_93/while/NoOp*
T0*
_output_shapes
: q
lstm_93/while/Identity_2Identitylstm_93/while/add:z:0^lstm_93/while/NoOp*
T0*
_output_shapes
: 
lstm_93/while/Identity_3IdentityBlstm_93/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_93/while/NoOp*
T0*
_output_shapes
: 
lstm_93/while/Identity_4Identity%lstm_93/while/lstm_cell_483/mul_2:z:0^lstm_93/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_93/while/Identity_5Identity%lstm_93/while/lstm_cell_483/add_1:z:0^lstm_93/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_93/while/NoOpNoOp3^lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2^lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp4^lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_93_while_identitylstm_93/while/Identity:output:0"=
lstm_93_while_identity_1!lstm_93/while/Identity_1:output:0"=
lstm_93_while_identity_2!lstm_93/while/Identity_2:output:0"=
lstm_93_while_identity_3!lstm_93/while/Identity_3:output:0"=
lstm_93_while_identity_4!lstm_93/while/Identity_4:output:0"=
lstm_93_while_identity_5!lstm_93/while/Identity_5:output:0"P
%lstm_93_while_lstm_93_strided_slice_1'lstm_93_while_lstm_93_strided_slice_1_0"|
;lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource=lstm_93_while_lstm_cell_483_biasadd_readvariableop_resource_0"~
<lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource>lstm_93_while_lstm_cell_483_matmul_1_readvariableop_resource_0"z
:lstm_93_while_lstm_cell_483_matmul_readvariableop_resource<lstm_93_while_lstm_cell_483_matmul_readvariableop_resource_0"È
alstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensorclstm_93_while_tensorarrayv2read_tensorlistgetitem_lstm_93_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2lstm_93/while/lstm_cell_483/BiasAdd/ReadVariableOp2f
1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp1lstm_93/while/lstm_cell_483/MatMul/ReadVariableOp2j
3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp3lstm_93/while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
«
¸
)__inference_lstm_93_layer_call_fn_2934837
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2931808|
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

µ
)__inference_lstm_95_layer_call_fn_2936080
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2932699o
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


è
lstm_93_while_cond_2934030,
(lstm_93_while_lstm_93_while_loop_counter2
.lstm_93_while_lstm_93_while_maximum_iterations
lstm_93_while_placeholder
lstm_93_while_placeholder_1
lstm_93_while_placeholder_2
lstm_93_while_placeholder_3.
*lstm_93_while_less_lstm_93_strided_slice_1E
Alstm_93_while_lstm_93_while_cond_2934030___redundant_placeholder0E
Alstm_93_while_lstm_93_while_cond_2934030___redundant_placeholder1E
Alstm_93_while_lstm_93_while_cond_2934030___redundant_placeholder2E
Alstm_93_while_lstm_93_while_cond_2934030___redundant_placeholder3
lstm_93_while_identity

lstm_93/while/LessLesslstm_93_while_placeholder*lstm_93_while_less_lstm_93_strided_slice_1*
T0*
_output_shapes
: [
lstm_93/while/IdentityIdentitylstm_93/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_93_while_identitylstm_93/while/Identity:output:0*(
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
while_cond_2935973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2935973___redundant_placeholder05
1while_while_cond_2935973___redundant_placeholder15
1while_while_cond_2935973___redundant_placeholder25
1while_while_cond_2935973___redundant_placeholder3
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933182

inputs"
lstm_93_2932858:	"
lstm_93_2932860:	d
lstm_93_2932862:	"
lstm_94_2933008:	dÈ"
lstm_94_2933010:	2È
lstm_94_2933012:	È!
lstm_95_2933158:2(!
lstm_95_2933160:
(
lstm_95_2933162:("
dense_31_2933176:

dense_31_2933178:
identity¢ dense_31/StatefulPartitionedCall¢lstm_93/StatefulPartitionedCall¢lstm_94/StatefulPartitionedCall¢lstm_95/StatefulPartitionedCall
lstm_93/StatefulPartitionedCallStatefulPartitionedCallinputslstm_93_2932858lstm_93_2932860lstm_93_2932862*
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2932857¨
lstm_94/StatefulPartitionedCallStatefulPartitionedCall(lstm_93/StatefulPartitionedCall:output:0lstm_94_2933008lstm_94_2933010lstm_94_2933012*
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2933007¤
lstm_95/StatefulPartitionedCallStatefulPartitionedCall(lstm_94/StatefulPartitionedCall:output:0lstm_95_2933158lstm_95_2933160lstm_95_2933162*
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2933157
 dense_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_95/StatefulPartitionedCall:output:0dense_31_2933176dense_31_2933178*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_2933175x
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_31/StatefulPartitionedCall ^lstm_93/StatefulPartitionedCall ^lstm_94/StatefulPartitionedCall ^lstm_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_93/StatefulPartitionedCalllstm_93/StatefulPartitionedCall2B
lstm_94/StatefulPartitionedCalllstm_94/StatefulPartitionedCall2B
lstm_95/StatefulPartitionedCalllstm_95/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ

J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2936987

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
ñ

¢
/__inference_sequential_31_layer_call_fn_2933823
lstm_93_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_93_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933771o
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
_user_specified_namelstm_93_input
K
¡
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936245
inputs_0>
,lstm_cell_485_matmul_readvariableop_resource:2(@
.lstm_cell_485_matmul_1_readvariableop_resource:
(;
-lstm_cell_485_biasadd_readvariableop_resource:(
identity¢$lstm_cell_485/BiasAdd/ReadVariableOp¢#lstm_cell_485/MatMul/ReadVariableOp¢%lstm_cell_485/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_485/MatMul/ReadVariableOpReadVariableOp,lstm_cell_485_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_485/MatMulMatMulstrided_slice_2:output:0+lstm_cell_485/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_485/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_485_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_485/MatMul_1MatMulzeros:output:0-lstm_cell_485/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_485/addAddV2lstm_cell_485/MatMul:product:0 lstm_cell_485/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_485/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_485_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_485/BiasAddBiasAddlstm_cell_485/add:z:0,lstm_cell_485/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_485/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_485/splitSplit&lstm_cell_485/split/split_dim:output:0lstm_cell_485/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_485/SigmoidSigmoidlstm_cell_485/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_1Sigmoidlstm_cell_485/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_485/mulMullstm_cell_485/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_485/ReluRelulstm_cell_485/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_1Mullstm_cell_485/Sigmoid:y:0 lstm_cell_485/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_485/add_1AddV2lstm_cell_485/mul:z:0lstm_cell_485/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_485/Sigmoid_2Sigmoidlstm_cell_485/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_485/Relu_1Relulstm_cell_485/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_485/mul_2Mullstm_cell_485/Sigmoid_2:y:0"lstm_cell_485/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_485_matmul_readvariableop_resource.lstm_cell_485_matmul_1_readvariableop_resource-lstm_cell_485_biasadd_readvariableop_resource*
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
while_body_2936161*
condR
while_cond_2936160*K
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
NoOpNoOp%^lstm_cell_485/BiasAdd/ReadVariableOp$^lstm_cell_485/MatMul/ReadVariableOp&^lstm_cell_485/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_485/BiasAdd/ReadVariableOp$lstm_cell_485/BiasAdd/ReadVariableOp2J
#lstm_cell_485/MatMul/ReadVariableOp#lstm_cell_485/MatMul/ReadVariableOp2N
%lstm_cell_485/MatMul_1/ReadVariableOp%lstm_cell_485/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ñ8
Ú
while_body_2932773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_483_matmul_readvariableop_resource_0:	I
6while_lstm_cell_483_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_483_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_483_matmul_readvariableop_resource:	G
4while_lstm_cell_483_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_483_biasadd_readvariableop_resource:	¢*while/lstm_cell_483/BiasAdd/ReadVariableOp¢)while/lstm_cell_483/MatMul/ReadVariableOp¢+while/lstm_cell_483/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_483/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_483_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_483/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_483/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_483/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_483_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_483/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_483/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_483/addAddV2$while/lstm_cell_483/MatMul:product:0&while/lstm_cell_483/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_483/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_483_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_483/BiasAddBiasAddwhile/lstm_cell_483/add:z:02while/lstm_cell_483/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_483/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_483/splitSplit,while/lstm_cell_483/split/split_dim:output:0$while/lstm_cell_483/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_483/SigmoidSigmoid"while/lstm_cell_483/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_1Sigmoid"while/lstm_cell_483/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mulMul!while/lstm_cell_483/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_483/ReluRelu"while/lstm_cell_483/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_1Mulwhile/lstm_cell_483/Sigmoid:y:0&while/lstm_cell_483/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/add_1AddV2while/lstm_cell_483/mul:z:0while/lstm_cell_483/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_483/Sigmoid_2Sigmoid"while/lstm_cell_483/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_483/Relu_1Reluwhile/lstm_cell_483/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_483/mul_2Mul!while/lstm_cell_483/Sigmoid_2:y:0(while/lstm_cell_483/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_483/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_483/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_483/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_483/BiasAdd/ReadVariableOp*^while/lstm_cell_483/MatMul/ReadVariableOp,^while/lstm_cell_483/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_483_biasadd_readvariableop_resource5while_lstm_cell_483_biasadd_readvariableop_resource_0"n
4while_lstm_cell_483_matmul_1_readvariableop_resource6while_lstm_cell_483_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_483_matmul_readvariableop_resource4while_lstm_cell_483_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_483/BiasAdd/ReadVariableOp*while/lstm_cell_483/BiasAdd/ReadVariableOp2V
)while/lstm_cell_483/MatMul/ReadVariableOp)while/lstm_cell_483/MatMul/ReadVariableOp2Z
+while/lstm_cell_483/MatMul_1/ReadVariableOp+while/lstm_cell_483/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2931871

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
while_cond_2932279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932279___redundant_placeholder05
1while_while_cond_2932279___redundant_placeholder15
1while_while_cond_2932279___redundant_placeholder25
1while_while_cond_2932279___redundant_placeholder3
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
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_93_input:
serving_default_lstm_93_input:0ÿÿÿÿÿÿÿÿÿ<
dense_310
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
2dense_31/kernel
:2dense_31/bias
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
.:,	2lstm_93/lstm_cell_93/kernel
8:6	d2%lstm_93/lstm_cell_93/recurrent_kernel
(:&2lstm_93/lstm_cell_93/bias
.:,	dÈ2lstm_94/lstm_cell_94/kernel
8:6	2È2%lstm_94/lstm_cell_94/recurrent_kernel
(:&È2lstm_94/lstm_cell_94/bias
-:+2(2lstm_95/lstm_cell_95/kernel
7:5
(2%lstm_95/lstm_cell_95/recurrent_kernel
':%(2lstm_95/lstm_cell_95/bias
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
2Adam/dense_31/kernel/m
 :2Adam/dense_31/bias/m
3:1	2"Adam/lstm_93/lstm_cell_93/kernel/m
=:;	d2,Adam/lstm_93/lstm_cell_93/recurrent_kernel/m
-:+2 Adam/lstm_93/lstm_cell_93/bias/m
3:1	dÈ2"Adam/lstm_94/lstm_cell_94/kernel/m
=:;	2È2,Adam/lstm_94/lstm_cell_94/recurrent_kernel/m
-:+È2 Adam/lstm_94/lstm_cell_94/bias/m
2:02(2"Adam/lstm_95/lstm_cell_95/kernel/m
<::
(2,Adam/lstm_95/lstm_cell_95/recurrent_kernel/m
,:*(2 Adam/lstm_95/lstm_cell_95/bias/m
&:$
2Adam/dense_31/kernel/v
 :2Adam/dense_31/bias/v
3:1	2"Adam/lstm_93/lstm_cell_93/kernel/v
=:;	d2,Adam/lstm_93/lstm_cell_93/recurrent_kernel/v
-:+2 Adam/lstm_93/lstm_cell_93/bias/v
3:1	dÈ2"Adam/lstm_94/lstm_cell_94/kernel/v
=:;	2È2,Adam/lstm_94/lstm_cell_94/recurrent_kernel/v
-:+È2 Adam/lstm_94/lstm_cell_94/bias/v
2:02(2"Adam/lstm_95/lstm_cell_95/kernel/v
<::
(2,Adam/lstm_95/lstm_cell_95/recurrent_kernel/v
,:*(2 Adam/lstm_95/lstm_cell_95/bias/v
2
/__inference_sequential_31_layer_call_fn_2933207
/__inference_sequential_31_layer_call_fn_2933945
/__inference_sequential_31_layer_call_fn_2933972
/__inference_sequential_31_layer_call_fn_2933823À
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2934399
J__inference_sequential_31_layer_call_and_return_conditional_losses_2934826
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933853
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933883À
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
"__inference__wrapped_model_2931658lstm_93_input"
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
)__inference_lstm_93_layer_call_fn_2934837
)__inference_lstm_93_layer_call_fn_2934848
)__inference_lstm_93_layer_call_fn_2934859
)__inference_lstm_93_layer_call_fn_2934870Õ
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935013
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935156
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935299
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935442Õ
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
)__inference_lstm_94_layer_call_fn_2935453
)__inference_lstm_94_layer_call_fn_2935464
)__inference_lstm_94_layer_call_fn_2935475
)__inference_lstm_94_layer_call_fn_2935486Õ
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935629
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935772
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935915
D__inference_lstm_94_layer_call_and_return_conditional_losses_2936058Õ
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
)__inference_lstm_95_layer_call_fn_2936069
)__inference_lstm_95_layer_call_fn_2936080
)__inference_lstm_95_layer_call_fn_2936091
)__inference_lstm_95_layer_call_fn_2936102Õ
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936245
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936388
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936531
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936674Õ
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
*__inference_dense_31_layer_call_fn_2936683¢
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
E__inference_dense_31_layer_call_and_return_conditional_losses_2936693¢
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
%__inference_signature_wrapper_2933918lstm_93_input"
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
/__inference_lstm_cell_483_layer_call_fn_2936710
/__inference_lstm_cell_483_layer_call_fn_2936727¾
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2936759
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2936791¾
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
/__inference_lstm_cell_484_layer_call_fn_2936808
/__inference_lstm_cell_484_layer_call_fn_2936825¾
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2936857
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2936889¾
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
/__inference_lstm_cell_485_layer_call_fn_2936906
/__inference_lstm_cell_485_layer_call_fn_2936923¾
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2936955
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2936987¾
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
"__inference__wrapped_model_2931658~-./012345!":¢7
0¢-
+(
lstm_93_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_31"
dense_31ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_31_layer_call_and_return_conditional_losses_2936693\!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_31_layer_call_fn_2936683O!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÓ
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935013-./O¢L
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935156-./O¢L
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935299q-./?¢<
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
D__inference_lstm_93_layer_call_and_return_conditional_losses_2935442q-./?¢<
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
)__inference_lstm_93_layer_call_fn_2934837}-./O¢L
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
)__inference_lstm_93_layer_call_fn_2934848}-./O¢L
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
)__inference_lstm_93_layer_call_fn_2934859d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_93_layer_call_fn_2934870d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935629012O¢L
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935772012O¢L
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2935915q012?¢<
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
D__inference_lstm_94_layer_call_and_return_conditional_losses_2936058q012?¢<
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
)__inference_lstm_94_layer_call_fn_2935453}012O¢L
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
)__inference_lstm_94_layer_call_fn_2935464}012O¢L
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
)__inference_lstm_94_layer_call_fn_2935475d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_94_layer_call_fn_2935486d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Å
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936245}345O¢L
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936388}345O¢L
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936531m345?¢<
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
D__inference_lstm_95_layer_call_and_return_conditional_losses_2936674m345?¢<
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
)__inference_lstm_95_layer_call_fn_2936069p345O¢L
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
)__inference_lstm_95_layer_call_fn_2936080p345O¢L
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
)__inference_lstm_95_layer_call_fn_2936091`345?¢<
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
)__inference_lstm_95_layer_call_fn_2936102`345?¢<
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2936759ý-./¢}
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
J__inference_lstm_cell_483_layer_call_and_return_conditional_losses_2936791ý-./¢}
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
/__inference_lstm_cell_483_layer_call_fn_2936710í-./¢}
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
/__inference_lstm_cell_483_layer_call_fn_2936727í-./¢}
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2936857ý012¢}
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
J__inference_lstm_cell_484_layer_call_and_return_conditional_losses_2936889ý012¢}
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
/__inference_lstm_cell_484_layer_call_fn_2936808í012¢}
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
/__inference_lstm_cell_484_layer_call_fn_2936825í012¢}
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2936955ý345¢}
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
J__inference_lstm_cell_485_layer_call_and_return_conditional_losses_2936987ý345¢}
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
/__inference_lstm_cell_485_layer_call_fn_2936906í345¢}
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
/__inference_lstm_cell_485_layer_call_fn_2936923í345¢}
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933853x-./012345!"B¢?
8¢5
+(
lstm_93_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
J__inference_sequential_31_layer_call_and_return_conditional_losses_2933883x-./012345!"B¢?
8¢5
+(
lstm_93_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_31_layer_call_and_return_conditional_losses_2934399q-./012345!";¢8
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
J__inference_sequential_31_layer_call_and_return_conditional_losses_2934826q-./012345!";¢8
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
/__inference_sequential_31_layer_call_fn_2933207k-./012345!"B¢?
8¢5
+(
lstm_93_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_31_layer_call_fn_2933823k-./012345!"B¢?
8¢5
+(
lstm_93_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_31_layer_call_fn_2933945d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_31_layer_call_fn_2933972d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
%__inference_signature_wrapper_2933918-./012345!"K¢H
¢ 
Aª>
<
lstm_93_input+(
lstm_93_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_31"
dense_31ÿÿÿÿÿÿÿÿÿ