¤/
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ĝ -
|
dense_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_105/kernel
u
$dense_105/kernel/Read/ReadVariableOpReadVariableOpdense_105/kernel*
_output_shapes

:
*
dtype0
t
dense_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_105/bias
m
"dense_105/bias/Read/ReadVariableOpReadVariableOpdense_105/bias*
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
lstm_315/lstm_cell_315/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_315/lstm_cell_315/kernel

1lstm_315/lstm_cell_315/kernel/Read/ReadVariableOpReadVariableOplstm_315/lstm_cell_315/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_315/lstm_cell_315/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_315/lstm_cell_315/recurrent_kernel
¤
;lstm_315/lstm_cell_315/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_315/lstm_cell_315/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_315/lstm_cell_315/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_315/lstm_cell_315/bias

/lstm_315/lstm_cell_315/bias/Read/ReadVariableOpReadVariableOplstm_315/lstm_cell_315/bias*
_output_shapes	
:*
dtype0

lstm_316/lstm_cell_316/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_316/lstm_cell_316/kernel

1lstm_316/lstm_cell_316/kernel/Read/ReadVariableOpReadVariableOplstm_316/lstm_cell_316/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_316/lstm_cell_316/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_316/lstm_cell_316/recurrent_kernel
¤
;lstm_316/lstm_cell_316/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_316/lstm_cell_316/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_316/lstm_cell_316/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_316/lstm_cell_316/bias

/lstm_316/lstm_cell_316/bias/Read/ReadVariableOpReadVariableOplstm_316/lstm_cell_316/bias*
_output_shapes	
:È*
dtype0

lstm_317/lstm_cell_317/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_317/lstm_cell_317/kernel

1lstm_317/lstm_cell_317/kernel/Read/ReadVariableOpReadVariableOplstm_317/lstm_cell_317/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_317/lstm_cell_317/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_317/lstm_cell_317/recurrent_kernel
£
;lstm_317/lstm_cell_317/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_317/lstm_cell_317/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_317/lstm_cell_317/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_317/lstm_cell_317/bias

/lstm_317/lstm_cell_317/bias/Read/ReadVariableOpReadVariableOplstm_317/lstm_cell_317/bias*
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

Adam/dense_105/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_105/kernel/m

+Adam/dense_105/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_105/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_105/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_105/bias/m
{
)Adam/dense_105/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_105/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_315/lstm_cell_315/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_315/lstm_cell_315/kernel/m

8Adam/lstm_315/lstm_cell_315/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_315/lstm_cell_315/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_315/lstm_cell_315/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_315/lstm_cell_315/recurrent_kernel/m
²
BAdam/lstm_315/lstm_cell_315/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_315/lstm_cell_315/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_315/lstm_cell_315/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_315/lstm_cell_315/bias/m

6Adam/lstm_315/lstm_cell_315/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_315/lstm_cell_315/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_316/lstm_cell_316/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_316/lstm_cell_316/kernel/m

8Adam/lstm_316/lstm_cell_316/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_316/lstm_cell_316/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_316/lstm_cell_316/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_316/lstm_cell_316/recurrent_kernel/m
²
BAdam/lstm_316/lstm_cell_316/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_316/lstm_cell_316/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_316/lstm_cell_316/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_316/lstm_cell_316/bias/m

6Adam/lstm_316/lstm_cell_316/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_316/lstm_cell_316/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_317/lstm_cell_317/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_317/lstm_cell_317/kernel/m

8Adam/lstm_317/lstm_cell_317/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_317/lstm_cell_317/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_317/lstm_cell_317/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_317/lstm_cell_317/recurrent_kernel/m
ħ
BAdam/lstm_317/lstm_cell_317/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_317/lstm_cell_317/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_317/lstm_cell_317/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_317/lstm_cell_317/bias/m

6Adam/lstm_317/lstm_cell_317/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_317/lstm_cell_317/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_105/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_105/kernel/v

+Adam/dense_105/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_105/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_105/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_105/bias/v
{
)Adam/dense_105/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_105/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_315/lstm_cell_315/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_315/lstm_cell_315/kernel/v

8Adam/lstm_315/lstm_cell_315/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_315/lstm_cell_315/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_315/lstm_cell_315/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_315/lstm_cell_315/recurrent_kernel/v
²
BAdam/lstm_315/lstm_cell_315/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_315/lstm_cell_315/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_315/lstm_cell_315/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_315/lstm_cell_315/bias/v

6Adam/lstm_315/lstm_cell_315/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_315/lstm_cell_315/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_316/lstm_cell_316/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_316/lstm_cell_316/kernel/v

8Adam/lstm_316/lstm_cell_316/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_316/lstm_cell_316/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_316/lstm_cell_316/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_316/lstm_cell_316/recurrent_kernel/v
²
BAdam/lstm_316/lstm_cell_316/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_316/lstm_cell_316/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_316/lstm_cell_316/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_316/lstm_cell_316/bias/v

6Adam/lstm_316/lstm_cell_316/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_316/lstm_cell_316/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_317/lstm_cell_317/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_317/lstm_cell_317/kernel/v

8Adam/lstm_317/lstm_cell_317/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_317/lstm_cell_317/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_317/lstm_cell_317/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_317/lstm_cell_317/recurrent_kernel/v
ħ
BAdam/lstm_317/lstm_cell_317/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_317/lstm_cell_317/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_317/lstm_cell_317/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_317/lstm_cell_317/bias/v

6Adam/lstm_317/lstm_cell_317/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_317/lstm_cell_317/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ċA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* A
valueABA BA
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
\Z
VARIABLE_VALUEdense_105/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_105/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_315/lstm_cell_315/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_315/lstm_cell_315/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_315/lstm_cell_315/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_316/lstm_cell_316/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_316/lstm_cell_316/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_316/lstm_cell_316/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_317/lstm_cell_317/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_317/lstm_cell_317/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_317/lstm_cell_317/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_105/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_105/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_315/lstm_cell_315/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_315/lstm_cell_315/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_315/lstm_cell_315/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_316/lstm_cell_316/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_316/lstm_cell_316/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_316/lstm_cell_316/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_317/lstm_cell_317/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_317/lstm_cell_317/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_317/lstm_cell_317/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_105/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_105/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_315/lstm_cell_315/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_315/lstm_cell_315/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_315/lstm_cell_315/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_316/lstm_cell_316/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_316/lstm_cell_316/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_316/lstm_cell_316/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_317/lstm_cell_317/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_317/lstm_cell_317/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_317/lstm_cell_317/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_315_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_315_inputlstm_315/lstm_cell_315/kernel'lstm_315/lstm_cell_315/recurrent_kernellstm_315/lstm_cell_315/biaslstm_316/lstm_cell_316/kernel'lstm_316/lstm_cell_316/recurrent_kernellstm_316/lstm_cell_316/biaslstm_317/lstm_cell_317/kernel'lstm_317/lstm_cell_317/recurrent_kernellstm_317/lstm_cell_317/biasdense_105/kerneldense_105/bias*
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
$__inference_signature_wrapper_523392
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_105/kernel/Read/ReadVariableOp"dense_105/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_315/lstm_cell_315/kernel/Read/ReadVariableOp;lstm_315/lstm_cell_315/recurrent_kernel/Read/ReadVariableOp/lstm_315/lstm_cell_315/bias/Read/ReadVariableOp1lstm_316/lstm_cell_316/kernel/Read/ReadVariableOp;lstm_316/lstm_cell_316/recurrent_kernel/Read/ReadVariableOp/lstm_316/lstm_cell_316/bias/Read/ReadVariableOp1lstm_317/lstm_cell_317/kernel/Read/ReadVariableOp;lstm_317/lstm_cell_317/recurrent_kernel/Read/ReadVariableOp/lstm_317/lstm_cell_317/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_105/kernel/m/Read/ReadVariableOp)Adam/dense_105/bias/m/Read/ReadVariableOp8Adam/lstm_315/lstm_cell_315/kernel/m/Read/ReadVariableOpBAdam/lstm_315/lstm_cell_315/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_315/lstm_cell_315/bias/m/Read/ReadVariableOp8Adam/lstm_316/lstm_cell_316/kernel/m/Read/ReadVariableOpBAdam/lstm_316/lstm_cell_316/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_316/lstm_cell_316/bias/m/Read/ReadVariableOp8Adam/lstm_317/lstm_cell_317/kernel/m/Read/ReadVariableOpBAdam/lstm_317/lstm_cell_317/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_317/lstm_cell_317/bias/m/Read/ReadVariableOp+Adam/dense_105/kernel/v/Read/ReadVariableOp)Adam/dense_105/bias/v/Read/ReadVariableOp8Adam/lstm_315/lstm_cell_315/kernel/v/Read/ReadVariableOpBAdam/lstm_315/lstm_cell_315/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_315/lstm_cell_315/bias/v/Read/ReadVariableOp8Adam/lstm_316/lstm_cell_316/kernel/v/Read/ReadVariableOpBAdam/lstm_316/lstm_cell_316/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_316/lstm_cell_316/bias/v/Read/ReadVariableOp8Adam/lstm_317/lstm_cell_317/kernel/v/Read/ReadVariableOpBAdam/lstm_317/lstm_cell_317/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_317/lstm_cell_317/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_526604

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_105/kerneldense_105/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_315/lstm_cell_315/kernel'lstm_315/lstm_cell_315/recurrent_kernellstm_315/lstm_cell_315/biaslstm_316/lstm_cell_316/kernel'lstm_316/lstm_cell_316/recurrent_kernellstm_316/lstm_cell_316/biaslstm_317/lstm_cell_317/kernel'lstm_317/lstm_cell_317/recurrent_kernellstm_317/lstm_cell_317/biastotalcountAdam/dense_105/kernel/mAdam/dense_105/bias/m$Adam/lstm_315/lstm_cell_315/kernel/m.Adam/lstm_315/lstm_cell_315/recurrent_kernel/m"Adam/lstm_315/lstm_cell_315/bias/m$Adam/lstm_316/lstm_cell_316/kernel/m.Adam/lstm_316/lstm_cell_316/recurrent_kernel/m"Adam/lstm_316/lstm_cell_316/bias/m$Adam/lstm_317/lstm_cell_317/kernel/m.Adam/lstm_317/lstm_cell_317/recurrent_kernel/m"Adam/lstm_317/lstm_cell_317/bias/mAdam/dense_105/kernel/vAdam/dense_105/bias/v$Adam/lstm_315/lstm_cell_315/kernel/v.Adam/lstm_315/lstm_cell_315/recurrent_kernel/v"Adam/lstm_315/lstm_cell_315/bias/v$Adam/lstm_316/lstm_cell_316/kernel/v.Adam/lstm_316/lstm_cell_316/recurrent_kernel/v"Adam/lstm_316/lstm_cell_316/bias/v$Adam/lstm_317/lstm_cell_317/kernel/v.Adam/lstm_317/lstm_cell_317/recurrent_kernel/v"Adam/lstm_317/lstm_cell_317/bias/v*4
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
"__inference__traced_restore_526734ĜÜ+
²

÷
lstm_317_while_cond_524209.
*lstm_317_while_lstm_317_while_loop_counter4
0lstm_317_while_lstm_317_while_maximum_iterations
lstm_317_while_placeholder 
lstm_317_while_placeholder_1 
lstm_317_while_placeholder_2 
lstm_317_while_placeholder_30
,lstm_317_while_less_lstm_317_strided_slice_1F
Blstm_317_while_lstm_317_while_cond_524209___redundant_placeholder0F
Blstm_317_while_lstm_317_while_cond_524209___redundant_placeholder1F
Blstm_317_while_lstm_317_while_cond_524209___redundant_placeholder2F
Blstm_317_while_lstm_317_while_cond_524209___redundant_placeholder3
lstm_317_while_identity

lstm_317/while/LessLesslstm_317_while_placeholder,lstm_317_while_less_lstm_317_strided_slice_1*
T0*
_output_shapes
: ]
lstm_317/while/IdentityIdentitylstm_317/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_317_while_identity lstm_317/while/Identity:output:0*(
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521199

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
8
?
while_body_525019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_85_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_85_biasadd_readvariableop_resource:	È˘)while/lstm_cell_85/BiasAdd/ReadVariableOp˘(while/lstm_cell_85/MatMul/ReadVariableOp˘*while/lstm_cell_85/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_85/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_85/addAddV2#while/lstm_cell_85/MatMul:product:0%while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_85/BiasAddBiasAddwhile/lstm_cell_85/add:z:01while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0#while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_85/SigmoidSigmoid!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_1Sigmoid!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mulMul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_85/ReluRelu!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_1Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/add_1AddV2while/lstm_cell_85/mul:z:0while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_2Sigmoid!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_2Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_85/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_85/BiasAdd/ReadVariableOp)^while/lstm_cell_85/MatMul/ReadVariableOp+^while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_85_biasadd_readvariableop_resource4while_lstm_cell_85_biasadd_readvariableop_resource_0"l
3while_lstm_cell_85_matmul_1_readvariableop_resource5while_lstm_cell_85_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_85_matmul_readvariableop_resource3while_lstm_cell_85_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_85/BiasAdd/ReadVariableOp)while/lstm_cell_85/BiasAdd/ReadVariableOp2T
(while/lstm_cell_85/MatMul/ReadVariableOp(while/lstm_cell_85/MatMul/ReadVariableOp2X
*while/lstm_cell_85/MatMul_1/ReadVariableOp*while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J

D__inference_lstm_317_layer_call_and_return_conditional_losses_522631

inputs=
+lstm_cell_86_matmul_readvariableop_resource:2(?
-lstm_cell_86_matmul_1_readvariableop_resource:
(:
,lstm_cell_86_biasadd_readvariableop_resource:(
identity˘#lstm_cell_86/BiasAdd/ReadVariableOp˘"lstm_cell_86/MatMul/ReadVariableOp˘$lstm_cell_86/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_86/MatMul/ReadVariableOpReadVariableOp+lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_86/MatMulMatMulstrided_slice_2:output:0*lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_86/MatMul_1MatMulzeros:output:0,lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_86/addAddV2lstm_cell_86/MatMul:product:0lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_86/BiasAddBiasAddlstm_cell_86/add:z:0+lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_86/splitSplit%lstm_cell_86/split/split_dim:output:0lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_86/SigmoidSigmoidlstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_1Sigmoidlstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_86/mulMullstm_cell_86/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_86/ReluRelulstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_1Mullstm_cell_86/Sigmoid:y:0lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_86/add_1AddV2lstm_cell_86/mul:z:0lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_2Sigmoidlstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_86/Relu_1Relulstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_2Mullstm_cell_86/Sigmoid_2:y:0!lstm_cell_86/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_86_matmul_readvariableop_resource-lstm_cell_86_matmul_1_readvariableop_resource,lstm_cell_86_biasadd_readvariableop_resource*
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
while_body_522547*
condR
while_cond_522546*K
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
NoOpNoOp$^lstm_cell_86/BiasAdd/ReadVariableOp#^lstm_cell_86/MatMul/ReadVariableOp%^lstm_cell_86/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_86/BiasAdd/ReadVariableOp#lstm_cell_86/BiasAdd/ReadVariableOp2H
"lstm_cell_86/MatMul/ReadVariableOp"lstm_cell_86/MatMul/ReadVariableOp2L
$lstm_cell_86/MatMul_1/ReadVariableOp$lstm_cell_86/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ä

*__inference_dense_105_layer_call_fn_526157

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_522649o
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
µ
?
while_cond_525161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525161___redundant_placeholder04
0while_while_cond_525161___redundant_placeholder14
0while_while_cond_525161___redundant_placeholder24
0while_while_cond_525161___redundant_placeholder3
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
Ĉ

J__inference_sequential_105_layer_call_and_return_conditional_losses_524300

inputsG
4lstm_315_lstm_cell_84_matmul_readvariableop_resource:	I
6lstm_315_lstm_cell_84_matmul_1_readvariableop_resource:	dD
5lstm_315_lstm_cell_84_biasadd_readvariableop_resource:	G
4lstm_316_lstm_cell_85_matmul_readvariableop_resource:	dÈI
6lstm_316_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈD
5lstm_316_lstm_cell_85_biasadd_readvariableop_resource:	ÈF
4lstm_317_lstm_cell_86_matmul_readvariableop_resource:2(H
6lstm_317_lstm_cell_86_matmul_1_readvariableop_resource:
(C
5lstm_317_lstm_cell_86_biasadd_readvariableop_resource:(:
(dense_105_matmul_readvariableop_resource:
7
)dense_105_biasadd_readvariableop_resource:
identity˘ dense_105/BiasAdd/ReadVariableOp˘dense_105/MatMul/ReadVariableOp˘,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp˘+lstm_315/lstm_cell_84/MatMul/ReadVariableOp˘-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp˘lstm_315/while˘,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp˘+lstm_316/lstm_cell_85/MatMul/ReadVariableOp˘-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp˘lstm_316/while˘,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp˘+lstm_317/lstm_cell_86/MatMul/ReadVariableOp˘-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp˘lstm_317/whileD
lstm_315/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_315/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_315/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_315/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_315/strided_sliceStridedSlicelstm_315/Shape:output:0%lstm_315/strided_slice/stack:output:0'lstm_315/strided_slice/stack_1:output:0'lstm_315/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_315/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_315/zeros/packedPacklstm_315/strided_slice:output:0 lstm_315/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_315/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_315/zerosFilllstm_315/zeros/packed:output:0lstm_315/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_315/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_315/zeros_1/packedPacklstm_315/strided_slice:output:0"lstm_315/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_315/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_315/zeros_1Fill lstm_315/zeros_1/packed:output:0lstm_315/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_315/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_315/transpose	Transposeinputs lstm_315/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_315/Shape_1Shapelstm_315/transpose:y:0*
T0*
_output_shapes
:h
lstm_315/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_315/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_315/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_315/strided_slice_1StridedSlicelstm_315/Shape_1:output:0'lstm_315/strided_slice_1/stack:output:0)lstm_315/strided_slice_1/stack_1:output:0)lstm_315/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_315/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_315/TensorArrayV2TensorListReserve-lstm_315/TensorArrayV2/element_shape:output:0!lstm_315/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_315/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_315/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_315/transpose:y:0Glstm_315/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_315/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_315/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_315/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_315/strided_slice_2StridedSlicelstm_315/transpose:y:0'lstm_315/strided_slice_2/stack:output:0)lstm_315/strided_slice_2/stack_1:output:0)lstm_315/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_315/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp4lstm_315_lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_315/lstm_cell_84/MatMulMatMul!lstm_315/strided_slice_2:output:03lstm_315/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp6lstm_315_lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_315/lstm_cell_84/MatMul_1MatMullstm_315/zeros:output:05lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_315/lstm_cell_84/addAddV2&lstm_315/lstm_cell_84/MatMul:product:0(lstm_315/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp5lstm_315_lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_315/lstm_cell_84/BiasAddBiasAddlstm_315/lstm_cell_84/add:z:04lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_315/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_315/lstm_cell_84/splitSplit.lstm_315/lstm_cell_84/split/split_dim:output:0&lstm_315/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_315/lstm_cell_84/SigmoidSigmoid$lstm_315/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/Sigmoid_1Sigmoid$lstm_315/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/mulMul#lstm_315/lstm_cell_84/Sigmoid_1:y:0lstm_315/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_315/lstm_cell_84/ReluRelu$lstm_315/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_315/lstm_cell_84/mul_1Mul!lstm_315/lstm_cell_84/Sigmoid:y:0(lstm_315/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/add_1AddV2lstm_315/lstm_cell_84/mul:z:0lstm_315/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/Sigmoid_2Sigmoid$lstm_315/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_315/lstm_cell_84/Relu_1Relulstm_315/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_315/lstm_cell_84/mul_2Mul#lstm_315/lstm_cell_84/Sigmoid_2:y:0*lstm_315/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_315/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_315/TensorArrayV2_1TensorListReserve/lstm_315/TensorArrayV2_1/element_shape:output:0!lstm_315/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_315/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_315/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_315/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_315/whileWhile$lstm_315/while/loop_counter:output:0*lstm_315/while/maximum_iterations:output:0lstm_315/time:output:0!lstm_315/TensorArrayV2_1:handle:0lstm_315/zeros:output:0lstm_315/zeros_1:output:0!lstm_315/strided_slice_1:output:0@lstm_315/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_315_lstm_cell_84_matmul_readvariableop_resource6lstm_315_lstm_cell_84_matmul_1_readvariableop_resource5lstm_315_lstm_cell_84_biasadd_readvariableop_resource*
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
lstm_315_while_body_523932*&
condR
lstm_315_while_cond_523931*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_315/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_315/TensorArrayV2Stack/TensorListStackTensorListStacklstm_315/while:output:3Blstm_315/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_315/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_315/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_315/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_315/strided_slice_3StridedSlice4lstm_315/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_315/strided_slice_3/stack:output:0)lstm_315/strided_slice_3/stack_1:output:0)lstm_315/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_315/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_315/transpose_1	Transpose4lstm_315/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_315/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_315/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_316/ShapeShapelstm_315/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_316/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_316/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_316/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_316/strided_sliceStridedSlicelstm_316/Shape:output:0%lstm_316/strided_slice/stack:output:0'lstm_316/strided_slice/stack_1:output:0'lstm_316/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_316/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_316/zeros/packedPacklstm_316/strided_slice:output:0 lstm_316/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_316/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_316/zerosFilllstm_316/zeros/packed:output:0lstm_316/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_316/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_316/zeros_1/packedPacklstm_316/strided_slice:output:0"lstm_316/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_316/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_316/zeros_1Fill lstm_316/zeros_1/packed:output:0lstm_316/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_316/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_316/transpose	Transposelstm_315/transpose_1:y:0 lstm_316/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_316/Shape_1Shapelstm_316/transpose:y:0*
T0*
_output_shapes
:h
lstm_316/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_316/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_316/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_316/strided_slice_1StridedSlicelstm_316/Shape_1:output:0'lstm_316/strided_slice_1/stack:output:0)lstm_316/strided_slice_1/stack_1:output:0)lstm_316/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_316/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_316/TensorArrayV2TensorListReserve-lstm_316/TensorArrayV2/element_shape:output:0!lstm_316/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_316/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_316/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_316/transpose:y:0Glstm_316/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_316/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_316/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_316/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_316/strided_slice_2StridedSlicelstm_316/transpose:y:0'lstm_316/strided_slice_2/stack:output:0)lstm_316/strided_slice_2/stack_1:output:0)lstm_316/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_316/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp4lstm_316_lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_316/lstm_cell_85/MatMulMatMul!lstm_316/strided_slice_2:output:03lstm_316/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp6lstm_316_lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_316/lstm_cell_85/MatMul_1MatMullstm_316/zeros:output:05lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_316/lstm_cell_85/addAddV2&lstm_316/lstm_cell_85/MatMul:product:0(lstm_316/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp5lstm_316_lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_316/lstm_cell_85/BiasAddBiasAddlstm_316/lstm_cell_85/add:z:04lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_316/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_316/lstm_cell_85/splitSplit.lstm_316/lstm_cell_85/split/split_dim:output:0&lstm_316/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_316/lstm_cell_85/SigmoidSigmoid$lstm_316/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/Sigmoid_1Sigmoid$lstm_316/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/mulMul#lstm_316/lstm_cell_85/Sigmoid_1:y:0lstm_316/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_316/lstm_cell_85/ReluRelu$lstm_316/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_316/lstm_cell_85/mul_1Mul!lstm_316/lstm_cell_85/Sigmoid:y:0(lstm_316/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/add_1AddV2lstm_316/lstm_cell_85/mul:z:0lstm_316/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/Sigmoid_2Sigmoid$lstm_316/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_316/lstm_cell_85/Relu_1Relulstm_316/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_316/lstm_cell_85/mul_2Mul#lstm_316/lstm_cell_85/Sigmoid_2:y:0*lstm_316/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_316/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_316/TensorArrayV2_1TensorListReserve/lstm_316/TensorArrayV2_1/element_shape:output:0!lstm_316/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_316/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_316/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_316/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_316/whileWhile$lstm_316/while/loop_counter:output:0*lstm_316/while/maximum_iterations:output:0lstm_316/time:output:0!lstm_316/TensorArrayV2_1:handle:0lstm_316/zeros:output:0lstm_316/zeros_1:output:0!lstm_316/strided_slice_1:output:0@lstm_316/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_316_lstm_cell_85_matmul_readvariableop_resource6lstm_316_lstm_cell_85_matmul_1_readvariableop_resource5lstm_316_lstm_cell_85_biasadd_readvariableop_resource*
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
lstm_316_while_body_524071*&
condR
lstm_316_while_cond_524070*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_316/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_316/TensorArrayV2Stack/TensorListStackTensorListStacklstm_316/while:output:3Blstm_316/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_316/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_316/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_316/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_316/strided_slice_3StridedSlice4lstm_316/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_316/strided_slice_3/stack:output:0)lstm_316/strided_slice_3/stack_1:output:0)lstm_316/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_316/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_316/transpose_1	Transpose4lstm_316/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_316/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_316/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_317/ShapeShapelstm_316/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_317/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_317/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_317/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_317/strided_sliceStridedSlicelstm_317/Shape:output:0%lstm_317/strided_slice/stack:output:0'lstm_317/strided_slice/stack_1:output:0'lstm_317/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_317/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_317/zeros/packedPacklstm_317/strided_slice:output:0 lstm_317/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_317/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_317/zerosFilllstm_317/zeros/packed:output:0lstm_317/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_317/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_317/zeros_1/packedPacklstm_317/strided_slice:output:0"lstm_317/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_317/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_317/zeros_1Fill lstm_317/zeros_1/packed:output:0lstm_317/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_317/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_317/transpose	Transposelstm_316/transpose_1:y:0 lstm_317/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_317/Shape_1Shapelstm_317/transpose:y:0*
T0*
_output_shapes
:h
lstm_317/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_317/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_317/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_317/strided_slice_1StridedSlicelstm_317/Shape_1:output:0'lstm_317/strided_slice_1/stack:output:0)lstm_317/strided_slice_1/stack_1:output:0)lstm_317/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_317/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_317/TensorArrayV2TensorListReserve-lstm_317/TensorArrayV2/element_shape:output:0!lstm_317/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_317/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_317/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_317/transpose:y:0Glstm_317/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_317/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_317/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_317/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_317/strided_slice_2StridedSlicelstm_317/transpose:y:0'lstm_317/strided_slice_2/stack:output:0)lstm_317/strided_slice_2/stack_1:output:0)lstm_317/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_317/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp4lstm_317_lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_317/lstm_cell_86/MatMulMatMul!lstm_317/strided_slice_2:output:03lstm_317/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp6lstm_317_lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_317/lstm_cell_86/MatMul_1MatMullstm_317/zeros:output:05lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_317/lstm_cell_86/addAddV2&lstm_317/lstm_cell_86/MatMul:product:0(lstm_317/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp5lstm_317_lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_317/lstm_cell_86/BiasAddBiasAddlstm_317/lstm_cell_86/add:z:04lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_317/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_317/lstm_cell_86/splitSplit.lstm_317/lstm_cell_86/split/split_dim:output:0&lstm_317/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_317/lstm_cell_86/SigmoidSigmoid$lstm_317/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/Sigmoid_1Sigmoid$lstm_317/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/mulMul#lstm_317/lstm_cell_86/Sigmoid_1:y:0lstm_317/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_317/lstm_cell_86/ReluRelu$lstm_317/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_317/lstm_cell_86/mul_1Mul!lstm_317/lstm_cell_86/Sigmoid:y:0(lstm_317/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/add_1AddV2lstm_317/lstm_cell_86/mul:z:0lstm_317/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/Sigmoid_2Sigmoid$lstm_317/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_317/lstm_cell_86/Relu_1Relulstm_317/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_317/lstm_cell_86/mul_2Mul#lstm_317/lstm_cell_86/Sigmoid_2:y:0*lstm_317/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_317/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_317/TensorArrayV2_1TensorListReserve/lstm_317/TensorArrayV2_1/element_shape:output:0!lstm_317/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_317/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_317/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_317/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_317/whileWhile$lstm_317/while/loop_counter:output:0*lstm_317/while/maximum_iterations:output:0lstm_317/time:output:0!lstm_317/TensorArrayV2_1:handle:0lstm_317/zeros:output:0lstm_317/zeros_1:output:0!lstm_317/strided_slice_1:output:0@lstm_317/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_317_lstm_cell_86_matmul_readvariableop_resource6lstm_317_lstm_cell_86_matmul_1_readvariableop_resource5lstm_317_lstm_cell_86_biasadd_readvariableop_resource*
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
lstm_317_while_body_524210*&
condR
lstm_317_while_cond_524209*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_317/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_317/TensorArrayV2Stack/TensorListStackTensorListStacklstm_317/while:output:3Blstm_317/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_317/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_317/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_317/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_317/strided_slice_3StridedSlice4lstm_317/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_317/strided_slice_3/stack:output:0)lstm_317/strided_slice_3/stack_1:output:0)lstm_317/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_317/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_317/transpose_1	Transpose4lstm_317/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_317/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_317/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_105/MatMulMatMul!lstm_317/strided_slice_3:output:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_105/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp-^lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp,^lstm_315/lstm_cell_84/MatMul/ReadVariableOp.^lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp^lstm_315/while-^lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp,^lstm_316/lstm_cell_85/MatMul/ReadVariableOp.^lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp^lstm_316/while-^lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp,^lstm_317/lstm_cell_86/MatMul/ReadVariableOp.^lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp^lstm_317/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp2\
,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp2Z
+lstm_315/lstm_cell_84/MatMul/ReadVariableOp+lstm_315/lstm_cell_84/MatMul/ReadVariableOp2^
-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp2 
lstm_315/whilelstm_315/while2\
,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp2Z
+lstm_316/lstm_cell_85/MatMul/ReadVariableOp+lstm_316/lstm_cell_85/MatMul/ReadVariableOp2^
-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp2 
lstm_316/whilelstm_316/while2\
,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp2Z
+lstm_317/lstm_cell_86/MatMul/ReadVariableOp+lstm_317/lstm_cell_86/MatMul/ReadVariableOp2^
-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp2 
lstm_317/whilelstm_317/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_315_layer_call_fn_524333

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
D__inference_lstm_315_layer_call_and_return_conditional_losses_522331s
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
²

