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
dense_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_103/kernel
u
$dense_103/kernel/Read/ReadVariableOpReadVariableOpdense_103/kernel*
_output_shapes

:
*
dtype0
t
dense_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_103/bias
m
"dense_103/bias/Read/ReadVariableOpReadVariableOpdense_103/bias*
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
lstm_309/lstm_cell_309/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_309/lstm_cell_309/kernel

1lstm_309/lstm_cell_309/kernel/Read/ReadVariableOpReadVariableOplstm_309/lstm_cell_309/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_309/lstm_cell_309/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_309/lstm_cell_309/recurrent_kernel
¤
;lstm_309/lstm_cell_309/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_309/lstm_cell_309/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_309/lstm_cell_309/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_309/lstm_cell_309/bias

/lstm_309/lstm_cell_309/bias/Read/ReadVariableOpReadVariableOplstm_309/lstm_cell_309/bias*
_output_shapes	
:*
dtype0

lstm_310/lstm_cell_310/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_310/lstm_cell_310/kernel

1lstm_310/lstm_cell_310/kernel/Read/ReadVariableOpReadVariableOplstm_310/lstm_cell_310/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_310/lstm_cell_310/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_310/lstm_cell_310/recurrent_kernel
¤
;lstm_310/lstm_cell_310/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_310/lstm_cell_310/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_310/lstm_cell_310/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_310/lstm_cell_310/bias

/lstm_310/lstm_cell_310/bias/Read/ReadVariableOpReadVariableOplstm_310/lstm_cell_310/bias*
_output_shapes	
:È*
dtype0

lstm_311/lstm_cell_311/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_311/lstm_cell_311/kernel

1lstm_311/lstm_cell_311/kernel/Read/ReadVariableOpReadVariableOplstm_311/lstm_cell_311/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_311/lstm_cell_311/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_311/lstm_cell_311/recurrent_kernel
£
;lstm_311/lstm_cell_311/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_311/lstm_cell_311/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_311/lstm_cell_311/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_311/lstm_cell_311/bias

/lstm_311/lstm_cell_311/bias/Read/ReadVariableOpReadVariableOplstm_311/lstm_cell_311/bias*
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
Adam/dense_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_103/kernel/m

+Adam/dense_103/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_103/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_103/bias/m
{
)Adam/dense_103/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_103/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_309/lstm_cell_309/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_309/lstm_cell_309/kernel/m

8Adam/lstm_309/lstm_cell_309/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_309/lstm_cell_309/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_309/lstm_cell_309/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_309/lstm_cell_309/recurrent_kernel/m
²
BAdam/lstm_309/lstm_cell_309/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_309/lstm_cell_309/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_309/lstm_cell_309/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_309/lstm_cell_309/bias/m

6Adam/lstm_309/lstm_cell_309/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_309/lstm_cell_309/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_310/lstm_cell_310/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_310/lstm_cell_310/kernel/m

8Adam/lstm_310/lstm_cell_310/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_310/lstm_cell_310/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_310/lstm_cell_310/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_310/lstm_cell_310/recurrent_kernel/m
²
BAdam/lstm_310/lstm_cell_310/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_310/lstm_cell_310/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_310/lstm_cell_310/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_310/lstm_cell_310/bias/m

6Adam/lstm_310/lstm_cell_310/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_310/lstm_cell_310/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_311/lstm_cell_311/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_311/lstm_cell_311/kernel/m

8Adam/lstm_311/lstm_cell_311/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_311/lstm_cell_311/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_311/lstm_cell_311/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_311/lstm_cell_311/recurrent_kernel/m
ħ
BAdam/lstm_311/lstm_cell_311/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_311/lstm_cell_311/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_311/lstm_cell_311/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_311/lstm_cell_311/bias/m

6Adam/lstm_311/lstm_cell_311/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_311/lstm_cell_311/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_103/kernel/v

+Adam/dense_103/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_103/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_103/bias/v
{
)Adam/dense_103/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_103/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_309/lstm_cell_309/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_309/lstm_cell_309/kernel/v

8Adam/lstm_309/lstm_cell_309/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_309/lstm_cell_309/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_309/lstm_cell_309/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_309/lstm_cell_309/recurrent_kernel/v
²
BAdam/lstm_309/lstm_cell_309/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_309/lstm_cell_309/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_309/lstm_cell_309/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_309/lstm_cell_309/bias/v

6Adam/lstm_309/lstm_cell_309/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_309/lstm_cell_309/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_310/lstm_cell_310/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_310/lstm_cell_310/kernel/v

8Adam/lstm_310/lstm_cell_310/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_310/lstm_cell_310/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_310/lstm_cell_310/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_310/lstm_cell_310/recurrent_kernel/v
²
BAdam/lstm_310/lstm_cell_310/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_310/lstm_cell_310/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_310/lstm_cell_310/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_310/lstm_cell_310/bias/v

6Adam/lstm_310/lstm_cell_310/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_310/lstm_cell_310/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_311/lstm_cell_311/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_311/lstm_cell_311/kernel/v

8Adam/lstm_311/lstm_cell_311/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_311/lstm_cell_311/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_311/lstm_cell_311/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_311/lstm_cell_311/recurrent_kernel/v
ħ
BAdam/lstm_311/lstm_cell_311/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_311/lstm_cell_311/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_311/lstm_cell_311/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_311/lstm_cell_311/bias/v

6Adam/lstm_311/lstm_cell_311/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_311/lstm_cell_311/bias/v*
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
VARIABLE_VALUEdense_103/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_103/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_309/lstm_cell_309/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_309/lstm_cell_309/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_309/lstm_cell_309/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_310/lstm_cell_310/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_310/lstm_cell_310/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_310/lstm_cell_310/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_311/lstm_cell_311/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_311/lstm_cell_311/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_311/lstm_cell_311/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_103/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_103/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_309/lstm_cell_309/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_309/lstm_cell_309/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_309/lstm_cell_309/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_310/lstm_cell_310/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_310/lstm_cell_310/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_310/lstm_cell_310/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_311/lstm_cell_311/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_311/lstm_cell_311/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_311/lstm_cell_311/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_103/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_103/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_309/lstm_cell_309/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_309/lstm_cell_309/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_309/lstm_cell_309/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_310/lstm_cell_310/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_310/lstm_cell_310/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_310/lstm_cell_310/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_311/lstm_cell_311/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_311/lstm_cell_311/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_311/lstm_cell_311/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_309_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_309_inputlstm_309/lstm_cell_309/kernel'lstm_309/lstm_cell_309/recurrent_kernellstm_309/lstm_cell_309/biaslstm_310/lstm_cell_310/kernel'lstm_310/lstm_cell_310/recurrent_kernellstm_310/lstm_cell_310/biaslstm_311/lstm_cell_311/kernel'lstm_311/lstm_cell_311/recurrent_kernellstm_311/lstm_cell_311/biasdense_103/kerneldense_103/bias*
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
$__inference_signature_wrapper_486562
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_103/kernel/Read/ReadVariableOp"dense_103/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_309/lstm_cell_309/kernel/Read/ReadVariableOp;lstm_309/lstm_cell_309/recurrent_kernel/Read/ReadVariableOp/lstm_309/lstm_cell_309/bias/Read/ReadVariableOp1lstm_310/lstm_cell_310/kernel/Read/ReadVariableOp;lstm_310/lstm_cell_310/recurrent_kernel/Read/ReadVariableOp/lstm_310/lstm_cell_310/bias/Read/ReadVariableOp1lstm_311/lstm_cell_311/kernel/Read/ReadVariableOp;lstm_311/lstm_cell_311/recurrent_kernel/Read/ReadVariableOp/lstm_311/lstm_cell_311/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_103/kernel/m/Read/ReadVariableOp)Adam/dense_103/bias/m/Read/ReadVariableOp8Adam/lstm_309/lstm_cell_309/kernel/m/Read/ReadVariableOpBAdam/lstm_309/lstm_cell_309/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_309/lstm_cell_309/bias/m/Read/ReadVariableOp8Adam/lstm_310/lstm_cell_310/kernel/m/Read/ReadVariableOpBAdam/lstm_310/lstm_cell_310/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_310/lstm_cell_310/bias/m/Read/ReadVariableOp8Adam/lstm_311/lstm_cell_311/kernel/m/Read/ReadVariableOpBAdam/lstm_311/lstm_cell_311/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_311/lstm_cell_311/bias/m/Read/ReadVariableOp+Adam/dense_103/kernel/v/Read/ReadVariableOp)Adam/dense_103/bias/v/Read/ReadVariableOp8Adam/lstm_309/lstm_cell_309/kernel/v/Read/ReadVariableOpBAdam/lstm_309/lstm_cell_309/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_309/lstm_cell_309/bias/v/Read/ReadVariableOp8Adam/lstm_310/lstm_cell_310/kernel/v/Read/ReadVariableOpBAdam/lstm_310/lstm_cell_310/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_310/lstm_cell_310/bias/v/Read/ReadVariableOp8Adam/lstm_311/lstm_cell_311/kernel/v/Read/ReadVariableOpBAdam/lstm_311/lstm_cell_311/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_311/lstm_cell_311/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_489774

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_103/kerneldense_103/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_309/lstm_cell_309/kernel'lstm_309/lstm_cell_309/recurrent_kernellstm_309/lstm_cell_309/biaslstm_310/lstm_cell_310/kernel'lstm_310/lstm_cell_310/recurrent_kernellstm_310/lstm_cell_310/biaslstm_311/lstm_cell_311/kernel'lstm_311/lstm_cell_311/recurrent_kernellstm_311/lstm_cell_311/biastotalcountAdam/dense_103/kernel/mAdam/dense_103/bias/m$Adam/lstm_309/lstm_cell_309/kernel/m.Adam/lstm_309/lstm_cell_309/recurrent_kernel/m"Adam/lstm_309/lstm_cell_309/bias/m$Adam/lstm_310/lstm_cell_310/kernel/m.Adam/lstm_310/lstm_cell_310/recurrent_kernel/m"Adam/lstm_310/lstm_cell_310/bias/m$Adam/lstm_311/lstm_cell_311/kernel/m.Adam/lstm_311/lstm_cell_311/recurrent_kernel/m"Adam/lstm_311/lstm_cell_311/bias/mAdam/dense_103/kernel/vAdam/dense_103/bias/v$Adam/lstm_309/lstm_cell_309/kernel/v.Adam/lstm_309/lstm_cell_309/recurrent_kernel/v"Adam/lstm_309/lstm_cell_309/bias/v$Adam/lstm_310/lstm_cell_310/kernel/v.Adam/lstm_310/lstm_cell_310/recurrent_kernel/v"Adam/lstm_310/lstm_cell_310/bias/v$Adam/lstm_311/lstm_cell_311/kernel/v.Adam/lstm_311/lstm_cell_311/recurrent_kernel/v"Adam/lstm_311/lstm_cell_311/bias/v*4
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
"__inference__traced_restore_489904ĜÜ+
âJ

D__inference_lstm_309_layer_call_and_return_conditional_losses_487657
inputs_0>
+lstm_cell_78_matmul_readvariableop_resource:	@
-lstm_cell_78_matmul_1_readvariableop_resource:	d;
,lstm_cell_78_biasadd_readvariableop_resource:	
identity˘#lstm_cell_78/BiasAdd/ReadVariableOp˘"lstm_cell_78/MatMul/ReadVariableOp˘$lstm_cell_78/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
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
while_body_487573*
condR
while_cond_487572*K
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
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
²

÷
lstm_310_while_cond_487240.
*lstm_310_while_lstm_310_while_loop_counter4
0lstm_310_while_lstm_310_while_maximum_iterations
lstm_310_while_placeholder 
lstm_310_while_placeholder_1 
lstm_310_while_placeholder_2 
lstm_310_while_placeholder_30
,lstm_310_while_less_lstm_310_strided_slice_1F
Blstm_310_while_lstm_310_while_cond_487240___redundant_placeholder0F
Blstm_310_while_lstm_310_while_cond_487240___redundant_placeholder1F
Blstm_310_while_lstm_310_while_cond_487240___redundant_placeholder2F
Blstm_310_while_lstm_310_while_cond_487240___redundant_placeholder3
lstm_310_while_identity

