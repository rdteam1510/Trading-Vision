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
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:
*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
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
lstm_75/lstm_cell_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_75/lstm_cell_75/kernel

/lstm_75/lstm_cell_75/kernel/Read/ReadVariableOpReadVariableOplstm_75/lstm_cell_75/kernel*
_output_shapes
:	*
dtype0
§
%lstm_75/lstm_cell_75/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_75/lstm_cell_75/recurrent_kernel
 
9lstm_75/lstm_cell_75/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_75/lstm_cell_75/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_75/lstm_cell_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_75/lstm_cell_75/bias

-lstm_75/lstm_cell_75/bias/Read/ReadVariableOpReadVariableOplstm_75/lstm_cell_75/bias*
_output_shapes	
:*
dtype0

lstm_76/lstm_cell_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_76/lstm_cell_76/kernel

/lstm_76/lstm_cell_76/kernel/Read/ReadVariableOpReadVariableOplstm_76/lstm_cell_76/kernel*
_output_shapes
:	dÈ*
dtype0
§
%lstm_76/lstm_cell_76/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_76/lstm_cell_76/recurrent_kernel
 
9lstm_76/lstm_cell_76/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_76/lstm_cell_76/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_76/lstm_cell_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_76/lstm_cell_76/bias

-lstm_76/lstm_cell_76/bias/Read/ReadVariableOpReadVariableOplstm_76/lstm_cell_76/bias*
_output_shapes	
:È*
dtype0

lstm_77/lstm_cell_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_77/lstm_cell_77/kernel

/lstm_77/lstm_cell_77/kernel/Read/ReadVariableOpReadVariableOplstm_77/lstm_cell_77/kernel*
_output_shapes

:2(*
dtype0
¦
%lstm_77/lstm_cell_77/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_77/lstm_cell_77/recurrent_kernel

9lstm_77/lstm_cell_77/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_77/lstm_cell_77/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_77/lstm_cell_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_77/lstm_cell_77/bias

-lstm_77/lstm_cell_77/bias/Read/ReadVariableOpReadVariableOplstm_77/lstm_cell_77/bias*
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
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_25/kernel/m

*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_75/lstm_cell_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_75/lstm_cell_75/kernel/m

6Adam/lstm_75/lstm_cell_75/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_75/lstm_cell_75/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_75/lstm_cell_75/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_75/lstm_cell_75/recurrent_kernel/m
®
@Adam/lstm_75/lstm_cell_75/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_75/lstm_cell_75/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_75/lstm_cell_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_75/lstm_cell_75/bias/m

4Adam/lstm_75/lstm_cell_75/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_75/lstm_cell_75/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_76/lstm_cell_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_76/lstm_cell_76/kernel/m

6Adam/lstm_76/lstm_cell_76/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_76/lstm_cell_76/kernel/m*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_76/lstm_cell_76/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_76/lstm_cell_76/recurrent_kernel/m
®
@Adam/lstm_76/lstm_cell_76/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_76/lstm_cell_76/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

 Adam/lstm_76/lstm_cell_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_76/lstm_cell_76/bias/m

4Adam/lstm_76/lstm_cell_76/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_76/lstm_cell_76/bias/m*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_77/lstm_cell_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_77/lstm_cell_77/kernel/m

6Adam/lstm_77/lstm_cell_77/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_77/lstm_cell_77/kernel/m*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_77/lstm_cell_77/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_77/lstm_cell_77/recurrent_kernel/m
­
@Adam/lstm_77/lstm_cell_77/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_77/lstm_cell_77/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Adam/lstm_77/lstm_cell_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_77/lstm_cell_77/bias/m

4Adam/lstm_77/lstm_cell_77/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_77/lstm_cell_77/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_25/kernel/v

*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_75/lstm_cell_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_75/lstm_cell_75/kernel/v

6Adam/lstm_75/lstm_cell_75/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_75/lstm_cell_75/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_75/lstm_cell_75/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_75/lstm_cell_75/recurrent_kernel/v
®
@Adam/lstm_75/lstm_cell_75/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_75/lstm_cell_75/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_75/lstm_cell_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_75/lstm_cell_75/bias/v

4Adam/lstm_75/lstm_cell_75/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_75/lstm_cell_75/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_76/lstm_cell_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_76/lstm_cell_76/kernel/v

6Adam/lstm_76/lstm_cell_76/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_76/lstm_cell_76/kernel/v*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_76/lstm_cell_76/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_76/lstm_cell_76/recurrent_kernel/v
®
@Adam/lstm_76/lstm_cell_76/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_76/lstm_cell_76/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

 Adam/lstm_76/lstm_cell_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_76/lstm_cell_76/bias/v

4Adam/lstm_76/lstm_cell_76/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_76/lstm_cell_76/bias/v*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_77/lstm_cell_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_77/lstm_cell_77/kernel/v

6Adam/lstm_77/lstm_cell_77/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_77/lstm_cell_77/kernel/v*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_77/lstm_cell_77/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_77/lstm_cell_77/recurrent_kernel/v
­
@Adam/lstm_77/lstm_cell_77/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_77/lstm_cell_77/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Adam/lstm_77/lstm_cell_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_77/lstm_cell_77/bias/v

4Adam/lstm_77/lstm_cell_77/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_77/lstm_cell_77/bias/v*
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
VARIABLE_VALUEdense_25/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_75/lstm_cell_75/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_75/lstm_cell_75/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_75/lstm_cell_75/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_76/lstm_cell_76/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_76/lstm_cell_76/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_76/lstm_cell_76/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_77/lstm_cell_77/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_77/lstm_cell_77/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_77/lstm_cell_77/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_75/lstm_cell_75/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_75/lstm_cell_75/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_75/lstm_cell_75/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_76/lstm_cell_76/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_76/lstm_cell_76/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_76/lstm_cell_76/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_77/lstm_cell_77/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_77/lstm_cell_77/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_77/lstm_cell_77/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_75/lstm_cell_75/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_75/lstm_cell_75/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_75/lstm_cell_75/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_76/lstm_cell_76/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_76/lstm_cell_76/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_76/lstm_cell_76/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_77/lstm_cell_77/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_77/lstm_cell_77/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_77/lstm_cell_77/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_75_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_75_inputlstm_75/lstm_cell_75/kernel%lstm_75/lstm_cell_75/recurrent_kernellstm_75/lstm_cell_75/biaslstm_76/lstm_cell_76/kernel%lstm_76/lstm_cell_76/recurrent_kernellstm_76/lstm_cell_76/biaslstm_77/lstm_cell_77/kernel%lstm_77/lstm_cell_77/recurrent_kernellstm_77/lstm_cell_77/biasdense_25/kerneldense_25/bias*
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
%__inference_signature_wrapper_2029196
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_75/lstm_cell_75/kernel/Read/ReadVariableOp9lstm_75/lstm_cell_75/recurrent_kernel/Read/ReadVariableOp-lstm_75/lstm_cell_75/bias/Read/ReadVariableOp/lstm_76/lstm_cell_76/kernel/Read/ReadVariableOp9lstm_76/lstm_cell_76/recurrent_kernel/Read/ReadVariableOp-lstm_76/lstm_cell_76/bias/Read/ReadVariableOp/lstm_77/lstm_cell_77/kernel/Read/ReadVariableOp9lstm_77/lstm_cell_77/recurrent_kernel/Read/ReadVariableOp-lstm_77/lstm_cell_77/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp6Adam/lstm_75/lstm_cell_75/kernel/m/Read/ReadVariableOp@Adam/lstm_75/lstm_cell_75/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_75/lstm_cell_75/bias/m/Read/ReadVariableOp6Adam/lstm_76/lstm_cell_76/kernel/m/Read/ReadVariableOp@Adam/lstm_76/lstm_cell_76/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_76/lstm_cell_76/bias/m/Read/ReadVariableOp6Adam/lstm_77/lstm_cell_77/kernel/m/Read/ReadVariableOp@Adam/lstm_77/lstm_cell_77/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_77/lstm_cell_77/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp6Adam/lstm_75/lstm_cell_75/kernel/v/Read/ReadVariableOp@Adam/lstm_75/lstm_cell_75/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_75/lstm_cell_75/bias/v/Read/ReadVariableOp6Adam/lstm_76/lstm_cell_76/kernel/v/Read/ReadVariableOp@Adam/lstm_76/lstm_cell_76/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_76/lstm_cell_76/bias/v/Read/ReadVariableOp6Adam/lstm_77/lstm_cell_77/kernel/v/Read/ReadVariableOp@Adam/lstm_77/lstm_cell_77/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_77/lstm_cell_77/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2032408
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_25/kerneldense_25/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_75/lstm_cell_75/kernel%lstm_75/lstm_cell_75/recurrent_kernellstm_75/lstm_cell_75/biaslstm_76/lstm_cell_76/kernel%lstm_76/lstm_cell_76/recurrent_kernellstm_76/lstm_cell_76/biaslstm_77/lstm_cell_77/kernel%lstm_77/lstm_cell_77/recurrent_kernellstm_77/lstm_cell_77/biastotalcountAdam/dense_25/kernel/mAdam/dense_25/bias/m"Adam/lstm_75/lstm_cell_75/kernel/m,Adam/lstm_75/lstm_cell_75/recurrent_kernel/m Adam/lstm_75/lstm_cell_75/bias/m"Adam/lstm_76/lstm_cell_76/kernel/m,Adam/lstm_76/lstm_cell_76/recurrent_kernel/m Adam/lstm_76/lstm_cell_76/bias/m"Adam/lstm_77/lstm_cell_77/kernel/m,Adam/lstm_77/lstm_cell_77/recurrent_kernel/m Adam/lstm_77/lstm_cell_77/bias/mAdam/dense_25/kernel/vAdam/dense_25/bias/v"Adam/lstm_75/lstm_cell_75/kernel/v,Adam/lstm_75/lstm_cell_75/recurrent_kernel/v Adam/lstm_75/lstm_cell_75/bias/v"Adam/lstm_76/lstm_cell_76/kernel/v,Adam/lstm_76/lstm_cell_76/recurrent_kernel/v Adam/lstm_76/lstm_cell_76/bias/v"Adam/lstm_77/lstm_cell_77/kernel/v,Adam/lstm_77/lstm_cell_77/recurrent_kernel/v Adam/lstm_77/lstm_cell_77/bias/v*4
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
#__inference__traced_restore_2032538Ú+
ï
ø
/__inference_lstm_cell_333_layer_call_fn_2031988

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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027003o
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
º
È
while_cond_2030206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2030206___redundant_placeholder05
1while_while_cond_2030206___redundant_placeholder15
1while_while_cond_2030206___redundant_placeholder25
1while_while_cond_2030206___redundant_placeholder3
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028285

inputs?
,lstm_cell_334_matmul_readvariableop_resource:	dÈA
.lstm_cell_334_matmul_1_readvariableop_resource:	2È<
-lstm_cell_334_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_334/BiasAdd/ReadVariableOp¢#lstm_cell_334/MatMul/ReadVariableOp¢%lstm_cell_334/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_334/MatMul/ReadVariableOpReadVariableOp,lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_334/MatMulMatMulstrided_slice_2:output:0+lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_334/MatMul_1MatMulzeros:output:0-lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_334/addAddV2lstm_cell_334/MatMul:product:0 lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_334/BiasAddBiasAddlstm_cell_334/add:z:0,lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_334/splitSplit&lstm_cell_334/split/split_dim:output:0lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_334/SigmoidSigmoidlstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_1Sigmoidlstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_334/mulMullstm_cell_334/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_334/ReluRelulstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_1Mullstm_cell_334/Sigmoid:y:0 lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_334/add_1AddV2lstm_cell_334/mul:z:0lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_2Sigmoidlstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_334/Relu_1Relulstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_2Mullstm_cell_334/Sigmoid_2:y:0"lstm_cell_334/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_334_matmul_readvariableop_resource.lstm_cell_334_matmul_1_readvariableop_resource-lstm_cell_334_biasadd_readvariableop_resource*
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
while_body_2028201*
condR
while_cond_2028200*K
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
NoOpNoOp%^lstm_cell_334/BiasAdd/ReadVariableOp$^lstm_cell_334/MatMul/ReadVariableOp&^lstm_cell_334/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_334/BiasAdd/ReadVariableOp$lstm_cell_334/BiasAdd/ReadVariableOp2J
#lstm_cell_334/MatMul/ReadVariableOp#lstm_cell_334/MatMul/ReadVariableOp2N
%lstm_cell_334/MatMul_1/ReadVariableOp%lstm_cell_334/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2030207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_333_matmul_readvariableop_resource_0:	I
6while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_333_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_333_matmul_readvariableop_resource:	G
4while_lstm_cell_333_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_333_biasadd_readvariableop_resource:	¢*while/lstm_cell_333/BiasAdd/ReadVariableOp¢)while/lstm_cell_333/MatMul/ReadVariableOp¢+while/lstm_cell_333/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_333/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_333/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_333/addAddV2$while/lstm_cell_333/MatMul:product:0&while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_333/BiasAddBiasAddwhile/lstm_cell_333/add:z:02while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_333/splitSplit,while/lstm_cell_333/split/split_dim:output:0$while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_333/SigmoidSigmoid"while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_1Sigmoid"while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mulMul!while/lstm_cell_333/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_333/ReluRelu"while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_1Mulwhile/lstm_cell_333/Sigmoid:y:0&while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/add_1AddV2while/lstm_cell_333/mul:z:0while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_2Sigmoid"while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_333/Relu_1Reluwhile/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_2Mul!while/lstm_cell_333/Sigmoid_2:y:0(while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_333/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_333/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_333/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_333/BiasAdd/ReadVariableOp*^while/lstm_cell_333/MatMul/ReadVariableOp,^while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_333_biasadd_readvariableop_resource5while_lstm_cell_333_biasadd_readvariableop_resource_0"n
4while_lstm_cell_333_matmul_1_readvariableop_resource6while_lstm_cell_333_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_333_matmul_readvariableop_resource4while_lstm_cell_333_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_333/BiasAdd/ReadVariableOp*while/lstm_cell_333/BiasAdd/ReadVariableOp2V
)while/lstm_cell_333/MatMul/ReadVariableOp)while/lstm_cell_333/MatMul/ReadVariableOp2Z
+while/lstm_cell_333/MatMul_1/ReadVariableOp+while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2028460

inputs"
lstm_75_2028136:	"
lstm_75_2028138:	d
lstm_75_2028140:	"
lstm_76_2028286:	dÈ"
lstm_76_2028288:	2È
lstm_76_2028290:	È!
lstm_77_2028436:2(!
lstm_77_2028438:
(
lstm_77_2028440:("
dense_25_2028454:

dense_25_2028456:
identity¢ dense_25/StatefulPartitionedCall¢lstm_75/StatefulPartitionedCall¢lstm_76/StatefulPartitionedCall¢lstm_77/StatefulPartitionedCall
lstm_75/StatefulPartitionedCallStatefulPartitionedCallinputslstm_75_2028136lstm_75_2028138lstm_75_2028140*
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028135¨
lstm_76/StatefulPartitionedCallStatefulPartitionedCall(lstm_75/StatefulPartitionedCall:output:0lstm_76_2028286lstm_76_2028288lstm_76_2028290*
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028285¤
lstm_77/StatefulPartitionedCallStatefulPartitionedCall(lstm_76/StatefulPartitionedCall:output:0lstm_77_2028436lstm_77_2028438lstm_77_2028440*
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2028435
 dense_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_77/StatefulPartitionedCall:output:0dense_25_2028454dense_25_2028456*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_2028453x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_25/StatefulPartitionedCall ^lstm_75/StatefulPartitionedCall ^lstm_76/StatefulPartitionedCall ^lstm_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_75/StatefulPartitionedCalllstm_75/StatefulPartitionedCall2B
lstm_76/StatefulPartitionedCalllstm_76/StatefulPartitionedCall2B
lstm_77/StatefulPartitionedCalllstm_77/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÜJ

D__inference_lstm_77_layer_call_and_return_conditional_losses_2028435

inputs>
,lstm_cell_335_matmul_readvariableop_resource:2(@
.lstm_cell_335_matmul_1_readvariableop_resource:
(;
-lstm_cell_335_biasadd_readvariableop_resource:(
identity¢$lstm_cell_335/BiasAdd/ReadVariableOp¢#lstm_cell_335/MatMul/ReadVariableOp¢%lstm_cell_335/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_335/MatMul/ReadVariableOpReadVariableOp,lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_335/MatMulMatMulstrided_slice_2:output:0+lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_335/MatMul_1MatMulzeros:output:0-lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_335/addAddV2lstm_cell_335/MatMul:product:0 lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_335/BiasAddBiasAddlstm_cell_335/add:z:0,lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_335/splitSplit&lstm_cell_335/split/split_dim:output:0lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_335/SigmoidSigmoidlstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_1Sigmoidlstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_335/mulMullstm_cell_335/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_335/ReluRelulstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_1Mullstm_cell_335/Sigmoid:y:0 lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_335/add_1AddV2lstm_cell_335/mul:z:0lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_2Sigmoidlstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_335/Relu_1Relulstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_2Mullstm_cell_335/Sigmoid_2:y:0"lstm_cell_335/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_335_matmul_readvariableop_resource.lstm_cell_335_matmul_1_readvariableop_resource-lstm_cell_335_biasadd_readvariableop_resource*
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
while_body_2028351*
condR
while_cond_2028350*K
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
NoOpNoOp%^lstm_cell_335/BiasAdd/ReadVariableOp$^lstm_cell_335/MatMul/ReadVariableOp&^lstm_cell_335/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_335/BiasAdd/ReadVariableOp$lstm_cell_335/BiasAdd/ReadVariableOp2J
#lstm_cell_335/MatMul/ReadVariableOp#lstm_cell_335/MatMul/ReadVariableOp2N
%lstm_cell_335/MatMul_1/ReadVariableOp%lstm_cell_335/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ü


/__inference_sequential_25_layer_call_fn_2029223

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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2028460o
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
Ñ8
Ú
while_body_2028051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_333_matmul_readvariableop_resource_0:	I
6while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_333_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_333_matmul_readvariableop_resource:	G
4while_lstm_cell_333_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_333_biasadd_readvariableop_resource:	¢*while/lstm_cell_333/BiasAdd/ReadVariableOp¢)while/lstm_cell_333/MatMul/ReadVariableOp¢+while/lstm_cell_333/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_333/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_333/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_333/addAddV2$while/lstm_cell_333/MatMul:product:0&while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_333/BiasAddBiasAddwhile/lstm_cell_333/add:z:02while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_333/splitSplit,while/lstm_cell_333/split/split_dim:output:0$while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_333/SigmoidSigmoid"while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_1Sigmoid"while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mulMul!while/lstm_cell_333/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_333/ReluRelu"while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_1Mulwhile/lstm_cell_333/Sigmoid:y:0&while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/add_1AddV2while/lstm_cell_333/mul:z:0while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_2Sigmoid"while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_333/Relu_1Reluwhile/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_2Mul!while/lstm_cell_333/Sigmoid_2:y:0(while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_333/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_333/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_333/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_333/BiasAdd/ReadVariableOp*^while/lstm_cell_333/MatMul/ReadVariableOp,^while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_333_biasadd_readvariableop_resource5while_lstm_cell_333_biasadd_readvariableop_resource_0"n
4while_lstm_cell_333_matmul_1_readvariableop_resource6while_lstm_cell_333_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_333_matmul_readvariableop_resource4while_lstm_cell_333_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_333/BiasAdd/ReadVariableOp*while/lstm_cell_333/BiasAdd/ReadVariableOp2V
)while/lstm_cell_333/MatMul/ReadVariableOp)while/lstm_cell_333/MatMul/ReadVariableOp2Z
+while/lstm_cell_333/MatMul_1/ReadVariableOp+while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
£

(sequential_25_lstm_76_while_cond_2026706H
Dsequential_25_lstm_76_while_sequential_25_lstm_76_while_loop_counterN
Jsequential_25_lstm_76_while_sequential_25_lstm_76_while_maximum_iterations+
'sequential_25_lstm_76_while_placeholder-
)sequential_25_lstm_76_while_placeholder_1-
)sequential_25_lstm_76_while_placeholder_2-
)sequential_25_lstm_76_while_placeholder_3J
Fsequential_25_lstm_76_while_less_sequential_25_lstm_76_strided_slice_1a
]sequential_25_lstm_76_while_sequential_25_lstm_76_while_cond_2026706___redundant_placeholder0a
]sequential_25_lstm_76_while_sequential_25_lstm_76_while_cond_2026706___redundant_placeholder1a
]sequential_25_lstm_76_while_sequential_25_lstm_76_while_cond_2026706___redundant_placeholder2a
]sequential_25_lstm_76_while_sequential_25_lstm_76_while_cond_2026706___redundant_placeholder3(
$sequential_25_lstm_76_while_identity
º
 sequential_25/lstm_76/while/LessLess'sequential_25_lstm_76_while_placeholderFsequential_25_lstm_76_while_less_sequential_25_lstm_76_strided_slice_1*
T0*
_output_shapes
: w
$sequential_25/lstm_76/while/IdentityIdentity$sequential_25/lstm_76/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_25_lstm_76_while_identity-sequential_25/lstm_76/while/Identity:output:0*(
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
while_body_2028897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_333_matmul_readvariableop_resource_0:	I
6while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_333_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_333_matmul_readvariableop_resource:	G
4while_lstm_cell_333_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_333_biasadd_readvariableop_resource:	¢*while/lstm_cell_333/BiasAdd/ReadVariableOp¢)while/lstm_cell_333/MatMul/ReadVariableOp¢+while/lstm_cell_333/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_333/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_333/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_333/addAddV2$while/lstm_cell_333/MatMul:product:0&while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_333/BiasAddBiasAddwhile/lstm_cell_333/add:z:02while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_333/splitSplit,while/lstm_cell_333/split/split_dim:output:0$while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_333/SigmoidSigmoid"while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_1Sigmoid"while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mulMul!while/lstm_cell_333/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_333/ReluRelu"while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_1Mulwhile/lstm_cell_333/Sigmoid:y:0&while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/add_1AddV2while/lstm_cell_333/mul:z:0while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_2Sigmoid"while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_333/Relu_1Reluwhile/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_2Mul!while/lstm_cell_333/Sigmoid_2:y:0(while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_333/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_333/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_333/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_333/BiasAdd/ReadVariableOp*^while/lstm_cell_333/MatMul/ReadVariableOp,^while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_333_biasadd_readvariableop_resource5while_lstm_cell_333_biasadd_readvariableop_resource_0"n
4while_lstm_cell_333_matmul_1_readvariableop_resource6while_lstm_cell_333_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_333_matmul_readvariableop_resource4while_lstm_cell_333_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_333/BiasAdd/ReadVariableOp*while/lstm_cell_333/BiasAdd/ReadVariableOp2V
)while/lstm_cell_333/MatMul/ReadVariableOp)while/lstm_cell_333/MatMul/ReadVariableOp2Z
+while/lstm_cell_333/MatMul_1/ReadVariableOp+while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2030636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_333_matmul_readvariableop_resource_0:	I
6while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_333_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_333_matmul_readvariableop_resource:	G
4while_lstm_cell_333_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_333_biasadd_readvariableop_resource:	¢*while/lstm_cell_333/BiasAdd/ReadVariableOp¢)while/lstm_cell_333/MatMul/ReadVariableOp¢+while/lstm_cell_333/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_333/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_333/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_333/addAddV2$while/lstm_cell_333/MatMul:product:0&while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_333/BiasAddBiasAddwhile/lstm_cell_333/add:z:02while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_333/splitSplit,while/lstm_cell_333/split/split_dim:output:0$while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_333/SigmoidSigmoid"while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_1Sigmoid"while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mulMul!while/lstm_cell_333/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_333/ReluRelu"while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_1Mulwhile/lstm_cell_333/Sigmoid:y:0&while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/add_1AddV2while/lstm_cell_333/mul:z:0while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_2Sigmoid"while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_333/Relu_1Reluwhile/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_2Mul!while/lstm_cell_333/Sigmoid_2:y:0(while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_333/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_333/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_333/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_333/BiasAdd/ReadVariableOp*^while/lstm_cell_333/MatMul/ReadVariableOp,^while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_333_biasadd_readvariableop_resource5while_lstm_cell_333_biasadd_readvariableop_resource_0"n
4while_lstm_cell_333_matmul_1_readvariableop_resource6while_lstm_cell_333_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_333_matmul_readvariableop_resource4while_lstm_cell_333_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_333/BiasAdd/ReadVariableOp*while/lstm_cell_333/BiasAdd/ReadVariableOp2V
)while/lstm_cell_333/MatMul/ReadVariableOp)while/lstm_cell_333/MatMul/ReadVariableOp2Z
+while/lstm_cell_333/MatMul_1/ReadVariableOp+while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027003

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
#
ñ
while_body_2027017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_333_2027041_0:	0
while_lstm_cell_333_2027043_0:	d,
while_lstm_cell_333_2027045_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_333_2027041:	.
while_lstm_cell_333_2027043:	d*
while_lstm_cell_333_2027045:	¢+while/lstm_cell_333/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_333/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_333_2027041_0while_lstm_cell_333_2027043_0while_lstm_cell_333_2027045_0*
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027003Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_333/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_333/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_333/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_333/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_333_2027041while_lstm_cell_333_2027041_0"<
while_lstm_cell_333_2027043while_lstm_cell_333_2027043_0"<
while_lstm_cell_333_2027045while_lstm_cell_333_2027045_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_333/StatefulPartitionedCall+while/lstm_cell_333/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2027367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_334_2027391_0:	dÈ0
while_lstm_cell_334_2027393_0:	2È,
while_lstm_cell_334_2027395_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_334_2027391:	dÈ.
while_lstm_cell_334_2027393:	2È*
while_lstm_cell_334_2027395:	È¢+while/lstm_cell_334/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_334/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_334_2027391_0while_lstm_cell_334_2027393_0while_lstm_cell_334_2027395_0*
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027353Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_334/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_334/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_334/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_334/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_334_2027391while_lstm_cell_334_2027391_0"<
while_lstm_cell_334_2027393while_lstm_cell_334_2027393_0"<
while_lstm_cell_334_2027395while_lstm_cell_334_2027395_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_334/StatefulPartitionedCall+while/lstm_cell_334/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028135