÷
lstm_316_while_cond_523643.
*lstm_316_while_lstm_316_while_loop_counter4
0lstm_316_while_lstm_316_while_maximum_iterations
lstm_316_while_placeholder 
lstm_316_while_placeholder_1 
lstm_316_while_placeholder_2 
lstm_316_while_placeholder_30
,lstm_316_while_less_lstm_316_strided_slice_1F
Blstm_316_while_lstm_316_while_cond_523643___redundant_placeholder0F
Blstm_316_while_lstm_316_while_cond_523643___redundant_placeholder1F
Blstm_316_while_lstm_316_while_cond_523643___redundant_placeholder2F
Blstm_316_while_lstm_316_while_cond_523643___redundant_placeholder3
lstm_316_while_identity

lstm_316/while/LessLesslstm_316_while_placeholder,lstm_316_while_less_lstm_316_strided_slice_1*
T0*
_output_shapes
: ]
lstm_316/while/IdentityIdentitylstm_316/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_316_while_identity lstm_316/while/Identity:output:0*(
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
while_cond_521403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_521403___redundant_placeholder04
0while_while_cond_521403___redundant_placeholder14
0while_while_cond_521403___redundant_placeholder24
0while_while_cond_521403___redundant_placeholder3
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
µ
?
while_cond_522103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_522103___redundant_placeholder04
0while_while_cond_522103___redundant_placeholder14
0while_while_cond_522103___redundant_placeholder24
0while_while_cond_522103___redundant_placeholder3
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_523012

inputs>
+lstm_cell_85_matmul_readvariableop_resource:	dÈ@
-lstm_cell_85_matmul_1_readvariableop_resource:	2È;
,lstm_cell_85_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_85/BiasAdd/ReadVariableOp˘"lstm_cell_85/MatMul/ReadVariableOp˘$lstm_cell_85/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_85/MatMul/ReadVariableOpReadVariableOp+lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0*lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_85/MatMul_1MatMulzeros:output:0,lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_85/addAddV2lstm_cell_85/MatMul:product:0lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_85/BiasAddBiasAddlstm_cell_85/add:z:0+lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_85/SigmoidSigmoidlstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_85/mulMullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_85/ReluRelulstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_1Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_85/add_1AddV2lstm_cell_85/mul:z:0lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_85/Relu_1Relulstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_2Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_85_matmul_readvariableop_resource-lstm_cell_85_matmul_1_readvariableop_resource,lstm_cell_85_biasadd_readvariableop_resource*
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
while_body_522928*
condR
while_cond_522927*K
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
NoOpNoOp$^lstm_cell_85/BiasAdd/ReadVariableOp#^lstm_cell_85/MatMul/ReadVariableOp%^lstm_cell_85/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_85/BiasAdd/ReadVariableOp#lstm_cell_85/BiasAdd/ReadVariableOp2H
"lstm_cell_85/MatMul/ReadVariableOp"lstm_cell_85/MatMul/ReadVariableOp2L
$lstm_cell_85/MatMul_1/ReadVariableOp$lstm_cell_85/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ÎB
ê

lstm_317_while_body_524210.
*lstm_317_while_lstm_317_while_loop_counter4
0lstm_317_while_lstm_317_while_maximum_iterations
lstm_317_while_placeholder 
lstm_317_while_placeholder_1 
lstm_317_while_placeholder_2 
lstm_317_while_placeholder_3-
)lstm_317_while_lstm_317_strided_slice_1_0i
elstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0:2(P
>lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(K
=lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0:(
lstm_317_while_identity
lstm_317_while_identity_1
lstm_317_while_identity_2
lstm_317_while_identity_3
lstm_317_while_identity_4
lstm_317_while_identity_5+
'lstm_317_while_lstm_317_strided_slice_1g
clstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensorL
:lstm_317_while_lstm_cell_86_matmul_readvariableop_resource:2(N
<lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource:
(I
;lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource:(˘2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp˘1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp˘3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp
@lstm_317/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_317/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensor_0lstm_317_while_placeholderIlstm_317/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp<lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_317/while/lstm_cell_86/MatMulMatMul9lstm_317/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp>lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_317/while/lstm_cell_86/MatMul_1MatMullstm_317_while_placeholder_2;lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_317/while/lstm_cell_86/addAddV2,lstm_317/while/lstm_cell_86/MatMul:product:0.lstm_317/while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp=lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_317/while/lstm_cell_86/BiasAddBiasAdd#lstm_317/while/lstm_cell_86/add:z:0:lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_317/while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_317/while/lstm_cell_86/splitSplit4lstm_317/while/lstm_cell_86/split/split_dim:output:0,lstm_317/while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_317/while/lstm_cell_86/SigmoidSigmoid*lstm_317/while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_317/while/lstm_cell_86/Sigmoid_1Sigmoid*lstm_317/while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_317/while/lstm_cell_86/mulMul)lstm_317/while/lstm_cell_86/Sigmoid_1:y:0lstm_317_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_317/while/lstm_cell_86/ReluRelu*lstm_317/while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_317/while/lstm_cell_86/mul_1Mul'lstm_317/while/lstm_cell_86/Sigmoid:y:0.lstm_317/while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_317/while/lstm_cell_86/add_1AddV2#lstm_317/while/lstm_cell_86/mul:z:0%lstm_317/while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_317/while/lstm_cell_86/Sigmoid_2Sigmoid*lstm_317/while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_317/while/lstm_cell_86/Relu_1Relu%lstm_317/while/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_317/while/lstm_cell_86/mul_2Mul)lstm_317/while/lstm_cell_86/Sigmoid_2:y:00lstm_317/while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_317/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_317_while_placeholder_1lstm_317_while_placeholder%lstm_317/while/lstm_cell_86/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_317/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_317/while/addAddV2lstm_317_while_placeholderlstm_317/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_317/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_317/while/add_1AddV2*lstm_317_while_lstm_317_while_loop_counterlstm_317/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_317/while/IdentityIdentitylstm_317/while/add_1:z:0^lstm_317/while/NoOp*
T0*
_output_shapes
: 
lstm_317/while/Identity_1Identity0lstm_317_while_lstm_317_while_maximum_iterations^lstm_317/while/NoOp*
T0*
_output_shapes
: t
lstm_317/while/Identity_2Identitylstm_317/while/add:z:0^lstm_317/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_317/while/Identity_3IdentityClstm_317/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_317/while/NoOp*
T0*
_output_shapes
: 
lstm_317/while/Identity_4Identity%lstm_317/while/lstm_cell_86/mul_2:z:0^lstm_317/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/while/Identity_5Identity%lstm_317/while/lstm_cell_86/add_1:z:0^lstm_317/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_317/while/NoOpNoOp3^lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2^lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp4^lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_317_while_identity lstm_317/while/Identity:output:0"?
lstm_317_while_identity_1"lstm_317/while/Identity_1:output:0"?
lstm_317_while_identity_2"lstm_317/while/Identity_2:output:0"?
lstm_317_while_identity_3"lstm_317/while/Identity_3:output:0"?
lstm_317_while_identity_4"lstm_317/while/Identity_4:output:0"?
lstm_317_while_identity_5"lstm_317/while/Identity_5:output:0"T
'lstm_317_while_lstm_317_strided_slice_1)lstm_317_while_lstm_317_strided_slice_1_0"|
;lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource=lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0"~
<lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource>lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0"z
:lstm_317_while_lstm_cell_86_matmul_readvariableop_resource<lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0"Ì
clstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensorelstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2f
1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp2j
3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_524689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_84_matmul_readvariableop_resource_0:	H
5while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_84_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_84_matmul_readvariableop_resource:	F
3while_lstm_cell_84_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_84_biasadd_readvariableop_resource:	˘)while/lstm_cell_84/BiasAdd/ReadVariableOp˘(while/lstm_cell_84/MatMul/ReadVariableOp˘*while/lstm_cell_84/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_84/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_84/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_84/addAddV2#while/lstm_cell_84/MatMul:product:0%while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_84/BiasAddBiasAddwhile/lstm_cell_84/add:z:01while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_84/splitSplit+while/lstm_cell_84/split/split_dim:output:0#while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_84/SigmoidSigmoid!while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_1Sigmoid!while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mulMul while/lstm_cell_84/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_84/ReluRelu!while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_1Mulwhile/lstm_cell_84/Sigmoid:y:0%while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/add_1AddV2while/lstm_cell_84/mul:z:0while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_2Sigmoid!while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_84/Relu_1Reluwhile/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_2Mul while/lstm_cell_84/Sigmoid_2:y:0'while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_84/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_84/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_84/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_84/BiasAdd/ReadVariableOp)^while/lstm_cell_84/MatMul/ReadVariableOp+^while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_84_biasadd_readvariableop_resource4while_lstm_cell_84_biasadd_readvariableop_resource_0"l
3while_lstm_cell_84_matmul_1_readvariableop_resource5while_lstm_cell_84_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_84_matmul_readvariableop_resource3while_lstm_cell_84_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_84/BiasAdd/ReadVariableOp)while/lstm_cell_84/BiasAdd/ReadVariableOp2T
(while/lstm_cell_84/MatMul/ReadVariableOp(while/lstm_cell_84/MatMul/ReadVariableOp2X
*while/lstm_cell_84/MatMul_1/ReadVariableOp*while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
˙7
Ê
while_body_525921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_86_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_86_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_86_matmul_readvariableop_resource:2(E
3while_lstm_cell_86_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_86_biasadd_readvariableop_resource:(˘)while/lstm_cell_86/BiasAdd/ReadVariableOp˘(while/lstm_cell_86/MatMul/ReadVariableOp˘*while/lstm_cell_86/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_86/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_86/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_86/addAddV2#while/lstm_cell_86/MatMul:product:0%while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_86/BiasAddBiasAddwhile/lstm_cell_86/add:z:01while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_86/splitSplit+while/lstm_cell_86/split/split_dim:output:0#while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_86/SigmoidSigmoid!while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_1Sigmoid!while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mulMul while/lstm_cell_86/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_86/ReluRelu!while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_1Mulwhile/lstm_cell_86/Sigmoid:y:0%while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/add_1AddV2while/lstm_cell_86/mul:z:0while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_2Sigmoid!while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_86/Relu_1Reluwhile/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_2Mul while/lstm_cell_86/Sigmoid_2:y:0'while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_86/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_86/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_86/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_86/BiasAdd/ReadVariableOp)^while/lstm_cell_86/MatMul/ReadVariableOp+^while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_86_biasadd_readvariableop_resource4while_lstm_cell_86_biasadd_readvariableop_resource_0"l
3while_lstm_cell_86_matmul_1_readvariableop_resource5while_lstm_cell_86_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_86_matmul_readvariableop_resource3while_lstm_cell_86_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_86/BiasAdd/ReadVariableOp)while/lstm_cell_86/BiasAdd/ReadVariableOp2T
(while/lstm_cell_86/MatMul/ReadVariableOp(while/lstm_cell_86/MatMul/ReadVariableOp2X
*while/lstm_cell_86/MatMul_1/ReadVariableOp*while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_525778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_86_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_86_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_86_matmul_readvariableop_resource:2(E
3while_lstm_cell_86_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_86_biasadd_readvariableop_resource:(˘)while/lstm_cell_86/BiasAdd/ReadVariableOp˘(while/lstm_cell_86/MatMul/ReadVariableOp˘*while/lstm_cell_86/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_86/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_86/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_86/addAddV2#while/lstm_cell_86/MatMul:product:0%while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_86/BiasAddBiasAddwhile/lstm_cell_86/add:z:01while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_86/splitSplit+while/lstm_cell_86/split/split_dim:output:0#while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_86/SigmoidSigmoid!while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_1Sigmoid!while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mulMul while/lstm_cell_86/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_86/ReluRelu!while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_1Mulwhile/lstm_cell_86/Sigmoid:y:0%while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/add_1AddV2while/lstm_cell_86/mul:z:0while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_2Sigmoid!while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_86/Relu_1Reluwhile/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_2Mul while/lstm_cell_86/Sigmoid_2:y:0'while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_86/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_86/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_86/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_86/BiasAdd/ReadVariableOp)^while/lstm_cell_86/MatMul/ReadVariableOp+^while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_86_biasadd_readvariableop_resource4while_lstm_cell_86_biasadd_readvariableop_resource_0"l
3while_lstm_cell_86_matmul_1_readvariableop_resource5while_lstm_cell_86_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_86_matmul_readvariableop_resource3while_lstm_cell_86_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_86/BiasAdd/ReadVariableOp)while/lstm_cell_86/BiasAdd/ReadVariableOp2T
(while/lstm_cell_86/MatMul/ReadVariableOp(while/lstm_cell_86/MatMul/ReadVariableOp2X
*while/lstm_cell_86/MatMul_1/ReadVariableOp*while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ö
£
)sequential_105_lstm_316_while_cond_520902L
Hsequential_105_lstm_316_while_sequential_105_lstm_316_while_loop_counterR
Nsequential_105_lstm_316_while_sequential_105_lstm_316_while_maximum_iterations-
)sequential_105_lstm_316_while_placeholder/
+sequential_105_lstm_316_while_placeholder_1/
+sequential_105_lstm_316_while_placeholder_2/
+sequential_105_lstm_316_while_placeholder_3N
Jsequential_105_lstm_316_while_less_sequential_105_lstm_316_strided_slice_1d
`sequential_105_lstm_316_while_sequential_105_lstm_316_while_cond_520902___redundant_placeholder0d
`sequential_105_lstm_316_while_sequential_105_lstm_316_while_cond_520902___redundant_placeholder1d
`sequential_105_lstm_316_while_sequential_105_lstm_316_while_cond_520902___redundant_placeholder2d
`sequential_105_lstm_316_while_sequential_105_lstm_316_while_cond_520902___redundant_placeholder3*
&sequential_105_lstm_316_while_identity
Â
"sequential_105/lstm_316/while/LessLess)sequential_105_lstm_316_while_placeholderJsequential_105_lstm_316_while_less_sequential_105_lstm_316_strided_slice_1*
T0*
_output_shapes
: {
&sequential_105/lstm_316/while/IdentityIdentity&sequential_105/lstm_316/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_105_lstm_316_while_identity/sequential_105/lstm_316/while/Identity:output:0*(
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
Ü


/__inference_sequential_105_layer_call_fn_523419

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
identity˘StatefulPartitionedCallÔ
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
GPU 2J 8 *S
fNRL
J__inference_sequential_105_layer_call_and_return_conditional_losses_522656o
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
ÛB
?

lstm_316_while_body_523644.
*lstm_316_while_lstm_316_while_loop_counter4
0lstm_316_while_lstm_316_while_maximum_iterations
lstm_316_while_placeholder 
lstm_316_while_placeholder_1 
lstm_316_while_placeholder_2 
lstm_316_while_placeholder_3-
)lstm_316_while_lstm_316_strided_slice_1_0i
elstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈQ
>lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
lstm_316_while_identity
lstm_316_while_identity_1
lstm_316_while_identity_2
lstm_316_while_identity_3
lstm_316_while_identity_4
lstm_316_while_identity_5+
'lstm_316_while_lstm_316_strided_slice_1g
clstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensorM
:lstm_316_while_lstm_cell_85_matmul_readvariableop_resource:	dÈO
<lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈJ
;lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource:	È˘2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp˘1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp˘3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp
@lstm_316/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_316/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensor_0lstm_316_while_placeholderIlstm_316/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp<lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_316/while/lstm_cell_85/MatMulMatMul9lstm_316/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp>lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_316/while/lstm_cell_85/MatMul_1MatMullstm_316_while_placeholder_2;lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_316/while/lstm_cell_85/addAddV2,lstm_316/while/lstm_cell_85/MatMul:product:0.lstm_316/while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp=lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_316/while/lstm_cell_85/BiasAddBiasAdd#lstm_316/while/lstm_cell_85/add:z:0:lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_316/while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_316/while/lstm_cell_85/splitSplit4lstm_316/while/lstm_cell_85/split/split_dim:output:0,lstm_316/while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_316/while/lstm_cell_85/SigmoidSigmoid*lstm_316/while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_316/while/lstm_cell_85/Sigmoid_1Sigmoid*lstm_316/while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_316/while/lstm_cell_85/mulMul)lstm_316/while/lstm_cell_85/Sigmoid_1:y:0lstm_316_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_316/while/lstm_cell_85/ReluRelu*lstm_316/while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_316/while/lstm_cell_85/mul_1Mul'lstm_316/while/lstm_cell_85/Sigmoid:y:0.lstm_316/while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_316/while/lstm_cell_85/add_1AddV2#lstm_316/while/lstm_cell_85/mul:z:0%lstm_316/while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_316/while/lstm_cell_85/Sigmoid_2Sigmoid*lstm_316/while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_316/while/lstm_cell_85/Relu_1Relu%lstm_316/while/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_316/while/lstm_cell_85/mul_2Mul)lstm_316/while/lstm_cell_85/Sigmoid_2:y:00lstm_316/while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_316/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_316_while_placeholder_1lstm_316_while_placeholder%lstm_316/while/lstm_cell_85/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_316/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_316/while/addAddV2lstm_316_while_placeholderlstm_316/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_316/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_316/while/add_1AddV2*lstm_316_while_lstm_316_while_loop_counterlstm_316/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_316/while/IdentityIdentitylstm_316/while/add_1:z:0^lstm_316/while/NoOp*
T0*
_output_shapes
: 
lstm_316/while/Identity_1Identity0lstm_316_while_lstm_316_while_maximum_iterations^lstm_316/while/NoOp*
T0*
_output_shapes
: t
lstm_316/while/Identity_2Identitylstm_316/while/add:z:0^lstm_316/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_316/while/Identity_3IdentityClstm_316/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_316/while/NoOp*
T0*
_output_shapes
: 
lstm_316/while/Identity_4Identity%lstm_316/while/lstm_cell_85/mul_2:z:0^lstm_316/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/while/Identity_5Identity%lstm_316/while/lstm_cell_85/add_1:z:0^lstm_316/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_316/while/NoOpNoOp3^lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2^lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp4^lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_316_while_identity lstm_316/while/Identity:output:0"?
lstm_316_while_identity_1"lstm_316/while/Identity_1:output:0"?
lstm_316_while_identity_2"lstm_316/while/Identity_2:output:0"?
lstm_316_while_identity_3"lstm_316/while/Identity_3:output:0"?
lstm_316_while_identity_4"lstm_316/while/Identity_4:output:0"?
lstm_316_while_identity_5"lstm_316/while/Identity_5:output:0"T
'lstm_316_while_lstm_316_strided_slice_1)lstm_316_while_lstm_316_strided_slice_1_0"|
;lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource=lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0"~
<lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource>lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0"z
:lstm_316_while_lstm_cell_85_matmul_readvariableop_resource<lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0"Ì
clstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensorelstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2f
1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp2j
3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ö
³
)__inference_lstm_317_layer_call_fn_525576

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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522847o
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
8

D__inference_lstm_315_layer_call_and_return_conditional_losses_521282

inputs&
lstm_cell_84_521200:	&
lstm_cell_84_521202:	d"
lstm_cell_84_521204:	
identity˘$lstm_cell_84/StatefulPartitionedCall˘while;
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
$lstm_cell_84/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_84_521200lstm_cell_84_521202lstm_cell_84_521204*
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521199n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_84_521200lstm_cell_84_521202lstm_cell_84_521204*
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
while_body_521213*
condR
while_cond_521212*K
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
NoOpNoOp%^lstm_cell_84/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_84/StatefulPartitionedCall$lstm_cell_84/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_524831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_524831___redundant_placeholder04
0while_while_cond_524831___redundant_placeholder14
0while_while_cond_524831___redundant_placeholder24
0while_while_cond_524831___redundant_placeholder3
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
Ó

H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_526461

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
ÛB
?

lstm_316_while_body_524071.
*lstm_316_while_lstm_316_while_loop_counter4
0lstm_316_while_lstm_316_while_maximum_iterations
lstm_316_while_placeholder 
lstm_316_while_placeholder_1 
lstm_316_while_placeholder_2 
lstm_316_while_placeholder_3-
)lstm_316_while_lstm_316_strided_slice_1_0i
elstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈQ
>lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
lstm_316_while_identity
lstm_316_while_identity_1
lstm_316_while_identity_2
lstm_316_while_identity_3
lstm_316_while_identity_4
lstm_316_while_identity_5+
'lstm_316_while_lstm_316_strided_slice_1g
clstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensorM
:lstm_316_while_lstm_cell_85_matmul_readvariableop_resource:	dÈO
<lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈJ
;lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource:	È˘2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp˘1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp˘3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp
@lstm_316/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_316/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensor_0lstm_316_while_placeholderIlstm_316/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp<lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_316/while/lstm_cell_85/MatMulMatMul9lstm_316/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp>lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_316/while/lstm_cell_85/MatMul_1MatMullstm_316_while_placeholder_2;lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_316/while/lstm_cell_85/addAddV2,lstm_316/while/lstm_cell_85/MatMul:product:0.lstm_316/while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp=lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_316/while/lstm_cell_85/BiasAddBiasAdd#lstm_316/while/lstm_cell_85/add:z:0:lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_316/while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_316/while/lstm_cell_85/splitSplit4lstm_316/while/lstm_cell_85/split/split_dim:output:0,lstm_316/while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_316/while/lstm_cell_85/SigmoidSigmoid*lstm_316/while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_316/while/lstm_cell_85/Sigmoid_1Sigmoid*lstm_316/while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_316/while/lstm_cell_85/mulMul)lstm_316/while/lstm_cell_85/Sigmoid_1:y:0lstm_316_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_316/while/lstm_cell_85/ReluRelu*lstm_316/while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_316/while/lstm_cell_85/mul_1Mul'lstm_316/while/lstm_cell_85/Sigmoid:y:0.lstm_316/while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_316/while/lstm_cell_85/add_1AddV2#lstm_316/while/lstm_cell_85/mul:z:0%lstm_316/while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_316/while/lstm_cell_85/Sigmoid_2Sigmoid*lstm_316/while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_316/while/lstm_cell_85/Relu_1Relu%lstm_316/while/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_316/while/lstm_cell_85/mul_2Mul)lstm_316/while/lstm_cell_85/Sigmoid_2:y:00lstm_316/while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_316/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_316_while_placeholder_1lstm_316_while_placeholder%lstm_316/while/lstm_cell_85/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_316/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_316/while/addAddV2lstm_316_while_placeholderlstm_316/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_316/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_316/while/add_1AddV2*lstm_316_while_lstm_316_while_loop_counterlstm_316/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_316/while/IdentityIdentitylstm_316/while/add_1:z:0^lstm_316/while/NoOp*
T0*
_output_shapes
: 
lstm_316/while/Identity_1Identity0lstm_316_while_lstm_316_while_maximum_iterations^lstm_316/while/NoOp*
T0*
_output_shapes
: t
lstm_316/while/Identity_2Identitylstm_316/while/add:z:0^lstm_316/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_316/while/Identity_3IdentityClstm_316/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_316/while/NoOp*
T0*
_output_shapes
: 
lstm_316/while/Identity_4Identity%lstm_316/while/lstm_cell_85/mul_2:z:0^lstm_316/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/while/Identity_5Identity%lstm_316/while/lstm_cell_85/add_1:z:0^lstm_316/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_316/while/NoOpNoOp3^lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2^lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp4^lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_316_while_identity lstm_316/while/Identity:output:0"?
lstm_316_while_identity_1"lstm_316/while/Identity_1:output:0"?
lstm_316_while_identity_2"lstm_316/while/Identity_2:output:0"?
lstm_316_while_identity_3"lstm_316/while/Identity_3:output:0"?
lstm_316_while_identity_4"lstm_316/while/Identity_4:output:0"?
lstm_316_while_identity_5"lstm_316/while/Identity_5:output:0"T
'lstm_316_while_lstm_316_strided_slice_1)lstm_316_while_lstm_316_strided_slice_1_0"|
;lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource=lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0"~
<lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource>lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0"z
:lstm_316_while_lstm_cell_85_matmul_readvariableop_resource<lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0"Ì
clstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensorelstm_316_while_tensorarrayv2read_tensorlistgetitem_lstm_316_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2f
1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp1lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp2j
3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp3lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_316_layer_call_fn_524938
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_521823|
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
·
ï
J__inference_sequential_105_layer_call_and_return_conditional_losses_522656

inputs"
lstm_315_522332:	"
lstm_315_522334:	d
lstm_315_522336:	"
lstm_316_522482:	dÈ"
lstm_316_522484:	2È
lstm_316_522486:	È!
lstm_317_522632:2(!
lstm_317_522634:
(
lstm_317_522636:("
dense_105_522650:

dense_105_522652:
identity˘!dense_105/StatefulPartitionedCall˘ lstm_315/StatefulPartitionedCall˘ lstm_316/StatefulPartitionedCall˘ lstm_317/StatefulPartitionedCall
 lstm_315/StatefulPartitionedCallStatefulPartitionedCallinputslstm_315_522332lstm_315_522334lstm_315_522336*
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_522331Ş
 lstm_316/StatefulPartitionedCallStatefulPartitionedCall)lstm_315/StatefulPartitionedCall:output:0lstm_316_522482lstm_316_522484lstm_316_522486*
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_522481Ĥ
 lstm_317/StatefulPartitionedCallStatefulPartitionedCall)lstm_316/StatefulPartitionedCall:output:0lstm_317_522632lstm_317_522634lstm_317_522636*
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522631
!dense_105/StatefulPartitionedCallStatefulPartitionedCall)lstm_317/StatefulPartitionedCall:output:0dense_105_522650dense_105_522652*
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
GPU 2J 8 *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_522649y
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_105/StatefulPartitionedCall!^lstm_315/StatefulPartitionedCall!^lstm_316/StatefulPartitionedCall!^lstm_317/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2D
 lstm_315/StatefulPartitionedCall lstm_315/StatefulPartitionedCall2D
 lstm_316/StatefulPartitionedCall lstm_316/StatefulPartitionedCall2D
 lstm_317/StatefulPartitionedCall lstm_317/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_522928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_85_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_85_biasadd_readvariableop_resource:	È˘)while/lstm_cell_85/BiasAdd/ReadVariableOp˘(while/lstm_cell_85/MatMul/ReadVariableOp˘*while/lstm_cell_85/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_85/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_85/addAddV2#while/lstm_cell_85/MatMul:product:0%while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_85/BiasAddBiasAddwhile/lstm_cell_85/add:z:01while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0#while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_85/SigmoidSigmoid!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_1Sigmoid!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mulMul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_85/ReluRelu!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_1Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/add_1AddV2while/lstm_cell_85/mul:z:0while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_2Sigmoid!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_2Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_85/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_85/BiasAdd/ReadVariableOp)^while/lstm_cell_85/MatMul/ReadVariableOp+^while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_85_biasadd_readvariableop_resource4while_lstm_cell_85_biasadd_readvariableop_resource_0"l
3while_lstm_cell_85_matmul_1_readvariableop_resource5while_lstm_cell_85_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_85_matmul_readvariableop_resource3while_lstm_cell_85_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_85/BiasAdd/ReadVariableOp)while/lstm_cell_85/BiasAdd/ReadVariableOp2T
(while/lstm_cell_85/MatMul/ReadVariableOp(while/lstm_cell_85/MatMul/ReadVariableOp2X
*while/lstm_cell_85/MatMul_1/ReadVariableOp*while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
à"
Ŭ
while_body_521913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_86_521937_0:2(-
while_lstm_cell_86_521939_0:
()
while_lstm_cell_86_521941_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_86_521937:2(+
while_lstm_cell_86_521939:
('
while_lstm_cell_86_521941:(˘*while/lstm_cell_86/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_86/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_86_521937_0while_lstm_cell_86_521939_0while_lstm_cell_86_521941_0*
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_521899Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_86/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_86/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_86/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_86_521937while_lstm_cell_86_521937_0"8
while_lstm_cell_86_521939while_lstm_cell_86_521939_0"8
while_lstm_cell_86_521941while_lstm_cell_86_521941_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_86/StatefulPartitionedCall*while/lstm_cell_86/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_525448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_85_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_85_biasadd_readvariableop_resource:	È˘)while/lstm_cell_85/BiasAdd/ReadVariableOp˘(while/lstm_cell_85/MatMul/ReadVariableOp˘*while/lstm_cell_85/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_85/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_85/addAddV2#while/lstm_cell_85/MatMul:product:0%while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_85/BiasAddBiasAddwhile/lstm_cell_85/add:z:01while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0#while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_85/SigmoidSigmoid!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_1Sigmoid!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mulMul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_85/ReluRelu!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_1Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/add_1AddV2while/lstm_cell_85/mul:z:0while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_2Sigmoid!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_2Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_85/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_85/BiasAdd/ReadVariableOp)^while/lstm_cell_85/MatMul/ReadVariableOp+^while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_85_biasadd_readvariableop_resource4while_lstm_cell_85_biasadd_readvariableop_resource_0"l
3while_lstm_cell_85_matmul_1_readvariableop_resource5while_lstm_cell_85_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_85_matmul_readvariableop_resource3while_lstm_cell_85_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_85/BiasAdd/ReadVariableOp)while/lstm_cell_85/BiasAdd/ReadVariableOp2T
(while/lstm_cell_85/MatMul/ReadVariableOp(while/lstm_cell_85/MatMul/ReadVariableOp2X
*while/lstm_cell_85/MatMul_1/ReadVariableOp*while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
8

D__inference_lstm_316_layer_call_and_return_conditional_losses_521632

inputs&
lstm_cell_85_521550:	dÈ&
lstm_cell_85_521552:	2È"
lstm_cell_85_521554:	È
identity˘$lstm_cell_85/StatefulPartitionedCall˘while;
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
$lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_85_521550lstm_cell_85_521552lstm_cell_85_521554*
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521549n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_85_521550lstm_cell_85_521552lstm_cell_85_521554*
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
while_body_521563*
condR
while_cond_521562*K
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
NoOpNoOp%^lstm_cell_85/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_85/StatefulPartitionedCall$lstm_cell_85/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_525777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525777___redundant_placeholder04
0while_while_cond_525777___redundant_placeholder14
0while_while_cond_525777___redundant_placeholder24
0while_while_cond_525777___redundant_placeholder3
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
Ë

H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_522045

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
ĉ"
?
while_body_521754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_85_521778_0:	dÈ.
while_lstm_cell_85_521780_0:	2È*
while_lstm_cell_85_521782_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_85_521778:	dÈ,
while_lstm_cell_85_521780:	2È(
while_lstm_cell_85_521782:	È˘*while/lstm_cell_85/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_85_521778_0while_lstm_cell_85_521780_0while_lstm_cell_85_521782_0*
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521695Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_85/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_85/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_85/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_85/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_85_521778while_lstm_cell_85_521778_0"8
while_lstm_cell_85_521780while_lstm_cell_85_521780_0"8
while_lstm_cell_85_521782while_lstm_cell_85_521782_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_85/StatefulPartitionedCall*while/lstm_cell_85/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
µ
?
while_cond_525920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525920___redundant_placeholder04
0while_while_cond_525920___redundant_placeholder14
0while_while_cond_525920___redundant_placeholder24
0while_while_cond_525920___redundant_placeholder3
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
Ó

H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_526429

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
J

D__inference_lstm_317_layer_call_and_return_conditional_losses_526005

inputs=
+lstm_cell_86_matmul_readvariableop_resource:2(?
-lstm_cell_86_matmul_1_readvariableop_resource:
(:
,lstm_cell_86_biasadd_readvariableop_resource:(
identity˘#lstm_cell_86/BiasAdd/ReadVariableOp˘"lstm_cell_86/MatMul/ReadVariableOp˘$lstm_cell_86/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_86/MatMul/ReadVariableOpReadVariableOp+lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_86/MatMulMatMulstrided_slice_2:output:0*lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_86/MatMul_1MatMulzeros:output:0,lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_86/addAddV2lstm_cell_86/MatMul:product:0lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_86/BiasAddBiasAddlstm_cell_86/add:z:0+lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_86/splitSplit%lstm_cell_86/split/split_dim:output:0lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_86/SigmoidSigmoidlstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_1Sigmoidlstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_86/mulMullstm_cell_86/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_86/ReluRelulstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_1Mullstm_cell_86/Sigmoid:y:0lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_86/add_1AddV2lstm_cell_86/mul:z:0lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_2Sigmoidlstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_86/Relu_1Relulstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_2Mullstm_cell_86/Sigmoid_2:y:0!lstm_cell_86/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_86_matmul_readvariableop_resource-lstm_cell_86_matmul_1_readvariableop_resource,lstm_cell_86_biasadd_readvariableop_resource*
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
while_body_525921*
condR
while_cond_525920*K
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
NoOpNoOp$^lstm_cell_86/BiasAdd/ReadVariableOp#^lstm_cell_86/MatMul/ReadVariableOp%^lstm_cell_86/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_86/BiasAdd/ReadVariableOp#lstm_cell_86/BiasAdd/ReadVariableOp2H
"lstm_cell_86/MatMul/ReadVariableOp"lstm_cell_86/MatMul/ReadVariableOp2L
$lstm_cell_86/MatMul_1/ReadVariableOp$lstm_cell_86/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_522397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_85_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_85_biasadd_readvariableop_resource:	È˘)while/lstm_cell_85/BiasAdd/ReadVariableOp˘(while/lstm_cell_85/MatMul/ReadVariableOp˘*while/lstm_cell_85/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_85/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_85/addAddV2#while/lstm_cell_85/MatMul:product:0%while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_85/BiasAddBiasAddwhile/lstm_cell_85/add:z:01while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0#while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_85/SigmoidSigmoid!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_1Sigmoid!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mulMul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_85/ReluRelu!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_1Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/add_1AddV2while/lstm_cell_85/mul:z:0while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_2Sigmoid!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_2Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_85/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_85/BiasAdd/ReadVariableOp)^while/lstm_cell_85/MatMul/ReadVariableOp+^while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_85_biasadd_readvariableop_resource4while_lstm_cell_85_biasadd_readvariableop_resource_0"l
3while_lstm_cell_85_matmul_1_readvariableop_resource5while_lstm_cell_85_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_85_matmul_readvariableop_resource3while_lstm_cell_85_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_85/BiasAdd/ReadVariableOp)while/lstm_cell_85/BiasAdd/ReadVariableOp2T
(while/lstm_cell_85/MatMul/ReadVariableOp(while/lstm_cell_85/MatMul/ReadVariableOp2X
*while/lstm_cell_85/MatMul_1/ReadVariableOp*while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
8

D__inference_lstm_315_layer_call_and_return_conditional_losses_521473

inputs&
lstm_cell_84_521391:	&
lstm_cell_84_521393:	d"
lstm_cell_84_521395:	
identity˘$lstm_cell_84/StatefulPartitionedCall˘while;
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
$lstm_cell_84/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_84_521391lstm_cell_84_521393lstm_cell_84_521395*
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521345n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_84_521391lstm_cell_84_521393lstm_cell_84_521395*
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
while_body_521404*
condR
while_cond_521403*K
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
NoOpNoOp%^lstm_cell_84/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_84/StatefulPartitionedCall$lstm_cell_84/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_524545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_524545___redundant_placeholder04
0while_while_cond_524545___redundant_placeholder14
0while_while_cond_524545___redundant_placeholder24
0while_while_cond_524545___redundant_placeholder3
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
Ġ

H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521695

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
ö
³
)__inference_lstm_317_layer_call_fn_525565

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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522631o
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
ô

£
/__inference_sequential_105_layer_call_fn_522681
lstm_315_input
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
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllstm_315_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_105_layer_call_and_return_conditional_losses_522656o
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
_user_specified_namelstm_315_input
âJ

D__inference_lstm_315_layer_call_and_return_conditional_losses_524630
inputs_0>
+lstm_cell_84_matmul_readvariableop_resource:	@
-lstm_cell_84_matmul_1_readvariableop_resource:	d;
,lstm_cell_84_biasadd_readvariableop_resource:	
identity˘#lstm_cell_84/BiasAdd/ReadVariableOp˘"lstm_cell_84/MatMul/ReadVariableOp˘$lstm_cell_84/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_84/MatMul/ReadVariableOpReadVariableOp+lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_84/MatMulMatMulstrided_slice_2:output:0*lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_84/MatMul_1MatMulzeros:output:0,lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_84/addAddV2lstm_cell_84/MatMul:product:0lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_84/BiasAddBiasAddlstm_cell_84/add:z:0+lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_84/splitSplit%lstm_cell_84/split/split_dim:output:0lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_84/SigmoidSigmoidlstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_1Sigmoidlstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_84/mulMullstm_cell_84/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_84/ReluRelulstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_1Mullstm_cell_84/Sigmoid:y:0lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_84/add_1AddV2lstm_cell_84/mul:z:0lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_2Sigmoidlstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_84/Relu_1Relulstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_2Mullstm_cell_84/Sigmoid_2:y:0!lstm_cell_84/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_84_matmul_readvariableop_resource-lstm_cell_84_matmul_1_readvariableop_resource,lstm_cell_84_biasadd_readvariableop_resource*
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
while_body_524546*
condR
while_cond_524545*K
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
NoOpNoOp$^lstm_cell_84/BiasAdd/ReadVariableOp#^lstm_cell_84/MatMul/ReadVariableOp%^lstm_cell_84/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_84/BiasAdd/ReadVariableOp#lstm_cell_84/BiasAdd/ReadVariableOp2H
"lstm_cell_84/MatMul/ReadVariableOp"lstm_cell_84/MatMul/ReadVariableOp2L
$lstm_cell_84/MatMul_1/ReadVariableOp$lstm_cell_84/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_526063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_526063___redundant_placeholder04
0while_while_cond_526063___redundant_placeholder14
0while_while_cond_526063___redundant_placeholder24
0while_while_cond_526063___redundant_placeholder3
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
·
ï
J__inference_sequential_105_layer_call_and_return_conditional_losses_523245

inputs"
lstm_315_523218:	"
lstm_315_523220:	d
lstm_315_523222:	"
lstm_316_523225:	dÈ"
lstm_316_523227:	2È
lstm_316_523229:	È!
lstm_317_523232:2(!
lstm_317_523234:
(
lstm_317_523236:("
dense_105_523239:

dense_105_523241:
identity˘!dense_105/StatefulPartitionedCall˘ lstm_315/StatefulPartitionedCall˘ lstm_316/StatefulPartitionedCall˘ lstm_317/StatefulPartitionedCall
 lstm_315/StatefulPartitionedCallStatefulPartitionedCallinputslstm_315_523218lstm_315_523220lstm_315_523222*
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_523177Ş
 lstm_316/StatefulPartitionedCallStatefulPartitionedCall)lstm_315/StatefulPartitionedCall:output:0lstm_316_523225lstm_316_523227lstm_316_523229*
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_523012Ĥ
 lstm_317/StatefulPartitionedCallStatefulPartitionedCall)lstm_316/StatefulPartitionedCall:output:0lstm_317_523232lstm_317_523234lstm_317_523236*
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522847
!dense_105/StatefulPartitionedCallStatefulPartitionedCall)lstm_317/StatefulPartitionedCall:output:0dense_105_523239dense_105_523241*
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
GPU 2J 8 *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_522649y
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_105/StatefulPartitionedCall!^lstm_315/StatefulPartitionedCall!^lstm_316/StatefulPartitionedCall!^lstm_317/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2D
 lstm_315/StatefulPartitionedCall lstm_315/StatefulPartitionedCall2D
 lstm_316/StatefulPartitionedCall lstm_316/StatefulPartitionedCall2D
 lstm_317/StatefulPartitionedCall lstm_317/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
À


$__inference_signature_wrapper_523392
lstm_315_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_315_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_521132o
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
_user_specified_namelstm_315_input
Ï
÷
J__inference_sequential_105_layer_call_and_return_conditional_losses_523327
lstm_315_input"
lstm_315_523300:	"
lstm_315_523302:	d
lstm_315_523304:	"
lstm_316_523307:	dÈ"
lstm_316_523309:	2È
lstm_316_523311:	È!
lstm_317_523314:2(!
lstm_317_523316:
(
lstm_317_523318:("
dense_105_523321:

dense_105_523323:
identity˘!dense_105/StatefulPartitionedCall˘ lstm_315/StatefulPartitionedCall˘ lstm_316/StatefulPartitionedCall˘ lstm_317/StatefulPartitionedCall
 lstm_315/StatefulPartitionedCallStatefulPartitionedCalllstm_315_inputlstm_315_523300lstm_315_523302lstm_315_523304*
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_522331Ş
 lstm_316/StatefulPartitionedCallStatefulPartitionedCall)lstm_315/StatefulPartitionedCall:output:0lstm_316_523307lstm_316_523309lstm_316_523311*
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_522481Ĥ
 lstm_317/StatefulPartitionedCallStatefulPartitionedCall)lstm_316/StatefulPartitionedCall:output:0lstm_317_523314lstm_317_523316lstm_317_523318*
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522631
!dense_105/StatefulPartitionedCallStatefulPartitionedCall)lstm_317/StatefulPartitionedCall:output:0dense_105_523321dense_105_523323*
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
GPU 2J 8 *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_522649y
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_105/StatefulPartitionedCall!^lstm_315/StatefulPartitionedCall!^lstm_316/StatefulPartitionedCall!^lstm_317/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2D
 lstm_315/StatefulPartitionedCall lstm_315/StatefulPartitionedCall2D
 lstm_316/StatefulPartitionedCall lstm_316/StatefulPartitionedCall2D
 lstm_317/StatefulPartitionedCall lstm_317/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_315_input
µ
?
while_cond_525018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525018___redundant_placeholder04
0while_while_cond_525018___redundant_placeholder14
0while_while_cond_525018___redundant_placeholder24
0while_while_cond_525018___redundant_placeholder3
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
-__inference_lstm_cell_85_layer_call_fn_526299

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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521695o
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
Ŭ

H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_526363

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
²

÷
lstm_317_while_cond_523782.
*lstm_317_while_lstm_317_while_loop_counter4
0lstm_317_while_lstm_317_while_maximum_iterations
lstm_317_while_placeholder 
lstm_317_while_placeholder_1 
lstm_317_while_placeholder_2 
lstm_317_while_placeholder_30
,lstm_317_while_less_lstm_317_strided_slice_1F
Blstm_317_while_lstm_317_while_cond_523782___redundant_placeholder0F
Blstm_317_while_lstm_317_while_cond_523782___redundant_placeholder1F
Blstm_317_while_lstm_317_while_cond_523782___redundant_placeholder2F
Blstm_317_while_lstm_317_while_cond_523782___redundant_placeholder3
lstm_317_while_identity

lstm_317/while/LessLesslstm_317_while_placeholder,lstm_317_while_less_lstm_317_strided_slice_1*
T0*
_output_shapes
: ]
lstm_317/while/IdentityIdentitylstm_317/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_317_while_identity lstm_317/while/Identity:output:0*(
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

lstm_315_while_body_523932.
*lstm_315_while_lstm_315_while_loop_counter4
0lstm_315_while_lstm_315_while_maximum_iterations
lstm_315_while_placeholder 
lstm_315_while_placeholder_1 
lstm_315_while_placeholder_2 
lstm_315_while_placeholder_3-
)lstm_315_while_lstm_315_strided_slice_1_0i
elstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0:	Q
>lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dL
=lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0:	
lstm_315_while_identity
lstm_315_while_identity_1
lstm_315_while_identity_2
lstm_315_while_identity_3
lstm_315_while_identity_4
lstm_315_while_identity_5+
'lstm_315_while_lstm_315_strided_slice_1g
clstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensorM
:lstm_315_while_lstm_cell_84_matmul_readvariableop_resource:	O
<lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource:	dJ
;lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource:	˘2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp˘1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp˘3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp
@lstm_315/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_315/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensor_0lstm_315_while_placeholderIlstm_315/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp<lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_315/while/lstm_cell_84/MatMulMatMul9lstm_315/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp>lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_315/while/lstm_cell_84/MatMul_1MatMullstm_315_while_placeholder_2;lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_315/while/lstm_cell_84/addAddV2,lstm_315/while/lstm_cell_84/MatMul:product:0.lstm_315/while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp=lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_315/while/lstm_cell_84/BiasAddBiasAdd#lstm_315/while/lstm_cell_84/add:z:0:lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_315/while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_315/while/lstm_cell_84/splitSplit4lstm_315/while/lstm_cell_84/split/split_dim:output:0,lstm_315/while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_315/while/lstm_cell_84/SigmoidSigmoid*lstm_315/while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_315/while/lstm_cell_84/Sigmoid_1Sigmoid*lstm_315/while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_315/while/lstm_cell_84/mulMul)lstm_315/while/lstm_cell_84/Sigmoid_1:y:0lstm_315_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_315/while/lstm_cell_84/ReluRelu*lstm_315/while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_315/while/lstm_cell_84/mul_1Mul'lstm_315/while/lstm_cell_84/Sigmoid:y:0.lstm_315/while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_315/while/lstm_cell_84/add_1AddV2#lstm_315/while/lstm_cell_84/mul:z:0%lstm_315/while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_315/while/lstm_cell_84/Sigmoid_2Sigmoid*lstm_315/while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_315/while/lstm_cell_84/Relu_1Relu%lstm_315/while/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_315/while/lstm_cell_84/mul_2Mul)lstm_315/while/lstm_cell_84/Sigmoid_2:y:00lstm_315/while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_315/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_315_while_placeholder_1lstm_315_while_placeholder%lstm_315/while/lstm_cell_84/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_315/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_315/while/addAddV2lstm_315_while_placeholderlstm_315/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_315/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_315/while/add_1AddV2*lstm_315_while_lstm_315_while_loop_counterlstm_315/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_315/while/IdentityIdentitylstm_315/while/add_1:z:0^lstm_315/while/NoOp*
T0*
_output_shapes
: 
lstm_315/while/Identity_1Identity0lstm_315_while_lstm_315_while_maximum_iterations^lstm_315/while/NoOp*
T0*
_output_shapes
: t
lstm_315/while/Identity_2Identitylstm_315/while/add:z:0^lstm_315/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_315/while/Identity_3IdentityClstm_315/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_315/while/NoOp*
T0*
_output_shapes
: 
lstm_315/while/Identity_4Identity%lstm_315/while/lstm_cell_84/mul_2:z:0^lstm_315/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/while/Identity_5Identity%lstm_315/while/lstm_cell_84/add_1:z:0^lstm_315/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_315/while/NoOpNoOp3^lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2^lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp4^lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_315_while_identity lstm_315/while/Identity:output:0"?
lstm_315_while_identity_1"lstm_315/while/Identity_1:output:0"?
lstm_315_while_identity_2"lstm_315/while/Identity_2:output:0"?
lstm_315_while_identity_3"lstm_315/while/Identity_3:output:0"?
lstm_315_while_identity_4"lstm_315/while/Identity_4:output:0"?
lstm_315_while_identity_5"lstm_315/while/Identity_5:output:0"T
'lstm_315_while_lstm_315_strided_slice_1)lstm_315_while_lstm_315_strided_slice_1_0"|
;lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource=lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0"~
<lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource>lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0"z
:lstm_315_while_lstm_cell_84_matmul_readvariableop_resource<lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0"Ì
clstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensorelstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2f
1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp2j
3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_522331

inputs>
+lstm_cell_84_matmul_readvariableop_resource:	@
-lstm_cell_84_matmul_1_readvariableop_resource:	d;
,lstm_cell_84_biasadd_readvariableop_resource:	
identity˘#lstm_cell_84/BiasAdd/ReadVariableOp˘"lstm_cell_84/MatMul/ReadVariableOp˘$lstm_cell_84/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_84/MatMul/ReadVariableOpReadVariableOp+lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_84/MatMulMatMulstrided_slice_2:output:0*lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_84/MatMul_1MatMulzeros:output:0,lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_84/addAddV2lstm_cell_84/MatMul:product:0lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_84/BiasAddBiasAddlstm_cell_84/add:z:0+lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_84/splitSplit%lstm_cell_84/split/split_dim:output:0lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_84/SigmoidSigmoidlstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_1Sigmoidlstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_84/mulMullstm_cell_84/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_84/ReluRelulstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_1Mullstm_cell_84/Sigmoid:y:0lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_84/add_1AddV2lstm_cell_84/mul:z:0lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_2Sigmoidlstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_84/Relu_1Relulstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_2Mullstm_cell_84/Sigmoid_2:y:0!lstm_cell_84/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_84_matmul_readvariableop_resource-lstm_cell_84_matmul_1_readvariableop_resource,lstm_cell_84_biasadd_readvariableop_resource*
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
while_body_522247*
condR
while_cond_522246*K
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
NoOpNoOp$^lstm_cell_84/BiasAdd/ReadVariableOp#^lstm_cell_84/MatMul/ReadVariableOp%^lstm_cell_84/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_84/BiasAdd/ReadVariableOp#lstm_cell_84/BiasAdd/ReadVariableOp2H
"lstm_cell_84/MatMul/ReadVariableOp"lstm_cell_84/MatMul/ReadVariableOp2L
$lstm_cell_84/MatMul_1/ReadVariableOp$lstm_cell_84/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÎB
ê

lstm_317_while_body_523783.
*lstm_317_while_lstm_317_while_loop_counter4
0lstm_317_while_lstm_317_while_maximum_iterations
lstm_317_while_placeholder 
lstm_317_while_placeholder_1 
lstm_317_while_placeholder_2 
lstm_317_while_placeholder_3-
)lstm_317_while_lstm_317_strided_slice_1_0i
elstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0:2(P
>lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(K
=lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0:(
lstm_317_while_identity
lstm_317_while_identity_1
lstm_317_while_identity_2
lstm_317_while_identity_3
lstm_317_while_identity_4
lstm_317_while_identity_5+
'lstm_317_while_lstm_317_strided_slice_1g
clstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensorL
:lstm_317_while_lstm_cell_86_matmul_readvariableop_resource:2(N
<lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource:
(I
;lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource:(˘2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp˘1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp˘3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp
@lstm_317/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_317/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensor_0lstm_317_while_placeholderIlstm_317/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp<lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_317/while/lstm_cell_86/MatMulMatMul9lstm_317/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp>lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_317/while/lstm_cell_86/MatMul_1MatMullstm_317_while_placeholder_2;lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_317/while/lstm_cell_86/addAddV2,lstm_317/while/lstm_cell_86/MatMul:product:0.lstm_317/while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp=lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_317/while/lstm_cell_86/BiasAddBiasAdd#lstm_317/while/lstm_cell_86/add:z:0:lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_317/while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_317/while/lstm_cell_86/splitSplit4lstm_317/while/lstm_cell_86/split/split_dim:output:0,lstm_317/while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_317/while/lstm_cell_86/SigmoidSigmoid*lstm_317/while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_317/while/lstm_cell_86/Sigmoid_1Sigmoid*lstm_317/while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_317/while/lstm_cell_86/mulMul)lstm_317/while/lstm_cell_86/Sigmoid_1:y:0lstm_317_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_317/while/lstm_cell_86/ReluRelu*lstm_317/while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_317/while/lstm_cell_86/mul_1Mul'lstm_317/while/lstm_cell_86/Sigmoid:y:0.lstm_317/while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_317/while/lstm_cell_86/add_1AddV2#lstm_317/while/lstm_cell_86/mul:z:0%lstm_317/while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_317/while/lstm_cell_86/Sigmoid_2Sigmoid*lstm_317/while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_317/while/lstm_cell_86/Relu_1Relu%lstm_317/while/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_317/while/lstm_cell_86/mul_2Mul)lstm_317/while/lstm_cell_86/Sigmoid_2:y:00lstm_317/while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_317/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_317_while_placeholder_1lstm_317_while_placeholder%lstm_317/while/lstm_cell_86/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_317/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_317/while/addAddV2lstm_317_while_placeholderlstm_317/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_317/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_317/while/add_1AddV2*lstm_317_while_lstm_317_while_loop_counterlstm_317/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_317/while/IdentityIdentitylstm_317/while/add_1:z:0^lstm_317/while/NoOp*
T0*
_output_shapes
: 
lstm_317/while/Identity_1Identity0lstm_317_while_lstm_317_while_maximum_iterations^lstm_317/while/NoOp*
T0*
_output_shapes
: t
lstm_317/while/Identity_2Identitylstm_317/while/add:z:0^lstm_317/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_317/while/Identity_3IdentityClstm_317/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_317/while/NoOp*
T0*
_output_shapes
: 
lstm_317/while/Identity_4Identity%lstm_317/while/lstm_cell_86/mul_2:z:0^lstm_317/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/while/Identity_5Identity%lstm_317/while/lstm_cell_86/add_1:z:0^lstm_317/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_317/while/NoOpNoOp3^lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2^lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp4^lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_317_while_identity lstm_317/while/Identity:output:0"?
lstm_317_while_identity_1"lstm_317/while/Identity_1:output:0"?
lstm_317_while_identity_2"lstm_317/while/Identity_2:output:0"?
lstm_317_while_identity_3"lstm_317/while/Identity_3:output:0"?
lstm_317_while_identity_4"lstm_317/while/Identity_4:output:0"?
lstm_317_while_identity_5"lstm_317/while/Identity_5:output:0"T
'lstm_317_while_lstm_317_strided_slice_1)lstm_317_while_lstm_317_strided_slice_1_0"|
;lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource=lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0"~
<lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource>lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0"z
:lstm_317_while_lstm_cell_86_matmul_readvariableop_resource<lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0"Ì
clstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensorelstm_317_while_tensorarrayv2read_tensorlistgetitem_lstm_317_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2f
1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp1lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp2j
3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp3lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ë

H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_521899

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

µ
)__inference_lstm_317_layer_call_fn_525543
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_521982o
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
˙7
Ê
while_body_525635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_86_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_86_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_86_matmul_readvariableop_resource:2(E
3while_lstm_cell_86_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_86_biasadd_readvariableop_resource:(˘)while/lstm_cell_86/BiasAdd/ReadVariableOp˘(while/lstm_cell_86/MatMul/ReadVariableOp˘*while/lstm_cell_86/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_86/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_86/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_86/addAddV2#while/lstm_cell_86/MatMul:product:0%while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_86/BiasAddBiasAddwhile/lstm_cell_86/add:z:01while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_86/splitSplit+while/lstm_cell_86/split/split_dim:output:0#while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_86/SigmoidSigmoid!while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_1Sigmoid!while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mulMul while/lstm_cell_86/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_86/ReluRelu!while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_1Mulwhile/lstm_cell_86/Sigmoid:y:0%while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/add_1AddV2while/lstm_cell_86/mul:z:0while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_2Sigmoid!while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_86/Relu_1Reluwhile/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_2Mul while/lstm_cell_86/Sigmoid_2:y:0'while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_86/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_86/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_86/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_86/BiasAdd/ReadVariableOp)^while/lstm_cell_86/MatMul/ReadVariableOp+^while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_86_biasadd_readvariableop_resource4while_lstm_cell_86_biasadd_readvariableop_resource_0"l
3while_lstm_cell_86_matmul_1_readvariableop_resource5while_lstm_cell_86_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_86_matmul_readvariableop_resource3while_lstm_cell_86_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_86/BiasAdd/ReadVariableOp)while/lstm_cell_86/BiasAdd/ReadVariableOp2T
(while/lstm_cell_86/MatMul/ReadVariableOp(while/lstm_cell_86/MatMul/ReadVariableOp2X
*while/lstm_cell_86/MatMul_1/ReadVariableOp*while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_524546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_84_matmul_readvariableop_resource_0:	H
5while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_84_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_84_matmul_readvariableop_resource:	F
3while_lstm_cell_84_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_84_biasadd_readvariableop_resource:	˘)while/lstm_cell_84/BiasAdd/ReadVariableOp˘(while/lstm_cell_84/MatMul/ReadVariableOp˘*while/lstm_cell_84/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_84/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_84/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_84/addAddV2#while/lstm_cell_84/MatMul:product:0%while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_84/BiasAddBiasAddwhile/lstm_cell_84/add:z:01while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_84/splitSplit+while/lstm_cell_84/split/split_dim:output:0#while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_84/SigmoidSigmoid!while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_1Sigmoid!while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mulMul while/lstm_cell_84/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_84/ReluRelu!while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_1Mulwhile/lstm_cell_84/Sigmoid:y:0%while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/add_1AddV2while/lstm_cell_84/mul:z:0while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_2Sigmoid!while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_84/Relu_1Reluwhile/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_2Mul while/lstm_cell_84/Sigmoid_2:y:0'while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_84/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_84/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_84/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_84/BiasAdd/ReadVariableOp)^while/lstm_cell_84/MatMul/ReadVariableOp+^while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_84_biasadd_readvariableop_resource4while_lstm_cell_84_biasadd_readvariableop_resource_0"l
3while_lstm_cell_84_matmul_1_readvariableop_resource5while_lstm_cell_84_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_84_matmul_readvariableop_resource3while_lstm_cell_84_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_84/BiasAdd/ReadVariableOp)while/lstm_cell_84/BiasAdd/ReadVariableOp2T
(while/lstm_cell_84/MatMul/ReadVariableOp(while/lstm_cell_84/MatMul/ReadVariableOp2X
*while/lstm_cell_84/MatMul_1/ReadVariableOp*while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ŭ

H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_526331

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
¤J

D__inference_lstm_316_layer_call_and_return_conditional_losses_522481

inputs>
+lstm_cell_85_matmul_readvariableop_resource:	dÈ@
-lstm_cell_85_matmul_1_readvariableop_resource:	2È;
,lstm_cell_85_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_85/BiasAdd/ReadVariableOp˘"lstm_cell_85/MatMul/ReadVariableOp˘$lstm_cell_85/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_85/MatMul/ReadVariableOpReadVariableOp+lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0*lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_85/MatMul_1MatMulzeros:output:0,lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_85/addAddV2lstm_cell_85/MatMul:product:0lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_85/BiasAddBiasAddlstm_cell_85/add:z:0+lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_85/SigmoidSigmoidlstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_85/mulMullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_85/ReluRelulstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_1Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_85/add_1AddV2lstm_cell_85/mul:z:0lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_85/Relu_1Relulstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_2Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_85_matmul_readvariableop_resource-lstm_cell_85_matmul_1_readvariableop_resource,lstm_cell_85_biasadd_readvariableop_resource*
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
while_body_522397*
condR
while_cond_522396*K
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
NoOpNoOp$^lstm_cell_85/BiasAdd/ReadVariableOp#^lstm_cell_85/MatMul/ReadVariableOp%^lstm_cell_85/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_85/BiasAdd/ReadVariableOp#lstm_cell_85/BiasAdd/ReadVariableOp2H
"lstm_cell_85/MatMul/ReadVariableOp"lstm_cell_85/MatMul/ReadVariableOp2L
$lstm_cell_85/MatMul_1/ReadVariableOp$lstm_cell_85/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
İT
Î
)sequential_105_lstm_317_while_body_521042L
Hsequential_105_lstm_317_while_sequential_105_lstm_317_while_loop_counterR
Nsequential_105_lstm_317_while_sequential_105_lstm_317_while_maximum_iterations-
)sequential_105_lstm_317_while_placeholder/
+sequential_105_lstm_317_while_placeholder_1/
+sequential_105_lstm_317_while_placeholder_2/
+sequential_105_lstm_317_while_placeholder_3K
Gsequential_105_lstm_317_while_sequential_105_lstm_317_strided_slice_1_0
sequential_105_lstm_317_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_317_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_105_lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0:2(_
Msequential_105_lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(Z
Lsequential_105_lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0:(*
&sequential_105_lstm_317_while_identity,
(sequential_105_lstm_317_while_identity_1,
(sequential_105_lstm_317_while_identity_2,
(sequential_105_lstm_317_while_identity_3,
(sequential_105_lstm_317_while_identity_4,
(sequential_105_lstm_317_while_identity_5I
Esequential_105_lstm_317_while_sequential_105_lstm_317_strided_slice_1
sequential_105_lstm_317_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_317_tensorarrayunstack_tensorlistfromtensor[
Isequential_105_lstm_317_while_lstm_cell_86_matmul_readvariableop_resource:2(]
Ksequential_105_lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource:
(X
Jsequential_105_lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource:(˘Asequential_105/lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp˘@sequential_105/lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp˘Bsequential_105/lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp 
Osequential_105/lstm_317/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
Asequential_105/lstm_317/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_105_lstm_317_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_317_tensorarrayunstack_tensorlistfromtensor_0)sequential_105_lstm_317_while_placeholderXsequential_105/lstm_317/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ì
@sequential_105/lstm_317/while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOpKsequential_105_lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_105/lstm_317/while/lstm_cell_86/MatMulMatMulHsequential_105/lstm_317/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_105/lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
Bsequential_105/lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOpMsequential_105_lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0è
3sequential_105/lstm_317/while/lstm_cell_86/MatMul_1MatMul+sequential_105_lstm_317_while_placeholder_2Jsequential_105/lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ċ
.sequential_105/lstm_317/while/lstm_cell_86/addAddV2;sequential_105/lstm_317/while/lstm_cell_86/MatMul:product:0=sequential_105/lstm_317/while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ê
Asequential_105/lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOpLsequential_105_lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0î
2sequential_105/lstm_317/while/lstm_cell_86/BiasAddBiasAdd2sequential_105/lstm_317/while/lstm_cell_86/add:z:0Isequential_105/lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(|
:sequential_105/lstm_317/while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_105/lstm_317/while/lstm_cell_86/splitSplitCsequential_105/lstm_317/while/lstm_cell_86/split/split_dim:output:0;sequential_105/lstm_317/while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitŞ
2sequential_105/lstm_317/while/lstm_cell_86/SigmoidSigmoid9sequential_105/lstm_317/while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_105/lstm_317/while/lstm_cell_86/Sigmoid_1Sigmoid9sequential_105/lstm_317/while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
.sequential_105/lstm_317/while/lstm_cell_86/mulMul8sequential_105/lstm_317/while/lstm_cell_86/Sigmoid_1:y:0+sequential_105_lstm_317_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/sequential_105/lstm_317/while/lstm_cell_86/ReluRelu9sequential_105/lstm_317/while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
à
0sequential_105/lstm_317/while/lstm_cell_86/mul_1Mul6sequential_105/lstm_317/while/lstm_cell_86/Sigmoid:y:0=sequential_105/lstm_317/while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ġ
0sequential_105/lstm_317/while/lstm_cell_86/add_1AddV22sequential_105/lstm_317/while/lstm_cell_86/mul:z:04sequential_105/lstm_317/while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_105/lstm_317/while/lstm_cell_86/Sigmoid_2Sigmoid9sequential_105/lstm_317/while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
1sequential_105/lstm_317/while/lstm_cell_86/Relu_1Relu4sequential_105/lstm_317/while/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
0sequential_105/lstm_317/while/lstm_cell_86/mul_2Mul8sequential_105/lstm_317/while/lstm_cell_86/Sigmoid_2:y:0?sequential_105/lstm_317/while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
Bsequential_105/lstm_317/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_105_lstm_317_while_placeholder_1)sequential_105_lstm_317_while_placeholder4sequential_105/lstm_317/while/lstm_cell_86/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_105/lstm_317/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_105/lstm_317/while/addAddV2)sequential_105_lstm_317_while_placeholder,sequential_105/lstm_317/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_105/lstm_317/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_105/lstm_317/while/add_1AddV2Hsequential_105_lstm_317_while_sequential_105_lstm_317_while_loop_counter.sequential_105/lstm_317/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_105/lstm_317/while/IdentityIdentity'sequential_105/lstm_317/while/add_1:z:0#^sequential_105/lstm_317/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_105/lstm_317/while/Identity_1IdentityNsequential_105_lstm_317_while_sequential_105_lstm_317_while_maximum_iterations#^sequential_105/lstm_317/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_105/lstm_317/while/Identity_2Identity%sequential_105/lstm_317/while/add:z:0#^sequential_105/lstm_317/while/NoOp*
T0*
_output_shapes
: Î
(sequential_105/lstm_317/while/Identity_3IdentityRsequential_105/lstm_317/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_105/lstm_317/while/NoOp*
T0*
_output_shapes
: Á
(sequential_105/lstm_317/while/Identity_4Identity4sequential_105/lstm_317/while/lstm_cell_86/mul_2:z:0#^sequential_105/lstm_317/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(sequential_105/lstm_317/while/Identity_5Identity4sequential_105/lstm_317/while/lstm_cell_86/add_1:z:0#^sequential_105/lstm_317/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
"sequential_105/lstm_317/while/NoOpNoOpB^sequential_105/lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOpA^sequential_105/lstm_317/while/lstm_cell_86/MatMul/ReadVariableOpC^sequential_105/lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_105_lstm_317_while_identity/sequential_105/lstm_317/while/Identity:output:0"]
(sequential_105_lstm_317_while_identity_11sequential_105/lstm_317/while/Identity_1:output:0"]
(sequential_105_lstm_317_while_identity_21sequential_105/lstm_317/while/Identity_2:output:0"]
(sequential_105_lstm_317_while_identity_31sequential_105/lstm_317/while/Identity_3:output:0"]
(sequential_105_lstm_317_while_identity_41sequential_105/lstm_317/while/Identity_4:output:0"]
(sequential_105_lstm_317_while_identity_51sequential_105/lstm_317/while/Identity_5:output:0"
Jsequential_105_lstm_317_while_lstm_cell_86_biasadd_readvariableop_resourceLsequential_105_lstm_317_while_lstm_cell_86_biasadd_readvariableop_resource_0"
Ksequential_105_lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resourceMsequential_105_lstm_317_while_lstm_cell_86_matmul_1_readvariableop_resource_0"
Isequential_105_lstm_317_while_lstm_cell_86_matmul_readvariableop_resourceKsequential_105_lstm_317_while_lstm_cell_86_matmul_readvariableop_resource_0"
Esequential_105_lstm_317_while_sequential_105_lstm_317_strided_slice_1Gsequential_105_lstm_317_while_sequential_105_lstm_317_strided_slice_1_0"
sequential_105_lstm_317_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_317_tensorarrayunstack_tensorlistfromtensorsequential_105_lstm_317_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_317_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
Asequential_105/lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOpAsequential_105/lstm_317/while/lstm_cell_86/BiasAdd/ReadVariableOp2
@sequential_105/lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp@sequential_105/lstm_317/while/lstm_cell_86/MatMul/ReadVariableOp2
Bsequential_105/lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOpBsequential_105/lstm_317/while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ğ
¸
)__inference_lstm_316_layer_call_fn_524927
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_521632|
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
ÔJ

D__inference_lstm_317_layer_call_and_return_conditional_losses_525862
inputs_0=
+lstm_cell_86_matmul_readvariableop_resource:2(?
-lstm_cell_86_matmul_1_readvariableop_resource:
(:
,lstm_cell_86_biasadd_readvariableop_resource:(
identity˘#lstm_cell_86/BiasAdd/ReadVariableOp˘"lstm_cell_86/MatMul/ReadVariableOp˘$lstm_cell_86/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_86/MatMul/ReadVariableOpReadVariableOp+lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_86/MatMulMatMulstrided_slice_2:output:0*lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_86/MatMul_1MatMulzeros:output:0,lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_86/addAddV2lstm_cell_86/MatMul:product:0lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_86/BiasAddBiasAddlstm_cell_86/add:z:0+lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_86/splitSplit%lstm_cell_86/split/split_dim:output:0lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_86/SigmoidSigmoidlstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_1Sigmoidlstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_86/mulMullstm_cell_86/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_86/ReluRelulstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_1Mullstm_cell_86/Sigmoid:y:0lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_86/add_1AddV2lstm_cell_86/mul:z:0lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_2Sigmoidlstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_86/Relu_1Relulstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_2Mullstm_cell_86/Sigmoid_2:y:0!lstm_cell_86/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_86_matmul_readvariableop_resource-lstm_cell_86_matmul_1_readvariableop_resource,lstm_cell_86_biasadd_readvariableop_resource*
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
while_body_525778*
condR
while_cond_525777*K
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
NoOpNoOp$^lstm_cell_86/BiasAdd/ReadVariableOp#^lstm_cell_86/MatMul/ReadVariableOp%^lstm_cell_86/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_86/BiasAdd/ReadVariableOp#lstm_cell_86/BiasAdd/ReadVariableOp2H
"lstm_cell_86/MatMul/ReadVariableOp"lstm_cell_86/MatMul/ReadVariableOp2L
$lstm_cell_86/MatMul_1/ReadVariableOp$lstm_cell_86/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ó¤

"__inference__traced_restore_526734
file_prefix3
!assignvariableop_dense_105_kernel:
/
!assignvariableop_1_dense_105_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_315_lstm_cell_315_kernel:	M
:assignvariableop_8_lstm_315_lstm_cell_315_recurrent_kernel:	d=
.assignvariableop_9_lstm_315_lstm_cell_315_bias:	D
1assignvariableop_10_lstm_316_lstm_cell_316_kernel:	dÈN
;assignvariableop_11_lstm_316_lstm_cell_316_recurrent_kernel:	2È>
/assignvariableop_12_lstm_316_lstm_cell_316_bias:	ÈC
1assignvariableop_13_lstm_317_lstm_cell_317_kernel:2(M
;assignvariableop_14_lstm_317_lstm_cell_317_recurrent_kernel:
(=
/assignvariableop_15_lstm_317_lstm_cell_317_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_105_kernel_m:
7
)assignvariableop_19_adam_dense_105_bias_m:K
8assignvariableop_20_adam_lstm_315_lstm_cell_315_kernel_m:	U
Bassignvariableop_21_adam_lstm_315_lstm_cell_315_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_315_lstm_cell_315_bias_m:	K
8assignvariableop_23_adam_lstm_316_lstm_cell_316_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_316_lstm_cell_316_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_316_lstm_cell_316_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_317_lstm_cell_317_kernel_m:2(T
Bassignvariableop_27_adam_lstm_317_lstm_cell_317_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_317_lstm_cell_317_bias_m:(=
+assignvariableop_29_adam_dense_105_kernel_v:
7
)assignvariableop_30_adam_dense_105_bias_v:K
8assignvariableop_31_adam_lstm_315_lstm_cell_315_kernel_v:	U
Bassignvariableop_32_adam_lstm_315_lstm_cell_315_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_315_lstm_cell_315_bias_v:	K
8assignvariableop_34_adam_lstm_316_lstm_cell_316_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_316_lstm_cell_316_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_316_lstm_cell_316_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_317_lstm_cell_317_kernel_v:2(T
Bassignvariableop_38_adam_lstm_317_lstm_cell_317_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_317_lstm_cell_317_bias_v:(
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
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_105_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_105_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_315_lstm_cell_315_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_315_lstm_cell_315_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_315_lstm_cell_315_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_316_lstm_cell_316_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_316_lstm_cell_316_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_316_lstm_cell_316_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_317_lstm_cell_317_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_317_lstm_cell_317_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_317_lstm_cell_317_biasIdentity_15:output:0"/device:CPU:0*
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
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_105_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_105_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_315_lstm_cell_315_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_315_lstm_cell_315_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_315_lstm_cell_315_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_316_lstm_cell_316_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_316_lstm_cell_316_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_316_lstm_cell_316_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_317_lstm_cell_317_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_317_lstm_cell_317_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_317_lstm_cell_317_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_105_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_105_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_315_lstm_cell_315_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_315_lstm_cell_315_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_315_lstm_cell_315_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_316_lstm_cell_316_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_316_lstm_cell_316_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_316_lstm_cell_316_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_317_lstm_cell_317_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_317_lstm_cell_317_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_317_lstm_cell_317_bias_vIdentity_39:output:0"/device:CPU:0*
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
8
?
while_body_524832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_84_matmul_readvariableop_resource_0:	H
5while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_84_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_84_matmul_readvariableop_resource:	F
3while_lstm_cell_84_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_84_biasadd_readvariableop_resource:	˘)while/lstm_cell_84/BiasAdd/ReadVariableOp˘(while/lstm_cell_84/MatMul/ReadVariableOp˘*while/lstm_cell_84/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_84/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_84/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_84/addAddV2#while/lstm_cell_84/MatMul:product:0%while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_84/BiasAddBiasAddwhile/lstm_cell_84/add:z:01while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_84/splitSplit+while/lstm_cell_84/split/split_dim:output:0#while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_84/SigmoidSigmoid!while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_1Sigmoid!while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mulMul while/lstm_cell_84/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_84/ReluRelu!while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_1Mulwhile/lstm_cell_84/Sigmoid:y:0%while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/add_1AddV2while/lstm_cell_84/mul:z:0while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_2Sigmoid!while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_84/Relu_1Reluwhile/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_2Mul while/lstm_cell_84/Sigmoid_2:y:0'while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_84/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_84/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_84/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_84/BiasAdd/ReadVariableOp)^while/lstm_cell_84/MatMul/ReadVariableOp+^while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_84_biasadd_readvariableop_resource4while_lstm_cell_84_biasadd_readvariableop_resource_0"l
3while_lstm_cell_84_matmul_1_readvariableop_resource5while_lstm_cell_84_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_84_matmul_readvariableop_resource3while_lstm_cell_84_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_84/BiasAdd/ReadVariableOp)while/lstm_cell_84/BiasAdd/ReadVariableOp2T
(while/lstm_cell_84/MatMul/ReadVariableOp(while/lstm_cell_84/MatMul/ReadVariableOp2X
*while/lstm_cell_84/MatMul_1/ReadVariableOp*while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
8

D__inference_lstm_316_layer_call_and_return_conditional_losses_521823

inputs&
lstm_cell_85_521741:	dÈ&
lstm_cell_85_521743:	2È"
lstm_cell_85_521745:	È
identity˘$lstm_cell_85/StatefulPartitionedCall˘while;
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
$lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_85_521741lstm_cell_85_521743lstm_cell_85_521745*
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521695n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_85_521741lstm_cell_85_521743lstm_cell_85_521745*
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
while_body_521754*
condR
while_cond_521753*K
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
NoOpNoOp%^lstm_cell_85/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_85/StatefulPartitionedCall$lstm_cell_85/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
âJ

D__inference_lstm_316_layer_call_and_return_conditional_losses_525246
inputs_0>
+lstm_cell_85_matmul_readvariableop_resource:	dÈ@
-lstm_cell_85_matmul_1_readvariableop_resource:	2È;
,lstm_cell_85_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_85/BiasAdd/ReadVariableOp˘"lstm_cell_85/MatMul/ReadVariableOp˘$lstm_cell_85/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_85/MatMul/ReadVariableOpReadVariableOp+lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0*lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_85/MatMul_1MatMulzeros:output:0,lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_85/addAddV2lstm_cell_85/MatMul:product:0lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_85/BiasAddBiasAddlstm_cell_85/add:z:0+lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_85/SigmoidSigmoidlstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_85/mulMullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_85/ReluRelulstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_1Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_85/add_1AddV2lstm_cell_85/mul:z:0lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_85/Relu_1Relulstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_2Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_85_matmul_readvariableop_resource-lstm_cell_85_matmul_1_readvariableop_resource,lstm_cell_85_biasadd_readvariableop_resource*
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
while_body_525162*
condR
while_cond_525161*K
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
NoOpNoOp$^lstm_cell_85/BiasAdd/ReadVariableOp#^lstm_cell_85/MatMul/ReadVariableOp%^lstm_cell_85/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_85/BiasAdd/ReadVariableOp#lstm_cell_85/BiasAdd/ReadVariableOp2H
"lstm_cell_85/MatMul/ReadVariableOp"lstm_cell_85/MatMul/ReadVariableOp2L
$lstm_cell_85/MatMul_1/ReadVariableOp$lstm_cell_85/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_315_layer_call_and_return_conditional_losses_524773

inputs>
+lstm_cell_84_matmul_readvariableop_resource:	@
-lstm_cell_84_matmul_1_readvariableop_resource:	d;
,lstm_cell_84_biasadd_readvariableop_resource:	
identity˘#lstm_cell_84/BiasAdd/ReadVariableOp˘"lstm_cell_84/MatMul/ReadVariableOp˘$lstm_cell_84/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_84/MatMul/ReadVariableOpReadVariableOp+lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_84/MatMulMatMulstrided_slice_2:output:0*lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_84/MatMul_1MatMulzeros:output:0,lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_84/addAddV2lstm_cell_84/MatMul:product:0lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_84/BiasAddBiasAddlstm_cell_84/add:z:0+lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_84/splitSplit%lstm_cell_84/split/split_dim:output:0lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_84/SigmoidSigmoidlstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_1Sigmoidlstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_84/mulMullstm_cell_84/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_84/ReluRelulstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_1Mullstm_cell_84/Sigmoid:y:0lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_84/add_1AddV2lstm_cell_84/mul:z:0lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_2Sigmoidlstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_84/Relu_1Relulstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_2Mullstm_cell_84/Sigmoid_2:y:0!lstm_cell_84/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_84_matmul_readvariableop_resource-lstm_cell_84_matmul_1_readvariableop_resource,lstm_cell_84_biasadd_readvariableop_resource*
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
while_body_524689*
condR
while_cond_524688*K
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
NoOpNoOp$^lstm_cell_84/BiasAdd/ReadVariableOp#^lstm_cell_84/MatMul/ReadVariableOp%^lstm_cell_84/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_84/BiasAdd/ReadVariableOp#lstm_cell_84/BiasAdd/ReadVariableOp2H
"lstm_cell_84/MatMul/ReadVariableOp"lstm_cell_84/MatMul/ReadVariableOp2L
$lstm_cell_84/MatMul_1/ReadVariableOp$lstm_cell_84/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_522547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_86_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_86_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_86_matmul_readvariableop_resource:2(E
3while_lstm_cell_86_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_86_biasadd_readvariableop_resource:(˘)while/lstm_cell_86/BiasAdd/ReadVariableOp˘(while/lstm_cell_86/MatMul/ReadVariableOp˘*while/lstm_cell_86/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_86/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_86/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_86/addAddV2#while/lstm_cell_86/MatMul:product:0%while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_86/BiasAddBiasAddwhile/lstm_cell_86/add:z:01while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_86/splitSplit+while/lstm_cell_86/split/split_dim:output:0#while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_86/SigmoidSigmoid!while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_1Sigmoid!while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mulMul while/lstm_cell_86/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_86/ReluRelu!while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_1Mulwhile/lstm_cell_86/Sigmoid:y:0%while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/add_1AddV2while/lstm_cell_86/mul:z:0while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_2Sigmoid!while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_86/Relu_1Reluwhile/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_2Mul while/lstm_cell_86/Sigmoid_2:y:0'while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_86/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_86/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_86/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_86/BiasAdd/ReadVariableOp)^while/lstm_cell_86/MatMul/ReadVariableOp+^while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_86_biasadd_readvariableop_resource4while_lstm_cell_86_biasadd_readvariableop_resource_0"l
3while_lstm_cell_86_matmul_1_readvariableop_resource5while_lstm_cell_86_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_86_matmul_readvariableop_resource3while_lstm_cell_86_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_86/BiasAdd/ReadVariableOp)while/lstm_cell_86/BiasAdd/ReadVariableOp2T
(while/lstm_cell_86/MatMul/ReadVariableOp(while/lstm_cell_86/MatMul/ReadVariableOp2X
*while/lstm_cell_86/MatMul_1/ReadVariableOp*while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_525162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_85_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_85_biasadd_readvariableop_resource:	È˘)while/lstm_cell_85/BiasAdd/ReadVariableOp˘(while/lstm_cell_85/MatMul/ReadVariableOp˘*while/lstm_cell_85/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_85/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_85/addAddV2#while/lstm_cell_85/MatMul:product:0%while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_85/BiasAddBiasAddwhile/lstm_cell_85/add:z:01while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0#while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_85/SigmoidSigmoid!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_1Sigmoid!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mulMul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_85/ReluRelu!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_1Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/add_1AddV2while/lstm_cell_85/mul:z:0while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_2Sigmoid!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_2Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_85/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_85/BiasAdd/ReadVariableOp)^while/lstm_cell_85/MatMul/ReadVariableOp+^while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_85_biasadd_readvariableop_resource4while_lstm_cell_85_biasadd_readvariableop_resource_0"l
3while_lstm_cell_85_matmul_1_readvariableop_resource5while_lstm_cell_85_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_85_matmul_readvariableop_resource3while_lstm_cell_85_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_85/BiasAdd/ReadVariableOp)while/lstm_cell_85/BiasAdd/ReadVariableOp2T
(while/lstm_cell_85/MatMul/ReadVariableOp(while/lstm_cell_85/MatMul/ReadVariableOp2X
*while/lstm_cell_85/MatMul_1/ReadVariableOp*while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
8

D__inference_lstm_317_layer_call_and_return_conditional_losses_522173

inputs%
lstm_cell_86_522091:2(%
lstm_cell_86_522093:
(!
lstm_cell_86_522095:(
identity˘$lstm_cell_86/StatefulPartitionedCall˘while;
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
$lstm_cell_86/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_86_522091lstm_cell_86_522093lstm_cell_86_522095*
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_522045n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_86_522091lstm_cell_86_522093lstm_cell_86_522095*
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
while_body_522104*
condR
while_cond_522103*K
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
NoOpNoOp%^lstm_cell_86/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_86/StatefulPartitionedCall$lstm_cell_86/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_522762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_522762___redundant_placeholder04
0while_while_cond_522762___redundant_placeholder14
0while_while_cond_522762___redundant_placeholder24
0while_while_cond_522762___redundant_placeholder3
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
âJ

D__inference_lstm_316_layer_call_and_return_conditional_losses_525103
inputs_0>
+lstm_cell_85_matmul_readvariableop_resource:	dÈ@
-lstm_cell_85_matmul_1_readvariableop_resource:	2È;
,lstm_cell_85_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_85/BiasAdd/ReadVariableOp˘"lstm_cell_85/MatMul/ReadVariableOp˘$lstm_cell_85/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_85/MatMul/ReadVariableOpReadVariableOp+lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0*lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_85/MatMul_1MatMulzeros:output:0,lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_85/addAddV2lstm_cell_85/MatMul:product:0lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_85/BiasAddBiasAddlstm_cell_85/add:z:0+lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_85/SigmoidSigmoidlstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_85/mulMullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_85/ReluRelulstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_1Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_85/add_1AddV2lstm_cell_85/mul:z:0lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_85/Relu_1Relulstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_2Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_85_matmul_readvariableop_resource-lstm_cell_85_matmul_1_readvariableop_resource,lstm_cell_85_biasadd_readvariableop_resource*
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
while_body_525019*
condR
while_cond_525018*K
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
NoOpNoOp$^lstm_cell_85/BiasAdd/ReadVariableOp#^lstm_cell_85/MatMul/ReadVariableOp%^lstm_cell_85/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_85/BiasAdd/ReadVariableOp#lstm_cell_85/BiasAdd/ReadVariableOp2H
"lstm_cell_85/MatMul/ReadVariableOp"lstm_cell_85/MatMul/ReadVariableOp2L
$lstm_cell_85/MatMul_1/ReadVariableOp$lstm_cell_85/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ü


/__inference_sequential_105_layer_call_fn_523446

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
identity˘StatefulPartitionedCallÔ
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
GPU 2J 8 *S
fNRL
J__inference_sequential_105_layer_call_and_return_conditional_losses_523245o
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
Ġ

H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521345

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
Ö
£
)sequential_105_lstm_317_while_cond_521041L
Hsequential_105_lstm_317_while_sequential_105_lstm_317_while_loop_counterR
Nsequential_105_lstm_317_while_sequential_105_lstm_317_while_maximum_iterations-
)sequential_105_lstm_317_while_placeholder/
+sequential_105_lstm_317_while_placeholder_1/
+sequential_105_lstm_317_while_placeholder_2/
+sequential_105_lstm_317_while_placeholder_3N
Jsequential_105_lstm_317_while_less_sequential_105_lstm_317_strided_slice_1d
`sequential_105_lstm_317_while_sequential_105_lstm_317_while_cond_521041___redundant_placeholder0d
`sequential_105_lstm_317_while_sequential_105_lstm_317_while_cond_521041___redundant_placeholder1d
`sequential_105_lstm_317_while_sequential_105_lstm_317_while_cond_521041___redundant_placeholder2d
`sequential_105_lstm_317_while_sequential_105_lstm_317_while_cond_521041___redundant_placeholder3*
&sequential_105_lstm_317_while_identity
Â
"sequential_105/lstm_317/while/LessLess)sequential_105_lstm_317_while_placeholderJsequential_105_lstm_317_while_less_sequential_105_lstm_317_strided_slice_1*
T0*
_output_shapes
: {
&sequential_105/lstm_317/while/IdentityIdentity&sequential_105/lstm_317/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_105_lstm_317_while_identity/sequential_105/lstm_317/while/Identity:output:0*(
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
Ĉ

J__inference_sequential_105_layer_call_and_return_conditional_losses_523873

inputsG
4lstm_315_lstm_cell_84_matmul_readvariableop_resource:	I
6lstm_315_lstm_cell_84_matmul_1_readvariableop_resource:	dD
5lstm_315_lstm_cell_84_biasadd_readvariableop_resource:	G
4lstm_316_lstm_cell_85_matmul_readvariableop_resource:	dÈI
6lstm_316_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈD
5lstm_316_lstm_cell_85_biasadd_readvariableop_resource:	ÈF
4lstm_317_lstm_cell_86_matmul_readvariableop_resource:2(H
6lstm_317_lstm_cell_86_matmul_1_readvariableop_resource:
(C
5lstm_317_lstm_cell_86_biasadd_readvariableop_resource:(:
(dense_105_matmul_readvariableop_resource:
7
)dense_105_biasadd_readvariableop_resource:
identity˘ dense_105/BiasAdd/ReadVariableOp˘dense_105/MatMul/ReadVariableOp˘,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp˘+lstm_315/lstm_cell_84/MatMul/ReadVariableOp˘-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp˘lstm_315/while˘,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp˘+lstm_316/lstm_cell_85/MatMul/ReadVariableOp˘-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp˘lstm_316/while˘,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp˘+lstm_317/lstm_cell_86/MatMul/ReadVariableOp˘-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp˘lstm_317/whileD
lstm_315/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_315/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_315/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_315/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_315/strided_sliceStridedSlicelstm_315/Shape:output:0%lstm_315/strided_slice/stack:output:0'lstm_315/strided_slice/stack_1:output:0'lstm_315/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_315/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_315/zeros/packedPacklstm_315/strided_slice:output:0 lstm_315/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_315/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_315/zerosFilllstm_315/zeros/packed:output:0lstm_315/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_315/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_315/zeros_1/packedPacklstm_315/strided_slice:output:0"lstm_315/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_315/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_315/zeros_1Fill lstm_315/zeros_1/packed:output:0lstm_315/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_315/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_315/transpose	Transposeinputs lstm_315/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_315/Shape_1Shapelstm_315/transpose:y:0*
T0*
_output_shapes
:h
lstm_315/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_315/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_315/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_315/strided_slice_1StridedSlicelstm_315/Shape_1:output:0'lstm_315/strided_slice_1/stack:output:0)lstm_315/strided_slice_1/stack_1:output:0)lstm_315/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_315/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_315/TensorArrayV2TensorListReserve-lstm_315/TensorArrayV2/element_shape:output:0!lstm_315/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_315/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_315/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_315/transpose:y:0Glstm_315/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_315/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_315/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_315/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_315/strided_slice_2StridedSlicelstm_315/transpose:y:0'lstm_315/strided_slice_2/stack:output:0)lstm_315/strided_slice_2/stack_1:output:0)lstm_315/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_315/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp4lstm_315_lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_315/lstm_cell_84/MatMulMatMul!lstm_315/strided_slice_2:output:03lstm_315/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp6lstm_315_lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_315/lstm_cell_84/MatMul_1MatMullstm_315/zeros:output:05lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_315/lstm_cell_84/addAddV2&lstm_315/lstm_cell_84/MatMul:product:0(lstm_315/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp5lstm_315_lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_315/lstm_cell_84/BiasAddBiasAddlstm_315/lstm_cell_84/add:z:04lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_315/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_315/lstm_cell_84/splitSplit.lstm_315/lstm_cell_84/split/split_dim:output:0&lstm_315/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_315/lstm_cell_84/SigmoidSigmoid$lstm_315/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/Sigmoid_1Sigmoid$lstm_315/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/mulMul#lstm_315/lstm_cell_84/Sigmoid_1:y:0lstm_315/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_315/lstm_cell_84/ReluRelu$lstm_315/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_315/lstm_cell_84/mul_1Mul!lstm_315/lstm_cell_84/Sigmoid:y:0(lstm_315/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/add_1AddV2lstm_315/lstm_cell_84/mul:z:0lstm_315/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/lstm_cell_84/Sigmoid_2Sigmoid$lstm_315/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_315/lstm_cell_84/Relu_1Relulstm_315/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_315/lstm_cell_84/mul_2Mul#lstm_315/lstm_cell_84/Sigmoid_2:y:0*lstm_315/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_315/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_315/TensorArrayV2_1TensorListReserve/lstm_315/TensorArrayV2_1/element_shape:output:0!lstm_315/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_315/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_315/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_315/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_315/whileWhile$lstm_315/while/loop_counter:output:0*lstm_315/while/maximum_iterations:output:0lstm_315/time:output:0!lstm_315/TensorArrayV2_1:handle:0lstm_315/zeros:output:0lstm_315/zeros_1:output:0!lstm_315/strided_slice_1:output:0@lstm_315/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_315_lstm_cell_84_matmul_readvariableop_resource6lstm_315_lstm_cell_84_matmul_1_readvariableop_resource5lstm_315_lstm_cell_84_biasadd_readvariableop_resource*
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
lstm_315_while_body_523505*&
condR
lstm_315_while_cond_523504*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_315/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_315/TensorArrayV2Stack/TensorListStackTensorListStacklstm_315/while:output:3Blstm_315/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_315/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_315/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_315/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_315/strided_slice_3StridedSlice4lstm_315/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_315/strided_slice_3/stack:output:0)lstm_315/strided_slice_3/stack_1:output:0)lstm_315/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_315/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_315/transpose_1	Transpose4lstm_315/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_315/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_315/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_316/ShapeShapelstm_315/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_316/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_316/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_316/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_316/strided_sliceStridedSlicelstm_316/Shape:output:0%lstm_316/strided_slice/stack:output:0'lstm_316/strided_slice/stack_1:output:0'lstm_316/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_316/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_316/zeros/packedPacklstm_316/strided_slice:output:0 lstm_316/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_316/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_316/zerosFilllstm_316/zeros/packed:output:0lstm_316/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_316/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_316/zeros_1/packedPacklstm_316/strided_slice:output:0"lstm_316/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_316/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_316/zeros_1Fill lstm_316/zeros_1/packed:output:0lstm_316/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_316/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_316/transpose	Transposelstm_315/transpose_1:y:0 lstm_316/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_316/Shape_1Shapelstm_316/transpose:y:0*
T0*
_output_shapes
:h
lstm_316/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_316/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_316/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_316/strided_slice_1StridedSlicelstm_316/Shape_1:output:0'lstm_316/strided_slice_1/stack:output:0)lstm_316/strided_slice_1/stack_1:output:0)lstm_316/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_316/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_316/TensorArrayV2TensorListReserve-lstm_316/TensorArrayV2/element_shape:output:0!lstm_316/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_316/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_316/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_316/transpose:y:0Glstm_316/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_316/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_316/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_316/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_316/strided_slice_2StridedSlicelstm_316/transpose:y:0'lstm_316/strided_slice_2/stack:output:0)lstm_316/strided_slice_2/stack_1:output:0)lstm_316/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_316/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp4lstm_316_lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_316/lstm_cell_85/MatMulMatMul!lstm_316/strided_slice_2:output:03lstm_316/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp6lstm_316_lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_316/lstm_cell_85/MatMul_1MatMullstm_316/zeros:output:05lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_316/lstm_cell_85/addAddV2&lstm_316/lstm_cell_85/MatMul:product:0(lstm_316/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp5lstm_316_lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_316/lstm_cell_85/BiasAddBiasAddlstm_316/lstm_cell_85/add:z:04lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_316/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_316/lstm_cell_85/splitSplit.lstm_316/lstm_cell_85/split/split_dim:output:0&lstm_316/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_316/lstm_cell_85/SigmoidSigmoid$lstm_316/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/Sigmoid_1Sigmoid$lstm_316/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/mulMul#lstm_316/lstm_cell_85/Sigmoid_1:y:0lstm_316/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_316/lstm_cell_85/ReluRelu$lstm_316/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_316/lstm_cell_85/mul_1Mul!lstm_316/lstm_cell_85/Sigmoid:y:0(lstm_316/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/add_1AddV2lstm_316/lstm_cell_85/mul:z:0lstm_316/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_316/lstm_cell_85/Sigmoid_2Sigmoid$lstm_316/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_316/lstm_cell_85/Relu_1Relulstm_316/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_316/lstm_cell_85/mul_2Mul#lstm_316/lstm_cell_85/Sigmoid_2:y:0*lstm_316/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_316/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_316/TensorArrayV2_1TensorListReserve/lstm_316/TensorArrayV2_1/element_shape:output:0!lstm_316/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_316/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_316/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_316/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_316/whileWhile$lstm_316/while/loop_counter:output:0*lstm_316/while/maximum_iterations:output:0lstm_316/time:output:0!lstm_316/TensorArrayV2_1:handle:0lstm_316/zeros:output:0lstm_316/zeros_1:output:0!lstm_316/strided_slice_1:output:0@lstm_316/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_316_lstm_cell_85_matmul_readvariableop_resource6lstm_316_lstm_cell_85_matmul_1_readvariableop_resource5lstm_316_lstm_cell_85_biasadd_readvariableop_resource*
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
lstm_316_while_body_523644*&
condR
lstm_316_while_cond_523643*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_316/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_316/TensorArrayV2Stack/TensorListStackTensorListStacklstm_316/while:output:3Blstm_316/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_316/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_316/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_316/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_316/strided_slice_3StridedSlice4lstm_316/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_316/strided_slice_3/stack:output:0)lstm_316/strided_slice_3/stack_1:output:0)lstm_316/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_316/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_316/transpose_1	Transpose4lstm_316/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_316/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_316/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_317/ShapeShapelstm_316/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_317/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_317/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_317/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_317/strided_sliceStridedSlicelstm_317/Shape:output:0%lstm_317/strided_slice/stack:output:0'lstm_317/strided_slice/stack_1:output:0'lstm_317/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_317/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_317/zeros/packedPacklstm_317/strided_slice:output:0 lstm_317/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_317/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_317/zerosFilllstm_317/zeros/packed:output:0lstm_317/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_317/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_317/zeros_1/packedPacklstm_317/strided_slice:output:0"lstm_317/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_317/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_317/zeros_1Fill lstm_317/zeros_1/packed:output:0lstm_317/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_317/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_317/transpose	Transposelstm_316/transpose_1:y:0 lstm_317/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_317/Shape_1Shapelstm_317/transpose:y:0*
T0*
_output_shapes
:h
lstm_317/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_317/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_317/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_317/strided_slice_1StridedSlicelstm_317/Shape_1:output:0'lstm_317/strided_slice_1/stack:output:0)lstm_317/strided_slice_1/stack_1:output:0)lstm_317/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_317/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_317/TensorArrayV2TensorListReserve-lstm_317/TensorArrayV2/element_shape:output:0!lstm_317/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_317/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_317/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_317/transpose:y:0Glstm_317/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_317/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_317/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_317/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_317/strided_slice_2StridedSlicelstm_317/transpose:y:0'lstm_317/strided_slice_2/stack:output:0)lstm_317/strided_slice_2/stack_1:output:0)lstm_317/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_317/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp4lstm_317_lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_317/lstm_cell_86/MatMulMatMul!lstm_317/strided_slice_2:output:03lstm_317/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp6lstm_317_lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_317/lstm_cell_86/MatMul_1MatMullstm_317/zeros:output:05lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_317/lstm_cell_86/addAddV2&lstm_317/lstm_cell_86/MatMul:product:0(lstm_317/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp5lstm_317_lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_317/lstm_cell_86/BiasAddBiasAddlstm_317/lstm_cell_86/add:z:04lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_317/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_317/lstm_cell_86/splitSplit.lstm_317/lstm_cell_86/split/split_dim:output:0&lstm_317/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_317/lstm_cell_86/SigmoidSigmoid$lstm_317/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/Sigmoid_1Sigmoid$lstm_317/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/mulMul#lstm_317/lstm_cell_86/Sigmoid_1:y:0lstm_317/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_317/lstm_cell_86/ReluRelu$lstm_317/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_317/lstm_cell_86/mul_1Mul!lstm_317/lstm_cell_86/Sigmoid:y:0(lstm_317/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/add_1AddV2lstm_317/lstm_cell_86/mul:z:0lstm_317/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_317/lstm_cell_86/Sigmoid_2Sigmoid$lstm_317/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_317/lstm_cell_86/Relu_1Relulstm_317/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_317/lstm_cell_86/mul_2Mul#lstm_317/lstm_cell_86/Sigmoid_2:y:0*lstm_317/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_317/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_317/TensorArrayV2_1TensorListReserve/lstm_317/TensorArrayV2_1/element_shape:output:0!lstm_317/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_317/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_317/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_317/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_317/whileWhile$lstm_317/while/loop_counter:output:0*lstm_317/while/maximum_iterations:output:0lstm_317/time:output:0!lstm_317/TensorArrayV2_1:handle:0lstm_317/zeros:output:0lstm_317/zeros_1:output:0!lstm_317/strided_slice_1:output:0@lstm_317/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_317_lstm_cell_86_matmul_readvariableop_resource6lstm_317_lstm_cell_86_matmul_1_readvariableop_resource5lstm_317_lstm_cell_86_biasadd_readvariableop_resource*
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
lstm_317_while_body_523783*&
condR
lstm_317_while_cond_523782*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_317/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_317/TensorArrayV2Stack/TensorListStackTensorListStacklstm_317/while:output:3Blstm_317/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_317/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_317/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_317/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_317/strided_slice_3StridedSlice4lstm_317/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_317/strided_slice_3/stack:output:0)lstm_317/strided_slice_3/stack_1:output:0)lstm_317/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_317/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_317/transpose_1	Transpose4lstm_317/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_317/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_317/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_105/MatMulMatMul!lstm_317/strided_slice_3:output:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_105/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp-^lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp,^lstm_315/lstm_cell_84/MatMul/ReadVariableOp.^lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp^lstm_315/while-^lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp,^lstm_316/lstm_cell_85/MatMul/ReadVariableOp.^lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp^lstm_316/while-^lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp,^lstm_317/lstm_cell_86/MatMul/ReadVariableOp.^lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp^lstm_317/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp2\
,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp,lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp2Z
+lstm_315/lstm_cell_84/MatMul/ReadVariableOp+lstm_315/lstm_cell_84/MatMul/ReadVariableOp2^
-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp-lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp2 
lstm_315/whilelstm_315/while2\
,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp,lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp2Z
+lstm_316/lstm_cell_85/MatMul/ReadVariableOp+lstm_316/lstm_cell_85/MatMul/ReadVariableOp2^
-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp-lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp2 
lstm_316/whilelstm_316/while2\
,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp,lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp2Z
+lstm_317/lstm_cell_86/MatMul/ReadVariableOp+lstm_317/lstm_cell_86/MatMul/ReadVariableOp2^
-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp-lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp2 
lstm_317/whilelstm_317/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô

£
/__inference_sequential_105_layer_call_fn_523297
lstm_315_input
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
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllstm_315_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_105_layer_call_and_return_conditional_losses_523245o
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
_user_specified_namelstm_315_input
¤J

D__inference_lstm_315_layer_call_and_return_conditional_losses_523177

inputs>
+lstm_cell_84_matmul_readvariableop_resource:	@
-lstm_cell_84_matmul_1_readvariableop_resource:	d;
,lstm_cell_84_biasadd_readvariableop_resource:	
identity˘#lstm_cell_84/BiasAdd/ReadVariableOp˘"lstm_cell_84/MatMul/ReadVariableOp˘$lstm_cell_84/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_84/MatMul/ReadVariableOpReadVariableOp+lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_84/MatMulMatMulstrided_slice_2:output:0*lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_84/MatMul_1MatMulzeros:output:0,lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_84/addAddV2lstm_cell_84/MatMul:product:0lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_84/BiasAddBiasAddlstm_cell_84/add:z:0+lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_84/splitSplit%lstm_cell_84/split/split_dim:output:0lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_84/SigmoidSigmoidlstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_1Sigmoidlstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_84/mulMullstm_cell_84/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_84/ReluRelulstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_1Mullstm_cell_84/Sigmoid:y:0lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_84/add_1AddV2lstm_cell_84/mul:z:0lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_2Sigmoidlstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_84/Relu_1Relulstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_2Mullstm_cell_84/Sigmoid_2:y:0!lstm_cell_84/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_84_matmul_readvariableop_resource-lstm_cell_84_matmul_1_readvariableop_resource,lstm_cell_84_biasadd_readvariableop_resource*
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
while_body_523093*
condR
while_cond_523092*K
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
NoOpNoOp$^lstm_cell_84/BiasAdd/ReadVariableOp#^lstm_cell_84/MatMul/ReadVariableOp%^lstm_cell_84/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_84/BiasAdd/ReadVariableOp#lstm_cell_84/BiasAdd/ReadVariableOp2H
"lstm_cell_84/MatMul/ReadVariableOp"lstm_cell_84/MatMul/ReadVariableOp2L
$lstm_cell_84/MatMul_1/ReadVariableOp$lstm_cell_84/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

µ
)__inference_lstm_317_layer_call_fn_525554
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522173o
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
˙7
Ê
while_body_526064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_86_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_86_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_86_matmul_readvariableop_resource:2(E
3while_lstm_cell_86_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_86_biasadd_readvariableop_resource:(˘)while/lstm_cell_86/BiasAdd/ReadVariableOp˘(while/lstm_cell_86/MatMul/ReadVariableOp˘*while/lstm_cell_86/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_86/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_86/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_86/addAddV2#while/lstm_cell_86/MatMul:product:0%while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_86/BiasAddBiasAddwhile/lstm_cell_86/add:z:01while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_86/splitSplit+while/lstm_cell_86/split/split_dim:output:0#while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_86/SigmoidSigmoid!while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_1Sigmoid!while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mulMul while/lstm_cell_86/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_86/ReluRelu!while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_1Mulwhile/lstm_cell_86/Sigmoid:y:0%while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/add_1AddV2while/lstm_cell_86/mul:z:0while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_2Sigmoid!while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_86/Relu_1Reluwhile/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_2Mul while/lstm_cell_86/Sigmoid_2:y:0'while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_86/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_86/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_86/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_86/BiasAdd/ReadVariableOp)^while/lstm_cell_86/MatMul/ReadVariableOp+^while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_86_biasadd_readvariableop_resource4while_lstm_cell_86_biasadd_readvariableop_resource_0"l
3while_lstm_cell_86_matmul_1_readvariableop_resource5while_lstm_cell_86_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_86_matmul_readvariableop_resource3while_lstm_cell_86_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_86/BiasAdd/ReadVariableOp)while/lstm_cell_86/BiasAdd/ReadVariableOp2T
(while/lstm_cell_86/MatMul/ReadVariableOp(while/lstm_cell_86/MatMul/ReadVariableOp2X
*while/lstm_cell_86/MatMul_1/ReadVariableOp*while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_526265

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
µ
?
while_cond_524688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_524688___redundant_placeholder04
0while_while_cond_524688___redundant_placeholder14
0while_while_cond_524688___redundant_placeholder24
0while_while_cond_524688___redundant_placeholder3
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
µ
?
while_cond_522246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_522246___redundant_placeholder04
0while_while_cond_522246___redundant_placeholder14
0while_while_cond_522246___redundant_placeholder24
0while_while_cond_522246___redundant_placeholder3
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
µ
?
while_cond_522927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_522927___redundant_placeholder04
0while_while_cond_522927___redundant_placeholder14
0while_while_cond_522927___redundant_placeholder24
0while_while_cond_522927___redundant_placeholder3
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
Ï
÷
J__inference_sequential_105_layer_call_and_return_conditional_losses_523357
lstm_315_input"
lstm_315_523330:	"
lstm_315_523332:	d
lstm_315_523334:	"
lstm_316_523337:	dÈ"
lstm_316_523339:	2È
lstm_316_523341:	È!
lstm_317_523344:2(!
lstm_317_523346:
(
lstm_317_523348:("
dense_105_523351:

dense_105_523353:
identity˘!dense_105/StatefulPartitionedCall˘ lstm_315/StatefulPartitionedCall˘ lstm_316/StatefulPartitionedCall˘ lstm_317/StatefulPartitionedCall
 lstm_315/StatefulPartitionedCallStatefulPartitionedCalllstm_315_inputlstm_315_523330lstm_315_523332lstm_315_523334*
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_523177Ş
 lstm_316/StatefulPartitionedCallStatefulPartitionedCall)lstm_315/StatefulPartitionedCall:output:0lstm_316_523337lstm_316_523339lstm_316_523341*
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_523012Ĥ
 lstm_317/StatefulPartitionedCallStatefulPartitionedCall)lstm_316/StatefulPartitionedCall:output:0lstm_317_523344lstm_317_523346lstm_317_523348*
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_522847
!dense_105/StatefulPartitionedCallStatefulPartitionedCall)lstm_317/StatefulPartitionedCall:output:0dense_105_523351dense_105_523353*
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
GPU 2J 8 *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_522649y
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_105/StatefulPartitionedCall!^lstm_315/StatefulPartitionedCall!^lstm_316/StatefulPartitionedCall!^lstm_317/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2D
 lstm_315/StatefulPartitionedCall lstm_315/StatefulPartitionedCall2D
 lstm_316/StatefulPartitionedCall lstm_316/StatefulPartitionedCall2D
 lstm_317/StatefulPartitionedCall lstm_317/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_315_input
ë
ö
-__inference_lstm_cell_84_layer_call_fn_526201

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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521345o
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
while_cond_525634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525634___redundant_placeholder04
0while_while_cond_525634___redundant_placeholder14
0while_while_cond_525634___redundant_placeholder24
0while_while_cond_525634___redundant_placeholder3
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
È	
ö
E__inference_dense_105_layer_call_and_return_conditional_losses_526167

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
µ
?
while_cond_521212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_521212___redundant_placeholder04
0while_while_cond_521212___redundant_placeholder14
0while_while_cond_521212___redundant_placeholder24
0while_while_cond_521212___redundant_placeholder3
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
Ö
£
)sequential_105_lstm_315_while_cond_520763L
Hsequential_105_lstm_315_while_sequential_105_lstm_315_while_loop_counterR
Nsequential_105_lstm_315_while_sequential_105_lstm_315_while_maximum_iterations-
)sequential_105_lstm_315_while_placeholder/
+sequential_105_lstm_315_while_placeholder_1/
+sequential_105_lstm_315_while_placeholder_2/
+sequential_105_lstm_315_while_placeholder_3N
Jsequential_105_lstm_315_while_less_sequential_105_lstm_315_strided_slice_1d
`sequential_105_lstm_315_while_sequential_105_lstm_315_while_cond_520763___redundant_placeholder0d
`sequential_105_lstm_315_while_sequential_105_lstm_315_while_cond_520763___redundant_placeholder1d
`sequential_105_lstm_315_while_sequential_105_lstm_315_while_cond_520763___redundant_placeholder2d
`sequential_105_lstm_315_while_sequential_105_lstm_315_while_cond_520763___redundant_placeholder3*
&sequential_105_lstm_315_while_identity
Â
"sequential_105/lstm_315/while/LessLess)sequential_105_lstm_315_while_placeholderJsequential_105_lstm_315_while_less_sequential_105_lstm_315_strided_slice_1*
T0*
_output_shapes
: {
&sequential_105/lstm_315/while/IdentityIdentity&sequential_105/lstm_315/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_105_lstm_315_while_identity/sequential_105/lstm_315/while/Identity:output:0*(
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
ĥT
Ô
)sequential_105_lstm_315_while_body_520764L
Hsequential_105_lstm_315_while_sequential_105_lstm_315_while_loop_counterR
Nsequential_105_lstm_315_while_sequential_105_lstm_315_while_maximum_iterations-
)sequential_105_lstm_315_while_placeholder/
+sequential_105_lstm_315_while_placeholder_1/
+sequential_105_lstm_315_while_placeholder_2/
+sequential_105_lstm_315_while_placeholder_3K
Gsequential_105_lstm_315_while_sequential_105_lstm_315_strided_slice_1_0
sequential_105_lstm_315_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_315_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_105_lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0:	`
Msequential_105_lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0:	d[
Lsequential_105_lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0:	*
&sequential_105_lstm_315_while_identity,
(sequential_105_lstm_315_while_identity_1,
(sequential_105_lstm_315_while_identity_2,
(sequential_105_lstm_315_while_identity_3,
(sequential_105_lstm_315_while_identity_4,
(sequential_105_lstm_315_while_identity_5I
Esequential_105_lstm_315_while_sequential_105_lstm_315_strided_slice_1
sequential_105_lstm_315_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_315_tensorarrayunstack_tensorlistfromtensor\
Isequential_105_lstm_315_while_lstm_cell_84_matmul_readvariableop_resource:	^
Ksequential_105_lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource:	dY
Jsequential_105_lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource:	˘Asequential_105/lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp˘@sequential_105/lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp˘Bsequential_105/lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp 
Osequential_105/lstm_315/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Asequential_105/lstm_315/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_105_lstm_315_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_315_tensorarrayunstack_tensorlistfromtensor_0)sequential_105_lstm_315_while_placeholderXsequential_105/lstm_315/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Í
@sequential_105/lstm_315/while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOpKsequential_105_lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_105/lstm_315/while/lstm_cell_84/MatMulMatMulHsequential_105/lstm_315/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_105/lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
Bsequential_105/lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOpMsequential_105_lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0é
3sequential_105/lstm_315/while/lstm_cell_84/MatMul_1MatMul+sequential_105_lstm_315_while_placeholder_2Jsequential_105/lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĉ
.sequential_105/lstm_315/while/lstm_cell_84/addAddV2;sequential_105/lstm_315/while/lstm_cell_84/MatMul:product:0=sequential_105/lstm_315/while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
Asequential_105/lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOpLsequential_105_lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ï
2sequential_105/lstm_315/while/lstm_cell_84/BiasAddBiasAdd2sequential_105/lstm_315/while/lstm_cell_84/add:z:0Isequential_105/lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_105/lstm_315/while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_105/lstm_315/while/lstm_cell_84/splitSplitCsequential_105/lstm_315/while/lstm_cell_84/split/split_dim:output:0;sequential_105/lstm_315/while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitŞ
2sequential_105/lstm_315/while/lstm_cell_84/SigmoidSigmoid9sequential_105/lstm_315/while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_105/lstm_315/while/lstm_cell_84/Sigmoid_1Sigmoid9sequential_105/lstm_315/while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
.sequential_105/lstm_315/while/lstm_cell_84/mulMul8sequential_105/lstm_315/while/lstm_cell_84/Sigmoid_1:y:0+sequential_105_lstm_315_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¤
/sequential_105/lstm_315/while/lstm_cell_84/ReluRelu9sequential_105/lstm_315/while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dà
0sequential_105/lstm_315/while/lstm_cell_84/mul_1Mul6sequential_105/lstm_315/while/lstm_cell_84/Sigmoid:y:0=sequential_105/lstm_315/while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĠ
0sequential_105/lstm_315/while/lstm_cell_84/add_1AddV22sequential_105/lstm_315/while/lstm_cell_84/mul:z:04sequential_105/lstm_315/while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_105/lstm_315/while/lstm_cell_84/Sigmoid_2Sigmoid9sequential_105/lstm_315/while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
1sequential_105/lstm_315/while/lstm_cell_84/Relu_1Relu4sequential_105/lstm_315/while/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dä
0sequential_105/lstm_315/while/lstm_cell_84/mul_2Mul8sequential_105/lstm_315/while/lstm_cell_84/Sigmoid_2:y:0?sequential_105/lstm_315/while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
Bsequential_105/lstm_315/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_105_lstm_315_while_placeholder_1)sequential_105_lstm_315_while_placeholder4sequential_105/lstm_315/while/lstm_cell_84/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_105/lstm_315/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_105/lstm_315/while/addAddV2)sequential_105_lstm_315_while_placeholder,sequential_105/lstm_315/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_105/lstm_315/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_105/lstm_315/while/add_1AddV2Hsequential_105_lstm_315_while_sequential_105_lstm_315_while_loop_counter.sequential_105/lstm_315/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_105/lstm_315/while/IdentityIdentity'sequential_105/lstm_315/while/add_1:z:0#^sequential_105/lstm_315/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_105/lstm_315/while/Identity_1IdentityNsequential_105_lstm_315_while_sequential_105_lstm_315_while_maximum_iterations#^sequential_105/lstm_315/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_105/lstm_315/while/Identity_2Identity%sequential_105/lstm_315/while/add:z:0#^sequential_105/lstm_315/while/NoOp*
T0*
_output_shapes
: Î
(sequential_105/lstm_315/while/Identity_3IdentityRsequential_105/lstm_315/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_105/lstm_315/while/NoOp*
T0*
_output_shapes
: Á
(sequential_105/lstm_315/while/Identity_4Identity4sequential_105/lstm_315/while/lstm_cell_84/mul_2:z:0#^sequential_105/lstm_315/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÁ
(sequential_105/lstm_315/while/Identity_5Identity4sequential_105/lstm_315/while/lstm_cell_84/add_1:z:0#^sequential_105/lstm_315/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d°
"sequential_105/lstm_315/while/NoOpNoOpB^sequential_105/lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOpA^sequential_105/lstm_315/while/lstm_cell_84/MatMul/ReadVariableOpC^sequential_105/lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_105_lstm_315_while_identity/sequential_105/lstm_315/while/Identity:output:0"]
(sequential_105_lstm_315_while_identity_11sequential_105/lstm_315/while/Identity_1:output:0"]
(sequential_105_lstm_315_while_identity_21sequential_105/lstm_315/while/Identity_2:output:0"]
(sequential_105_lstm_315_while_identity_31sequential_105/lstm_315/while/Identity_3:output:0"]
(sequential_105_lstm_315_while_identity_41sequential_105/lstm_315/while/Identity_4:output:0"]
(sequential_105_lstm_315_while_identity_51sequential_105/lstm_315/while/Identity_5:output:0"
Jsequential_105_lstm_315_while_lstm_cell_84_biasadd_readvariableop_resourceLsequential_105_lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0"
Ksequential_105_lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resourceMsequential_105_lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0"
Isequential_105_lstm_315_while_lstm_cell_84_matmul_readvariableop_resourceKsequential_105_lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0"
Esequential_105_lstm_315_while_sequential_105_lstm_315_strided_slice_1Gsequential_105_lstm_315_while_sequential_105_lstm_315_strided_slice_1_0"
sequential_105_lstm_315_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_315_tensorarrayunstack_tensorlistfromtensorsequential_105_lstm_315_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_315_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
Asequential_105/lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOpAsequential_105/lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2
@sequential_105/lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp@sequential_105/lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp2
Bsequential_105/lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOpBsequential_105/lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_525389

inputs>
+lstm_cell_85_matmul_readvariableop_resource:	dÈ@
-lstm_cell_85_matmul_1_readvariableop_resource:	2È;
,lstm_cell_85_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_85/BiasAdd/ReadVariableOp˘"lstm_cell_85/MatMul/ReadVariableOp˘$lstm_cell_85/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_85/MatMul/ReadVariableOpReadVariableOp+lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0*lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_85/MatMul_1MatMulzeros:output:0,lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_85/addAddV2lstm_cell_85/MatMul:product:0lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_85/BiasAddBiasAddlstm_cell_85/add:z:0+lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_85/SigmoidSigmoidlstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_85/mulMullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_85/ReluRelulstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_1Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_85/add_1AddV2lstm_cell_85/mul:z:0lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_85/Relu_1Relulstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_2Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_85_matmul_readvariableop_resource-lstm_cell_85_matmul_1_readvariableop_resource,lstm_cell_85_biasadd_readvariableop_resource*
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
while_body_525305*
condR
while_cond_525304*K
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
NoOpNoOp$^lstm_cell_85/BiasAdd/ReadVariableOp#^lstm_cell_85/MatMul/ReadVariableOp%^lstm_cell_85/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_85/BiasAdd/ReadVariableOp#lstm_cell_85/BiasAdd/ReadVariableOp2H
"lstm_cell_85/MatMul/ReadVariableOp"lstm_cell_85/MatMul/ReadVariableOp2L
$lstm_cell_85/MatMul_1/ReadVariableOp$lstm_cell_85/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_521562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_521562___redundant_placeholder04
0while_while_cond_521562___redundant_placeholder14
0while_while_cond_521562___redundant_placeholder24
0while_while_cond_521562___redundant_placeholder3
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
while_cond_521753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_521753___redundant_placeholder04
0while_while_cond_521753___redundant_placeholder14
0while_while_cond_521753___redundant_placeholder24
0while_while_cond_521753___redundant_placeholder3
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
while_cond_525304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525304___redundant_placeholder04
0while_while_cond_525304___redundant_placeholder14
0while_while_cond_525304___redundant_placeholder24
0while_while_cond_525304___redundant_placeholder3
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

ĥ
)__inference_lstm_315_layer_call_fn_524344

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
D__inference_lstm_315_layer_call_and_return_conditional_losses_523177s
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
while_body_524403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_84_matmul_readvariableop_resource_0:	H
5while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_84_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_84_matmul_readvariableop_resource:	F
3while_lstm_cell_84_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_84_biasadd_readvariableop_resource:	˘)while/lstm_cell_84/BiasAdd/ReadVariableOp˘(while/lstm_cell_84/MatMul/ReadVariableOp˘*while/lstm_cell_84/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_84/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_84/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_84/addAddV2#while/lstm_cell_84/MatMul:product:0%while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_84/BiasAddBiasAddwhile/lstm_cell_84/add:z:01while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_84/splitSplit+while/lstm_cell_84/split/split_dim:output:0#while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_84/SigmoidSigmoid!while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_1Sigmoid!while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mulMul while/lstm_cell_84/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_84/ReluRelu!while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_1Mulwhile/lstm_cell_84/Sigmoid:y:0%while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/add_1AddV2while/lstm_cell_84/mul:z:0while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_2Sigmoid!while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_84/Relu_1Reluwhile/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_2Mul while/lstm_cell_84/Sigmoid_2:y:0'while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_84/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_84/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_84/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_84/BiasAdd/ReadVariableOp)^while/lstm_cell_84/MatMul/ReadVariableOp+^while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_84_biasadd_readvariableop_resource4while_lstm_cell_84_biasadd_readvariableop_resource_0"l
3while_lstm_cell_84_matmul_1_readvariableop_resource5while_lstm_cell_84_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_84_matmul_readvariableop_resource3while_lstm_cell_84_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_84/BiasAdd/ReadVariableOp)while/lstm_cell_84/BiasAdd/ReadVariableOp2T
(while/lstm_cell_84/MatMul/ReadVariableOp(while/lstm_cell_84/MatMul/ReadVariableOp2X
*while/lstm_cell_84/MatMul_1/ReadVariableOp*while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J

D__inference_lstm_317_layer_call_and_return_conditional_losses_522847

inputs=
+lstm_cell_86_matmul_readvariableop_resource:2(?
-lstm_cell_86_matmul_1_readvariableop_resource:
(:
,lstm_cell_86_biasadd_readvariableop_resource:(
identity˘#lstm_cell_86/BiasAdd/ReadVariableOp˘"lstm_cell_86/MatMul/ReadVariableOp˘$lstm_cell_86/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_86/MatMul/ReadVariableOpReadVariableOp+lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_86/MatMulMatMulstrided_slice_2:output:0*lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_86/MatMul_1MatMulzeros:output:0,lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_86/addAddV2lstm_cell_86/MatMul:product:0lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_86/BiasAddBiasAddlstm_cell_86/add:z:0+lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_86/splitSplit%lstm_cell_86/split/split_dim:output:0lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_86/SigmoidSigmoidlstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_1Sigmoidlstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_86/mulMullstm_cell_86/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_86/ReluRelulstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_1Mullstm_cell_86/Sigmoid:y:0lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_86/add_1AddV2lstm_cell_86/mul:z:0lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_2Sigmoidlstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_86/Relu_1Relulstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_2Mullstm_cell_86/Sigmoid_2:y:0!lstm_cell_86/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_86_matmul_readvariableop_resource-lstm_cell_86_matmul_1_readvariableop_resource,lstm_cell_86_biasadd_readvariableop_resource*
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
while_body_522763*
condR
while_cond_522762*K
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
NoOpNoOp$^lstm_cell_86/BiasAdd/ReadVariableOp#^lstm_cell_86/MatMul/ReadVariableOp%^lstm_cell_86/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_86/BiasAdd/ReadVariableOp#lstm_cell_86/BiasAdd/ReadVariableOp2H
"lstm_cell_86/MatMul/ReadVariableOp"lstm_cell_86/MatMul/ReadVariableOp2L
$lstm_cell_86/MatMul_1/ReadVariableOp$lstm_cell_86/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
È	
ö
E__inference_dense_105_layer_call_and_return_conditional_losses_522649

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
8

D__inference_lstm_317_layer_call_and_return_conditional_losses_521982

inputs%
lstm_cell_86_521900:2(%
lstm_cell_86_521902:
(!
lstm_cell_86_521904:(
identity˘$lstm_cell_86/StatefulPartitionedCall˘while;
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
$lstm_cell_86/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_86_521900lstm_cell_86_521902lstm_cell_86_521904*
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_521899n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_86_521900lstm_cell_86_521902lstm_cell_86_521904*
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
while_body_521913*
condR
while_cond_521912*K
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
NoOpNoOp%^lstm_cell_86/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_86/StatefulPartitionedCall$lstm_cell_86/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ğ
¸
)__inference_lstm_315_layer_call_fn_524311
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_521282|
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
íW
¤
__inference__traced_save_526604
file_prefix/
+savev2_dense_105_kernel_read_readvariableop-
)savev2_dense_105_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_315_lstm_cell_315_kernel_read_readvariableopF
Bsavev2_lstm_315_lstm_cell_315_recurrent_kernel_read_readvariableop:
6savev2_lstm_315_lstm_cell_315_bias_read_readvariableop<
8savev2_lstm_316_lstm_cell_316_kernel_read_readvariableopF
Bsavev2_lstm_316_lstm_cell_316_recurrent_kernel_read_readvariableop:
6savev2_lstm_316_lstm_cell_316_bias_read_readvariableop<
8savev2_lstm_317_lstm_cell_317_kernel_read_readvariableopF
Bsavev2_lstm_317_lstm_cell_317_recurrent_kernel_read_readvariableop:
6savev2_lstm_317_lstm_cell_317_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_105_kernel_m_read_readvariableop4
0savev2_adam_dense_105_bias_m_read_readvariableopC
?savev2_adam_lstm_315_lstm_cell_315_kernel_m_read_readvariableopM
Isavev2_adam_lstm_315_lstm_cell_315_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_315_lstm_cell_315_bias_m_read_readvariableopC
?savev2_adam_lstm_316_lstm_cell_316_kernel_m_read_readvariableopM
Isavev2_adam_lstm_316_lstm_cell_316_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_316_lstm_cell_316_bias_m_read_readvariableopC
?savev2_adam_lstm_317_lstm_cell_317_kernel_m_read_readvariableopM
Isavev2_adam_lstm_317_lstm_cell_317_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_317_lstm_cell_317_bias_m_read_readvariableop6
2savev2_adam_dense_105_kernel_v_read_readvariableop4
0savev2_adam_dense_105_bias_v_read_readvariableopC
?savev2_adam_lstm_315_lstm_cell_315_kernel_v_read_readvariableopM
Isavev2_adam_lstm_315_lstm_cell_315_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_315_lstm_cell_315_bias_v_read_readvariableopC
?savev2_adam_lstm_316_lstm_cell_316_kernel_v_read_readvariableopM
Isavev2_adam_lstm_316_lstm_cell_316_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_316_lstm_cell_316_bias_v_read_readvariableopC
?savev2_adam_lstm_317_lstm_cell_317_kernel_v_read_readvariableopM
Isavev2_adam_lstm_317_lstm_cell_317_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_317_lstm_cell_317_bias_v_read_readvariableop
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
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_105_kernel_read_readvariableop)savev2_dense_105_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_315_lstm_cell_315_kernel_read_readvariableopBsavev2_lstm_315_lstm_cell_315_recurrent_kernel_read_readvariableop6savev2_lstm_315_lstm_cell_315_bias_read_readvariableop8savev2_lstm_316_lstm_cell_316_kernel_read_readvariableopBsavev2_lstm_316_lstm_cell_316_recurrent_kernel_read_readvariableop6savev2_lstm_316_lstm_cell_316_bias_read_readvariableop8savev2_lstm_317_lstm_cell_317_kernel_read_readvariableopBsavev2_lstm_317_lstm_cell_317_recurrent_kernel_read_readvariableop6savev2_lstm_317_lstm_cell_317_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_105_kernel_m_read_readvariableop0savev2_adam_dense_105_bias_m_read_readvariableop?savev2_adam_lstm_315_lstm_cell_315_kernel_m_read_readvariableopIsavev2_adam_lstm_315_lstm_cell_315_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_315_lstm_cell_315_bias_m_read_readvariableop?savev2_adam_lstm_316_lstm_cell_316_kernel_m_read_readvariableopIsavev2_adam_lstm_316_lstm_cell_316_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_316_lstm_cell_316_bias_m_read_readvariableop?savev2_adam_lstm_317_lstm_cell_317_kernel_m_read_readvariableopIsavev2_adam_lstm_317_lstm_cell_317_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_317_lstm_cell_317_bias_m_read_readvariableop2savev2_adam_dense_105_kernel_v_read_readvariableop0savev2_adam_dense_105_bias_v_read_readvariableop?savev2_adam_lstm_315_lstm_cell_315_kernel_v_read_readvariableopIsavev2_adam_lstm_315_lstm_cell_315_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_315_lstm_cell_315_bias_v_read_readvariableop?savev2_adam_lstm_316_lstm_cell_316_kernel_v_read_readvariableopIsavev2_adam_lstm_316_lstm_cell_316_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_316_lstm_cell_316_bias_v_read_readvariableop?savev2_adam_lstm_317_lstm_cell_317_kernel_v_read_readvariableopIsavev2_adam_lstm_317_lstm_cell_317_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_317_lstm_cell_317_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ğ
¸
)__inference_lstm_315_layer_call_fn_524322
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_521473|
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
²

÷
lstm_316_while_cond_524070.
*lstm_316_while_lstm_316_while_loop_counter4
0lstm_316_while_lstm_316_while_maximum_iterations
lstm_316_while_placeholder 
lstm_316_while_placeholder_1 
lstm_316_while_placeholder_2 
lstm_316_while_placeholder_30
,lstm_316_while_less_lstm_316_strided_slice_1F
Blstm_316_while_lstm_316_while_cond_524070___redundant_placeholder0F
Blstm_316_while_lstm_316_while_cond_524070___redundant_placeholder1F
Blstm_316_while_lstm_316_while_cond_524070___redundant_placeholder2F
Blstm_316_while_lstm_316_while_cond_524070___redundant_placeholder3
lstm_316_while_identity

lstm_316/while/LessLesslstm_316_while_placeholder,lstm_316_while_less_lstm_316_strided_slice_1*
T0*
_output_shapes
: ]
lstm_316/while/IdentityIdentitylstm_316/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_316_while_identity lstm_316/while/Identity:output:0*(
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
while_body_525305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_85_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_85_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_85_biasadd_readvariableop_resource:	È˘)while/lstm_cell_85/BiasAdd/ReadVariableOp˘(while/lstm_cell_85/MatMul/ReadVariableOp˘*while/lstm_cell_85/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_85/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_85/addAddV2#while/lstm_cell_85/MatMul:product:0%while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_85/BiasAddBiasAddwhile/lstm_cell_85/add:z:01while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0#while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_85/SigmoidSigmoid!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_1Sigmoid!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mulMul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_85/ReluRelu!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_1Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/add_1AddV2while/lstm_cell_85/mul:z:0while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_85/Sigmoid_2Sigmoid!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_85/mul_2Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_85/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_85/BiasAdd/ReadVariableOp)^while/lstm_cell_85/MatMul/ReadVariableOp+^while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_85_biasadd_readvariableop_resource4while_lstm_cell_85_biasadd_readvariableop_resource_0"l
3while_lstm_cell_85_matmul_1_readvariableop_resource5while_lstm_cell_85_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_85_matmul_readvariableop_resource3while_lstm_cell_85_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_85/BiasAdd/ReadVariableOp)while/lstm_cell_85/BiasAdd/ReadVariableOp2T
(while/lstm_cell_85/MatMul/ReadVariableOp(while/lstm_cell_85/MatMul/ReadVariableOp2X
*while/lstm_cell_85/MatMul_1/ReadVariableOp*while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¤J

D__inference_lstm_316_layer_call_and_return_conditional_losses_525532

inputs>
+lstm_cell_85_matmul_readvariableop_resource:	dÈ@
-lstm_cell_85_matmul_1_readvariableop_resource:	2È;
,lstm_cell_85_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_85/BiasAdd/ReadVariableOp˘"lstm_cell_85/MatMul/ReadVariableOp˘$lstm_cell_85/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_85/MatMul/ReadVariableOpReadVariableOp+lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0*lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_85/MatMul_1MatMulzeros:output:0,lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_85/addAddV2lstm_cell_85/MatMul:product:0lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_85/BiasAddBiasAddlstm_cell_85/add:z:0+lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_85/SigmoidSigmoidlstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_85/mulMullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_85/ReluRelulstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_1Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_85/add_1AddV2lstm_cell_85/mul:z:0lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_85/Relu_1Relulstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_85/mul_2Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_85_matmul_readvariableop_resource-lstm_cell_85_matmul_1_readvariableop_resource,lstm_cell_85_biasadd_readvariableop_resource*
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
while_body_525448*
condR
while_cond_525447*K
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
NoOpNoOp$^lstm_cell_85/BiasAdd/ReadVariableOp#^lstm_cell_85/MatMul/ReadVariableOp%^lstm_cell_85/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_85/BiasAdd/ReadVariableOp#lstm_cell_85/BiasAdd/ReadVariableOp2H
"lstm_cell_85/MatMul/ReadVariableOp"lstm_cell_85/MatMul/ReadVariableOp2L
$lstm_cell_85/MatMul_1/ReadVariableOp$lstm_cell_85/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_522247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_84_matmul_readvariableop_resource_0:	H
5while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_84_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_84_matmul_readvariableop_resource:	F
3while_lstm_cell_84_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_84_biasadd_readvariableop_resource:	˘)while/lstm_cell_84/BiasAdd/ReadVariableOp˘(while/lstm_cell_84/MatMul/ReadVariableOp˘*while/lstm_cell_84/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_84/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_84/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_84/addAddV2#while/lstm_cell_84/MatMul:product:0%while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_84/BiasAddBiasAddwhile/lstm_cell_84/add:z:01while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_84/splitSplit+while/lstm_cell_84/split/split_dim:output:0#while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_84/SigmoidSigmoid!while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_1Sigmoid!while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mulMul while/lstm_cell_84/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_84/ReluRelu!while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_1Mulwhile/lstm_cell_84/Sigmoid:y:0%while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/add_1AddV2while/lstm_cell_84/mul:z:0while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_2Sigmoid!while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_84/Relu_1Reluwhile/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_2Mul while/lstm_cell_84/Sigmoid_2:y:0'while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_84/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_84/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_84/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_84/BiasAdd/ReadVariableOp)^while/lstm_cell_84/MatMul/ReadVariableOp+^while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_84_biasadd_readvariableop_resource4while_lstm_cell_84_biasadd_readvariableop_resource_0"l
3while_lstm_cell_84_matmul_1_readvariableop_resource5while_lstm_cell_84_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_84_matmul_readvariableop_resource3while_lstm_cell_84_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_84/BiasAdd/ReadVariableOp)while/lstm_cell_84/BiasAdd/ReadVariableOp2T
(while/lstm_cell_84/MatMul/ReadVariableOp(while/lstm_cell_84/MatMul/ReadVariableOp2X
*while/lstm_cell_84/MatMul_1/ReadVariableOp*while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_522396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_522396___redundant_placeholder04
0while_while_cond_522396___redundant_placeholder14
0while_while_cond_522396___redundant_placeholder24
0while_while_cond_522396___redundant_placeholder3
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
ĉ"
?
while_body_521213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_84_521237_0:	.
while_lstm_cell_84_521239_0:	d*
while_lstm_cell_84_521241_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_84_521237:	,
while_lstm_cell_84_521239:	d(
while_lstm_cell_84_521241:	˘*while/lstm_cell_84/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_84/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_84_521237_0while_lstm_cell_84_521239_0while_lstm_cell_84_521241_0*
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521199Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_84/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_84/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_84/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_84_521237while_lstm_cell_84_521237_0"8
while_lstm_cell_84_521239while_lstm_cell_84_521239_0"8
while_lstm_cell_84_521241while_lstm_cell_84_521241_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_84/StatefulPartitionedCall*while/lstm_cell_84/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
è
ó
-__inference_lstm_cell_86_layer_call_fn_526397

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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_522045o
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
ĉ"
?
while_body_521563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_85_521587_0:	dÈ.
while_lstm_cell_85_521589_0:	2È*
while_lstm_cell_85_521591_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_85_521587:	dÈ,
while_lstm_cell_85_521589:	2È(
while_lstm_cell_85_521591:	È˘*while/lstm_cell_85/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_85_521587_0while_lstm_cell_85_521589_0while_lstm_cell_85_521591_0*
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521549Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_85/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_85/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_85/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_85/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_85_521587while_lstm_cell_85_521587_0"8
while_lstm_cell_85_521589while_lstm_cell_85_521589_0"8
while_lstm_cell_85_521591while_lstm_cell_85_521591_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_85/StatefulPartitionedCall*while/lstm_cell_85/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ġ

H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521549

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
µ
?
while_cond_522546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_522546___redundant_placeholder04
0while_while_cond_522546___redundant_placeholder14
0while_while_cond_522546___redundant_placeholder24
0while_while_cond_522546___redundant_placeholder3
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
ÔJ

D__inference_lstm_317_layer_call_and_return_conditional_losses_525719
inputs_0=
+lstm_cell_86_matmul_readvariableop_resource:2(?
-lstm_cell_86_matmul_1_readvariableop_resource:
(:
,lstm_cell_86_biasadd_readvariableop_resource:(
identity˘#lstm_cell_86/BiasAdd/ReadVariableOp˘"lstm_cell_86/MatMul/ReadVariableOp˘$lstm_cell_86/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_86/MatMul/ReadVariableOpReadVariableOp+lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_86/MatMulMatMulstrided_slice_2:output:0*lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_86/MatMul_1MatMulzeros:output:0,lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_86/addAddV2lstm_cell_86/MatMul:product:0lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_86/BiasAddBiasAddlstm_cell_86/add:z:0+lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_86/splitSplit%lstm_cell_86/split/split_dim:output:0lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_86/SigmoidSigmoidlstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_1Sigmoidlstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_86/mulMullstm_cell_86/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_86/ReluRelulstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_1Mullstm_cell_86/Sigmoid:y:0lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_86/add_1AddV2lstm_cell_86/mul:z:0lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_2Sigmoidlstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_86/Relu_1Relulstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_2Mullstm_cell_86/Sigmoid_2:y:0!lstm_cell_86/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_86_matmul_readvariableop_resource-lstm_cell_86_matmul_1_readvariableop_resource,lstm_cell_86_biasadd_readvariableop_resource*
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
while_body_525635*
condR
while_cond_525634*K
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
NoOpNoOp$^lstm_cell_86/BiasAdd/ReadVariableOp#^lstm_cell_86/MatMul/ReadVariableOp%^lstm_cell_86/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_86/BiasAdd/ReadVariableOp#lstm_cell_86/BiasAdd/ReadVariableOp2H
"lstm_cell_86/MatMul/ReadVariableOp"lstm_cell_86/MatMul/ReadVariableOp2L
$lstm_cell_86/MatMul_1/ReadVariableOp$lstm_cell_86/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0

ĥ
)__inference_lstm_316_layer_call_fn_524949

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
D__inference_lstm_316_layer_call_and_return_conditional_losses_522481s
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
âJ

D__inference_lstm_315_layer_call_and_return_conditional_losses_524487
inputs_0>
+lstm_cell_84_matmul_readvariableop_resource:	@
-lstm_cell_84_matmul_1_readvariableop_resource:	d;
,lstm_cell_84_biasadd_readvariableop_resource:	
identity˘#lstm_cell_84/BiasAdd/ReadVariableOp˘"lstm_cell_84/MatMul/ReadVariableOp˘$lstm_cell_84/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_84/MatMul/ReadVariableOpReadVariableOp+lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_84/MatMulMatMulstrided_slice_2:output:0*lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_84/MatMul_1MatMulzeros:output:0,lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_84/addAddV2lstm_cell_84/MatMul:product:0lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_84/BiasAddBiasAddlstm_cell_84/add:z:0+lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_84/splitSplit%lstm_cell_84/split/split_dim:output:0lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_84/SigmoidSigmoidlstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_1Sigmoidlstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_84/mulMullstm_cell_84/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_84/ReluRelulstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_1Mullstm_cell_84/Sigmoid:y:0lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_84/add_1AddV2lstm_cell_84/mul:z:0lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_2Sigmoidlstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_84/Relu_1Relulstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_2Mullstm_cell_84/Sigmoid_2:y:0!lstm_cell_84/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_84_matmul_readvariableop_resource-lstm_cell_84_matmul_1_readvariableop_resource,lstm_cell_84_biasadd_readvariableop_resource*
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
while_body_524403*
condR
while_cond_524402*K
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
NoOpNoOp$^lstm_cell_84/BiasAdd/ReadVariableOp#^lstm_cell_84/MatMul/ReadVariableOp%^lstm_cell_84/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_84/BiasAdd/ReadVariableOp#lstm_cell_84/BiasAdd/ReadVariableOp2H
"lstm_cell_84/MatMul/ReadVariableOp"lstm_cell_84/MatMul/ReadVariableOp2L
$lstm_cell_84/MatMul_1/ReadVariableOp$lstm_cell_84/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_521912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_521912___redundant_placeholder04
0while_while_cond_521912___redundant_placeholder14
0while_while_cond_521912___redundant_placeholder24
0while_while_cond_521912___redundant_placeholder3
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
ĥT
Ô
)sequential_105_lstm_316_while_body_520903L
Hsequential_105_lstm_316_while_sequential_105_lstm_316_while_loop_counterR
Nsequential_105_lstm_316_while_sequential_105_lstm_316_while_maximum_iterations-
)sequential_105_lstm_316_while_placeholder/
+sequential_105_lstm_316_while_placeholder_1/
+sequential_105_lstm_316_while_placeholder_2/
+sequential_105_lstm_316_while_placeholder_3K
Gsequential_105_lstm_316_while_sequential_105_lstm_316_strided_slice_1_0
sequential_105_lstm_316_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_316_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_105_lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0:	dÈ`
Msequential_105_lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0:	2È[
Lsequential_105_lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0:	È*
&sequential_105_lstm_316_while_identity,
(sequential_105_lstm_316_while_identity_1,
(sequential_105_lstm_316_while_identity_2,
(sequential_105_lstm_316_while_identity_3,
(sequential_105_lstm_316_while_identity_4,
(sequential_105_lstm_316_while_identity_5I
Esequential_105_lstm_316_while_sequential_105_lstm_316_strided_slice_1
sequential_105_lstm_316_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_316_tensorarrayunstack_tensorlistfromtensor\
Isequential_105_lstm_316_while_lstm_cell_85_matmul_readvariableop_resource:	dÈ^
Ksequential_105_lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈY
Jsequential_105_lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource:	È˘Asequential_105/lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp˘@sequential_105/lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp˘Bsequential_105/lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp 
Osequential_105/lstm_316/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
Asequential_105/lstm_316/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_105_lstm_316_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_316_tensorarrayunstack_tensorlistfromtensor_0)sequential_105_lstm_316_while_placeholderXsequential_105/lstm_316/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Í
@sequential_105/lstm_316/while/lstm_cell_85/MatMul/ReadVariableOpReadVariableOpKsequential_105_lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0
1sequential_105/lstm_316/while/lstm_cell_85/MatMulMatMulHsequential_105/lstm_316/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_105/lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
Bsequential_105/lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOpMsequential_105_lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0é
3sequential_105/lstm_316/while/lstm_cell_85/MatMul_1MatMul+sequential_105_lstm_316_while_placeholder_2Jsequential_105/lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èĉ
.sequential_105/lstm_316/while/lstm_cell_85/addAddV2;sequential_105/lstm_316/while/lstm_cell_85/MatMul:product:0=sequential_105/lstm_316/while/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈË
Asequential_105/lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOpLsequential_105_lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ï
2sequential_105/lstm_316/while/lstm_cell_85/BiasAddBiasAdd2sequential_105/lstm_316/while/lstm_cell_85/add:z:0Isequential_105/lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È|
:sequential_105/lstm_316/while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_105/lstm_316/while/lstm_cell_85/splitSplitCsequential_105/lstm_316/while/lstm_cell_85/split/split_dim:output:0;sequential_105/lstm_316/while/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitŞ
2sequential_105/lstm_316/while/lstm_cell_85/SigmoidSigmoid9sequential_105/lstm_316/while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_105/lstm_316/while/lstm_cell_85/Sigmoid_1Sigmoid9sequential_105/lstm_316/while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
.sequential_105/lstm_316/while/lstm_cell_85/mulMul8sequential_105/lstm_316/while/lstm_cell_85/Sigmoid_1:y:0+sequential_105_lstm_316_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¤
/sequential_105/lstm_316/while/lstm_cell_85/ReluRelu9sequential_105/lstm_316/while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2à
0sequential_105/lstm_316/while/lstm_cell_85/mul_1Mul6sequential_105/lstm_316/while/lstm_cell_85/Sigmoid:y:0=sequential_105/lstm_316/while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ġ
0sequential_105/lstm_316/while/lstm_cell_85/add_1AddV22sequential_105/lstm_316/while/lstm_cell_85/mul:z:04sequential_105/lstm_316/while/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_105/lstm_316/while/lstm_cell_85/Sigmoid_2Sigmoid9sequential_105/lstm_316/while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
1sequential_105/lstm_316/while/lstm_cell_85/Relu_1Relu4sequential_105/lstm_316/while/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ä
0sequential_105/lstm_316/while/lstm_cell_85/mul_2Mul8sequential_105/lstm_316/while/lstm_cell_85/Sigmoid_2:y:0?sequential_105/lstm_316/while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
Bsequential_105/lstm_316/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_105_lstm_316_while_placeholder_1)sequential_105_lstm_316_while_placeholder4sequential_105/lstm_316/while/lstm_cell_85/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_105/lstm_316/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_105/lstm_316/while/addAddV2)sequential_105_lstm_316_while_placeholder,sequential_105/lstm_316/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_105/lstm_316/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_105/lstm_316/while/add_1AddV2Hsequential_105_lstm_316_while_sequential_105_lstm_316_while_loop_counter.sequential_105/lstm_316/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_105/lstm_316/while/IdentityIdentity'sequential_105/lstm_316/while/add_1:z:0#^sequential_105/lstm_316/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_105/lstm_316/while/Identity_1IdentityNsequential_105_lstm_316_while_sequential_105_lstm_316_while_maximum_iterations#^sequential_105/lstm_316/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_105/lstm_316/while/Identity_2Identity%sequential_105/lstm_316/while/add:z:0#^sequential_105/lstm_316/while/NoOp*
T0*
_output_shapes
: Î
(sequential_105/lstm_316/while/Identity_3IdentityRsequential_105/lstm_316/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_105/lstm_316/while/NoOp*
T0*
_output_shapes
: Á
(sequential_105/lstm_316/while/Identity_4Identity4sequential_105/lstm_316/while/lstm_cell_85/mul_2:z:0#^sequential_105/lstm_316/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Á
(sequential_105/lstm_316/while/Identity_5Identity4sequential_105/lstm_316/while/lstm_cell_85/add_1:z:0#^sequential_105/lstm_316/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2°
"sequential_105/lstm_316/while/NoOpNoOpB^sequential_105/lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOpA^sequential_105/lstm_316/while/lstm_cell_85/MatMul/ReadVariableOpC^sequential_105/lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_105_lstm_316_while_identity/sequential_105/lstm_316/while/Identity:output:0"]
(sequential_105_lstm_316_while_identity_11sequential_105/lstm_316/while/Identity_1:output:0"]
(sequential_105_lstm_316_while_identity_21sequential_105/lstm_316/while/Identity_2:output:0"]
(sequential_105_lstm_316_while_identity_31sequential_105/lstm_316/while/Identity_3:output:0"]
(sequential_105_lstm_316_while_identity_41sequential_105/lstm_316/while/Identity_4:output:0"]
(sequential_105_lstm_316_while_identity_51sequential_105/lstm_316/while/Identity_5:output:0"
Jsequential_105_lstm_316_while_lstm_cell_85_biasadd_readvariableop_resourceLsequential_105_lstm_316_while_lstm_cell_85_biasadd_readvariableop_resource_0"
Ksequential_105_lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resourceMsequential_105_lstm_316_while_lstm_cell_85_matmul_1_readvariableop_resource_0"
Isequential_105_lstm_316_while_lstm_cell_85_matmul_readvariableop_resourceKsequential_105_lstm_316_while_lstm_cell_85_matmul_readvariableop_resource_0"
Esequential_105_lstm_316_while_sequential_105_lstm_316_strided_slice_1Gsequential_105_lstm_316_while_sequential_105_lstm_316_strided_slice_1_0"
sequential_105_lstm_316_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_316_tensorarrayunstack_tensorlistfromtensorsequential_105_lstm_316_while_tensorarrayv2read_tensorlistgetitem_sequential_105_lstm_316_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
Asequential_105/lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOpAsequential_105/lstm_316/while/lstm_cell_85/BiasAdd/ReadVariableOp2
@sequential_105/lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp@sequential_105/lstm_316/while/lstm_cell_85/MatMul/ReadVariableOp2
Bsequential_105/lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOpBsequential_105/lstm_316/while/lstm_cell_85/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ŭ

H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_526233

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
²

÷
lstm_315_while_cond_523504.
*lstm_315_while_lstm_315_while_loop_counter4
0lstm_315_while_lstm_315_while_maximum_iterations
lstm_315_while_placeholder 
lstm_315_while_placeholder_1 
lstm_315_while_placeholder_2 
lstm_315_while_placeholder_30
,lstm_315_while_less_lstm_315_strided_slice_1F
Blstm_315_while_lstm_315_while_cond_523504___redundant_placeholder0F
Blstm_315_while_lstm_315_while_cond_523504___redundant_placeholder1F
Blstm_315_while_lstm_315_while_cond_523504___redundant_placeholder2F
Blstm_315_while_lstm_315_while_cond_523504___redundant_placeholder3
lstm_315_while_identity

lstm_315/while/LessLesslstm_315_while_placeholder,lstm_315_while_less_lstm_315_strided_slice_1*
T0*
_output_shapes
: ]
lstm_315/while/IdentityIdentitylstm_315/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_315_while_identity lstm_315/while/Identity:output:0*(
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
while_body_522763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_86_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_86_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_86_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_86_matmul_readvariableop_resource:2(E
3while_lstm_cell_86_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_86_biasadd_readvariableop_resource:(˘)while/lstm_cell_86/BiasAdd/ReadVariableOp˘(while/lstm_cell_86/MatMul/ReadVariableOp˘*while/lstm_cell_86/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_86/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_86_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_86/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_86_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_86/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_86/addAddV2#while/lstm_cell_86/MatMul:product:0%while/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_86_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_86/BiasAddBiasAddwhile/lstm_cell_86/add:z:01while/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_86/splitSplit+while/lstm_cell_86/split/split_dim:output:0#while/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_86/SigmoidSigmoid!while/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_1Sigmoid!while/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mulMul while/lstm_cell_86/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_86/ReluRelu!while/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_1Mulwhile/lstm_cell_86/Sigmoid:y:0%while/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/add_1AddV2while/lstm_cell_86/mul:z:0while/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_86/Sigmoid_2Sigmoid!while/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_86/Relu_1Reluwhile/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_86/mul_2Mul while/lstm_cell_86/Sigmoid_2:y:0'while/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_86/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_86/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_86/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_86/BiasAdd/ReadVariableOp)^while/lstm_cell_86/MatMul/ReadVariableOp+^while/lstm_cell_86/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_86_biasadd_readvariableop_resource4while_lstm_cell_86_biasadd_readvariableop_resource_0"l
3while_lstm_cell_86_matmul_1_readvariableop_resource5while_lstm_cell_86_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_86_matmul_readvariableop_resource3while_lstm_cell_86_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_86/BiasAdd/ReadVariableOp)while/lstm_cell_86/BiasAdd/ReadVariableOp2T
(while/lstm_cell_86/MatMul/ReadVariableOp(while/lstm_cell_86/MatMul/ReadVariableOp2X
*while/lstm_cell_86/MatMul_1/ReadVariableOp*while/lstm_cell_86/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_523092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_523092___redundant_placeholder04
0while_while_cond_523092___redundant_placeholder14
0while_while_cond_523092___redundant_placeholder24
0while_while_cond_523092___redundant_placeholder3
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
ĉ"
?
while_body_521404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_84_521428_0:	.
while_lstm_cell_84_521430_0:	d*
while_lstm_cell_84_521432_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_84_521428:	,
while_lstm_cell_84_521430:	d(
while_lstm_cell_84_521432:	˘*while/lstm_cell_84/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_84/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_84_521428_0while_lstm_cell_84_521430_0while_lstm_cell_84_521432_0*
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521345Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_84/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_84/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_84/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_84_521428while_lstm_cell_84_521428_0"8
while_lstm_cell_84_521430while_lstm_cell_84_521430_0"8
while_lstm_cell_84_521432while_lstm_cell_84_521432_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_84/StatefulPartitionedCall*while/lstm_cell_84/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
à"
Ŭ
while_body_522104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_86_522128_0:2(-
while_lstm_cell_86_522130_0:
()
while_lstm_cell_86_522132_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_86_522128:2(+
while_lstm_cell_86_522130:
('
while_lstm_cell_86_522132:(˘*while/lstm_cell_86/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_86/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_86_522128_0while_lstm_cell_86_522130_0while_lstm_cell_86_522132_0*
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_522045Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_86/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_86/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_86/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_86_522128while_lstm_cell_86_522128_0"8
while_lstm_cell_86_522130while_lstm_cell_86_522130_0"8
while_lstm_cell_86_522132while_lstm_cell_86_522132_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_86/StatefulPartitionedCall*while/lstm_cell_86/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_523093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_84_matmul_readvariableop_resource_0:	H
5while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_84_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_84_matmul_readvariableop_resource:	F
3while_lstm_cell_84_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_84_biasadd_readvariableop_resource:	˘)while/lstm_cell_84/BiasAdd/ReadVariableOp˘(while/lstm_cell_84/MatMul/ReadVariableOp˘*while/lstm_cell_84/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_84/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_84/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_84/addAddV2#while/lstm_cell_84/MatMul:product:0%while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_84/BiasAddBiasAddwhile/lstm_cell_84/add:z:01while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_84/splitSplit+while/lstm_cell_84/split/split_dim:output:0#while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_84/SigmoidSigmoid!while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_1Sigmoid!while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mulMul while/lstm_cell_84/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_84/ReluRelu!while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_1Mulwhile/lstm_cell_84/Sigmoid:y:0%while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/add_1AddV2while/lstm_cell_84/mul:z:0while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_84/Sigmoid_2Sigmoid!while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_84/Relu_1Reluwhile/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_84/mul_2Mul while/lstm_cell_84/Sigmoid_2:y:0'while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_84/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_84/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_84/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_84/BiasAdd/ReadVariableOp)^while/lstm_cell_84/MatMul/ReadVariableOp+^while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_84_biasadd_readvariableop_resource4while_lstm_cell_84_biasadd_readvariableop_resource_0"l
3while_lstm_cell_84_matmul_1_readvariableop_resource5while_lstm_cell_84_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_84_matmul_readvariableop_resource3while_lstm_cell_84_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_84/BiasAdd/ReadVariableOp)while/lstm_cell_84/BiasAdd/ReadVariableOp2T
(while/lstm_cell_84/MatMul/ReadVariableOp(while/lstm_cell_84/MatMul/ReadVariableOp2X
*while/lstm_cell_84/MatMul_1/ReadVariableOp*while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_524916

inputs>
+lstm_cell_84_matmul_readvariableop_resource:	@
-lstm_cell_84_matmul_1_readvariableop_resource:	d;
,lstm_cell_84_biasadd_readvariableop_resource:	
identity˘#lstm_cell_84/BiasAdd/ReadVariableOp˘"lstm_cell_84/MatMul/ReadVariableOp˘$lstm_cell_84/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_84/MatMul/ReadVariableOpReadVariableOp+lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_84/MatMulMatMulstrided_slice_2:output:0*lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_84/MatMul_1MatMulzeros:output:0,lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_84/addAddV2lstm_cell_84/MatMul:product:0lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_84/BiasAddBiasAddlstm_cell_84/add:z:0+lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_84/splitSplit%lstm_cell_84/split/split_dim:output:0lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_84/SigmoidSigmoidlstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_1Sigmoidlstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_84/mulMullstm_cell_84/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_84/ReluRelulstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_1Mullstm_cell_84/Sigmoid:y:0lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_84/add_1AddV2lstm_cell_84/mul:z:0lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_84/Sigmoid_2Sigmoidlstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_84/Relu_1Relulstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_84/mul_2Mullstm_cell_84/Sigmoid_2:y:0!lstm_cell_84/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_84_matmul_readvariableop_resource-lstm_cell_84_matmul_1_readvariableop_resource,lstm_cell_84_biasadd_readvariableop_resource*
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
while_body_524832*
condR
while_cond_524831*K
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
NoOpNoOp$^lstm_cell_84/BiasAdd/ReadVariableOp#^lstm_cell_84/MatMul/ReadVariableOp%^lstm_cell_84/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_84/BiasAdd/ReadVariableOp#lstm_cell_84/BiasAdd/ReadVariableOp2H
"lstm_cell_84/MatMul/ReadVariableOp"lstm_cell_84/MatMul/ReadVariableOp2L
$lstm_cell_84/MatMul_1/ReadVariableOp$lstm_cell_84/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_84_layer_call_fn_526184

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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_521199o
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
²

÷
lstm_315_while_cond_523931.
*lstm_315_while_lstm_315_while_loop_counter4
0lstm_315_while_lstm_315_while_maximum_iterations
lstm_315_while_placeholder 
lstm_315_while_placeholder_1 
lstm_315_while_placeholder_2 
lstm_315_while_placeholder_30
,lstm_315_while_less_lstm_315_strided_slice_1F
Blstm_315_while_lstm_315_while_cond_523931___redundant_placeholder0F
Blstm_315_while_lstm_315_while_cond_523931___redundant_placeholder1F
Blstm_315_while_lstm_315_while_cond_523931___redundant_placeholder2F
Blstm_315_while_lstm_315_while_cond_523931___redundant_placeholder3
lstm_315_while_identity

lstm_315/while/LessLesslstm_315_while_placeholder,lstm_315_while_less_lstm_315_strided_slice_1*
T0*
_output_shapes
: ]
lstm_315/while/IdentityIdentitylstm_315/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_315_while_identity lstm_315/while/Identity:output:0*(
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

ĥ
)__inference_lstm_316_layer_call_fn_524960

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
D__inference_lstm_316_layer_call_and_return_conditional_losses_523012s
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
è
ó
-__inference_lstm_cell_86_layer_call_fn_526380

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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_521899o
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_526148

inputs=
+lstm_cell_86_matmul_readvariableop_resource:2(?
-lstm_cell_86_matmul_1_readvariableop_resource:
(:
,lstm_cell_86_biasadd_readvariableop_resource:(
identity˘#lstm_cell_86/BiasAdd/ReadVariableOp˘"lstm_cell_86/MatMul/ReadVariableOp˘$lstm_cell_86/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_86/MatMul/ReadVariableOpReadVariableOp+lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_86/MatMulMatMulstrided_slice_2:output:0*lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_86/MatMul_1MatMulzeros:output:0,lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_86/addAddV2lstm_cell_86/MatMul:product:0lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_86/BiasAddBiasAddlstm_cell_86/add:z:0+lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_86/splitSplit%lstm_cell_86/split/split_dim:output:0lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_86/SigmoidSigmoidlstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_1Sigmoidlstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_86/mulMullstm_cell_86/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_86/ReluRelulstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_1Mullstm_cell_86/Sigmoid:y:0lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_86/add_1AddV2lstm_cell_86/mul:z:0lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_86/Sigmoid_2Sigmoidlstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_86/Relu_1Relulstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_86/mul_2Mullstm_cell_86/Sigmoid_2:y:0!lstm_cell_86/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_86_matmul_readvariableop_resource-lstm_cell_86_matmul_1_readvariableop_resource,lstm_cell_86_biasadd_readvariableop_resource*
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
while_body_526064*
condR
while_cond_526063*K
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
NoOpNoOp$^lstm_cell_86/BiasAdd/ReadVariableOp#^lstm_cell_86/MatMul/ReadVariableOp%^lstm_cell_86/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_86/BiasAdd/ReadVariableOp#lstm_cell_86/BiasAdd/ReadVariableOp2H
"lstm_cell_86/MatMul/ReadVariableOp"lstm_cell_86/MatMul/ReadVariableOp2L
$lstm_cell_86/MatMul_1/ReadVariableOp$lstm_cell_86/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_524402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_524402___redundant_placeholder04
0while_while_cond_524402___redundant_placeholder14
0while_while_cond_524402___redundant_placeholder24
0while_while_cond_524402___redundant_placeholder3
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
ş
Ŝ
!__inference__wrapped_model_521132
lstm_315_inputV
Csequential_105_lstm_315_lstm_cell_84_matmul_readvariableop_resource:	X
Esequential_105_lstm_315_lstm_cell_84_matmul_1_readvariableop_resource:	dS
Dsequential_105_lstm_315_lstm_cell_84_biasadd_readvariableop_resource:	V
Csequential_105_lstm_316_lstm_cell_85_matmul_readvariableop_resource:	dÈX
Esequential_105_lstm_316_lstm_cell_85_matmul_1_readvariableop_resource:	2ÈS
Dsequential_105_lstm_316_lstm_cell_85_biasadd_readvariableop_resource:	ÈU
Csequential_105_lstm_317_lstm_cell_86_matmul_readvariableop_resource:2(W
Esequential_105_lstm_317_lstm_cell_86_matmul_1_readvariableop_resource:
(R
Dsequential_105_lstm_317_lstm_cell_86_biasadd_readvariableop_resource:(I
7sequential_105_dense_105_matmul_readvariableop_resource:
F
8sequential_105_dense_105_biasadd_readvariableop_resource:
identity˘/sequential_105/dense_105/BiasAdd/ReadVariableOp˘.sequential_105/dense_105/MatMul/ReadVariableOp˘;sequential_105/lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp˘:sequential_105/lstm_315/lstm_cell_84/MatMul/ReadVariableOp˘<sequential_105/lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp˘sequential_105/lstm_315/while˘;sequential_105/lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp˘:sequential_105/lstm_316/lstm_cell_85/MatMul/ReadVariableOp˘<sequential_105/lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp˘sequential_105/lstm_316/while˘;sequential_105/lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp˘:sequential_105/lstm_317/lstm_cell_86/MatMul/ReadVariableOp˘<sequential_105/lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp˘sequential_105/lstm_317/while[
sequential_105/lstm_315/ShapeShapelstm_315_input*
T0*
_output_shapes
:u
+sequential_105/lstm_315/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_105/lstm_315/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_105/lstm_315/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_105/lstm_315/strided_sliceStridedSlice&sequential_105/lstm_315/Shape:output:04sequential_105/lstm_315/strided_slice/stack:output:06sequential_105/lstm_315/strided_slice/stack_1:output:06sequential_105/lstm_315/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_105/lstm_315/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dğ
$sequential_105/lstm_315/zeros/packedPack.sequential_105/lstm_315/strided_slice:output:0/sequential_105/lstm_315/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_105/lstm_315/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_105/lstm_315/zerosFill-sequential_105/lstm_315/zeros/packed:output:0,sequential_105/lstm_315/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dj
(sequential_105/lstm_315/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dż
&sequential_105/lstm_315/zeros_1/packedPack.sequential_105/lstm_315/strided_slice:output:01sequential_105/lstm_315/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_105/lstm_315/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_105/lstm_315/zeros_1Fill/sequential_105/lstm_315/zeros_1/packed:output:0.sequential_105/lstm_315/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
&sequential_105/lstm_315/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_105/lstm_315/transpose	Transposelstm_315_input/sequential_105/lstm_315/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sequential_105/lstm_315/Shape_1Shape%sequential_105/lstm_315/transpose:y:0*
T0*
_output_shapes
:w
-sequential_105/lstm_315/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_315/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_105/lstm_315/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_105/lstm_315/strided_slice_1StridedSlice(sequential_105/lstm_315/Shape_1:output:06sequential_105/lstm_315/strided_slice_1/stack:output:08sequential_105/lstm_315/strided_slice_1/stack_1:output:08sequential_105/lstm_315/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_105/lstm_315/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_105/lstm_315/TensorArrayV2TensorListReserve<sequential_105/lstm_315/TensorArrayV2/element_shape:output:00sequential_105/lstm_315/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_105/lstm_315/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¨
?sequential_105/lstm_315/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_105/lstm_315/transpose:y:0Vsequential_105/lstm_315/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_105/lstm_315/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_315/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_105/lstm_315/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_105/lstm_315/strided_slice_2StridedSlice%sequential_105/lstm_315/transpose:y:06sequential_105/lstm_315/strided_slice_2/stack:output:08sequential_105/lstm_315/strided_slice_2/stack_1:output:08sequential_105/lstm_315/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskż
:sequential_105/lstm_315/lstm_cell_84/MatMul/ReadVariableOpReadVariableOpCsequential_105_lstm_315_lstm_cell_84_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ŝ
+sequential_105/lstm_315/lstm_cell_84/MatMulMatMul0sequential_105/lstm_315/strided_slice_2:output:0Bsequential_105/lstm_315/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
<sequential_105/lstm_315/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOpEsequential_105_lstm_315_lstm_cell_84_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ĝ
-sequential_105/lstm_315/lstm_cell_84/MatMul_1MatMul&sequential_105/lstm_315/zeros:output:0Dsequential_105/lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ô
(sequential_105/lstm_315/lstm_cell_84/addAddV25sequential_105/lstm_315/lstm_cell_84/MatMul:product:07sequential_105/lstm_315/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙½
;sequential_105/lstm_315/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOpDsequential_105_lstm_315_lstm_cell_84_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŭ
,sequential_105/lstm_315/lstm_cell_84/BiasAddBiasAdd,sequential_105/lstm_315/lstm_cell_84/add:z:0Csequential_105/lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
4sequential_105/lstm_315/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_105/lstm_315/lstm_cell_84/splitSplit=sequential_105/lstm_315/lstm_cell_84/split/split_dim:output:05sequential_105/lstm_315/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
,sequential_105/lstm_315/lstm_cell_84/SigmoidSigmoid3sequential_105/lstm_315/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_105/lstm_315/lstm_cell_84/Sigmoid_1Sigmoid3sequential_105/lstm_315/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dż
(sequential_105/lstm_315/lstm_cell_84/mulMul2sequential_105/lstm_315/lstm_cell_84/Sigmoid_1:y:0(sequential_105/lstm_315/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
)sequential_105/lstm_315/lstm_cell_84/ReluRelu3sequential_105/lstm_315/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
*sequential_105/lstm_315/lstm_cell_84/mul_1Mul0sequential_105/lstm_315/lstm_cell_84/Sigmoid:y:07sequential_105/lstm_315/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
*sequential_105/lstm_315/lstm_cell_84/add_1AddV2,sequential_105/lstm_315/lstm_cell_84/mul:z:0.sequential_105/lstm_315/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_105/lstm_315/lstm_cell_84/Sigmoid_2Sigmoid3sequential_105/lstm_315/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
+sequential_105/lstm_315/lstm_cell_84/Relu_1Relu.sequential_105/lstm_315/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
*sequential_105/lstm_315/lstm_cell_84/mul_2Mul2sequential_105/lstm_315/lstm_cell_84/Sigmoid_2:y:09sequential_105/lstm_315/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
5sequential_105/lstm_315/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
'sequential_105/lstm_315/TensorArrayV2_1TensorListReserve>sequential_105/lstm_315/TensorArrayV2_1/element_shape:output:00sequential_105/lstm_315/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_105/lstm_315/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_105/lstm_315/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_105/lstm_315/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_105/lstm_315/whileWhile3sequential_105/lstm_315/while/loop_counter:output:09sequential_105/lstm_315/while/maximum_iterations:output:0%sequential_105/lstm_315/time:output:00sequential_105/lstm_315/TensorArrayV2_1:handle:0&sequential_105/lstm_315/zeros:output:0(sequential_105/lstm_315/zeros_1:output:00sequential_105/lstm_315/strided_slice_1:output:0Osequential_105/lstm_315/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_105_lstm_315_lstm_cell_84_matmul_readvariableop_resourceEsequential_105_lstm_315_lstm_cell_84_matmul_1_readvariableop_resourceDsequential_105_lstm_315_lstm_cell_84_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_105_lstm_315_while_body_520764*5
cond-R+
)sequential_105_lstm_315_while_cond_520763*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Hsequential_105/lstm_315/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
:sequential_105/lstm_315/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_105/lstm_315/while:output:3Qsequential_105/lstm_315/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
-sequential_105/lstm_315/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_105/lstm_315/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_315/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_105/lstm_315/strided_slice_3StridedSliceCsequential_105/lstm_315/TensorArrayV2Stack/TensorListStack:tensor:06sequential_105/lstm_315/strided_slice_3/stack:output:08sequential_105/lstm_315/strided_slice_3/stack_1:output:08sequential_105/lstm_315/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask}
(sequential_105/lstm_315/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_105/lstm_315/transpose_1	TransposeCsequential_105/lstm_315/TensorArrayV2Stack/TensorListStack:tensor:01sequential_105/lstm_315/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ds
sequential_105/lstm_315/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_105/lstm_316/ShapeShape'sequential_105/lstm_315/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_105/lstm_316/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_105/lstm_316/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_105/lstm_316/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_105/lstm_316/strided_sliceStridedSlice&sequential_105/lstm_316/Shape:output:04sequential_105/lstm_316/strided_slice/stack:output:06sequential_105/lstm_316/strided_slice/stack_1:output:06sequential_105/lstm_316/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_105/lstm_316/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ğ
$sequential_105/lstm_316/zeros/packedPack.sequential_105/lstm_316/strided_slice:output:0/sequential_105/lstm_316/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_105/lstm_316/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_105/lstm_316/zerosFill-sequential_105/lstm_316/zeros/packed:output:0,sequential_105/lstm_316/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2j
(sequential_105/lstm_316/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ż
&sequential_105/lstm_316/zeros_1/packedPack.sequential_105/lstm_316/strided_slice:output:01sequential_105/lstm_316/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_105/lstm_316/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_105/lstm_316/zeros_1Fill/sequential_105/lstm_316/zeros_1/packed:output:0.sequential_105/lstm_316/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
&sequential_105/lstm_316/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_105/lstm_316/transpose	Transpose'sequential_105/lstm_315/transpose_1:y:0/sequential_105/lstm_316/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
sequential_105/lstm_316/Shape_1Shape%sequential_105/lstm_316/transpose:y:0*
T0*
_output_shapes
:w
-sequential_105/lstm_316/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_316/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_105/lstm_316/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_105/lstm_316/strided_slice_1StridedSlice(sequential_105/lstm_316/Shape_1:output:06sequential_105/lstm_316/strided_slice_1/stack:output:08sequential_105/lstm_316/strided_slice_1/stack_1:output:08sequential_105/lstm_316/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_105/lstm_316/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_105/lstm_316/TensorArrayV2TensorListReserve<sequential_105/lstm_316/TensorArrayV2/element_shape:output:00sequential_105/lstm_316/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_105/lstm_316/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¨
?sequential_105/lstm_316/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_105/lstm_316/transpose:y:0Vsequential_105/lstm_316/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_105/lstm_316/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_316/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_105/lstm_316/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_105/lstm_316/strided_slice_2StridedSlice%sequential_105/lstm_316/transpose:y:06sequential_105/lstm_316/strided_slice_2/stack:output:08sequential_105/lstm_316/strided_slice_2/stack_1:output:08sequential_105/lstm_316/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskż
:sequential_105/lstm_316/lstm_cell_85/MatMul/ReadVariableOpReadVariableOpCsequential_105_lstm_316_lstm_cell_85_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ŝ
+sequential_105/lstm_316/lstm_cell_85/MatMulMatMul0sequential_105/lstm_316/strided_slice_2:output:0Bsequential_105/lstm_316/lstm_cell_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
<sequential_105/lstm_316/lstm_cell_85/MatMul_1/ReadVariableOpReadVariableOpEsequential_105_lstm_316_lstm_cell_85_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ĝ
-sequential_105/lstm_316/lstm_cell_85/MatMul_1MatMul&sequential_105/lstm_316/zeros:output:0Dsequential_105/lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÔ
(sequential_105/lstm_316/lstm_cell_85/addAddV25sequential_105/lstm_316/lstm_cell_85/MatMul:product:07sequential_105/lstm_316/lstm_cell_85/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È½
;sequential_105/lstm_316/lstm_cell_85/BiasAdd/ReadVariableOpReadVariableOpDsequential_105_lstm_316_lstm_cell_85_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ŭ
,sequential_105/lstm_316/lstm_cell_85/BiasAddBiasAdd,sequential_105/lstm_316/lstm_cell_85/add:z:0Csequential_105/lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èv
4sequential_105/lstm_316/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_105/lstm_316/lstm_cell_85/splitSplit=sequential_105/lstm_316/lstm_cell_85/split/split_dim:output:05sequential_105/lstm_316/lstm_cell_85/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
,sequential_105/lstm_316/lstm_cell_85/SigmoidSigmoid3sequential_105/lstm_316/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_105/lstm_316/lstm_cell_85/Sigmoid_1Sigmoid3sequential_105/lstm_316/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ż
(sequential_105/lstm_316/lstm_cell_85/mulMul2sequential_105/lstm_316/lstm_cell_85/Sigmoid_1:y:0(sequential_105/lstm_316/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
)sequential_105/lstm_316/lstm_cell_85/ReluRelu3sequential_105/lstm_316/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
*sequential_105/lstm_316/lstm_cell_85/mul_1Mul0sequential_105/lstm_316/lstm_cell_85/Sigmoid:y:07sequential_105/lstm_316/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
*sequential_105/lstm_316/lstm_cell_85/add_1AddV2,sequential_105/lstm_316/lstm_cell_85/mul:z:0.sequential_105/lstm_316/lstm_cell_85/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_105/lstm_316/lstm_cell_85/Sigmoid_2Sigmoid3sequential_105/lstm_316/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
+sequential_105/lstm_316/lstm_cell_85/Relu_1Relu.sequential_105/lstm_316/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
*sequential_105/lstm_316/lstm_cell_85/mul_2Mul2sequential_105/lstm_316/lstm_cell_85/Sigmoid_2:y:09sequential_105/lstm_316/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
5sequential_105/lstm_316/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
'sequential_105/lstm_316/TensorArrayV2_1TensorListReserve>sequential_105/lstm_316/TensorArrayV2_1/element_shape:output:00sequential_105/lstm_316/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_105/lstm_316/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_105/lstm_316/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_105/lstm_316/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_105/lstm_316/whileWhile3sequential_105/lstm_316/while/loop_counter:output:09sequential_105/lstm_316/while/maximum_iterations:output:0%sequential_105/lstm_316/time:output:00sequential_105/lstm_316/TensorArrayV2_1:handle:0&sequential_105/lstm_316/zeros:output:0(sequential_105/lstm_316/zeros_1:output:00sequential_105/lstm_316/strided_slice_1:output:0Osequential_105/lstm_316/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_105_lstm_316_lstm_cell_85_matmul_readvariableop_resourceEsequential_105_lstm_316_lstm_cell_85_matmul_1_readvariableop_resourceDsequential_105_lstm_316_lstm_cell_85_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_105_lstm_316_while_body_520903*5
cond-R+
)sequential_105_lstm_316_while_cond_520902*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Hsequential_105/lstm_316/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
:sequential_105/lstm_316/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_105/lstm_316/while:output:3Qsequential_105/lstm_316/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
-sequential_105/lstm_316/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_105/lstm_316/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_316/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_105/lstm_316/strided_slice_3StridedSliceCsequential_105/lstm_316/TensorArrayV2Stack/TensorListStack:tensor:06sequential_105/lstm_316/strided_slice_3/stack:output:08sequential_105/lstm_316/strided_slice_3/stack_1:output:08sequential_105/lstm_316/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask}
(sequential_105/lstm_316/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_105/lstm_316/transpose_1	TransposeCsequential_105/lstm_316/TensorArrayV2Stack/TensorListStack:tensor:01sequential_105/lstm_316/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
sequential_105/lstm_316/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_105/lstm_317/ShapeShape'sequential_105/lstm_316/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_105/lstm_317/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_105/lstm_317/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_105/lstm_317/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_105/lstm_317/strided_sliceStridedSlice&sequential_105/lstm_317/Shape:output:04sequential_105/lstm_317/strided_slice/stack:output:06sequential_105/lstm_317/strided_slice/stack_1:output:06sequential_105/lstm_317/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_105/lstm_317/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ğ
$sequential_105/lstm_317/zeros/packedPack.sequential_105/lstm_317/strided_slice:output:0/sequential_105/lstm_317/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_105/lstm_317/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_105/lstm_317/zerosFill-sequential_105/lstm_317/zeros/packed:output:0,sequential_105/lstm_317/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(sequential_105/lstm_317/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ż
&sequential_105/lstm_317/zeros_1/packedPack.sequential_105/lstm_317/strided_slice:output:01sequential_105/lstm_317/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_105/lstm_317/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_105/lstm_317/zeros_1Fill/sequential_105/lstm_317/zeros_1/packed:output:0.sequential_105/lstm_317/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
&sequential_105/lstm_317/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_105/lstm_317/transpose	Transpose'sequential_105/lstm_316/transpose_1:y:0/sequential_105/lstm_317/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
sequential_105/lstm_317/Shape_1Shape%sequential_105/lstm_317/transpose:y:0*
T0*
_output_shapes
:w
-sequential_105/lstm_317/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_317/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_105/lstm_317/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_105/lstm_317/strided_slice_1StridedSlice(sequential_105/lstm_317/Shape_1:output:06sequential_105/lstm_317/strided_slice_1/stack:output:08sequential_105/lstm_317/strided_slice_1/stack_1:output:08sequential_105/lstm_317/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_105/lstm_317/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_105/lstm_317/TensorArrayV2TensorListReserve<sequential_105/lstm_317/TensorArrayV2/element_shape:output:00sequential_105/lstm_317/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_105/lstm_317/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¨
?sequential_105/lstm_317/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_105/lstm_317/transpose:y:0Vsequential_105/lstm_317/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_105/lstm_317/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_317/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_105/lstm_317/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_105/lstm_317/strided_slice_2StridedSlice%sequential_105/lstm_317/transpose:y:06sequential_105/lstm_317/strided_slice_2/stack:output:08sequential_105/lstm_317/strided_slice_2/stack_1:output:08sequential_105/lstm_317/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask?
:sequential_105/lstm_317/lstm_cell_86/MatMul/ReadVariableOpReadVariableOpCsequential_105_lstm_317_lstm_cell_86_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ŭ
+sequential_105/lstm_317/lstm_cell_86/MatMulMatMul0sequential_105/lstm_317/strided_slice_2:output:0Bsequential_105/lstm_317/lstm_cell_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Â
<sequential_105/lstm_317/lstm_cell_86/MatMul_1/ReadVariableOpReadVariableOpEsequential_105_lstm_317_lstm_cell_86_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0×
-sequential_105/lstm_317/lstm_cell_86/MatMul_1MatMul&sequential_105/lstm_317/zeros:output:0Dsequential_105/lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ó
(sequential_105/lstm_317/lstm_cell_86/addAddV25sequential_105/lstm_317/lstm_cell_86/MatMul:product:07sequential_105/lstm_317/lstm_cell_86/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ĵ
;sequential_105/lstm_317/lstm_cell_86/BiasAdd/ReadVariableOpReadVariableOpDsequential_105_lstm_317_lstm_cell_86_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ü
,sequential_105/lstm_317/lstm_cell_86/BiasAddBiasAdd,sequential_105/lstm_317/lstm_cell_86/add:z:0Csequential_105/lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(v
4sequential_105/lstm_317/lstm_cell_86/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_105/lstm_317/lstm_cell_86/splitSplit=sequential_105/lstm_317/lstm_cell_86/split/split_dim:output:05sequential_105/lstm_317/lstm_cell_86/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
,sequential_105/lstm_317/lstm_cell_86/SigmoidSigmoid3sequential_105/lstm_317/lstm_cell_86/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_105/lstm_317/lstm_cell_86/Sigmoid_1Sigmoid3sequential_105/lstm_317/lstm_cell_86/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
(sequential_105/lstm_317/lstm_cell_86/mulMul2sequential_105/lstm_317/lstm_cell_86/Sigmoid_1:y:0(sequential_105/lstm_317/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)sequential_105/lstm_317/lstm_cell_86/ReluRelu3sequential_105/lstm_317/lstm_cell_86/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
*sequential_105/lstm_317/lstm_cell_86/mul_1Mul0sequential_105/lstm_317/lstm_cell_86/Sigmoid:y:07sequential_105/lstm_317/lstm_cell_86/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
*sequential_105/lstm_317/lstm_cell_86/add_1AddV2,sequential_105/lstm_317/lstm_cell_86/mul:z:0.sequential_105/lstm_317/lstm_cell_86/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_105/lstm_317/lstm_cell_86/Sigmoid_2Sigmoid3sequential_105/lstm_317/lstm_cell_86/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_105/lstm_317/lstm_cell_86/Relu_1Relu.sequential_105/lstm_317/lstm_cell_86/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
*sequential_105/lstm_317/lstm_cell_86/mul_2Mul2sequential_105/lstm_317/lstm_cell_86/Sigmoid_2:y:09sequential_105/lstm_317/lstm_cell_86/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5sequential_105/lstm_317/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
'sequential_105/lstm_317/TensorArrayV2_1TensorListReserve>sequential_105/lstm_317/TensorArrayV2_1/element_shape:output:00sequential_105/lstm_317/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_105/lstm_317/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_105/lstm_317/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_105/lstm_317/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_105/lstm_317/whileWhile3sequential_105/lstm_317/while/loop_counter:output:09sequential_105/lstm_317/while/maximum_iterations:output:0%sequential_105/lstm_317/time:output:00sequential_105/lstm_317/TensorArrayV2_1:handle:0&sequential_105/lstm_317/zeros:output:0(sequential_105/lstm_317/zeros_1:output:00sequential_105/lstm_317/strided_slice_1:output:0Osequential_105/lstm_317/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_105_lstm_317_lstm_cell_86_matmul_readvariableop_resourceEsequential_105_lstm_317_lstm_cell_86_matmul_1_readvariableop_resourceDsequential_105_lstm_317_lstm_cell_86_biasadd_readvariableop_resource*
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
_stateful_parallelism( *5
body-R+
)sequential_105_lstm_317_while_body_521042*5
cond-R+
)sequential_105_lstm_317_while_cond_521041*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Hsequential_105/lstm_317/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
:sequential_105/lstm_317/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_105/lstm_317/while:output:3Qsequential_105/lstm_317/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
-sequential_105/lstm_317/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_105/lstm_317/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_105/lstm_317/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_105/lstm_317/strided_slice_3StridedSliceCsequential_105/lstm_317/TensorArrayV2Stack/TensorListStack:tensor:06sequential_105/lstm_317/strided_slice_3/stack:output:08sequential_105/lstm_317/strided_slice_3/stack_1:output:08sequential_105/lstm_317/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask}
(sequential_105/lstm_317/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_105/lstm_317/transpose_1	TransposeCsequential_105/lstm_317/TensorArrayV2Stack/TensorListStack:tensor:01sequential_105/lstm_317/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
sequential_105/lstm_317/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ĥ
.sequential_105/dense_105/MatMul/ReadVariableOpReadVariableOp7sequential_105_dense_105_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ċ
sequential_105/dense_105/MatMulMatMul0sequential_105/lstm_317/strided_slice_3:output:06sequential_105/dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/sequential_105/dense_105/BiasAdd/ReadVariableOpReadVariableOp8sequential_105_dense_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_105/dense_105/BiasAddBiasAdd)sequential_105/dense_105/MatMul:product:07sequential_105/dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity)sequential_105/dense_105/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙·
NoOpNoOp0^sequential_105/dense_105/BiasAdd/ReadVariableOp/^sequential_105/dense_105/MatMul/ReadVariableOp<^sequential_105/lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp;^sequential_105/lstm_315/lstm_cell_84/MatMul/ReadVariableOp=^sequential_105/lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp^sequential_105/lstm_315/while<^sequential_105/lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp;^sequential_105/lstm_316/lstm_cell_85/MatMul/ReadVariableOp=^sequential_105/lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp^sequential_105/lstm_316/while<^sequential_105/lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp;^sequential_105/lstm_317/lstm_cell_86/MatMul/ReadVariableOp=^sequential_105/lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp^sequential_105/lstm_317/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2b
/sequential_105/dense_105/BiasAdd/ReadVariableOp/sequential_105/dense_105/BiasAdd/ReadVariableOp2`
.sequential_105/dense_105/MatMul/ReadVariableOp.sequential_105/dense_105/MatMul/ReadVariableOp2z
;sequential_105/lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp;sequential_105/lstm_315/lstm_cell_84/BiasAdd/ReadVariableOp2x
:sequential_105/lstm_315/lstm_cell_84/MatMul/ReadVariableOp:sequential_105/lstm_315/lstm_cell_84/MatMul/ReadVariableOp2|
<sequential_105/lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp<sequential_105/lstm_315/lstm_cell_84/MatMul_1/ReadVariableOp2>
sequential_105/lstm_315/whilesequential_105/lstm_315/while2z
;sequential_105/lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp;sequential_105/lstm_316/lstm_cell_85/BiasAdd/ReadVariableOp2x
:sequential_105/lstm_316/lstm_cell_85/MatMul/ReadVariableOp:sequential_105/lstm_316/lstm_cell_85/MatMul/ReadVariableOp2|
<sequential_105/lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp<sequential_105/lstm_316/lstm_cell_85/MatMul_1/ReadVariableOp2>
sequential_105/lstm_316/whilesequential_105/lstm_316/while2z
;sequential_105/lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp;sequential_105/lstm_317/lstm_cell_86/BiasAdd/ReadVariableOp2x
:sequential_105/lstm_317/lstm_cell_86/MatMul/ReadVariableOp:sequential_105/lstm_317/lstm_cell_86/MatMul/ReadVariableOp2|
<sequential_105/lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp<sequential_105/lstm_317/lstm_cell_86/MatMul_1/ReadVariableOp2>
sequential_105/lstm_317/whilesequential_105/lstm_317/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_315_input
ÛB
?

lstm_315_while_body_523505.
*lstm_315_while_lstm_315_while_loop_counter4
0lstm_315_while_lstm_315_while_maximum_iterations
lstm_315_while_placeholder 
lstm_315_while_placeholder_1 
lstm_315_while_placeholder_2 
lstm_315_while_placeholder_3-
)lstm_315_while_lstm_315_strided_slice_1_0i
elstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0:	Q
>lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0:	dL
=lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0:	
lstm_315_while_identity
lstm_315_while_identity_1
lstm_315_while_identity_2
lstm_315_while_identity_3
lstm_315_while_identity_4
lstm_315_while_identity_5+
'lstm_315_while_lstm_315_strided_slice_1g
clstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensorM
:lstm_315_while_lstm_cell_84_matmul_readvariableop_resource:	O
<lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource:	dJ
;lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource:	˘2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp˘1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp˘3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp
@lstm_315/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_315/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensor_0lstm_315_while_placeholderIlstm_315/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOpReadVariableOp<lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_315/while/lstm_cell_84/MatMulMatMul9lstm_315/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOpReadVariableOp>lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_315/while/lstm_cell_84/MatMul_1MatMullstm_315_while_placeholder_2;lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_315/while/lstm_cell_84/addAddV2,lstm_315/while/lstm_cell_84/MatMul:product:0.lstm_315/while/lstm_cell_84/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOpReadVariableOp=lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_315/while/lstm_cell_84/BiasAddBiasAdd#lstm_315/while/lstm_cell_84/add:z:0:lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_315/while/lstm_cell_84/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_315/while/lstm_cell_84/splitSplit4lstm_315/while/lstm_cell_84/split/split_dim:output:0,lstm_315/while/lstm_cell_84/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_315/while/lstm_cell_84/SigmoidSigmoid*lstm_315/while/lstm_cell_84/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_315/while/lstm_cell_84/Sigmoid_1Sigmoid*lstm_315/while/lstm_cell_84/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_315/while/lstm_cell_84/mulMul)lstm_315/while/lstm_cell_84/Sigmoid_1:y:0lstm_315_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_315/while/lstm_cell_84/ReluRelu*lstm_315/while/lstm_cell_84/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_315/while/lstm_cell_84/mul_1Mul'lstm_315/while/lstm_cell_84/Sigmoid:y:0.lstm_315/while/lstm_cell_84/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_315/while/lstm_cell_84/add_1AddV2#lstm_315/while/lstm_cell_84/mul:z:0%lstm_315/while/lstm_cell_84/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_315/while/lstm_cell_84/Sigmoid_2Sigmoid*lstm_315/while/lstm_cell_84/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_315/while/lstm_cell_84/Relu_1Relu%lstm_315/while/lstm_cell_84/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_315/while/lstm_cell_84/mul_2Mul)lstm_315/while/lstm_cell_84/Sigmoid_2:y:00lstm_315/while/lstm_cell_84/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_315/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_315_while_placeholder_1lstm_315_while_placeholder%lstm_315/while/lstm_cell_84/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_315/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_315/while/addAddV2lstm_315_while_placeholderlstm_315/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_315/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_315/while/add_1AddV2*lstm_315_while_lstm_315_while_loop_counterlstm_315/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_315/while/IdentityIdentitylstm_315/while/add_1:z:0^lstm_315/while/NoOp*
T0*
_output_shapes
: 
lstm_315/while/Identity_1Identity0lstm_315_while_lstm_315_while_maximum_iterations^lstm_315/while/NoOp*
T0*
_output_shapes
: t
lstm_315/while/Identity_2Identitylstm_315/while/add:z:0^lstm_315/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_315/while/Identity_3IdentityClstm_315/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_315/while/NoOp*
T0*
_output_shapes
: 
lstm_315/while/Identity_4Identity%lstm_315/while/lstm_cell_84/mul_2:z:0^lstm_315/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_315/while/Identity_5Identity%lstm_315/while/lstm_cell_84/add_1:z:0^lstm_315/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_315/while/NoOpNoOp3^lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2^lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp4^lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_315_while_identity lstm_315/while/Identity:output:0"?
lstm_315_while_identity_1"lstm_315/while/Identity_1:output:0"?
lstm_315_while_identity_2"lstm_315/while/Identity_2:output:0"?
lstm_315_while_identity_3"lstm_315/while/Identity_3:output:0"?
lstm_315_while_identity_4"lstm_315/while/Identity_4:output:0"?
lstm_315_while_identity_5"lstm_315/while/Identity_5:output:0"T
'lstm_315_while_lstm_315_strided_slice_1)lstm_315_while_lstm_315_strided_slice_1_0"|
;lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource=lstm_315_while_lstm_cell_84_biasadd_readvariableop_resource_0"~
<lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource>lstm_315_while_lstm_cell_84_matmul_1_readvariableop_resource_0"z
:lstm_315_while_lstm_cell_84_matmul_readvariableop_resource<lstm_315_while_lstm_cell_84_matmul_readvariableop_resource_0"Ì
clstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensorelstm_315_while_tensorarrayv2read_tensorlistgetitem_lstm_315_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2lstm_315/while/lstm_cell_84/BiasAdd/ReadVariableOp2f
1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp1lstm_315/while/lstm_cell_84/MatMul/ReadVariableOp2j
3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp3lstm_315/while/lstm_cell_84/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_525447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_525447___redundant_placeholder04
0while_while_cond_525447___redundant_placeholder14
0while_while_cond_525447___redundant_placeholder24
0while_while_cond_525447___redundant_placeholder3
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
-__inference_lstm_cell_85_layer_call_fn_526282

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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_521549o
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
states/1"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaultŞ
M
lstm_315_input;
 serving_default_lstm_315_input:0˙˙˙˙˙˙˙˙˙=
	dense_1050
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ñ
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
": 
2dense_105/kernel
:2dense_105/bias
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
0:.	2lstm_315/lstm_cell_315/kernel
::8	d2'lstm_315/lstm_cell_315/recurrent_kernel
*:(2lstm_315/lstm_cell_315/bias
0:.	dÈ2lstm_316/lstm_cell_316/kernel
::8	2È2'lstm_316/lstm_cell_316/recurrent_kernel
*:(È2lstm_316/lstm_cell_316/bias
/:-2(2lstm_317/lstm_cell_317/kernel
9:7
(2'lstm_317/lstm_cell_317/recurrent_kernel
):'(2lstm_317/lstm_cell_317/bias
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
':%
2Adam/dense_105/kernel/m
!:2Adam/dense_105/bias/m
5:3	2$Adam/lstm_315/lstm_cell_315/kernel/m
?:=	d2.Adam/lstm_315/lstm_cell_315/recurrent_kernel/m
/:-2"Adam/lstm_315/lstm_cell_315/bias/m
5:3	dÈ2$Adam/lstm_316/lstm_cell_316/kernel/m
?:=	2È2.Adam/lstm_316/lstm_cell_316/recurrent_kernel/m
/:-È2"Adam/lstm_316/lstm_cell_316/bias/m
4:22(2$Adam/lstm_317/lstm_cell_317/kernel/m
>:<
(2.Adam/lstm_317/lstm_cell_317/recurrent_kernel/m
.:,(2"Adam/lstm_317/lstm_cell_317/bias/m
':%
2Adam/dense_105/kernel/v
!:2Adam/dense_105/bias/v
5:3	2$Adam/lstm_315/lstm_cell_315/kernel/v
?:=	d2.Adam/lstm_315/lstm_cell_315/recurrent_kernel/v
/:-2"Adam/lstm_315/lstm_cell_315/bias/v
5:3	dÈ2$Adam/lstm_316/lstm_cell_316/kernel/v
?:=	2È2.Adam/lstm_316/lstm_cell_316/recurrent_kernel/v
/:-È2"Adam/lstm_316/lstm_cell_316/bias/v
4:22(2$Adam/lstm_317/lstm_cell_317/kernel/v
>:<
(2.Adam/lstm_317/lstm_cell_317/recurrent_kernel/v
.:,(2"Adam/lstm_317/lstm_cell_317/bias/v
2
/__inference_sequential_105_layer_call_fn_522681
/__inference_sequential_105_layer_call_fn_523419
/__inference_sequential_105_layer_call_fn_523446
/__inference_sequential_105_layer_call_fn_523297À
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
ö2ó
J__inference_sequential_105_layer_call_and_return_conditional_losses_523873
J__inference_sequential_105_layer_call_and_return_conditional_losses_524300
J__inference_sequential_105_layer_call_and_return_conditional_losses_523327
J__inference_sequential_105_layer_call_and_return_conditional_losses_523357À
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
!__inference__wrapped_model_521132lstm_315_input"
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
)__inference_lstm_315_layer_call_fn_524311
)__inference_lstm_315_layer_call_fn_524322
)__inference_lstm_315_layer_call_fn_524333
)__inference_lstm_315_layer_call_fn_524344Ġ
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_524487
D__inference_lstm_315_layer_call_and_return_conditional_losses_524630
D__inference_lstm_315_layer_call_and_return_conditional_losses_524773
D__inference_lstm_315_layer_call_and_return_conditional_losses_524916Ġ
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
)__inference_lstm_316_layer_call_fn_524927
)__inference_lstm_316_layer_call_fn_524938
)__inference_lstm_316_layer_call_fn_524949
)__inference_lstm_316_layer_call_fn_524960Ġ
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_525103
D__inference_lstm_316_layer_call_and_return_conditional_losses_525246
D__inference_lstm_316_layer_call_and_return_conditional_losses_525389
D__inference_lstm_316_layer_call_and_return_conditional_losses_525532Ġ
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
)__inference_lstm_317_layer_call_fn_525543
)__inference_lstm_317_layer_call_fn_525554
)__inference_lstm_317_layer_call_fn_525565
)__inference_lstm_317_layer_call_fn_525576Ġ
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_525719
D__inference_lstm_317_layer_call_and_return_conditional_losses_525862
D__inference_lstm_317_layer_call_and_return_conditional_losses_526005
D__inference_lstm_317_layer_call_and_return_conditional_losses_526148Ġ
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
Ô2Ñ
*__inference_dense_105_layer_call_fn_526157˘
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
ï2ì
E__inference_dense_105_layer_call_and_return_conditional_losses_526167˘
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
$__inference_signature_wrapper_523392lstm_315_input"
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
-__inference_lstm_cell_84_layer_call_fn_526184
-__inference_lstm_cell_84_layer_call_fn_526201?
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_526233
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_526265?
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
-__inference_lstm_cell_85_layer_call_fn_526282
-__inference_lstm_cell_85_layer_call_fn_526299?
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_526331
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_526363?
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
-__inference_lstm_cell_86_layer_call_fn_526380
-__inference_lstm_cell_86_layer_call_fn_526397?
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_526429
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_526461?
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
 §
!__inference__wrapped_model_521132-./012345!";˘8
1˘.
,)
lstm_315_input˙˙˙˙˙˙˙˙˙
Ş "5Ş2
0
	dense_105# 
	dense_105˙˙˙˙˙˙˙˙˙?
E__inference_dense_105_layer_call_and_return_conditional_losses_526167\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
*__inference_dense_105_layer_call_fn_526157O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_315_layer_call_and_return_conditional_losses_524487-./O˘L
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_524630-./O˘L
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_524773q-./?˘<
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
D__inference_lstm_315_layer_call_and_return_conditional_losses_524916q-./?˘<
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
)__inference_lstm_315_layer_call_fn_524311}-./O˘L
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
)__inference_lstm_315_layer_call_fn_524322}-./O˘L
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
)__inference_lstm_315_layer_call_fn_524333d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_315_layer_call_fn_524344d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_316_layer_call_and_return_conditional_losses_525103012O˘L
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_525246012O˘L
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_525389q012?˘<
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
D__inference_lstm_316_layer_call_and_return_conditional_losses_525532q012?˘<
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
)__inference_lstm_316_layer_call_fn_524927}012O˘L
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
)__inference_lstm_316_layer_call_fn_524938}012O˘L
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
)__inference_lstm_316_layer_call_fn_524949d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_316_layer_call_fn_524960d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_317_layer_call_and_return_conditional_losses_525719}345O˘L
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_525862}345O˘L
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_526005m345?˘<
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
D__inference_lstm_317_layer_call_and_return_conditional_losses_526148m345?˘<
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
)__inference_lstm_317_layer_call_fn_525543p345O˘L
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
)__inference_lstm_317_layer_call_fn_525554p345O˘L
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
)__inference_lstm_317_layer_call_fn_525565`345?˘<
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
)__inference_lstm_317_layer_call_fn_525576`345?˘<
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_526233ŭ-./˘}
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
H__inference_lstm_cell_84_layer_call_and_return_conditional_losses_526265ŭ-./˘}
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
-__inference_lstm_cell_84_layer_call_fn_526184í-./˘}
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
-__inference_lstm_cell_84_layer_call_fn_526201í-./˘}
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_526331ŭ012˘}
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
H__inference_lstm_cell_85_layer_call_and_return_conditional_losses_526363ŭ012˘}
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
-__inference_lstm_cell_85_layer_call_fn_526282í012˘}
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
-__inference_lstm_cell_85_layer_call_fn_526299í012˘}
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_526429ŭ345˘}
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
H__inference_lstm_cell_86_layer_call_and_return_conditional_losses_526461ŭ345˘}
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
-__inference_lstm_cell_86_layer_call_fn_526380í345˘}
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
-__inference_lstm_cell_86_layer_call_fn_526397í345˘}
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
Ç
J__inference_sequential_105_layer_call_and_return_conditional_losses_523327y-./012345!"C˘@
9˘6
,)
lstm_315_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ç
J__inference_sequential_105_layer_call_and_return_conditional_losses_523357y-./012345!"C˘@
9˘6
,)
lstm_315_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_105_layer_call_and_return_conditional_losses_523873q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_105_layer_call_and_return_conditional_losses_524300q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
/__inference_sequential_105_layer_call_fn_522681l-./012345!"C˘@
9˘6
,)
lstm_315_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_105_layer_call_fn_523297l-./012345!"C˘@
9˘6
,)
lstm_315_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_105_layer_call_fn_523419d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_105_layer_call_fn_523446d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ĵ
$__inference_signature_wrapper_523392-./012345!"M˘J
˘ 
CŞ@
>
lstm_315_input,)
lstm_315_input˙˙˙˙˙˙˙˙˙"5Ş2
0
	dense_105# 
	dense_105˙˙˙˙˙˙˙˙˙