lstm_310/while/LessLesslstm_310_while_placeholder,lstm_310_while_less_lstm_310_strided_slice_1*
T0*
_output_shapes
: ]
lstm_310/while/IdentityIdentitylstm_310/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_310_while_identity lstm_310/while/Identity:output:0*(
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_487470

inputsG
4lstm_309_lstm_cell_78_matmul_readvariableop_resource:	I
6lstm_309_lstm_cell_78_matmul_1_readvariableop_resource:	dD
5lstm_309_lstm_cell_78_biasadd_readvariableop_resource:	G
4lstm_310_lstm_cell_79_matmul_readvariableop_resource:	dÈI
6lstm_310_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈD
5lstm_310_lstm_cell_79_biasadd_readvariableop_resource:	ÈF
4lstm_311_lstm_cell_80_matmul_readvariableop_resource:2(H
6lstm_311_lstm_cell_80_matmul_1_readvariableop_resource:
(C
5lstm_311_lstm_cell_80_biasadd_readvariableop_resource:(:
(dense_103_matmul_readvariableop_resource:
7
)dense_103_biasadd_readvariableop_resource:
identity˘ dense_103/BiasAdd/ReadVariableOp˘dense_103/MatMul/ReadVariableOp˘,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp˘+lstm_309/lstm_cell_78/MatMul/ReadVariableOp˘-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp˘lstm_309/while˘,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp˘+lstm_310/lstm_cell_79/MatMul/ReadVariableOp˘-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp˘lstm_310/while˘,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp˘+lstm_311/lstm_cell_80/MatMul/ReadVariableOp˘-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp˘lstm_311/whileD
lstm_309/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_309/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_309/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_309/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_309/strided_sliceStridedSlicelstm_309/Shape:output:0%lstm_309/strided_slice/stack:output:0'lstm_309/strided_slice/stack_1:output:0'lstm_309/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_309/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_309/zeros/packedPacklstm_309/strided_slice:output:0 lstm_309/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_309/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_309/zerosFilllstm_309/zeros/packed:output:0lstm_309/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_309/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_309/zeros_1/packedPacklstm_309/strided_slice:output:0"lstm_309/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_309/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_309/zeros_1Fill lstm_309/zeros_1/packed:output:0lstm_309/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_309/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_309/transpose	Transposeinputs lstm_309/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_309/Shape_1Shapelstm_309/transpose:y:0*
T0*
_output_shapes
:h
lstm_309/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_309/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_309/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_309/strided_slice_1StridedSlicelstm_309/Shape_1:output:0'lstm_309/strided_slice_1/stack:output:0)lstm_309/strided_slice_1/stack_1:output:0)lstm_309/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_309/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_309/TensorArrayV2TensorListReserve-lstm_309/TensorArrayV2/element_shape:output:0!lstm_309/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_309/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_309/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_309/transpose:y:0Glstm_309/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_309/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_309/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_309/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_309/strided_slice_2StridedSlicelstm_309/transpose:y:0'lstm_309/strided_slice_2/stack:output:0)lstm_309/strided_slice_2/stack_1:output:0)lstm_309/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_309/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp4lstm_309_lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_309/lstm_cell_78/MatMulMatMul!lstm_309/strided_slice_2:output:03lstm_309/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp6lstm_309_lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_309/lstm_cell_78/MatMul_1MatMullstm_309/zeros:output:05lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_309/lstm_cell_78/addAddV2&lstm_309/lstm_cell_78/MatMul:product:0(lstm_309/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp5lstm_309_lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_309/lstm_cell_78/BiasAddBiasAddlstm_309/lstm_cell_78/add:z:04lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_309/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_309/lstm_cell_78/splitSplit.lstm_309/lstm_cell_78/split/split_dim:output:0&lstm_309/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_309/lstm_cell_78/SigmoidSigmoid$lstm_309/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/Sigmoid_1Sigmoid$lstm_309/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/mulMul#lstm_309/lstm_cell_78/Sigmoid_1:y:0lstm_309/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_309/lstm_cell_78/ReluRelu$lstm_309/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_309/lstm_cell_78/mul_1Mul!lstm_309/lstm_cell_78/Sigmoid:y:0(lstm_309/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/add_1AddV2lstm_309/lstm_cell_78/mul:z:0lstm_309/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/Sigmoid_2Sigmoid$lstm_309/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_309/lstm_cell_78/Relu_1Relulstm_309/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_309/lstm_cell_78/mul_2Mul#lstm_309/lstm_cell_78/Sigmoid_2:y:0*lstm_309/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_309/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_309/TensorArrayV2_1TensorListReserve/lstm_309/TensorArrayV2_1/element_shape:output:0!lstm_309/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_309/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_309/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_309/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_309/whileWhile$lstm_309/while/loop_counter:output:0*lstm_309/while/maximum_iterations:output:0lstm_309/time:output:0!lstm_309/TensorArrayV2_1:handle:0lstm_309/zeros:output:0lstm_309/zeros_1:output:0!lstm_309/strided_slice_1:output:0@lstm_309/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_309_lstm_cell_78_matmul_readvariableop_resource6lstm_309_lstm_cell_78_matmul_1_readvariableop_resource5lstm_309_lstm_cell_78_biasadd_readvariableop_resource*
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
lstm_309_while_body_487102*&
condR
lstm_309_while_cond_487101*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_309/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_309/TensorArrayV2Stack/TensorListStackTensorListStacklstm_309/while:output:3Blstm_309/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_309/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_309/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_309/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_309/strided_slice_3StridedSlice4lstm_309/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_309/strided_slice_3/stack:output:0)lstm_309/strided_slice_3/stack_1:output:0)lstm_309/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_309/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_309/transpose_1	Transpose4lstm_309/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_309/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_309/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_310/ShapeShapelstm_309/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_310/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_310/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_310/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_310/strided_sliceStridedSlicelstm_310/Shape:output:0%lstm_310/strided_slice/stack:output:0'lstm_310/strided_slice/stack_1:output:0'lstm_310/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_310/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_310/zeros/packedPacklstm_310/strided_slice:output:0 lstm_310/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_310/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_310/zerosFilllstm_310/zeros/packed:output:0lstm_310/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_310/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_310/zeros_1/packedPacklstm_310/strided_slice:output:0"lstm_310/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_310/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_310/zeros_1Fill lstm_310/zeros_1/packed:output:0lstm_310/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_310/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_310/transpose	Transposelstm_309/transpose_1:y:0 lstm_310/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_310/Shape_1Shapelstm_310/transpose:y:0*
T0*
_output_shapes
:h
lstm_310/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_310/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_310/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_310/strided_slice_1StridedSlicelstm_310/Shape_1:output:0'lstm_310/strided_slice_1/stack:output:0)lstm_310/strided_slice_1/stack_1:output:0)lstm_310/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_310/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_310/TensorArrayV2TensorListReserve-lstm_310/TensorArrayV2/element_shape:output:0!lstm_310/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_310/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_310/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_310/transpose:y:0Glstm_310/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_310/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_310/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_310/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_310/strided_slice_2StridedSlicelstm_310/transpose:y:0'lstm_310/strided_slice_2/stack:output:0)lstm_310/strided_slice_2/stack_1:output:0)lstm_310/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_310/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp4lstm_310_lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_310/lstm_cell_79/MatMulMatMul!lstm_310/strided_slice_2:output:03lstm_310/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp6lstm_310_lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_310/lstm_cell_79/MatMul_1MatMullstm_310/zeros:output:05lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_310/lstm_cell_79/addAddV2&lstm_310/lstm_cell_79/MatMul:product:0(lstm_310/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp5lstm_310_lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_310/lstm_cell_79/BiasAddBiasAddlstm_310/lstm_cell_79/add:z:04lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_310/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_310/lstm_cell_79/splitSplit.lstm_310/lstm_cell_79/split/split_dim:output:0&lstm_310/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_310/lstm_cell_79/SigmoidSigmoid$lstm_310/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/Sigmoid_1Sigmoid$lstm_310/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/mulMul#lstm_310/lstm_cell_79/Sigmoid_1:y:0lstm_310/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_310/lstm_cell_79/ReluRelu$lstm_310/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_310/lstm_cell_79/mul_1Mul!lstm_310/lstm_cell_79/Sigmoid:y:0(lstm_310/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/add_1AddV2lstm_310/lstm_cell_79/mul:z:0lstm_310/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/Sigmoid_2Sigmoid$lstm_310/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_310/lstm_cell_79/Relu_1Relulstm_310/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_310/lstm_cell_79/mul_2Mul#lstm_310/lstm_cell_79/Sigmoid_2:y:0*lstm_310/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_310/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_310/TensorArrayV2_1TensorListReserve/lstm_310/TensorArrayV2_1/element_shape:output:0!lstm_310/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_310/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_310/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_310/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_310/whileWhile$lstm_310/while/loop_counter:output:0*lstm_310/while/maximum_iterations:output:0lstm_310/time:output:0!lstm_310/TensorArrayV2_1:handle:0lstm_310/zeros:output:0lstm_310/zeros_1:output:0!lstm_310/strided_slice_1:output:0@lstm_310/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_310_lstm_cell_79_matmul_readvariableop_resource6lstm_310_lstm_cell_79_matmul_1_readvariableop_resource5lstm_310_lstm_cell_79_biasadd_readvariableop_resource*
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
lstm_310_while_body_487241*&
condR
lstm_310_while_cond_487240*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_310/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_310/TensorArrayV2Stack/TensorListStackTensorListStacklstm_310/while:output:3Blstm_310/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_310/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_310/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_310/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_310/strided_slice_3StridedSlice4lstm_310/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_310/strided_slice_3/stack:output:0)lstm_310/strided_slice_3/stack_1:output:0)lstm_310/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_310/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_310/transpose_1	Transpose4lstm_310/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_310/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_310/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_311/ShapeShapelstm_310/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_311/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_311/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_311/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_311/strided_sliceStridedSlicelstm_311/Shape:output:0%lstm_311/strided_slice/stack:output:0'lstm_311/strided_slice/stack_1:output:0'lstm_311/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_311/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_311/zeros/packedPacklstm_311/strided_slice:output:0 lstm_311/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_311/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_311/zerosFilllstm_311/zeros/packed:output:0lstm_311/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_311/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_311/zeros_1/packedPacklstm_311/strided_slice:output:0"lstm_311/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_311/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_311/zeros_1Fill lstm_311/zeros_1/packed:output:0lstm_311/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_311/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_311/transpose	Transposelstm_310/transpose_1:y:0 lstm_311/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_311/Shape_1Shapelstm_311/transpose:y:0*
T0*
_output_shapes
:h
lstm_311/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_311/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_311/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_311/strided_slice_1StridedSlicelstm_311/Shape_1:output:0'lstm_311/strided_slice_1/stack:output:0)lstm_311/strided_slice_1/stack_1:output:0)lstm_311/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_311/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_311/TensorArrayV2TensorListReserve-lstm_311/TensorArrayV2/element_shape:output:0!lstm_311/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_311/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_311/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_311/transpose:y:0Glstm_311/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_311/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_311/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_311/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_311/strided_slice_2StridedSlicelstm_311/transpose:y:0'lstm_311/strided_slice_2/stack:output:0)lstm_311/strided_slice_2/stack_1:output:0)lstm_311/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_311/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp4lstm_311_lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_311/lstm_cell_80/MatMulMatMul!lstm_311/strided_slice_2:output:03lstm_311/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp6lstm_311_lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_311/lstm_cell_80/MatMul_1MatMullstm_311/zeros:output:05lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_311/lstm_cell_80/addAddV2&lstm_311/lstm_cell_80/MatMul:product:0(lstm_311/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp5lstm_311_lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_311/lstm_cell_80/BiasAddBiasAddlstm_311/lstm_cell_80/add:z:04lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_311/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_311/lstm_cell_80/splitSplit.lstm_311/lstm_cell_80/split/split_dim:output:0&lstm_311/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_311/lstm_cell_80/SigmoidSigmoid$lstm_311/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/Sigmoid_1Sigmoid$lstm_311/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/mulMul#lstm_311/lstm_cell_80/Sigmoid_1:y:0lstm_311/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_311/lstm_cell_80/ReluRelu$lstm_311/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_311/lstm_cell_80/mul_1Mul!lstm_311/lstm_cell_80/Sigmoid:y:0(lstm_311/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/add_1AddV2lstm_311/lstm_cell_80/mul:z:0lstm_311/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/Sigmoid_2Sigmoid$lstm_311/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_311/lstm_cell_80/Relu_1Relulstm_311/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_311/lstm_cell_80/mul_2Mul#lstm_311/lstm_cell_80/Sigmoid_2:y:0*lstm_311/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_311/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_311/TensorArrayV2_1TensorListReserve/lstm_311/TensorArrayV2_1/element_shape:output:0!lstm_311/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_311/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_311/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_311/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_311/whileWhile$lstm_311/while/loop_counter:output:0*lstm_311/while/maximum_iterations:output:0lstm_311/time:output:0!lstm_311/TensorArrayV2_1:handle:0lstm_311/zeros:output:0lstm_311/zeros_1:output:0!lstm_311/strided_slice_1:output:0@lstm_311/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_311_lstm_cell_80_matmul_readvariableop_resource6lstm_311_lstm_cell_80_matmul_1_readvariableop_resource5lstm_311_lstm_cell_80_biasadd_readvariableop_resource*
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
lstm_311_while_body_487380*&
condR
lstm_311_while_cond_487379*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_311/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_311/TensorArrayV2Stack/TensorListStackTensorListStacklstm_311/while:output:3Blstm_311/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_311/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_311/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_311/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_311/strided_slice_3StridedSlice4lstm_311/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_311/strided_slice_3/stack:output:0)lstm_311/strided_slice_3/stack_1:output:0)lstm_311/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_311/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_311/transpose_1	Transpose4lstm_311/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_311/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_311/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_103/MatMulMatMul!lstm_311/strided_slice_3:output:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_103/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp-^lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp,^lstm_309/lstm_cell_78/MatMul/ReadVariableOp.^lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp^lstm_309/while-^lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp,^lstm_310/lstm_cell_79/MatMul/ReadVariableOp.^lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp^lstm_310/while-^lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp,^lstm_311/lstm_cell_80/MatMul/ReadVariableOp.^lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp^lstm_311/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2\
,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp2Z
+lstm_309/lstm_cell_78/MatMul/ReadVariableOp+lstm_309/lstm_cell_78/MatMul/ReadVariableOp2^
-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp2 
lstm_309/whilelstm_309/while2\
,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp2Z
+lstm_310/lstm_cell_79/MatMul/ReadVariableOp+lstm_310/lstm_cell_79/MatMul/ReadVariableOp2^
-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp2 
lstm_310/whilelstm_310/while2\
,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp2Z
+lstm_311/lstm_cell_80/MatMul/ReadVariableOp+lstm_311/lstm_cell_80/MatMul/ReadVariableOp2^
-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp2 
lstm_311/whilelstm_311/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ï
÷
J__inference_sequential_103_layer_call_and_return_conditional_losses_486497
lstm_309_input"
lstm_309_486470:	"
lstm_309_486472:	d
lstm_309_486474:	"
lstm_310_486477:	dÈ"
lstm_310_486479:	2È
lstm_310_486481:	È!
lstm_311_486484:2(!
lstm_311_486486:
(
lstm_311_486488:("
dense_103_486491:

dense_103_486493:
identity˘!dense_103/StatefulPartitionedCall˘ lstm_309/StatefulPartitionedCall˘ lstm_310/StatefulPartitionedCall˘ lstm_311/StatefulPartitionedCall
 lstm_309/StatefulPartitionedCallStatefulPartitionedCalllstm_309_inputlstm_309_486470lstm_309_486472lstm_309_486474*
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_485501Ş
 lstm_310/StatefulPartitionedCallStatefulPartitionedCall)lstm_309/StatefulPartitionedCall:output:0lstm_310_486477lstm_310_486479lstm_310_486481*
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_485651Ĥ
 lstm_311/StatefulPartitionedCallStatefulPartitionedCall)lstm_310/StatefulPartitionedCall:output:0lstm_311_486484lstm_311_486486lstm_311_486488*
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_485801
!dense_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_311/StatefulPartitionedCall:output:0dense_103_486491dense_103_486493*
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
E__inference_dense_103_layer_call_and_return_conditional_losses_485819y
IdentityIdentity*dense_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_103/StatefulPartitionedCall!^lstm_309/StatefulPartitionedCall!^lstm_310/StatefulPartitionedCall!^lstm_311/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2D
 lstm_309/StatefulPartitionedCall lstm_309/StatefulPartitionedCall2D
 lstm_310/StatefulPartitionedCall lstm_310/StatefulPartitionedCall2D
 lstm_311/StatefulPartitionedCall lstm_311/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_309_input
¤J

D__inference_lstm_310_layer_call_and_return_conditional_losses_485651

inputs>
+lstm_cell_79_matmul_readvariableop_resource:	dÈ@
-lstm_cell_79_matmul_1_readvariableop_resource:	2È;
,lstm_cell_79_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_79/BiasAdd/ReadVariableOp˘"lstm_cell_79/MatMul/ReadVariableOp˘$lstm_cell_79/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
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
while_body_485567*
condR
while_cond_485566*K
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
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_484382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_484382___redundant_placeholder04
0while_while_cond_484382___redundant_placeholder14
0while_while_cond_484382___redundant_placeholder24
0while_while_cond_484382___redundant_placeholder3
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
while_body_485567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_79_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_79_biasadd_readvariableop_resource:	È˘)while/lstm_cell_79/BiasAdd/ReadVariableOp˘(while/lstm_cell_79/MatMul/ReadVariableOp˘*while/lstm_cell_79/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485215

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
8
?
while_body_486098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_79_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_79_biasadd_readvariableop_resource:	È˘)while/lstm_cell_79/BiasAdd/ReadVariableOp˘(while/lstm_cell_79/MatMul/ReadVariableOp˘*while/lstm_cell_79/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
while_body_488189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_79_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_79_biasadd_readvariableop_resource:	È˘)while/lstm_cell_79/BiasAdd/ReadVariableOp˘(while/lstm_cell_79/MatMul/ReadVariableOp˘*while/lstm_cell_79/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ş
Ŝ
!__inference__wrapped_model_484302
lstm_309_inputV
Csequential_103_lstm_309_lstm_cell_78_matmul_readvariableop_resource:	X
Esequential_103_lstm_309_lstm_cell_78_matmul_1_readvariableop_resource:	dS
Dsequential_103_lstm_309_lstm_cell_78_biasadd_readvariableop_resource:	V
Csequential_103_lstm_310_lstm_cell_79_matmul_readvariableop_resource:	dÈX
Esequential_103_lstm_310_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈS
Dsequential_103_lstm_310_lstm_cell_79_biasadd_readvariableop_resource:	ÈU
Csequential_103_lstm_311_lstm_cell_80_matmul_readvariableop_resource:2(W
Esequential_103_lstm_311_lstm_cell_80_matmul_1_readvariableop_resource:
(R
Dsequential_103_lstm_311_lstm_cell_80_biasadd_readvariableop_resource:(I
7sequential_103_dense_103_matmul_readvariableop_resource:
F
8sequential_103_dense_103_biasadd_readvariableop_resource:
identity˘/sequential_103/dense_103/BiasAdd/ReadVariableOp˘.sequential_103/dense_103/MatMul/ReadVariableOp˘;sequential_103/lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp˘:sequential_103/lstm_309/lstm_cell_78/MatMul/ReadVariableOp˘<sequential_103/lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp˘sequential_103/lstm_309/while˘;sequential_103/lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp˘:sequential_103/lstm_310/lstm_cell_79/MatMul/ReadVariableOp˘<sequential_103/lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp˘sequential_103/lstm_310/while˘;sequential_103/lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp˘:sequential_103/lstm_311/lstm_cell_80/MatMul/ReadVariableOp˘<sequential_103/lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp˘sequential_103/lstm_311/while[
sequential_103/lstm_309/ShapeShapelstm_309_input*
T0*
_output_shapes
:u
+sequential_103/lstm_309/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_103/lstm_309/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_103/lstm_309/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_103/lstm_309/strided_sliceStridedSlice&sequential_103/lstm_309/Shape:output:04sequential_103/lstm_309/strided_slice/stack:output:06sequential_103/lstm_309/strided_slice/stack_1:output:06sequential_103/lstm_309/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_103/lstm_309/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dğ
$sequential_103/lstm_309/zeros/packedPack.sequential_103/lstm_309/strided_slice:output:0/sequential_103/lstm_309/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_103/lstm_309/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_103/lstm_309/zerosFill-sequential_103/lstm_309/zeros/packed:output:0,sequential_103/lstm_309/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dj
(sequential_103/lstm_309/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dż
&sequential_103/lstm_309/zeros_1/packedPack.sequential_103/lstm_309/strided_slice:output:01sequential_103/lstm_309/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_103/lstm_309/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_103/lstm_309/zeros_1Fill/sequential_103/lstm_309/zeros_1/packed:output:0.sequential_103/lstm_309/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
&sequential_103/lstm_309/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_103/lstm_309/transpose	Transposelstm_309_input/sequential_103/lstm_309/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sequential_103/lstm_309/Shape_1Shape%sequential_103/lstm_309/transpose:y:0*
T0*
_output_shapes
:w
-sequential_103/lstm_309/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_309/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_103/lstm_309/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_103/lstm_309/strided_slice_1StridedSlice(sequential_103/lstm_309/Shape_1:output:06sequential_103/lstm_309/strided_slice_1/stack:output:08sequential_103/lstm_309/strided_slice_1/stack_1:output:08sequential_103/lstm_309/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_103/lstm_309/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_103/lstm_309/TensorArrayV2TensorListReserve<sequential_103/lstm_309/TensorArrayV2/element_shape:output:00sequential_103/lstm_309/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_103/lstm_309/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¨
?sequential_103/lstm_309/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_103/lstm_309/transpose:y:0Vsequential_103/lstm_309/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_103/lstm_309/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_309/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_103/lstm_309/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_103/lstm_309/strided_slice_2StridedSlice%sequential_103/lstm_309/transpose:y:06sequential_103/lstm_309/strided_slice_2/stack:output:08sequential_103/lstm_309/strided_slice_2/stack_1:output:08sequential_103/lstm_309/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskż
:sequential_103/lstm_309/lstm_cell_78/MatMul/ReadVariableOpReadVariableOpCsequential_103_lstm_309_lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ŝ
+sequential_103/lstm_309/lstm_cell_78/MatMulMatMul0sequential_103/lstm_309/strided_slice_2:output:0Bsequential_103/lstm_309/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
<sequential_103/lstm_309/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOpEsequential_103_lstm_309_lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ĝ
-sequential_103/lstm_309/lstm_cell_78/MatMul_1MatMul&sequential_103/lstm_309/zeros:output:0Dsequential_103/lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ô
(sequential_103/lstm_309/lstm_cell_78/addAddV25sequential_103/lstm_309/lstm_cell_78/MatMul:product:07sequential_103/lstm_309/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙½
;sequential_103/lstm_309/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOpDsequential_103_lstm_309_lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŭ
,sequential_103/lstm_309/lstm_cell_78/BiasAddBiasAdd,sequential_103/lstm_309/lstm_cell_78/add:z:0Csequential_103/lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
4sequential_103/lstm_309/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_103/lstm_309/lstm_cell_78/splitSplit=sequential_103/lstm_309/lstm_cell_78/split/split_dim:output:05sequential_103/lstm_309/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
,sequential_103/lstm_309/lstm_cell_78/SigmoidSigmoid3sequential_103/lstm_309/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_103/lstm_309/lstm_cell_78/Sigmoid_1Sigmoid3sequential_103/lstm_309/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dż
(sequential_103/lstm_309/lstm_cell_78/mulMul2sequential_103/lstm_309/lstm_cell_78/Sigmoid_1:y:0(sequential_103/lstm_309/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
)sequential_103/lstm_309/lstm_cell_78/ReluRelu3sequential_103/lstm_309/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
*sequential_103/lstm_309/lstm_cell_78/mul_1Mul0sequential_103/lstm_309/lstm_cell_78/Sigmoid:y:07sequential_103/lstm_309/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
*sequential_103/lstm_309/lstm_cell_78/add_1AddV2,sequential_103/lstm_309/lstm_cell_78/mul:z:0.sequential_103/lstm_309/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_103/lstm_309/lstm_cell_78/Sigmoid_2Sigmoid3sequential_103/lstm_309/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
+sequential_103/lstm_309/lstm_cell_78/Relu_1Relu.sequential_103/lstm_309/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
*sequential_103/lstm_309/lstm_cell_78/mul_2Mul2sequential_103/lstm_309/lstm_cell_78/Sigmoid_2:y:09sequential_103/lstm_309/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
5sequential_103/lstm_309/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
'sequential_103/lstm_309/TensorArrayV2_1TensorListReserve>sequential_103/lstm_309/TensorArrayV2_1/element_shape:output:00sequential_103/lstm_309/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_103/lstm_309/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_103/lstm_309/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_103/lstm_309/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_103/lstm_309/whileWhile3sequential_103/lstm_309/while/loop_counter:output:09sequential_103/lstm_309/while/maximum_iterations:output:0%sequential_103/lstm_309/time:output:00sequential_103/lstm_309/TensorArrayV2_1:handle:0&sequential_103/lstm_309/zeros:output:0(sequential_103/lstm_309/zeros_1:output:00sequential_103/lstm_309/strided_slice_1:output:0Osequential_103/lstm_309/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_103_lstm_309_lstm_cell_78_matmul_readvariableop_resourceEsequential_103_lstm_309_lstm_cell_78_matmul_1_readvariableop_resourceDsequential_103_lstm_309_lstm_cell_78_biasadd_readvariableop_resource*
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
)sequential_103_lstm_309_while_body_483934*5
cond-R+
)sequential_103_lstm_309_while_cond_483933*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Hsequential_103/lstm_309/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
:sequential_103/lstm_309/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_103/lstm_309/while:output:3Qsequential_103/lstm_309/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
-sequential_103/lstm_309/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_103/lstm_309/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_309/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_103/lstm_309/strided_slice_3StridedSliceCsequential_103/lstm_309/TensorArrayV2Stack/TensorListStack:tensor:06sequential_103/lstm_309/strided_slice_3/stack:output:08sequential_103/lstm_309/strided_slice_3/stack_1:output:08sequential_103/lstm_309/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask}
(sequential_103/lstm_309/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_103/lstm_309/transpose_1	TransposeCsequential_103/lstm_309/TensorArrayV2Stack/TensorListStack:tensor:01sequential_103/lstm_309/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ds
sequential_103/lstm_309/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_103/lstm_310/ShapeShape'sequential_103/lstm_309/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_103/lstm_310/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_103/lstm_310/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_103/lstm_310/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_103/lstm_310/strided_sliceStridedSlice&sequential_103/lstm_310/Shape:output:04sequential_103/lstm_310/strided_slice/stack:output:06sequential_103/lstm_310/strided_slice/stack_1:output:06sequential_103/lstm_310/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_103/lstm_310/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ğ
$sequential_103/lstm_310/zeros/packedPack.sequential_103/lstm_310/strided_slice:output:0/sequential_103/lstm_310/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_103/lstm_310/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_103/lstm_310/zerosFill-sequential_103/lstm_310/zeros/packed:output:0,sequential_103/lstm_310/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2j
(sequential_103/lstm_310/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ż
&sequential_103/lstm_310/zeros_1/packedPack.sequential_103/lstm_310/strided_slice:output:01sequential_103/lstm_310/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_103/lstm_310/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_103/lstm_310/zeros_1Fill/sequential_103/lstm_310/zeros_1/packed:output:0.sequential_103/lstm_310/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
&sequential_103/lstm_310/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_103/lstm_310/transpose	Transpose'sequential_103/lstm_309/transpose_1:y:0/sequential_103/lstm_310/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
sequential_103/lstm_310/Shape_1Shape%sequential_103/lstm_310/transpose:y:0*
T0*
_output_shapes
:w
-sequential_103/lstm_310/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_310/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_103/lstm_310/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_103/lstm_310/strided_slice_1StridedSlice(sequential_103/lstm_310/Shape_1:output:06sequential_103/lstm_310/strided_slice_1/stack:output:08sequential_103/lstm_310/strided_slice_1/stack_1:output:08sequential_103/lstm_310/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_103/lstm_310/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_103/lstm_310/TensorArrayV2TensorListReserve<sequential_103/lstm_310/TensorArrayV2/element_shape:output:00sequential_103/lstm_310/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_103/lstm_310/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¨
?sequential_103/lstm_310/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_103/lstm_310/transpose:y:0Vsequential_103/lstm_310/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_103/lstm_310/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_310/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_103/lstm_310/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_103/lstm_310/strided_slice_2StridedSlice%sequential_103/lstm_310/transpose:y:06sequential_103/lstm_310/strided_slice_2/stack:output:08sequential_103/lstm_310/strided_slice_2/stack_1:output:08sequential_103/lstm_310/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskż
:sequential_103/lstm_310/lstm_cell_79/MatMul/ReadVariableOpReadVariableOpCsequential_103_lstm_310_lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ŝ
+sequential_103/lstm_310/lstm_cell_79/MatMulMatMul0sequential_103/lstm_310/strided_slice_2:output:0Bsequential_103/lstm_310/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
<sequential_103/lstm_310/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOpEsequential_103_lstm_310_lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ĝ
-sequential_103/lstm_310/lstm_cell_79/MatMul_1MatMul&sequential_103/lstm_310/zeros:output:0Dsequential_103/lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÔ
(sequential_103/lstm_310/lstm_cell_79/addAddV25sequential_103/lstm_310/lstm_cell_79/MatMul:product:07sequential_103/lstm_310/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È½
;sequential_103/lstm_310/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOpDsequential_103_lstm_310_lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ŭ
,sequential_103/lstm_310/lstm_cell_79/BiasAddBiasAdd,sequential_103/lstm_310/lstm_cell_79/add:z:0Csequential_103/lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èv
4sequential_103/lstm_310/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_103/lstm_310/lstm_cell_79/splitSplit=sequential_103/lstm_310/lstm_cell_79/split/split_dim:output:05sequential_103/lstm_310/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
,sequential_103/lstm_310/lstm_cell_79/SigmoidSigmoid3sequential_103/lstm_310/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_103/lstm_310/lstm_cell_79/Sigmoid_1Sigmoid3sequential_103/lstm_310/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ż
(sequential_103/lstm_310/lstm_cell_79/mulMul2sequential_103/lstm_310/lstm_cell_79/Sigmoid_1:y:0(sequential_103/lstm_310/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
)sequential_103/lstm_310/lstm_cell_79/ReluRelu3sequential_103/lstm_310/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
*sequential_103/lstm_310/lstm_cell_79/mul_1Mul0sequential_103/lstm_310/lstm_cell_79/Sigmoid:y:07sequential_103/lstm_310/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
*sequential_103/lstm_310/lstm_cell_79/add_1AddV2,sequential_103/lstm_310/lstm_cell_79/mul:z:0.sequential_103/lstm_310/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_103/lstm_310/lstm_cell_79/Sigmoid_2Sigmoid3sequential_103/lstm_310/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
+sequential_103/lstm_310/lstm_cell_79/Relu_1Relu.sequential_103/lstm_310/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
*sequential_103/lstm_310/lstm_cell_79/mul_2Mul2sequential_103/lstm_310/lstm_cell_79/Sigmoid_2:y:09sequential_103/lstm_310/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
5sequential_103/lstm_310/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
'sequential_103/lstm_310/TensorArrayV2_1TensorListReserve>sequential_103/lstm_310/TensorArrayV2_1/element_shape:output:00sequential_103/lstm_310/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_103/lstm_310/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_103/lstm_310/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_103/lstm_310/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_103/lstm_310/whileWhile3sequential_103/lstm_310/while/loop_counter:output:09sequential_103/lstm_310/while/maximum_iterations:output:0%sequential_103/lstm_310/time:output:00sequential_103/lstm_310/TensorArrayV2_1:handle:0&sequential_103/lstm_310/zeros:output:0(sequential_103/lstm_310/zeros_1:output:00sequential_103/lstm_310/strided_slice_1:output:0Osequential_103/lstm_310/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_103_lstm_310_lstm_cell_79_matmul_readvariableop_resourceEsequential_103_lstm_310_lstm_cell_79_matmul_1_readvariableop_resourceDsequential_103_lstm_310_lstm_cell_79_biasadd_readvariableop_resource*
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
)sequential_103_lstm_310_while_body_484073*5
cond-R+
)sequential_103_lstm_310_while_cond_484072*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Hsequential_103/lstm_310/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
:sequential_103/lstm_310/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_103/lstm_310/while:output:3Qsequential_103/lstm_310/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
-sequential_103/lstm_310/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_103/lstm_310/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_310/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_103/lstm_310/strided_slice_3StridedSliceCsequential_103/lstm_310/TensorArrayV2Stack/TensorListStack:tensor:06sequential_103/lstm_310/strided_slice_3/stack:output:08sequential_103/lstm_310/strided_slice_3/stack_1:output:08sequential_103/lstm_310/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask}
(sequential_103/lstm_310/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_103/lstm_310/transpose_1	TransposeCsequential_103/lstm_310/TensorArrayV2Stack/TensorListStack:tensor:01sequential_103/lstm_310/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
sequential_103/lstm_310/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_103/lstm_311/ShapeShape'sequential_103/lstm_310/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_103/lstm_311/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_103/lstm_311/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_103/lstm_311/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_103/lstm_311/strided_sliceStridedSlice&sequential_103/lstm_311/Shape:output:04sequential_103/lstm_311/strided_slice/stack:output:06sequential_103/lstm_311/strided_slice/stack_1:output:06sequential_103/lstm_311/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_103/lstm_311/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ğ
$sequential_103/lstm_311/zeros/packedPack.sequential_103/lstm_311/strided_slice:output:0/sequential_103/lstm_311/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_103/lstm_311/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_103/lstm_311/zerosFill-sequential_103/lstm_311/zeros/packed:output:0,sequential_103/lstm_311/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(sequential_103/lstm_311/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ż
&sequential_103/lstm_311/zeros_1/packedPack.sequential_103/lstm_311/strided_slice:output:01sequential_103/lstm_311/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_103/lstm_311/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_103/lstm_311/zeros_1Fill/sequential_103/lstm_311/zeros_1/packed:output:0.sequential_103/lstm_311/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
&sequential_103/lstm_311/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_103/lstm_311/transpose	Transpose'sequential_103/lstm_310/transpose_1:y:0/sequential_103/lstm_311/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
sequential_103/lstm_311/Shape_1Shape%sequential_103/lstm_311/transpose:y:0*
T0*
_output_shapes
:w
-sequential_103/lstm_311/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_311/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_103/lstm_311/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_103/lstm_311/strided_slice_1StridedSlice(sequential_103/lstm_311/Shape_1:output:06sequential_103/lstm_311/strided_slice_1/stack:output:08sequential_103/lstm_311/strided_slice_1/stack_1:output:08sequential_103/lstm_311/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_103/lstm_311/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_103/lstm_311/TensorArrayV2TensorListReserve<sequential_103/lstm_311/TensorArrayV2/element_shape:output:00sequential_103/lstm_311/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_103/lstm_311/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¨
?sequential_103/lstm_311/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_103/lstm_311/transpose:y:0Vsequential_103/lstm_311/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_103/lstm_311/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_311/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_103/lstm_311/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_103/lstm_311/strided_slice_2StridedSlice%sequential_103/lstm_311/transpose:y:06sequential_103/lstm_311/strided_slice_2/stack:output:08sequential_103/lstm_311/strided_slice_2/stack_1:output:08sequential_103/lstm_311/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask?
:sequential_103/lstm_311/lstm_cell_80/MatMul/ReadVariableOpReadVariableOpCsequential_103_lstm_311_lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ŭ
+sequential_103/lstm_311/lstm_cell_80/MatMulMatMul0sequential_103/lstm_311/strided_slice_2:output:0Bsequential_103/lstm_311/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Â
<sequential_103/lstm_311/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOpEsequential_103_lstm_311_lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0×
-sequential_103/lstm_311/lstm_cell_80/MatMul_1MatMul&sequential_103/lstm_311/zeros:output:0Dsequential_103/lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ó
(sequential_103/lstm_311/lstm_cell_80/addAddV25sequential_103/lstm_311/lstm_cell_80/MatMul:product:07sequential_103/lstm_311/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ĵ
;sequential_103/lstm_311/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOpDsequential_103_lstm_311_lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ü
,sequential_103/lstm_311/lstm_cell_80/BiasAddBiasAdd,sequential_103/lstm_311/lstm_cell_80/add:z:0Csequential_103/lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(v
4sequential_103/lstm_311/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_103/lstm_311/lstm_cell_80/splitSplit=sequential_103/lstm_311/lstm_cell_80/split/split_dim:output:05sequential_103/lstm_311/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
,sequential_103/lstm_311/lstm_cell_80/SigmoidSigmoid3sequential_103/lstm_311/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_103/lstm_311/lstm_cell_80/Sigmoid_1Sigmoid3sequential_103/lstm_311/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
(sequential_103/lstm_311/lstm_cell_80/mulMul2sequential_103/lstm_311/lstm_cell_80/Sigmoid_1:y:0(sequential_103/lstm_311/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)sequential_103/lstm_311/lstm_cell_80/ReluRelu3sequential_103/lstm_311/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
*sequential_103/lstm_311/lstm_cell_80/mul_1Mul0sequential_103/lstm_311/lstm_cell_80/Sigmoid:y:07sequential_103/lstm_311/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
*sequential_103/lstm_311/lstm_cell_80/add_1AddV2,sequential_103/lstm_311/lstm_cell_80/mul:z:0.sequential_103/lstm_311/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_103/lstm_311/lstm_cell_80/Sigmoid_2Sigmoid3sequential_103/lstm_311/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_103/lstm_311/lstm_cell_80/Relu_1Relu.sequential_103/lstm_311/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
*sequential_103/lstm_311/lstm_cell_80/mul_2Mul2sequential_103/lstm_311/lstm_cell_80/Sigmoid_2:y:09sequential_103/lstm_311/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5sequential_103/lstm_311/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
'sequential_103/lstm_311/TensorArrayV2_1TensorListReserve>sequential_103/lstm_311/TensorArrayV2_1/element_shape:output:00sequential_103/lstm_311/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_103/lstm_311/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_103/lstm_311/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_103/lstm_311/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_103/lstm_311/whileWhile3sequential_103/lstm_311/while/loop_counter:output:09sequential_103/lstm_311/while/maximum_iterations:output:0%sequential_103/lstm_311/time:output:00sequential_103/lstm_311/TensorArrayV2_1:handle:0&sequential_103/lstm_311/zeros:output:0(sequential_103/lstm_311/zeros_1:output:00sequential_103/lstm_311/strided_slice_1:output:0Osequential_103/lstm_311/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_103_lstm_311_lstm_cell_80_matmul_readvariableop_resourceEsequential_103_lstm_311_lstm_cell_80_matmul_1_readvariableop_resourceDsequential_103_lstm_311_lstm_cell_80_biasadd_readvariableop_resource*
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
)sequential_103_lstm_311_while_body_484212*5
cond-R+
)sequential_103_lstm_311_while_cond_484211*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Hsequential_103/lstm_311/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
:sequential_103/lstm_311/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_103/lstm_311/while:output:3Qsequential_103/lstm_311/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
-sequential_103/lstm_311/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_103/lstm_311/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_103/lstm_311/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_103/lstm_311/strided_slice_3StridedSliceCsequential_103/lstm_311/TensorArrayV2Stack/TensorListStack:tensor:06sequential_103/lstm_311/strided_slice_3/stack:output:08sequential_103/lstm_311/strided_slice_3/stack_1:output:08sequential_103/lstm_311/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask}
(sequential_103/lstm_311/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_103/lstm_311/transpose_1	TransposeCsequential_103/lstm_311/TensorArrayV2Stack/TensorListStack:tensor:01sequential_103/lstm_311/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
sequential_103/lstm_311/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ĥ
.sequential_103/dense_103/MatMul/ReadVariableOpReadVariableOp7sequential_103_dense_103_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ċ
sequential_103/dense_103/MatMulMatMul0sequential_103/lstm_311/strided_slice_3:output:06sequential_103/dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/sequential_103/dense_103/BiasAdd/ReadVariableOpReadVariableOp8sequential_103_dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_103/dense_103/BiasAddBiasAdd)sequential_103/dense_103/MatMul:product:07sequential_103/dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity)sequential_103/dense_103/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙·
NoOpNoOp0^sequential_103/dense_103/BiasAdd/ReadVariableOp/^sequential_103/dense_103/MatMul/ReadVariableOp<^sequential_103/lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp;^sequential_103/lstm_309/lstm_cell_78/MatMul/ReadVariableOp=^sequential_103/lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp^sequential_103/lstm_309/while<^sequential_103/lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp;^sequential_103/lstm_310/lstm_cell_79/MatMul/ReadVariableOp=^sequential_103/lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp^sequential_103/lstm_310/while<^sequential_103/lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp;^sequential_103/lstm_311/lstm_cell_80/MatMul/ReadVariableOp=^sequential_103/lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp^sequential_103/lstm_311/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2b
/sequential_103/dense_103/BiasAdd/ReadVariableOp/sequential_103/dense_103/BiasAdd/ReadVariableOp2`
.sequential_103/dense_103/MatMul/ReadVariableOp.sequential_103/dense_103/MatMul/ReadVariableOp2z
;sequential_103/lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp;sequential_103/lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp2x
:sequential_103/lstm_309/lstm_cell_78/MatMul/ReadVariableOp:sequential_103/lstm_309/lstm_cell_78/MatMul/ReadVariableOp2|
<sequential_103/lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp<sequential_103/lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp2>
sequential_103/lstm_309/whilesequential_103/lstm_309/while2z
;sequential_103/lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp;sequential_103/lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp2x
:sequential_103/lstm_310/lstm_cell_79/MatMul/ReadVariableOp:sequential_103/lstm_310/lstm_cell_79/MatMul/ReadVariableOp2|
<sequential_103/lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp<sequential_103/lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp2>
sequential_103/lstm_310/whilesequential_103/lstm_310/while2z
;sequential_103/lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp;sequential_103/lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp2x
:sequential_103/lstm_311/lstm_cell_80/MatMul/ReadVariableOp:sequential_103/lstm_311/lstm_cell_80/MatMul/ReadVariableOp2|
<sequential_103/lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp<sequential_103/lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp2>
sequential_103/lstm_311/whilesequential_103/lstm_311/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_309_input
ĉ"
?
while_body_484733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_79_484757_0:	dÈ.
while_lstm_cell_79_484759_0:	2È*
while_lstm_cell_79_484761_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_79_484757:	dÈ,
while_lstm_cell_79_484759:	2È(
while_lstm_cell_79_484761:	È˘*while/lstm_cell_79/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_79_484757_0while_lstm_cell_79_484759_0while_lstm_cell_79_484761_0*
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484719Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_79/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_79/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_79/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_79/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_79_484757while_lstm_cell_79_484757_0"8
while_lstm_cell_79_484759while_lstm_cell_79_484759_0"8
while_lstm_cell_79_484761while_lstm_cell_79_484761_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_79/StatefulPartitionedCall*while/lstm_cell_79/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ë
ö
-__inference_lstm_cell_79_layer_call_fn_489452

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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484719o
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
8

D__inference_lstm_309_layer_call_and_return_conditional_losses_484452

inputs&
lstm_cell_78_484370:	&
lstm_cell_78_484372:	d"
lstm_cell_78_484374:	
identity˘$lstm_cell_78/StatefulPartitionedCall˘while;
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
$lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_78_484370lstm_cell_78_484372lstm_cell_78_484374*
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484369n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_78_484370lstm_cell_78_484372lstm_cell_78_484374*
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
while_body_484383*
condR
while_cond_484382*K
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
NoOpNoOp%^lstm_cell_78/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_78/StatefulPartitionedCall$lstm_cell_78/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_488002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_78_matmul_readvariableop_resource_0:	H
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_78_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_78_matmul_readvariableop_resource:	F
3while_lstm_cell_78_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_78_biasadd_readvariableop_resource:	˘)while/lstm_cell_78/BiasAdd/ReadVariableOp˘(while/lstm_cell_78/MatMul/ReadVariableOp˘*while/lstm_cell_78/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_485082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_485082___redundant_placeholder04
0while_while_cond_485082___redundant_placeholder14
0while_while_cond_485082___redundant_placeholder24
0while_while_cond_485082___redundant_placeholder3
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
²

÷
lstm_311_while_cond_487379.
*lstm_311_while_lstm_311_while_loop_counter4
0lstm_311_while_lstm_311_while_maximum_iterations
lstm_311_while_placeholder 
lstm_311_while_placeholder_1 
lstm_311_while_placeholder_2 
lstm_311_while_placeholder_30
,lstm_311_while_less_lstm_311_strided_slice_1F
Blstm_311_while_lstm_311_while_cond_487379___redundant_placeholder0F
Blstm_311_while_lstm_311_while_cond_487379___redundant_placeholder1F
Blstm_311_while_lstm_311_while_cond_487379___redundant_placeholder2F
Blstm_311_while_lstm_311_while_cond_487379___redundant_placeholder3
lstm_311_while_identity

lstm_311/while/LessLesslstm_311_while_placeholder,lstm_311_while_less_lstm_311_strided_slice_1*
T0*
_output_shapes
: ]
lstm_311/while/IdentityIdentitylstm_311/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_311_while_identity lstm_311/while/Identity:output:0*(
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
è
ó
-__inference_lstm_cell_80_layer_call_fn_489567

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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485215o
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
Ó

H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_489631

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
µ
?
while_cond_489090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_489090___redundant_placeholder04
0while_while_cond_489090___redundant_placeholder14
0while_while_cond_489090___redundant_placeholder24
0while_while_cond_489090___redundant_placeholder3
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
ô

£
/__inference_sequential_103_layer_call_fn_485851
lstm_309_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_309_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_485826o
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
_user_specified_namelstm_309_input
È	
ö
E__inference_dense_103_layer_call_and_return_conditional_losses_485819

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
ö
³
)__inference_lstm_311_layer_call_fn_488746

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
D__inference_lstm_311_layer_call_and_return_conditional_losses_486017o
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

ĥ
)__inference_lstm_310_layer_call_fn_488130

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
D__inference_lstm_310_layer_call_and_return_conditional_losses_486182s
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
8

D__inference_lstm_311_layer_call_and_return_conditional_losses_485152

inputs%
lstm_cell_80_485070:2(%
lstm_cell_80_485072:
(!
lstm_cell_80_485074:(
identity˘$lstm_cell_80/StatefulPartitionedCall˘while;
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
$lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_80_485070lstm_cell_80_485072lstm_cell_80_485074*
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485069n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_80_485070lstm_cell_80_485072lstm_cell_80_485074*
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
while_body_485083*
condR
while_cond_485082*K
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
NoOpNoOp%^lstm_cell_80/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_80/StatefulPartitionedCall$lstm_cell_80/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_488001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488001___redundant_placeholder04
0while_while_cond_488001___redundant_placeholder14
0while_while_cond_488001___redundant_placeholder24
0while_while_cond_488001___redundant_placeholder3
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
İT
Î
)sequential_103_lstm_311_while_body_484212L
Hsequential_103_lstm_311_while_sequential_103_lstm_311_while_loop_counterR
Nsequential_103_lstm_311_while_sequential_103_lstm_311_while_maximum_iterations-
)sequential_103_lstm_311_while_placeholder/
+sequential_103_lstm_311_while_placeholder_1/
+sequential_103_lstm_311_while_placeholder_2/
+sequential_103_lstm_311_while_placeholder_3K
Gsequential_103_lstm_311_while_sequential_103_lstm_311_strided_slice_1_0
sequential_103_lstm_311_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_311_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_103_lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0:2(_
Msequential_103_lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(Z
Lsequential_103_lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0:(*
&sequential_103_lstm_311_while_identity,
(sequential_103_lstm_311_while_identity_1,
(sequential_103_lstm_311_while_identity_2,
(sequential_103_lstm_311_while_identity_3,
(sequential_103_lstm_311_while_identity_4,
(sequential_103_lstm_311_while_identity_5I
Esequential_103_lstm_311_while_sequential_103_lstm_311_strided_slice_1
sequential_103_lstm_311_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_311_tensorarrayunstack_tensorlistfromtensor[
Isequential_103_lstm_311_while_lstm_cell_80_matmul_readvariableop_resource:2(]
Ksequential_103_lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource:
(X
Jsequential_103_lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource:(˘Asequential_103/lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp˘@sequential_103/lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp˘Bsequential_103/lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp 
Osequential_103/lstm_311/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
Asequential_103/lstm_311/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_103_lstm_311_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_311_tensorarrayunstack_tensorlistfromtensor_0)sequential_103_lstm_311_while_placeholderXsequential_103/lstm_311/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ì
@sequential_103/lstm_311/while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOpKsequential_103_lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_103/lstm_311/while/lstm_cell_80/MatMulMatMulHsequential_103/lstm_311/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_103/lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
Bsequential_103/lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOpMsequential_103_lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0è
3sequential_103/lstm_311/while/lstm_cell_80/MatMul_1MatMul+sequential_103_lstm_311_while_placeholder_2Jsequential_103/lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ċ
.sequential_103/lstm_311/while/lstm_cell_80/addAddV2;sequential_103/lstm_311/while/lstm_cell_80/MatMul:product:0=sequential_103/lstm_311/while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ê
Asequential_103/lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOpLsequential_103_lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0î
2sequential_103/lstm_311/while/lstm_cell_80/BiasAddBiasAdd2sequential_103/lstm_311/while/lstm_cell_80/add:z:0Isequential_103/lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(|
:sequential_103/lstm_311/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_103/lstm_311/while/lstm_cell_80/splitSplitCsequential_103/lstm_311/while/lstm_cell_80/split/split_dim:output:0;sequential_103/lstm_311/while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitŞ
2sequential_103/lstm_311/while/lstm_cell_80/SigmoidSigmoid9sequential_103/lstm_311/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_103/lstm_311/while/lstm_cell_80/Sigmoid_1Sigmoid9sequential_103/lstm_311/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
.sequential_103/lstm_311/while/lstm_cell_80/mulMul8sequential_103/lstm_311/while/lstm_cell_80/Sigmoid_1:y:0+sequential_103_lstm_311_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/sequential_103/lstm_311/while/lstm_cell_80/ReluRelu9sequential_103/lstm_311/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
à
0sequential_103/lstm_311/while/lstm_cell_80/mul_1Mul6sequential_103/lstm_311/while/lstm_cell_80/Sigmoid:y:0=sequential_103/lstm_311/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ġ
0sequential_103/lstm_311/while/lstm_cell_80/add_1AddV22sequential_103/lstm_311/while/lstm_cell_80/mul:z:04sequential_103/lstm_311/while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_103/lstm_311/while/lstm_cell_80/Sigmoid_2Sigmoid9sequential_103/lstm_311/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
1sequential_103/lstm_311/while/lstm_cell_80/Relu_1Relu4sequential_103/lstm_311/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
0sequential_103/lstm_311/while/lstm_cell_80/mul_2Mul8sequential_103/lstm_311/while/lstm_cell_80/Sigmoid_2:y:0?sequential_103/lstm_311/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
Bsequential_103/lstm_311/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_103_lstm_311_while_placeholder_1)sequential_103_lstm_311_while_placeholder4sequential_103/lstm_311/while/lstm_cell_80/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_103/lstm_311/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_103/lstm_311/while/addAddV2)sequential_103_lstm_311_while_placeholder,sequential_103/lstm_311/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_103/lstm_311/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_103/lstm_311/while/add_1AddV2Hsequential_103_lstm_311_while_sequential_103_lstm_311_while_loop_counter.sequential_103/lstm_311/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_103/lstm_311/while/IdentityIdentity'sequential_103/lstm_311/while/add_1:z:0#^sequential_103/lstm_311/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_103/lstm_311/while/Identity_1IdentityNsequential_103_lstm_311_while_sequential_103_lstm_311_while_maximum_iterations#^sequential_103/lstm_311/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_103/lstm_311/while/Identity_2Identity%sequential_103/lstm_311/while/add:z:0#^sequential_103/lstm_311/while/NoOp*
T0*
_output_shapes
: Î
(sequential_103/lstm_311/while/Identity_3IdentityRsequential_103/lstm_311/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_103/lstm_311/while/NoOp*
T0*
_output_shapes
: Á
(sequential_103/lstm_311/while/Identity_4Identity4sequential_103/lstm_311/while/lstm_cell_80/mul_2:z:0#^sequential_103/lstm_311/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(sequential_103/lstm_311/while/Identity_5Identity4sequential_103/lstm_311/while/lstm_cell_80/add_1:z:0#^sequential_103/lstm_311/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
"sequential_103/lstm_311/while/NoOpNoOpB^sequential_103/lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOpA^sequential_103/lstm_311/while/lstm_cell_80/MatMul/ReadVariableOpC^sequential_103/lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_103_lstm_311_while_identity/sequential_103/lstm_311/while/Identity:output:0"]
(sequential_103_lstm_311_while_identity_11sequential_103/lstm_311/while/Identity_1:output:0"]
(sequential_103_lstm_311_while_identity_21sequential_103/lstm_311/while/Identity_2:output:0"]
(sequential_103_lstm_311_while_identity_31sequential_103/lstm_311/while/Identity_3:output:0"]
(sequential_103_lstm_311_while_identity_41sequential_103/lstm_311/while/Identity_4:output:0"]
(sequential_103_lstm_311_while_identity_51sequential_103/lstm_311/while/Identity_5:output:0"
Jsequential_103_lstm_311_while_lstm_cell_80_biasadd_readvariableop_resourceLsequential_103_lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0"
Ksequential_103_lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resourceMsequential_103_lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0"
Isequential_103_lstm_311_while_lstm_cell_80_matmul_readvariableop_resourceKsequential_103_lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0"
Esequential_103_lstm_311_while_sequential_103_lstm_311_strided_slice_1Gsequential_103_lstm_311_while_sequential_103_lstm_311_strided_slice_1_0"
sequential_103_lstm_311_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_311_tensorarrayunstack_tensorlistfromtensorsequential_103_lstm_311_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_311_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
Asequential_103/lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOpAsequential_103/lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2
@sequential_103/lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp@sequential_103/lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp2
Bsequential_103/lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOpBsequential_103/lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_488702

inputs>
+lstm_cell_79_matmul_readvariableop_resource:	dÈ@
-lstm_cell_79_matmul_1_readvariableop_resource:	2È;
,lstm_cell_79_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_79/BiasAdd/ReadVariableOp˘"lstm_cell_79/MatMul/ReadVariableOp˘$lstm_cell_79/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
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
while_body_488618*
condR
while_cond_488617*K
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
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8

D__inference_lstm_309_layer_call_and_return_conditional_losses_484643

inputs&
lstm_cell_78_484561:	&
lstm_cell_78_484563:	d"
lstm_cell_78_484565:	
identity˘$lstm_cell_78/StatefulPartitionedCall˘while;
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
$lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_78_484561lstm_cell_78_484563lstm_cell_78_484565*
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484515n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_78_484561lstm_cell_78_484563lstm_cell_78_484565*
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
while_body_484574*
condR
while_cond_484573*K
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
NoOpNoOp%^lstm_cell_78/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_78/StatefulPartitionedCall$lstm_cell_78/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô

£
/__inference_sequential_103_layer_call_fn_486467
lstm_309_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_309_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_486415o
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
_user_specified_namelstm_309_input
¤J

D__inference_lstm_309_layer_call_and_return_conditional_losses_486347

inputs>
+lstm_cell_78_matmul_readvariableop_resource:	@
-lstm_cell_78_matmul_1_readvariableop_resource:	d;
,lstm_cell_78_biasadd_readvariableop_resource:	
identity˘#lstm_cell_78/BiasAdd/ReadVariableOp˘"lstm_cell_78/MatMul/ReadVariableOp˘$lstm_cell_78/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
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
while_body_486263*
condR
while_cond_486262*K
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
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_484923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_484923___redundant_placeholder04
0while_while_cond_484923___redundant_placeholder14
0while_while_cond_484923___redundant_placeholder24
0while_while_cond_484923___redundant_placeholder3
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
Ŭ

H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_489403

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
à"
Ŭ
while_body_485083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_80_485107_0:2(-
while_lstm_cell_80_485109_0:
()
while_lstm_cell_80_485111_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_80_485107:2(+
while_lstm_cell_80_485109:
('
while_lstm_cell_80_485111:(˘*while/lstm_cell_80/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_80_485107_0while_lstm_cell_80_485109_0while_lstm_cell_80_485111_0*
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485069Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_80/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_80/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_80/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_80_485107while_lstm_cell_80_485107_0"8
while_lstm_cell_80_485109while_lstm_cell_80_485109_0"8
while_lstm_cell_80_485111while_lstm_cell_80_485111_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_80/StatefulPartitionedCall*while/lstm_cell_80/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_489233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_489233___redundant_placeholder04
0while_while_cond_489233___redundant_placeholder14
0while_while_cond_489233___redundant_placeholder24
0while_while_cond_489233___redundant_placeholder3
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
E__inference_dense_103_layer_call_and_return_conditional_losses_489337

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
?
while_body_488475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_79_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_79_biasadd_readvariableop_resource:	È˘)while/lstm_cell_79/BiasAdd/ReadVariableOp˘(while/lstm_cell_79/MatMul/ReadVariableOp˘*while/lstm_cell_79/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_488947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488947___redundant_placeholder04
0while_while_cond_488947___redundant_placeholder14
0while_while_cond_488947___redundant_placeholder24
0while_while_cond_488947___redundant_placeholder3
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
)sequential_103_lstm_310_while_body_484073L
Hsequential_103_lstm_310_while_sequential_103_lstm_310_while_loop_counterR
Nsequential_103_lstm_310_while_sequential_103_lstm_310_while_maximum_iterations-
)sequential_103_lstm_310_while_placeholder/
+sequential_103_lstm_310_while_placeholder_1/
+sequential_103_lstm_310_while_placeholder_2/
+sequential_103_lstm_310_while_placeholder_3K
Gsequential_103_lstm_310_while_sequential_103_lstm_310_strided_slice_1_0
sequential_103_lstm_310_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_310_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_103_lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈ`
Msequential_103_lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2È[
Lsequential_103_lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0:	È*
&sequential_103_lstm_310_while_identity,
(sequential_103_lstm_310_while_identity_1,
(sequential_103_lstm_310_while_identity_2,
(sequential_103_lstm_310_while_identity_3,
(sequential_103_lstm_310_while_identity_4,
(sequential_103_lstm_310_while_identity_5I
Esequential_103_lstm_310_while_sequential_103_lstm_310_strided_slice_1
sequential_103_lstm_310_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_310_tensorarrayunstack_tensorlistfromtensor\
Isequential_103_lstm_310_while_lstm_cell_79_matmul_readvariableop_resource:	dÈ^
Ksequential_103_lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈY
Jsequential_103_lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource:	È˘Asequential_103/lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp˘@sequential_103/lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp˘Bsequential_103/lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp 
Osequential_103/lstm_310/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
Asequential_103/lstm_310/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_103_lstm_310_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_310_tensorarrayunstack_tensorlistfromtensor_0)sequential_103_lstm_310_while_placeholderXsequential_103/lstm_310/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Í
@sequential_103/lstm_310/while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOpKsequential_103_lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0
1sequential_103/lstm_310/while/lstm_cell_79/MatMulMatMulHsequential_103/lstm_310/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_103/lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
Bsequential_103/lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOpMsequential_103_lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0é
3sequential_103/lstm_310/while/lstm_cell_79/MatMul_1MatMul+sequential_103_lstm_310_while_placeholder_2Jsequential_103/lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èĉ
.sequential_103/lstm_310/while/lstm_cell_79/addAddV2;sequential_103/lstm_310/while/lstm_cell_79/MatMul:product:0=sequential_103/lstm_310/while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈË
Asequential_103/lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOpLsequential_103_lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ï
2sequential_103/lstm_310/while/lstm_cell_79/BiasAddBiasAdd2sequential_103/lstm_310/while/lstm_cell_79/add:z:0Isequential_103/lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È|
:sequential_103/lstm_310/while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_103/lstm_310/while/lstm_cell_79/splitSplitCsequential_103/lstm_310/while/lstm_cell_79/split/split_dim:output:0;sequential_103/lstm_310/while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitŞ
2sequential_103/lstm_310/while/lstm_cell_79/SigmoidSigmoid9sequential_103/lstm_310/while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_103/lstm_310/while/lstm_cell_79/Sigmoid_1Sigmoid9sequential_103/lstm_310/while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
.sequential_103/lstm_310/while/lstm_cell_79/mulMul8sequential_103/lstm_310/while/lstm_cell_79/Sigmoid_1:y:0+sequential_103_lstm_310_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¤
/sequential_103/lstm_310/while/lstm_cell_79/ReluRelu9sequential_103/lstm_310/while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2à
0sequential_103/lstm_310/while/lstm_cell_79/mul_1Mul6sequential_103/lstm_310/while/lstm_cell_79/Sigmoid:y:0=sequential_103/lstm_310/while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ġ
0sequential_103/lstm_310/while/lstm_cell_79/add_1AddV22sequential_103/lstm_310/while/lstm_cell_79/mul:z:04sequential_103/lstm_310/while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_103/lstm_310/while/lstm_cell_79/Sigmoid_2Sigmoid9sequential_103/lstm_310/while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
1sequential_103/lstm_310/while/lstm_cell_79/Relu_1Relu4sequential_103/lstm_310/while/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ä
0sequential_103/lstm_310/while/lstm_cell_79/mul_2Mul8sequential_103/lstm_310/while/lstm_cell_79/Sigmoid_2:y:0?sequential_103/lstm_310/while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
Bsequential_103/lstm_310/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_103_lstm_310_while_placeholder_1)sequential_103_lstm_310_while_placeholder4sequential_103/lstm_310/while/lstm_cell_79/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_103/lstm_310/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_103/lstm_310/while/addAddV2)sequential_103_lstm_310_while_placeholder,sequential_103/lstm_310/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_103/lstm_310/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_103/lstm_310/while/add_1AddV2Hsequential_103_lstm_310_while_sequential_103_lstm_310_while_loop_counter.sequential_103/lstm_310/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_103/lstm_310/while/IdentityIdentity'sequential_103/lstm_310/while/add_1:z:0#^sequential_103/lstm_310/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_103/lstm_310/while/Identity_1IdentityNsequential_103_lstm_310_while_sequential_103_lstm_310_while_maximum_iterations#^sequential_103/lstm_310/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_103/lstm_310/while/Identity_2Identity%sequential_103/lstm_310/while/add:z:0#^sequential_103/lstm_310/while/NoOp*
T0*
_output_shapes
: Î
(sequential_103/lstm_310/while/Identity_3IdentityRsequential_103/lstm_310/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_103/lstm_310/while/NoOp*
T0*
_output_shapes
: Á
(sequential_103/lstm_310/while/Identity_4Identity4sequential_103/lstm_310/while/lstm_cell_79/mul_2:z:0#^sequential_103/lstm_310/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Á
(sequential_103/lstm_310/while/Identity_5Identity4sequential_103/lstm_310/while/lstm_cell_79/add_1:z:0#^sequential_103/lstm_310/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2°
"sequential_103/lstm_310/while/NoOpNoOpB^sequential_103/lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOpA^sequential_103/lstm_310/while/lstm_cell_79/MatMul/ReadVariableOpC^sequential_103/lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_103_lstm_310_while_identity/sequential_103/lstm_310/while/Identity:output:0"]
(sequential_103_lstm_310_while_identity_11sequential_103/lstm_310/while/Identity_1:output:0"]
(sequential_103_lstm_310_while_identity_21sequential_103/lstm_310/while/Identity_2:output:0"]
(sequential_103_lstm_310_while_identity_31sequential_103/lstm_310/while/Identity_3:output:0"]
(sequential_103_lstm_310_while_identity_41sequential_103/lstm_310/while/Identity_4:output:0"]
(sequential_103_lstm_310_while_identity_51sequential_103/lstm_310/while/Identity_5:output:0"
Jsequential_103_lstm_310_while_lstm_cell_79_biasadd_readvariableop_resourceLsequential_103_lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0"
Ksequential_103_lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resourceMsequential_103_lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0"
Isequential_103_lstm_310_while_lstm_cell_79_matmul_readvariableop_resourceKsequential_103_lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0"
Esequential_103_lstm_310_while_sequential_103_lstm_310_strided_slice_1Gsequential_103_lstm_310_while_sequential_103_lstm_310_strided_slice_1_0"
sequential_103_lstm_310_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_310_tensorarrayunstack_tensorlistfromtensorsequential_103_lstm_310_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_310_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
Asequential_103/lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOpAsequential_103/lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2
@sequential_103/lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp@sequential_103/lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp2
Bsequential_103/lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOpBsequential_103/lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
À


$__inference_signature_wrapper_486562
lstm_309_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_309_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_484302o
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
_user_specified_namelstm_309_input
²

÷
lstm_309_while_cond_486674.
*lstm_309_while_lstm_309_while_loop_counter4
0lstm_309_while_lstm_309_while_maximum_iterations
lstm_309_while_placeholder 
lstm_309_while_placeholder_1 
lstm_309_while_placeholder_2 
lstm_309_while_placeholder_30
,lstm_309_while_less_lstm_309_strided_slice_1F
Blstm_309_while_lstm_309_while_cond_486674___redundant_placeholder0F
Blstm_309_while_lstm_309_while_cond_486674___redundant_placeholder1F
Blstm_309_while_lstm_309_while_cond_486674___redundant_placeholder2F
Blstm_309_while_lstm_309_while_cond_486674___redundant_placeholder3
lstm_309_while_identity

lstm_309/while/LessLesslstm_309_while_placeholder,lstm_309_while_less_lstm_309_strided_slice_1*
T0*
_output_shapes
: ]
lstm_309/while/IdentityIdentitylstm_309/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_309_while_identity lstm_309/while/Identity:output:0*(
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
while_cond_488617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488617___redundant_placeholder04
0while_while_cond_488617___redundant_placeholder14
0while_while_cond_488617___redundant_placeholder24
0while_while_cond_488617___redundant_placeholder3
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
ÎB
ê

lstm_311_while_body_487380.
*lstm_311_while_lstm_311_while_loop_counter4
0lstm_311_while_lstm_311_while_maximum_iterations
lstm_311_while_placeholder 
lstm_311_while_placeholder_1 
lstm_311_while_placeholder_2 
lstm_311_while_placeholder_3-
)lstm_311_while_lstm_311_strided_slice_1_0i
elstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0:2(P
>lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(K
=lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0:(
lstm_311_while_identity
lstm_311_while_identity_1
lstm_311_while_identity_2
lstm_311_while_identity_3
lstm_311_while_identity_4
lstm_311_while_identity_5+
'lstm_311_while_lstm_311_strided_slice_1g
clstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensorL
:lstm_311_while_lstm_cell_80_matmul_readvariableop_resource:2(N
<lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource:
(I
;lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource:(˘2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp˘1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp˘3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp
@lstm_311/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_311/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensor_0lstm_311_while_placeholderIlstm_311/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp<lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_311/while/lstm_cell_80/MatMulMatMul9lstm_311/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp>lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_311/while/lstm_cell_80/MatMul_1MatMullstm_311_while_placeholder_2;lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_311/while/lstm_cell_80/addAddV2,lstm_311/while/lstm_cell_80/MatMul:product:0.lstm_311/while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp=lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_311/while/lstm_cell_80/BiasAddBiasAdd#lstm_311/while/lstm_cell_80/add:z:0:lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_311/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_311/while/lstm_cell_80/splitSplit4lstm_311/while/lstm_cell_80/split/split_dim:output:0,lstm_311/while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_311/while/lstm_cell_80/SigmoidSigmoid*lstm_311/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_311/while/lstm_cell_80/Sigmoid_1Sigmoid*lstm_311/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_311/while/lstm_cell_80/mulMul)lstm_311/while/lstm_cell_80/Sigmoid_1:y:0lstm_311_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_311/while/lstm_cell_80/ReluRelu*lstm_311/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_311/while/lstm_cell_80/mul_1Mul'lstm_311/while/lstm_cell_80/Sigmoid:y:0.lstm_311/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_311/while/lstm_cell_80/add_1AddV2#lstm_311/while/lstm_cell_80/mul:z:0%lstm_311/while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_311/while/lstm_cell_80/Sigmoid_2Sigmoid*lstm_311/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_311/while/lstm_cell_80/Relu_1Relu%lstm_311/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_311/while/lstm_cell_80/mul_2Mul)lstm_311/while/lstm_cell_80/Sigmoid_2:y:00lstm_311/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_311/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_311_while_placeholder_1lstm_311_while_placeholder%lstm_311/while/lstm_cell_80/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_311/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_311/while/addAddV2lstm_311_while_placeholderlstm_311/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_311/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_311/while/add_1AddV2*lstm_311_while_lstm_311_while_loop_counterlstm_311/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_311/while/IdentityIdentitylstm_311/while/add_1:z:0^lstm_311/while/NoOp*
T0*
_output_shapes
: 
lstm_311/while/Identity_1Identity0lstm_311_while_lstm_311_while_maximum_iterations^lstm_311/while/NoOp*
T0*
_output_shapes
: t
lstm_311/while/Identity_2Identitylstm_311/while/add:z:0^lstm_311/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_311/while/Identity_3IdentityClstm_311/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_311/while/NoOp*
T0*
_output_shapes
: 
lstm_311/while/Identity_4Identity%lstm_311/while/lstm_cell_80/mul_2:z:0^lstm_311/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/while/Identity_5Identity%lstm_311/while/lstm_cell_80/add_1:z:0^lstm_311/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_311/while/NoOpNoOp3^lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2^lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp4^lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_311_while_identity lstm_311/while/Identity:output:0"?
lstm_311_while_identity_1"lstm_311/while/Identity_1:output:0"?
lstm_311_while_identity_2"lstm_311/while/Identity_2:output:0"?
lstm_311_while_identity_3"lstm_311/while/Identity_3:output:0"?
lstm_311_while_identity_4"lstm_311/while/Identity_4:output:0"?
lstm_311_while_identity_5"lstm_311/while/Identity_5:output:0"T
'lstm_311_while_lstm_311_strided_slice_1)lstm_311_while_lstm_311_strided_slice_1_0"|
;lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource=lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0"~
<lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource>lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0"z
:lstm_311_while_lstm_cell_80_matmul_readvariableop_resource<lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0"Ì
clstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensorelstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2f
1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp2j
3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

µ
)__inference_lstm_311_layer_call_fn_488713
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_485152o
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
Ä

*__inference_dense_103_layer_call_fn_489327

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
E__inference_dense_103_layer_call_and_return_conditional_losses_485819o
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

ĥ
)__inference_lstm_309_layer_call_fn_487514

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
D__inference_lstm_309_layer_call_and_return_conditional_losses_486347s
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
µ
?
while_cond_485416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_485416___redundant_placeholder04
0while_while_cond_485416___redundant_placeholder14
0while_while_cond_485416___redundant_placeholder24
0while_while_cond_485416___redundant_placeholder3
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_487800
inputs_0>
+lstm_cell_78_matmul_readvariableop_resource:	@
-lstm_cell_78_matmul_1_readvariableop_resource:	d;
,lstm_cell_78_biasadd_readvariableop_resource:	
identity˘#lstm_cell_78/BiasAdd/ReadVariableOp˘"lstm_cell_78/MatMul/ReadVariableOp˘$lstm_cell_78/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
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
while_body_487716*
condR
while_cond_487715*K
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
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_310_layer_call_and_return_conditional_losses_488273
inputs_0>
+lstm_cell_79_matmul_readvariableop_resource:	dÈ@
-lstm_cell_79_matmul_1_readvariableop_resource:	2È;
,lstm_cell_79_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_79/BiasAdd/ReadVariableOp˘"lstm_cell_79/MatMul/ReadVariableOp˘$lstm_cell_79/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
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
while_body_488189*
condR
while_cond_488188*K
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
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ğ
¸
)__inference_lstm_309_layer_call_fn_487481
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_484452|
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

µ
)__inference_lstm_311_layer_call_fn_488724
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_485343o
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
à"
Ŭ
while_body_485274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_80_485298_0:2(-
while_lstm_cell_80_485300_0:
()
while_lstm_cell_80_485302_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_80_485298:2(+
while_lstm_cell_80_485300:
('
while_lstm_cell_80_485302:(˘*while/lstm_cell_80/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_80_485298_0while_lstm_cell_80_485300_0while_lstm_cell_80_485302_0*
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485215Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_80/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_80/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_80/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_80_485298while_lstm_cell_80_485298_0"8
while_lstm_cell_80_485300while_lstm_cell_80_485300_0"8
while_lstm_cell_80_485302while_lstm_cell_80_485302_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_80/StatefulPartitionedCall*while/lstm_cell_80/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ĉ"
?
while_body_484574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_78_484598_0:	.
while_lstm_cell_78_484600_0:	d*
while_lstm_cell_78_484602_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_78_484598:	,
while_lstm_cell_78_484600:	d(
while_lstm_cell_78_484602:	˘*while/lstm_cell_78/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_78_484598_0while_lstm_cell_78_484600_0while_lstm_cell_78_484602_0*
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484515Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_78/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_78/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_78/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_78/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_78_484598while_lstm_cell_78_484598_0"8
while_lstm_cell_78_484600while_lstm_cell_78_484600_0"8
while_lstm_cell_78_484602while_lstm_cell_78_484602_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_78/StatefulPartitionedCall*while/lstm_cell_78/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_487943

inputs>
+lstm_cell_78_matmul_readvariableop_resource:	@
-lstm_cell_78_matmul_1_readvariableop_resource:	d;
,lstm_cell_78_biasadd_readvariableop_resource:	
identity˘#lstm_cell_78/BiasAdd/ReadVariableOp˘"lstm_cell_78/MatMul/ReadVariableOp˘$lstm_cell_78/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
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
while_body_487859*
condR
while_cond_487858*K
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
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÛB
?

lstm_309_while_body_487102.
*lstm_309_while_lstm_309_while_loop_counter4
0lstm_309_while_lstm_309_while_maximum_iterations
lstm_309_while_placeholder 
lstm_309_while_placeholder_1 
lstm_309_while_placeholder_2 
lstm_309_while_placeholder_3-
)lstm_309_while_lstm_309_strided_slice_1_0i
elstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0:	Q
>lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dL
=lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0:	
lstm_309_while_identity
lstm_309_while_identity_1
lstm_309_while_identity_2
lstm_309_while_identity_3
lstm_309_while_identity_4
lstm_309_while_identity_5+
'lstm_309_while_lstm_309_strided_slice_1g
clstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensorM
:lstm_309_while_lstm_cell_78_matmul_readvariableop_resource:	O
<lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource:	dJ
;lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource:	˘2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp˘1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp˘3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp
@lstm_309/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_309/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensor_0lstm_309_while_placeholderIlstm_309/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp<lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_309/while/lstm_cell_78/MatMulMatMul9lstm_309/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp>lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_309/while/lstm_cell_78/MatMul_1MatMullstm_309_while_placeholder_2;lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_309/while/lstm_cell_78/addAddV2,lstm_309/while/lstm_cell_78/MatMul:product:0.lstm_309/while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp=lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_309/while/lstm_cell_78/BiasAddBiasAdd#lstm_309/while/lstm_cell_78/add:z:0:lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_309/while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_309/while/lstm_cell_78/splitSplit4lstm_309/while/lstm_cell_78/split/split_dim:output:0,lstm_309/while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_309/while/lstm_cell_78/SigmoidSigmoid*lstm_309/while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_309/while/lstm_cell_78/Sigmoid_1Sigmoid*lstm_309/while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_309/while/lstm_cell_78/mulMul)lstm_309/while/lstm_cell_78/Sigmoid_1:y:0lstm_309_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_309/while/lstm_cell_78/ReluRelu*lstm_309/while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_309/while/lstm_cell_78/mul_1Mul'lstm_309/while/lstm_cell_78/Sigmoid:y:0.lstm_309/while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_309/while/lstm_cell_78/add_1AddV2#lstm_309/while/lstm_cell_78/mul:z:0%lstm_309/while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_309/while/lstm_cell_78/Sigmoid_2Sigmoid*lstm_309/while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_309/while/lstm_cell_78/Relu_1Relu%lstm_309/while/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_309/while/lstm_cell_78/mul_2Mul)lstm_309/while/lstm_cell_78/Sigmoid_2:y:00lstm_309/while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_309/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_309_while_placeholder_1lstm_309_while_placeholder%lstm_309/while/lstm_cell_78/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_309/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_309/while/addAddV2lstm_309_while_placeholderlstm_309/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_309/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_309/while/add_1AddV2*lstm_309_while_lstm_309_while_loop_counterlstm_309/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_309/while/IdentityIdentitylstm_309/while/add_1:z:0^lstm_309/while/NoOp*
T0*
_output_shapes
: 
lstm_309/while/Identity_1Identity0lstm_309_while_lstm_309_while_maximum_iterations^lstm_309/while/NoOp*
T0*
_output_shapes
: t
lstm_309/while/Identity_2Identitylstm_309/while/add:z:0^lstm_309/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_309/while/Identity_3IdentityClstm_309/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_309/while/NoOp*
T0*
_output_shapes
: 
lstm_309/while/Identity_4Identity%lstm_309/while/lstm_cell_78/mul_2:z:0^lstm_309/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/while/Identity_5Identity%lstm_309/while/lstm_cell_78/add_1:z:0^lstm_309/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_309/while/NoOpNoOp3^lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2^lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp4^lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_309_while_identity lstm_309/while/Identity:output:0"?
lstm_309_while_identity_1"lstm_309/while/Identity_1:output:0"?
lstm_309_while_identity_2"lstm_309/while/Identity_2:output:0"?
lstm_309_while_identity_3"lstm_309/while/Identity_3:output:0"?
lstm_309_while_identity_4"lstm_309/while/Identity_4:output:0"?
lstm_309_while_identity_5"lstm_309/while/Identity_5:output:0"T
'lstm_309_while_lstm_309_strided_slice_1)lstm_309_while_lstm_309_strided_slice_1_0"|
;lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource=lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0"~
<lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource>lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0"z
:lstm_309_while_lstm_cell_78_matmul_readvariableop_resource<lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0"Ì
clstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensorelstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2f
1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp2j
3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_488805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:2(E
3while_lstm_cell_80_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_80_biasadd_readvariableop_resource:(˘)while/lstm_cell_80/BiasAdd/ReadVariableOp˘(while/lstm_cell_80/MatMul/ReadVariableOp˘*while/lstm_cell_80/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_485716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_485716___redundant_placeholder04
0while_while_cond_485716___redundant_placeholder14
0while_while_cond_485716___redundant_placeholder24
0while_while_cond_485716___redundant_placeholder3
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
while_body_487573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_78_matmul_readvariableop_resource_0:	H
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_78_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_78_matmul_readvariableop_resource:	F
3while_lstm_cell_78_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_78_biasadd_readvariableop_resource:	˘)while/lstm_cell_78/BiasAdd/ReadVariableOp˘(while/lstm_cell_78/MatMul/ReadVariableOp˘*while/lstm_cell_78/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_489435

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
while_cond_485273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_485273___redundant_placeholder04
0while_while_cond_485273___redundant_placeholder14
0while_while_cond_485273___redundant_placeholder24
0while_while_cond_485273___redundant_placeholder3
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_489599

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
âJ

D__inference_lstm_310_layer_call_and_return_conditional_losses_488416
inputs_0>
+lstm_cell_79_matmul_readvariableop_resource:	dÈ@
-lstm_cell_79_matmul_1_readvariableop_resource:	2È;
,lstm_cell_79_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_79/BiasAdd/ReadVariableOp˘"lstm_cell_79/MatMul/ReadVariableOp˘$lstm_cell_79/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
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
while_body_488332*
condR
while_cond_488331*K
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
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ġ

H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484515

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
µ
?
while_cond_487715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_487715___redundant_placeholder04
0while_while_cond_487715___redundant_placeholder14
0while_while_cond_487715___redundant_placeholder24
0while_while_cond_487715___redundant_placeholder3
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
while_body_488948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:2(E
3while_lstm_cell_80_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_80_biasadd_readvariableop_resource:(˘)while/lstm_cell_80/BiasAdd/ReadVariableOp˘(while/lstm_cell_80/MatMul/ReadVariableOp˘*while/lstm_cell_80/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĉ"
?
while_body_484383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_78_484407_0:	.
while_lstm_cell_78_484409_0:	d*
while_lstm_cell_78_484411_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_78_484407:	,
while_lstm_cell_78_484409:	d(
while_lstm_cell_78_484411:	˘*while/lstm_cell_78/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_78_484407_0while_lstm_cell_78_484409_0while_lstm_cell_78_484411_0*
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484369Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_78/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_78/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_78/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_78/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_78_484407while_lstm_cell_78_484407_0"8
while_lstm_cell_78_484409while_lstm_cell_78_484409_0"8
while_lstm_cell_78_484411while_lstm_cell_78_484411_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_78/StatefulPartitionedCall*while/lstm_cell_78/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_484732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_484732___redundant_placeholder04
0while_while_cond_484732___redundant_placeholder14
0while_while_cond_484732___redundant_placeholder24
0while_while_cond_484732___redundant_placeholder3
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
while_body_484924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_79_484948_0:	dÈ.
while_lstm_cell_79_484950_0:	2È*
while_lstm_cell_79_484952_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_79_484948:	dÈ,
while_lstm_cell_79_484950:	2È(
while_lstm_cell_79_484952:	È˘*while/lstm_cell_79/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_79_484948_0while_lstm_cell_79_484950_0while_lstm_cell_79_484952_0*
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484865Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_79/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_79/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_79/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_79/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_79_484948while_lstm_cell_79_484948_0"8
while_lstm_cell_79_484950while_lstm_cell_79_484950_0"8
while_lstm_cell_79_484952while_lstm_cell_79_484952_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_79/StatefulPartitionedCall*while/lstm_cell_79/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
è
ó
-__inference_lstm_cell_80_layer_call_fn_489550

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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485069o
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
Ü


/__inference_sequential_103_layer_call_fn_486589

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
J__inference_sequential_103_layer_call_and_return_conditional_losses_485826o
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
while_cond_485566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_485566___redundant_placeholder04
0while_while_cond_485566___redundant_placeholder14
0while_while_cond_485566___redundant_placeholder24
0while_while_cond_485566___redundant_placeholder3
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
)__inference_lstm_310_layer_call_fn_488119

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
D__inference_lstm_310_layer_call_and_return_conditional_losses_485651s
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
while_cond_484573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_484573___redundant_placeholder04
0while_while_cond_484573___redundant_placeholder14
0while_while_cond_484573___redundant_placeholder24
0while_while_cond_484573___redundant_placeholder3
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
Ï
÷
J__inference_sequential_103_layer_call_and_return_conditional_losses_486527
lstm_309_input"
lstm_309_486500:	"
lstm_309_486502:	d
lstm_309_486504:	"
lstm_310_486507:	dÈ"
lstm_310_486509:	2È
lstm_310_486511:	È!
lstm_311_486514:2(!
lstm_311_486516:
(
lstm_311_486518:("
dense_103_486521:

dense_103_486523:
identity˘!dense_103/StatefulPartitionedCall˘ lstm_309/StatefulPartitionedCall˘ lstm_310/StatefulPartitionedCall˘ lstm_311/StatefulPartitionedCall
 lstm_309/StatefulPartitionedCallStatefulPartitionedCalllstm_309_inputlstm_309_486500lstm_309_486502lstm_309_486504*
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_486347Ş
 lstm_310/StatefulPartitionedCallStatefulPartitionedCall)lstm_309/StatefulPartitionedCall:output:0lstm_310_486507lstm_310_486509lstm_310_486511*
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_486182Ĥ
 lstm_311/StatefulPartitionedCallStatefulPartitionedCall)lstm_310/StatefulPartitionedCall:output:0lstm_311_486514lstm_311_486516lstm_311_486518*
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_486017
!dense_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_311/StatefulPartitionedCall:output:0dense_103_486521dense_103_486523*
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
E__inference_dense_103_layer_call_and_return_conditional_losses_485819y
IdentityIdentity*dense_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_103/StatefulPartitionedCall!^lstm_309/StatefulPartitionedCall!^lstm_310/StatefulPartitionedCall!^lstm_311/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2D
 lstm_309/StatefulPartitionedCall lstm_309/StatefulPartitionedCall2D
 lstm_310/StatefulPartitionedCall lstm_310/StatefulPartitionedCall2D
 lstm_311/StatefulPartitionedCall lstm_311/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_309_input
·
ï
J__inference_sequential_103_layer_call_and_return_conditional_losses_485826

inputs"
lstm_309_485502:	"
lstm_309_485504:	d
lstm_309_485506:	"
lstm_310_485652:	dÈ"
lstm_310_485654:	2È
lstm_310_485656:	È!
lstm_311_485802:2(!
lstm_311_485804:
(
lstm_311_485806:("
dense_103_485820:

dense_103_485822:
identity˘!dense_103/StatefulPartitionedCall˘ lstm_309/StatefulPartitionedCall˘ lstm_310/StatefulPartitionedCall˘ lstm_311/StatefulPartitionedCall
 lstm_309/StatefulPartitionedCallStatefulPartitionedCallinputslstm_309_485502lstm_309_485504lstm_309_485506*
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_485501Ş
 lstm_310/StatefulPartitionedCallStatefulPartitionedCall)lstm_309/StatefulPartitionedCall:output:0lstm_310_485652lstm_310_485654lstm_310_485656*
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_485651Ĥ
 lstm_311/StatefulPartitionedCallStatefulPartitionedCall)lstm_310/StatefulPartitionedCall:output:0lstm_311_485802lstm_311_485804lstm_311_485806*
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_485801
!dense_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_311/StatefulPartitionedCall:output:0dense_103_485820dense_103_485822*
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
E__inference_dense_103_layer_call_and_return_conditional_losses_485819y
IdentityIdentity*dense_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_103/StatefulPartitionedCall!^lstm_309/StatefulPartitionedCall!^lstm_310/StatefulPartitionedCall!^lstm_311/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2D
 lstm_309/StatefulPartitionedCall lstm_309/StatefulPartitionedCall2D
 lstm_310/StatefulPartitionedCall lstm_310/StatefulPartitionedCall2D
 lstm_311/StatefulPartitionedCall lstm_311/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²

÷
lstm_311_while_cond_486952.
*lstm_311_while_lstm_311_while_loop_counter4
0lstm_311_while_lstm_311_while_maximum_iterations
lstm_311_while_placeholder 
lstm_311_while_placeholder_1 
lstm_311_while_placeholder_2 
lstm_311_while_placeholder_30
,lstm_311_while_less_lstm_311_strided_slice_1F
Blstm_311_while_lstm_311_while_cond_486952___redundant_placeholder0F
Blstm_311_while_lstm_311_while_cond_486952___redundant_placeholder1F
Blstm_311_while_lstm_311_while_cond_486952___redundant_placeholder2F
Blstm_311_while_lstm_311_while_cond_486952___redundant_placeholder3
lstm_311_while_identity

lstm_311/while/LessLesslstm_311_while_placeholder,lstm_311_while_less_lstm_311_strided_slice_1*
T0*
_output_shapes
: ]
lstm_311/while/IdentityIdentitylstm_311/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_311_while_identity lstm_311/while/Identity:output:0*(
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484719

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
ë
ö
-__inference_lstm_cell_78_layer_call_fn_489371

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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484515o
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
while_cond_488804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488804___redundant_placeholder04
0while_while_cond_488804___redundant_placeholder14
0while_while_cond_488804___redundant_placeholder24
0while_while_cond_488804___redundant_placeholder3
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_489533

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
µ
?
while_cond_487858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_487858___redundant_placeholder04
0while_while_cond_487858___redundant_placeholder14
0while_while_cond_487858___redundant_placeholder24
0while_while_cond_487858___redundant_placeholder3
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
while_body_485717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:2(E
3while_lstm_cell_80_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_80_biasadd_readvariableop_resource:(˘)while/lstm_cell_80/BiasAdd/ReadVariableOp˘(while/lstm_cell_80/MatMul/ReadVariableOp˘*while/lstm_cell_80/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ó¤

"__inference__traced_restore_489904
file_prefix3
!assignvariableop_dense_103_kernel:
/
!assignvariableop_1_dense_103_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_309_lstm_cell_309_kernel:	M
:assignvariableop_8_lstm_309_lstm_cell_309_recurrent_kernel:	d=
.assignvariableop_9_lstm_309_lstm_cell_309_bias:	D
1assignvariableop_10_lstm_310_lstm_cell_310_kernel:	dÈN
;assignvariableop_11_lstm_310_lstm_cell_310_recurrent_kernel:	2È>
/assignvariableop_12_lstm_310_lstm_cell_310_bias:	ÈC
1assignvariableop_13_lstm_311_lstm_cell_311_kernel:2(M
;assignvariableop_14_lstm_311_lstm_cell_311_recurrent_kernel:
(=
/assignvariableop_15_lstm_311_lstm_cell_311_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_103_kernel_m:
7
)assignvariableop_19_adam_dense_103_bias_m:K
8assignvariableop_20_adam_lstm_309_lstm_cell_309_kernel_m:	U
Bassignvariableop_21_adam_lstm_309_lstm_cell_309_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_309_lstm_cell_309_bias_m:	K
8assignvariableop_23_adam_lstm_310_lstm_cell_310_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_310_lstm_cell_310_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_310_lstm_cell_310_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_311_lstm_cell_311_kernel_m:2(T
Bassignvariableop_27_adam_lstm_311_lstm_cell_311_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_311_lstm_cell_311_bias_m:(=
+assignvariableop_29_adam_dense_103_kernel_v:
7
)assignvariableop_30_adam_dense_103_bias_v:K
8assignvariableop_31_adam_lstm_309_lstm_cell_309_kernel_v:	U
Bassignvariableop_32_adam_lstm_309_lstm_cell_309_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_309_lstm_cell_309_bias_v:	K
8assignvariableop_34_adam_lstm_310_lstm_cell_310_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_310_lstm_cell_310_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_310_lstm_cell_310_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_311_lstm_cell_311_kernel_v:2(T
Bassignvariableop_38_adam_lstm_311_lstm_cell_311_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_311_lstm_cell_311_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_103_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_103_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_309_lstm_cell_309_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_309_lstm_cell_309_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_309_lstm_cell_309_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_310_lstm_cell_310_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_310_lstm_cell_310_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_310_lstm_cell_310_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_311_lstm_cell_311_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_311_lstm_cell_311_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_311_lstm_cell_311_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_103_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_103_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_309_lstm_cell_309_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_309_lstm_cell_309_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_309_lstm_cell_309_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_310_lstm_cell_310_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_310_lstm_cell_310_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_310_lstm_cell_310_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_311_lstm_cell_311_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_311_lstm_cell_311_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_311_lstm_cell_311_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_103_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_103_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_309_lstm_cell_309_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_309_lstm_cell_309_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_309_lstm_cell_309_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_310_lstm_cell_310_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_310_lstm_cell_310_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_310_lstm_cell_310_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_311_lstm_cell_311_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_311_lstm_cell_311_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_311_lstm_cell_311_bias_vIdentity_39:output:0"/device:CPU:0*
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
¤J

D__inference_lstm_310_layer_call_and_return_conditional_losses_488559

inputs>
+lstm_cell_79_matmul_readvariableop_resource:	dÈ@
-lstm_cell_79_matmul_1_readvariableop_resource:	2È;
,lstm_cell_79_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_79/BiasAdd/ReadVariableOp˘"lstm_cell_79/MatMul/ReadVariableOp˘$lstm_cell_79/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
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
while_body_488475*
condR
while_cond_488474*K
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
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_488474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488474___redundant_placeholder04
0while_while_cond_488474___redundant_placeholder14
0while_while_cond_488474___redundant_placeholder24
0while_while_cond_488474___redundant_placeholder3
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
²

÷
lstm_310_while_cond_486813.
*lstm_310_while_lstm_310_while_loop_counter4
0lstm_310_while_lstm_310_while_maximum_iterations
lstm_310_while_placeholder 
lstm_310_while_placeholder_1 
lstm_310_while_placeholder_2 
lstm_310_while_placeholder_30
,lstm_310_while_less_lstm_310_strided_slice_1F
Blstm_310_while_lstm_310_while_cond_486813___redundant_placeholder0F
Blstm_310_while_lstm_310_while_cond_486813___redundant_placeholder1F
Blstm_310_while_lstm_310_while_cond_486813___redundant_placeholder2F
Blstm_310_while_lstm_310_while_cond_486813___redundant_placeholder3
lstm_310_while_identity

lstm_310/while/LessLesslstm_310_while_placeholder,lstm_310_while_less_lstm_310_strided_slice_1*
T0*
_output_shapes
: ]
lstm_310/while/IdentityIdentitylstm_310/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_310_while_identity lstm_310/while/Identity:output:0*(
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
while_body_487859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_78_matmul_readvariableop_resource_0:	H
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_78_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_78_matmul_readvariableop_resource:	F
3while_lstm_cell_78_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_78_biasadd_readvariableop_resource:	˘)while/lstm_cell_78/BiasAdd/ReadVariableOp˘(while/lstm_cell_78/MatMul/ReadVariableOp˘*while/lstm_cell_78/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĥT
Ô
)sequential_103_lstm_309_while_body_483934L
Hsequential_103_lstm_309_while_sequential_103_lstm_309_while_loop_counterR
Nsequential_103_lstm_309_while_sequential_103_lstm_309_while_maximum_iterations-
)sequential_103_lstm_309_while_placeholder/
+sequential_103_lstm_309_while_placeholder_1/
+sequential_103_lstm_309_while_placeholder_2/
+sequential_103_lstm_309_while_placeholder_3K
Gsequential_103_lstm_309_while_sequential_103_lstm_309_strided_slice_1_0
sequential_103_lstm_309_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_309_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_103_lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0:	`
Msequential_103_lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0:	d[
Lsequential_103_lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0:	*
&sequential_103_lstm_309_while_identity,
(sequential_103_lstm_309_while_identity_1,
(sequential_103_lstm_309_while_identity_2,
(sequential_103_lstm_309_while_identity_3,
(sequential_103_lstm_309_while_identity_4,
(sequential_103_lstm_309_while_identity_5I
Esequential_103_lstm_309_while_sequential_103_lstm_309_strided_slice_1
sequential_103_lstm_309_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_309_tensorarrayunstack_tensorlistfromtensor\
Isequential_103_lstm_309_while_lstm_cell_78_matmul_readvariableop_resource:	^
Ksequential_103_lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource:	dY
Jsequential_103_lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource:	˘Asequential_103/lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp˘@sequential_103/lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp˘Bsequential_103/lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp 
Osequential_103/lstm_309/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Asequential_103/lstm_309/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_103_lstm_309_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_309_tensorarrayunstack_tensorlistfromtensor_0)sequential_103_lstm_309_while_placeholderXsequential_103/lstm_309/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Í
@sequential_103/lstm_309/while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOpKsequential_103_lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_103/lstm_309/while/lstm_cell_78/MatMulMatMulHsequential_103/lstm_309/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_103/lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
Bsequential_103/lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOpMsequential_103_lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0é
3sequential_103/lstm_309/while/lstm_cell_78/MatMul_1MatMul+sequential_103_lstm_309_while_placeholder_2Jsequential_103/lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĉ
.sequential_103/lstm_309/while/lstm_cell_78/addAddV2;sequential_103/lstm_309/while/lstm_cell_78/MatMul:product:0=sequential_103/lstm_309/while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
Asequential_103/lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOpLsequential_103_lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ï
2sequential_103/lstm_309/while/lstm_cell_78/BiasAddBiasAdd2sequential_103/lstm_309/while/lstm_cell_78/add:z:0Isequential_103/lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_103/lstm_309/while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_103/lstm_309/while/lstm_cell_78/splitSplitCsequential_103/lstm_309/while/lstm_cell_78/split/split_dim:output:0;sequential_103/lstm_309/while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitŞ
2sequential_103/lstm_309/while/lstm_cell_78/SigmoidSigmoid9sequential_103/lstm_309/while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_103/lstm_309/while/lstm_cell_78/Sigmoid_1Sigmoid9sequential_103/lstm_309/while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
.sequential_103/lstm_309/while/lstm_cell_78/mulMul8sequential_103/lstm_309/while/lstm_cell_78/Sigmoid_1:y:0+sequential_103_lstm_309_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¤
/sequential_103/lstm_309/while/lstm_cell_78/ReluRelu9sequential_103/lstm_309/while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dà
0sequential_103/lstm_309/while/lstm_cell_78/mul_1Mul6sequential_103/lstm_309/while/lstm_cell_78/Sigmoid:y:0=sequential_103/lstm_309/while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĠ
0sequential_103/lstm_309/while/lstm_cell_78/add_1AddV22sequential_103/lstm_309/while/lstm_cell_78/mul:z:04sequential_103/lstm_309/while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_103/lstm_309/while/lstm_cell_78/Sigmoid_2Sigmoid9sequential_103/lstm_309/while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
1sequential_103/lstm_309/while/lstm_cell_78/Relu_1Relu4sequential_103/lstm_309/while/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dä
0sequential_103/lstm_309/while/lstm_cell_78/mul_2Mul8sequential_103/lstm_309/while/lstm_cell_78/Sigmoid_2:y:0?sequential_103/lstm_309/while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
Bsequential_103/lstm_309/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_103_lstm_309_while_placeholder_1)sequential_103_lstm_309_while_placeholder4sequential_103/lstm_309/while/lstm_cell_78/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_103/lstm_309/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_103/lstm_309/while/addAddV2)sequential_103_lstm_309_while_placeholder,sequential_103/lstm_309/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_103/lstm_309/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_103/lstm_309/while/add_1AddV2Hsequential_103_lstm_309_while_sequential_103_lstm_309_while_loop_counter.sequential_103/lstm_309/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_103/lstm_309/while/IdentityIdentity'sequential_103/lstm_309/while/add_1:z:0#^sequential_103/lstm_309/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_103/lstm_309/while/Identity_1IdentityNsequential_103_lstm_309_while_sequential_103_lstm_309_while_maximum_iterations#^sequential_103/lstm_309/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_103/lstm_309/while/Identity_2Identity%sequential_103/lstm_309/while/add:z:0#^sequential_103/lstm_309/while/NoOp*
T0*
_output_shapes
: Î
(sequential_103/lstm_309/while/Identity_3IdentityRsequential_103/lstm_309/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_103/lstm_309/while/NoOp*
T0*
_output_shapes
: Á
(sequential_103/lstm_309/while/Identity_4Identity4sequential_103/lstm_309/while/lstm_cell_78/mul_2:z:0#^sequential_103/lstm_309/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÁ
(sequential_103/lstm_309/while/Identity_5Identity4sequential_103/lstm_309/while/lstm_cell_78/add_1:z:0#^sequential_103/lstm_309/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d°
"sequential_103/lstm_309/while/NoOpNoOpB^sequential_103/lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOpA^sequential_103/lstm_309/while/lstm_cell_78/MatMul/ReadVariableOpC^sequential_103/lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_103_lstm_309_while_identity/sequential_103/lstm_309/while/Identity:output:0"]
(sequential_103_lstm_309_while_identity_11sequential_103/lstm_309/while/Identity_1:output:0"]
(sequential_103_lstm_309_while_identity_21sequential_103/lstm_309/while/Identity_2:output:0"]
(sequential_103_lstm_309_while_identity_31sequential_103/lstm_309/while/Identity_3:output:0"]
(sequential_103_lstm_309_while_identity_41sequential_103/lstm_309/while/Identity_4:output:0"]
(sequential_103_lstm_309_while_identity_51sequential_103/lstm_309/while/Identity_5:output:0"
Jsequential_103_lstm_309_while_lstm_cell_78_biasadd_readvariableop_resourceLsequential_103_lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0"
Ksequential_103_lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resourceMsequential_103_lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0"
Isequential_103_lstm_309_while_lstm_cell_78_matmul_readvariableop_resourceKsequential_103_lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0"
Esequential_103_lstm_309_while_sequential_103_lstm_309_strided_slice_1Gsequential_103_lstm_309_while_sequential_103_lstm_309_strided_slice_1_0"
sequential_103_lstm_309_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_309_tensorarrayunstack_tensorlistfromtensorsequential_103_lstm_309_while_tensorarrayv2read_tensorlistgetitem_sequential_103_lstm_309_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
Asequential_103/lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOpAsequential_103/lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2
@sequential_103/lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp@sequential_103/lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp2
Bsequential_103/lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOpBsequential_103/lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_486182

inputs>
+lstm_cell_79_matmul_readvariableop_resource:	dÈ@
-lstm_cell_79_matmul_1_readvariableop_resource:	2È;
,lstm_cell_79_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_79/BiasAdd/ReadVariableOp˘"lstm_cell_79/MatMul/ReadVariableOp˘$lstm_cell_79/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
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
while_body_486098*
condR
while_cond_486097*K
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
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ë

H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485069

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
Ğ
¸
)__inference_lstm_309_layer_call_fn_487492
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_484643|
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
˙7
Ê
while_body_489091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:2(E
3while_lstm_cell_80_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_80_biasadd_readvariableop_resource:(˘)while/lstm_cell_80/BiasAdd/ReadVariableOp˘(while/lstm_cell_80/MatMul/ReadVariableOp˘*while/lstm_cell_80/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_489318

inputs=
+lstm_cell_80_matmul_readvariableop_resource:2(?
-lstm_cell_80_matmul_1_readvariableop_resource:
(:
,lstm_cell_80_biasadd_readvariableop_resource:(
identity˘#lstm_cell_80/BiasAdd/ReadVariableOp˘"lstm_cell_80/MatMul/ReadVariableOp˘$lstm_cell_80/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
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
while_body_489234*
condR
while_cond_489233*K
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
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_487716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_78_matmul_readvariableop_resource_0:	H
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_78_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_78_matmul_readvariableop_resource:	F
3while_lstm_cell_78_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_78_biasadd_readvariableop_resource:	˘)while/lstm_cell_78/BiasAdd/ReadVariableOp˘(while/lstm_cell_78/MatMul/ReadVariableOp˘*while/lstm_cell_78/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_485501

inputs>
+lstm_cell_78_matmul_readvariableop_resource:	@
-lstm_cell_78_matmul_1_readvariableop_resource:	d;
,lstm_cell_78_biasadd_readvariableop_resource:	
identity˘#lstm_cell_78/BiasAdd/ReadVariableOp˘"lstm_cell_78/MatMul/ReadVariableOp˘$lstm_cell_78/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
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
while_body_485417*
condR
while_cond_485416*K
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
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_78_layer_call_fn_489354

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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484369o
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
Ö
£
)sequential_103_lstm_311_while_cond_484211L
Hsequential_103_lstm_311_while_sequential_103_lstm_311_while_loop_counterR
Nsequential_103_lstm_311_while_sequential_103_lstm_311_while_maximum_iterations-
)sequential_103_lstm_311_while_placeholder/
+sequential_103_lstm_311_while_placeholder_1/
+sequential_103_lstm_311_while_placeholder_2/
+sequential_103_lstm_311_while_placeholder_3N
Jsequential_103_lstm_311_while_less_sequential_103_lstm_311_strided_slice_1d
`sequential_103_lstm_311_while_sequential_103_lstm_311_while_cond_484211___redundant_placeholder0d
`sequential_103_lstm_311_while_sequential_103_lstm_311_while_cond_484211___redundant_placeholder1d
`sequential_103_lstm_311_while_sequential_103_lstm_311_while_cond_484211___redundant_placeholder2d
`sequential_103_lstm_311_while_sequential_103_lstm_311_while_cond_484211___redundant_placeholder3*
&sequential_103_lstm_311_while_identity
Â
"sequential_103/lstm_311/while/LessLess)sequential_103_lstm_311_while_placeholderJsequential_103_lstm_311_while_less_sequential_103_lstm_311_strided_slice_1*
T0*
_output_shapes
: {
&sequential_103/lstm_311/while/IdentityIdentity&sequential_103/lstm_311/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_103_lstm_311_while_identity/sequential_103/lstm_311/while/Identity:output:0*(
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
Ğ
¸
)__inference_lstm_310_layer_call_fn_488097
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_484802|
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
8
?
while_body_486263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_78_matmul_readvariableop_resource_0:	H
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_78_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_78_matmul_readvariableop_resource:	F
3while_lstm_cell_78_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_78_biasadd_readvariableop_resource:	˘)while/lstm_cell_78/BiasAdd/ReadVariableOp˘(while/lstm_cell_78/MatMul/ReadVariableOp˘*while/lstm_cell_78/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ĉ

J__inference_sequential_103_layer_call_and_return_conditional_losses_487043

inputsG
4lstm_309_lstm_cell_78_matmul_readvariableop_resource:	I
6lstm_309_lstm_cell_78_matmul_1_readvariableop_resource:	dD
5lstm_309_lstm_cell_78_biasadd_readvariableop_resource:	G
4lstm_310_lstm_cell_79_matmul_readvariableop_resource:	dÈI
6lstm_310_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈD
5lstm_310_lstm_cell_79_biasadd_readvariableop_resource:	ÈF
4lstm_311_lstm_cell_80_matmul_readvariableop_resource:2(H
6lstm_311_lstm_cell_80_matmul_1_readvariableop_resource:
(C
5lstm_311_lstm_cell_80_biasadd_readvariableop_resource:(:
(dense_103_matmul_readvariableop_resource:
7
)dense_103_biasadd_readvariableop_resource:
identity˘ dense_103/BiasAdd/ReadVariableOp˘dense_103/MatMul/ReadVariableOp˘,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp˘+lstm_309/lstm_cell_78/MatMul/ReadVariableOp˘-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp˘lstm_309/while˘,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp˘+lstm_310/lstm_cell_79/MatMul/ReadVariableOp˘-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp˘lstm_310/while˘,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp˘+lstm_311/lstm_cell_80/MatMul/ReadVariableOp˘-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp˘lstm_311/whileD
lstm_309/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_309/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_309/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_309/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_309/strided_sliceStridedSlicelstm_309/Shape:output:0%lstm_309/strided_slice/stack:output:0'lstm_309/strided_slice/stack_1:output:0'lstm_309/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_309/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_309/zeros/packedPacklstm_309/strided_slice:output:0 lstm_309/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_309/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_309/zerosFilllstm_309/zeros/packed:output:0lstm_309/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_309/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_309/zeros_1/packedPacklstm_309/strided_slice:output:0"lstm_309/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_309/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_309/zeros_1Fill lstm_309/zeros_1/packed:output:0lstm_309/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_309/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_309/transpose	Transposeinputs lstm_309/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_309/Shape_1Shapelstm_309/transpose:y:0*
T0*
_output_shapes
:h
lstm_309/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_309/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_309/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_309/strided_slice_1StridedSlicelstm_309/Shape_1:output:0'lstm_309/strided_slice_1/stack:output:0)lstm_309/strided_slice_1/stack_1:output:0)lstm_309/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_309/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_309/TensorArrayV2TensorListReserve-lstm_309/TensorArrayV2/element_shape:output:0!lstm_309/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_309/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_309/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_309/transpose:y:0Glstm_309/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_309/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_309/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_309/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_309/strided_slice_2StridedSlicelstm_309/transpose:y:0'lstm_309/strided_slice_2/stack:output:0)lstm_309/strided_slice_2/stack_1:output:0)lstm_309/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_309/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp4lstm_309_lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_309/lstm_cell_78/MatMulMatMul!lstm_309/strided_slice_2:output:03lstm_309/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp6lstm_309_lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_309/lstm_cell_78/MatMul_1MatMullstm_309/zeros:output:05lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_309/lstm_cell_78/addAddV2&lstm_309/lstm_cell_78/MatMul:product:0(lstm_309/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp5lstm_309_lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_309/lstm_cell_78/BiasAddBiasAddlstm_309/lstm_cell_78/add:z:04lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_309/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_309/lstm_cell_78/splitSplit.lstm_309/lstm_cell_78/split/split_dim:output:0&lstm_309/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_309/lstm_cell_78/SigmoidSigmoid$lstm_309/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/Sigmoid_1Sigmoid$lstm_309/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/mulMul#lstm_309/lstm_cell_78/Sigmoid_1:y:0lstm_309/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_309/lstm_cell_78/ReluRelu$lstm_309/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_309/lstm_cell_78/mul_1Mul!lstm_309/lstm_cell_78/Sigmoid:y:0(lstm_309/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/add_1AddV2lstm_309/lstm_cell_78/mul:z:0lstm_309/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/lstm_cell_78/Sigmoid_2Sigmoid$lstm_309/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_309/lstm_cell_78/Relu_1Relulstm_309/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_309/lstm_cell_78/mul_2Mul#lstm_309/lstm_cell_78/Sigmoid_2:y:0*lstm_309/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_309/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_309/TensorArrayV2_1TensorListReserve/lstm_309/TensorArrayV2_1/element_shape:output:0!lstm_309/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_309/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_309/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_309/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_309/whileWhile$lstm_309/while/loop_counter:output:0*lstm_309/while/maximum_iterations:output:0lstm_309/time:output:0!lstm_309/TensorArrayV2_1:handle:0lstm_309/zeros:output:0lstm_309/zeros_1:output:0!lstm_309/strided_slice_1:output:0@lstm_309/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_309_lstm_cell_78_matmul_readvariableop_resource6lstm_309_lstm_cell_78_matmul_1_readvariableop_resource5lstm_309_lstm_cell_78_biasadd_readvariableop_resource*
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
lstm_309_while_body_486675*&
condR
lstm_309_while_cond_486674*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_309/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_309/TensorArrayV2Stack/TensorListStackTensorListStacklstm_309/while:output:3Blstm_309/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_309/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_309/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_309/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_309/strided_slice_3StridedSlice4lstm_309/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_309/strided_slice_3/stack:output:0)lstm_309/strided_slice_3/stack_1:output:0)lstm_309/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_309/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_309/transpose_1	Transpose4lstm_309/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_309/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_309/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_310/ShapeShapelstm_309/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_310/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_310/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_310/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_310/strided_sliceStridedSlicelstm_310/Shape:output:0%lstm_310/strided_slice/stack:output:0'lstm_310/strided_slice/stack_1:output:0'lstm_310/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_310/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_310/zeros/packedPacklstm_310/strided_slice:output:0 lstm_310/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_310/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_310/zerosFilllstm_310/zeros/packed:output:0lstm_310/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_310/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_310/zeros_1/packedPacklstm_310/strided_slice:output:0"lstm_310/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_310/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_310/zeros_1Fill lstm_310/zeros_1/packed:output:0lstm_310/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_310/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_310/transpose	Transposelstm_309/transpose_1:y:0 lstm_310/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_310/Shape_1Shapelstm_310/transpose:y:0*
T0*
_output_shapes
:h
lstm_310/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_310/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_310/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_310/strided_slice_1StridedSlicelstm_310/Shape_1:output:0'lstm_310/strided_slice_1/stack:output:0)lstm_310/strided_slice_1/stack_1:output:0)lstm_310/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_310/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_310/TensorArrayV2TensorListReserve-lstm_310/TensorArrayV2/element_shape:output:0!lstm_310/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_310/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_310/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_310/transpose:y:0Glstm_310/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_310/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_310/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_310/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_310/strided_slice_2StridedSlicelstm_310/transpose:y:0'lstm_310/strided_slice_2/stack:output:0)lstm_310/strided_slice_2/stack_1:output:0)lstm_310/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_310/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp4lstm_310_lstm_cell_79_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_310/lstm_cell_79/MatMulMatMul!lstm_310/strided_slice_2:output:03lstm_310/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp6lstm_310_lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_310/lstm_cell_79/MatMul_1MatMullstm_310/zeros:output:05lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_310/lstm_cell_79/addAddV2&lstm_310/lstm_cell_79/MatMul:product:0(lstm_310/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp5lstm_310_lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_310/lstm_cell_79/BiasAddBiasAddlstm_310/lstm_cell_79/add:z:04lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_310/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_310/lstm_cell_79/splitSplit.lstm_310/lstm_cell_79/split/split_dim:output:0&lstm_310/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_310/lstm_cell_79/SigmoidSigmoid$lstm_310/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/Sigmoid_1Sigmoid$lstm_310/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/mulMul#lstm_310/lstm_cell_79/Sigmoid_1:y:0lstm_310/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_310/lstm_cell_79/ReluRelu$lstm_310/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_310/lstm_cell_79/mul_1Mul!lstm_310/lstm_cell_79/Sigmoid:y:0(lstm_310/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/add_1AddV2lstm_310/lstm_cell_79/mul:z:0lstm_310/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/lstm_cell_79/Sigmoid_2Sigmoid$lstm_310/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_310/lstm_cell_79/Relu_1Relulstm_310/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_310/lstm_cell_79/mul_2Mul#lstm_310/lstm_cell_79/Sigmoid_2:y:0*lstm_310/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_310/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_310/TensorArrayV2_1TensorListReserve/lstm_310/TensorArrayV2_1/element_shape:output:0!lstm_310/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_310/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_310/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_310/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_310/whileWhile$lstm_310/while/loop_counter:output:0*lstm_310/while/maximum_iterations:output:0lstm_310/time:output:0!lstm_310/TensorArrayV2_1:handle:0lstm_310/zeros:output:0lstm_310/zeros_1:output:0!lstm_310/strided_slice_1:output:0@lstm_310/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_310_lstm_cell_79_matmul_readvariableop_resource6lstm_310_lstm_cell_79_matmul_1_readvariableop_resource5lstm_310_lstm_cell_79_biasadd_readvariableop_resource*
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
lstm_310_while_body_486814*&
condR
lstm_310_while_cond_486813*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_310/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_310/TensorArrayV2Stack/TensorListStackTensorListStacklstm_310/while:output:3Blstm_310/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_310/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_310/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_310/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_310/strided_slice_3StridedSlice4lstm_310/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_310/strided_slice_3/stack:output:0)lstm_310/strided_slice_3/stack_1:output:0)lstm_310/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_310/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_310/transpose_1	Transpose4lstm_310/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_310/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_310/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_311/ShapeShapelstm_310/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_311/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_311/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_311/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_311/strided_sliceStridedSlicelstm_311/Shape:output:0%lstm_311/strided_slice/stack:output:0'lstm_311/strided_slice/stack_1:output:0'lstm_311/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_311/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_311/zeros/packedPacklstm_311/strided_slice:output:0 lstm_311/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_311/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_311/zerosFilllstm_311/zeros/packed:output:0lstm_311/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_311/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_311/zeros_1/packedPacklstm_311/strided_slice:output:0"lstm_311/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_311/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_311/zeros_1Fill lstm_311/zeros_1/packed:output:0lstm_311/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_311/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_311/transpose	Transposelstm_310/transpose_1:y:0 lstm_311/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_311/Shape_1Shapelstm_311/transpose:y:0*
T0*
_output_shapes
:h
lstm_311/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_311/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_311/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_311/strided_slice_1StridedSlicelstm_311/Shape_1:output:0'lstm_311/strided_slice_1/stack:output:0)lstm_311/strided_slice_1/stack_1:output:0)lstm_311/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_311/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_311/TensorArrayV2TensorListReserve-lstm_311/TensorArrayV2/element_shape:output:0!lstm_311/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_311/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_311/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_311/transpose:y:0Glstm_311/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_311/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_311/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_311/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_311/strided_slice_2StridedSlicelstm_311/transpose:y:0'lstm_311/strided_slice_2/stack:output:0)lstm_311/strided_slice_2/stack_1:output:0)lstm_311/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_311/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp4lstm_311_lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_311/lstm_cell_80/MatMulMatMul!lstm_311/strided_slice_2:output:03lstm_311/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp6lstm_311_lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_311/lstm_cell_80/MatMul_1MatMullstm_311/zeros:output:05lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_311/lstm_cell_80/addAddV2&lstm_311/lstm_cell_80/MatMul:product:0(lstm_311/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp5lstm_311_lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_311/lstm_cell_80/BiasAddBiasAddlstm_311/lstm_cell_80/add:z:04lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_311/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_311/lstm_cell_80/splitSplit.lstm_311/lstm_cell_80/split/split_dim:output:0&lstm_311/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_311/lstm_cell_80/SigmoidSigmoid$lstm_311/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/Sigmoid_1Sigmoid$lstm_311/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/mulMul#lstm_311/lstm_cell_80/Sigmoid_1:y:0lstm_311/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_311/lstm_cell_80/ReluRelu$lstm_311/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_311/lstm_cell_80/mul_1Mul!lstm_311/lstm_cell_80/Sigmoid:y:0(lstm_311/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/add_1AddV2lstm_311/lstm_cell_80/mul:z:0lstm_311/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/lstm_cell_80/Sigmoid_2Sigmoid$lstm_311/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_311/lstm_cell_80/Relu_1Relulstm_311/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_311/lstm_cell_80/mul_2Mul#lstm_311/lstm_cell_80/Sigmoid_2:y:0*lstm_311/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_311/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_311/TensorArrayV2_1TensorListReserve/lstm_311/TensorArrayV2_1/element_shape:output:0!lstm_311/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_311/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_311/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_311/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_311/whileWhile$lstm_311/while/loop_counter:output:0*lstm_311/while/maximum_iterations:output:0lstm_311/time:output:0!lstm_311/TensorArrayV2_1:handle:0lstm_311/zeros:output:0lstm_311/zeros_1:output:0!lstm_311/strided_slice_1:output:0@lstm_311/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_311_lstm_cell_80_matmul_readvariableop_resource6lstm_311_lstm_cell_80_matmul_1_readvariableop_resource5lstm_311_lstm_cell_80_biasadd_readvariableop_resource*
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
lstm_311_while_body_486953*&
condR
lstm_311_while_cond_486952*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_311/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_311/TensorArrayV2Stack/TensorListStackTensorListStacklstm_311/while:output:3Blstm_311/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_311/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_311/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_311/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_311/strided_slice_3StridedSlice4lstm_311/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_311/strided_slice_3/stack:output:0)lstm_311/strided_slice_3/stack_1:output:0)lstm_311/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_311/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_311/transpose_1	Transpose4lstm_311/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_311/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_311/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_103/MatMulMatMul!lstm_311/strided_slice_3:output:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_103/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp-^lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp,^lstm_309/lstm_cell_78/MatMul/ReadVariableOp.^lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp^lstm_309/while-^lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp,^lstm_310/lstm_cell_79/MatMul/ReadVariableOp.^lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp^lstm_310/while-^lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp,^lstm_311/lstm_cell_80/MatMul/ReadVariableOp.^lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp^lstm_311/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2\
,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp,lstm_309/lstm_cell_78/BiasAdd/ReadVariableOp2Z
+lstm_309/lstm_cell_78/MatMul/ReadVariableOp+lstm_309/lstm_cell_78/MatMul/ReadVariableOp2^
-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp-lstm_309/lstm_cell_78/MatMul_1/ReadVariableOp2 
lstm_309/whilelstm_309/while2\
,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp,lstm_310/lstm_cell_79/BiasAdd/ReadVariableOp2Z
+lstm_310/lstm_cell_79/MatMul/ReadVariableOp+lstm_310/lstm_cell_79/MatMul/ReadVariableOp2^
-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp-lstm_310/lstm_cell_79/MatMul_1/ReadVariableOp2 
lstm_310/whilelstm_310/while2\
,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp,lstm_311/lstm_cell_80/BiasAdd/ReadVariableOp2Z
+lstm_311/lstm_cell_80/MatMul/ReadVariableOp+lstm_311/lstm_cell_80/MatMul/ReadVariableOp2^
-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp-lstm_311/lstm_cell_80/MatMul_1/ReadVariableOp2 
lstm_311/whilelstm_311/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_309_layer_call_and_return_conditional_losses_488086

inputs>
+lstm_cell_78_matmul_readvariableop_resource:	@
-lstm_cell_78_matmul_1_readvariableop_resource:	d;
,lstm_cell_78_biasadd_readvariableop_resource:	
identity˘#lstm_cell_78/BiasAdd/ReadVariableOp˘"lstm_cell_78/MatMul/ReadVariableOp˘$lstm_cell_78/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
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
while_body_488002*
condR
while_cond_488001*K
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
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_486262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_486262___redundant_placeholder04
0while_while_cond_486262___redundant_placeholder14
0while_while_cond_486262___redundant_placeholder24
0while_while_cond_486262___redundant_placeholder3
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
ÛB
?

lstm_310_while_body_486814.
*lstm_310_while_lstm_310_while_loop_counter4
0lstm_310_while_lstm_310_while_maximum_iterations
lstm_310_while_placeholder 
lstm_310_while_placeholder_1 
lstm_310_while_placeholder_2 
lstm_310_while_placeholder_3-
)lstm_310_while_lstm_310_strided_slice_1_0i
elstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈQ
>lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
lstm_310_while_identity
lstm_310_while_identity_1
lstm_310_while_identity_2
lstm_310_while_identity_3
lstm_310_while_identity_4
lstm_310_while_identity_5+
'lstm_310_while_lstm_310_strided_slice_1g
clstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensorM
:lstm_310_while_lstm_cell_79_matmul_readvariableop_resource:	dÈO
<lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈJ
;lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource:	È˘2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp˘1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp˘3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp
@lstm_310/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_310/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensor_0lstm_310_while_placeholderIlstm_310/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp<lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_310/while/lstm_cell_79/MatMulMatMul9lstm_310/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp>lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_310/while/lstm_cell_79/MatMul_1MatMullstm_310_while_placeholder_2;lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_310/while/lstm_cell_79/addAddV2,lstm_310/while/lstm_cell_79/MatMul:product:0.lstm_310/while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp=lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_310/while/lstm_cell_79/BiasAddBiasAdd#lstm_310/while/lstm_cell_79/add:z:0:lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_310/while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_310/while/lstm_cell_79/splitSplit4lstm_310/while/lstm_cell_79/split/split_dim:output:0,lstm_310/while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_310/while/lstm_cell_79/SigmoidSigmoid*lstm_310/while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_310/while/lstm_cell_79/Sigmoid_1Sigmoid*lstm_310/while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_310/while/lstm_cell_79/mulMul)lstm_310/while/lstm_cell_79/Sigmoid_1:y:0lstm_310_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_310/while/lstm_cell_79/ReluRelu*lstm_310/while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_310/while/lstm_cell_79/mul_1Mul'lstm_310/while/lstm_cell_79/Sigmoid:y:0.lstm_310/while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_310/while/lstm_cell_79/add_1AddV2#lstm_310/while/lstm_cell_79/mul:z:0%lstm_310/while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_310/while/lstm_cell_79/Sigmoid_2Sigmoid*lstm_310/while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_310/while/lstm_cell_79/Relu_1Relu%lstm_310/while/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_310/while/lstm_cell_79/mul_2Mul)lstm_310/while/lstm_cell_79/Sigmoid_2:y:00lstm_310/while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_310/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_310_while_placeholder_1lstm_310_while_placeholder%lstm_310/while/lstm_cell_79/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_310/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_310/while/addAddV2lstm_310_while_placeholderlstm_310/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_310/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_310/while/add_1AddV2*lstm_310_while_lstm_310_while_loop_counterlstm_310/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_310/while/IdentityIdentitylstm_310/while/add_1:z:0^lstm_310/while/NoOp*
T0*
_output_shapes
: 
lstm_310/while/Identity_1Identity0lstm_310_while_lstm_310_while_maximum_iterations^lstm_310/while/NoOp*
T0*
_output_shapes
: t
lstm_310/while/Identity_2Identitylstm_310/while/add:z:0^lstm_310/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_310/while/Identity_3IdentityClstm_310/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_310/while/NoOp*
T0*
_output_shapes
: 
lstm_310/while/Identity_4Identity%lstm_310/while/lstm_cell_79/mul_2:z:0^lstm_310/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/while/Identity_5Identity%lstm_310/while/lstm_cell_79/add_1:z:0^lstm_310/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_310/while/NoOpNoOp3^lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2^lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp4^lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_310_while_identity lstm_310/while/Identity:output:0"?
lstm_310_while_identity_1"lstm_310/while/Identity_1:output:0"?
lstm_310_while_identity_2"lstm_310/while/Identity_2:output:0"?
lstm_310_while_identity_3"lstm_310/while/Identity_3:output:0"?
lstm_310_while_identity_4"lstm_310/while/Identity_4:output:0"?
lstm_310_while_identity_5"lstm_310/while/Identity_5:output:0"T
'lstm_310_while_lstm_310_strided_slice_1)lstm_310_while_lstm_310_strided_slice_1_0"|
;lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource=lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0"~
<lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource>lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0"z
:lstm_310_while_lstm_cell_79_matmul_readvariableop_resource<lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0"Ì
clstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensorelstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2f
1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp2j
3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_310_layer_call_fn_488108
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_484993|
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
Ġ

H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484865

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
Ö
£
)sequential_103_lstm_310_while_cond_484072L
Hsequential_103_lstm_310_while_sequential_103_lstm_310_while_loop_counterR
Nsequential_103_lstm_310_while_sequential_103_lstm_310_while_maximum_iterations-
)sequential_103_lstm_310_while_placeholder/
+sequential_103_lstm_310_while_placeholder_1/
+sequential_103_lstm_310_while_placeholder_2/
+sequential_103_lstm_310_while_placeholder_3N
Jsequential_103_lstm_310_while_less_sequential_103_lstm_310_strided_slice_1d
`sequential_103_lstm_310_while_sequential_103_lstm_310_while_cond_484072___redundant_placeholder0d
`sequential_103_lstm_310_while_sequential_103_lstm_310_while_cond_484072___redundant_placeholder1d
`sequential_103_lstm_310_while_sequential_103_lstm_310_while_cond_484072___redundant_placeholder2d
`sequential_103_lstm_310_while_sequential_103_lstm_310_while_cond_484072___redundant_placeholder3*
&sequential_103_lstm_310_while_identity
Â
"sequential_103/lstm_310/while/LessLess)sequential_103_lstm_310_while_placeholderJsequential_103_lstm_310_while_less_sequential_103_lstm_310_strided_slice_1*
T0*
_output_shapes
: {
&sequential_103/lstm_310/while/IdentityIdentity&sequential_103/lstm_310/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_103_lstm_310_while_identity/sequential_103/lstm_310/while/Identity:output:0*(
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
while_cond_486097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_486097___redundant_placeholder04
0while_while_cond_486097___redundant_placeholder14
0while_while_cond_486097___redundant_placeholder24
0while_while_cond_486097___redundant_placeholder3
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
8

D__inference_lstm_310_layer_call_and_return_conditional_losses_484802

inputs&
lstm_cell_79_484720:	dÈ&
lstm_cell_79_484722:	2È"
lstm_cell_79_484724:	È
identity˘$lstm_cell_79/StatefulPartitionedCall˘while;
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
$lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_79_484720lstm_cell_79_484722lstm_cell_79_484724*
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484719n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_79_484720lstm_cell_79_484722lstm_cell_79_484724*
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
while_body_484733*
condR
while_cond_484732*K
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
NoOpNoOp%^lstm_cell_79/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_79/StatefulPartitionedCall$lstm_cell_79/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_484369

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
ÔJ

D__inference_lstm_311_layer_call_and_return_conditional_losses_489032
inputs_0=
+lstm_cell_80_matmul_readvariableop_resource:2(?
-lstm_cell_80_matmul_1_readvariableop_resource:
(:
,lstm_cell_80_biasadd_readvariableop_resource:(
identity˘#lstm_cell_80/BiasAdd/ReadVariableOp˘"lstm_cell_80/MatMul/ReadVariableOp˘$lstm_cell_80/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
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
while_body_488948*
condR
while_cond_488947*K
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
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
·
ï
J__inference_sequential_103_layer_call_and_return_conditional_losses_486415

inputs"
lstm_309_486388:	"
lstm_309_486390:	d
lstm_309_486392:	"
lstm_310_486395:	dÈ"
lstm_310_486397:	2È
lstm_310_486399:	È!
lstm_311_486402:2(!
lstm_311_486404:
(
lstm_311_486406:("
dense_103_486409:

dense_103_486411:
identity˘!dense_103/StatefulPartitionedCall˘ lstm_309/StatefulPartitionedCall˘ lstm_310/StatefulPartitionedCall˘ lstm_311/StatefulPartitionedCall
 lstm_309/StatefulPartitionedCallStatefulPartitionedCallinputslstm_309_486388lstm_309_486390lstm_309_486392*
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_486347Ş
 lstm_310/StatefulPartitionedCallStatefulPartitionedCall)lstm_309/StatefulPartitionedCall:output:0lstm_310_486395lstm_310_486397lstm_310_486399*
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_486182Ĥ
 lstm_311/StatefulPartitionedCallStatefulPartitionedCall)lstm_310/StatefulPartitionedCall:output:0lstm_311_486402lstm_311_486404lstm_311_486406*
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_486017
!dense_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_311/StatefulPartitionedCall:output:0dense_103_486409dense_103_486411*
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
E__inference_dense_103_layer_call_and_return_conditional_losses_485819y
IdentityIdentity*dense_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_103/StatefulPartitionedCall!^lstm_309/StatefulPartitionedCall!^lstm_310/StatefulPartitionedCall!^lstm_311/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2D
 lstm_309/StatefulPartitionedCall lstm_309/StatefulPartitionedCall2D
 lstm_310/StatefulPartitionedCall lstm_310/StatefulPartitionedCall2D
 lstm_311/StatefulPartitionedCall lstm_311/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ö
£
)sequential_103_lstm_309_while_cond_483933L
Hsequential_103_lstm_309_while_sequential_103_lstm_309_while_loop_counterR
Nsequential_103_lstm_309_while_sequential_103_lstm_309_while_maximum_iterations-
)sequential_103_lstm_309_while_placeholder/
+sequential_103_lstm_309_while_placeholder_1/
+sequential_103_lstm_309_while_placeholder_2/
+sequential_103_lstm_309_while_placeholder_3N
Jsequential_103_lstm_309_while_less_sequential_103_lstm_309_strided_slice_1d
`sequential_103_lstm_309_while_sequential_103_lstm_309_while_cond_483933___redundant_placeholder0d
`sequential_103_lstm_309_while_sequential_103_lstm_309_while_cond_483933___redundant_placeholder1d
`sequential_103_lstm_309_while_sequential_103_lstm_309_while_cond_483933___redundant_placeholder2d
`sequential_103_lstm_309_while_sequential_103_lstm_309_while_cond_483933___redundant_placeholder3*
&sequential_103_lstm_309_while_identity
Â
"sequential_103/lstm_309/while/LessLess)sequential_103_lstm_309_while_placeholderJsequential_103_lstm_309_while_less_sequential_103_lstm_309_strided_slice_1*
T0*
_output_shapes
: {
&sequential_103/lstm_309/while/IdentityIdentity&sequential_103/lstm_309/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_103_lstm_309_while_identity/sequential_103/lstm_309/while/Identity:output:0*(
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
lstm_309_while_cond_487101.
*lstm_309_while_lstm_309_while_loop_counter4
0lstm_309_while_lstm_309_while_maximum_iterations
lstm_309_while_placeholder 
lstm_309_while_placeholder_1 
lstm_309_while_placeholder_2 
lstm_309_while_placeholder_30
,lstm_309_while_less_lstm_309_strided_slice_1F
Blstm_309_while_lstm_309_while_cond_487101___redundant_placeholder0F
Blstm_309_while_lstm_309_while_cond_487101___redundant_placeholder1F
Blstm_309_while_lstm_309_while_cond_487101___redundant_placeholder2F
Blstm_309_while_lstm_309_while_cond_487101___redundant_placeholder3
lstm_309_while_identity

lstm_309/while/LessLesslstm_309_while_placeholder,lstm_309_while_less_lstm_309_strided_slice_1*
T0*
_output_shapes
: ]
lstm_309/while/IdentityIdentitylstm_309/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_309_while_identity lstm_309/while/Identity:output:0*(
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
while_body_485933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:2(E
3while_lstm_cell_80_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_80_biasadd_readvariableop_resource:(˘)while/lstm_cell_80/BiasAdd/ReadVariableOp˘(while/lstm_cell_80/MatMul/ReadVariableOp˘*while/lstm_cell_80/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_488618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_79_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_79_biasadd_readvariableop_resource:	È˘)while/lstm_cell_79/BiasAdd/ReadVariableOp˘(while/lstm_cell_79/MatMul/ReadVariableOp˘*while/lstm_cell_79/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_311_while_body_486953.
*lstm_311_while_lstm_311_while_loop_counter4
0lstm_311_while_lstm_311_while_maximum_iterations
lstm_311_while_placeholder 
lstm_311_while_placeholder_1 
lstm_311_while_placeholder_2 
lstm_311_while_placeholder_3-
)lstm_311_while_lstm_311_strided_slice_1_0i
elstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0:2(P
>lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(K
=lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0:(
lstm_311_while_identity
lstm_311_while_identity_1
lstm_311_while_identity_2
lstm_311_while_identity_3
lstm_311_while_identity_4
lstm_311_while_identity_5+
'lstm_311_while_lstm_311_strided_slice_1g
clstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensorL
:lstm_311_while_lstm_cell_80_matmul_readvariableop_resource:2(N
<lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource:
(I
;lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource:(˘2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp˘1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp˘3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp
@lstm_311/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_311/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensor_0lstm_311_while_placeholderIlstm_311/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp<lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_311/while/lstm_cell_80/MatMulMatMul9lstm_311/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp>lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_311/while/lstm_cell_80/MatMul_1MatMullstm_311_while_placeholder_2;lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_311/while/lstm_cell_80/addAddV2,lstm_311/while/lstm_cell_80/MatMul:product:0.lstm_311/while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp=lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_311/while/lstm_cell_80/BiasAddBiasAdd#lstm_311/while/lstm_cell_80/add:z:0:lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_311/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_311/while/lstm_cell_80/splitSplit4lstm_311/while/lstm_cell_80/split/split_dim:output:0,lstm_311/while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_311/while/lstm_cell_80/SigmoidSigmoid*lstm_311/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_311/while/lstm_cell_80/Sigmoid_1Sigmoid*lstm_311/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_311/while/lstm_cell_80/mulMul)lstm_311/while/lstm_cell_80/Sigmoid_1:y:0lstm_311_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_311/while/lstm_cell_80/ReluRelu*lstm_311/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_311/while/lstm_cell_80/mul_1Mul'lstm_311/while/lstm_cell_80/Sigmoid:y:0.lstm_311/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_311/while/lstm_cell_80/add_1AddV2#lstm_311/while/lstm_cell_80/mul:z:0%lstm_311/while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_311/while/lstm_cell_80/Sigmoid_2Sigmoid*lstm_311/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_311/while/lstm_cell_80/Relu_1Relu%lstm_311/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_311/while/lstm_cell_80/mul_2Mul)lstm_311/while/lstm_cell_80/Sigmoid_2:y:00lstm_311/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_311/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_311_while_placeholder_1lstm_311_while_placeholder%lstm_311/while/lstm_cell_80/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_311/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_311/while/addAddV2lstm_311_while_placeholderlstm_311/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_311/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_311/while/add_1AddV2*lstm_311_while_lstm_311_while_loop_counterlstm_311/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_311/while/IdentityIdentitylstm_311/while/add_1:z:0^lstm_311/while/NoOp*
T0*
_output_shapes
: 
lstm_311/while/Identity_1Identity0lstm_311_while_lstm_311_while_maximum_iterations^lstm_311/while/NoOp*
T0*
_output_shapes
: t
lstm_311/while/Identity_2Identitylstm_311/while/add:z:0^lstm_311/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_311/while/Identity_3IdentityClstm_311/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_311/while/NoOp*
T0*
_output_shapes
: 
lstm_311/while/Identity_4Identity%lstm_311/while/lstm_cell_80/mul_2:z:0^lstm_311/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_311/while/Identity_5Identity%lstm_311/while/lstm_cell_80/add_1:z:0^lstm_311/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_311/while/NoOpNoOp3^lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2^lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp4^lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_311_while_identity lstm_311/while/Identity:output:0"?
lstm_311_while_identity_1"lstm_311/while/Identity_1:output:0"?
lstm_311_while_identity_2"lstm_311/while/Identity_2:output:0"?
lstm_311_while_identity_3"lstm_311/while/Identity_3:output:0"?
lstm_311_while_identity_4"lstm_311/while/Identity_4:output:0"?
lstm_311_while_identity_5"lstm_311/while/Identity_5:output:0"T
'lstm_311_while_lstm_311_strided_slice_1)lstm_311_while_lstm_311_strided_slice_1_0"|
;lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource=lstm_311_while_lstm_cell_80_biasadd_readvariableop_resource_0"~
<lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource>lstm_311_while_lstm_cell_80_matmul_1_readvariableop_resource_0"z
:lstm_311_while_lstm_cell_80_matmul_readvariableop_resource<lstm_311_while_lstm_cell_80_matmul_readvariableop_resource_0"Ì
clstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensorelstm_311_while_tensorarrayv2read_tensorlistgetitem_lstm_311_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2lstm_311/while/lstm_cell_80/BiasAdd/ReadVariableOp2f
1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp1lstm_311/while/lstm_cell_80/MatMul/ReadVariableOp2j
3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp3lstm_311/while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_488188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488188___redundant_placeholder04
0while_while_cond_488188___redundant_placeholder14
0while_while_cond_488188___redundant_placeholder24
0while_while_cond_488188___redundant_placeholder3
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
Ü


/__inference_sequential_103_layer_call_fn_486616

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
J__inference_sequential_103_layer_call_and_return_conditional_losses_486415o
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
8
?
while_body_485417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_78_matmul_readvariableop_resource_0:	H
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_78_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_78_matmul_readvariableop_resource:	F
3while_lstm_cell_78_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_78_biasadd_readvariableop_resource:	˘)while/lstm_cell_78/BiasAdd/ReadVariableOp˘(while/lstm_cell_78/MatMul/ReadVariableOp˘*while/lstm_cell_78/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÔJ

D__inference_lstm_311_layer_call_and_return_conditional_losses_488889
inputs_0=
+lstm_cell_80_matmul_readvariableop_resource:2(?
-lstm_cell_80_matmul_1_readvariableop_resource:
(:
,lstm_cell_80_biasadd_readvariableop_resource:(
identity˘#lstm_cell_80/BiasAdd/ReadVariableOp˘"lstm_cell_80/MatMul/ReadVariableOp˘$lstm_cell_80/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
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
while_body_488805*
condR
while_cond_488804*K
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
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
µ
?
while_cond_488331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_488331___redundant_placeholder04
0while_while_cond_488331___redundant_placeholder14
0while_while_cond_488331___redundant_placeholder24
0while_while_cond_488331___redundant_placeholder3
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_485343

inputs%
lstm_cell_80_485261:2(%
lstm_cell_80_485263:
(!
lstm_cell_80_485265:(
identity˘$lstm_cell_80/StatefulPartitionedCall˘while;
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
$lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_80_485261lstm_cell_80_485263lstm_cell_80_485265*
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_485215n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_80_485261lstm_cell_80_485263lstm_cell_80_485265*
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
while_body_485274*
condR
while_cond_485273*K
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
NoOpNoOp%^lstm_cell_80/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_80/StatefulPartitionedCall$lstm_cell_80/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÛB
?

lstm_310_while_body_487241.
*lstm_310_while_lstm_310_while_loop_counter4
0lstm_310_while_lstm_310_while_maximum_iterations
lstm_310_while_placeholder 
lstm_310_while_placeholder_1 
lstm_310_while_placeholder_2 
lstm_310_while_placeholder_3-
)lstm_310_while_lstm_310_strided_slice_1_0i
elstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈQ
>lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
lstm_310_while_identity
lstm_310_while_identity_1
lstm_310_while_identity_2
lstm_310_while_identity_3
lstm_310_while_identity_4
lstm_310_while_identity_5+
'lstm_310_while_lstm_310_strided_slice_1g
clstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensorM
:lstm_310_while_lstm_cell_79_matmul_readvariableop_resource:	dÈO
<lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈJ
;lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource:	È˘2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp˘1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp˘3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp
@lstm_310/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_310/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensor_0lstm_310_while_placeholderIlstm_310/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp<lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_310/while/lstm_cell_79/MatMulMatMul9lstm_310/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp>lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_310/while/lstm_cell_79/MatMul_1MatMullstm_310_while_placeholder_2;lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_310/while/lstm_cell_79/addAddV2,lstm_310/while/lstm_cell_79/MatMul:product:0.lstm_310/while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp=lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_310/while/lstm_cell_79/BiasAddBiasAdd#lstm_310/while/lstm_cell_79/add:z:0:lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_310/while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_310/while/lstm_cell_79/splitSplit4lstm_310/while/lstm_cell_79/split/split_dim:output:0,lstm_310/while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_310/while/lstm_cell_79/SigmoidSigmoid*lstm_310/while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_310/while/lstm_cell_79/Sigmoid_1Sigmoid*lstm_310/while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_310/while/lstm_cell_79/mulMul)lstm_310/while/lstm_cell_79/Sigmoid_1:y:0lstm_310_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_310/while/lstm_cell_79/ReluRelu*lstm_310/while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_310/while/lstm_cell_79/mul_1Mul'lstm_310/while/lstm_cell_79/Sigmoid:y:0.lstm_310/while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_310/while/lstm_cell_79/add_1AddV2#lstm_310/while/lstm_cell_79/mul:z:0%lstm_310/while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_310/while/lstm_cell_79/Sigmoid_2Sigmoid*lstm_310/while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_310/while/lstm_cell_79/Relu_1Relu%lstm_310/while/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_310/while/lstm_cell_79/mul_2Mul)lstm_310/while/lstm_cell_79/Sigmoid_2:y:00lstm_310/while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_310/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_310_while_placeholder_1lstm_310_while_placeholder%lstm_310/while/lstm_cell_79/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_310/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_310/while/addAddV2lstm_310_while_placeholderlstm_310/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_310/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_310/while/add_1AddV2*lstm_310_while_lstm_310_while_loop_counterlstm_310/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_310/while/IdentityIdentitylstm_310/while/add_1:z:0^lstm_310/while/NoOp*
T0*
_output_shapes
: 
lstm_310/while/Identity_1Identity0lstm_310_while_lstm_310_while_maximum_iterations^lstm_310/while/NoOp*
T0*
_output_shapes
: t
lstm_310/while/Identity_2Identitylstm_310/while/add:z:0^lstm_310/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_310/while/Identity_3IdentityClstm_310/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_310/while/NoOp*
T0*
_output_shapes
: 
lstm_310/while/Identity_4Identity%lstm_310/while/lstm_cell_79/mul_2:z:0^lstm_310/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_310/while/Identity_5Identity%lstm_310/while/lstm_cell_79/add_1:z:0^lstm_310/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_310/while/NoOpNoOp3^lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2^lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp4^lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_310_while_identity lstm_310/while/Identity:output:0"?
lstm_310_while_identity_1"lstm_310/while/Identity_1:output:0"?
lstm_310_while_identity_2"lstm_310/while/Identity_2:output:0"?
lstm_310_while_identity_3"lstm_310/while/Identity_3:output:0"?
lstm_310_while_identity_4"lstm_310/while/Identity_4:output:0"?
lstm_310_while_identity_5"lstm_310/while/Identity_5:output:0"T
'lstm_310_while_lstm_310_strided_slice_1)lstm_310_while_lstm_310_strided_slice_1_0"|
;lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource=lstm_310_while_lstm_cell_79_biasadd_readvariableop_resource_0"~
<lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource>lstm_310_while_lstm_cell_79_matmul_1_readvariableop_resource_0"z
:lstm_310_while_lstm_cell_79_matmul_readvariableop_resource<lstm_310_while_lstm_cell_79_matmul_readvariableop_resource_0"Ì
clstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensorelstm_310_while_tensorarrayv2read_tensorlistgetitem_lstm_310_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2lstm_310/while/lstm_cell_79/BiasAdd/ReadVariableOp2f
1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp1lstm_310/while/lstm_cell_79/MatMul/ReadVariableOp2j
3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp3lstm_310/while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
while_body_488332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_79_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_79_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_79_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_79_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_79_biasadd_readvariableop_resource:	È˘)while/lstm_cell_79/BiasAdd/ReadVariableOp˘(while/lstm_cell_79/MatMul/ReadVariableOp˘*while/lstm_cell_79/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_309_layer_call_fn_487503

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
D__inference_lstm_309_layer_call_and_return_conditional_losses_485501s
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
ÛB
?

lstm_309_while_body_486675.
*lstm_309_while_lstm_309_while_loop_counter4
0lstm_309_while_lstm_309_while_maximum_iterations
lstm_309_while_placeholder 
lstm_309_while_placeholder_1 
lstm_309_while_placeholder_2 
lstm_309_while_placeholder_3-
)lstm_309_while_lstm_309_strided_slice_1_0i
elstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0:	Q
>lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0:	dL
=lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0:	
lstm_309_while_identity
lstm_309_while_identity_1
lstm_309_while_identity_2
lstm_309_while_identity_3
lstm_309_while_identity_4
lstm_309_while_identity_5+
'lstm_309_while_lstm_309_strided_slice_1g
clstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensorM
:lstm_309_while_lstm_cell_78_matmul_readvariableop_resource:	O
<lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource:	dJ
;lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource:	˘2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp˘1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp˘3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp
@lstm_309/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_309/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensor_0lstm_309_while_placeholderIlstm_309/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp<lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_309/while/lstm_cell_78/MatMulMatMul9lstm_309/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp>lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_309/while/lstm_cell_78/MatMul_1MatMullstm_309_while_placeholder_2;lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_309/while/lstm_cell_78/addAddV2,lstm_309/while/lstm_cell_78/MatMul:product:0.lstm_309/while/lstm_cell_78/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp=lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_309/while/lstm_cell_78/BiasAddBiasAdd#lstm_309/while/lstm_cell_78/add:z:0:lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_309/while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_309/while/lstm_cell_78/splitSplit4lstm_309/while/lstm_cell_78/split/split_dim:output:0,lstm_309/while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_309/while/lstm_cell_78/SigmoidSigmoid*lstm_309/while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_309/while/lstm_cell_78/Sigmoid_1Sigmoid*lstm_309/while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_309/while/lstm_cell_78/mulMul)lstm_309/while/lstm_cell_78/Sigmoid_1:y:0lstm_309_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_309/while/lstm_cell_78/ReluRelu*lstm_309/while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_309/while/lstm_cell_78/mul_1Mul'lstm_309/while/lstm_cell_78/Sigmoid:y:0.lstm_309/while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_309/while/lstm_cell_78/add_1AddV2#lstm_309/while/lstm_cell_78/mul:z:0%lstm_309/while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_309/while/lstm_cell_78/Sigmoid_2Sigmoid*lstm_309/while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_309/while/lstm_cell_78/Relu_1Relu%lstm_309/while/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_309/while/lstm_cell_78/mul_2Mul)lstm_309/while/lstm_cell_78/Sigmoid_2:y:00lstm_309/while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_309/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_309_while_placeholder_1lstm_309_while_placeholder%lstm_309/while/lstm_cell_78/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_309/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_309/while/addAddV2lstm_309_while_placeholderlstm_309/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_309/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_309/while/add_1AddV2*lstm_309_while_lstm_309_while_loop_counterlstm_309/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_309/while/IdentityIdentitylstm_309/while/add_1:z:0^lstm_309/while/NoOp*
T0*
_output_shapes
: 
lstm_309/while/Identity_1Identity0lstm_309_while_lstm_309_while_maximum_iterations^lstm_309/while/NoOp*
T0*
_output_shapes
: t
lstm_309/while/Identity_2Identitylstm_309/while/add:z:0^lstm_309/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_309/while/Identity_3IdentityClstm_309/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_309/while/NoOp*
T0*
_output_shapes
: 
lstm_309/while/Identity_4Identity%lstm_309/while/lstm_cell_78/mul_2:z:0^lstm_309/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_309/while/Identity_5Identity%lstm_309/while/lstm_cell_78/add_1:z:0^lstm_309/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_309/while/NoOpNoOp3^lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2^lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp4^lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_309_while_identity lstm_309/while/Identity:output:0"?
lstm_309_while_identity_1"lstm_309/while/Identity_1:output:0"?
lstm_309_while_identity_2"lstm_309/while/Identity_2:output:0"?
lstm_309_while_identity_3"lstm_309/while/Identity_3:output:0"?
lstm_309_while_identity_4"lstm_309/while/Identity_4:output:0"?
lstm_309_while_identity_5"lstm_309/while/Identity_5:output:0"T
'lstm_309_while_lstm_309_strided_slice_1)lstm_309_while_lstm_309_strided_slice_1_0"|
;lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource=lstm_309_while_lstm_cell_78_biasadd_readvariableop_resource_0"~
<lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource>lstm_309_while_lstm_cell_78_matmul_1_readvariableop_resource_0"z
:lstm_309_while_lstm_cell_78_matmul_readvariableop_resource<lstm_309_while_lstm_cell_78_matmul_readvariableop_resource_0"Ì
clstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensorelstm_309_while_tensorarrayv2read_tensorlistgetitem_lstm_309_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2lstm_309/while/lstm_cell_78/BiasAdd/ReadVariableOp2f
1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp1lstm_309/while/lstm_cell_78/MatMul/ReadVariableOp2j
3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp3lstm_309/while/lstm_cell_78/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_489501

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
J

D__inference_lstm_311_layer_call_and_return_conditional_losses_489175

inputs=
+lstm_cell_80_matmul_readvariableop_resource:2(?
-lstm_cell_80_matmul_1_readvariableop_resource:
(:
,lstm_cell_80_biasadd_readvariableop_resource:(
identity˘#lstm_cell_80/BiasAdd/ReadVariableOp˘"lstm_cell_80/MatMul/ReadVariableOp˘$lstm_cell_80/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
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
while_body_489091*
condR
while_cond_489090*K
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
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
íW
¤
__inference__traced_save_489774
file_prefix/
+savev2_dense_103_kernel_read_readvariableop-
)savev2_dense_103_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_309_lstm_cell_309_kernel_read_readvariableopF
Bsavev2_lstm_309_lstm_cell_309_recurrent_kernel_read_readvariableop:
6savev2_lstm_309_lstm_cell_309_bias_read_readvariableop<
8savev2_lstm_310_lstm_cell_310_kernel_read_readvariableopF
Bsavev2_lstm_310_lstm_cell_310_recurrent_kernel_read_readvariableop:
6savev2_lstm_310_lstm_cell_310_bias_read_readvariableop<
8savev2_lstm_311_lstm_cell_311_kernel_read_readvariableopF
Bsavev2_lstm_311_lstm_cell_311_recurrent_kernel_read_readvariableop:
6savev2_lstm_311_lstm_cell_311_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_103_kernel_m_read_readvariableop4
0savev2_adam_dense_103_bias_m_read_readvariableopC
?savev2_adam_lstm_309_lstm_cell_309_kernel_m_read_readvariableopM
Isavev2_adam_lstm_309_lstm_cell_309_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_309_lstm_cell_309_bias_m_read_readvariableopC
?savev2_adam_lstm_310_lstm_cell_310_kernel_m_read_readvariableopM
Isavev2_adam_lstm_310_lstm_cell_310_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_310_lstm_cell_310_bias_m_read_readvariableopC
?savev2_adam_lstm_311_lstm_cell_311_kernel_m_read_readvariableopM
Isavev2_adam_lstm_311_lstm_cell_311_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_311_lstm_cell_311_bias_m_read_readvariableop6
2savev2_adam_dense_103_kernel_v_read_readvariableop4
0savev2_adam_dense_103_bias_v_read_readvariableopC
?savev2_adam_lstm_309_lstm_cell_309_kernel_v_read_readvariableopM
Isavev2_adam_lstm_309_lstm_cell_309_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_309_lstm_cell_309_bias_v_read_readvariableopC
?savev2_adam_lstm_310_lstm_cell_310_kernel_v_read_readvariableopM
Isavev2_adam_lstm_310_lstm_cell_310_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_310_lstm_cell_310_bias_v_read_readvariableopC
?savev2_adam_lstm_311_lstm_cell_311_kernel_v_read_readvariableopM
Isavev2_adam_lstm_311_lstm_cell_311_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_311_lstm_cell_311_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_103_kernel_read_readvariableop)savev2_dense_103_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_309_lstm_cell_309_kernel_read_readvariableopBsavev2_lstm_309_lstm_cell_309_recurrent_kernel_read_readvariableop6savev2_lstm_309_lstm_cell_309_bias_read_readvariableop8savev2_lstm_310_lstm_cell_310_kernel_read_readvariableopBsavev2_lstm_310_lstm_cell_310_recurrent_kernel_read_readvariableop6savev2_lstm_310_lstm_cell_310_bias_read_readvariableop8savev2_lstm_311_lstm_cell_311_kernel_read_readvariableopBsavev2_lstm_311_lstm_cell_311_recurrent_kernel_read_readvariableop6savev2_lstm_311_lstm_cell_311_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_103_kernel_m_read_readvariableop0savev2_adam_dense_103_bias_m_read_readvariableop?savev2_adam_lstm_309_lstm_cell_309_kernel_m_read_readvariableopIsavev2_adam_lstm_309_lstm_cell_309_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_309_lstm_cell_309_bias_m_read_readvariableop?savev2_adam_lstm_310_lstm_cell_310_kernel_m_read_readvariableopIsavev2_adam_lstm_310_lstm_cell_310_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_310_lstm_cell_310_bias_m_read_readvariableop?savev2_adam_lstm_311_lstm_cell_311_kernel_m_read_readvariableopIsavev2_adam_lstm_311_lstm_cell_311_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_311_lstm_cell_311_bias_m_read_readvariableop2savev2_adam_dense_103_kernel_v_read_readvariableop0savev2_adam_dense_103_bias_v_read_readvariableop?savev2_adam_lstm_309_lstm_cell_309_kernel_v_read_readvariableopIsavev2_adam_lstm_309_lstm_cell_309_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_309_lstm_cell_309_bias_v_read_readvariableop?savev2_adam_lstm_310_lstm_cell_310_kernel_v_read_readvariableopIsavev2_adam_lstm_310_lstm_cell_310_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_310_lstm_cell_310_bias_v_read_readvariableop?savev2_adam_lstm_311_lstm_cell_311_kernel_v_read_readvariableopIsavev2_adam_lstm_311_lstm_cell_311_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_311_lstm_cell_311_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
˙7
Ê
while_body_489234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:2(E
3while_lstm_cell_80_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_80_biasadd_readvariableop_resource:(˘)while/lstm_cell_80/BiasAdd/ReadVariableOp˘(while/lstm_cell_80/MatMul/ReadVariableOp˘*while/lstm_cell_80/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ë
ö
-__inference_lstm_cell_79_layer_call_fn_489469

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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484865o
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
while_cond_485932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_485932___redundant_placeholder04
0while_while_cond_485932___redundant_placeholder14
0while_while_cond_485932___redundant_placeholder24
0while_while_cond_485932___redundant_placeholder3
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
J

D__inference_lstm_311_layer_call_and_return_conditional_losses_485801

inputs=
+lstm_cell_80_matmul_readvariableop_resource:2(?
-lstm_cell_80_matmul_1_readvariableop_resource:
(:
,lstm_cell_80_biasadd_readvariableop_resource:(
identity˘#lstm_cell_80/BiasAdd/ReadVariableOp˘"lstm_cell_80/MatMul/ReadVariableOp˘$lstm_cell_80/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
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
while_body_485717*
condR
while_cond_485716*K
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
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
J

D__inference_lstm_311_layer_call_and_return_conditional_losses_486017

inputs=
+lstm_cell_80_matmul_readvariableop_resource:2(?
-lstm_cell_80_matmul_1_readvariableop_resource:
(:
,lstm_cell_80_biasadd_readvariableop_resource:(
identity˘#lstm_cell_80/BiasAdd/ReadVariableOp˘"lstm_cell_80/MatMul/ReadVariableOp˘$lstm_cell_80/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
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
while_body_485933*
condR
while_cond_485932*K
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
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_487572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_487572___redundant_placeholder04
0while_while_cond_487572___redundant_placeholder14
0while_while_cond_487572___redundant_placeholder24
0while_while_cond_487572___redundant_placeholder3
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_484993

inputs&
lstm_cell_79_484911:	dÈ&
lstm_cell_79_484913:	2È"
lstm_cell_79_484915:	È
identity˘$lstm_cell_79/StatefulPartitionedCall˘while;
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
$lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_79_484911lstm_cell_79_484913lstm_cell_79_484915*
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_484865n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_79_484911lstm_cell_79_484913lstm_cell_79_484915*
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
while_body_484924*
condR
while_cond_484923*K
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
NoOpNoOp%^lstm_cell_79/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_79/StatefulPartitionedCall$lstm_cell_79/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ö
³
)__inference_lstm_311_layer_call_fn_488735

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
D__inference_lstm_311_layer_call_and_return_conditional_losses_485801o
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
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaultŞ
M
lstm_309_input;
 serving_default_lstm_309_input:0˙˙˙˙˙˙˙˙˙=
	dense_1030
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
2dense_103/kernel
:2dense_103/bias
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
0:.	2lstm_309/lstm_cell_309/kernel
::8	d2'lstm_309/lstm_cell_309/recurrent_kernel
*:(2lstm_309/lstm_cell_309/bias
0:.	dÈ2lstm_310/lstm_cell_310/kernel
::8	2È2'lstm_310/lstm_cell_310/recurrent_kernel
*:(È2lstm_310/lstm_cell_310/bias
/:-2(2lstm_311/lstm_cell_311/kernel
9:7
(2'lstm_311/lstm_cell_311/recurrent_kernel
):'(2lstm_311/lstm_cell_311/bias
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
2Adam/dense_103/kernel/m
!:2Adam/dense_103/bias/m
5:3	2$Adam/lstm_309/lstm_cell_309/kernel/m
?:=	d2.Adam/lstm_309/lstm_cell_309/recurrent_kernel/m
/:-2"Adam/lstm_309/lstm_cell_309/bias/m
5:3	dÈ2$Adam/lstm_310/lstm_cell_310/kernel/m
?:=	2È2.Adam/lstm_310/lstm_cell_310/recurrent_kernel/m
/:-È2"Adam/lstm_310/lstm_cell_310/bias/m
4:22(2$Adam/lstm_311/lstm_cell_311/kernel/m
>:<
(2.Adam/lstm_311/lstm_cell_311/recurrent_kernel/m
.:,(2"Adam/lstm_311/lstm_cell_311/bias/m
':%
2Adam/dense_103/kernel/v
!:2Adam/dense_103/bias/v
5:3	2$Adam/lstm_309/lstm_cell_309/kernel/v
?:=	d2.Adam/lstm_309/lstm_cell_309/recurrent_kernel/v
/:-2"Adam/lstm_309/lstm_cell_309/bias/v
5:3	dÈ2$Adam/lstm_310/lstm_cell_310/kernel/v
?:=	2È2.Adam/lstm_310/lstm_cell_310/recurrent_kernel/v
/:-È2"Adam/lstm_310/lstm_cell_310/bias/v
4:22(2$Adam/lstm_311/lstm_cell_311/kernel/v
>:<
(2.Adam/lstm_311/lstm_cell_311/recurrent_kernel/v
.:,(2"Adam/lstm_311/lstm_cell_311/bias/v
2
/__inference_sequential_103_layer_call_fn_485851
/__inference_sequential_103_layer_call_fn_486589
/__inference_sequential_103_layer_call_fn_486616
/__inference_sequential_103_layer_call_fn_486467À
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_487043
J__inference_sequential_103_layer_call_and_return_conditional_losses_487470
J__inference_sequential_103_layer_call_and_return_conditional_losses_486497
J__inference_sequential_103_layer_call_and_return_conditional_losses_486527À
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
!__inference__wrapped_model_484302lstm_309_input"
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
)__inference_lstm_309_layer_call_fn_487481
)__inference_lstm_309_layer_call_fn_487492
)__inference_lstm_309_layer_call_fn_487503
)__inference_lstm_309_layer_call_fn_487514Ġ
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_487657
D__inference_lstm_309_layer_call_and_return_conditional_losses_487800
D__inference_lstm_309_layer_call_and_return_conditional_losses_487943
D__inference_lstm_309_layer_call_and_return_conditional_losses_488086Ġ
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
)__inference_lstm_310_layer_call_fn_488097
)__inference_lstm_310_layer_call_fn_488108
)__inference_lstm_310_layer_call_fn_488119
)__inference_lstm_310_layer_call_fn_488130Ġ
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_488273
D__inference_lstm_310_layer_call_and_return_conditional_losses_488416
D__inference_lstm_310_layer_call_and_return_conditional_losses_488559
D__inference_lstm_310_layer_call_and_return_conditional_losses_488702Ġ
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
)__inference_lstm_311_layer_call_fn_488713
)__inference_lstm_311_layer_call_fn_488724
)__inference_lstm_311_layer_call_fn_488735
)__inference_lstm_311_layer_call_fn_488746Ġ
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_488889
D__inference_lstm_311_layer_call_and_return_conditional_losses_489032
D__inference_lstm_311_layer_call_and_return_conditional_losses_489175
D__inference_lstm_311_layer_call_and_return_conditional_losses_489318Ġ
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
*__inference_dense_103_layer_call_fn_489327˘
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
E__inference_dense_103_layer_call_and_return_conditional_losses_489337˘
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
$__inference_signature_wrapper_486562lstm_309_input"
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
-__inference_lstm_cell_78_layer_call_fn_489354
-__inference_lstm_cell_78_layer_call_fn_489371?
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_489403
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_489435?
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
-__inference_lstm_cell_79_layer_call_fn_489452
-__inference_lstm_cell_79_layer_call_fn_489469?
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_489501
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_489533?
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
-__inference_lstm_cell_80_layer_call_fn_489550
-__inference_lstm_cell_80_layer_call_fn_489567?
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_489599
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_489631?
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
!__inference__wrapped_model_484302-./012345!";˘8
1˘.
,)
lstm_309_input˙˙˙˙˙˙˙˙˙
Ş "5Ş2
0
	dense_103# 
	dense_103˙˙˙˙˙˙˙˙˙?
E__inference_dense_103_layer_call_and_return_conditional_losses_489337\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
*__inference_dense_103_layer_call_fn_489327O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_309_layer_call_and_return_conditional_losses_487657-./O˘L
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_487800-./O˘L
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_487943q-./?˘<
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
D__inference_lstm_309_layer_call_and_return_conditional_losses_488086q-./?˘<
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
)__inference_lstm_309_layer_call_fn_487481}-./O˘L
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
)__inference_lstm_309_layer_call_fn_487492}-./O˘L
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
)__inference_lstm_309_layer_call_fn_487503d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_309_layer_call_fn_487514d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_310_layer_call_and_return_conditional_losses_488273012O˘L
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_488416012O˘L
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_488559q012?˘<
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
D__inference_lstm_310_layer_call_and_return_conditional_losses_488702q012?˘<
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
)__inference_lstm_310_layer_call_fn_488097}012O˘L
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
)__inference_lstm_310_layer_call_fn_488108}012O˘L
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
)__inference_lstm_310_layer_call_fn_488119d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_310_layer_call_fn_488130d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_311_layer_call_and_return_conditional_losses_488889}345O˘L
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_489032}345O˘L
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_489175m345?˘<
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
D__inference_lstm_311_layer_call_and_return_conditional_losses_489318m345?˘<
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
)__inference_lstm_311_layer_call_fn_488713p345O˘L
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
)__inference_lstm_311_layer_call_fn_488724p345O˘L
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
)__inference_lstm_311_layer_call_fn_488735`345?˘<
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
)__inference_lstm_311_layer_call_fn_488746`345?˘<
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_489403ŭ-./˘}
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
H__inference_lstm_cell_78_layer_call_and_return_conditional_losses_489435ŭ-./˘}
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
-__inference_lstm_cell_78_layer_call_fn_489354í-./˘}
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
-__inference_lstm_cell_78_layer_call_fn_489371í-./˘}
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_489501ŭ012˘}
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
H__inference_lstm_cell_79_layer_call_and_return_conditional_losses_489533ŭ012˘}
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
-__inference_lstm_cell_79_layer_call_fn_489452í012˘}
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
-__inference_lstm_cell_79_layer_call_fn_489469í012˘}
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_489599ŭ345˘}
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
H__inference_lstm_cell_80_layer_call_and_return_conditional_losses_489631ŭ345˘}
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
-__inference_lstm_cell_80_layer_call_fn_489550í345˘}
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
-__inference_lstm_cell_80_layer_call_fn_489567í345˘}
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_486497y-./012345!"C˘@
9˘6
,)
lstm_309_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ç
J__inference_sequential_103_layer_call_and_return_conditional_losses_486527y-./012345!"C˘@
9˘6
,)
lstm_309_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_103_layer_call_and_return_conditional_losses_487043q-./012345!";˘8
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_487470q-./012345!";˘8
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
/__inference_sequential_103_layer_call_fn_485851l-./012345!"C˘@
9˘6
,)
lstm_309_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_103_layer_call_fn_486467l-./012345!"C˘@
9˘6
,)
lstm_309_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_103_layer_call_fn_486589d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_103_layer_call_fn_486616d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ĵ
$__inference_signature_wrapper_486562-./012345!"M˘J
˘ 
CŞ@
>
lstm_309_input,)
lstm_309_input˙˙˙˙˙˙˙˙˙"5Ş2
0
	dense_103# 
	dense_103˙˙˙˙˙˙˙˙˙