inputs?
,lstm_cell_333_matmul_readvariableop_resource:	A
.lstm_cell_333_matmul_1_readvariableop_resource:	d<
-lstm_cell_333_biasadd_readvariableop_resource:	
identity¢$lstm_cell_333/BiasAdd/ReadVariableOp¢#lstm_cell_333/MatMul/ReadVariableOp¢%lstm_cell_333/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_333/MatMul/ReadVariableOpReadVariableOp,lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_333/MatMulMatMulstrided_slice_2:output:0+lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_333/MatMul_1MatMulzeros:output:0-lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_333/addAddV2lstm_cell_333/MatMul:product:0 lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_333/BiasAddBiasAddlstm_cell_333/add:z:0,lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_333/splitSplit&lstm_cell_333/split/split_dim:output:0lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_333/SigmoidSigmoidlstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_1Sigmoidlstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_333/mulMullstm_cell_333/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_333/ReluRelulstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_1Mullstm_cell_333/Sigmoid:y:0 lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_333/add_1AddV2lstm_cell_333/mul:z:0lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_2Sigmoidlstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_333/Relu_1Relulstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_2Mullstm_cell_333/Sigmoid_2:y:0"lstm_cell_333/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_333_matmul_readvariableop_resource.lstm_cell_333_matmul_1_readvariableop_resource-lstm_cell_333_biasadd_readvariableop_resource*
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
while_body_2028051*
condR
while_cond_2028050*K
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
NoOpNoOp%^lstm_cell_333/BiasAdd/ReadVariableOp$^lstm_cell_333/MatMul/ReadVariableOp&^lstm_cell_333/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_333/BiasAdd/ReadVariableOp$lstm_cell_333/BiasAdd/ReadVariableOp2J
#lstm_cell_333/MatMul/ReadVariableOp#lstm_cell_333/MatMul/ReadVariableOp2N
%lstm_cell_333/MatMul_1/ReadVariableOp%lstm_cell_333/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
K
¡
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031523
inputs_0>
,lstm_cell_335_matmul_readvariableop_resource:2(@
.lstm_cell_335_matmul_1_readvariableop_resource:
(;
-lstm_cell_335_biasadd_readvariableop_resource:(
identity¢$lstm_cell_335/BiasAdd/ReadVariableOp¢#lstm_cell_335/MatMul/ReadVariableOp¢%lstm_cell_335/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_335/MatMul/ReadVariableOpReadVariableOp,lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_335/MatMulMatMulstrided_slice_2:output:0+lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_335/MatMul_1MatMulzeros:output:0-lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_335/addAddV2lstm_cell_335/MatMul:product:0 lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_335/BiasAddBiasAddlstm_cell_335/add:z:0,lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_335/splitSplit&lstm_cell_335/split/split_dim:output:0lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_335/SigmoidSigmoidlstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_1Sigmoidlstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_335/mulMullstm_cell_335/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_335/ReluRelulstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_1Mullstm_cell_335/Sigmoid:y:0 lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_335/add_1AddV2lstm_cell_335/mul:z:0lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_2Sigmoidlstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_335/Relu_1Relulstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_2Mullstm_cell_335/Sigmoid_2:y:0"lstm_cell_335/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_335_matmul_readvariableop_resource.lstm_cell_335_matmul_1_readvariableop_resource-lstm_cell_335_biasadd_readvariableop_resource*
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
while_body_2031439*
condR
while_cond_2031438*K
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
NoOpNoOp%^lstm_cell_335/BiasAdd/ReadVariableOp$^lstm_cell_335/MatMul/ReadVariableOp&^lstm_cell_335/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_335/BiasAdd/ReadVariableOp$lstm_cell_335/BiasAdd/ReadVariableOp2J
#lstm_cell_335/MatMul/ReadVariableOp#lstm_cell_335/MatMul/ReadVariableOp2N
%lstm_cell_335/MatMul_1/ReadVariableOp%lstm_cell_335/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
#
ë
while_body_2027908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_335_2027932_0:2(/
while_lstm_cell_335_2027934_0:
(+
while_lstm_cell_335_2027936_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_335_2027932:2(-
while_lstm_cell_335_2027934:
()
while_lstm_cell_335_2027936:(¢+while/lstm_cell_335/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_335/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_335_2027932_0while_lstm_cell_335_2027934_0while_lstm_cell_335_2027936_0*
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027849Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_335/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_335/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_335/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_335/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_335_2027932while_lstm_cell_335_2027932_0"<
while_lstm_cell_335_2027934while_lstm_cell_335_2027934_0"<
while_lstm_cell_335_2027936while_lstm_cell_335_2027936_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_335/StatefulPartitionedCall+while/lstm_cell_335/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2031867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2031867___redundant_placeholder05
1while_while_cond_2031867___redundant_placeholder15
1while_while_cond_2031867___redundant_placeholder25
1while_while_cond_2031867___redundant_placeholder3
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
)__inference_lstm_76_layer_call_fn_2030753

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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028285s
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
while_cond_2031581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2031581___redundant_placeholder05
1while_while_cond_2031581___redundant_placeholder15
1while_while_cond_2031581___redundant_placeholder25
1while_while_cond_2031581___redundant_placeholder3
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
ÊR

(sequential_25_lstm_75_while_body_2026568H
Dsequential_25_lstm_75_while_sequential_25_lstm_75_while_loop_counterN
Jsequential_25_lstm_75_while_sequential_25_lstm_75_while_maximum_iterations+
'sequential_25_lstm_75_while_placeholder-
)sequential_25_lstm_75_while_placeholder_1-
)sequential_25_lstm_75_while_placeholder_2-
)sequential_25_lstm_75_while_placeholder_3G
Csequential_25_lstm_75_while_sequential_25_lstm_75_strided_slice_1_0
sequential_25_lstm_75_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_75_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_25_lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0:	_
Lsequential_25_lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dZ
Ksequential_25_lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0:	(
$sequential_25_lstm_75_while_identity*
&sequential_25_lstm_75_while_identity_1*
&sequential_25_lstm_75_while_identity_2*
&sequential_25_lstm_75_while_identity_3*
&sequential_25_lstm_75_while_identity_4*
&sequential_25_lstm_75_while_identity_5E
Asequential_25_lstm_75_while_sequential_25_lstm_75_strided_slice_1
}sequential_25_lstm_75_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_75_tensorarrayunstack_tensorlistfromtensor[
Hsequential_25_lstm_75_while_lstm_cell_333_matmul_readvariableop_resource:	]
Jsequential_25_lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource:	dX
Isequential_25_lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource:	¢@sequential_25/lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp¢?sequential_25/lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp¢Asequential_25/lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp
Msequential_25/lstm_75/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_25/lstm_75/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_25_lstm_75_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_75_tensorarrayunstack_tensorlistfromtensor_0'sequential_25_lstm_75_while_placeholderVsequential_25/lstm_75/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ë
?sequential_25/lstm_75/while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOpJsequential_25_lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0þ
0sequential_25/lstm_75/while/lstm_cell_333/MatMulMatMulFsequential_25/lstm_75/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_25/lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Asequential_25/lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOpLsequential_25_lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0å
2sequential_25/lstm_75/while/lstm_cell_333/MatMul_1MatMul)sequential_25_lstm_75_while_placeholder_2Isequential_25/lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
-sequential_25/lstm_75/while/lstm_cell_333/addAddV2:sequential_25/lstm_75/while/lstm_cell_333/MatMul:product:0<sequential_25/lstm_75/while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
@sequential_25/lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOpKsequential_25_lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_25/lstm_75/while/lstm_cell_333/BiasAddBiasAdd1sequential_25/lstm_75/while/lstm_cell_333/add:z:0Hsequential_25/lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9sequential_25/lstm_75/while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_25/lstm_75/while/lstm_cell_333/splitSplitBsequential_25/lstm_75/while/lstm_cell_333/split/split_dim:output:0:sequential_25/lstm_75/while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¨
1sequential_25/lstm_75/while/lstm_cell_333/SigmoidSigmoid8sequential_25/lstm_75/while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_25/lstm_75/while/lstm_cell_333/Sigmoid_1Sigmoid8sequential_25/lstm_75/while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÊ
-sequential_25/lstm_75/while/lstm_cell_333/mulMul7sequential_25/lstm_75/while/lstm_cell_333/Sigmoid_1:y:0)sequential_25_lstm_75_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
.sequential_25/lstm_75/while/lstm_cell_333/ReluRelu8sequential_25/lstm_75/while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÝ
/sequential_25/lstm_75/while/lstm_cell_333/mul_1Mul5sequential_25/lstm_75/while/lstm_cell_333/Sigmoid:y:0<sequential_25/lstm_75/while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÒ
/sequential_25/lstm_75/while/lstm_cell_333/add_1AddV21sequential_25/lstm_75/while/lstm_cell_333/mul:z:03sequential_25/lstm_75/while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_25/lstm_75/while/lstm_cell_333/Sigmoid_2Sigmoid8sequential_25/lstm_75/while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
0sequential_25/lstm_75/while/lstm_cell_333/Relu_1Relu3sequential_25/lstm_75/while/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdá
/sequential_25/lstm_75/while/lstm_cell_333/mul_2Mul7sequential_25/lstm_75/while/lstm_cell_333/Sigmoid_2:y:0>sequential_25/lstm_75/while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
@sequential_25/lstm_75/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_25_lstm_75_while_placeholder_1'sequential_25_lstm_75_while_placeholder3sequential_25/lstm_75/while/lstm_cell_333/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_25/lstm_75/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_25/lstm_75/while/addAddV2'sequential_25_lstm_75_while_placeholder*sequential_25/lstm_75/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_25/lstm_75/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_25/lstm_75/while/add_1AddV2Dsequential_25_lstm_75_while_sequential_25_lstm_75_while_loop_counter,sequential_25/lstm_75/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_25/lstm_75/while/IdentityIdentity%sequential_25/lstm_75/while/add_1:z:0!^sequential_25/lstm_75/while/NoOp*
T0*
_output_shapes
: Â
&sequential_25/lstm_75/while/Identity_1IdentityJsequential_25_lstm_75_while_sequential_25_lstm_75_while_maximum_iterations!^sequential_25/lstm_75/while/NoOp*
T0*
_output_shapes
: 
&sequential_25/lstm_75/while/Identity_2Identity#sequential_25/lstm_75/while/add:z:0!^sequential_25/lstm_75/while/NoOp*
T0*
_output_shapes
: È
&sequential_25/lstm_75/while/Identity_3IdentityPsequential_25/lstm_75/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_25/lstm_75/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_25/lstm_75/while/Identity_4Identity3sequential_25/lstm_75/while/lstm_cell_333/mul_2:z:0!^sequential_25/lstm_75/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¼
&sequential_25/lstm_75/while/Identity_5Identity3sequential_25/lstm_75/while/lstm_cell_333/add_1:z:0!^sequential_25/lstm_75/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
 sequential_25/lstm_75/while/NoOpNoOpA^sequential_25/lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp@^sequential_25/lstm_75/while/lstm_cell_333/MatMul/ReadVariableOpB^sequential_25/lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_25_lstm_75_while_identity-sequential_25/lstm_75/while/Identity:output:0"Y
&sequential_25_lstm_75_while_identity_1/sequential_25/lstm_75/while/Identity_1:output:0"Y
&sequential_25_lstm_75_while_identity_2/sequential_25/lstm_75/while/Identity_2:output:0"Y
&sequential_25_lstm_75_while_identity_3/sequential_25/lstm_75/while/Identity_3:output:0"Y
&sequential_25_lstm_75_while_identity_4/sequential_25/lstm_75/while/Identity_4:output:0"Y
&sequential_25_lstm_75_while_identity_5/sequential_25/lstm_75/while/Identity_5:output:0"
Isequential_25_lstm_75_while_lstm_cell_333_biasadd_readvariableop_resourceKsequential_25_lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0"
Jsequential_25_lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resourceLsequential_25_lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0"
Hsequential_25_lstm_75_while_lstm_cell_333_matmul_readvariableop_resourceJsequential_25_lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0"
Asequential_25_lstm_75_while_sequential_25_lstm_75_strided_slice_1Csequential_25_lstm_75_while_sequential_25_lstm_75_strided_slice_1_0"
}sequential_25_lstm_75_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_75_tensorarrayunstack_tensorlistfromtensorsequential_25_lstm_75_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_75_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
@sequential_25/lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp@sequential_25/lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2
?sequential_25/lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp?sequential_25/lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp2
Asequential_25/lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOpAsequential_25/lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2031438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2031438___redundant_placeholder05
1while_while_cond_2031438___redundant_placeholder15
1while_while_cond_2031438___redundant_placeholder25
1while_while_cond_2031438___redundant_placeholder3
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
while_body_2031725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_335_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_335_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_335_matmul_readvariableop_resource:2(F
4while_lstm_cell_335_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_335_biasadd_readvariableop_resource:(¢*while/lstm_cell_335/BiasAdd/ReadVariableOp¢)while/lstm_cell_335/MatMul/ReadVariableOp¢+while/lstm_cell_335/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_335/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_335/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_335/addAddV2$while/lstm_cell_335/MatMul:product:0&while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_335/BiasAddBiasAddwhile/lstm_cell_335/add:z:02while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_335/splitSplit,while/lstm_cell_335/split/split_dim:output:0$while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_335/SigmoidSigmoid"while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_1Sigmoid"while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mulMul!while/lstm_cell_335/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_335/ReluRelu"while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_1Mulwhile/lstm_cell_335/Sigmoid:y:0&while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/add_1AddV2while/lstm_cell_335/mul:z:0while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_2Sigmoid"while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_335/Relu_1Reluwhile/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_2Mul!while/lstm_cell_335/Sigmoid_2:y:0(while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_335/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_335/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_335/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_335/BiasAdd/ReadVariableOp*^while/lstm_cell_335/MatMul/ReadVariableOp,^while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_335_biasadd_readvariableop_resource5while_lstm_cell_335_biasadd_readvariableop_resource_0"n
4while_lstm_cell_335_matmul_1_readvariableop_resource6while_lstm_cell_335_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_335_matmul_readvariableop_resource4while_lstm_cell_335_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_335/BiasAdd/ReadVariableOp*while/lstm_cell_335/BiasAdd/ReadVariableOp2V
)while/lstm_cell_335/MatMul/ReadVariableOp)while/lstm_cell_335/MatMul/ReadVariableOp2Z
+while/lstm_cell_335/MatMul_1/ReadVariableOp+while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2032233

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
×

J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027149

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
while_body_2030493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_333_matmul_readvariableop_resource_0:	I
6while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_333_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_333_matmul_readvariableop_resource:	G
4while_lstm_cell_333_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_333_biasadd_readvariableop_resource:	¢*while/lstm_cell_333/BiasAdd/ReadVariableOp¢)while/lstm_cell_333/MatMul/ReadVariableOp¢+while/lstm_cell_333/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_333/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_333/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_333/addAddV2$while/lstm_cell_333/MatMul:product:0&while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_333/BiasAddBiasAddwhile/lstm_cell_333/add:z:02while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_333/splitSplit,while/lstm_cell_333/split/split_dim:output:0$while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_333/SigmoidSigmoid"while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_1Sigmoid"while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mulMul!while/lstm_cell_333/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_333/ReluRelu"while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_1Mulwhile/lstm_cell_333/Sigmoid:y:0&while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/add_1AddV2while/lstm_cell_333/mul:z:0while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_2Sigmoid"while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_333/Relu_1Reluwhile/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_2Mul!while/lstm_cell_333/Sigmoid_2:y:0(while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_333/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_333/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_333/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_333/BiasAdd/ReadVariableOp*^while/lstm_cell_333/MatMul/ReadVariableOp,^while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_333_biasadd_readvariableop_resource5while_lstm_cell_333_biasadd_readvariableop_resource_0"n
4while_lstm_cell_333_matmul_1_readvariableop_resource6while_lstm_cell_333_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_333_matmul_readvariableop_resource4while_lstm_cell_333_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_333/BiasAdd/ReadVariableOp*while/lstm_cell_333/BiasAdd/ReadVariableOp2V
)while/lstm_cell_333/MatMul/ReadVariableOp)while/lstm_cell_333/MatMul/ReadVariableOp2Z
+while/lstm_cell_333/MatMul_1/ReadVariableOp+while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_75_layer_call_fn_2030126
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2027277|
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
Ñ8
Ú
while_body_2028732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_334_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_334_biasadd_readvariableop_resource:	È¢*while/lstm_cell_334/BiasAdd/ReadVariableOp¢)while/lstm_cell_334/MatMul/ReadVariableOp¢+while/lstm_cell_334/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_334/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_334/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_334/addAddV2$while/lstm_cell_334/MatMul:product:0&while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_334/BiasAddBiasAddwhile/lstm_cell_334/add:z:02while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_334/splitSplit,while/lstm_cell_334/split/split_dim:output:0$while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_334/SigmoidSigmoid"while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_1Sigmoid"while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mulMul!while/lstm_cell_334/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_334/ReluRelu"while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_1Mulwhile/lstm_cell_334/Sigmoid:y:0&while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/add_1AddV2while/lstm_cell_334/mul:z:0while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_2Sigmoid"while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_334/Relu_1Reluwhile/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_2Mul!while/lstm_cell_334/Sigmoid_2:y:0(while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_334/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_334/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_334/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_334/BiasAdd/ReadVariableOp*^while/lstm_cell_334/MatMul/ReadVariableOp,^while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_334_biasadd_readvariableop_resource5while_lstm_cell_334_biasadd_readvariableop_resource_0"n
4while_lstm_cell_334_matmul_1_readvariableop_resource6while_lstm_cell_334_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_334_matmul_readvariableop_resource4while_lstm_cell_334_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_334/BiasAdd/ReadVariableOp*while/lstm_cell_334/BiasAdd/ReadVariableOp2V
)while/lstm_cell_334/MatMul/ReadVariableOp)while/lstm_cell_334/MatMul/ReadVariableOp2Z
+while/lstm_cell_334/MatMul_1/ReadVariableOp+while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2028566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2028566___redundant_placeholder05
1while_while_cond_2028566___redundant_placeholder15
1while_while_cond_2028566___redundant_placeholder25
1while_while_cond_2028566___redundant_placeholder3
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
´
ò
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029161
lstm_75_input"
lstm_75_2029134:	"
lstm_75_2029136:	d
lstm_75_2029138:	"
lstm_76_2029141:	dÈ"
lstm_76_2029143:	2È
lstm_76_2029145:	È!
lstm_77_2029148:2(!
lstm_77_2029150:
(
lstm_77_2029152:("
dense_25_2029155:

dense_25_2029157:
identity¢ dense_25/StatefulPartitionedCall¢lstm_75/StatefulPartitionedCall¢lstm_76/StatefulPartitionedCall¢lstm_77/StatefulPartitionedCall
lstm_75/StatefulPartitionedCallStatefulPartitionedCalllstm_75_inputlstm_75_2029134lstm_75_2029136lstm_75_2029138*
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028981¨
lstm_76/StatefulPartitionedCallStatefulPartitionedCall(lstm_75/StatefulPartitionedCall:output:0lstm_76_2029141lstm_76_2029143lstm_76_2029145*
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028816¤
lstm_77/StatefulPartitionedCallStatefulPartitionedCall(lstm_76/StatefulPartitionedCall:output:0lstm_77_2029148lstm_77_2029150lstm_77_2029152*
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2028651
 dense_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_77/StatefulPartitionedCall:output:0dense_25_2029155dense_25_2029157*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_2028453x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_25/StatefulPartitionedCall ^lstm_75/StatefulPartitionedCall ^lstm_76/StatefulPartitionedCall ^lstm_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_75/StatefulPartitionedCalllstm_75/StatefulPartitionedCall2B
lstm_76/StatefulPartitionedCalllstm_76/StatefulPartitionedCall2B
lstm_77/StatefulPartitionedCalllstm_77/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_75_input
£

(sequential_25_lstm_75_while_cond_2026567H
Dsequential_25_lstm_75_while_sequential_25_lstm_75_while_loop_counterN
Jsequential_25_lstm_75_while_sequential_25_lstm_75_while_maximum_iterations+
'sequential_25_lstm_75_while_placeholder-
)sequential_25_lstm_75_while_placeholder_1-
)sequential_25_lstm_75_while_placeholder_2-
)sequential_25_lstm_75_while_placeholder_3J
Fsequential_25_lstm_75_while_less_sequential_25_lstm_75_strided_slice_1a
]sequential_25_lstm_75_while_sequential_25_lstm_75_while_cond_2026567___redundant_placeholder0a
]sequential_25_lstm_75_while_sequential_25_lstm_75_while_cond_2026567___redundant_placeholder1a
]sequential_25_lstm_75_while_sequential_25_lstm_75_while_cond_2026567___redundant_placeholder2a
]sequential_25_lstm_75_while_sequential_25_lstm_75_while_cond_2026567___redundant_placeholder3(
$sequential_25_lstm_75_while_identity
º
 sequential_25/lstm_75/while/LessLess'sequential_25_lstm_75_while_placeholderFsequential_25_lstm_75_while_less_sequential_25_lstm_75_strided_slice_1*
T0*
_output_shapes
: w
$sequential_25/lstm_75/while/IdentityIdentity$sequential_25/lstm_75/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_25_lstm_75_while_identity-sequential_25/lstm_75/while/Identity:output:0*(
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
)__inference_lstm_75_layer_call_fn_2030148

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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028981s
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
while_cond_2028731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2028731___redundant_placeholder05
1while_while_cond_2028731___redundant_placeholder15
1while_while_cond_2028731___redundant_placeholder25
1while_while_cond_2028731___redundant_placeholder3
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
while_cond_2031724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2031724___redundant_placeholder05
1while_while_cond_2031724___redundant_placeholder15
1while_while_cond_2031724___redundant_placeholder25
1while_while_cond_2031724___redundant_placeholder3
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
while_body_2031109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_334_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_334_biasadd_readvariableop_resource:	È¢*while/lstm_cell_334/BiasAdd/ReadVariableOp¢)while/lstm_cell_334/MatMul/ReadVariableOp¢+while/lstm_cell_334/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_334/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_334/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_334/addAddV2$while/lstm_cell_334/MatMul:product:0&while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_334/BiasAddBiasAddwhile/lstm_cell_334/add:z:02while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_334/splitSplit,while/lstm_cell_334/split/split_dim:output:0$while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_334/SigmoidSigmoid"while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_1Sigmoid"while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mulMul!while/lstm_cell_334/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_334/ReluRelu"while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_1Mulwhile/lstm_cell_334/Sigmoid:y:0&while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/add_1AddV2while/lstm_cell_334/mul:z:0while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_2Sigmoid"while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_334/Relu_1Reluwhile/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_2Mul!while/lstm_cell_334/Sigmoid_2:y:0(while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_334/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_334/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_334/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_334/BiasAdd/ReadVariableOp*^while/lstm_cell_334/MatMul/ReadVariableOp,^while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_334_biasadd_readvariableop_resource5while_lstm_cell_334_biasadd_readvariableop_resource_0"n
4while_lstm_cell_334_matmul_1_readvariableop_resource6while_lstm_cell_334_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_334_matmul_readvariableop_resource4while_lstm_cell_334_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_334/BiasAdd/ReadVariableOp*while/lstm_cell_334/BiasAdd/ReadVariableOp2V
)while/lstm_cell_334/MatMul/ReadVariableOp)while/lstm_cell_334/MatMul/ReadVariableOp2Z
+while/lstm_cell_334/MatMul_1/ReadVariableOp+while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2030822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2030822___redundant_placeholder05
1while_while_cond_2030822___redundant_placeholder15
1while_while_cond_2030822___redundant_placeholder25
1while_while_cond_2030822___redundant_placeholder3
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031336

inputs?
,lstm_cell_334_matmul_readvariableop_resource:	dÈA
.lstm_cell_334_matmul_1_readvariableop_resource:	2È<
-lstm_cell_334_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_334/BiasAdd/ReadVariableOp¢#lstm_cell_334/MatMul/ReadVariableOp¢%lstm_cell_334/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_334/MatMul/ReadVariableOpReadVariableOp,lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_334/MatMulMatMulstrided_slice_2:output:0+lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_334/MatMul_1MatMulzeros:output:0-lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_334/addAddV2lstm_cell_334/MatMul:product:0 lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_334/BiasAddBiasAddlstm_cell_334/add:z:0,lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_334/splitSplit&lstm_cell_334/split/split_dim:output:0lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_334/SigmoidSigmoidlstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_1Sigmoidlstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_334/mulMullstm_cell_334/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_334/ReluRelulstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_1Mullstm_cell_334/Sigmoid:y:0 lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_334/add_1AddV2lstm_cell_334/mul:z:0lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_2Sigmoidlstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_334/Relu_1Relulstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_2Mullstm_cell_334/Sigmoid_2:y:0"lstm_cell_334/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_334_matmul_readvariableop_resource.lstm_cell_334_matmul_1_readvariableop_resource-lstm_cell_334_biasadd_readvariableop_resource*
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
while_body_2031252*
condR
while_cond_2031251*K
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
NoOpNoOp%^lstm_cell_334/BiasAdd/ReadVariableOp$^lstm_cell_334/MatMul/ReadVariableOp&^lstm_cell_334/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_334/BiasAdd/ReadVariableOp$lstm_cell_334/BiasAdd/ReadVariableOp2J
#lstm_cell_334/MatMul/ReadVariableOp#lstm_cell_334/MatMul/ReadVariableOp2N
%lstm_cell_334/MatMul_1/ReadVariableOp%lstm_cell_334/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


è
lstm_75_while_cond_2029308,
(lstm_75_while_lstm_75_while_loop_counter2
.lstm_75_while_lstm_75_while_maximum_iterations
lstm_75_while_placeholder
lstm_75_while_placeholder_1
lstm_75_while_placeholder_2
lstm_75_while_placeholder_3.
*lstm_75_while_less_lstm_75_strided_slice_1E
Alstm_75_while_lstm_75_while_cond_2029308___redundant_placeholder0E
Alstm_75_while_lstm_75_while_cond_2029308___redundant_placeholder1E
Alstm_75_while_lstm_75_while_cond_2029308___redundant_placeholder2E
Alstm_75_while_lstm_75_while_cond_2029308___redundant_placeholder3
lstm_75_while_identity

lstm_75/while/LessLesslstm_75_while_placeholder*lstm_75_while_less_lstm_75_strided_slice_1*
T0*
_output_shapes
: [
lstm_75/while/IdentityIdentitylstm_75/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_75_while_identitylstm_75/while/Identity:output:0*(
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
)__inference_lstm_75_layer_call_fn_2030115
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2027086|
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
Ä8
Ô
while_body_2031868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_335_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_335_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_335_matmul_readvariableop_resource:2(F
4while_lstm_cell_335_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_335_biasadd_readvariableop_resource:(¢*while/lstm_cell_335/BiasAdd/ReadVariableOp¢)while/lstm_cell_335/MatMul/ReadVariableOp¢+while/lstm_cell_335/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_335/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_335/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_335/addAddV2$while/lstm_cell_335/MatMul:product:0&while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_335/BiasAddBiasAddwhile/lstm_cell_335/add:z:02while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_335/splitSplit,while/lstm_cell_335/split/split_dim:output:0$while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_335/SigmoidSigmoid"while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_1Sigmoid"while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mulMul!while/lstm_cell_335/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_335/ReluRelu"while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_1Mulwhile/lstm_cell_335/Sigmoid:y:0&while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/add_1AddV2while/lstm_cell_335/mul:z:0while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_2Sigmoid"while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_335/Relu_1Reluwhile/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_2Mul!while/lstm_cell_335/Sigmoid_2:y:0(while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_335/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_335/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_335/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_335/BiasAdd/ReadVariableOp*^while/lstm_cell_335/MatMul/ReadVariableOp,^while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_335_biasadd_readvariableop_resource5while_lstm_cell_335_biasadd_readvariableop_resource_0"n
4while_lstm_cell_335_matmul_1_readvariableop_resource6while_lstm_cell_335_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_335_matmul_readvariableop_resource4while_lstm_cell_335_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_335/BiasAdd/ReadVariableOp*while/lstm_cell_335/BiasAdd/ReadVariableOp2V
)while/lstm_cell_335/MatMul/ReadVariableOp)while/lstm_cell_335/MatMul/ReadVariableOp2Z
+while/lstm_cell_335/MatMul_1/ReadVariableOp+while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_76_layer_call_fn_2030731
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2027436|
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
while_body_2030823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_334_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_334_biasadd_readvariableop_resource:	È¢*while/lstm_cell_334/BiasAdd/ReadVariableOp¢)while/lstm_cell_334/MatMul/ReadVariableOp¢+while/lstm_cell_334/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_334/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_334/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_334/addAddV2$while/lstm_cell_334/MatMul:product:0&while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_334/BiasAddBiasAddwhile/lstm_cell_334/add:z:02while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_334/splitSplit,while/lstm_cell_334/split/split_dim:output:0$while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_334/SigmoidSigmoid"while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_1Sigmoid"while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mulMul!while/lstm_cell_334/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_334/ReluRelu"while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_1Mulwhile/lstm_cell_334/Sigmoid:y:0&while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/add_1AddV2while/lstm_cell_334/mul:z:0while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_2Sigmoid"while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_334/Relu_1Reluwhile/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_2Mul!while/lstm_cell_334/Sigmoid_2:y:0(while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_334/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_334/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_334/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_334/BiasAdd/ReadVariableOp*^while/lstm_cell_334/MatMul/ReadVariableOp,^while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_334_biasadd_readvariableop_resource5while_lstm_cell_334_biasadd_readvariableop_resource_0"n
4while_lstm_cell_334_matmul_1_readvariableop_resource6while_lstm_cell_334_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_334_matmul_readvariableop_resource4while_lstm_cell_334_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_334/BiasAdd/ReadVariableOp*while/lstm_cell_334/BiasAdd/ReadVariableOp2V
)while/lstm_cell_334/MatMul/ReadVariableOp)while/lstm_cell_334/MatMul/ReadVariableOp2Z
+while/lstm_cell_334/MatMul_1/ReadVariableOp+while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ö
³
)__inference_lstm_77_layer_call_fn_2031369

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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2028435o
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
while_cond_2030635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2030635___redundant_placeholder05
1while_while_cond_2030635___redundant_placeholder15
1while_while_cond_2030635___redundant_placeholder25
1while_while_cond_2030635___redundant_placeholder3
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
ì
õ
/__inference_lstm_cell_335_layer_call_fn_2032201

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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027849o
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
ï
ø
/__inference_lstm_cell_334_layer_call_fn_2032086

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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027353o
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
while_cond_2027716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2027716___redundant_placeholder05
1while_while_cond_2027716___redundant_placeholder15
1while_while_cond_2027716___redundant_placeholder25
1while_while_cond_2027716___redundant_placeholder3
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
Í

J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027703

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
½R

(sequential_25_lstm_77_while_body_2026846H
Dsequential_25_lstm_77_while_sequential_25_lstm_77_while_loop_counterN
Jsequential_25_lstm_77_while_sequential_25_lstm_77_while_maximum_iterations+
'sequential_25_lstm_77_while_placeholder-
)sequential_25_lstm_77_while_placeholder_1-
)sequential_25_lstm_77_while_placeholder_2-
)sequential_25_lstm_77_while_placeholder_3G
Csequential_25_lstm_77_while_sequential_25_lstm_77_strided_slice_1_0
sequential_25_lstm_77_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_77_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_25_lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0:2(^
Lsequential_25_lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(Y
Ksequential_25_lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0:((
$sequential_25_lstm_77_while_identity*
&sequential_25_lstm_77_while_identity_1*
&sequential_25_lstm_77_while_identity_2*
&sequential_25_lstm_77_while_identity_3*
&sequential_25_lstm_77_while_identity_4*
&sequential_25_lstm_77_while_identity_5E
Asequential_25_lstm_77_while_sequential_25_lstm_77_strided_slice_1
}sequential_25_lstm_77_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_77_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_25_lstm_77_while_lstm_cell_335_matmul_readvariableop_resource:2(\
Jsequential_25_lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource:
(W
Isequential_25_lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource:(¢@sequential_25/lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp¢?sequential_25/lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp¢Asequential_25/lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp
Msequential_25/lstm_77/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
?sequential_25/lstm_77/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_25_lstm_77_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_77_tensorarrayunstack_tensorlistfromtensor_0'sequential_25_lstm_77_while_placeholderVsequential_25/lstm_77/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Ê
?sequential_25/lstm_77/while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOpJsequential_25_lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ý
0sequential_25/lstm_77/while/lstm_cell_335/MatMulMatMulFsequential_25/lstm_77/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_25/lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Î
Asequential_25/lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOpLsequential_25_lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ä
2sequential_25/lstm_77/while/lstm_cell_335/MatMul_1MatMul)sequential_25_lstm_77_while_placeholder_2Isequential_25/lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(â
-sequential_25/lstm_77/while/lstm_cell_335/addAddV2:sequential_25/lstm_77/while/lstm_cell_335/MatMul:product:0<sequential_25/lstm_77/while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(È
@sequential_25/lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOpKsequential_25_lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_25/lstm_77/while/lstm_cell_335/BiasAddBiasAdd1sequential_25/lstm_77/while/lstm_cell_335/add:z:0Hsequential_25/lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ({
9sequential_25/lstm_77/while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_25/lstm_77/while/lstm_cell_335/splitSplitBsequential_25/lstm_77/while/lstm_cell_335/split/split_dim:output:0:sequential_25/lstm_77/while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¨
1sequential_25/lstm_77/while/lstm_cell_335/SigmoidSigmoid8sequential_25/lstm_77/while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_25/lstm_77/while/lstm_cell_335/Sigmoid_1Sigmoid8sequential_25/lstm_77/while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
-sequential_25/lstm_77/while/lstm_cell_335/mulMul7sequential_25/lstm_77/while/lstm_cell_335/Sigmoid_1:y:0)sequential_25_lstm_77_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
.sequential_25/lstm_77/while/lstm_cell_335/ReluRelu8sequential_25/lstm_77/while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
/sequential_25/lstm_77/while/lstm_cell_335/mul_1Mul5sequential_25/lstm_77/while/lstm_cell_335/Sigmoid:y:0<sequential_25/lstm_77/while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
/sequential_25/lstm_77/while/lstm_cell_335/add_1AddV21sequential_25/lstm_77/while/lstm_cell_335/mul:z:03sequential_25/lstm_77/while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_25/lstm_77/while/lstm_cell_335/Sigmoid_2Sigmoid8sequential_25/lstm_77/while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

0sequential_25/lstm_77/while/lstm_cell_335/Relu_1Relu3sequential_25/lstm_77/while/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
/sequential_25/lstm_77/while/lstm_cell_335/mul_2Mul7sequential_25/lstm_77/while/lstm_cell_335/Sigmoid_2:y:0>sequential_25/lstm_77/while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@sequential_25/lstm_77/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_25_lstm_77_while_placeholder_1'sequential_25_lstm_77_while_placeholder3sequential_25/lstm_77/while/lstm_cell_335/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_25/lstm_77/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_25/lstm_77/while/addAddV2'sequential_25_lstm_77_while_placeholder*sequential_25/lstm_77/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_25/lstm_77/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_25/lstm_77/while/add_1AddV2Dsequential_25_lstm_77_while_sequential_25_lstm_77_while_loop_counter,sequential_25/lstm_77/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_25/lstm_77/while/IdentityIdentity%sequential_25/lstm_77/while/add_1:z:0!^sequential_25/lstm_77/while/NoOp*
T0*
_output_shapes
: Â
&sequential_25/lstm_77/while/Identity_1IdentityJsequential_25_lstm_77_while_sequential_25_lstm_77_while_maximum_iterations!^sequential_25/lstm_77/while/NoOp*
T0*
_output_shapes
: 
&sequential_25/lstm_77/while/Identity_2Identity#sequential_25/lstm_77/while/add:z:0!^sequential_25/lstm_77/while/NoOp*
T0*
_output_shapes
: È
&sequential_25/lstm_77/while/Identity_3IdentityPsequential_25/lstm_77/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_25/lstm_77/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_25/lstm_77/while/Identity_4Identity3sequential_25/lstm_77/while/lstm_cell_335/mul_2:z:0!^sequential_25/lstm_77/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
&sequential_25/lstm_77/while/Identity_5Identity3sequential_25/lstm_77/while/lstm_cell_335/add_1:z:0!^sequential_25/lstm_77/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
«
 sequential_25/lstm_77/while/NoOpNoOpA^sequential_25/lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp@^sequential_25/lstm_77/while/lstm_cell_335/MatMul/ReadVariableOpB^sequential_25/lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_25_lstm_77_while_identity-sequential_25/lstm_77/while/Identity:output:0"Y
&sequential_25_lstm_77_while_identity_1/sequential_25/lstm_77/while/Identity_1:output:0"Y
&sequential_25_lstm_77_while_identity_2/sequential_25/lstm_77/while/Identity_2:output:0"Y
&sequential_25_lstm_77_while_identity_3/sequential_25/lstm_77/while/Identity_3:output:0"Y
&sequential_25_lstm_77_while_identity_4/sequential_25/lstm_77/while/Identity_4:output:0"Y
&sequential_25_lstm_77_while_identity_5/sequential_25/lstm_77/while/Identity_5:output:0"
Isequential_25_lstm_77_while_lstm_cell_335_biasadd_readvariableop_resourceKsequential_25_lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0"
Jsequential_25_lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resourceLsequential_25_lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0"
Hsequential_25_lstm_77_while_lstm_cell_335_matmul_readvariableop_resourceJsequential_25_lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0"
Asequential_25_lstm_77_while_sequential_25_lstm_77_strided_slice_1Csequential_25_lstm_77_while_sequential_25_lstm_77_strided_slice_1_0"
}sequential_25_lstm_77_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_77_tensorarrayunstack_tensorlistfromtensorsequential_25_lstm_77_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_77_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2
@sequential_25/lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp@sequential_25/lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2
?sequential_25/lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp?sequential_25/lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp2
Asequential_25/lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOpAsequential_25/lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2027366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2027366___redundant_placeholder05
1while_while_cond_2027366___redundant_placeholder15
1while_while_cond_2027366___redundant_placeholder25
1while_while_cond_2027366___redundant_placeholder3
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
K
¡
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031666
inputs_0>
,lstm_cell_335_matmul_readvariableop_resource:2(@
.lstm_cell_335_matmul_1_readvariableop_resource:
(;
-lstm_cell_335_biasadd_readvariableop_resource:(
identity¢$lstm_cell_335/BiasAdd/ReadVariableOp¢#lstm_cell_335/MatMul/ReadVariableOp¢%lstm_cell_335/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_335/MatMul/ReadVariableOpReadVariableOp,lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_335/MatMulMatMulstrided_slice_2:output:0+lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_335/MatMul_1MatMulzeros:output:0-lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_335/addAddV2lstm_cell_335/MatMul:product:0 lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_335/BiasAddBiasAddlstm_cell_335/add:z:0,lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_335/splitSplit&lstm_cell_335/split/split_dim:output:0lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_335/SigmoidSigmoidlstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_1Sigmoidlstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_335/mulMullstm_cell_335/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_335/ReluRelulstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_1Mullstm_cell_335/Sigmoid:y:0 lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_335/add_1AddV2lstm_cell_335/mul:z:0lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_2Sigmoidlstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_335/Relu_1Relulstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_2Mullstm_cell_335/Sigmoid_2:y:0"lstm_cell_335/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_335_matmul_readvariableop_resource.lstm_cell_335_matmul_1_readvariableop_resource-lstm_cell_335_biasadd_readvariableop_resource*
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
while_body_2031582*
condR
while_cond_2031581*K
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
NoOpNoOp%^lstm_cell_335/BiasAdd/ReadVariableOp$^lstm_cell_335/MatMul/ReadVariableOp&^lstm_cell_335/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_335/BiasAdd/ReadVariableOp$lstm_cell_335/BiasAdd/ReadVariableOp2J
#lstm_cell_335/MatMul/ReadVariableOp#lstm_cell_335/MatMul/ReadVariableOp2N
%lstm_cell_335/MatMul_1/ReadVariableOp%lstm_cell_335/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
K
¤
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031050
inputs_0?
,lstm_cell_334_matmul_readvariableop_resource:	dÈA
.lstm_cell_334_matmul_1_readvariableop_resource:	2È<
-lstm_cell_334_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_334/BiasAdd/ReadVariableOp¢#lstm_cell_334/MatMul/ReadVariableOp¢%lstm_cell_334/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_334/MatMul/ReadVariableOpReadVariableOp,lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_334/MatMulMatMulstrided_slice_2:output:0+lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_334/MatMul_1MatMulzeros:output:0-lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_334/addAddV2lstm_cell_334/MatMul:product:0 lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_334/BiasAddBiasAddlstm_cell_334/add:z:0,lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_334/splitSplit&lstm_cell_334/split/split_dim:output:0lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_334/SigmoidSigmoidlstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_1Sigmoidlstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_334/mulMullstm_cell_334/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_334/ReluRelulstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_1Mullstm_cell_334/Sigmoid:y:0 lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_334/add_1AddV2lstm_cell_334/mul:z:0lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_2Sigmoidlstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_334/Relu_1Relulstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_2Mullstm_cell_334/Sigmoid_2:y:0"lstm_cell_334/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_334_matmul_readvariableop_resource.lstm_cell_334_matmul_1_readvariableop_resource-lstm_cell_334_biasadd_readvariableop_resource*
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
while_body_2030966*
condR
while_cond_2030965*K
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
NoOpNoOp%^lstm_cell_334/BiasAdd/ReadVariableOp$^lstm_cell_334/MatMul/ReadVariableOp&^lstm_cell_334/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_334/BiasAdd/ReadVariableOp$lstm_cell_334/BiasAdd/ReadVariableOp2J
#lstm_cell_334/MatMul/ReadVariableOp#lstm_cell_334/MatMul/ReadVariableOp2N
%lstm_cell_334/MatMul_1/ReadVariableOp%lstm_cell_334/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
B
Ú

lstm_76_while_body_2029875,
(lstm_76_while_lstm_76_while_loop_counter2
.lstm_76_while_lstm_76_while_maximum_iterations
lstm_76_while_placeholder
lstm_76_while_placeholder_1
lstm_76_while_placeholder_2
lstm_76_while_placeholder_3+
'lstm_76_while_lstm_76_strided_slice_1_0g
clstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈQ
>lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
lstm_76_while_identity
lstm_76_while_identity_1
lstm_76_while_identity_2
lstm_76_while_identity_3
lstm_76_while_identity_4
lstm_76_while_identity_5)
%lstm_76_while_lstm_76_strided_slice_1e
alstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensorM
:lstm_76_while_lstm_cell_334_matmul_readvariableop_resource:	dÈO
<lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈJ
;lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource:	È¢2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp¢1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp¢3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp
?lstm_76/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_76/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensor_0lstm_76_while_placeholderHlstm_76/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp<lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_76/while/lstm_cell_334/MatMulMatMul8lstm_76/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp>lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_76/while/lstm_cell_334/MatMul_1MatMullstm_76_while_placeholder_2;lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_76/while/lstm_cell_334/addAddV2,lstm_76/while/lstm_cell_334/MatMul:product:0.lstm_76/while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp=lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_76/while/lstm_cell_334/BiasAddBiasAdd#lstm_76/while/lstm_cell_334/add:z:0:lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_76/while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_76/while/lstm_cell_334/splitSplit4lstm_76/while/lstm_cell_334/split/split_dim:output:0,lstm_76/while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_76/while/lstm_cell_334/SigmoidSigmoid*lstm_76/while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_76/while/lstm_cell_334/Sigmoid_1Sigmoid*lstm_76/while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_76/while/lstm_cell_334/mulMul)lstm_76/while/lstm_cell_334/Sigmoid_1:y:0lstm_76_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_76/while/lstm_cell_334/ReluRelu*lstm_76/while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_76/while/lstm_cell_334/mul_1Mul'lstm_76/while/lstm_cell_334/Sigmoid:y:0.lstm_76/while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_76/while/lstm_cell_334/add_1AddV2#lstm_76/while/lstm_cell_334/mul:z:0%lstm_76/while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_76/while/lstm_cell_334/Sigmoid_2Sigmoid*lstm_76/while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_76/while/lstm_cell_334/Relu_1Relu%lstm_76/while/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_76/while/lstm_cell_334/mul_2Mul)lstm_76/while/lstm_cell_334/Sigmoid_2:y:00lstm_76/while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_76/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_76_while_placeholder_1lstm_76_while_placeholder%lstm_76/while/lstm_cell_334/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_76/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_76/while/addAddV2lstm_76_while_placeholderlstm_76/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_76/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_76/while/add_1AddV2(lstm_76_while_lstm_76_while_loop_counterlstm_76/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_76/while/IdentityIdentitylstm_76/while/add_1:z:0^lstm_76/while/NoOp*
T0*
_output_shapes
: 
lstm_76/while/Identity_1Identity.lstm_76_while_lstm_76_while_maximum_iterations^lstm_76/while/NoOp*
T0*
_output_shapes
: q
lstm_76/while/Identity_2Identitylstm_76/while/add:z:0^lstm_76/while/NoOp*
T0*
_output_shapes
: 
lstm_76/while/Identity_3IdentityBlstm_76/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_76/while/NoOp*
T0*
_output_shapes
: 
lstm_76/while/Identity_4Identity%lstm_76/while/lstm_cell_334/mul_2:z:0^lstm_76/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/while/Identity_5Identity%lstm_76/while/lstm_cell_334/add_1:z:0^lstm_76/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_76/while/NoOpNoOp3^lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2^lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp4^lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_76_while_identitylstm_76/while/Identity:output:0"=
lstm_76_while_identity_1!lstm_76/while/Identity_1:output:0"=
lstm_76_while_identity_2!lstm_76/while/Identity_2:output:0"=
lstm_76_while_identity_3!lstm_76/while/Identity_3:output:0"=
lstm_76_while_identity_4!lstm_76/while/Identity_4:output:0"=
lstm_76_while_identity_5!lstm_76/while/Identity_5:output:0"P
%lstm_76_while_lstm_76_strided_slice_1'lstm_76_while_lstm_76_strided_slice_1_0"|
;lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource=lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0"~
<lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource>lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0"z
:lstm_76_while_lstm_cell_334_matmul_readvariableop_resource<lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0"È
alstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensorclstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2f
1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp2j
3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_76_layer_call_fn_2030764

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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028816s
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
while_body_2030350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_333_matmul_readvariableop_resource_0:	I
6while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_333_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_333_matmul_readvariableop_resource:	G
4while_lstm_cell_333_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_333_biasadd_readvariableop_resource:	¢*while/lstm_cell_333/BiasAdd/ReadVariableOp¢)while/lstm_cell_333/MatMul/ReadVariableOp¢+while/lstm_cell_333/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_333/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_333/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_333/addAddV2$while/lstm_cell_333/MatMul:product:0&while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_333/BiasAddBiasAddwhile/lstm_cell_333/add:z:02while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_333/splitSplit,while/lstm_cell_333/split/split_dim:output:0$while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_333/SigmoidSigmoid"while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_1Sigmoid"while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mulMul!while/lstm_cell_333/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_333/ReluRelu"while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_1Mulwhile/lstm_cell_333/Sigmoid:y:0&while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/add_1AddV2while/lstm_cell_333/mul:z:0while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_333/Sigmoid_2Sigmoid"while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_333/Relu_1Reluwhile/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_333/mul_2Mul!while/lstm_cell_333/Sigmoid_2:y:0(while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_333/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_333/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_333/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_333/BiasAdd/ReadVariableOp*^while/lstm_cell_333/MatMul/ReadVariableOp,^while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_333_biasadd_readvariableop_resource5while_lstm_cell_333_biasadd_readvariableop_resource_0"n
4while_lstm_cell_333_matmul_1_readvariableop_resource6while_lstm_cell_333_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_333_matmul_readvariableop_resource4while_lstm_cell_333_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_333/BiasAdd/ReadVariableOp*while/lstm_cell_333/BiasAdd/ReadVariableOp2V
)while/lstm_cell_333/MatMul/ReadVariableOp)while/lstm_cell_333/MatMul/ReadVariableOp2Z
+while/lstm_cell_333/MatMul_1/ReadVariableOp+while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2031251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2031251___redundant_placeholder05
1while_while_cond_2031251___redundant_placeholder15
1while_while_cond_2031251___redundant_placeholder25
1while_while_cond_2031251___redundant_placeholder3
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
ÜJ

D__inference_lstm_77_layer_call_and_return_conditional_losses_2031809

inputs>
,lstm_cell_335_matmul_readvariableop_resource:2(@
.lstm_cell_335_matmul_1_readvariableop_resource:
(;
-lstm_cell_335_biasadd_readvariableop_resource:(
identity¢$lstm_cell_335/BiasAdd/ReadVariableOp¢#lstm_cell_335/MatMul/ReadVariableOp¢%lstm_cell_335/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_335/MatMul/ReadVariableOpReadVariableOp,lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_335/MatMulMatMulstrided_slice_2:output:0+lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_335/MatMul_1MatMulzeros:output:0-lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_335/addAddV2lstm_cell_335/MatMul:product:0 lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_335/BiasAddBiasAddlstm_cell_335/add:z:0,lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_335/splitSplit&lstm_cell_335/split/split_dim:output:0lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_335/SigmoidSigmoidlstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_1Sigmoidlstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_335/mulMullstm_cell_335/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_335/ReluRelulstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_1Mullstm_cell_335/Sigmoid:y:0 lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_335/add_1AddV2lstm_cell_335/mul:z:0lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_2Sigmoidlstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_335/Relu_1Relulstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_2Mullstm_cell_335/Sigmoid_2:y:0"lstm_cell_335/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_335_matmul_readvariableop_resource.lstm_cell_335_matmul_1_readvariableop_resource-lstm_cell_335_biasadd_readvariableop_resource*
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
while_body_2031725*
condR
while_cond_2031724*K
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
NoOpNoOp%^lstm_cell_335/BiasAdd/ReadVariableOp$^lstm_cell_335/MatMul/ReadVariableOp&^lstm_cell_335/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_335/BiasAdd/ReadVariableOp$lstm_cell_335/BiasAdd/ReadVariableOp2J
#lstm_cell_335/MatMul/ReadVariableOp#lstm_cell_335/MatMul/ReadVariableOp2N
%lstm_cell_335/MatMul_1/ReadVariableOp%lstm_cell_335/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
K
¤
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030291
inputs_0?
,lstm_cell_333_matmul_readvariableop_resource:	A
.lstm_cell_333_matmul_1_readvariableop_resource:	d<
-lstm_cell_333_biasadd_readvariableop_resource:	
identity¢$lstm_cell_333/BiasAdd/ReadVariableOp¢#lstm_cell_333/MatMul/ReadVariableOp¢%lstm_cell_333/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_333/MatMul/ReadVariableOpReadVariableOp,lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_333/MatMulMatMulstrided_slice_2:output:0+lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_333/MatMul_1MatMulzeros:output:0-lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_333/addAddV2lstm_cell_333/MatMul:product:0 lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_333/BiasAddBiasAddlstm_cell_333/add:z:0,lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_333/splitSplit&lstm_cell_333/split/split_dim:output:0lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_333/SigmoidSigmoidlstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_1Sigmoidlstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_333/mulMullstm_cell_333/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_333/ReluRelulstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_1Mullstm_cell_333/Sigmoid:y:0 lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_333/add_1AddV2lstm_cell_333/mul:z:0lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_2Sigmoidlstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_333/Relu_1Relulstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_2Mullstm_cell_333/Sigmoid_2:y:0"lstm_cell_333/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_333_matmul_readvariableop_resource.lstm_cell_333_matmul_1_readvariableop_resource-lstm_cell_333_biasadd_readvariableop_resource*
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
while_body_2030207*
condR
while_cond_2030206*K
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
NoOpNoOp%^lstm_cell_333/BiasAdd/ReadVariableOp$^lstm_cell_333/MatMul/ReadVariableOp&^lstm_cell_333/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_333/BiasAdd/ReadVariableOp$lstm_cell_333/BiasAdd/ReadVariableOp2J
#lstm_cell_333/MatMul/ReadVariableOp#lstm_cell_333/MatMul/ReadVariableOp2N
%lstm_cell_333/MatMul_1/ReadVariableOp%lstm_cell_333/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
#
ë
while_body_2027717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_335_2027741_0:2(/
while_lstm_cell_335_2027743_0:
(+
while_lstm_cell_335_2027745_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_335_2027741:2(-
while_lstm_cell_335_2027743:
()
while_lstm_cell_335_2027745:(¢+while/lstm_cell_335/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_335/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_335_2027741_0while_lstm_cell_335_2027743_0while_lstm_cell_335_2027745_0*
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027703Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_335/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_335/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_335/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_335/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_335_2027741while_lstm_cell_335_2027741_0"<
while_lstm_cell_335_2027743while_lstm_cell_335_2027743_0"<
while_lstm_cell_335_2027745while_lstm_cell_335_2027745_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_335/StatefulPartitionedCall+while/lstm_cell_335/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_75_while_cond_2029735,
(lstm_75_while_lstm_75_while_loop_counter2
.lstm_75_while_lstm_75_while_maximum_iterations
lstm_75_while_placeholder
lstm_75_while_placeholder_1
lstm_75_while_placeholder_2
lstm_75_while_placeholder_3.
*lstm_75_while_less_lstm_75_strided_slice_1E
Alstm_75_while_lstm_75_while_cond_2029735___redundant_placeholder0E
Alstm_75_while_lstm_75_while_cond_2029735___redundant_placeholder1E
Alstm_75_while_lstm_75_while_cond_2029735___redundant_placeholder2E
Alstm_75_while_lstm_75_while_cond_2029735___redundant_placeholder3
lstm_75_while_identity

lstm_75/while/LessLesslstm_75_while_placeholder*lstm_75_while_less_lstm_75_strided_slice_1*
T0*
_output_shapes
: [
lstm_75/while/IdentityIdentitylstm_75/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_75_while_identitylstm_75/while/Identity:output:0*(
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029131
lstm_75_input"
lstm_75_2029104:	"
lstm_75_2029106:	d
lstm_75_2029108:	"
lstm_76_2029111:	dÈ"
lstm_76_2029113:	2È
lstm_76_2029115:	È!
lstm_77_2029118:2(!
lstm_77_2029120:
(
lstm_77_2029122:("
dense_25_2029125:

dense_25_2029127:
identity¢ dense_25/StatefulPartitionedCall¢lstm_75/StatefulPartitionedCall¢lstm_76/StatefulPartitionedCall¢lstm_77/StatefulPartitionedCall
lstm_75/StatefulPartitionedCallStatefulPartitionedCalllstm_75_inputlstm_75_2029104lstm_75_2029106lstm_75_2029108*
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028135¨
lstm_76/StatefulPartitionedCallStatefulPartitionedCall(lstm_75/StatefulPartitionedCall:output:0lstm_76_2029111lstm_76_2029113lstm_76_2029115*
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028285¤
lstm_77/StatefulPartitionedCallStatefulPartitionedCall(lstm_76/StatefulPartitionedCall:output:0lstm_77_2029118lstm_77_2029120lstm_77_2029122*
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2028435
 dense_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_77/StatefulPartitionedCall:output:0dense_25_2029125dense_25_2029127*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_2028453x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_25/StatefulPartitionedCall ^lstm_75/StatefulPartitionedCall ^lstm_76/StatefulPartitionedCall ^lstm_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_75/StatefulPartitionedCalllstm_75/StatefulPartitionedCall2B
lstm_76/StatefulPartitionedCalllstm_76/StatefulPartitionedCall2B
lstm_77/StatefulPartitionedCalllstm_77/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_75_input
º
È
while_cond_2028050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2028050___redundant_placeholder05
1while_while_cond_2028050___redundant_placeholder15
1while_while_cond_2028050___redundant_placeholder25
1while_while_cond_2028050___redundant_placeholder3
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
Õ

J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2032265

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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2032135

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
ñ

¢
/__inference_sequential_25_layer_call_fn_2028485
lstm_75_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2028460o
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
_user_specified_namelstm_75_input
Ü


/__inference_sequential_25_layer_call_fn_2029250

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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029049o
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
lstm_76_while_cond_2029447,
(lstm_76_while_lstm_76_while_loop_counter2
.lstm_76_while_lstm_76_while_maximum_iterations
lstm_76_while_placeholder
lstm_76_while_placeholder_1
lstm_76_while_placeholder_2
lstm_76_while_placeholder_3.
*lstm_76_while_less_lstm_76_strided_slice_1E
Alstm_76_while_lstm_76_while_cond_2029447___redundant_placeholder0E
Alstm_76_while_lstm_76_while_cond_2029447___redundant_placeholder1E
Alstm_76_while_lstm_76_while_cond_2029447___redundant_placeholder2E
Alstm_76_while_lstm_76_while_cond_2029447___redundant_placeholder3
lstm_76_while_identity

lstm_76/while/LessLesslstm_76_while_placeholder*lstm_76_while_less_lstm_76_strided_slice_1*
T0*
_output_shapes
: [
lstm_76/while/IdentityIdentitylstm_76/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_76_while_identitylstm_76/while/Identity:output:0*(
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2027977

inputs'
lstm_cell_335_2027895:2('
lstm_cell_335_2027897:
(#
lstm_cell_335_2027899:(
identity¢%lstm_cell_335/StatefulPartitionedCall¢while;
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
%lstm_cell_335/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_335_2027895lstm_cell_335_2027897lstm_cell_335_2027899*
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027849n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_335_2027895lstm_cell_335_2027897lstm_cell_335_2027899*
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
while_body_2027908*
condR
while_cond_2027907*K
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
NoOpNoOp&^lstm_cell_335/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_335/StatefulPartitionedCall%lstm_cell_335/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
þ

J__inference_sequential_25_layer_call_and_return_conditional_losses_2029677

inputsG
4lstm_75_lstm_cell_333_matmul_readvariableop_resource:	I
6lstm_75_lstm_cell_333_matmul_1_readvariableop_resource:	dD
5lstm_75_lstm_cell_333_biasadd_readvariableop_resource:	G
4lstm_76_lstm_cell_334_matmul_readvariableop_resource:	dÈI
6lstm_76_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈD
5lstm_76_lstm_cell_334_biasadd_readvariableop_resource:	ÈF
4lstm_77_lstm_cell_335_matmul_readvariableop_resource:2(H
6lstm_77_lstm_cell_335_matmul_1_readvariableop_resource:
(C
5lstm_77_lstm_cell_335_biasadd_readvariableop_resource:(9
'dense_25_matmul_readvariableop_resource:
6
(dense_25_biasadd_readvariableop_resource:
identity¢dense_25/BiasAdd/ReadVariableOp¢dense_25/MatMul/ReadVariableOp¢,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp¢+lstm_75/lstm_cell_333/MatMul/ReadVariableOp¢-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp¢lstm_75/while¢,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp¢+lstm_76/lstm_cell_334/MatMul/ReadVariableOp¢-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp¢lstm_76/while¢,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp¢+lstm_77/lstm_cell_335/MatMul/ReadVariableOp¢-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp¢lstm_77/whileC
lstm_75/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_75/strided_sliceStridedSlicelstm_75/Shape:output:0$lstm_75/strided_slice/stack:output:0&lstm_75/strided_slice/stack_1:output:0&lstm_75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_75/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_75/zeros/packedPacklstm_75/strided_slice:output:0lstm_75/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_75/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_75/zerosFilllstm_75/zeros/packed:output:0lstm_75/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_75/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_75/zeros_1/packedPacklstm_75/strided_slice:output:0!lstm_75/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_75/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_75/zeros_1Filllstm_75/zeros_1/packed:output:0lstm_75/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_75/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_75/transpose	Transposeinputslstm_75/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_75/Shape_1Shapelstm_75/transpose:y:0*
T0*
_output_shapes
:g
lstm_75/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_75/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_75/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_75/strided_slice_1StridedSlicelstm_75/Shape_1:output:0&lstm_75/strided_slice_1/stack:output:0(lstm_75/strided_slice_1/stack_1:output:0(lstm_75/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_75/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_75/TensorArrayV2TensorListReserve,lstm_75/TensorArrayV2/element_shape:output:0 lstm_75/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_75/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_75/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_75/transpose:y:0Flstm_75/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_75/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_75/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_75/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_75/strided_slice_2StridedSlicelstm_75/transpose:y:0&lstm_75/strided_slice_2/stack:output:0(lstm_75/strided_slice_2/stack_1:output:0(lstm_75/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_75/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4lstm_75_lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_75/lstm_cell_333/MatMulMatMul lstm_75/strided_slice_2:output:03lstm_75/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6lstm_75_lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_75/lstm_cell_333/MatMul_1MatMullstm_75/zeros:output:05lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_75/lstm_cell_333/addAddV2&lstm_75/lstm_cell_333/MatMul:product:0(lstm_75/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5lstm_75_lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_75/lstm_cell_333/BiasAddBiasAddlstm_75/lstm_cell_333/add:z:04lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_75/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_75/lstm_cell_333/splitSplit.lstm_75/lstm_cell_333/split/split_dim:output:0&lstm_75/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_75/lstm_cell_333/SigmoidSigmoid$lstm_75/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/Sigmoid_1Sigmoid$lstm_75/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/mulMul#lstm_75/lstm_cell_333/Sigmoid_1:y:0lstm_75/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_75/lstm_cell_333/ReluRelu$lstm_75/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_75/lstm_cell_333/mul_1Mul!lstm_75/lstm_cell_333/Sigmoid:y:0(lstm_75/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/add_1AddV2lstm_75/lstm_cell_333/mul:z:0lstm_75/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/Sigmoid_2Sigmoid$lstm_75/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_75/lstm_cell_333/Relu_1Relulstm_75/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_75/lstm_cell_333/mul_2Mul#lstm_75/lstm_cell_333/Sigmoid_2:y:0*lstm_75/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_75/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_75/TensorArrayV2_1TensorListReserve.lstm_75/TensorArrayV2_1/element_shape:output:0 lstm_75/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_75/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_75/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_75/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_75/whileWhile#lstm_75/while/loop_counter:output:0)lstm_75/while/maximum_iterations:output:0lstm_75/time:output:0 lstm_75/TensorArrayV2_1:handle:0lstm_75/zeros:output:0lstm_75/zeros_1:output:0 lstm_75/strided_slice_1:output:0?lstm_75/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_75_lstm_cell_333_matmul_readvariableop_resource6lstm_75_lstm_cell_333_matmul_1_readvariableop_resource5lstm_75_lstm_cell_333_biasadd_readvariableop_resource*
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
lstm_75_while_body_2029309*&
condR
lstm_75_while_cond_2029308*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_75/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_75/TensorArrayV2Stack/TensorListStackTensorListStacklstm_75/while:output:3Alstm_75/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_75/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_75/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_75/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_75/strided_slice_3StridedSlice3lstm_75/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_75/strided_slice_3/stack:output:0(lstm_75/strided_slice_3/stack_1:output:0(lstm_75/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_75/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_75/transpose_1	Transpose3lstm_75/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_75/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_75/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_76/ShapeShapelstm_75/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_76/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_76/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_76/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_76/strided_sliceStridedSlicelstm_76/Shape:output:0$lstm_76/strided_slice/stack:output:0&lstm_76/strided_slice/stack_1:output:0&lstm_76/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_76/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_76/zeros/packedPacklstm_76/strided_slice:output:0lstm_76/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_76/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_76/zerosFilllstm_76/zeros/packed:output:0lstm_76/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_76/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_76/zeros_1/packedPacklstm_76/strided_slice:output:0!lstm_76/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_76/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_76/zeros_1Filllstm_76/zeros_1/packed:output:0lstm_76/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_76/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_76/transpose	Transposelstm_75/transpose_1:y:0lstm_76/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_76/Shape_1Shapelstm_76/transpose:y:0*
T0*
_output_shapes
:g
lstm_76/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_76/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_76/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_76/strided_slice_1StridedSlicelstm_76/Shape_1:output:0&lstm_76/strided_slice_1/stack:output:0(lstm_76/strided_slice_1/stack_1:output:0(lstm_76/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_76/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_76/TensorArrayV2TensorListReserve,lstm_76/TensorArrayV2/element_shape:output:0 lstm_76/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_76/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_76/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_76/transpose:y:0Flstm_76/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_76/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_76/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_76/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_76/strided_slice_2StridedSlicelstm_76/transpose:y:0&lstm_76/strided_slice_2/stack:output:0(lstm_76/strided_slice_2/stack_1:output:0(lstm_76/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_76/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4lstm_76_lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_76/lstm_cell_334/MatMulMatMul lstm_76/strided_slice_2:output:03lstm_76/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6lstm_76_lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_76/lstm_cell_334/MatMul_1MatMullstm_76/zeros:output:05lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_76/lstm_cell_334/addAddV2&lstm_76/lstm_cell_334/MatMul:product:0(lstm_76/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5lstm_76_lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_76/lstm_cell_334/BiasAddBiasAddlstm_76/lstm_cell_334/add:z:04lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_76/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_76/lstm_cell_334/splitSplit.lstm_76/lstm_cell_334/split/split_dim:output:0&lstm_76/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_76/lstm_cell_334/SigmoidSigmoid$lstm_76/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/Sigmoid_1Sigmoid$lstm_76/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/mulMul#lstm_76/lstm_cell_334/Sigmoid_1:y:0lstm_76/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_76/lstm_cell_334/ReluRelu$lstm_76/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_76/lstm_cell_334/mul_1Mul!lstm_76/lstm_cell_334/Sigmoid:y:0(lstm_76/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/add_1AddV2lstm_76/lstm_cell_334/mul:z:0lstm_76/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/Sigmoid_2Sigmoid$lstm_76/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_76/lstm_cell_334/Relu_1Relulstm_76/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_76/lstm_cell_334/mul_2Mul#lstm_76/lstm_cell_334/Sigmoid_2:y:0*lstm_76/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_76/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_76/TensorArrayV2_1TensorListReserve.lstm_76/TensorArrayV2_1/element_shape:output:0 lstm_76/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_76/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_76/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_76/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_76/whileWhile#lstm_76/while/loop_counter:output:0)lstm_76/while/maximum_iterations:output:0lstm_76/time:output:0 lstm_76/TensorArrayV2_1:handle:0lstm_76/zeros:output:0lstm_76/zeros_1:output:0 lstm_76/strided_slice_1:output:0?lstm_76/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_76_lstm_cell_334_matmul_readvariableop_resource6lstm_76_lstm_cell_334_matmul_1_readvariableop_resource5lstm_76_lstm_cell_334_biasadd_readvariableop_resource*
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
lstm_76_while_body_2029448*&
condR
lstm_76_while_cond_2029447*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_76/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_76/TensorArrayV2Stack/TensorListStackTensorListStacklstm_76/while:output:3Alstm_76/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_76/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_76/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_76/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_76/strided_slice_3StridedSlice3lstm_76/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_76/strided_slice_3/stack:output:0(lstm_76/strided_slice_3/stack_1:output:0(lstm_76/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_76/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_76/transpose_1	Transpose3lstm_76/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_76/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_76/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_77/ShapeShapelstm_76/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_77/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_77/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_77/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_77/strided_sliceStridedSlicelstm_77/Shape:output:0$lstm_77/strided_slice/stack:output:0&lstm_77/strided_slice/stack_1:output:0&lstm_77/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_77/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_77/zeros/packedPacklstm_77/strided_slice:output:0lstm_77/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_77/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_77/zerosFilllstm_77/zeros/packed:output:0lstm_77/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_77/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_77/zeros_1/packedPacklstm_77/strided_slice:output:0!lstm_77/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_77/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_77/zeros_1Filllstm_77/zeros_1/packed:output:0lstm_77/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_77/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_77/transpose	Transposelstm_76/transpose_1:y:0lstm_77/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_77/Shape_1Shapelstm_77/transpose:y:0*
T0*
_output_shapes
:g
lstm_77/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_77/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_77/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_77/strided_slice_1StridedSlicelstm_77/Shape_1:output:0&lstm_77/strided_slice_1/stack:output:0(lstm_77/strided_slice_1/stack_1:output:0(lstm_77/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_77/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_77/TensorArrayV2TensorListReserve,lstm_77/TensorArrayV2/element_shape:output:0 lstm_77/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_77/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_77/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_77/transpose:y:0Flstm_77/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_77/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_77/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_77/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_77/strided_slice_2StridedSlicelstm_77/transpose:y:0&lstm_77/strided_slice_2/stack:output:0(lstm_77/strided_slice_2/stack_1:output:0(lstm_77/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_77/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4lstm_77_lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_77/lstm_cell_335/MatMulMatMul lstm_77/strided_slice_2:output:03lstm_77/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6lstm_77_lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_77/lstm_cell_335/MatMul_1MatMullstm_77/zeros:output:05lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_77/lstm_cell_335/addAddV2&lstm_77/lstm_cell_335/MatMul:product:0(lstm_77/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5lstm_77_lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_77/lstm_cell_335/BiasAddBiasAddlstm_77/lstm_cell_335/add:z:04lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_77/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_77/lstm_cell_335/splitSplit.lstm_77/lstm_cell_335/split/split_dim:output:0&lstm_77/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_77/lstm_cell_335/SigmoidSigmoid$lstm_77/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/Sigmoid_1Sigmoid$lstm_77/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/mulMul#lstm_77/lstm_cell_335/Sigmoid_1:y:0lstm_77/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_77/lstm_cell_335/ReluRelu$lstm_77/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_77/lstm_cell_335/mul_1Mul!lstm_77/lstm_cell_335/Sigmoid:y:0(lstm_77/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/add_1AddV2lstm_77/lstm_cell_335/mul:z:0lstm_77/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/Sigmoid_2Sigmoid$lstm_77/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_77/lstm_cell_335/Relu_1Relulstm_77/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_77/lstm_cell_335/mul_2Mul#lstm_77/lstm_cell_335/Sigmoid_2:y:0*lstm_77/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_77/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_77/TensorArrayV2_1TensorListReserve.lstm_77/TensorArrayV2_1/element_shape:output:0 lstm_77/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_77/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_77/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_77/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_77/whileWhile#lstm_77/while/loop_counter:output:0)lstm_77/while/maximum_iterations:output:0lstm_77/time:output:0 lstm_77/TensorArrayV2_1:handle:0lstm_77/zeros:output:0lstm_77/zeros_1:output:0 lstm_77/strided_slice_1:output:0?lstm_77/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_77_lstm_cell_335_matmul_readvariableop_resource6lstm_77_lstm_cell_335_matmul_1_readvariableop_resource5lstm_77_lstm_cell_335_biasadd_readvariableop_resource*
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
lstm_77_while_body_2029587*&
condR
lstm_77_while_cond_2029586*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_77/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_77/TensorArrayV2Stack/TensorListStackTensorListStacklstm_77/while:output:3Alstm_77/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_77/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_77/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_77/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_77/strided_slice_3StridedSlice3lstm_77/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_77/strided_slice_3/stack:output:0(lstm_77/strided_slice_3/stack_1:output:0(lstm_77/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_77/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_77/transpose_1	Transpose3lstm_77/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_77/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_77/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_25/MatMulMatMul lstm_77/strided_slice_3:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_25/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp-^lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp,^lstm_75/lstm_cell_333/MatMul/ReadVariableOp.^lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp^lstm_75/while-^lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp,^lstm_76/lstm_cell_334/MatMul/ReadVariableOp.^lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp^lstm_76/while-^lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp,^lstm_77/lstm_cell_335/MatMul/ReadVariableOp.^lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp^lstm_77/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2\
,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp2Z
+lstm_75/lstm_cell_333/MatMul/ReadVariableOp+lstm_75/lstm_cell_333/MatMul/ReadVariableOp2^
-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp2
lstm_75/whilelstm_75/while2\
,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp2Z
+lstm_76/lstm_cell_334/MatMul/ReadVariableOp+lstm_76/lstm_cell_334/MatMul/ReadVariableOp2^
-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp2
lstm_76/whilelstm_76/while2\
,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp2Z
+lstm_77/lstm_cell_335/MatMul/ReadVariableOp+lstm_77/lstm_cell_335/MatMul/ReadVariableOp2^
-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp2
lstm_77/whilelstm_77/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


è
lstm_77_while_cond_2029586,
(lstm_77_while_lstm_77_while_loop_counter2
.lstm_77_while_lstm_77_while_maximum_iterations
lstm_77_while_placeholder
lstm_77_while_placeholder_1
lstm_77_while_placeholder_2
lstm_77_while_placeholder_3.
*lstm_77_while_less_lstm_77_strided_slice_1E
Alstm_77_while_lstm_77_while_cond_2029586___redundant_placeholder0E
Alstm_77_while_lstm_77_while_cond_2029586___redundant_placeholder1E
Alstm_77_while_lstm_77_while_cond_2029586___redundant_placeholder2E
Alstm_77_while_lstm_77_while_cond_2029586___redundant_placeholder3
lstm_77_while_identity

lstm_77/while/LessLesslstm_77_while_placeholder*lstm_77_while_less_lstm_77_strided_slice_1*
T0*
_output_shapes
: [
lstm_77/while/IdentityIdentitylstm_77/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_77_while_identitylstm_77/while/Identity:output:0*(
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
K
¤
D__inference_lstm_76_layer_call_and_return_conditional_losses_2030907
inputs_0?
,lstm_cell_334_matmul_readvariableop_resource:	dÈA
.lstm_cell_334_matmul_1_readvariableop_resource:	2È<
-lstm_cell_334_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_334/BiasAdd/ReadVariableOp¢#lstm_cell_334/MatMul/ReadVariableOp¢%lstm_cell_334/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_334/MatMul/ReadVariableOpReadVariableOp,lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_334/MatMulMatMulstrided_slice_2:output:0+lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_334/MatMul_1MatMulzeros:output:0-lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_334/addAddV2lstm_cell_334/MatMul:product:0 lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_334/BiasAddBiasAddlstm_cell_334/add:z:0,lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_334/splitSplit&lstm_cell_334/split/split_dim:output:0lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_334/SigmoidSigmoidlstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_1Sigmoidlstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_334/mulMullstm_cell_334/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_334/ReluRelulstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_1Mullstm_cell_334/Sigmoid:y:0 lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_334/add_1AddV2lstm_cell_334/mul:z:0lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_2Sigmoidlstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_334/Relu_1Relulstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_2Mullstm_cell_334/Sigmoid_2:y:0"lstm_cell_334/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_334_matmul_readvariableop_resource.lstm_cell_334_matmul_1_readvariableop_resource-lstm_cell_334_biasadd_readvariableop_resource*
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
while_body_2030823*
condR
while_cond_2030822*K
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
NoOpNoOp%^lstm_cell_334/BiasAdd/ReadVariableOp$^lstm_cell_334/MatMul/ReadVariableOp&^lstm_cell_334/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_334/BiasAdd/ReadVariableOp$lstm_cell_334/BiasAdd/ReadVariableOp2J
#lstm_cell_334/MatMul/ReadVariableOp#lstm_cell_334/MatMul/ReadVariableOp2N
%lstm_cell_334/MatMul_1/ReadVariableOp%lstm_cell_334/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ì
õ
/__inference_lstm_cell_335_layer_call_fn_2032184

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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027703o
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

¶
)__inference_lstm_75_layer_call_fn_2030137

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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028135s
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
ï
ø
/__inference_lstm_cell_333_layer_call_fn_2032005

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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027149o
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2032069

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
áJ
¢
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030720

inputs?
,lstm_cell_333_matmul_readvariableop_resource:	A
.lstm_cell_333_matmul_1_readvariableop_resource:	d<
-lstm_cell_333_biasadd_readvariableop_resource:	
identity¢$lstm_cell_333/BiasAdd/ReadVariableOp¢#lstm_cell_333/MatMul/ReadVariableOp¢%lstm_cell_333/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_333/MatMul/ReadVariableOpReadVariableOp,lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_333/MatMulMatMulstrided_slice_2:output:0+lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_333/MatMul_1MatMulzeros:output:0-lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_333/addAddV2lstm_cell_333/MatMul:product:0 lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_333/BiasAddBiasAddlstm_cell_333/add:z:0,lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_333/splitSplit&lstm_cell_333/split/split_dim:output:0lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_333/SigmoidSigmoidlstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_1Sigmoidlstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_333/mulMullstm_cell_333/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_333/ReluRelulstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_1Mullstm_cell_333/Sigmoid:y:0 lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_333/add_1AddV2lstm_cell_333/mul:z:0lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_2Sigmoidlstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_333/Relu_1Relulstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_2Mullstm_cell_333/Sigmoid_2:y:0"lstm_cell_333/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_333_matmul_readvariableop_resource.lstm_cell_333_matmul_1_readvariableop_resource-lstm_cell_333_biasadd_readvariableop_resource*
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
while_body_2030636*
condR
while_cond_2030635*K
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
NoOpNoOp%^lstm_cell_333/BiasAdd/ReadVariableOp$^lstm_cell_333/MatMul/ReadVariableOp&^lstm_cell_333/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_333/BiasAdd/ReadVariableOp$lstm_cell_333/BiasAdd/ReadVariableOp2J
#lstm_cell_333/MatMul/ReadVariableOp#lstm_cell_333/MatMul/ReadVariableOp2N
%lstm_cell_333/MatMul_1/ReadVariableOp%lstm_cell_333/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

J__inference_sequential_25_layer_call_and_return_conditional_losses_2030104

inputsG
4lstm_75_lstm_cell_333_matmul_readvariableop_resource:	I
6lstm_75_lstm_cell_333_matmul_1_readvariableop_resource:	dD
5lstm_75_lstm_cell_333_biasadd_readvariableop_resource:	G
4lstm_76_lstm_cell_334_matmul_readvariableop_resource:	dÈI
6lstm_76_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈD
5lstm_76_lstm_cell_334_biasadd_readvariableop_resource:	ÈF
4lstm_77_lstm_cell_335_matmul_readvariableop_resource:2(H
6lstm_77_lstm_cell_335_matmul_1_readvariableop_resource:
(C
5lstm_77_lstm_cell_335_biasadd_readvariableop_resource:(9
'dense_25_matmul_readvariableop_resource:
6
(dense_25_biasadd_readvariableop_resource:
identity¢dense_25/BiasAdd/ReadVariableOp¢dense_25/MatMul/ReadVariableOp¢,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp¢+lstm_75/lstm_cell_333/MatMul/ReadVariableOp¢-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp¢lstm_75/while¢,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp¢+lstm_76/lstm_cell_334/MatMul/ReadVariableOp¢-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp¢lstm_76/while¢,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp¢+lstm_77/lstm_cell_335/MatMul/ReadVariableOp¢-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp¢lstm_77/whileC
lstm_75/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_75/strided_sliceStridedSlicelstm_75/Shape:output:0$lstm_75/strided_slice/stack:output:0&lstm_75/strided_slice/stack_1:output:0&lstm_75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_75/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_75/zeros/packedPacklstm_75/strided_slice:output:0lstm_75/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_75/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_75/zerosFilllstm_75/zeros/packed:output:0lstm_75/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_75/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_75/zeros_1/packedPacklstm_75/strided_slice:output:0!lstm_75/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_75/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_75/zeros_1Filllstm_75/zeros_1/packed:output:0lstm_75/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_75/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_75/transpose	Transposeinputslstm_75/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_75/Shape_1Shapelstm_75/transpose:y:0*
T0*
_output_shapes
:g
lstm_75/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_75/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_75/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_75/strided_slice_1StridedSlicelstm_75/Shape_1:output:0&lstm_75/strided_slice_1/stack:output:0(lstm_75/strided_slice_1/stack_1:output:0(lstm_75/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_75/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_75/TensorArrayV2TensorListReserve,lstm_75/TensorArrayV2/element_shape:output:0 lstm_75/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_75/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_75/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_75/transpose:y:0Flstm_75/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_75/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_75/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_75/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_75/strided_slice_2StridedSlicelstm_75/transpose:y:0&lstm_75/strided_slice_2/stack:output:0(lstm_75/strided_slice_2/stack_1:output:0(lstm_75/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_75/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp4lstm_75_lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_75/lstm_cell_333/MatMulMatMul lstm_75/strided_slice_2:output:03lstm_75/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp6lstm_75_lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_75/lstm_cell_333/MatMul_1MatMullstm_75/zeros:output:05lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_75/lstm_cell_333/addAddV2&lstm_75/lstm_cell_333/MatMul:product:0(lstm_75/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp5lstm_75_lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_75/lstm_cell_333/BiasAddBiasAddlstm_75/lstm_cell_333/add:z:04lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_75/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_75/lstm_cell_333/splitSplit.lstm_75/lstm_cell_333/split/split_dim:output:0&lstm_75/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_75/lstm_cell_333/SigmoidSigmoid$lstm_75/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/Sigmoid_1Sigmoid$lstm_75/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/mulMul#lstm_75/lstm_cell_333/Sigmoid_1:y:0lstm_75/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_75/lstm_cell_333/ReluRelu$lstm_75/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_75/lstm_cell_333/mul_1Mul!lstm_75/lstm_cell_333/Sigmoid:y:0(lstm_75/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/add_1AddV2lstm_75/lstm_cell_333/mul:z:0lstm_75/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/lstm_cell_333/Sigmoid_2Sigmoid$lstm_75/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_75/lstm_cell_333/Relu_1Relulstm_75/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_75/lstm_cell_333/mul_2Mul#lstm_75/lstm_cell_333/Sigmoid_2:y:0*lstm_75/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_75/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_75/TensorArrayV2_1TensorListReserve.lstm_75/TensorArrayV2_1/element_shape:output:0 lstm_75/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_75/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_75/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_75/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_75/whileWhile#lstm_75/while/loop_counter:output:0)lstm_75/while/maximum_iterations:output:0lstm_75/time:output:0 lstm_75/TensorArrayV2_1:handle:0lstm_75/zeros:output:0lstm_75/zeros_1:output:0 lstm_75/strided_slice_1:output:0?lstm_75/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_75_lstm_cell_333_matmul_readvariableop_resource6lstm_75_lstm_cell_333_matmul_1_readvariableop_resource5lstm_75_lstm_cell_333_biasadd_readvariableop_resource*
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
lstm_75_while_body_2029736*&
condR
lstm_75_while_cond_2029735*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_75/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_75/TensorArrayV2Stack/TensorListStackTensorListStacklstm_75/while:output:3Alstm_75/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_75/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_75/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_75/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_75/strided_slice_3StridedSlice3lstm_75/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_75/strided_slice_3/stack:output:0(lstm_75/strided_slice_3/stack_1:output:0(lstm_75/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_75/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_75/transpose_1	Transpose3lstm_75/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_75/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_75/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_76/ShapeShapelstm_75/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_76/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_76/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_76/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_76/strided_sliceStridedSlicelstm_76/Shape:output:0$lstm_76/strided_slice/stack:output:0&lstm_76/strided_slice/stack_1:output:0&lstm_76/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_76/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_76/zeros/packedPacklstm_76/strided_slice:output:0lstm_76/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_76/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_76/zerosFilllstm_76/zeros/packed:output:0lstm_76/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_76/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_76/zeros_1/packedPacklstm_76/strided_slice:output:0!lstm_76/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_76/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_76/zeros_1Filllstm_76/zeros_1/packed:output:0lstm_76/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_76/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_76/transpose	Transposelstm_75/transpose_1:y:0lstm_76/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_76/Shape_1Shapelstm_76/transpose:y:0*
T0*
_output_shapes
:g
lstm_76/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_76/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_76/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_76/strided_slice_1StridedSlicelstm_76/Shape_1:output:0&lstm_76/strided_slice_1/stack:output:0(lstm_76/strided_slice_1/stack_1:output:0(lstm_76/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_76/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_76/TensorArrayV2TensorListReserve,lstm_76/TensorArrayV2/element_shape:output:0 lstm_76/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_76/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_76/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_76/transpose:y:0Flstm_76/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_76/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_76/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_76/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_76/strided_slice_2StridedSlicelstm_76/transpose:y:0&lstm_76/strided_slice_2/stack:output:0(lstm_76/strided_slice_2/stack_1:output:0(lstm_76/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_76/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4lstm_76_lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_76/lstm_cell_334/MatMulMatMul lstm_76/strided_slice_2:output:03lstm_76/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6lstm_76_lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_76/lstm_cell_334/MatMul_1MatMullstm_76/zeros:output:05lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_76/lstm_cell_334/addAddV2&lstm_76/lstm_cell_334/MatMul:product:0(lstm_76/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5lstm_76_lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_76/lstm_cell_334/BiasAddBiasAddlstm_76/lstm_cell_334/add:z:04lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_76/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_76/lstm_cell_334/splitSplit.lstm_76/lstm_cell_334/split/split_dim:output:0&lstm_76/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_76/lstm_cell_334/SigmoidSigmoid$lstm_76/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/Sigmoid_1Sigmoid$lstm_76/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/mulMul#lstm_76/lstm_cell_334/Sigmoid_1:y:0lstm_76/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_76/lstm_cell_334/ReluRelu$lstm_76/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_76/lstm_cell_334/mul_1Mul!lstm_76/lstm_cell_334/Sigmoid:y:0(lstm_76/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/add_1AddV2lstm_76/lstm_cell_334/mul:z:0lstm_76/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/lstm_cell_334/Sigmoid_2Sigmoid$lstm_76/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_76/lstm_cell_334/Relu_1Relulstm_76/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_76/lstm_cell_334/mul_2Mul#lstm_76/lstm_cell_334/Sigmoid_2:y:0*lstm_76/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_76/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_76/TensorArrayV2_1TensorListReserve.lstm_76/TensorArrayV2_1/element_shape:output:0 lstm_76/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_76/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_76/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_76/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_76/whileWhile#lstm_76/while/loop_counter:output:0)lstm_76/while/maximum_iterations:output:0lstm_76/time:output:0 lstm_76/TensorArrayV2_1:handle:0lstm_76/zeros:output:0lstm_76/zeros_1:output:0 lstm_76/strided_slice_1:output:0?lstm_76/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_76_lstm_cell_334_matmul_readvariableop_resource6lstm_76_lstm_cell_334_matmul_1_readvariableop_resource5lstm_76_lstm_cell_334_biasadd_readvariableop_resource*
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
lstm_76_while_body_2029875*&
condR
lstm_76_while_cond_2029874*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_76/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_76/TensorArrayV2Stack/TensorListStackTensorListStacklstm_76/while:output:3Alstm_76/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_76/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_76/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_76/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_76/strided_slice_3StridedSlice3lstm_76/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_76/strided_slice_3/stack:output:0(lstm_76/strided_slice_3/stack_1:output:0(lstm_76/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_76/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_76/transpose_1	Transpose3lstm_76/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_76/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_76/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_77/ShapeShapelstm_76/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_77/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_77/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_77/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_77/strided_sliceStridedSlicelstm_77/Shape:output:0$lstm_77/strided_slice/stack:output:0&lstm_77/strided_slice/stack_1:output:0&lstm_77/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_77/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_77/zeros/packedPacklstm_77/strided_slice:output:0lstm_77/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_77/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_77/zerosFilllstm_77/zeros/packed:output:0lstm_77/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_77/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_77/zeros_1/packedPacklstm_77/strided_slice:output:0!lstm_77/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_77/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_77/zeros_1Filllstm_77/zeros_1/packed:output:0lstm_77/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_77/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_77/transpose	Transposelstm_76/transpose_1:y:0lstm_77/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_77/Shape_1Shapelstm_77/transpose:y:0*
T0*
_output_shapes
:g
lstm_77/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_77/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_77/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_77/strided_slice_1StridedSlicelstm_77/Shape_1:output:0&lstm_77/strided_slice_1/stack:output:0(lstm_77/strided_slice_1/stack_1:output:0(lstm_77/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_77/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_77/TensorArrayV2TensorListReserve,lstm_77/TensorArrayV2/element_shape:output:0 lstm_77/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_77/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_77/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_77/transpose:y:0Flstm_77/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_77/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_77/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_77/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_77/strided_slice_2StridedSlicelstm_77/transpose:y:0&lstm_77/strided_slice_2/stack:output:0(lstm_77/strided_slice_2/stack_1:output:0(lstm_77/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_77/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4lstm_77_lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_77/lstm_cell_335/MatMulMatMul lstm_77/strided_slice_2:output:03lstm_77/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6lstm_77_lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_77/lstm_cell_335/MatMul_1MatMullstm_77/zeros:output:05lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_77/lstm_cell_335/addAddV2&lstm_77/lstm_cell_335/MatMul:product:0(lstm_77/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5lstm_77_lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_77/lstm_cell_335/BiasAddBiasAddlstm_77/lstm_cell_335/add:z:04lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_77/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_77/lstm_cell_335/splitSplit.lstm_77/lstm_cell_335/split/split_dim:output:0&lstm_77/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_77/lstm_cell_335/SigmoidSigmoid$lstm_77/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/Sigmoid_1Sigmoid$lstm_77/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/mulMul#lstm_77/lstm_cell_335/Sigmoid_1:y:0lstm_77/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_77/lstm_cell_335/ReluRelu$lstm_77/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_77/lstm_cell_335/mul_1Mul!lstm_77/lstm_cell_335/Sigmoid:y:0(lstm_77/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/add_1AddV2lstm_77/lstm_cell_335/mul:z:0lstm_77/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/lstm_cell_335/Sigmoid_2Sigmoid$lstm_77/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_77/lstm_cell_335/Relu_1Relulstm_77/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_77/lstm_cell_335/mul_2Mul#lstm_77/lstm_cell_335/Sigmoid_2:y:0*lstm_77/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_77/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_77/TensorArrayV2_1TensorListReserve.lstm_77/TensorArrayV2_1/element_shape:output:0 lstm_77/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_77/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_77/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_77/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_77/whileWhile#lstm_77/while/loop_counter:output:0)lstm_77/while/maximum_iterations:output:0lstm_77/time:output:0 lstm_77/TensorArrayV2_1:handle:0lstm_77/zeros:output:0lstm_77/zeros_1:output:0 lstm_77/strided_slice_1:output:0?lstm_77/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_77_lstm_cell_335_matmul_readvariableop_resource6lstm_77_lstm_cell_335_matmul_1_readvariableop_resource5lstm_77_lstm_cell_335_biasadd_readvariableop_resource*
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
lstm_77_while_body_2030014*&
condR
lstm_77_while_cond_2030013*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_77/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_77/TensorArrayV2Stack/TensorListStackTensorListStacklstm_77/while:output:3Alstm_77/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_77/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_77/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_77/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_77/strided_slice_3StridedSlice3lstm_77/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_77/strided_slice_3/stack:output:0(lstm_77/strided_slice_3/stack_1:output:0(lstm_77/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_77/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_77/transpose_1	Transpose3lstm_77/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_77/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_77/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_25/MatMulMatMul lstm_77/strided_slice_3:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_25/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp-^lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp,^lstm_75/lstm_cell_333/MatMul/ReadVariableOp.^lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp^lstm_75/while-^lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp,^lstm_76/lstm_cell_334/MatMul/ReadVariableOp.^lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp^lstm_76/while-^lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp,^lstm_77/lstm_cell_335/MatMul/ReadVariableOp.^lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp^lstm_77/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2\
,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp,lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp2Z
+lstm_75/lstm_cell_333/MatMul/ReadVariableOp+lstm_75/lstm_cell_333/MatMul/ReadVariableOp2^
-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp-lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp2
lstm_75/whilelstm_75/while2\
,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp,lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp2Z
+lstm_76/lstm_cell_334/MatMul/ReadVariableOp+lstm_76/lstm_cell_334/MatMul/ReadVariableOp2^
-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp-lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp2
lstm_76/whilelstm_76/while2\
,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp,lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp2Z
+lstm_77/lstm_cell_335/MatMul/ReadVariableOp+lstm_77/lstm_cell_335/MatMul/ReadVariableOp2^
-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp-lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp2
lstm_77/whilelstm_77/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÜJ

D__inference_lstm_77_layer_call_and_return_conditional_losses_2028651

inputs>
,lstm_cell_335_matmul_readvariableop_resource:2(@
.lstm_cell_335_matmul_1_readvariableop_resource:
(;
-lstm_cell_335_biasadd_readvariableop_resource:(
identity¢$lstm_cell_335/BiasAdd/ReadVariableOp¢#lstm_cell_335/MatMul/ReadVariableOp¢%lstm_cell_335/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_335/MatMul/ReadVariableOpReadVariableOp,lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_335/MatMulMatMulstrided_slice_2:output:0+lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_335/MatMul_1MatMulzeros:output:0-lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_335/addAddV2lstm_cell_335/MatMul:product:0 lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_335/BiasAddBiasAddlstm_cell_335/add:z:0,lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_335/splitSplit&lstm_cell_335/split/split_dim:output:0lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_335/SigmoidSigmoidlstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_1Sigmoidlstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_335/mulMullstm_cell_335/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_335/ReluRelulstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_1Mullstm_cell_335/Sigmoid:y:0 lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_335/add_1AddV2lstm_cell_335/mul:z:0lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_2Sigmoidlstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_335/Relu_1Relulstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_2Mullstm_cell_335/Sigmoid_2:y:0"lstm_cell_335/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_335_matmul_readvariableop_resource.lstm_cell_335_matmul_1_readvariableop_resource-lstm_cell_335_biasadd_readvariableop_resource*
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
while_body_2028567*
condR
while_cond_2028566*K
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
NoOpNoOp%^lstm_cell_335/BiasAdd/ReadVariableOp$^lstm_cell_335/MatMul/ReadVariableOp&^lstm_cell_335/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_335/BiasAdd/ReadVariableOp$lstm_cell_335/BiasAdd/ReadVariableOp2J
#lstm_cell_335/MatMul/ReadVariableOp#lstm_cell_335/MatMul/ReadVariableOp2N
%lstm_cell_335/MatMul_1/ReadVariableOp%lstm_cell_335/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
B
Ú

lstm_75_while_body_2029736,
(lstm_75_while_lstm_75_while_loop_counter2
.lstm_75_while_lstm_75_while_maximum_iterations
lstm_75_while_placeholder
lstm_75_while_placeholder_1
lstm_75_while_placeholder_2
lstm_75_while_placeholder_3+
'lstm_75_while_lstm_75_strided_slice_1_0g
clstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0:	Q
>lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dL
=lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0:	
lstm_75_while_identity
lstm_75_while_identity_1
lstm_75_while_identity_2
lstm_75_while_identity_3
lstm_75_while_identity_4
lstm_75_while_identity_5)
%lstm_75_while_lstm_75_strided_slice_1e
alstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensorM
:lstm_75_while_lstm_cell_333_matmul_readvariableop_resource:	O
<lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource:	dJ
;lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource:	¢2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp¢1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp¢3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp
?lstm_75/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_75/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensor_0lstm_75_while_placeholderHlstm_75/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp<lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_75/while/lstm_cell_333/MatMulMatMul8lstm_75/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp>lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_75/while/lstm_cell_333/MatMul_1MatMullstm_75_while_placeholder_2;lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_75/while/lstm_cell_333/addAddV2,lstm_75/while/lstm_cell_333/MatMul:product:0.lstm_75/while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp=lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_75/while/lstm_cell_333/BiasAddBiasAdd#lstm_75/while/lstm_cell_333/add:z:0:lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_75/while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_75/while/lstm_cell_333/splitSplit4lstm_75/while/lstm_cell_333/split/split_dim:output:0,lstm_75/while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_75/while/lstm_cell_333/SigmoidSigmoid*lstm_75/while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_75/while/lstm_cell_333/Sigmoid_1Sigmoid*lstm_75/while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_75/while/lstm_cell_333/mulMul)lstm_75/while/lstm_cell_333/Sigmoid_1:y:0lstm_75_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_75/while/lstm_cell_333/ReluRelu*lstm_75/while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_75/while/lstm_cell_333/mul_1Mul'lstm_75/while/lstm_cell_333/Sigmoid:y:0.lstm_75/while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_75/while/lstm_cell_333/add_1AddV2#lstm_75/while/lstm_cell_333/mul:z:0%lstm_75/while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_75/while/lstm_cell_333/Sigmoid_2Sigmoid*lstm_75/while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_75/while/lstm_cell_333/Relu_1Relu%lstm_75/while/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_75/while/lstm_cell_333/mul_2Mul)lstm_75/while/lstm_cell_333/Sigmoid_2:y:00lstm_75/while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_75/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_75_while_placeholder_1lstm_75_while_placeholder%lstm_75/while/lstm_cell_333/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_75/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_75/while/addAddV2lstm_75_while_placeholderlstm_75/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_75/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_75/while/add_1AddV2(lstm_75_while_lstm_75_while_loop_counterlstm_75/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_75/while/IdentityIdentitylstm_75/while/add_1:z:0^lstm_75/while/NoOp*
T0*
_output_shapes
: 
lstm_75/while/Identity_1Identity.lstm_75_while_lstm_75_while_maximum_iterations^lstm_75/while/NoOp*
T0*
_output_shapes
: q
lstm_75/while/Identity_2Identitylstm_75/while/add:z:0^lstm_75/while/NoOp*
T0*
_output_shapes
: 
lstm_75/while/Identity_3IdentityBlstm_75/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_75/while/NoOp*
T0*
_output_shapes
: 
lstm_75/while/Identity_4Identity%lstm_75/while/lstm_cell_333/mul_2:z:0^lstm_75/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/while/Identity_5Identity%lstm_75/while/lstm_cell_333/add_1:z:0^lstm_75/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_75/while/NoOpNoOp3^lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2^lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp4^lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_75_while_identitylstm_75/while/Identity:output:0"=
lstm_75_while_identity_1!lstm_75/while/Identity_1:output:0"=
lstm_75_while_identity_2!lstm_75/while/Identity_2:output:0"=
lstm_75_while_identity_3!lstm_75/while/Identity_3:output:0"=
lstm_75_while_identity_4!lstm_75/while/Identity_4:output:0"=
lstm_75_while_identity_5!lstm_75/while/Identity_5:output:0"P
%lstm_75_while_lstm_75_strided_slice_1'lstm_75_while_lstm_75_strided_slice_1_0"|
;lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource=lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0"~
<lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource>lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0"z
:lstm_75_while_lstm_cell_333_matmul_readvariableop_resource<lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0"È
alstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensorclstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2f
1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp2j
3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2027557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2027557___redundant_placeholder05
1while_while_cond_2027557___redundant_placeholder15
1while_while_cond_2027557___redundant_placeholder25
1while_while_cond_2027557___redundant_placeholder3
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

µ
)__inference_lstm_77_layer_call_fn_2031347
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2027786o
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
§8

D__inference_lstm_77_layer_call_and_return_conditional_losses_2027786

inputs'
lstm_cell_335_2027704:2('
lstm_cell_335_2027706:
(#
lstm_cell_335_2027708:(
identity¢%lstm_cell_335/StatefulPartitionedCall¢while;
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
%lstm_cell_335/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_335_2027704lstm_cell_335_2027706lstm_cell_335_2027708*
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027703n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_335_2027704lstm_cell_335_2027706lstm_cell_335_2027708*
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
while_body_2027717*
condR
while_cond_2027716*K
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
NoOpNoOp&^lstm_cell_335/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_335/StatefulPartitionedCall%lstm_cell_335/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_2028200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2028200___redundant_placeholder05
1while_while_cond_2028200___redundant_placeholder15
1while_while_cond_2028200___redundant_placeholder25
1while_while_cond_2028200___redundant_placeholder3
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
while_cond_2027907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2027907___redundant_placeholder05
1while_while_cond_2027907___redundant_placeholder15
1while_while_cond_2027907___redundant_placeholder25
1while_while_cond_2027907___redundant_placeholder3
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
while_body_2030966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_334_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_334_biasadd_readvariableop_resource:	È¢*while/lstm_cell_334/BiasAdd/ReadVariableOp¢)while/lstm_cell_334/MatMul/ReadVariableOp¢+while/lstm_cell_334/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_334/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_334/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_334/addAddV2$while/lstm_cell_334/MatMul:product:0&while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_334/BiasAddBiasAddwhile/lstm_cell_334/add:z:02while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_334/splitSplit,while/lstm_cell_334/split/split_dim:output:0$while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_334/SigmoidSigmoid"while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_1Sigmoid"while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mulMul!while/lstm_cell_334/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_334/ReluRelu"while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_1Mulwhile/lstm_cell_334/Sigmoid:y:0&while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/add_1AddV2while/lstm_cell_334/mul:z:0while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_2Sigmoid"while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_334/Relu_1Reluwhile/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_2Mul!while/lstm_cell_334/Sigmoid_2:y:0(while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_334/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_334/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_334/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_334/BiasAdd/ReadVariableOp*^while/lstm_cell_334/MatMul/ReadVariableOp,^while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_334_biasadd_readvariableop_resource5while_lstm_cell_334_biasadd_readvariableop_resource_0"n
4while_lstm_cell_334_matmul_1_readvariableop_resource6while_lstm_cell_334_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_334_matmul_readvariableop_resource4while_lstm_cell_334_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_334/BiasAdd/ReadVariableOp*while/lstm_cell_334/BiasAdd/ReadVariableOp2V
)while/lstm_cell_334/MatMul/ReadVariableOp)while/lstm_cell_334/MatMul/ReadVariableOp2Z
+while/lstm_cell_334/MatMul_1/ReadVariableOp+while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_76_while_cond_2029874,
(lstm_76_while_lstm_76_while_loop_counter2
.lstm_76_while_lstm_76_while_maximum_iterations
lstm_76_while_placeholder
lstm_76_while_placeholder_1
lstm_76_while_placeholder_2
lstm_76_while_placeholder_3.
*lstm_76_while_less_lstm_76_strided_slice_1E
Alstm_76_while_lstm_76_while_cond_2029874___redundant_placeholder0E
Alstm_76_while_lstm_76_while_cond_2029874___redundant_placeholder1E
Alstm_76_while_lstm_76_while_cond_2029874___redundant_placeholder2E
Alstm_76_while_lstm_76_while_cond_2029874___redundant_placeholder3
lstm_76_while_identity

lstm_76/while/LessLesslstm_76_while_placeholder*lstm_76_while_less_lstm_76_strided_slice_1*
T0*
_output_shapes
: [
lstm_76/while/IdentityIdentitylstm_76/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_76_while_identitylstm_76/while/Identity:output:0*(
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
ÊR

(sequential_25_lstm_76_while_body_2026707H
Dsequential_25_lstm_76_while_sequential_25_lstm_76_while_loop_counterN
Jsequential_25_lstm_76_while_sequential_25_lstm_76_while_maximum_iterations+
'sequential_25_lstm_76_while_placeholder-
)sequential_25_lstm_76_while_placeholder_1-
)sequential_25_lstm_76_while_placeholder_2-
)sequential_25_lstm_76_while_placeholder_3G
Csequential_25_lstm_76_while_sequential_25_lstm_76_strided_slice_1_0
sequential_25_lstm_76_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_76_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_25_lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈ_
Lsequential_25_lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_25_lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0:	È(
$sequential_25_lstm_76_while_identity*
&sequential_25_lstm_76_while_identity_1*
&sequential_25_lstm_76_while_identity_2*
&sequential_25_lstm_76_while_identity_3*
&sequential_25_lstm_76_while_identity_4*
&sequential_25_lstm_76_while_identity_5E
Asequential_25_lstm_76_while_sequential_25_lstm_76_strided_slice_1
}sequential_25_lstm_76_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_76_tensorarrayunstack_tensorlistfromtensor[
Hsequential_25_lstm_76_while_lstm_cell_334_matmul_readvariableop_resource:	dÈ]
Jsequential_25_lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈX
Isequential_25_lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource:	È¢@sequential_25/lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp¢?sequential_25/lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp¢Asequential_25/lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp
Msequential_25/lstm_76/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_25/lstm_76/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_25_lstm_76_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_76_tensorarrayunstack_tensorlistfromtensor_0'sequential_25_lstm_76_while_placeholderVsequential_25/lstm_76/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0Ë
?sequential_25/lstm_76/while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOpJsequential_25_lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0þ
0sequential_25/lstm_76/while/lstm_cell_334/MatMulMatMulFsequential_25/lstm_76/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_25/lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÏ
Asequential_25/lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOpLsequential_25_lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0å
2sequential_25/lstm_76/while/lstm_cell_334/MatMul_1MatMul)sequential_25_lstm_76_while_placeholder_2Isequential_25/lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈã
-sequential_25/lstm_76/while/lstm_cell_334/addAddV2:sequential_25/lstm_76/while/lstm_cell_334/MatMul:product:0<sequential_25/lstm_76/while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÉ
@sequential_25/lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOpKsequential_25_lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_25/lstm_76/while/lstm_cell_334/BiasAddBiasAdd1sequential_25/lstm_76/while/lstm_cell_334/add:z:0Hsequential_25/lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ{
9sequential_25/lstm_76/while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_25/lstm_76/while/lstm_cell_334/splitSplitBsequential_25/lstm_76/while/lstm_cell_334/split/split_dim:output:0:sequential_25/lstm_76/while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¨
1sequential_25/lstm_76/while/lstm_cell_334/SigmoidSigmoid8sequential_25/lstm_76/while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_25/lstm_76/while/lstm_cell_334/Sigmoid_1Sigmoid8sequential_25/lstm_76/while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ê
-sequential_25/lstm_76/while/lstm_cell_334/mulMul7sequential_25/lstm_76/while/lstm_cell_334/Sigmoid_1:y:0)sequential_25_lstm_76_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
.sequential_25/lstm_76/while/lstm_cell_334/ReluRelu8sequential_25/lstm_76/while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ý
/sequential_25/lstm_76/while/lstm_cell_334/mul_1Mul5sequential_25/lstm_76/while/lstm_cell_334/Sigmoid:y:0<sequential_25/lstm_76/while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ò
/sequential_25/lstm_76/while/lstm_cell_334/add_1AddV21sequential_25/lstm_76/while/lstm_cell_334/mul:z:03sequential_25/lstm_76/while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_25/lstm_76/while/lstm_cell_334/Sigmoid_2Sigmoid8sequential_25/lstm_76/while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
0sequential_25/lstm_76/while/lstm_cell_334/Relu_1Relu3sequential_25/lstm_76/while/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2á
/sequential_25/lstm_76/while/lstm_cell_334/mul_2Mul7sequential_25/lstm_76/while/lstm_cell_334/Sigmoid_2:y:0>sequential_25/lstm_76/while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_25/lstm_76/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_25_lstm_76_while_placeholder_1'sequential_25_lstm_76_while_placeholder3sequential_25/lstm_76/while/lstm_cell_334/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_25/lstm_76/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_25/lstm_76/while/addAddV2'sequential_25_lstm_76_while_placeholder*sequential_25/lstm_76/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_25/lstm_76/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_25/lstm_76/while/add_1AddV2Dsequential_25_lstm_76_while_sequential_25_lstm_76_while_loop_counter,sequential_25/lstm_76/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_25/lstm_76/while/IdentityIdentity%sequential_25/lstm_76/while/add_1:z:0!^sequential_25/lstm_76/while/NoOp*
T0*
_output_shapes
: Â
&sequential_25/lstm_76/while/Identity_1IdentityJsequential_25_lstm_76_while_sequential_25_lstm_76_while_maximum_iterations!^sequential_25/lstm_76/while/NoOp*
T0*
_output_shapes
: 
&sequential_25/lstm_76/while/Identity_2Identity#sequential_25/lstm_76/while/add:z:0!^sequential_25/lstm_76/while/NoOp*
T0*
_output_shapes
: È
&sequential_25/lstm_76/while/Identity_3IdentityPsequential_25/lstm_76/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_25/lstm_76/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_25/lstm_76/while/Identity_4Identity3sequential_25/lstm_76/while/lstm_cell_334/mul_2:z:0!^sequential_25/lstm_76/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¼
&sequential_25/lstm_76/while/Identity_5Identity3sequential_25/lstm_76/while/lstm_cell_334/add_1:z:0!^sequential_25/lstm_76/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2«
 sequential_25/lstm_76/while/NoOpNoOpA^sequential_25/lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp@^sequential_25/lstm_76/while/lstm_cell_334/MatMul/ReadVariableOpB^sequential_25/lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_25_lstm_76_while_identity-sequential_25/lstm_76/while/Identity:output:0"Y
&sequential_25_lstm_76_while_identity_1/sequential_25/lstm_76/while/Identity_1:output:0"Y
&sequential_25_lstm_76_while_identity_2/sequential_25/lstm_76/while/Identity_2:output:0"Y
&sequential_25_lstm_76_while_identity_3/sequential_25/lstm_76/while/Identity_3:output:0"Y
&sequential_25_lstm_76_while_identity_4/sequential_25/lstm_76/while/Identity_4:output:0"Y
&sequential_25_lstm_76_while_identity_5/sequential_25/lstm_76/while/Identity_5:output:0"
Isequential_25_lstm_76_while_lstm_cell_334_biasadd_readvariableop_resourceKsequential_25_lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0"
Jsequential_25_lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resourceLsequential_25_lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0"
Hsequential_25_lstm_76_while_lstm_cell_334_matmul_readvariableop_resourceJsequential_25_lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0"
Asequential_25_lstm_76_while_sequential_25_lstm_76_strided_slice_1Csequential_25_lstm_76_while_sequential_25_lstm_76_strided_slice_1_0"
}sequential_25_lstm_76_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_76_tensorarrayunstack_tensorlistfromtensorsequential_25_lstm_76_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_76_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
@sequential_25/lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp@sequential_25/lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2
?sequential_25/lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp?sequential_25/lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp2
Asequential_25/lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOpAsequential_25/lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_77_while_body_2030014,
(lstm_77_while_lstm_77_while_loop_counter2
.lstm_77_while_lstm_77_while_maximum_iterations
lstm_77_while_placeholder
lstm_77_while_placeholder_1
lstm_77_while_placeholder_2
lstm_77_while_placeholder_3+
'lstm_77_while_lstm_77_strided_slice_1_0g
clstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0:2(P
>lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(K
=lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0:(
lstm_77_while_identity
lstm_77_while_identity_1
lstm_77_while_identity_2
lstm_77_while_identity_3
lstm_77_while_identity_4
lstm_77_while_identity_5)
%lstm_77_while_lstm_77_strided_slice_1e
alstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensorL
:lstm_77_while_lstm_cell_335_matmul_readvariableop_resource:2(N
<lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource:
(I
;lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource:(¢2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp¢1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp¢3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp
?lstm_77/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_77/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensor_0lstm_77_while_placeholderHlstm_77/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp<lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_77/while/lstm_cell_335/MatMulMatMul8lstm_77/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp>lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_77/while/lstm_cell_335/MatMul_1MatMullstm_77_while_placeholder_2;lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_77/while/lstm_cell_335/addAddV2,lstm_77/while/lstm_cell_335/MatMul:product:0.lstm_77/while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp=lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_77/while/lstm_cell_335/BiasAddBiasAdd#lstm_77/while/lstm_cell_335/add:z:0:lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_77/while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_77/while/lstm_cell_335/splitSplit4lstm_77/while/lstm_cell_335/split/split_dim:output:0,lstm_77/while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_77/while/lstm_cell_335/SigmoidSigmoid*lstm_77/while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_77/while/lstm_cell_335/Sigmoid_1Sigmoid*lstm_77/while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_77/while/lstm_cell_335/mulMul)lstm_77/while/lstm_cell_335/Sigmoid_1:y:0lstm_77_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_77/while/lstm_cell_335/ReluRelu*lstm_77/while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_77/while/lstm_cell_335/mul_1Mul'lstm_77/while/lstm_cell_335/Sigmoid:y:0.lstm_77/while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_77/while/lstm_cell_335/add_1AddV2#lstm_77/while/lstm_cell_335/mul:z:0%lstm_77/while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_77/while/lstm_cell_335/Sigmoid_2Sigmoid*lstm_77/while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_77/while/lstm_cell_335/Relu_1Relu%lstm_77/while/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_77/while/lstm_cell_335/mul_2Mul)lstm_77/while/lstm_cell_335/Sigmoid_2:y:00lstm_77/while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_77/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_77_while_placeholder_1lstm_77_while_placeholder%lstm_77/while/lstm_cell_335/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_77/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_77/while/addAddV2lstm_77_while_placeholderlstm_77/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_77/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_77/while/add_1AddV2(lstm_77_while_lstm_77_while_loop_counterlstm_77/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_77/while/IdentityIdentitylstm_77/while/add_1:z:0^lstm_77/while/NoOp*
T0*
_output_shapes
: 
lstm_77/while/Identity_1Identity.lstm_77_while_lstm_77_while_maximum_iterations^lstm_77/while/NoOp*
T0*
_output_shapes
: q
lstm_77/while/Identity_2Identitylstm_77/while/add:z:0^lstm_77/while/NoOp*
T0*
_output_shapes
: 
lstm_77/while/Identity_3IdentityBlstm_77/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_77/while/NoOp*
T0*
_output_shapes
: 
lstm_77/while/Identity_4Identity%lstm_77/while/lstm_cell_335/mul_2:z:0^lstm_77/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/while/Identity_5Identity%lstm_77/while/lstm_cell_335/add_1:z:0^lstm_77/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_77/while/NoOpNoOp3^lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2^lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp4^lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_77_while_identitylstm_77/while/Identity:output:0"=
lstm_77_while_identity_1!lstm_77/while/Identity_1:output:0"=
lstm_77_while_identity_2!lstm_77/while/Identity_2:output:0"=
lstm_77_while_identity_3!lstm_77/while/Identity_3:output:0"=
lstm_77_while_identity_4!lstm_77/while/Identity_4:output:0"=
lstm_77_while_identity_5!lstm_77/while/Identity_5:output:0"P
%lstm_77_while_lstm_77_strided_slice_1'lstm_77_while_lstm_77_strided_slice_1_0"|
;lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource=lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0"~
<lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource>lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0"z
:lstm_77_while_lstm_cell_335_matmul_readvariableop_resource<lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0"È
alstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensorclstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2f
1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp2j
3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2028350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2028350___redundant_placeholder05
1while_while_cond_2028350___redundant_placeholder15
1while_while_cond_2028350___redundant_placeholder25
1while_while_cond_2028350___redundant_placeholder3
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


è
lstm_77_while_cond_2030013,
(lstm_77_while_lstm_77_while_loop_counter2
.lstm_77_while_lstm_77_while_maximum_iterations
lstm_77_while_placeholder
lstm_77_while_placeholder_1
lstm_77_while_placeholder_2
lstm_77_while_placeholder_3.
*lstm_77_while_less_lstm_77_strided_slice_1E
Alstm_77_while_lstm_77_while_cond_2030013___redundant_placeholder0E
Alstm_77_while_lstm_77_while_cond_2030013___redundant_placeholder1E
Alstm_77_while_lstm_77_while_cond_2030013___redundant_placeholder2E
Alstm_77_while_lstm_77_while_cond_2030013___redundant_placeholder3
lstm_77_while_identity

lstm_77/while/LessLesslstm_77_while_placeholder*lstm_77_while_less_lstm_77_strided_slice_1*
T0*
_output_shapes
: [
lstm_77/while/IdentityIdentitylstm_77/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_77_while_identitylstm_77/while/Identity:output:0*(
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
while_body_2028567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_335_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_335_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_335_matmul_readvariableop_resource:2(F
4while_lstm_cell_335_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_335_biasadd_readvariableop_resource:(¢*while/lstm_cell_335/BiasAdd/ReadVariableOp¢)while/lstm_cell_335/MatMul/ReadVariableOp¢+while/lstm_cell_335/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_335/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_335/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_335/addAddV2$while/lstm_cell_335/MatMul:product:0&while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_335/BiasAddBiasAddwhile/lstm_cell_335/add:z:02while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_335/splitSplit,while/lstm_cell_335/split/split_dim:output:0$while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_335/SigmoidSigmoid"while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_1Sigmoid"while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mulMul!while/lstm_cell_335/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_335/ReluRelu"while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_1Mulwhile/lstm_cell_335/Sigmoid:y:0&while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/add_1AddV2while/lstm_cell_335/mul:z:0while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_2Sigmoid"while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_335/Relu_1Reluwhile/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_2Mul!while/lstm_cell_335/Sigmoid_2:y:0(while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_335/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_335/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_335/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_335/BiasAdd/ReadVariableOp*^while/lstm_cell_335/MatMul/ReadVariableOp,^while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_335_biasadd_readvariableop_resource5while_lstm_cell_335_biasadd_readvariableop_resource_0"n
4while_lstm_cell_335_matmul_1_readvariableop_resource6while_lstm_cell_335_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_335_matmul_readvariableop_resource4while_lstm_cell_335_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_335/BiasAdd/ReadVariableOp*while/lstm_cell_335/BiasAdd/ReadVariableOp2V
)while/lstm_cell_335/MatMul/ReadVariableOp)while/lstm_cell_335/MatMul/ReadVariableOp2Z
+while/lstm_cell_335/MatMul_1/ReadVariableOp+while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_77_while_body_2029587,
(lstm_77_while_lstm_77_while_loop_counter2
.lstm_77_while_lstm_77_while_maximum_iterations
lstm_77_while_placeholder
lstm_77_while_placeholder_1
lstm_77_while_placeholder_2
lstm_77_while_placeholder_3+
'lstm_77_while_lstm_77_strided_slice_1_0g
clstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0:2(P
>lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(K
=lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0:(
lstm_77_while_identity
lstm_77_while_identity_1
lstm_77_while_identity_2
lstm_77_while_identity_3
lstm_77_while_identity_4
lstm_77_while_identity_5)
%lstm_77_while_lstm_77_strided_slice_1e
alstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensorL
:lstm_77_while_lstm_cell_335_matmul_readvariableop_resource:2(N
<lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource:
(I
;lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource:(¢2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp¢1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp¢3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp
?lstm_77/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_77/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensor_0lstm_77_while_placeholderHlstm_77/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp<lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_77/while/lstm_cell_335/MatMulMatMul8lstm_77/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp>lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_77/while/lstm_cell_335/MatMul_1MatMullstm_77_while_placeholder_2;lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_77/while/lstm_cell_335/addAddV2,lstm_77/while/lstm_cell_335/MatMul:product:0.lstm_77/while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp=lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_77/while/lstm_cell_335/BiasAddBiasAdd#lstm_77/while/lstm_cell_335/add:z:0:lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_77/while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_77/while/lstm_cell_335/splitSplit4lstm_77/while/lstm_cell_335/split/split_dim:output:0,lstm_77/while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_77/while/lstm_cell_335/SigmoidSigmoid*lstm_77/while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_77/while/lstm_cell_335/Sigmoid_1Sigmoid*lstm_77/while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_77/while/lstm_cell_335/mulMul)lstm_77/while/lstm_cell_335/Sigmoid_1:y:0lstm_77_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_77/while/lstm_cell_335/ReluRelu*lstm_77/while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_77/while/lstm_cell_335/mul_1Mul'lstm_77/while/lstm_cell_335/Sigmoid:y:0.lstm_77/while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_77/while/lstm_cell_335/add_1AddV2#lstm_77/while/lstm_cell_335/mul:z:0%lstm_77/while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_77/while/lstm_cell_335/Sigmoid_2Sigmoid*lstm_77/while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_77/while/lstm_cell_335/Relu_1Relu%lstm_77/while/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_77/while/lstm_cell_335/mul_2Mul)lstm_77/while/lstm_cell_335/Sigmoid_2:y:00lstm_77/while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_77/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_77_while_placeholder_1lstm_77_while_placeholder%lstm_77/while/lstm_cell_335/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_77/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_77/while/addAddV2lstm_77_while_placeholderlstm_77/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_77/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_77/while/add_1AddV2(lstm_77_while_lstm_77_while_loop_counterlstm_77/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_77/while/IdentityIdentitylstm_77/while/add_1:z:0^lstm_77/while/NoOp*
T0*
_output_shapes
: 
lstm_77/while/Identity_1Identity.lstm_77_while_lstm_77_while_maximum_iterations^lstm_77/while/NoOp*
T0*
_output_shapes
: q
lstm_77/while/Identity_2Identitylstm_77/while/add:z:0^lstm_77/while/NoOp*
T0*
_output_shapes
: 
lstm_77/while/Identity_3IdentityBlstm_77/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_77/while/NoOp*
T0*
_output_shapes
: 
lstm_77/while/Identity_4Identity%lstm_77/while/lstm_cell_335/mul_2:z:0^lstm_77/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_77/while/Identity_5Identity%lstm_77/while/lstm_cell_335/add_1:z:0^lstm_77/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_77/while/NoOpNoOp3^lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2^lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp4^lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_77_while_identitylstm_77/while/Identity:output:0"=
lstm_77_while_identity_1!lstm_77/while/Identity_1:output:0"=
lstm_77_while_identity_2!lstm_77/while/Identity_2:output:0"=
lstm_77_while_identity_3!lstm_77/while/Identity_3:output:0"=
lstm_77_while_identity_4!lstm_77/while/Identity_4:output:0"=
lstm_77_while_identity_5!lstm_77/while/Identity_5:output:0"P
%lstm_77_while_lstm_77_strided_slice_1'lstm_77_while_lstm_77_strided_slice_1_0"|
;lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource=lstm_77_while_lstm_cell_335_biasadd_readvariableop_resource_0"~
<lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource>lstm_77_while_lstm_cell_335_matmul_1_readvariableop_resource_0"z
:lstm_77_while_lstm_cell_335_matmul_readvariableop_resource<lstm_77_while_lstm_cell_335_matmul_readvariableop_resource_0"È
alstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensorclstm_77_while_tensorarrayv2read_tensorlistgetitem_lstm_77_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2lstm_77/while/lstm_cell_335/BiasAdd/ReadVariableOp2f
1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp1lstm_77/while/lstm_cell_335/MatMul/ReadVariableOp2j
3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp3lstm_77/while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_77_layer_call_fn_2031380

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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2028651o
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
ñ

¢
/__inference_sequential_25_layer_call_fn_2029101
lstm_75_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029049o
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
_user_specified_namelstm_75_input
È	
ö
E__inference_dense_25_layer_call_and_return_conditional_losses_2028453

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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027499

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
«
¸
)__inference_lstm_76_layer_call_fn_2030742
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2027627|
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
öV
é
 __inference__traced_save_2032408
file_prefix.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_75_lstm_cell_75_kernel_read_readvariableopD
@savev2_lstm_75_lstm_cell_75_recurrent_kernel_read_readvariableop8
4savev2_lstm_75_lstm_cell_75_bias_read_readvariableop:
6savev2_lstm_76_lstm_cell_76_kernel_read_readvariableopD
@savev2_lstm_76_lstm_cell_76_recurrent_kernel_read_readvariableop8
4savev2_lstm_76_lstm_cell_76_bias_read_readvariableop:
6savev2_lstm_77_lstm_cell_77_kernel_read_readvariableopD
@savev2_lstm_77_lstm_cell_77_recurrent_kernel_read_readvariableop8
4savev2_lstm_77_lstm_cell_77_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableopA
=savev2_adam_lstm_75_lstm_cell_75_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_75_lstm_cell_75_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_75_lstm_cell_75_bias_m_read_readvariableopA
=savev2_adam_lstm_76_lstm_cell_76_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_76_lstm_cell_76_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_76_lstm_cell_76_bias_m_read_readvariableopA
=savev2_adam_lstm_77_lstm_cell_77_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_77_lstm_cell_77_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_77_lstm_cell_77_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableopA
=savev2_adam_lstm_75_lstm_cell_75_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_75_lstm_cell_75_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_75_lstm_cell_75_bias_v_read_readvariableopA
=savev2_adam_lstm_76_lstm_cell_76_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_76_lstm_cell_76_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_76_lstm_cell_76_bias_v_read_readvariableopA
=savev2_adam_lstm_77_lstm_cell_77_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_77_lstm_cell_77_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_77_lstm_cell_77_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_75_lstm_cell_75_kernel_read_readvariableop@savev2_lstm_75_lstm_cell_75_recurrent_kernel_read_readvariableop4savev2_lstm_75_lstm_cell_75_bias_read_readvariableop6savev2_lstm_76_lstm_cell_76_kernel_read_readvariableop@savev2_lstm_76_lstm_cell_76_recurrent_kernel_read_readvariableop4savev2_lstm_76_lstm_cell_76_bias_read_readvariableop6savev2_lstm_77_lstm_cell_77_kernel_read_readvariableop@savev2_lstm_77_lstm_cell_77_recurrent_kernel_read_readvariableop4savev2_lstm_77_lstm_cell_77_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop=savev2_adam_lstm_75_lstm_cell_75_kernel_m_read_readvariableopGsavev2_adam_lstm_75_lstm_cell_75_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_75_lstm_cell_75_bias_m_read_readvariableop=savev2_adam_lstm_76_lstm_cell_76_kernel_m_read_readvariableopGsavev2_adam_lstm_76_lstm_cell_76_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_76_lstm_cell_76_bias_m_read_readvariableop=savev2_adam_lstm_77_lstm_cell_77_kernel_m_read_readvariableopGsavev2_adam_lstm_77_lstm_cell_77_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_77_lstm_cell_77_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop=savev2_adam_lstm_75_lstm_cell_75_kernel_v_read_readvariableopGsavev2_adam_lstm_75_lstm_cell_75_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_75_lstm_cell_75_bias_v_read_readvariableop=savev2_adam_lstm_76_lstm_cell_76_kernel_v_read_readvariableopGsavev2_adam_lstm_76_lstm_cell_76_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_76_lstm_cell_76_bias_v_read_readvariableop=savev2_adam_lstm_77_lstm_cell_77_kernel_v_read_readvariableopGsavev2_adam_lstm_77_lstm_cell_77_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_77_lstm_cell_77_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ÜJ

D__inference_lstm_77_layer_call_and_return_conditional_losses_2031952

inputs>
,lstm_cell_335_matmul_readvariableop_resource:2(@
.lstm_cell_335_matmul_1_readvariableop_resource:
(;
-lstm_cell_335_biasadd_readvariableop_resource:(
identity¢$lstm_cell_335/BiasAdd/ReadVariableOp¢#lstm_cell_335/MatMul/ReadVariableOp¢%lstm_cell_335/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_335/MatMul/ReadVariableOpReadVariableOp,lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_335/MatMulMatMulstrided_slice_2:output:0+lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_335/MatMul_1MatMulzeros:output:0-lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_335/addAddV2lstm_cell_335/MatMul:product:0 lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_335/BiasAddBiasAddlstm_cell_335/add:z:0,lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_335/splitSplit&lstm_cell_335/split/split_dim:output:0lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_335/SigmoidSigmoidlstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_1Sigmoidlstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_335/mulMullstm_cell_335/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_335/ReluRelulstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_1Mullstm_cell_335/Sigmoid:y:0 lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_335/add_1AddV2lstm_cell_335/mul:z:0lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_335/Sigmoid_2Sigmoidlstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_335/Relu_1Relulstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_335/mul_2Mullstm_cell_335/Sigmoid_2:y:0"lstm_cell_335/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_335_matmul_readvariableop_resource.lstm_cell_335_matmul_1_readvariableop_resource-lstm_cell_335_biasadd_readvariableop_resource*
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
while_body_2031868*
condR
while_cond_2031867*K
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
NoOpNoOp%^lstm_cell_335/BiasAdd/ReadVariableOp$^lstm_cell_335/MatMul/ReadVariableOp&^lstm_cell_335/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_335/BiasAdd/ReadVariableOp$lstm_cell_335/BiasAdd/ReadVariableOp2J
#lstm_cell_335/MatMul/ReadVariableOp#lstm_cell_335/MatMul/ReadVariableOp2N
%lstm_cell_335/MatMul_1/ReadVariableOp%lstm_cell_335/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2031252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_334_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_334_biasadd_readvariableop_resource:	È¢*while/lstm_cell_334/BiasAdd/ReadVariableOp¢)while/lstm_cell_334/MatMul/ReadVariableOp¢+while/lstm_cell_334/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_334/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_334/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_334/addAddV2$while/lstm_cell_334/MatMul:product:0&while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_334/BiasAddBiasAddwhile/lstm_cell_334/add:z:02while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_334/splitSplit,while/lstm_cell_334/split/split_dim:output:0$while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_334/SigmoidSigmoid"while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_1Sigmoid"while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mulMul!while/lstm_cell_334/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_334/ReluRelu"while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_1Mulwhile/lstm_cell_334/Sigmoid:y:0&while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/add_1AddV2while/lstm_cell_334/mul:z:0while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_2Sigmoid"while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_334/Relu_1Reluwhile/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_2Mul!while/lstm_cell_334/Sigmoid_2:y:0(while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_334/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_334/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_334/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_334/BiasAdd/ReadVariableOp*^while/lstm_cell_334/MatMul/ReadVariableOp,^while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_334_biasadd_readvariableop_resource5while_lstm_cell_334_biasadd_readvariableop_resource_0"n
4while_lstm_cell_334_matmul_1_readvariableop_resource6while_lstm_cell_334_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_334_matmul_readvariableop_resource4while_lstm_cell_334_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_334/BiasAdd/ReadVariableOp*while/lstm_cell_334/BiasAdd/ReadVariableOp2V
)while/lstm_cell_334/MatMul/ReadVariableOp)while/lstm_cell_334/MatMul/ReadVariableOp2Z
+while/lstm_cell_334/MatMul_1/ReadVariableOp+while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(sequential_25_lstm_77_while_cond_2026845H
Dsequential_25_lstm_77_while_sequential_25_lstm_77_while_loop_counterN
Jsequential_25_lstm_77_while_sequential_25_lstm_77_while_maximum_iterations+
'sequential_25_lstm_77_while_placeholder-
)sequential_25_lstm_77_while_placeholder_1-
)sequential_25_lstm_77_while_placeholder_2-
)sequential_25_lstm_77_while_placeholder_3J
Fsequential_25_lstm_77_while_less_sequential_25_lstm_77_strided_slice_1a
]sequential_25_lstm_77_while_sequential_25_lstm_77_while_cond_2026845___redundant_placeholder0a
]sequential_25_lstm_77_while_sequential_25_lstm_77_while_cond_2026845___redundant_placeholder1a
]sequential_25_lstm_77_while_sequential_25_lstm_77_while_cond_2026845___redundant_placeholder2a
]sequential_25_lstm_77_while_sequential_25_lstm_77_while_cond_2026845___redundant_placeholder3(
$sequential_25_lstm_77_while_identity
º
 sequential_25/lstm_77/while/LessLess'sequential_25_lstm_77_while_placeholderFsequential_25_lstm_77_while_less_sequential_25_lstm_77_strided_slice_1*
T0*
_output_shapes
: w
$sequential_25/lstm_77/while/IdentityIdentity$sequential_25/lstm_77/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_25_lstm_77_while_identity-sequential_25/lstm_77/while/Identity:output:0*(
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
Ý³
¾
"__inference__wrapped_model_2026936
lstm_75_inputU
Bsequential_25_lstm_75_lstm_cell_333_matmul_readvariableop_resource:	W
Dsequential_25_lstm_75_lstm_cell_333_matmul_1_readvariableop_resource:	dR
Csequential_25_lstm_75_lstm_cell_333_biasadd_readvariableop_resource:	U
Bsequential_25_lstm_76_lstm_cell_334_matmul_readvariableop_resource:	dÈW
Dsequential_25_lstm_76_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈR
Csequential_25_lstm_76_lstm_cell_334_biasadd_readvariableop_resource:	ÈT
Bsequential_25_lstm_77_lstm_cell_335_matmul_readvariableop_resource:2(V
Dsequential_25_lstm_77_lstm_cell_335_matmul_1_readvariableop_resource:
(Q
Csequential_25_lstm_77_lstm_cell_335_biasadd_readvariableop_resource:(G
5sequential_25_dense_25_matmul_readvariableop_resource:
D
6sequential_25_dense_25_biasadd_readvariableop_resource:
identity¢-sequential_25/dense_25/BiasAdd/ReadVariableOp¢,sequential_25/dense_25/MatMul/ReadVariableOp¢:sequential_25/lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp¢9sequential_25/lstm_75/lstm_cell_333/MatMul/ReadVariableOp¢;sequential_25/lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp¢sequential_25/lstm_75/while¢:sequential_25/lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp¢9sequential_25/lstm_76/lstm_cell_334/MatMul/ReadVariableOp¢;sequential_25/lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp¢sequential_25/lstm_76/while¢:sequential_25/lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp¢9sequential_25/lstm_77/lstm_cell_335/MatMul/ReadVariableOp¢;sequential_25/lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp¢sequential_25/lstm_77/whileX
sequential_25/lstm_75/ShapeShapelstm_75_input*
T0*
_output_shapes
:s
)sequential_25/lstm_75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/lstm_75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_25/lstm_75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_25/lstm_75/strided_sliceStridedSlice$sequential_25/lstm_75/Shape:output:02sequential_25/lstm_75/strided_slice/stack:output:04sequential_25/lstm_75/strided_slice/stack_1:output:04sequential_25/lstm_75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_25/lstm_75/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_25/lstm_75/zeros/packedPack,sequential_25/lstm_75/strided_slice:output:0-sequential_25/lstm_75/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_25/lstm_75/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_25/lstm_75/zerosFill+sequential_25/lstm_75/zeros/packed:output:0*sequential_25/lstm_75/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_25/lstm_75/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_25/lstm_75/zeros_1/packedPack,sequential_25/lstm_75/strided_slice:output:0/sequential_25/lstm_75/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_25/lstm_75/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_25/lstm_75/zeros_1Fill-sequential_25/lstm_75/zeros_1/packed:output:0,sequential_25/lstm_75/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_25/lstm_75/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_25/lstm_75/transpose	Transposelstm_75_input-sequential_25/lstm_75/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_25/lstm_75/Shape_1Shape#sequential_25/lstm_75/transpose:y:0*
T0*
_output_shapes
:u
+sequential_25/lstm_75/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_75/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_75/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_25/lstm_75/strided_slice_1StridedSlice&sequential_25/lstm_75/Shape_1:output:04sequential_25/lstm_75/strided_slice_1/stack:output:06sequential_25/lstm_75/strided_slice_1/stack_1:output:06sequential_25/lstm_75/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_25/lstm_75/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_25/lstm_75/TensorArrayV2TensorListReserve:sequential_25/lstm_75/TensorArrayV2/element_shape:output:0.sequential_25/lstm_75/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_25/lstm_75/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_25/lstm_75/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_25/lstm_75/transpose:y:0Tsequential_25/lstm_75/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_25/lstm_75/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_75/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_75/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_25/lstm_75/strided_slice_2StridedSlice#sequential_25/lstm_75/transpose:y:04sequential_25/lstm_75/strided_slice_2/stack:output:06sequential_25/lstm_75/strided_slice_2/stack_1:output:06sequential_25/lstm_75/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask½
9sequential_25/lstm_75/lstm_cell_333/MatMul/ReadVariableOpReadVariableOpBsequential_25_lstm_75_lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
*sequential_25/lstm_75/lstm_cell_333/MatMulMatMul.sequential_25/lstm_75/strided_slice_2:output:0Asequential_25/lstm_75/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
;sequential_25/lstm_75/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOpDsequential_25_lstm_75_lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ô
,sequential_25/lstm_75/lstm_cell_333/MatMul_1MatMul$sequential_25/lstm_75/zeros:output:0Csequential_25/lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential_25/lstm_75/lstm_cell_333/addAddV24sequential_25/lstm_75/lstm_cell_333/MatMul:product:06sequential_25/lstm_75/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:sequential_25/lstm_75/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOpCsequential_25_lstm_75_lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_25/lstm_75/lstm_cell_333/BiasAddBiasAdd+sequential_25/lstm_75/lstm_cell_333/add:z:0Bsequential_25/lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential_25/lstm_75/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_25/lstm_75/lstm_cell_333/splitSplit<sequential_25/lstm_75/lstm_cell_333/split/split_dim:output:04sequential_25/lstm_75/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
+sequential_25/lstm_75/lstm_cell_333/SigmoidSigmoid2sequential_25/lstm_75/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_25/lstm_75/lstm_cell_333/Sigmoid_1Sigmoid2sequential_25/lstm_75/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
'sequential_25/lstm_75/lstm_cell_333/mulMul1sequential_25/lstm_75/lstm_cell_333/Sigmoid_1:y:0&sequential_25/lstm_75/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(sequential_25/lstm_75/lstm_cell_333/ReluRelu2sequential_25/lstm_75/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
)sequential_25/lstm_75/lstm_cell_333/mul_1Mul/sequential_25/lstm_75/lstm_cell_333/Sigmoid:y:06sequential_25/lstm_75/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
)sequential_25/lstm_75/lstm_cell_333/add_1AddV2+sequential_25/lstm_75/lstm_cell_333/mul:z:0-sequential_25/lstm_75/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_25/lstm_75/lstm_cell_333/Sigmoid_2Sigmoid2sequential_25/lstm_75/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*sequential_25/lstm_75/lstm_cell_333/Relu_1Relu-sequential_25/lstm_75/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
)sequential_25/lstm_75/lstm_cell_333/mul_2Mul1sequential_25/lstm_75/lstm_cell_333/Sigmoid_2:y:08sequential_25/lstm_75/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_25/lstm_75/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ú
%sequential_25/lstm_75/TensorArrayV2_1TensorListReserve<sequential_25/lstm_75/TensorArrayV2_1/element_shape:output:0.sequential_25/lstm_75/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_25/lstm_75/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_25/lstm_75/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_25/lstm_75/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_25/lstm_75/whileWhile1sequential_25/lstm_75/while/loop_counter:output:07sequential_25/lstm_75/while/maximum_iterations:output:0#sequential_25/lstm_75/time:output:0.sequential_25/lstm_75/TensorArrayV2_1:handle:0$sequential_25/lstm_75/zeros:output:0&sequential_25/lstm_75/zeros_1:output:0.sequential_25/lstm_75/strided_slice_1:output:0Msequential_25/lstm_75/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_25_lstm_75_lstm_cell_333_matmul_readvariableop_resourceDsequential_25_lstm_75_lstm_cell_333_matmul_1_readvariableop_resourceCsequential_25_lstm_75_lstm_cell_333_biasadd_readvariableop_resource*
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
(sequential_25_lstm_75_while_body_2026568*4
cond,R*
(sequential_25_lstm_75_while_cond_2026567*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_25/lstm_75/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_25/lstm_75/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_25/lstm_75/while:output:3Osequential_25/lstm_75/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0~
+sequential_25/lstm_75/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_25/lstm_75/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_75/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_25/lstm_75/strided_slice_3StridedSliceAsequential_25/lstm_75/TensorArrayV2Stack/TensorListStack:tensor:04sequential_25/lstm_75/strided_slice_3/stack:output:06sequential_25/lstm_75/strided_slice_3/stack_1:output:06sequential_25/lstm_75/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_25/lstm_75/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_25/lstm_75/transpose_1	TransposeAsequential_25/lstm_75/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_25/lstm_75/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_25/lstm_75/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_25/lstm_76/ShapeShape%sequential_25/lstm_75/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_25/lstm_76/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/lstm_76/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_25/lstm_76/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_25/lstm_76/strided_sliceStridedSlice$sequential_25/lstm_76/Shape:output:02sequential_25/lstm_76/strided_slice/stack:output:04sequential_25/lstm_76/strided_slice/stack_1:output:04sequential_25/lstm_76/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_25/lstm_76/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_25/lstm_76/zeros/packedPack,sequential_25/lstm_76/strided_slice:output:0-sequential_25/lstm_76/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_25/lstm_76/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_25/lstm_76/zerosFill+sequential_25/lstm_76/zeros/packed:output:0*sequential_25/lstm_76/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_25/lstm_76/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_25/lstm_76/zeros_1/packedPack,sequential_25/lstm_76/strided_slice:output:0/sequential_25/lstm_76/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_25/lstm_76/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_25/lstm_76/zeros_1Fill-sequential_25/lstm_76/zeros_1/packed:output:0,sequential_25/lstm_76/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_25/lstm_76/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_25/lstm_76/transpose	Transpose%sequential_25/lstm_75/transpose_1:y:0-sequential_25/lstm_76/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_25/lstm_76/Shape_1Shape#sequential_25/lstm_76/transpose:y:0*
T0*
_output_shapes
:u
+sequential_25/lstm_76/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_76/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_76/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_25/lstm_76/strided_slice_1StridedSlice&sequential_25/lstm_76/Shape_1:output:04sequential_25/lstm_76/strided_slice_1/stack:output:06sequential_25/lstm_76/strided_slice_1/stack_1:output:06sequential_25/lstm_76/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_25/lstm_76/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_25/lstm_76/TensorArrayV2TensorListReserve:sequential_25/lstm_76/TensorArrayV2/element_shape:output:0.sequential_25/lstm_76/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_25/lstm_76/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_25/lstm_76/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_25/lstm_76/transpose:y:0Tsequential_25/lstm_76/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_25/lstm_76/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_76/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_76/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_25/lstm_76/strided_slice_2StridedSlice#sequential_25/lstm_76/transpose:y:04sequential_25/lstm_76/strided_slice_2/stack:output:06sequential_25/lstm_76/strided_slice_2/stack_1:output:06sequential_25/lstm_76/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask½
9sequential_25/lstm_76/lstm_cell_334/MatMul/ReadVariableOpReadVariableOpBsequential_25_lstm_76_lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ú
*sequential_25/lstm_76/lstm_cell_334/MatMulMatMul.sequential_25/lstm_76/strided_slice_2:output:0Asequential_25/lstm_76/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÁ
;sequential_25/lstm_76/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOpDsequential_25_lstm_76_lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ô
,sequential_25/lstm_76/lstm_cell_334/MatMul_1MatMul$sequential_25/lstm_76/zeros:output:0Csequential_25/lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÑ
'sequential_25/lstm_76/lstm_cell_334/addAddV24sequential_25/lstm_76/lstm_cell_334/MatMul:product:06sequential_25/lstm_76/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ»
:sequential_25/lstm_76/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOpCsequential_25_lstm_76_lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_25/lstm_76/lstm_cell_334/BiasAddBiasAdd+sequential_25/lstm_76/lstm_cell_334/add:z:0Bsequential_25/lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈu
3sequential_25/lstm_76/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_25/lstm_76/lstm_cell_334/splitSplit<sequential_25/lstm_76/lstm_cell_334/split/split_dim:output:04sequential_25/lstm_76/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
+sequential_25/lstm_76/lstm_cell_334/SigmoidSigmoid2sequential_25/lstm_76/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_25/lstm_76/lstm_cell_334/Sigmoid_1Sigmoid2sequential_25/lstm_76/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
'sequential_25/lstm_76/lstm_cell_334/mulMul1sequential_25/lstm_76/lstm_cell_334/Sigmoid_1:y:0&sequential_25/lstm_76/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(sequential_25/lstm_76/lstm_cell_334/ReluRelu2sequential_25/lstm_76/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ë
)sequential_25/lstm_76/lstm_cell_334/mul_1Mul/sequential_25/lstm_76/lstm_cell_334/Sigmoid:y:06sequential_25/lstm_76/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
)sequential_25/lstm_76/lstm_cell_334/add_1AddV2+sequential_25/lstm_76/lstm_cell_334/mul:z:0-sequential_25/lstm_76/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_25/lstm_76/lstm_cell_334/Sigmoid_2Sigmoid2sequential_25/lstm_76/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_25/lstm_76/lstm_cell_334/Relu_1Relu-sequential_25/lstm_76/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
)sequential_25/lstm_76/lstm_cell_334/mul_2Mul1sequential_25/lstm_76/lstm_cell_334/Sigmoid_2:y:08sequential_25/lstm_76/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_25/lstm_76/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_25/lstm_76/TensorArrayV2_1TensorListReserve<sequential_25/lstm_76/TensorArrayV2_1/element_shape:output:0.sequential_25/lstm_76/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_25/lstm_76/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_25/lstm_76/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_25/lstm_76/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_25/lstm_76/whileWhile1sequential_25/lstm_76/while/loop_counter:output:07sequential_25/lstm_76/while/maximum_iterations:output:0#sequential_25/lstm_76/time:output:0.sequential_25/lstm_76/TensorArrayV2_1:handle:0$sequential_25/lstm_76/zeros:output:0&sequential_25/lstm_76/zeros_1:output:0.sequential_25/lstm_76/strided_slice_1:output:0Msequential_25/lstm_76/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_25_lstm_76_lstm_cell_334_matmul_readvariableop_resourceDsequential_25_lstm_76_lstm_cell_334_matmul_1_readvariableop_resourceCsequential_25_lstm_76_lstm_cell_334_biasadd_readvariableop_resource*
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
(sequential_25_lstm_76_while_body_2026707*4
cond,R*
(sequential_25_lstm_76_while_cond_2026706*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_25/lstm_76/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_25/lstm_76/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_25/lstm_76/while:output:3Osequential_25/lstm_76/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_25/lstm_76/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_25/lstm_76/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_76/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_25/lstm_76/strided_slice_3StridedSliceAsequential_25/lstm_76/TensorArrayV2Stack/TensorListStack:tensor:04sequential_25/lstm_76/strided_slice_3/stack:output:06sequential_25/lstm_76/strided_slice_3/stack_1:output:06sequential_25/lstm_76/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_25/lstm_76/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_25/lstm_76/transpose_1	TransposeAsequential_25/lstm_76/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_25/lstm_76/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_25/lstm_76/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_25/lstm_77/ShapeShape%sequential_25/lstm_76/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_25/lstm_77/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/lstm_77/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_25/lstm_77/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_25/lstm_77/strided_sliceStridedSlice$sequential_25/lstm_77/Shape:output:02sequential_25/lstm_77/strided_slice/stack:output:04sequential_25/lstm_77/strided_slice/stack_1:output:04sequential_25/lstm_77/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_25/lstm_77/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
µ
"sequential_25/lstm_77/zeros/packedPack,sequential_25/lstm_77/strided_slice:output:0-sequential_25/lstm_77/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_25/lstm_77/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_25/lstm_77/zerosFill+sequential_25/lstm_77/zeros/packed:output:0*sequential_25/lstm_77/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
&sequential_25/lstm_77/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¹
$sequential_25/lstm_77/zeros_1/packedPack,sequential_25/lstm_77/strided_slice:output:0/sequential_25/lstm_77/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_25/lstm_77/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_25/lstm_77/zeros_1Fill-sequential_25/lstm_77/zeros_1/packed:output:0,sequential_25/lstm_77/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
$sequential_25/lstm_77/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_25/lstm_77/transpose	Transpose%sequential_25/lstm_76/transpose_1:y:0-sequential_25/lstm_77/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
sequential_25/lstm_77/Shape_1Shape#sequential_25/lstm_77/transpose:y:0*
T0*
_output_shapes
:u
+sequential_25/lstm_77/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_77/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_77/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_25/lstm_77/strided_slice_1StridedSlice&sequential_25/lstm_77/Shape_1:output:04sequential_25/lstm_77/strided_slice_1/stack:output:06sequential_25/lstm_77/strided_slice_1/stack_1:output:06sequential_25/lstm_77/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_25/lstm_77/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_25/lstm_77/TensorArrayV2TensorListReserve:sequential_25/lstm_77/TensorArrayV2/element_shape:output:0.sequential_25/lstm_77/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_25/lstm_77/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¢
=sequential_25/lstm_77/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_25/lstm_77/transpose:y:0Tsequential_25/lstm_77/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_25/lstm_77/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_77/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_77/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_25/lstm_77/strided_slice_2StridedSlice#sequential_25/lstm_77/transpose:y:04sequential_25/lstm_77/strided_slice_2/stack:output:06sequential_25/lstm_77/strided_slice_2/stack_1:output:06sequential_25/lstm_77/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¼
9sequential_25/lstm_77/lstm_cell_335/MatMul/ReadVariableOpReadVariableOpBsequential_25_lstm_77_lstm_cell_335_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ù
*sequential_25/lstm_77/lstm_cell_335/MatMulMatMul.sequential_25/lstm_77/strided_slice_2:output:0Asequential_25/lstm_77/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(À
;sequential_25/lstm_77/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOpDsequential_25_lstm_77_lstm_cell_335_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ó
,sequential_25/lstm_77/lstm_cell_335/MatMul_1MatMul$sequential_25/lstm_77/zeros:output:0Csequential_25/lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ð
'sequential_25/lstm_77/lstm_cell_335/addAddV24sequential_25/lstm_77/lstm_cell_335/MatMul:product:06sequential_25/lstm_77/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
:sequential_25/lstm_77/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOpCsequential_25_lstm_77_lstm_cell_335_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_25/lstm_77/lstm_cell_335/BiasAddBiasAdd+sequential_25/lstm_77/lstm_cell_335/add:z:0Bsequential_25/lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(u
3sequential_25/lstm_77/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_25/lstm_77/lstm_cell_335/splitSplit<sequential_25/lstm_77/lstm_cell_335/split/split_dim:output:04sequential_25/lstm_77/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
+sequential_25/lstm_77/lstm_cell_335/SigmoidSigmoid2sequential_25/lstm_77/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_25/lstm_77/lstm_cell_335/Sigmoid_1Sigmoid2sequential_25/lstm_77/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
'sequential_25/lstm_77/lstm_cell_335/mulMul1sequential_25/lstm_77/lstm_cell_335/Sigmoid_1:y:0&sequential_25/lstm_77/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(sequential_25/lstm_77/lstm_cell_335/ReluRelu2sequential_25/lstm_77/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
)sequential_25/lstm_77/lstm_cell_335/mul_1Mul/sequential_25/lstm_77/lstm_cell_335/Sigmoid:y:06sequential_25/lstm_77/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
)sequential_25/lstm_77/lstm_cell_335/add_1AddV2+sequential_25/lstm_77/lstm_cell_335/mul:z:0-sequential_25/lstm_77/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_25/lstm_77/lstm_cell_335/Sigmoid_2Sigmoid2sequential_25/lstm_77/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_25/lstm_77/lstm_cell_335/Relu_1Relu-sequential_25/lstm_77/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ï
)sequential_25/lstm_77/lstm_cell_335/mul_2Mul1sequential_25/lstm_77/lstm_cell_335/Sigmoid_2:y:08sequential_25/lstm_77/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

3sequential_25/lstm_77/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ú
%sequential_25/lstm_77/TensorArrayV2_1TensorListReserve<sequential_25/lstm_77/TensorArrayV2_1/element_shape:output:0.sequential_25/lstm_77/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_25/lstm_77/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_25/lstm_77/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_25/lstm_77/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_25/lstm_77/whileWhile1sequential_25/lstm_77/while/loop_counter:output:07sequential_25/lstm_77/while/maximum_iterations:output:0#sequential_25/lstm_77/time:output:0.sequential_25/lstm_77/TensorArrayV2_1:handle:0$sequential_25/lstm_77/zeros:output:0&sequential_25/lstm_77/zeros_1:output:0.sequential_25/lstm_77/strided_slice_1:output:0Msequential_25/lstm_77/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_25_lstm_77_lstm_cell_335_matmul_readvariableop_resourceDsequential_25_lstm_77_lstm_cell_335_matmul_1_readvariableop_resourceCsequential_25_lstm_77_lstm_cell_335_biasadd_readvariableop_resource*
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
(sequential_25_lstm_77_while_body_2026846*4
cond,R*
(sequential_25_lstm_77_while_cond_2026845*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Fsequential_25/lstm_77/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
8sequential_25/lstm_77/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_25/lstm_77/while:output:3Osequential_25/lstm_77/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0~
+sequential_25/lstm_77/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_25/lstm_77/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_77/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_25/lstm_77/strided_slice_3StridedSliceAsequential_25/lstm_77/TensorArrayV2Stack/TensorListStack:tensor:04sequential_25/lstm_77/strided_slice_3/stack:output:06sequential_25/lstm_77/strided_slice_3/stack_1:output:06sequential_25/lstm_77/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask{
&sequential_25/lstm_77/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_25/lstm_77/transpose_1	TransposeAsequential_25/lstm_77/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_25/lstm_77/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
sequential_25/lstm_77/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_25/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_25_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0¿
sequential_25/dense_25/MatMulMatMul.sequential_25/lstm_77/strided_slice_3:output:04sequential_25/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_25/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_25/dense_25/BiasAddBiasAdd'sequential_25/dense_25/MatMul:product:05sequential_25/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_25/dense_25/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp.^sequential_25/dense_25/BiasAdd/ReadVariableOp-^sequential_25/dense_25/MatMul/ReadVariableOp;^sequential_25/lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp:^sequential_25/lstm_75/lstm_cell_333/MatMul/ReadVariableOp<^sequential_25/lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp^sequential_25/lstm_75/while;^sequential_25/lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp:^sequential_25/lstm_76/lstm_cell_334/MatMul/ReadVariableOp<^sequential_25/lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp^sequential_25/lstm_76/while;^sequential_25/lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp:^sequential_25/lstm_77/lstm_cell_335/MatMul/ReadVariableOp<^sequential_25/lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp^sequential_25/lstm_77/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2^
-sequential_25/dense_25/BiasAdd/ReadVariableOp-sequential_25/dense_25/BiasAdd/ReadVariableOp2\
,sequential_25/dense_25/MatMul/ReadVariableOp,sequential_25/dense_25/MatMul/ReadVariableOp2x
:sequential_25/lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp:sequential_25/lstm_75/lstm_cell_333/BiasAdd/ReadVariableOp2v
9sequential_25/lstm_75/lstm_cell_333/MatMul/ReadVariableOp9sequential_25/lstm_75/lstm_cell_333/MatMul/ReadVariableOp2z
;sequential_25/lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp;sequential_25/lstm_75/lstm_cell_333/MatMul_1/ReadVariableOp2:
sequential_25/lstm_75/whilesequential_25/lstm_75/while2x
:sequential_25/lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp:sequential_25/lstm_76/lstm_cell_334/BiasAdd/ReadVariableOp2v
9sequential_25/lstm_76/lstm_cell_334/MatMul/ReadVariableOp9sequential_25/lstm_76/lstm_cell_334/MatMul/ReadVariableOp2z
;sequential_25/lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp;sequential_25/lstm_76/lstm_cell_334/MatMul_1/ReadVariableOp2:
sequential_25/lstm_76/whilesequential_25/lstm_76/while2x
:sequential_25/lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp:sequential_25/lstm_77/lstm_cell_335/BiasAdd/ReadVariableOp2v
9sequential_25/lstm_77/lstm_cell_335/MatMul/ReadVariableOp9sequential_25/lstm_77/lstm_cell_335/MatMul/ReadVariableOp2z
;sequential_25/lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp;sequential_25/lstm_77/lstm_cell_335/MatMul_1/ReadVariableOp2:
sequential_25/lstm_77/whilesequential_25/lstm_77/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_75_input
Ä8
Ô
while_body_2028351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_335_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_335_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_335_matmul_readvariableop_resource:2(F
4while_lstm_cell_335_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_335_biasadd_readvariableop_resource:(¢*while/lstm_cell_335/BiasAdd/ReadVariableOp¢)while/lstm_cell_335/MatMul/ReadVariableOp¢+while/lstm_cell_335/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_335/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_335/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_335/addAddV2$while/lstm_cell_335/MatMul:product:0&while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_335/BiasAddBiasAddwhile/lstm_cell_335/add:z:02while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_335/splitSplit,while/lstm_cell_335/split/split_dim:output:0$while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_335/SigmoidSigmoid"while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_1Sigmoid"while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mulMul!while/lstm_cell_335/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_335/ReluRelu"while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_1Mulwhile/lstm_cell_335/Sigmoid:y:0&while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/add_1AddV2while/lstm_cell_335/mul:z:0while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_2Sigmoid"while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_335/Relu_1Reluwhile/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_2Mul!while/lstm_cell_335/Sigmoid_2:y:0(while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_335/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_335/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_335/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_335/BiasAdd/ReadVariableOp*^while/lstm_cell_335/MatMul/ReadVariableOp,^while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_335_biasadd_readvariableop_resource5while_lstm_cell_335_biasadd_readvariableop_resource_0"n
4while_lstm_cell_335_matmul_1_readvariableop_resource6while_lstm_cell_335_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_335_matmul_readvariableop_resource4while_lstm_cell_335_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_335/BiasAdd/ReadVariableOp*while/lstm_cell_335/BiasAdd/ReadVariableOp2V
)while/lstm_cell_335/MatMul/ReadVariableOp)while/lstm_cell_335/MatMul/ReadVariableOp2Z
+while/lstm_cell_335/MatMul_1/ReadVariableOp+while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2030965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2030965___redundant_placeholder05
1while_while_cond_2030965___redundant_placeholder15
1while_while_cond_2030965___redundant_placeholder25
1while_while_cond_2030965___redundant_placeholder3
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2032037

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
)__inference_lstm_77_layer_call_fn_2031358
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2027977o
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
áJ
¢
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028816

inputs?
,lstm_cell_334_matmul_readvariableop_resource:	dÈA
.lstm_cell_334_matmul_1_readvariableop_resource:	2È<
-lstm_cell_334_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_334/BiasAdd/ReadVariableOp¢#lstm_cell_334/MatMul/ReadVariableOp¢%lstm_cell_334/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_334/MatMul/ReadVariableOpReadVariableOp,lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_334/MatMulMatMulstrided_slice_2:output:0+lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_334/MatMul_1MatMulzeros:output:0-lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_334/addAddV2lstm_cell_334/MatMul:product:0 lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_334/BiasAddBiasAddlstm_cell_334/add:z:0,lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_334/splitSplit&lstm_cell_334/split/split_dim:output:0lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_334/SigmoidSigmoidlstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_1Sigmoidlstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_334/mulMullstm_cell_334/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_334/ReluRelulstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_1Mullstm_cell_334/Sigmoid:y:0 lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_334/add_1AddV2lstm_cell_334/mul:z:0lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_2Sigmoidlstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_334/Relu_1Relulstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_2Mullstm_cell_334/Sigmoid_2:y:0"lstm_cell_334/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_334_matmul_readvariableop_resource.lstm_cell_334_matmul_1_readvariableop_resource-lstm_cell_334_biasadd_readvariableop_resource*
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
while_body_2028732*
condR
while_cond_2028731*K
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
NoOpNoOp%^lstm_cell_334/BiasAdd/ReadVariableOp$^lstm_cell_334/MatMul/ReadVariableOp&^lstm_cell_334/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_334/BiasAdd/ReadVariableOp$lstm_cell_334/BiasAdd/ReadVariableOp2J
#lstm_cell_334/MatMul/ReadVariableOp#lstm_cell_334/MatMul/ReadVariableOp2N
%lstm_cell_334/MatMul_1/ReadVariableOp%lstm_cell_334/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ä8
Ô
while_body_2031582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_335_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_335_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_335_matmul_readvariableop_resource:2(F
4while_lstm_cell_335_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_335_biasadd_readvariableop_resource:(¢*while/lstm_cell_335/BiasAdd/ReadVariableOp¢)while/lstm_cell_335/MatMul/ReadVariableOp¢+while/lstm_cell_335/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_335/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_335/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_335/addAddV2$while/lstm_cell_335/MatMul:product:0&while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_335/BiasAddBiasAddwhile/lstm_cell_335/add:z:02while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_335/splitSplit,while/lstm_cell_335/split/split_dim:output:0$while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_335/SigmoidSigmoid"while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_1Sigmoid"while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mulMul!while/lstm_cell_335/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_335/ReluRelu"while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_1Mulwhile/lstm_cell_335/Sigmoid:y:0&while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/add_1AddV2while/lstm_cell_335/mul:z:0while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_2Sigmoid"while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_335/Relu_1Reluwhile/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_2Mul!while/lstm_cell_335/Sigmoid_2:y:0(while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_335/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_335/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_335/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_335/BiasAdd/ReadVariableOp*^while/lstm_cell_335/MatMul/ReadVariableOp,^while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_335_biasadd_readvariableop_resource5while_lstm_cell_335_biasadd_readvariableop_resource_0"n
4while_lstm_cell_335_matmul_1_readvariableop_resource6while_lstm_cell_335_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_335_matmul_readvariableop_resource4while_lstm_cell_335_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_335/BiasAdd/ReadVariableOp*while/lstm_cell_335/BiasAdd/ReadVariableOp2V
)while/lstm_cell_335/MatMul/ReadVariableOp)while/lstm_cell_335/MatMul/ReadVariableOp2Z
+while/lstm_cell_335/MatMul_1/ReadVariableOp+while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
È	
ö
E__inference_dense_25_layer_call_and_return_conditional_losses_2031971

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
áJ
¢
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031193

inputs?
,lstm_cell_334_matmul_readvariableop_resource:	dÈA
.lstm_cell_334_matmul_1_readvariableop_resource:	2È<
-lstm_cell_334_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_334/BiasAdd/ReadVariableOp¢#lstm_cell_334/MatMul/ReadVariableOp¢%lstm_cell_334/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_334/MatMul/ReadVariableOpReadVariableOp,lstm_cell_334_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_334/MatMulMatMulstrided_slice_2:output:0+lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_334_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_334/MatMul_1MatMulzeros:output:0-lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_334/addAddV2lstm_cell_334/MatMul:product:0 lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_334_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_334/BiasAddBiasAddlstm_cell_334/add:z:0,lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_334/splitSplit&lstm_cell_334/split/split_dim:output:0lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_334/SigmoidSigmoidlstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_1Sigmoidlstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_334/mulMullstm_cell_334/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_334/ReluRelulstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_1Mullstm_cell_334/Sigmoid:y:0 lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_334/add_1AddV2lstm_cell_334/mul:z:0lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_334/Sigmoid_2Sigmoidlstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_334/Relu_1Relulstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_334/mul_2Mullstm_cell_334/Sigmoid_2:y:0"lstm_cell_334/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_334_matmul_readvariableop_resource.lstm_cell_334_matmul_1_readvariableop_resource-lstm_cell_334_biasadd_readvariableop_resource*
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
while_body_2031109*
condR
while_cond_2031108*K
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
NoOpNoOp%^lstm_cell_334/BiasAdd/ReadVariableOp$^lstm_cell_334/MatMul/ReadVariableOp&^lstm_cell_334/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_334/BiasAdd/ReadVariableOp$lstm_cell_334/BiasAdd/ReadVariableOp2J
#lstm_cell_334/MatMul/ReadVariableOp#lstm_cell_334/MatMul/ReadVariableOp2N
%lstm_cell_334/MatMul_1/ReadVariableOp%lstm_cell_334/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
×

J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027353

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
while_body_2027558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_334_2027582_0:	dÈ0
while_lstm_cell_334_2027584_0:	2È,
while_lstm_cell_334_2027586_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_334_2027582:	dÈ.
while_lstm_cell_334_2027584:	2È*
while_lstm_cell_334_2027586:	È¢+while/lstm_cell_334/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_334/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_334_2027582_0while_lstm_cell_334_2027584_0while_lstm_cell_334_2027586_0*
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027499Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_334/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_334/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_334/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_334/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_334_2027582while_lstm_cell_334_2027582_0"<
while_lstm_cell_334_2027584while_lstm_cell_334_2027584_0"<
while_lstm_cell_334_2027586while_lstm_cell_334_2027586_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_334/StatefulPartitionedCall+while/lstm_cell_334/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2030349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2030349___redundant_placeholder05
1while_while_cond_2030349___redundant_placeholder15
1while_while_cond_2030349___redundant_placeholder25
1while_while_cond_2030349___redundant_placeholder3
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
while_cond_2027207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2027207___redundant_placeholder05
1while_while_cond_2027207___redundant_placeholder15
1while_while_cond_2027207___redundant_placeholder25
1while_while_cond_2027207___redundant_placeholder3
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
Ä

*__inference_dense_25_layer_call_fn_2031961

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
E__inference_dense_25_layer_call_and_return_conditional_losses_2028453o
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
º
È
while_cond_2031108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2031108___redundant_placeholder05
1while_while_cond_2031108___redundant_placeholder15
1while_while_cond_2031108___redundant_placeholder25
1while_while_cond_2031108___redundant_placeholder3
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
while_cond_2028896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2028896___redundant_placeholder05
1while_while_cond_2028896___redundant_placeholder15
1while_while_cond_2028896___redundant_placeholder25
1while_while_cond_2028896___redundant_placeholder3
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
ü£
à
#__inference__traced_restore_2032538
file_prefix2
 assignvariableop_dense_25_kernel:
.
 assignvariableop_1_dense_25_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_75_lstm_cell_75_kernel:	K
8assignvariableop_8_lstm_75_lstm_cell_75_recurrent_kernel:	d;
,assignvariableop_9_lstm_75_lstm_cell_75_bias:	B
/assignvariableop_10_lstm_76_lstm_cell_76_kernel:	dÈL
9assignvariableop_11_lstm_76_lstm_cell_76_recurrent_kernel:	2È<
-assignvariableop_12_lstm_76_lstm_cell_76_bias:	ÈA
/assignvariableop_13_lstm_77_lstm_cell_77_kernel:2(K
9assignvariableop_14_lstm_77_lstm_cell_77_recurrent_kernel:
(;
-assignvariableop_15_lstm_77_lstm_cell_77_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_25_kernel_m:
6
(assignvariableop_19_adam_dense_25_bias_m:I
6assignvariableop_20_adam_lstm_75_lstm_cell_75_kernel_m:	S
@assignvariableop_21_adam_lstm_75_lstm_cell_75_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_75_lstm_cell_75_bias_m:	I
6assignvariableop_23_adam_lstm_76_lstm_cell_76_kernel_m:	dÈS
@assignvariableop_24_adam_lstm_76_lstm_cell_76_recurrent_kernel_m:	2ÈC
4assignvariableop_25_adam_lstm_76_lstm_cell_76_bias_m:	ÈH
6assignvariableop_26_adam_lstm_77_lstm_cell_77_kernel_m:2(R
@assignvariableop_27_adam_lstm_77_lstm_cell_77_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_77_lstm_cell_77_bias_m:(<
*assignvariableop_29_adam_dense_25_kernel_v:
6
(assignvariableop_30_adam_dense_25_bias_v:I
6assignvariableop_31_adam_lstm_75_lstm_cell_75_kernel_v:	S
@assignvariableop_32_adam_lstm_75_lstm_cell_75_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_75_lstm_cell_75_bias_v:	I
6assignvariableop_34_adam_lstm_76_lstm_cell_76_kernel_v:	dÈS
@assignvariableop_35_adam_lstm_76_lstm_cell_76_recurrent_kernel_v:	2ÈC
4assignvariableop_36_adam_lstm_76_lstm_cell_76_bias_v:	ÈH
6assignvariableop_37_adam_lstm_77_lstm_cell_77_kernel_v:2(R
@assignvariableop_38_adam_lstm_77_lstm_cell_77_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_77_lstm_cell_77_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_25_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_25_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_75_lstm_cell_75_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_75_lstm_cell_75_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_75_lstm_cell_75_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_76_lstm_cell_76_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_76_lstm_cell_76_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_76_lstm_cell_76_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_77_lstm_cell_77_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_77_lstm_cell_77_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_77_lstm_cell_77_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_25_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_25_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_75_lstm_cell_75_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_75_lstm_cell_75_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_75_lstm_cell_75_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_76_lstm_cell_76_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_76_lstm_cell_76_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_76_lstm_cell_76_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_77_lstm_cell_77_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_77_lstm_cell_77_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_77_lstm_cell_77_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_25_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_25_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_75_lstm_cell_75_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_75_lstm_cell_75_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_75_lstm_cell_75_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_76_lstm_cell_76_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_76_lstm_cell_76_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_76_lstm_cell_76_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_77_lstm_cell_77_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_77_lstm_cell_77_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_77_lstm_cell_77_bias_vIdentity_39:output:0"/device:CPU:0*
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
®8

D__inference_lstm_76_layer_call_and_return_conditional_losses_2027627

inputs(
lstm_cell_334_2027545:	dÈ(
lstm_cell_334_2027547:	2È$
lstm_cell_334_2027549:	È
identity¢%lstm_cell_334/StatefulPartitionedCall¢while;
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
%lstm_cell_334/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_334_2027545lstm_cell_334_2027547lstm_cell_334_2027549*
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027499n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_334_2027545lstm_cell_334_2027547lstm_cell_334_2027549*
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
while_body_2027558*
condR
while_cond_2027557*K
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
NoOpNoOp&^lstm_cell_334/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_334/StatefulPartitionedCall%lstm_cell_334/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ä8
Ô
while_body_2031439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_335_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_335_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_335_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_335_matmul_readvariableop_resource:2(F
4while_lstm_cell_335_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_335_biasadd_readvariableop_resource:(¢*while/lstm_cell_335/BiasAdd/ReadVariableOp¢)while/lstm_cell_335/MatMul/ReadVariableOp¢+while/lstm_cell_335/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_335/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_335_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_335/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_335/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_335/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_335_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_335/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_335/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_335/addAddV2$while/lstm_cell_335/MatMul:product:0&while/lstm_cell_335/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_335/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_335_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_335/BiasAddBiasAddwhile/lstm_cell_335/add:z:02while/lstm_cell_335/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_335/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_335/splitSplit,while/lstm_cell_335/split/split_dim:output:0$while/lstm_cell_335/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_335/SigmoidSigmoid"while/lstm_cell_335/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_1Sigmoid"while/lstm_cell_335/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mulMul!while/lstm_cell_335/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_335/ReluRelu"while/lstm_cell_335/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_1Mulwhile/lstm_cell_335/Sigmoid:y:0&while/lstm_cell_335/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/add_1AddV2while/lstm_cell_335/mul:z:0while/lstm_cell_335/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_335/Sigmoid_2Sigmoid"while/lstm_cell_335/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_335/Relu_1Reluwhile/lstm_cell_335/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_335/mul_2Mul!while/lstm_cell_335/Sigmoid_2:y:0(while/lstm_cell_335/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_335/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_335/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_335/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_335/BiasAdd/ReadVariableOp*^while/lstm_cell_335/MatMul/ReadVariableOp,^while/lstm_cell_335/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_335_biasadd_readvariableop_resource5while_lstm_cell_335_biasadd_readvariableop_resource_0"n
4while_lstm_cell_335_matmul_1_readvariableop_resource6while_lstm_cell_335_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_335_matmul_readvariableop_resource4while_lstm_cell_335_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_335/BiasAdd/ReadVariableOp*while/lstm_cell_335/BiasAdd/ReadVariableOp2V
)while/lstm_cell_335/MatMul/ReadVariableOp)while/lstm_cell_335/MatMul/ReadVariableOp2Z
+while/lstm_cell_335/MatMul_1/ReadVariableOp+while/lstm_cell_335/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028981

inputs?
,lstm_cell_333_matmul_readvariableop_resource:	A
.lstm_cell_333_matmul_1_readvariableop_resource:	d<
-lstm_cell_333_biasadd_readvariableop_resource:	
identity¢$lstm_cell_333/BiasAdd/ReadVariableOp¢#lstm_cell_333/MatMul/ReadVariableOp¢%lstm_cell_333/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_333/MatMul/ReadVariableOpReadVariableOp,lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_333/MatMulMatMulstrided_slice_2:output:0+lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_333/MatMul_1MatMulzeros:output:0-lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_333/addAddV2lstm_cell_333/MatMul:product:0 lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_333/BiasAddBiasAddlstm_cell_333/add:z:0,lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_333/splitSplit&lstm_cell_333/split/split_dim:output:0lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_333/SigmoidSigmoidlstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_1Sigmoidlstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_333/mulMullstm_cell_333/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_333/ReluRelulstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_1Mullstm_cell_333/Sigmoid:y:0 lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_333/add_1AddV2lstm_cell_333/mul:z:0lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_2Sigmoidlstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_333/Relu_1Relulstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_2Mullstm_cell_333/Sigmoid_2:y:0"lstm_cell_333/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_333_matmul_readvariableop_resource.lstm_cell_333_matmul_1_readvariableop_resource-lstm_cell_333_biasadd_readvariableop_resource*
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
while_body_2028897*
condR
while_cond_2028896*K
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
NoOpNoOp%^lstm_cell_333/BiasAdd/ReadVariableOp$^lstm_cell_333/MatMul/ReadVariableOp&^lstm_cell_333/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_333/BiasAdd/ReadVariableOp$lstm_cell_333/BiasAdd/ReadVariableOp2J
#lstm_cell_333/MatMul/ReadVariableOp#lstm_cell_333/MatMul/ReadVariableOp2N
%lstm_cell_333/MatMul_1/ReadVariableOp%lstm_cell_333/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
#
ñ
while_body_2027208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_333_2027232_0:	0
while_lstm_cell_333_2027234_0:	d,
while_lstm_cell_333_2027236_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_333_2027232:	.
while_lstm_cell_333_2027234:	d*
while_lstm_cell_333_2027236:	¢+while/lstm_cell_333/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_333/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_333_2027232_0while_lstm_cell_333_2027234_0while_lstm_cell_333_2027236_0*
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027149Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_333/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_333/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_333/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_333/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_333_2027232while_lstm_cell_333_2027232_0"<
while_lstm_cell_333_2027234while_lstm_cell_333_2027234_0"<
while_lstm_cell_333_2027236while_lstm_cell_333_2027236_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_333/StatefulPartitionedCall+while/lstm_cell_333/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029049

inputs"
lstm_75_2029022:	"
lstm_75_2029024:	d
lstm_75_2029026:	"
lstm_76_2029029:	dÈ"
lstm_76_2029031:	2È
lstm_76_2029033:	È!
lstm_77_2029036:2(!
lstm_77_2029038:
(
lstm_77_2029040:("
dense_25_2029043:

dense_25_2029045:
identity¢ dense_25/StatefulPartitionedCall¢lstm_75/StatefulPartitionedCall¢lstm_76/StatefulPartitionedCall¢lstm_77/StatefulPartitionedCall
lstm_75/StatefulPartitionedCallStatefulPartitionedCallinputslstm_75_2029022lstm_75_2029024lstm_75_2029026*
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2028981¨
lstm_76/StatefulPartitionedCallStatefulPartitionedCall(lstm_75/StatefulPartitionedCall:output:0lstm_76_2029029lstm_76_2029031lstm_76_2029033*
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2028816¤
lstm_77/StatefulPartitionedCallStatefulPartitionedCall(lstm_76/StatefulPartitionedCall:output:0lstm_77_2029036lstm_77_2029038lstm_77_2029040*
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2028651
 dense_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_77/StatefulPartitionedCall:output:0dense_25_2029043dense_25_2029045*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_2028453x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_25/StatefulPartitionedCall ^lstm_75/StatefulPartitionedCall ^lstm_76/StatefulPartitionedCall ^lstm_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_75/StatefulPartitionedCalllstm_75/StatefulPartitionedCall2B
lstm_76/StatefulPartitionedCalllstm_76/StatefulPartitionedCall2B
lstm_77/StatefulPartitionedCalllstm_77/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ8
Ú
while_body_2028201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_334_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_334_biasadd_readvariableop_resource:	È¢*while/lstm_cell_334/BiasAdd/ReadVariableOp¢)while/lstm_cell_334/MatMul/ReadVariableOp¢+while/lstm_cell_334/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_334/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_334/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_334/addAddV2$while/lstm_cell_334/MatMul:product:0&while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_334/BiasAddBiasAddwhile/lstm_cell_334/add:z:02while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_334/splitSplit,while/lstm_cell_334/split/split_dim:output:0$while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_334/SigmoidSigmoid"while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_1Sigmoid"while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mulMul!while/lstm_cell_334/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_334/ReluRelu"while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_1Mulwhile/lstm_cell_334/Sigmoid:y:0&while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/add_1AddV2while/lstm_cell_334/mul:z:0while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_334/Sigmoid_2Sigmoid"while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_334/Relu_1Reluwhile/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_334/mul_2Mul!while/lstm_cell_334/Sigmoid_2:y:0(while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_334/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_334/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_334/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_334/BiasAdd/ReadVariableOp*^while/lstm_cell_334/MatMul/ReadVariableOp,^while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_334_biasadd_readvariableop_resource5while_lstm_cell_334_biasadd_readvariableop_resource_0"n
4while_lstm_cell_334_matmul_1_readvariableop_resource6while_lstm_cell_334_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_334_matmul_readvariableop_resource4while_lstm_cell_334_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_334/BiasAdd/ReadVariableOp*while/lstm_cell_334/BiasAdd/ReadVariableOp2V
)while/lstm_cell_334/MatMul/ReadVariableOp)while/lstm_cell_334/MatMul/ReadVariableOp2Z
+while/lstm_cell_334/MatMul_1/ReadVariableOp+while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2032167

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
B
Ú

lstm_75_while_body_2029309,
(lstm_75_while_lstm_75_while_loop_counter2
.lstm_75_while_lstm_75_while_maximum_iterations
lstm_75_while_placeholder
lstm_75_while_placeholder_1
lstm_75_while_placeholder_2
lstm_75_while_placeholder_3+
'lstm_75_while_lstm_75_strided_slice_1_0g
clstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0:	Q
>lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0:	dL
=lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0:	
lstm_75_while_identity
lstm_75_while_identity_1
lstm_75_while_identity_2
lstm_75_while_identity_3
lstm_75_while_identity_4
lstm_75_while_identity_5)
%lstm_75_while_lstm_75_strided_slice_1e
alstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensorM
:lstm_75_while_lstm_cell_333_matmul_readvariableop_resource:	O
<lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource:	dJ
;lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource:	¢2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp¢1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp¢3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp
?lstm_75/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_75/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensor_0lstm_75_while_placeholderHlstm_75/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOpReadVariableOp<lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_75/while/lstm_cell_333/MatMulMatMul8lstm_75/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp>lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_75/while/lstm_cell_333/MatMul_1MatMullstm_75_while_placeholder_2;lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_75/while/lstm_cell_333/addAddV2,lstm_75/while/lstm_cell_333/MatMul:product:0.lstm_75/while/lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp=lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_75/while/lstm_cell_333/BiasAddBiasAdd#lstm_75/while/lstm_cell_333/add:z:0:lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_75/while/lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_75/while/lstm_cell_333/splitSplit4lstm_75/while/lstm_cell_333/split/split_dim:output:0,lstm_75/while/lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_75/while/lstm_cell_333/SigmoidSigmoid*lstm_75/while/lstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_75/while/lstm_cell_333/Sigmoid_1Sigmoid*lstm_75/while/lstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_75/while/lstm_cell_333/mulMul)lstm_75/while/lstm_cell_333/Sigmoid_1:y:0lstm_75_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_75/while/lstm_cell_333/ReluRelu*lstm_75/while/lstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_75/while/lstm_cell_333/mul_1Mul'lstm_75/while/lstm_cell_333/Sigmoid:y:0.lstm_75/while/lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_75/while/lstm_cell_333/add_1AddV2#lstm_75/while/lstm_cell_333/mul:z:0%lstm_75/while/lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_75/while/lstm_cell_333/Sigmoid_2Sigmoid*lstm_75/while/lstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_75/while/lstm_cell_333/Relu_1Relu%lstm_75/while/lstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_75/while/lstm_cell_333/mul_2Mul)lstm_75/while/lstm_cell_333/Sigmoid_2:y:00lstm_75/while/lstm_cell_333/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_75/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_75_while_placeholder_1lstm_75_while_placeholder%lstm_75/while/lstm_cell_333/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_75/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_75/while/addAddV2lstm_75_while_placeholderlstm_75/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_75/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_75/while/add_1AddV2(lstm_75_while_lstm_75_while_loop_counterlstm_75/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_75/while/IdentityIdentitylstm_75/while/add_1:z:0^lstm_75/while/NoOp*
T0*
_output_shapes
: 
lstm_75/while/Identity_1Identity.lstm_75_while_lstm_75_while_maximum_iterations^lstm_75/while/NoOp*
T0*
_output_shapes
: q
lstm_75/while/Identity_2Identitylstm_75/while/add:z:0^lstm_75/while/NoOp*
T0*
_output_shapes
: 
lstm_75/while/Identity_3IdentityBlstm_75/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_75/while/NoOp*
T0*
_output_shapes
: 
lstm_75/while/Identity_4Identity%lstm_75/while/lstm_cell_333/mul_2:z:0^lstm_75/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_75/while/Identity_5Identity%lstm_75/while/lstm_cell_333/add_1:z:0^lstm_75/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_75/while/NoOpNoOp3^lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2^lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp4^lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_75_while_identitylstm_75/while/Identity:output:0"=
lstm_75_while_identity_1!lstm_75/while/Identity_1:output:0"=
lstm_75_while_identity_2!lstm_75/while/Identity_2:output:0"=
lstm_75_while_identity_3!lstm_75/while/Identity_3:output:0"=
lstm_75_while_identity_4!lstm_75/while/Identity_4:output:0"=
lstm_75_while_identity_5!lstm_75/while/Identity_5:output:0"P
%lstm_75_while_lstm_75_strided_slice_1'lstm_75_while_lstm_75_strided_slice_1_0"|
;lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource=lstm_75_while_lstm_cell_333_biasadd_readvariableop_resource_0"~
<lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource>lstm_75_while_lstm_cell_333_matmul_1_readvariableop_resource_0"z
:lstm_75_while_lstm_cell_333_matmul_readvariableop_resource<lstm_75_while_lstm_cell_333_matmul_readvariableop_resource_0"È
alstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensorclstm_75_while_tensorarrayv2read_tensorlistgetitem_lstm_75_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2lstm_75/while/lstm_cell_333/BiasAdd/ReadVariableOp2f
1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp1lstm_75/while/lstm_cell_333/MatMul/ReadVariableOp2j
3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp3lstm_75/while/lstm_cell_333/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2027016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2027016___redundant_placeholder05
1while_while_cond_2027016___redundant_placeholder15
1while_while_cond_2027016___redundant_placeholder25
1while_while_cond_2027016___redundant_placeholder3
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030577

inputs?
,lstm_cell_333_matmul_readvariableop_resource:	A
.lstm_cell_333_matmul_1_readvariableop_resource:	d<
-lstm_cell_333_biasadd_readvariableop_resource:	
identity¢$lstm_cell_333/BiasAdd/ReadVariableOp¢#lstm_cell_333/MatMul/ReadVariableOp¢%lstm_cell_333/MatMul_1/ReadVariableOp¢while;
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
#lstm_cell_333/MatMul/ReadVariableOpReadVariableOp,lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_333/MatMulMatMulstrided_slice_2:output:0+lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_333/MatMul_1MatMulzeros:output:0-lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_333/addAddV2lstm_cell_333/MatMul:product:0 lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_333/BiasAddBiasAddlstm_cell_333/add:z:0,lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_333/splitSplit&lstm_cell_333/split/split_dim:output:0lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_333/SigmoidSigmoidlstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_1Sigmoidlstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_333/mulMullstm_cell_333/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_333/ReluRelulstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_1Mullstm_cell_333/Sigmoid:y:0 lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_333/add_1AddV2lstm_cell_333/mul:z:0lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_2Sigmoidlstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_333/Relu_1Relulstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_2Mullstm_cell_333/Sigmoid_2:y:0"lstm_cell_333/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_333_matmul_readvariableop_resource.lstm_cell_333_matmul_1_readvariableop_resource-lstm_cell_333_biasadd_readvariableop_resource*
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
while_body_2030493*
condR
while_cond_2030492*K
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
NoOpNoOp%^lstm_cell_333/BiasAdd/ReadVariableOp$^lstm_cell_333/MatMul/ReadVariableOp&^lstm_cell_333/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_333/BiasAdd/ReadVariableOp$lstm_cell_333/BiasAdd/ReadVariableOp2J
#lstm_cell_333/MatMul/ReadVariableOp#lstm_cell_333/MatMul/ReadVariableOp2N
%lstm_cell_333/MatMul_1/ReadVariableOp%lstm_cell_333/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®8

D__inference_lstm_75_layer_call_and_return_conditional_losses_2027277

inputs(
lstm_cell_333_2027195:	(
lstm_cell_333_2027197:	d$
lstm_cell_333_2027199:	
identity¢%lstm_cell_333/StatefulPartitionedCall¢while;
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
%lstm_cell_333/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_333_2027195lstm_cell_333_2027197lstm_cell_333_2027199*
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027149n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_333_2027195lstm_cell_333_2027197lstm_cell_333_2027199*
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
while_body_2027208*
condR
while_cond_2027207*K
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
NoOpNoOp&^lstm_cell_333/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_333/StatefulPartitionedCall%lstm_cell_333/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2027849

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
ï
ø
/__inference_lstm_cell_334_layer_call_fn_2032103

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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027499o
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
¿


%__inference_signature_wrapper_2029196
lstm_75_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2026936o
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
_user_specified_namelstm_75_input
®8

D__inference_lstm_76_layer_call_and_return_conditional_losses_2027436

inputs(
lstm_cell_334_2027354:	dÈ(
lstm_cell_334_2027356:	2È$
lstm_cell_334_2027358:	È
identity¢%lstm_cell_334/StatefulPartitionedCall¢while;
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
%lstm_cell_334/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_334_2027354lstm_cell_334_2027356lstm_cell_334_2027358*
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2027353n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_334_2027354lstm_cell_334_2027356lstm_cell_334_2027358*
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
while_body_2027367*
condR
while_cond_2027366*K
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
NoOpNoOp&^lstm_cell_334/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_334/StatefulPartitionedCall%lstm_cell_334/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_2030492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2030492___redundant_placeholder05
1while_while_cond_2030492___redundant_placeholder15
1while_while_cond_2030492___redundant_placeholder25
1while_while_cond_2030492___redundant_placeholder3
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
®8

D__inference_lstm_75_layer_call_and_return_conditional_losses_2027086

inputs(
lstm_cell_333_2027004:	(
lstm_cell_333_2027006:	d$
lstm_cell_333_2027008:	
identity¢%lstm_cell_333/StatefulPartitionedCall¢while;
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
%lstm_cell_333/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_333_2027004lstm_cell_333_2027006lstm_cell_333_2027008*
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2027003n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_333_2027004lstm_cell_333_2027006lstm_cell_333_2027008*
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
while_body_2027017*
condR
while_cond_2027016*K
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
NoOpNoOp&^lstm_cell_333/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_333/StatefulPartitionedCall%lstm_cell_333/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
K
¤
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030434
inputs_0?
,lstm_cell_333_matmul_readvariableop_resource:	A
.lstm_cell_333_matmul_1_readvariableop_resource:	d<
-lstm_cell_333_biasadd_readvariableop_resource:	
identity¢$lstm_cell_333/BiasAdd/ReadVariableOp¢#lstm_cell_333/MatMul/ReadVariableOp¢%lstm_cell_333/MatMul_1/ReadVariableOp¢while=
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
#lstm_cell_333/MatMul/ReadVariableOpReadVariableOp,lstm_cell_333_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_333/MatMulMatMulstrided_slice_2:output:0+lstm_cell_333/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_333/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_333_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_333/MatMul_1MatMulzeros:output:0-lstm_cell_333/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_333/addAddV2lstm_cell_333/MatMul:product:0 lstm_cell_333/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_333/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_333_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_333/BiasAddBiasAddlstm_cell_333/add:z:0,lstm_cell_333/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_333/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_333/splitSplit&lstm_cell_333/split/split_dim:output:0lstm_cell_333/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_333/SigmoidSigmoidlstm_cell_333/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_1Sigmoidlstm_cell_333/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_333/mulMullstm_cell_333/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_333/ReluRelulstm_cell_333/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_1Mullstm_cell_333/Sigmoid:y:0 lstm_cell_333/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_333/add_1AddV2lstm_cell_333/mul:z:0lstm_cell_333/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_333/Sigmoid_2Sigmoidlstm_cell_333/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_333/Relu_1Relulstm_cell_333/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_333/mul_2Mullstm_cell_333/Sigmoid_2:y:0"lstm_cell_333/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_333_matmul_readvariableop_resource.lstm_cell_333_matmul_1_readvariableop_resource-lstm_cell_333_biasadd_readvariableop_resource*
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
while_body_2030350*
condR
while_cond_2030349*K
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
NoOpNoOp%^lstm_cell_333/BiasAdd/ReadVariableOp$^lstm_cell_333/MatMul/ReadVariableOp&^lstm_cell_333/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_333/BiasAdd/ReadVariableOp$lstm_cell_333/BiasAdd/ReadVariableOp2J
#lstm_cell_333/MatMul/ReadVariableOp#lstm_cell_333/MatMul/ReadVariableOp2N
%lstm_cell_333/MatMul_1/ReadVariableOp%lstm_cell_333/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
B
Ú

lstm_76_while_body_2029448,
(lstm_76_while_lstm_76_while_loop_counter2
.lstm_76_while_lstm_76_while_maximum_iterations
lstm_76_while_placeholder
lstm_76_while_placeholder_1
lstm_76_while_placeholder_2
lstm_76_while_placeholder_3+
'lstm_76_while_lstm_76_strided_slice_1_0g
clstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0:	dÈQ
>lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0:	È
lstm_76_while_identity
lstm_76_while_identity_1
lstm_76_while_identity_2
lstm_76_while_identity_3
lstm_76_while_identity_4
lstm_76_while_identity_5)
%lstm_76_while_lstm_76_strided_slice_1e
alstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensorM
:lstm_76_while_lstm_cell_334_matmul_readvariableop_resource:	dÈO
<lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource:	2ÈJ
;lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource:	È¢2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp¢1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp¢3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp
?lstm_76/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_76/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensor_0lstm_76_while_placeholderHlstm_76/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOpReadVariableOp<lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_76/while/lstm_cell_334/MatMulMatMul8lstm_76/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOpReadVariableOp>lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_76/while/lstm_cell_334/MatMul_1MatMullstm_76_while_placeholder_2;lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_76/while/lstm_cell_334/addAddV2,lstm_76/while/lstm_cell_334/MatMul:product:0.lstm_76/while/lstm_cell_334/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOpReadVariableOp=lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_76/while/lstm_cell_334/BiasAddBiasAdd#lstm_76/while/lstm_cell_334/add:z:0:lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_76/while/lstm_cell_334/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_76/while/lstm_cell_334/splitSplit4lstm_76/while/lstm_cell_334/split/split_dim:output:0,lstm_76/while/lstm_cell_334/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_76/while/lstm_cell_334/SigmoidSigmoid*lstm_76/while/lstm_cell_334/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_76/while/lstm_cell_334/Sigmoid_1Sigmoid*lstm_76/while/lstm_cell_334/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_76/while/lstm_cell_334/mulMul)lstm_76/while/lstm_cell_334/Sigmoid_1:y:0lstm_76_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_76/while/lstm_cell_334/ReluRelu*lstm_76/while/lstm_cell_334/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_76/while/lstm_cell_334/mul_1Mul'lstm_76/while/lstm_cell_334/Sigmoid:y:0.lstm_76/while/lstm_cell_334/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_76/while/lstm_cell_334/add_1AddV2#lstm_76/while/lstm_cell_334/mul:z:0%lstm_76/while/lstm_cell_334/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_76/while/lstm_cell_334/Sigmoid_2Sigmoid*lstm_76/while/lstm_cell_334/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_76/while/lstm_cell_334/Relu_1Relu%lstm_76/while/lstm_cell_334/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_76/while/lstm_cell_334/mul_2Mul)lstm_76/while/lstm_cell_334/Sigmoid_2:y:00lstm_76/while/lstm_cell_334/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_76/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_76_while_placeholder_1lstm_76_while_placeholder%lstm_76/while/lstm_cell_334/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_76/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_76/while/addAddV2lstm_76_while_placeholderlstm_76/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_76/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_76/while/add_1AddV2(lstm_76_while_lstm_76_while_loop_counterlstm_76/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_76/while/IdentityIdentitylstm_76/while/add_1:z:0^lstm_76/while/NoOp*
T0*
_output_shapes
: 
lstm_76/while/Identity_1Identity.lstm_76_while_lstm_76_while_maximum_iterations^lstm_76/while/NoOp*
T0*
_output_shapes
: q
lstm_76/while/Identity_2Identitylstm_76/while/add:z:0^lstm_76/while/NoOp*
T0*
_output_shapes
: 
lstm_76/while/Identity_3IdentityBlstm_76/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_76/while/NoOp*
T0*
_output_shapes
: 
lstm_76/while/Identity_4Identity%lstm_76/while/lstm_cell_334/mul_2:z:0^lstm_76/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_76/while/Identity_5Identity%lstm_76/while/lstm_cell_334/add_1:z:0^lstm_76/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_76/while/NoOpNoOp3^lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2^lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp4^lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_76_while_identitylstm_76/while/Identity:output:0"=
lstm_76_while_identity_1!lstm_76/while/Identity_1:output:0"=
lstm_76_while_identity_2!lstm_76/while/Identity_2:output:0"=
lstm_76_while_identity_3!lstm_76/while/Identity_3:output:0"=
lstm_76_while_identity_4!lstm_76/while/Identity_4:output:0"=
lstm_76_while_identity_5!lstm_76/while/Identity_5:output:0"P
%lstm_76_while_lstm_76_strided_slice_1'lstm_76_while_lstm_76_strided_slice_1_0"|
;lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource=lstm_76_while_lstm_cell_334_biasadd_readvariableop_resource_0"~
<lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource>lstm_76_while_lstm_cell_334_matmul_1_readvariableop_resource_0"z
:lstm_76_while_lstm_cell_334_matmul_readvariableop_resource<lstm_76_while_lstm_cell_334_matmul_readvariableop_resource_0"È
alstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensorclstm_76_while_tensorarrayv2read_tensorlistgetitem_lstm_76_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2lstm_76/while/lstm_cell_334/BiasAdd/ReadVariableOp2f
1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp1lstm_76/while/lstm_cell_334/MatMul/ReadVariableOp2j
3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp3lstm_76/while/lstm_cell_334/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_75_input:
serving_default_lstm_75_input:0ÿÿÿÿÿÿÿÿÿ<
dense_250
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
2dense_25/kernel
:2dense_25/bias
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
.:,	2lstm_75/lstm_cell_75/kernel
8:6	d2%lstm_75/lstm_cell_75/recurrent_kernel
(:&2lstm_75/lstm_cell_75/bias
.:,	dÈ2lstm_76/lstm_cell_76/kernel
8:6	2È2%lstm_76/lstm_cell_76/recurrent_kernel
(:&È2lstm_76/lstm_cell_76/bias
-:+2(2lstm_77/lstm_cell_77/kernel
7:5
(2%lstm_77/lstm_cell_77/recurrent_kernel
':%(2lstm_77/lstm_cell_77/bias
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
2Adam/dense_25/kernel/m
 :2Adam/dense_25/bias/m
3:1	2"Adam/lstm_75/lstm_cell_75/kernel/m
=:;	d2,Adam/lstm_75/lstm_cell_75/recurrent_kernel/m
-:+2 Adam/lstm_75/lstm_cell_75/bias/m
3:1	dÈ2"Adam/lstm_76/lstm_cell_76/kernel/m
=:;	2È2,Adam/lstm_76/lstm_cell_76/recurrent_kernel/m
-:+È2 Adam/lstm_76/lstm_cell_76/bias/m
2:02(2"Adam/lstm_77/lstm_cell_77/kernel/m
<::
(2,Adam/lstm_77/lstm_cell_77/recurrent_kernel/m
,:*(2 Adam/lstm_77/lstm_cell_77/bias/m
&:$
2Adam/dense_25/kernel/v
 :2Adam/dense_25/bias/v
3:1	2"Adam/lstm_75/lstm_cell_75/kernel/v
=:;	d2,Adam/lstm_75/lstm_cell_75/recurrent_kernel/v
-:+2 Adam/lstm_75/lstm_cell_75/bias/v
3:1	dÈ2"Adam/lstm_76/lstm_cell_76/kernel/v
=:;	2È2,Adam/lstm_76/lstm_cell_76/recurrent_kernel/v
-:+È2 Adam/lstm_76/lstm_cell_76/bias/v
2:02(2"Adam/lstm_77/lstm_cell_77/kernel/v
<::
(2,Adam/lstm_77/lstm_cell_77/recurrent_kernel/v
,:*(2 Adam/lstm_77/lstm_cell_77/bias/v
2
/__inference_sequential_25_layer_call_fn_2028485
/__inference_sequential_25_layer_call_fn_2029223
/__inference_sequential_25_layer_call_fn_2029250
/__inference_sequential_25_layer_call_fn_2029101À
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029677
J__inference_sequential_25_layer_call_and_return_conditional_losses_2030104
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029131
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029161À
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
"__inference__wrapped_model_2026936lstm_75_input"
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
)__inference_lstm_75_layer_call_fn_2030115
)__inference_lstm_75_layer_call_fn_2030126
)__inference_lstm_75_layer_call_fn_2030137
)__inference_lstm_75_layer_call_fn_2030148Õ
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030291
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030434
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030577
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030720Õ
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
)__inference_lstm_76_layer_call_fn_2030731
)__inference_lstm_76_layer_call_fn_2030742
)__inference_lstm_76_layer_call_fn_2030753
)__inference_lstm_76_layer_call_fn_2030764Õ
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2030907
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031050
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031193
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031336Õ
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
)__inference_lstm_77_layer_call_fn_2031347
)__inference_lstm_77_layer_call_fn_2031358
)__inference_lstm_77_layer_call_fn_2031369
)__inference_lstm_77_layer_call_fn_2031380Õ
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031523
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031666
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031809
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031952Õ
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
*__inference_dense_25_layer_call_fn_2031961¢
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
E__inference_dense_25_layer_call_and_return_conditional_losses_2031971¢
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
%__inference_signature_wrapper_2029196lstm_75_input"
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
/__inference_lstm_cell_333_layer_call_fn_2031988
/__inference_lstm_cell_333_layer_call_fn_2032005¾
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2032037
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2032069¾
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
/__inference_lstm_cell_334_layer_call_fn_2032086
/__inference_lstm_cell_334_layer_call_fn_2032103¾
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2032135
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2032167¾
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
/__inference_lstm_cell_335_layer_call_fn_2032184
/__inference_lstm_cell_335_layer_call_fn_2032201¾
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2032233
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2032265¾
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
"__inference__wrapped_model_2026936~-./012345!":¢7
0¢-
+(
lstm_75_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_25"
dense_25ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_25_layer_call_and_return_conditional_losses_2031971\!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_25_layer_call_fn_2031961O!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÓ
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030291-./O¢L
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030434-./O¢L
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030577q-./?¢<
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
D__inference_lstm_75_layer_call_and_return_conditional_losses_2030720q-./?¢<
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
)__inference_lstm_75_layer_call_fn_2030115}-./O¢L
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
)__inference_lstm_75_layer_call_fn_2030126}-./O¢L
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
)__inference_lstm_75_layer_call_fn_2030137d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_75_layer_call_fn_2030148d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_76_layer_call_and_return_conditional_losses_2030907012O¢L
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031050012O¢L
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031193q012?¢<
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
D__inference_lstm_76_layer_call_and_return_conditional_losses_2031336q012?¢<
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
)__inference_lstm_76_layer_call_fn_2030731}012O¢L
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
)__inference_lstm_76_layer_call_fn_2030742}012O¢L
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
)__inference_lstm_76_layer_call_fn_2030753d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_76_layer_call_fn_2030764d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Å
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031523}345O¢L
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031666}345O¢L
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031809m345?¢<
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
D__inference_lstm_77_layer_call_and_return_conditional_losses_2031952m345?¢<
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
)__inference_lstm_77_layer_call_fn_2031347p345O¢L
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
)__inference_lstm_77_layer_call_fn_2031358p345O¢L
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
)__inference_lstm_77_layer_call_fn_2031369`345?¢<
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
)__inference_lstm_77_layer_call_fn_2031380`345?¢<
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2032037ý-./¢}
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
J__inference_lstm_cell_333_layer_call_and_return_conditional_losses_2032069ý-./¢}
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
/__inference_lstm_cell_333_layer_call_fn_2031988í-./¢}
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
/__inference_lstm_cell_333_layer_call_fn_2032005í-./¢}
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2032135ý012¢}
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
J__inference_lstm_cell_334_layer_call_and_return_conditional_losses_2032167ý012¢}
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
/__inference_lstm_cell_334_layer_call_fn_2032086í012¢}
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
/__inference_lstm_cell_334_layer_call_fn_2032103í012¢}
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2032233ý345¢}
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
J__inference_lstm_cell_335_layer_call_and_return_conditional_losses_2032265ý345¢}
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
/__inference_lstm_cell_335_layer_call_fn_2032184í345¢}
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
/__inference_lstm_cell_335_layer_call_fn_2032201í345¢}
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029131x-./012345!"B¢?
8¢5
+(
lstm_75_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029161x-./012345!"B¢?
8¢5
+(
lstm_75_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_25_layer_call_and_return_conditional_losses_2029677q-./012345!";¢8
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_2030104q-./012345!";¢8
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
/__inference_sequential_25_layer_call_fn_2028485k-./012345!"B¢?
8¢5
+(
lstm_75_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_2029101k-./012345!"B¢?
8¢5
+(
lstm_75_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_2029223d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_2029250d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
%__inference_signature_wrapper_2029196-./012345!"K¢H
¢ 
Aª>
<
lstm_75_input+(
lstm_75_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_25"
dense_25ÿÿÿÿÿÿÿÿÿ