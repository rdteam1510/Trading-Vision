??.
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
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:
*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
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
lstm_24/lstm_cell_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_24/lstm_cell_24/kernel
?
/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOpReadVariableOplstm_24/lstm_cell_24/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_24/lstm_cell_24/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*6
shared_name'%lstm_24/lstm_cell_24/recurrent_kernel
?
9lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_24/lstm_cell_24/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_24/lstm_cell_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_24/lstm_cell_24/bias
?
-lstm_24/lstm_cell_24/bias/Read/ReadVariableOpReadVariableOplstm_24/lstm_cell_24/bias*
_output_shapes	
:?*
dtype0
?
lstm_25/lstm_cell_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*,
shared_namelstm_25/lstm_cell_25/kernel
?
/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/kernel*
_output_shapes
:	d?*
dtype0
?
%lstm_25/lstm_cell_25/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*6
shared_name'%lstm_25/lstm_cell_25/recurrent_kernel
?
9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_25/lstm_cell_25/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_25/lstm_cell_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_25/lstm_cell_25/bias
?
-lstm_25/lstm_cell_25/bias/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/bias*
_output_shapes	
:?*
dtype0
?
lstm_26/lstm_cell_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_26/lstm_cell_26/kernel
?
/lstm_26/lstm_cell_26/kernel/Read/ReadVariableOpReadVariableOplstm_26/lstm_cell_26/kernel*
_output_shapes

:2(*
dtype0
?
%lstm_26/lstm_cell_26/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_26/lstm_cell_26/recurrent_kernel
?
9lstm_26/lstm_cell_26/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_26/lstm_cell_26/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_26/lstm_cell_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_26/lstm_cell_26/bias
?
-lstm_26/lstm_cell_26/bias/Read/ReadVariableOpReadVariableOplstm_26/lstm_cell_26/bias*
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
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_24/lstm_cell_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_24/lstm_cell_24/kernel/m
?
6Adam/lstm_24/lstm_cell_24/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_24/lstm_cell_24/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_24/lstm_cell_24/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m
?
@Adam/lstm_24/lstm_cell_24/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_24/lstm_cell_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_24/lstm_cell_24/bias/m
?
4Adam/lstm_24/lstm_cell_24/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_24/lstm_cell_24/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_25/lstm_cell_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_25/lstm_cell_25/kernel/m
?
6Adam/lstm_25/lstm_cell_25/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_25/lstm_cell_25/kernel/m*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_25/lstm_cell_25/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m
?
@Adam/lstm_25/lstm_cell_25/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_25/lstm_cell_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_25/lstm_cell_25/bias/m
?
4Adam/lstm_25/lstm_cell_25/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_25/lstm_cell_25/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_26/lstm_cell_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_26/lstm_cell_26/kernel/m
?
6Adam/lstm_26/lstm_cell_26/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_26/lstm_cell_26/kernel/m*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_26/lstm_cell_26/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m
?
@Adam/lstm_26/lstm_cell_26/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_26/lstm_cell_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_26/lstm_cell_26/bias/m
?
4Adam/lstm_26/lstm_cell_26/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_26/lstm_cell_26/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_24/lstm_cell_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_24/lstm_cell_24/kernel/v
?
6Adam/lstm_24/lstm_cell_24/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_24/lstm_cell_24/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_24/lstm_cell_24/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v
?
@Adam/lstm_24/lstm_cell_24/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_24/lstm_cell_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_24/lstm_cell_24/bias/v
?
4Adam/lstm_24/lstm_cell_24/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_24/lstm_cell_24/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_25/lstm_cell_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_25/lstm_cell_25/kernel/v
?
6Adam/lstm_25/lstm_cell_25/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_25/lstm_cell_25/kernel/v*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_25/lstm_cell_25/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v
?
@Adam/lstm_25/lstm_cell_25/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_25/lstm_cell_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_25/lstm_cell_25/bias/v
?
4Adam/lstm_25/lstm_cell_25/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_25/lstm_cell_25/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_26/lstm_cell_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_26/lstm_cell_26/kernel/v
?
6Adam/lstm_26/lstm_cell_26/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_26/lstm_cell_26/kernel/v*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_26/lstm_cell_26/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v
?
@Adam/lstm_26/lstm_cell_26/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_26/lstm_cell_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_26/lstm_cell_26/bias/v
?
4Adam/lstm_26/lstm_cell_26/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_26/lstm_cell_26/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?@
value?@B?@ B?@
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
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
WU
VARIABLE_VALUElstm_24/lstm_cell_24/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_24/lstm_cell_24/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_24/lstm_cell_24/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_25/lstm_cell_25/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_25/lstm_cell_25/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_25/lstm_cell_25/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_26/lstm_cell_26/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_26/lstm_cell_26/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_26/lstm_cell_26/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_24/lstm_cell_24/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_24/lstm_cell_24/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_24/lstm_cell_24/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_25/lstm_cell_25/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_25/lstm_cell_25/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_25/lstm_cell_25/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_26/lstm_cell_26/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_26/lstm_cell_26/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_26/lstm_cell_26/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_24/lstm_cell_24/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_24/lstm_cell_24/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_24/lstm_cell_24/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_25/lstm_cell_25/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_25/lstm_cell_25/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_25/lstm_cell_25/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_26/lstm_cell_26/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_26/lstm_cell_26/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_26/lstm_cell_26/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_24_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_24_inputlstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biaslstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/biaslstm_26/lstm_cell_26/kernel%lstm_26/lstm_cell_26/recurrent_kernellstm_26/lstm_cell_26/biasdense_8/kerneldense_8/bias*
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
%__inference_signature_wrapper_1956755
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOp9lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOp-lstm_24/lstm_cell_24/bias/Read/ReadVariableOp/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOp9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOp-lstm_25/lstm_cell_25/bias/Read/ReadVariableOp/lstm_26/lstm_cell_26/kernel/Read/ReadVariableOp9lstm_26/lstm_cell_26/recurrent_kernel/Read/ReadVariableOp-lstm_26/lstm_cell_26/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp6Adam/lstm_24/lstm_cell_24/kernel/m/Read/ReadVariableOp@Adam/lstm_24/lstm_cell_24/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_24/lstm_cell_24/bias/m/Read/ReadVariableOp6Adam/lstm_25/lstm_cell_25/kernel/m/Read/ReadVariableOp@Adam/lstm_25/lstm_cell_25/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_25/lstm_cell_25/bias/m/Read/ReadVariableOp6Adam/lstm_26/lstm_cell_26/kernel/m/Read/ReadVariableOp@Adam/lstm_26/lstm_cell_26/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_26/lstm_cell_26/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp6Adam/lstm_24/lstm_cell_24/kernel/v/Read/ReadVariableOp@Adam/lstm_24/lstm_cell_24/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_24/lstm_cell_24/bias/v/Read/ReadVariableOp6Adam/lstm_25/lstm_cell_25/kernel/v/Read/ReadVariableOp@Adam/lstm_25/lstm_cell_25/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_25/lstm_cell_25/bias/v/Read/ReadVariableOp6Adam/lstm_26/lstm_cell_26/kernel/v/Read/ReadVariableOp@Adam/lstm_26/lstm_cell_26/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_26/lstm_cell_26/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1959967
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biaslstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/biaslstm_26/lstm_cell_26/kernel%lstm_26/lstm_cell_26/recurrent_kernellstm_26/lstm_cell_26/biastotalcountAdam/dense_8/kernel/mAdam/dense_8/bias/m"Adam/lstm_24/lstm_cell_24/kernel/m,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m Adam/lstm_24/lstm_cell_24/bias/m"Adam/lstm_25/lstm_cell_25/kernel/m,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m Adam/lstm_25/lstm_cell_25/bias/m"Adam/lstm_26/lstm_cell_26/kernel/m,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m Adam/lstm_26/lstm_cell_26/bias/mAdam/dense_8/kernel/vAdam/dense_8/bias/v"Adam/lstm_24/lstm_cell_24/kernel/v,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v Adam/lstm_24/lstm_cell_24/bias/v"Adam/lstm_25/lstm_cell_25/kernel/v,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v Adam/lstm_25/lstm_cell_25/bias/v"Adam/lstm_26/lstm_cell_26/kernel/v,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v Adam/lstm_26/lstm_cell_26/bias/v*4
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
#__inference__traced_restore_1960097??+
?
?
while_cond_1954575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1954575___redundant_placeholder05
1while_while_cond_1954575___redundant_placeholder15
1while_while_cond_1954575___redundant_placeholder25
1while_while_cond_1954575___redundant_placeholder3
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
while_body_1958811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_322_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_322_matmul_readvariableop_resource:	d?G
4while_lstm_cell_322_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_322_biasadd_readvariableop_resource:	???*while/lstm_cell_322/BiasAdd/ReadVariableOp?)while/lstm_cell_322/MatMul/ReadVariableOp?+while/lstm_cell_322/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_322/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_322/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_322/addAddV2$while/lstm_cell_322/MatMul:product:0&while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_322/BiasAddBiasAddwhile/lstm_cell_322/add:z:02while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_322/splitSplit,while/lstm_cell_322/split/split_dim:output:0$while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_322/SigmoidSigmoid"while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_1Sigmoid"while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mulMul!while/lstm_cell_322/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_322/ReluRelu"while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_1Mulwhile/lstm_cell_322/Sigmoid:y:0&while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/add_1AddV2while/lstm_cell_322/mul:z:0while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_2Sigmoid"while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_322/Relu_1Reluwhile/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_2Mul!while/lstm_cell_322/Sigmoid_2:y:0(while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_322/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_322/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_322/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_322/BiasAdd/ReadVariableOp*^while/lstm_cell_322/MatMul/ReadVariableOp,^while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_322_biasadd_readvariableop_resource5while_lstm_cell_322_biasadd_readvariableop_resource_0"n
4while_lstm_cell_322_matmul_1_readvariableop_resource6while_lstm_cell_322_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_322_matmul_readvariableop_resource4while_lstm_cell_322_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_322/BiasAdd/ReadVariableOp*while/lstm_cell_322/BiasAdd/ReadVariableOp2V
)while/lstm_cell_322/MatMul/ReadVariableOp)while/lstm_cell_322/MatMul/ReadVariableOp2Z
+while/lstm_cell_322/MatMul_1/ReadVariableOp+while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_1960097
file_prefix1
assignvariableop_dense_8_kernel:
-
assignvariableop_1_dense_8_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_24_lstm_cell_24_kernel:	?K
8assignvariableop_8_lstm_24_lstm_cell_24_recurrent_kernel:	d?;
,assignvariableop_9_lstm_24_lstm_cell_24_bias:	?B
/assignvariableop_10_lstm_25_lstm_cell_25_kernel:	d?L
9assignvariableop_11_lstm_25_lstm_cell_25_recurrent_kernel:	2?<
-assignvariableop_12_lstm_25_lstm_cell_25_bias:	?A
/assignvariableop_13_lstm_26_lstm_cell_26_kernel:2(K
9assignvariableop_14_lstm_26_lstm_cell_26_recurrent_kernel:
(;
-assignvariableop_15_lstm_26_lstm_cell_26_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: ;
)assignvariableop_18_adam_dense_8_kernel_m:
5
'assignvariableop_19_adam_dense_8_bias_m:I
6assignvariableop_20_adam_lstm_24_lstm_cell_24_kernel_m:	?S
@assignvariableop_21_adam_lstm_24_lstm_cell_24_recurrent_kernel_m:	d?C
4assignvariableop_22_adam_lstm_24_lstm_cell_24_bias_m:	?I
6assignvariableop_23_adam_lstm_25_lstm_cell_25_kernel_m:	d?S
@assignvariableop_24_adam_lstm_25_lstm_cell_25_recurrent_kernel_m:	2?C
4assignvariableop_25_adam_lstm_25_lstm_cell_25_bias_m:	?H
6assignvariableop_26_adam_lstm_26_lstm_cell_26_kernel_m:2(R
@assignvariableop_27_adam_lstm_26_lstm_cell_26_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_26_lstm_cell_26_bias_m:(;
)assignvariableop_29_adam_dense_8_kernel_v:
5
'assignvariableop_30_adam_dense_8_bias_v:I
6assignvariableop_31_adam_lstm_24_lstm_cell_24_kernel_v:	?S
@assignvariableop_32_adam_lstm_24_lstm_cell_24_recurrent_kernel_v:	d?C
4assignvariableop_33_adam_lstm_24_lstm_cell_24_bias_v:	?I
6assignvariableop_34_adam_lstm_25_lstm_cell_25_kernel_v:	d?S
@assignvariableop_35_adam_lstm_25_lstm_cell_25_recurrent_kernel_v:	2?C
4assignvariableop_36_adam_lstm_25_lstm_cell_25_bias_v:	?H
6assignvariableop_37_adam_lstm_26_lstm_cell_26_kernel_v:2(R
@assignvariableop_38_adam_lstm_26_lstm_cell_26_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_26_lstm_cell_26_bias_v:(
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
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_24_lstm_cell_24_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_24_lstm_cell_24_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_24_lstm_cell_24_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_25_lstm_cell_25_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_25_lstm_cell_25_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_25_lstm_cell_25_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_26_lstm_cell_26_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_26_lstm_cell_26_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_26_lstm_cell_26_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_8_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_8_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_24_lstm_cell_24_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_24_lstm_cell_24_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_24_lstm_cell_24_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_25_lstm_cell_25_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_25_lstm_cell_25_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_25_lstm_cell_25_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_26_lstm_cell_26_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_26_lstm_cell_26_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_26_lstm_cell_26_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_8_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_8_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_24_lstm_cell_24_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_24_lstm_cell_24_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_24_lstm_cell_24_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_25_lstm_cell_25_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_25_lstm_cell_25_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_25_lstm_cell_25_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_26_lstm_cell_26_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_26_lstm_cell_26_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_26_lstm_cell_26_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
)__inference_lstm_25_layer_call_fn_1958312

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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1955844s
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958895

inputs?
,lstm_cell_322_matmul_readvariableop_resource:	d?A
.lstm_cell_322_matmul_1_readvariableop_resource:	2?<
-lstm_cell_322_biasadd_readvariableop_resource:	?
identity??$lstm_cell_322/BiasAdd/ReadVariableOp?#lstm_cell_322/MatMul/ReadVariableOp?%lstm_cell_322/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_322/MatMul/ReadVariableOpReadVariableOp,lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_322/MatMulMatMulstrided_slice_2:output:0+lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_322/MatMul_1MatMulzeros:output:0-lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_322/addAddV2lstm_cell_322/MatMul:product:0 lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_322/BiasAddBiasAddlstm_cell_322/add:z:0,lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_322/splitSplit&lstm_cell_322/split/split_dim:output:0lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_322/SigmoidSigmoidlstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_1Sigmoidlstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_322/mulMullstm_cell_322/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_322/ReluRelulstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_1Mullstm_cell_322/Sigmoid:y:0 lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_322/add_1AddV2lstm_cell_322/mul:z:0lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_2Sigmoidlstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_322/Relu_1Relulstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_2Mullstm_cell_322/Sigmoid_2:y:0"lstm_cell_322/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_322_matmul_readvariableop_resource.lstm_cell_322_matmul_1_readvariableop_resource-lstm_cell_322_biasadd_readvariableop_resource*
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
while_body_1958811*
condR
while_cond_1958810*K
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
NoOpNoOp%^lstm_cell_322/BiasAdd/ReadVariableOp$^lstm_cell_322/MatMul/ReadVariableOp&^lstm_cell_322/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_322/BiasAdd/ReadVariableOp$lstm_cell_322/BiasAdd/ReadVariableOp2J
#lstm_cell_322/MatMul/ReadVariableOp#lstm_cell_322/MatMul/ReadVariableOp2N
%lstm_cell_322/MatMul_1/ReadVariableOp%lstm_cell_322/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1958382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_322_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_322_matmul_readvariableop_resource:	d?G
4while_lstm_cell_322_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_322_biasadd_readvariableop_resource:	???*while/lstm_cell_322/BiasAdd/ReadVariableOp?)while/lstm_cell_322/MatMul/ReadVariableOp?+while/lstm_cell_322/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_322/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_322/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_322/addAddV2$while/lstm_cell_322/MatMul:product:0&while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_322/BiasAddBiasAddwhile/lstm_cell_322/add:z:02while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_322/splitSplit,while/lstm_cell_322/split/split_dim:output:0$while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_322/SigmoidSigmoid"while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_1Sigmoid"while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mulMul!while/lstm_cell_322/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_322/ReluRelu"while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_1Mulwhile/lstm_cell_322/Sigmoid:y:0&while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/add_1AddV2while/lstm_cell_322/mul:z:0while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_2Sigmoid"while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_322/Relu_1Reluwhile/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_2Mul!while/lstm_cell_322/Sigmoid_2:y:0(while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_322/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_322/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_322/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_322/BiasAdd/ReadVariableOp*^while/lstm_cell_322/MatMul/ReadVariableOp,^while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_322_biasadd_readvariableop_resource5while_lstm_cell_322_biasadd_readvariableop_resource_0"n
4while_lstm_cell_322_matmul_1_readvariableop_resource6while_lstm_cell_322_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_322_matmul_readvariableop_resource4while_lstm_cell_322_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_322/BiasAdd/ReadVariableOp*while/lstm_cell_322/BiasAdd/ReadVariableOp2V
)while/lstm_cell_322/MatMul/ReadVariableOp)while/lstm_cell_322/MatMul/ReadVariableOp2Z
+while/lstm_cell_322/MatMul_1/ReadVariableOp+while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1956755
lstm_24_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1954495o
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_24_input
?Q
?
'sequential_8_lstm_25_while_body_1954266F
Bsequential_8_lstm_25_while_sequential_8_lstm_25_while_loop_counterL
Hsequential_8_lstm_25_while_sequential_8_lstm_25_while_maximum_iterations*
&sequential_8_lstm_25_while_placeholder,
(sequential_8_lstm_25_while_placeholder_1,
(sequential_8_lstm_25_while_placeholder_2,
(sequential_8_lstm_25_while_placeholder_3E
Asequential_8_lstm_25_while_sequential_8_lstm_25_strided_slice_1_0?
}sequential_8_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_25_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_8_lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0:	d?^
Ksequential_8_lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?Y
Jsequential_8_lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0:	?'
#sequential_8_lstm_25_while_identity)
%sequential_8_lstm_25_while_identity_1)
%sequential_8_lstm_25_while_identity_2)
%sequential_8_lstm_25_while_identity_3)
%sequential_8_lstm_25_while_identity_4)
%sequential_8_lstm_25_while_identity_5C
?sequential_8_lstm_25_while_sequential_8_lstm_25_strided_slice_1
{sequential_8_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_25_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_8_lstm_25_while_lstm_cell_322_matmul_readvariableop_resource:	d?\
Isequential_8_lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource:	2?W
Hsequential_8_lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource:	????sequential_8/lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp?>sequential_8/lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp?@sequential_8/lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp?
Lsequential_8/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_8/lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_8_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_25_tensorarrayunstack_tensorlistfromtensor_0&sequential_8_lstm_25_while_placeholderUsequential_8/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
>sequential_8/lstm_25/while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOpIsequential_8_lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
/sequential_8/lstm_25/while/lstm_cell_322/MatMulMatMulEsequential_8/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_8/lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_8/lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOpKsequential_8_lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
1sequential_8/lstm_25/while/lstm_cell_322/MatMul_1MatMul(sequential_8_lstm_25_while_placeholder_2Hsequential_8/lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_8/lstm_25/while/lstm_cell_322/addAddV29sequential_8/lstm_25/while/lstm_cell_322/MatMul:product:0;sequential_8/lstm_25/while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_8/lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOpJsequential_8_lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_8/lstm_25/while/lstm_cell_322/BiasAddBiasAdd0sequential_8/lstm_25/while/lstm_cell_322/add:z:0Gsequential_8/lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_8/lstm_25/while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_8/lstm_25/while/lstm_cell_322/splitSplitAsequential_8/lstm_25/while/lstm_cell_322/split/split_dim:output:09sequential_8/lstm_25/while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
0sequential_8/lstm_25/while/lstm_cell_322/SigmoidSigmoid7sequential_8/lstm_25/while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2?
2sequential_8/lstm_25/while/lstm_cell_322/Sigmoid_1Sigmoid7sequential_8/lstm_25/while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
,sequential_8/lstm_25/while/lstm_cell_322/mulMul6sequential_8/lstm_25/while/lstm_cell_322/Sigmoid_1:y:0(sequential_8_lstm_25_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
-sequential_8/lstm_25/while/lstm_cell_322/ReluRelu7sequential_8/lstm_25/while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
.sequential_8/lstm_25/while/lstm_cell_322/mul_1Mul4sequential_8/lstm_25/while/lstm_cell_322/Sigmoid:y:0;sequential_8/lstm_25/while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
.sequential_8/lstm_25/while/lstm_cell_322/add_1AddV20sequential_8/lstm_25/while/lstm_cell_322/mul:z:02sequential_8/lstm_25/while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
2sequential_8/lstm_25/while/lstm_cell_322/Sigmoid_2Sigmoid7sequential_8/lstm_25/while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2?
/sequential_8/lstm_25/while/lstm_cell_322/Relu_1Relu2sequential_8/lstm_25/while/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_8/lstm_25/while/lstm_cell_322/mul_2Mul6sequential_8/lstm_25/while/lstm_cell_322/Sigmoid_2:y:0=sequential_8/lstm_25/while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
?sequential_8/lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_8_lstm_25_while_placeholder_1&sequential_8_lstm_25_while_placeholder2sequential_8/lstm_25/while/lstm_cell_322/mul_2:z:0*
_output_shapes
: *
element_dtype0:???b
 sequential_8/lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_8/lstm_25/while/addAddV2&sequential_8_lstm_25_while_placeholder)sequential_8/lstm_25/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_8/lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_8/lstm_25/while/add_1AddV2Bsequential_8_lstm_25_while_sequential_8_lstm_25_while_loop_counter+sequential_8/lstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: ?
#sequential_8/lstm_25/while/IdentityIdentity$sequential_8/lstm_25/while/add_1:z:0 ^sequential_8/lstm_25/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_25/while/Identity_1IdentityHsequential_8_lstm_25_while_sequential_8_lstm_25_while_maximum_iterations ^sequential_8/lstm_25/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_25/while/Identity_2Identity"sequential_8/lstm_25/while/add:z:0 ^sequential_8/lstm_25/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_25/while/Identity_3IdentityOsequential_8/lstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_8/lstm_25/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_25/while/Identity_4Identity2sequential_8/lstm_25/while/lstm_cell_322/mul_2:z:0 ^sequential_8/lstm_25/while/NoOp*
T0*'
_output_shapes
:?????????2?
%sequential_8/lstm_25/while/Identity_5Identity2sequential_8/lstm_25/while/lstm_cell_322/add_1:z:0 ^sequential_8/lstm_25/while/NoOp*
T0*'
_output_shapes
:?????????2?
sequential_8/lstm_25/while/NoOpNoOp@^sequential_8/lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp?^sequential_8/lstm_25/while/lstm_cell_322/MatMul/ReadVariableOpA^sequential_8/lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_8_lstm_25_while_identity,sequential_8/lstm_25/while/Identity:output:0"W
%sequential_8_lstm_25_while_identity_1.sequential_8/lstm_25/while/Identity_1:output:0"W
%sequential_8_lstm_25_while_identity_2.sequential_8/lstm_25/while/Identity_2:output:0"W
%sequential_8_lstm_25_while_identity_3.sequential_8/lstm_25/while/Identity_3:output:0"W
%sequential_8_lstm_25_while_identity_4.sequential_8/lstm_25/while/Identity_4:output:0"W
%sequential_8_lstm_25_while_identity_5.sequential_8/lstm_25/while/Identity_5:output:0"?
Hsequential_8_lstm_25_while_lstm_cell_322_biasadd_readvariableop_resourceJsequential_8_lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0"?
Isequential_8_lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resourceKsequential_8_lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0"?
Gsequential_8_lstm_25_while_lstm_cell_322_matmul_readvariableop_resourceIsequential_8_lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0"?
?sequential_8_lstm_25_while_sequential_8_lstm_25_strided_slice_1Asequential_8_lstm_25_while_sequential_8_lstm_25_strided_slice_1_0"?
{sequential_8_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_25_tensorarrayunstack_tensorlistfromtensor}sequential_8_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
?sequential_8/lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp?sequential_8/lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2?
>sequential_8/lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp>sequential_8/lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp2?
@sequential_8/lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp@sequential_8/lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1958381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958381___redundant_placeholder05
1while_while_cond_1958381___redundant_placeholder15
1while_while_cond_1958381___redundant_placeholder25
1while_while_cond_1958381___redundant_placeholder3
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
)__inference_lstm_24_layer_call_fn_1957696

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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1955694s
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
while_cond_1958524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958524___redundant_placeholder05
1while_while_cond_1958524___redundant_placeholder15
1while_while_cond_1958524___redundant_placeholder25
1while_while_cond_1958524___redundant_placeholder3
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
while_cond_1958194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958194___redundant_placeholder05
1while_while_cond_1958194___redundant_placeholder15
1while_while_cond_1958194___redundant_placeholder25
1while_while_cond_1958194___redundant_placeholder3
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955262

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
?B
?

lstm_24_while_body_1957295,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3+
'lstm_24_while_lstm_24_strided_slice_1_0g
clstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0:	?Q
>lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?L
=lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
lstm_24_while_identity
lstm_24_while_identity_1
lstm_24_while_identity_2
lstm_24_while_identity_3
lstm_24_while_identity_4
lstm_24_while_identity_5)
%lstm_24_while_lstm_24_strided_slice_1e
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorM
:lstm_24_while_lstm_cell_321_matmul_readvariableop_resource:	?O
<lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource:	d?J
;lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource:	???2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp?1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp?3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp?
?lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0lstm_24_while_placeholderHlstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp<lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
"lstm_24/while/lstm_cell_321/MatMulMatMul8lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp>lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
$lstm_24/while/lstm_cell_321/MatMul_1MatMullstm_24_while_placeholder_2;lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_24/while/lstm_cell_321/addAddV2,lstm_24/while/lstm_cell_321/MatMul:product:0.lstm_24/while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp=lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_24/while/lstm_cell_321/BiasAddBiasAdd#lstm_24/while/lstm_cell_321/add:z:0:lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_24/while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_24/while/lstm_cell_321/splitSplit4lstm_24/while/lstm_cell_321/split/split_dim:output:0,lstm_24/while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
#lstm_24/while/lstm_cell_321/SigmoidSigmoid*lstm_24/while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d?
%lstm_24/while/lstm_cell_321/Sigmoid_1Sigmoid*lstm_24/while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_24/while/lstm_cell_321/mulMul)lstm_24/while/lstm_cell_321/Sigmoid_1:y:0lstm_24_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
 lstm_24/while/lstm_cell_321/ReluRelu*lstm_24/while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
!lstm_24/while/lstm_cell_321/mul_1Mul'lstm_24/while/lstm_cell_321/Sigmoid:y:0.lstm_24/while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
!lstm_24/while/lstm_cell_321/add_1AddV2#lstm_24/while/lstm_cell_321/mul:z:0%lstm_24/while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
%lstm_24/while/lstm_cell_321/Sigmoid_2Sigmoid*lstm_24/while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????d?
"lstm_24/while/lstm_cell_321/Relu_1Relu%lstm_24/while/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
!lstm_24/while/lstm_cell_321/mul_2Mul)lstm_24/while/lstm_cell_321/Sigmoid_2:y:00lstm_24/while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_24_while_placeholder_1lstm_24_while_placeholder%lstm_24/while/lstm_cell_321/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_24/while/addAddV2lstm_24_while_placeholderlstm_24/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_24/while/add_1AddV2(lstm_24_while_lstm_24_while_loop_counterlstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_24/while/IdentityIdentitylstm_24/while/add_1:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ?
lstm_24/while/Identity_1Identity.lstm_24_while_lstm_24_while_maximum_iterations^lstm_24/while/NoOp*
T0*
_output_shapes
: q
lstm_24/while/Identity_2Identitylstm_24/while/add:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ?
lstm_24/while/Identity_3IdentityBlstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ?
lstm_24/while/Identity_4Identity%lstm_24/while/lstm_cell_321/mul_2:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_24/while/Identity_5Identity%lstm_24/while/lstm_cell_321/add_1:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_24/while/NoOpNoOp3^lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2^lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp4^lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_24_while_identitylstm_24/while/Identity:output:0"=
lstm_24_while_identity_1!lstm_24/while/Identity_1:output:0"=
lstm_24_while_identity_2!lstm_24/while/Identity_2:output:0"=
lstm_24_while_identity_3!lstm_24/while/Identity_3:output:0"=
lstm_24_while_identity_4!lstm_24/while/Identity_4:output:0"=
lstm_24_while_identity_5!lstm_24/while/Identity_5:output:0"P
%lstm_24_while_lstm_24_strided_slice_1'lstm_24_while_lstm_24_strided_slice_1_0"|
;lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource=lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0"~
<lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource>lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0"z
:lstm_24_while_lstm_cell_321_matmul_readvariableop_resource<lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0"?
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2h
2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2f
1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp2j
3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1955844

inputs?
,lstm_cell_322_matmul_readvariableop_resource:	d?A
.lstm_cell_322_matmul_1_readvariableop_resource:	2?<
-lstm_cell_322_biasadd_readvariableop_resource:	?
identity??$lstm_cell_322/BiasAdd/ReadVariableOp?#lstm_cell_322/MatMul/ReadVariableOp?%lstm_cell_322/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_322/MatMul/ReadVariableOpReadVariableOp,lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_322/MatMulMatMulstrided_slice_2:output:0+lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_322/MatMul_1MatMulzeros:output:0-lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_322/addAddV2lstm_cell_322/MatMul:product:0 lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_322/BiasAddBiasAddlstm_cell_322/add:z:0,lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_322/splitSplit&lstm_cell_322/split/split_dim:output:0lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_322/SigmoidSigmoidlstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_1Sigmoidlstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_322/mulMullstm_cell_322/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_322/ReluRelulstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_1Mullstm_cell_322/Sigmoid:y:0 lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_322/add_1AddV2lstm_cell_322/mul:z:0lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_2Sigmoidlstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_322/Relu_1Relulstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_2Mullstm_cell_322/Sigmoid_2:y:0"lstm_cell_322/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_322_matmul_readvariableop_resource.lstm_cell_322_matmul_1_readvariableop_resource-lstm_cell_322_biasadd_readvariableop_resource*
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
while_body_1955760*
condR
while_cond_1955759*K
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
NoOpNoOp%^lstm_cell_322/BiasAdd/ReadVariableOp$^lstm_cell_322/MatMul/ReadVariableOp&^lstm_cell_322/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_322/BiasAdd/ReadVariableOp$lstm_cell_322/BiasAdd/ReadVariableOp2J
#lstm_cell_322/MatMul/ReadVariableOp#lstm_cell_322/MatMul/ReadVariableOp2N
%lstm_cell_322/MatMul_1/ReadVariableOp%lstm_cell_322/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
D__inference_lstm_24_layer_call_and_return_conditional_losses_1957850
inputs_0?
,lstm_cell_321_matmul_readvariableop_resource:	?A
.lstm_cell_321_matmul_1_readvariableop_resource:	d?<
-lstm_cell_321_biasadd_readvariableop_resource:	?
identity??$lstm_cell_321/BiasAdd/ReadVariableOp?#lstm_cell_321/MatMul/ReadVariableOp?%lstm_cell_321/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_321/MatMul/ReadVariableOpReadVariableOp,lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_321/MatMulMatMulstrided_slice_2:output:0+lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_321/MatMul_1MatMulzeros:output:0-lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_321/addAddV2lstm_cell_321/MatMul:product:0 lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_321/BiasAddBiasAddlstm_cell_321/add:z:0,lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_321/splitSplit&lstm_cell_321/split/split_dim:output:0lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_321/SigmoidSigmoidlstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_1Sigmoidlstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_321/mulMullstm_cell_321/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_321/ReluRelulstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_1Mullstm_cell_321/Sigmoid:y:0 lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_321/add_1AddV2lstm_cell_321/mul:z:0lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_2Sigmoidlstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_321/Relu_1Relulstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_2Mullstm_cell_321/Sigmoid_2:y:0"lstm_cell_321/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_321_matmul_readvariableop_resource.lstm_cell_321_matmul_1_readvariableop_resource-lstm_cell_321_biasadd_readvariableop_resource*
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
while_body_1957766*
condR
while_cond_1957765*K
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
NoOpNoOp%^lstm_cell_321/BiasAdd/ReadVariableOp$^lstm_cell_321/MatMul/ReadVariableOp&^lstm_cell_321/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_321/BiasAdd/ReadVariableOp$lstm_cell_321/BiasAdd/ReadVariableOp2J
#lstm_cell_321/MatMul/ReadVariableOp#lstm_cell_321/MatMul/ReadVariableOp2N
%lstm_cell_321/MatMul_1/ReadVariableOp%lstm_cell_321/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
'sequential_8_lstm_25_while_cond_1954265F
Bsequential_8_lstm_25_while_sequential_8_lstm_25_while_loop_counterL
Hsequential_8_lstm_25_while_sequential_8_lstm_25_while_maximum_iterations*
&sequential_8_lstm_25_while_placeholder,
(sequential_8_lstm_25_while_placeholder_1,
(sequential_8_lstm_25_while_placeholder_2,
(sequential_8_lstm_25_while_placeholder_3H
Dsequential_8_lstm_25_while_less_sequential_8_lstm_25_strided_slice_1_
[sequential_8_lstm_25_while_sequential_8_lstm_25_while_cond_1954265___redundant_placeholder0_
[sequential_8_lstm_25_while_sequential_8_lstm_25_while_cond_1954265___redundant_placeholder1_
[sequential_8_lstm_25_while_sequential_8_lstm_25_while_cond_1954265___redundant_placeholder2_
[sequential_8_lstm_25_while_sequential_8_lstm_25_while_cond_1954265___redundant_placeholder3'
#sequential_8_lstm_25_while_identity
?
sequential_8/lstm_25/while/LessLess&sequential_8_lstm_25_while_placeholderDsequential_8_lstm_25_while_less_sequential_8_lstm_25_strided_slice_1*
T0*
_output_shapes
: u
#sequential_8/lstm_25/while/IdentityIdentity#sequential_8/lstm_25/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_8_lstm_25_while_identity,sequential_8/lstm_25/while/Identity:output:0*(
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
while_cond_1954925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1954925___redundant_placeholder05
1while_while_cond_1954925___redundant_placeholder15
1while_while_cond_1954925___redundant_placeholder25
1while_while_cond_1954925___redundant_placeholder3
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
while_body_1956291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_322_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_322_matmul_readvariableop_resource:	d?G
4while_lstm_cell_322_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_322_biasadd_readvariableop_resource:	???*while/lstm_cell_322/BiasAdd/ReadVariableOp?)while/lstm_cell_322/MatMul/ReadVariableOp?+while/lstm_cell_322/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_322/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_322/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_322/addAddV2$while/lstm_cell_322/MatMul:product:0&while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_322/BiasAddBiasAddwhile/lstm_cell_322/add:z:02while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_322/splitSplit,while/lstm_cell_322/split/split_dim:output:0$while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_322/SigmoidSigmoid"while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_1Sigmoid"while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mulMul!while/lstm_cell_322/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_322/ReluRelu"while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_1Mulwhile/lstm_cell_322/Sigmoid:y:0&while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/add_1AddV2while/lstm_cell_322/mul:z:0while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_2Sigmoid"while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_322/Relu_1Reluwhile/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_2Mul!while/lstm_cell_322/Sigmoid_2:y:0(while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_322/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_322/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_322/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_322/BiasAdd/ReadVariableOp*^while/lstm_cell_322/MatMul/ReadVariableOp,^while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_322_biasadd_readvariableop_resource5while_lstm_cell_322_biasadd_readvariableop_resource_0"n
4while_lstm_cell_322_matmul_1_readvariableop_resource6while_lstm_cell_322_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_322_matmul_readvariableop_resource4while_lstm_cell_322_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_322/BiasAdd/ReadVariableOp*while/lstm_cell_322/BiasAdd/ReadVariableOp2V
)while/lstm_cell_322/MatMul/ReadVariableOp)while/lstm_cell_322/MatMul/ReadVariableOp2Z
+while/lstm_cell_322/MatMul_1/ReadVariableOp+while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1959824

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
while_cond_1957765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1957765___redundant_placeholder05
1while_while_cond_1957765___redundant_placeholder15
1while_while_cond_1957765___redundant_placeholder25
1while_while_cond_1957765___redundant_placeholder3
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
?Q
?
'sequential_8_lstm_26_while_body_1954405F
Bsequential_8_lstm_26_while_sequential_8_lstm_26_while_loop_counterL
Hsequential_8_lstm_26_while_sequential_8_lstm_26_while_maximum_iterations*
&sequential_8_lstm_26_while_placeholder,
(sequential_8_lstm_26_while_placeholder_1,
(sequential_8_lstm_26_while_placeholder_2,
(sequential_8_lstm_26_while_placeholder_3E
Asequential_8_lstm_26_while_sequential_8_lstm_26_strided_slice_1_0?
}sequential_8_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_26_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_8_lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0:2(]
Ksequential_8_lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(X
Jsequential_8_lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0:('
#sequential_8_lstm_26_while_identity)
%sequential_8_lstm_26_while_identity_1)
%sequential_8_lstm_26_while_identity_2)
%sequential_8_lstm_26_while_identity_3)
%sequential_8_lstm_26_while_identity_4)
%sequential_8_lstm_26_while_identity_5C
?sequential_8_lstm_26_while_sequential_8_lstm_26_strided_slice_1
{sequential_8_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_26_tensorarrayunstack_tensorlistfromtensorY
Gsequential_8_lstm_26_while_lstm_cell_323_matmul_readvariableop_resource:2([
Isequential_8_lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource:
(V
Hsequential_8_lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource:(???sequential_8/lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp?>sequential_8/lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp?@sequential_8/lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp?
Lsequential_8/lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_8/lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_8_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_26_tensorarrayunstack_tensorlistfromtensor_0&sequential_8_lstm_26_while_placeholderUsequential_8/lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
>sequential_8/lstm_26/while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOpIsequential_8_lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
/sequential_8/lstm_26/while/lstm_cell_323/MatMulMatMulEsequential_8/lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_8/lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
@sequential_8/lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOpKsequential_8_lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
1sequential_8/lstm_26/while/lstm_cell_323/MatMul_1MatMul(sequential_8_lstm_26_while_placeholder_2Hsequential_8/lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,sequential_8/lstm_26/while/lstm_cell_323/addAddV29sequential_8/lstm_26/while/lstm_cell_323/MatMul:product:0;sequential_8/lstm_26/while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
?sequential_8/lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOpJsequential_8_lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
0sequential_8/lstm_26/while/lstm_cell_323/BiasAddBiasAdd0sequential_8/lstm_26/while/lstm_cell_323/add:z:0Gsequential_8/lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(z
8sequential_8/lstm_26/while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_8/lstm_26/while/lstm_cell_323/splitSplitAsequential_8/lstm_26/while/lstm_cell_323/split/split_dim:output:09sequential_8/lstm_26/while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
0sequential_8/lstm_26/while/lstm_cell_323/SigmoidSigmoid7sequential_8/lstm_26/while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
?
2sequential_8/lstm_26/while/lstm_cell_323/Sigmoid_1Sigmoid7sequential_8/lstm_26/while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
,sequential_8/lstm_26/while/lstm_cell_323/mulMul6sequential_8/lstm_26/while/lstm_cell_323/Sigmoid_1:y:0(sequential_8_lstm_26_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
-sequential_8/lstm_26/while/lstm_cell_323/ReluRelu7sequential_8/lstm_26/while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
.sequential_8/lstm_26/while/lstm_cell_323/mul_1Mul4sequential_8/lstm_26/while/lstm_cell_323/Sigmoid:y:0;sequential_8/lstm_26/while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
.sequential_8/lstm_26/while/lstm_cell_323/add_1AddV20sequential_8/lstm_26/while/lstm_cell_323/mul:z:02sequential_8/lstm_26/while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
2sequential_8/lstm_26/while/lstm_cell_323/Sigmoid_2Sigmoid7sequential_8/lstm_26/while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
?
/sequential_8/lstm_26/while/lstm_cell_323/Relu_1Relu2sequential_8/lstm_26/while/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_8/lstm_26/while/lstm_cell_323/mul_2Mul6sequential_8/lstm_26/while/lstm_cell_323/Sigmoid_2:y:0=sequential_8/lstm_26/while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
?sequential_8/lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_8_lstm_26_while_placeholder_1&sequential_8_lstm_26_while_placeholder2sequential_8/lstm_26/while/lstm_cell_323/mul_2:z:0*
_output_shapes
: *
element_dtype0:???b
 sequential_8/lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_8/lstm_26/while/addAddV2&sequential_8_lstm_26_while_placeholder)sequential_8/lstm_26/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_8/lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_8/lstm_26/while/add_1AddV2Bsequential_8_lstm_26_while_sequential_8_lstm_26_while_loop_counter+sequential_8/lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: ?
#sequential_8/lstm_26/while/IdentityIdentity$sequential_8/lstm_26/while/add_1:z:0 ^sequential_8/lstm_26/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_26/while/Identity_1IdentityHsequential_8_lstm_26_while_sequential_8_lstm_26_while_maximum_iterations ^sequential_8/lstm_26/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_26/while/Identity_2Identity"sequential_8/lstm_26/while/add:z:0 ^sequential_8/lstm_26/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_26/while/Identity_3IdentityOsequential_8/lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_8/lstm_26/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_26/while/Identity_4Identity2sequential_8/lstm_26/while/lstm_cell_323/mul_2:z:0 ^sequential_8/lstm_26/while/NoOp*
T0*'
_output_shapes
:?????????
?
%sequential_8/lstm_26/while/Identity_5Identity2sequential_8/lstm_26/while/lstm_cell_323/add_1:z:0 ^sequential_8/lstm_26/while/NoOp*
T0*'
_output_shapes
:?????????
?
sequential_8/lstm_26/while/NoOpNoOp@^sequential_8/lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp?^sequential_8/lstm_26/while/lstm_cell_323/MatMul/ReadVariableOpA^sequential_8/lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_8_lstm_26_while_identity,sequential_8/lstm_26/while/Identity:output:0"W
%sequential_8_lstm_26_while_identity_1.sequential_8/lstm_26/while/Identity_1:output:0"W
%sequential_8_lstm_26_while_identity_2.sequential_8/lstm_26/while/Identity_2:output:0"W
%sequential_8_lstm_26_while_identity_3.sequential_8/lstm_26/while/Identity_3:output:0"W
%sequential_8_lstm_26_while_identity_4.sequential_8/lstm_26/while/Identity_4:output:0"W
%sequential_8_lstm_26_while_identity_5.sequential_8/lstm_26/while/Identity_5:output:0"?
Hsequential_8_lstm_26_while_lstm_cell_323_biasadd_readvariableop_resourceJsequential_8_lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0"?
Isequential_8_lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resourceKsequential_8_lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0"?
Gsequential_8_lstm_26_while_lstm_cell_323_matmul_readvariableop_resourceIsequential_8_lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0"?
?sequential_8_lstm_26_while_sequential_8_lstm_26_strided_slice_1Asequential_8_lstm_26_while_sequential_8_lstm_26_strided_slice_1_0"?
{sequential_8_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_26_tensorarrayunstack_tensorlistfromtensor}sequential_8_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
?sequential_8/lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp?sequential_8/lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2?
>sequential_8/lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp>sequential_8/lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp2?
@sequential_8/lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp@sequential_8/lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954708

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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959368

inputs>
,lstm_cell_323_matmul_readvariableop_resource:2(@
.lstm_cell_323_matmul_1_readvariableop_resource:
(;
-lstm_cell_323_biasadd_readvariableop_resource:(
identity??$lstm_cell_323/BiasAdd/ReadVariableOp?#lstm_cell_323/MatMul/ReadVariableOp?%lstm_cell_323/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_323/MatMul/ReadVariableOpReadVariableOp,lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_323/MatMulMatMulstrided_slice_2:output:0+lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_323/MatMul_1MatMulzeros:output:0-lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_323/addAddV2lstm_cell_323/MatMul:product:0 lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_323/BiasAddBiasAddlstm_cell_323/add:z:0,lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_323/splitSplit&lstm_cell_323/split/split_dim:output:0lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_323/SigmoidSigmoidlstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_1Sigmoidlstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_323/mulMullstm_cell_323/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_323/ReluRelulstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_1Mullstm_cell_323/Sigmoid:y:0 lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_323/add_1AddV2lstm_cell_323/mul:z:0lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_2Sigmoidlstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_323/Relu_1Relulstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_2Mullstm_cell_323/Sigmoid_2:y:0"lstm_cell_323/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_323_matmul_readvariableop_resource.lstm_cell_323_matmul_1_readvariableop_resource-lstm_cell_323_biasadd_readvariableop_resource*
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
while_body_1959284*
condR
while_cond_1959283*K
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
NoOpNoOp%^lstm_cell_323/BiasAdd/ReadVariableOp$^lstm_cell_323/MatMul/ReadVariableOp&^lstm_cell_323/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_323/BiasAdd/ReadVariableOp$lstm_cell_323/BiasAdd/ReadVariableOp2J
#lstm_cell_323/MatMul/ReadVariableOp#lstm_cell_323/MatMul/ReadVariableOp2N
%lstm_cell_323/MatMul_1/ReadVariableOp%lstm_cell_323/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_24_layer_call_fn_1957674
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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1954645|
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
)__inference_lstm_26_layer_call_fn_1958906
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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955345o
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
?
/__inference_lstm_cell_322_layer_call_fn_1959645

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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1954912o
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
?
?
while_cond_1955759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1955759___redundant_placeholder05
1while_while_cond_1955759___redundant_placeholder15
1while_while_cond_1955759___redundant_placeholder25
1while_while_cond_1955759___redundant_placeholder3
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
lstm_24_while_cond_1956867,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3.
*lstm_24_while_less_lstm_24_strided_slice_1E
Alstm_24_while_lstm_24_while_cond_1956867___redundant_placeholder0E
Alstm_24_while_lstm_24_while_cond_1956867___redundant_placeholder1E
Alstm_24_while_lstm_24_while_cond_1956867___redundant_placeholder2E
Alstm_24_while_lstm_24_while_cond_1956867___redundant_placeholder3
lstm_24_while_identity
?
lstm_24/while/LessLesslstm_24_while_placeholder*lstm_24_while_less_lstm_24_strided_slice_1*
T0*
_output_shapes
: [
lstm_24/while/IdentityIdentitylstm_24/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_24_while_identitylstm_24/while/Identity:output:0*(
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
)__inference_lstm_24_layer_call_fn_1957707

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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1956540s
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1958136

inputs?
,lstm_cell_321_matmul_readvariableop_resource:	?A
.lstm_cell_321_matmul_1_readvariableop_resource:	d?<
-lstm_cell_321_biasadd_readvariableop_resource:	?
identity??$lstm_cell_321/BiasAdd/ReadVariableOp?#lstm_cell_321/MatMul/ReadVariableOp?%lstm_cell_321/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_321/MatMul/ReadVariableOpReadVariableOp,lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_321/MatMulMatMulstrided_slice_2:output:0+lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_321/MatMul_1MatMulzeros:output:0-lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_321/addAddV2lstm_cell_321/MatMul:product:0 lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_321/BiasAddBiasAddlstm_cell_321/add:z:0,lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_321/splitSplit&lstm_cell_321/split/split_dim:output:0lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_321/SigmoidSigmoidlstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_1Sigmoidlstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_321/mulMullstm_cell_321/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_321/ReluRelulstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_1Mullstm_cell_321/Sigmoid:y:0 lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_321/add_1AddV2lstm_cell_321/mul:z:0lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_2Sigmoidlstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_321/Relu_1Relulstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_2Mullstm_cell_321/Sigmoid_2:y:0"lstm_cell_321/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_321_matmul_readvariableop_resource.lstm_cell_321_matmul_1_readvariableop_resource-lstm_cell_321_biasadd_readvariableop_resource*
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
while_body_1958052*
condR
while_cond_1958051*K
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
NoOpNoOp%^lstm_cell_321/BiasAdd/ReadVariableOp$^lstm_cell_321/MatMul/ReadVariableOp&^lstm_cell_321/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_321/BiasAdd/ReadVariableOp$lstm_cell_321/BiasAdd/ReadVariableOp2J
#lstm_cell_321/MatMul/ReadVariableOp#lstm_cell_321/MatMul/ReadVariableOp2N
%lstm_cell_321/MatMul_1/ReadVariableOp%lstm_cell_321/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959511

inputs>
,lstm_cell_323_matmul_readvariableop_resource:2(@
.lstm_cell_323_matmul_1_readvariableop_resource:
(;
-lstm_cell_323_biasadd_readvariableop_resource:(
identity??$lstm_cell_323/BiasAdd/ReadVariableOp?#lstm_cell_323/MatMul/ReadVariableOp?%lstm_cell_323/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_323/MatMul/ReadVariableOpReadVariableOp,lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_323/MatMulMatMulstrided_slice_2:output:0+lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_323/MatMul_1MatMulzeros:output:0-lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_323/addAddV2lstm_cell_323/MatMul:product:0 lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_323/BiasAddBiasAddlstm_cell_323/add:z:0,lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_323/splitSplit&lstm_cell_323/split/split_dim:output:0lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_323/SigmoidSigmoidlstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_1Sigmoidlstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_323/mulMullstm_cell_323/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_323/ReluRelulstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_1Mullstm_cell_323/Sigmoid:y:0 lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_323/add_1AddV2lstm_cell_323/mul:z:0lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_2Sigmoidlstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_323/Relu_1Relulstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_2Mullstm_cell_323/Sigmoid_2:y:0"lstm_cell_323/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_323_matmul_readvariableop_resource.lstm_cell_323_matmul_1_readvariableop_resource-lstm_cell_323_biasadd_readvariableop_resource*
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
while_body_1959427*
condR
while_cond_1959426*K
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
NoOpNoOp%^lstm_cell_323/BiasAdd/ReadVariableOp$^lstm_cell_323/MatMul/ReadVariableOp&^lstm_cell_323/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_323/BiasAdd/ReadVariableOp$lstm_cell_323/BiasAdd/ReadVariableOp2J
#lstm_cell_323/MatMul/ReadVariableOp#lstm_cell_323/MatMul/ReadVariableOp2N
%lstm_cell_323/MatMul_1/ReadVariableOp%lstm_cell_323/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1958810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958810___redundant_placeholder05
1while_while_cond_1958810___redundant_placeholder15
1while_while_cond_1958810___redundant_placeholder25
1while_while_cond_1958810___redundant_placeholder3
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955994

inputs>
,lstm_cell_323_matmul_readvariableop_resource:2(@
.lstm_cell_323_matmul_1_readvariableop_resource:
(;
-lstm_cell_323_biasadd_readvariableop_resource:(
identity??$lstm_cell_323/BiasAdd/ReadVariableOp?#lstm_cell_323/MatMul/ReadVariableOp?%lstm_cell_323/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_323/MatMul/ReadVariableOpReadVariableOp,lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_323/MatMulMatMulstrided_slice_2:output:0+lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_323/MatMul_1MatMulzeros:output:0-lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_323/addAddV2lstm_cell_323/MatMul:product:0 lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_323/BiasAddBiasAddlstm_cell_323/add:z:0,lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_323/splitSplit&lstm_cell_323/split/split_dim:output:0lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_323/SigmoidSigmoidlstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_1Sigmoidlstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_323/mulMullstm_cell_323/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_323/ReluRelulstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_1Mullstm_cell_323/Sigmoid:y:0 lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_323/add_1AddV2lstm_cell_323/mul:z:0lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_2Sigmoidlstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_323/Relu_1Relulstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_2Mullstm_cell_323/Sigmoid_2:y:0"lstm_cell_323/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_323_matmul_readvariableop_resource.lstm_cell_323_matmul_1_readvariableop_resource-lstm_cell_323_biasadd_readvariableop_resource*
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
while_body_1955910*
condR
while_cond_1955909*K
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
NoOpNoOp%^lstm_cell_323/BiasAdd/ReadVariableOp$^lstm_cell_323/MatMul/ReadVariableOp&^lstm_cell_323/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_323/BiasAdd/ReadVariableOp$lstm_cell_323/BiasAdd/ReadVariableOp2J
#lstm_cell_323/MatMul/ReadVariableOp#lstm_cell_323/MatMul/ReadVariableOp2N
%lstm_cell_323/MatMul_1/ReadVariableOp%lstm_cell_323/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
D__inference_dense_8_layer_call_and_return_conditional_losses_1956012

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
while_body_1959427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_323_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_323_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_323_matmul_readvariableop_resource:2(F
4while_lstm_cell_323_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_323_biasadd_readvariableop_resource:(??*while/lstm_cell_323/BiasAdd/ReadVariableOp?)while/lstm_cell_323/MatMul/ReadVariableOp?+while/lstm_cell_323/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_323/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_323/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_323/addAddV2$while/lstm_cell_323/MatMul:product:0&while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_323/BiasAddBiasAddwhile/lstm_cell_323/add:z:02while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_323/splitSplit,while/lstm_cell_323/split/split_dim:output:0$while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_323/SigmoidSigmoid"while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_1Sigmoid"while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mulMul!while/lstm_cell_323/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_323/ReluRelu"while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_1Mulwhile/lstm_cell_323/Sigmoid:y:0&while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/add_1AddV2while/lstm_cell_323/mul:z:0while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_2Sigmoid"while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_323/Relu_1Reluwhile/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_2Mul!while/lstm_cell_323/Sigmoid_2:y:0(while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_323/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_323/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_323/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_323/BiasAdd/ReadVariableOp*^while/lstm_cell_323/MatMul/ReadVariableOp,^while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_323_biasadd_readvariableop_resource5while_lstm_cell_323_biasadd_readvariableop_resource_0"n
4while_lstm_cell_323_matmul_1_readvariableop_resource6while_lstm_cell_323_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_323_matmul_readvariableop_resource4while_lstm_cell_323_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_323/BiasAdd/ReadVariableOp*while/lstm_cell_323/BiasAdd/ReadVariableOp2V
)while/lstm_cell_323/MatMul/ReadVariableOp)while/lstm_cell_323/MatMul/ReadVariableOp2Z
+while/lstm_cell_323/MatMul_1/ReadVariableOp+while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1959726

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
?8
?
while_body_1957766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_321_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_321_matmul_readvariableop_resource:	?G
4while_lstm_cell_321_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_321_biasadd_readvariableop_resource:	???*while/lstm_cell_321/BiasAdd/ReadVariableOp?)while/lstm_cell_321/MatMul/ReadVariableOp?+while/lstm_cell_321/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_321/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_321/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_321/addAddV2$while/lstm_cell_321/MatMul:product:0&while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_321/BiasAddBiasAddwhile/lstm_cell_321/add:z:02while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_321/splitSplit,while/lstm_cell_321/split/split_dim:output:0$while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_321/SigmoidSigmoid"while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_1Sigmoid"while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mulMul!while/lstm_cell_321/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_321/ReluRelu"while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_1Mulwhile/lstm_cell_321/Sigmoid:y:0&while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/add_1AddV2while/lstm_cell_321/mul:z:0while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_2Sigmoid"while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_321/Relu_1Reluwhile/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_2Mul!while/lstm_cell_321/Sigmoid_2:y:0(while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_321/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_321/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_321/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_321/BiasAdd/ReadVariableOp*^while/lstm_cell_321/MatMul/ReadVariableOp,^while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_321_biasadd_readvariableop_resource5while_lstm_cell_321_biasadd_readvariableop_resource_0"n
4while_lstm_cell_321_matmul_1_readvariableop_resource6while_lstm_cell_321_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_321_matmul_readvariableop_resource4while_lstm_cell_321_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_321/BiasAdd/ReadVariableOp*while/lstm_cell_321/BiasAdd/ReadVariableOp2V
)while/lstm_cell_321/MatMul/ReadVariableOp)while/lstm_cell_321/MatMul/ReadVariableOp2Z
+while/lstm_cell_321/MatMul_1/ReadVariableOp+while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954562

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
while_body_1959284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_323_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_323_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_323_matmul_readvariableop_resource:2(F
4while_lstm_cell_323_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_323_biasadd_readvariableop_resource:(??*while/lstm_cell_323/BiasAdd/ReadVariableOp?)while/lstm_cell_323/MatMul/ReadVariableOp?+while/lstm_cell_323/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_323/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_323/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_323/addAddV2$while/lstm_cell_323/MatMul:product:0&while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_323/BiasAddBiasAddwhile/lstm_cell_323/add:z:02while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_323/splitSplit,while/lstm_cell_323/split/split_dim:output:0$while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_323/SigmoidSigmoid"while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_1Sigmoid"while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mulMul!while/lstm_cell_323/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_323/ReluRelu"while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_1Mulwhile/lstm_cell_323/Sigmoid:y:0&while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/add_1AddV2while/lstm_cell_323/mul:z:0while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_2Sigmoid"while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_323/Relu_1Reluwhile/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_2Mul!while/lstm_cell_323/Sigmoid_2:y:0(while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_323/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_323/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_323/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_323/BiasAdd/ReadVariableOp*^while/lstm_cell_323/MatMul/ReadVariableOp,^while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_323_biasadd_readvariableop_resource5while_lstm_cell_323_biasadd_readvariableop_resource_0"n
4while_lstm_cell_323_matmul_1_readvariableop_resource6while_lstm_cell_323_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_323_matmul_readvariableop_resource4while_lstm_cell_323_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_323/BiasAdd/ReadVariableOp*while/lstm_cell_323/BiasAdd/ReadVariableOp2V
)while/lstm_cell_323/MatMul/ReadVariableOp)while/lstm_cell_323/MatMul/ReadVariableOp2Z
+while/lstm_cell_323/MatMul_1/ReadVariableOp+while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?A
?

lstm_26_while_body_1957573,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3+
'lstm_26_while_lstm_26_strided_slice_1_0g
clstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0:2(P
>lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(K
=lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0:(
lstm_26_while_identity
lstm_26_while_identity_1
lstm_26_while_identity_2
lstm_26_while_identity_3
lstm_26_while_identity_4
lstm_26_while_identity_5)
%lstm_26_while_lstm_26_strided_slice_1e
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorL
:lstm_26_while_lstm_cell_323_matmul_readvariableop_resource:2(N
<lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource:
(I
;lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource:(??2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp?1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp?3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp?
?lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0lstm_26_while_placeholderHlstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp<lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
"lstm_26/while/lstm_cell_323/MatMulMatMul8lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp>lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
$lstm_26/while/lstm_cell_323/MatMul_1MatMullstm_26_while_placeholder_2;lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_26/while/lstm_cell_323/addAddV2,lstm_26/while/lstm_cell_323/MatMul:product:0.lstm_26/while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp=lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
#lstm_26/while/lstm_cell_323/BiasAddBiasAdd#lstm_26/while/lstm_cell_323/add:z:0:lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(m
+lstm_26/while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_26/while/lstm_cell_323/splitSplit4lstm_26/while/lstm_cell_323/split/split_dim:output:0,lstm_26/while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
#lstm_26/while/lstm_cell_323/SigmoidSigmoid*lstm_26/while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
?
%lstm_26/while/lstm_cell_323/Sigmoid_1Sigmoid*lstm_26/while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_26/while/lstm_cell_323/mulMul)lstm_26/while/lstm_cell_323/Sigmoid_1:y:0lstm_26_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
 lstm_26/while/lstm_cell_323/ReluRelu*lstm_26/while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
!lstm_26/while/lstm_cell_323/mul_1Mul'lstm_26/while/lstm_cell_323/Sigmoid:y:0.lstm_26/while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
!lstm_26/while/lstm_cell_323/add_1AddV2#lstm_26/while/lstm_cell_323/mul:z:0%lstm_26/while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
%lstm_26/while/lstm_cell_323/Sigmoid_2Sigmoid*lstm_26/while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
?
"lstm_26/while/lstm_cell_323/Relu_1Relu%lstm_26/while/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
!lstm_26/while/lstm_cell_323/mul_2Mul)lstm_26/while/lstm_cell_323/Sigmoid_2:y:00lstm_26/while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_26_while_placeholder_1lstm_26_while_placeholder%lstm_26/while/lstm_cell_323/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_26/while/addAddV2lstm_26_while_placeholderlstm_26/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_26/while/add_1AddV2(lstm_26_while_lstm_26_while_loop_counterlstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_26/while/IdentityIdentitylstm_26/while/add_1:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: ?
lstm_26/while/Identity_1Identity.lstm_26_while_lstm_26_while_maximum_iterations^lstm_26/while/NoOp*
T0*
_output_shapes
: q
lstm_26/while/Identity_2Identitylstm_26/while/add:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: ?
lstm_26/while/Identity_3IdentityBlstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_26/while/NoOp*
T0*
_output_shapes
: ?
lstm_26/while/Identity_4Identity%lstm_26/while/lstm_cell_323/mul_2:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_26/while/Identity_5Identity%lstm_26/while/lstm_cell_323/add_1:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_26/while/NoOpNoOp3^lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2^lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp4^lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_26_while_identitylstm_26/while/Identity:output:0"=
lstm_26_while_identity_1!lstm_26/while/Identity_1:output:0"=
lstm_26_while_identity_2!lstm_26/while/Identity_2:output:0"=
lstm_26_while_identity_3!lstm_26/while/Identity_3:output:0"=
lstm_26_while_identity_4!lstm_26/while/Identity_4:output:0"=
lstm_26_while_identity_5!lstm_26/while/Identity_5:output:0"P
%lstm_26_while_lstm_26_strided_slice_1'lstm_26_while_lstm_26_strided_slice_1_0"|
;lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource=lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0"~
<lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource>lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0"z
:lstm_26_while_lstm_cell_323_matmul_readvariableop_resource<lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0"?
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2h
2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2f
1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp2j
3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_dense_8_layer_call_fn_1959520

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
GPU 2J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1956012o
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
?
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956019

inputs"
lstm_24_1955695:	?"
lstm_24_1955697:	d?
lstm_24_1955699:	?"
lstm_25_1955845:	d?"
lstm_25_1955847:	2?
lstm_25_1955849:	?!
lstm_26_1955995:2(!
lstm_26_1955997:
(
lstm_26_1955999:(!
dense_8_1956013:

dense_8_1956015:
identity??dense_8/StatefulPartitionedCall?lstm_24/StatefulPartitionedCall?lstm_25/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_24/StatefulPartitionedCallStatefulPartitionedCallinputslstm_24_1955695lstm_24_1955697lstm_24_1955699*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1955694?
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_1955845lstm_25_1955847lstm_25_1955849*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1955844?
lstm_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0lstm_26_1955995lstm_26_1955997lstm_26_1955999*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955994?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_8_1956013dense_8_1956015*
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
GPU 2J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1956012w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_8_layer_call_fn_1956660
lstm_24_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956608o
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_24_input
?#
?
while_body_1954767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_321_1954791_0:	?0
while_lstm_cell_321_1954793_0:	d?,
while_lstm_cell_321_1954795_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_321_1954791:	?.
while_lstm_cell_321_1954793:	d?*
while_lstm_cell_321_1954795:	???+while/lstm_cell_321/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_321/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_321_1954791_0while_lstm_cell_321_1954793_0while_lstm_cell_321_1954795_0*
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954708?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_321/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_321/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_321/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_321/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_321_1954791while_lstm_cell_321_1954791_0"<
while_lstm_cell_321_1954793while_lstm_cell_321_1954793_0"<
while_lstm_cell_321_1954795while_lstm_cell_321_1954795_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_321/StatefulPartitionedCall+while/lstm_cell_321/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956720
lstm_24_input"
lstm_24_1956693:	?"
lstm_24_1956695:	d?
lstm_24_1956697:	?"
lstm_25_1956700:	d?"
lstm_25_1956702:	2?
lstm_25_1956704:	?!
lstm_26_1956707:2(!
lstm_26_1956709:
(
lstm_26_1956711:(!
dense_8_1956714:

dense_8_1956716:
identity??dense_8/StatefulPartitionedCall?lstm_24/StatefulPartitionedCall?lstm_25/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_24/StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputlstm_24_1956693lstm_24_1956695lstm_24_1956697*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1956540?
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_1956700lstm_25_1956702lstm_25_1956704*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1956375?
lstm_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0lstm_26_1956707lstm_26_1956709lstm_26_1956711*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1956210?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_8_1956714dense_8_1956716*
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
GPU 2J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1956012w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_24_input
?8
?
D__inference_lstm_25_layer_call_and_return_conditional_losses_1954995

inputs(
lstm_cell_322_1954913:	d?(
lstm_cell_322_1954915:	2?$
lstm_cell_322_1954917:	?
identity??%lstm_cell_322/StatefulPartitionedCall?while;
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
%lstm_cell_322/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_322_1954913lstm_cell_322_1954915lstm_cell_322_1954917*
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1954912n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_322_1954913lstm_cell_322_1954915lstm_cell_322_1954917*
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
while_body_1954926*
condR
while_cond_1954925*K
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
NoOpNoOp&^lstm_cell_322/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_322/StatefulPartitionedCall%lstm_cell_322/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959082
inputs_0>
,lstm_cell_323_matmul_readvariableop_resource:2(@
.lstm_cell_323_matmul_1_readvariableop_resource:
(;
-lstm_cell_323_biasadd_readvariableop_resource:(
identity??$lstm_cell_323/BiasAdd/ReadVariableOp?#lstm_cell_323/MatMul/ReadVariableOp?%lstm_cell_323/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_323/MatMul/ReadVariableOpReadVariableOp,lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_323/MatMulMatMulstrided_slice_2:output:0+lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_323/MatMul_1MatMulzeros:output:0-lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_323/addAddV2lstm_cell_323/MatMul:product:0 lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_323/BiasAddBiasAddlstm_cell_323/add:z:0,lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_323/splitSplit&lstm_cell_323/split/split_dim:output:0lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_323/SigmoidSigmoidlstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_1Sigmoidlstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_323/mulMullstm_cell_323/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_323/ReluRelulstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_1Mullstm_cell_323/Sigmoid:y:0 lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_323/add_1AddV2lstm_cell_323/mul:z:0lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_2Sigmoidlstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_323/Relu_1Relulstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_2Mullstm_cell_323/Sigmoid_2:y:0"lstm_cell_323/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_323_matmul_readvariableop_resource.lstm_cell_323_matmul_1_readvariableop_resource-lstm_cell_323_biasadd_readvariableop_resource*
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
while_body_1958998*
condR
while_cond_1958997*K
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
NoOpNoOp%^lstm_cell_323/BiasAdd/ReadVariableOp$^lstm_cell_323/MatMul/ReadVariableOp&^lstm_cell_323/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_323/BiasAdd/ReadVariableOp$lstm_cell_323/BiasAdd/ReadVariableOp2J
#lstm_cell_323/MatMul/ReadVariableOp#lstm_cell_323/MatMul/ReadVariableOp2N
%lstm_cell_323/MatMul_1/ReadVariableOp%lstm_cell_323/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1959628

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
?8
?
while_body_1956126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_323_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_323_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_323_matmul_readvariableop_resource:2(F
4while_lstm_cell_323_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_323_biasadd_readvariableop_resource:(??*while/lstm_cell_323/BiasAdd/ReadVariableOp?)while/lstm_cell_323/MatMul/ReadVariableOp?+while/lstm_cell_323/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_323/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_323/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_323/addAddV2$while/lstm_cell_323/MatMul:product:0&while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_323/BiasAddBiasAddwhile/lstm_cell_323/add:z:02while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_323/splitSplit,while/lstm_cell_323/split/split_dim:output:0$while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_323/SigmoidSigmoid"while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_1Sigmoid"while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mulMul!while/lstm_cell_323/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_323/ReluRelu"while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_1Mulwhile/lstm_cell_323/Sigmoid:y:0&while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/add_1AddV2while/lstm_cell_323/mul:z:0while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_2Sigmoid"while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_323/Relu_1Reluwhile/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_2Mul!while/lstm_cell_323/Sigmoid_2:y:0(while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_323/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_323/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_323/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_323/BiasAdd/ReadVariableOp*^while/lstm_cell_323/MatMul/ReadVariableOp,^while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_323_biasadd_readvariableop_resource5while_lstm_cell_323_biasadd_readvariableop_resource_0"n
4while_lstm_cell_323_matmul_1_readvariableop_resource6while_lstm_cell_323_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_323_matmul_readvariableop_resource4while_lstm_cell_323_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_323/BiasAdd/ReadVariableOp*while/lstm_cell_323/BiasAdd/ReadVariableOp2V
)while/lstm_cell_323/MatMul/ReadVariableOp)while/lstm_cell_323/MatMul/ReadVariableOp2Z
+while/lstm_cell_323/MatMul_1/ReadVariableOp+while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1959792

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
while_cond_1955466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1955466___redundant_placeholder05
1while_while_cond_1955466___redundant_placeholder15
1while_while_cond_1955466___redundant_placeholder25
1while_while_cond_1955466___redundant_placeholder3
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
?Q
?
'sequential_8_lstm_24_while_body_1954127F
Bsequential_8_lstm_24_while_sequential_8_lstm_24_while_loop_counterL
Hsequential_8_lstm_24_while_sequential_8_lstm_24_while_maximum_iterations*
&sequential_8_lstm_24_while_placeholder,
(sequential_8_lstm_24_while_placeholder_1,
(sequential_8_lstm_24_while_placeholder_2,
(sequential_8_lstm_24_while_placeholder_3E
Asequential_8_lstm_24_while_sequential_8_lstm_24_strided_slice_1_0?
}sequential_8_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_24_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_8_lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0:	?^
Ksequential_8_lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?Y
Jsequential_8_lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0:	?'
#sequential_8_lstm_24_while_identity)
%sequential_8_lstm_24_while_identity_1)
%sequential_8_lstm_24_while_identity_2)
%sequential_8_lstm_24_while_identity_3)
%sequential_8_lstm_24_while_identity_4)
%sequential_8_lstm_24_while_identity_5C
?sequential_8_lstm_24_while_sequential_8_lstm_24_strided_slice_1
{sequential_8_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_24_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_8_lstm_24_while_lstm_cell_321_matmul_readvariableop_resource:	?\
Isequential_8_lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource:	d?W
Hsequential_8_lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource:	????sequential_8/lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp?>sequential_8/lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp?@sequential_8/lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp?
Lsequential_8/lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_8/lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_8_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_24_tensorarrayunstack_tensorlistfromtensor_0&sequential_8_lstm_24_while_placeholderUsequential_8/lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
>sequential_8/lstm_24/while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOpIsequential_8_lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
/sequential_8/lstm_24/while/lstm_cell_321/MatMulMatMulEsequential_8/lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_8/lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_8/lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOpKsequential_8_lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_8/lstm_24/while/lstm_cell_321/MatMul_1MatMul(sequential_8_lstm_24_while_placeholder_2Hsequential_8/lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_8/lstm_24/while/lstm_cell_321/addAddV29sequential_8/lstm_24/while/lstm_cell_321/MatMul:product:0;sequential_8/lstm_24/while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_8/lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOpJsequential_8_lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_8/lstm_24/while/lstm_cell_321/BiasAddBiasAdd0sequential_8/lstm_24/while/lstm_cell_321/add:z:0Gsequential_8/lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_8/lstm_24/while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_8/lstm_24/while/lstm_cell_321/splitSplitAsequential_8/lstm_24/while/lstm_cell_321/split/split_dim:output:09sequential_8/lstm_24/while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
0sequential_8/lstm_24/while/lstm_cell_321/SigmoidSigmoid7sequential_8/lstm_24/while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d?
2sequential_8/lstm_24/while/lstm_cell_321/Sigmoid_1Sigmoid7sequential_8/lstm_24/while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
,sequential_8/lstm_24/while/lstm_cell_321/mulMul6sequential_8/lstm_24/while/lstm_cell_321/Sigmoid_1:y:0(sequential_8_lstm_24_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
-sequential_8/lstm_24/while/lstm_cell_321/ReluRelu7sequential_8/lstm_24/while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
.sequential_8/lstm_24/while/lstm_cell_321/mul_1Mul4sequential_8/lstm_24/while/lstm_cell_321/Sigmoid:y:0;sequential_8/lstm_24/while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
.sequential_8/lstm_24/while/lstm_cell_321/add_1AddV20sequential_8/lstm_24/while/lstm_cell_321/mul:z:02sequential_8/lstm_24/while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
2sequential_8/lstm_24/while/lstm_cell_321/Sigmoid_2Sigmoid7sequential_8/lstm_24/while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????d?
/sequential_8/lstm_24/while/lstm_cell_321/Relu_1Relu2sequential_8/lstm_24/while/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_8/lstm_24/while/lstm_cell_321/mul_2Mul6sequential_8/lstm_24/while/lstm_cell_321/Sigmoid_2:y:0=sequential_8/lstm_24/while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
?sequential_8/lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_8_lstm_24_while_placeholder_1&sequential_8_lstm_24_while_placeholder2sequential_8/lstm_24/while/lstm_cell_321/mul_2:z:0*
_output_shapes
: *
element_dtype0:???b
 sequential_8/lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_8/lstm_24/while/addAddV2&sequential_8_lstm_24_while_placeholder)sequential_8/lstm_24/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_8/lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_8/lstm_24/while/add_1AddV2Bsequential_8_lstm_24_while_sequential_8_lstm_24_while_loop_counter+sequential_8/lstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: ?
#sequential_8/lstm_24/while/IdentityIdentity$sequential_8/lstm_24/while/add_1:z:0 ^sequential_8/lstm_24/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_24/while/Identity_1IdentityHsequential_8_lstm_24_while_sequential_8_lstm_24_while_maximum_iterations ^sequential_8/lstm_24/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_24/while/Identity_2Identity"sequential_8/lstm_24/while/add:z:0 ^sequential_8/lstm_24/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_24/while/Identity_3IdentityOsequential_8/lstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_8/lstm_24/while/NoOp*
T0*
_output_shapes
: ?
%sequential_8/lstm_24/while/Identity_4Identity2sequential_8/lstm_24/while/lstm_cell_321/mul_2:z:0 ^sequential_8/lstm_24/while/NoOp*
T0*'
_output_shapes
:?????????d?
%sequential_8/lstm_24/while/Identity_5Identity2sequential_8/lstm_24/while/lstm_cell_321/add_1:z:0 ^sequential_8/lstm_24/while/NoOp*
T0*'
_output_shapes
:?????????d?
sequential_8/lstm_24/while/NoOpNoOp@^sequential_8/lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp?^sequential_8/lstm_24/while/lstm_cell_321/MatMul/ReadVariableOpA^sequential_8/lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_8_lstm_24_while_identity,sequential_8/lstm_24/while/Identity:output:0"W
%sequential_8_lstm_24_while_identity_1.sequential_8/lstm_24/while/Identity_1:output:0"W
%sequential_8_lstm_24_while_identity_2.sequential_8/lstm_24/while/Identity_2:output:0"W
%sequential_8_lstm_24_while_identity_3.sequential_8/lstm_24/while/Identity_3:output:0"W
%sequential_8_lstm_24_while_identity_4.sequential_8/lstm_24/while/Identity_4:output:0"W
%sequential_8_lstm_24_while_identity_5.sequential_8/lstm_24/while/Identity_5:output:0"?
Hsequential_8_lstm_24_while_lstm_cell_321_biasadd_readvariableop_resourceJsequential_8_lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0"?
Isequential_8_lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resourceKsequential_8_lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0"?
Gsequential_8_lstm_24_while_lstm_cell_321_matmul_readvariableop_resourceIsequential_8_lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0"?
?sequential_8_lstm_24_while_sequential_8_lstm_24_strided_slice_1Asequential_8_lstm_24_while_sequential_8_lstm_24_strided_slice_1_0"?
{sequential_8_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_24_tensorarrayunstack_tensorlistfromtensor}sequential_8_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
?sequential_8/lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp?sequential_8/lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2?
>sequential_8/lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp>sequential_8/lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp2?
@sequential_8/lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp@sequential_8/lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1956210

inputs>
,lstm_cell_323_matmul_readvariableop_resource:2(@
.lstm_cell_323_matmul_1_readvariableop_resource:
(;
-lstm_cell_323_biasadd_readvariableop_resource:(
identity??$lstm_cell_323/BiasAdd/ReadVariableOp?#lstm_cell_323/MatMul/ReadVariableOp?%lstm_cell_323/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_323/MatMul/ReadVariableOpReadVariableOp,lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_323/MatMulMatMulstrided_slice_2:output:0+lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_323/MatMul_1MatMulzeros:output:0-lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_323/addAddV2lstm_cell_323/MatMul:product:0 lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_323/BiasAddBiasAddlstm_cell_323/add:z:0,lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_323/splitSplit&lstm_cell_323/split/split_dim:output:0lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_323/SigmoidSigmoidlstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_1Sigmoidlstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_323/mulMullstm_cell_323/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_323/ReluRelulstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_1Mullstm_cell_323/Sigmoid:y:0 lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_323/add_1AddV2lstm_cell_323/mul:z:0lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_2Sigmoidlstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_323/Relu_1Relulstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_2Mullstm_cell_323/Sigmoid_2:y:0"lstm_cell_323/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_323_matmul_readvariableop_resource.lstm_cell_323_matmul_1_readvariableop_resource-lstm_cell_323_biasadd_readvariableop_resource*
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
while_body_1956126*
condR
while_cond_1956125*K
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
NoOpNoOp%^lstm_cell_323/BiasAdd/ReadVariableOp$^lstm_cell_323/MatMul/ReadVariableOp&^lstm_cell_323/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_323/BiasAdd/ReadVariableOp$lstm_cell_323/BiasAdd/ReadVariableOp2J
#lstm_cell_323/MatMul/ReadVariableOp#lstm_cell_323/MatMul/ReadVariableOp2N
%lstm_cell_323/MatMul_1/ReadVariableOp%lstm_cell_323/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?A
?

lstm_26_while_body_1957146,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3+
'lstm_26_while_lstm_26_strided_slice_1_0g
clstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0:2(P
>lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(K
=lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0:(
lstm_26_while_identity
lstm_26_while_identity_1
lstm_26_while_identity_2
lstm_26_while_identity_3
lstm_26_while_identity_4
lstm_26_while_identity_5)
%lstm_26_while_lstm_26_strided_slice_1e
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorL
:lstm_26_while_lstm_cell_323_matmul_readvariableop_resource:2(N
<lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource:
(I
;lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource:(??2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp?1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp?3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp?
?lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0lstm_26_while_placeholderHlstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp<lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
"lstm_26/while/lstm_cell_323/MatMulMatMul8lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp>lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
$lstm_26/while/lstm_cell_323/MatMul_1MatMullstm_26_while_placeholder_2;lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_26/while/lstm_cell_323/addAddV2,lstm_26/while/lstm_cell_323/MatMul:product:0.lstm_26/while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp=lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
#lstm_26/while/lstm_cell_323/BiasAddBiasAdd#lstm_26/while/lstm_cell_323/add:z:0:lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(m
+lstm_26/while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_26/while/lstm_cell_323/splitSplit4lstm_26/while/lstm_cell_323/split/split_dim:output:0,lstm_26/while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
#lstm_26/while/lstm_cell_323/SigmoidSigmoid*lstm_26/while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
?
%lstm_26/while/lstm_cell_323/Sigmoid_1Sigmoid*lstm_26/while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_26/while/lstm_cell_323/mulMul)lstm_26/while/lstm_cell_323/Sigmoid_1:y:0lstm_26_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
 lstm_26/while/lstm_cell_323/ReluRelu*lstm_26/while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
!lstm_26/while/lstm_cell_323/mul_1Mul'lstm_26/while/lstm_cell_323/Sigmoid:y:0.lstm_26/while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
!lstm_26/while/lstm_cell_323/add_1AddV2#lstm_26/while/lstm_cell_323/mul:z:0%lstm_26/while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
%lstm_26/while/lstm_cell_323/Sigmoid_2Sigmoid*lstm_26/while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
?
"lstm_26/while/lstm_cell_323/Relu_1Relu%lstm_26/while/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
!lstm_26/while/lstm_cell_323/mul_2Mul)lstm_26/while/lstm_cell_323/Sigmoid_2:y:00lstm_26/while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_26_while_placeholder_1lstm_26_while_placeholder%lstm_26/while/lstm_cell_323/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_26/while/addAddV2lstm_26_while_placeholderlstm_26/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_26/while/add_1AddV2(lstm_26_while_lstm_26_while_loop_counterlstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_26/while/IdentityIdentitylstm_26/while/add_1:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: ?
lstm_26/while/Identity_1Identity.lstm_26_while_lstm_26_while_maximum_iterations^lstm_26/while/NoOp*
T0*
_output_shapes
: q
lstm_26/while/Identity_2Identitylstm_26/while/add:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: ?
lstm_26/while/Identity_3IdentityBlstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_26/while/NoOp*
T0*
_output_shapes
: ?
lstm_26/while/Identity_4Identity%lstm_26/while/lstm_cell_323/mul_2:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_26/while/Identity_5Identity%lstm_26/while/lstm_cell_323/add_1:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_26/while/NoOpNoOp3^lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2^lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp4^lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_26_while_identitylstm_26/while/Identity:output:0"=
lstm_26_while_identity_1!lstm_26/while/Identity_1:output:0"=
lstm_26_while_identity_2!lstm_26/while/Identity_2:output:0"=
lstm_26_while_identity_3!lstm_26/while/Identity_3:output:0"=
lstm_26_while_identity_4!lstm_26/while/Identity_4:output:0"=
lstm_26_while_identity_5!lstm_26/while/Identity_5:output:0"P
%lstm_26_while_lstm_26_strided_slice_1'lstm_26_while_lstm_26_strided_slice_1_0"|
;lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource=lstm_26_while_lstm_cell_323_biasadd_readvariableop_resource_0"~
<lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource>lstm_26_while_lstm_cell_323_matmul_1_readvariableop_resource_0"z
:lstm_26_while_lstm_cell_323_matmul_readvariableop_resource<lstm_26_while_lstm_cell_323_matmul_readvariableop_resource_0"?
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2h
2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2lstm_26/while/lstm_cell_323/BiasAdd/ReadVariableOp2f
1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp1lstm_26/while/lstm_cell_323/MatMul/ReadVariableOp2j
3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp3lstm_26/while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_25_layer_call_fn_1958290
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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1954995|
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
while_cond_1959140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1959140___redundant_placeholder05
1while_while_cond_1959140___redundant_placeholder15
1while_while_cond_1959140___redundant_placeholder25
1while_while_cond_1959140___redundant_placeholder3
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
while_cond_1959283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1959283___redundant_placeholder05
1while_while_cond_1959283___redundant_placeholder15
1while_while_cond_1959283___redundant_placeholder25
1while_while_cond_1959283___redundant_placeholder3
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
/__inference_lstm_cell_321_layer_call_fn_1959547

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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954562o
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
?
while_cond_1955275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1955275___redundant_placeholder05
1while_while_cond_1955275___redundant_placeholder15
1while_while_cond_1955275___redundant_placeholder25
1while_while_cond_1955275___redundant_placeholder3
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
while_cond_1954766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1954766___redundant_placeholder05
1while_while_cond_1954766___redundant_placeholder15
1while_while_cond_1954766___redundant_placeholder25
1while_while_cond_1954766___redundant_placeholder3
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
/__inference_lstm_cell_323_layer_call_fn_1959760

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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955408o
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
?
?
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1959694

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
?K
?
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958609
inputs_0?
,lstm_cell_322_matmul_readvariableop_resource:	d?A
.lstm_cell_322_matmul_1_readvariableop_resource:	2?<
-lstm_cell_322_biasadd_readvariableop_resource:	?
identity??$lstm_cell_322/BiasAdd/ReadVariableOp?#lstm_cell_322/MatMul/ReadVariableOp?%lstm_cell_322/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_322/MatMul/ReadVariableOpReadVariableOp,lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_322/MatMulMatMulstrided_slice_2:output:0+lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_322/MatMul_1MatMulzeros:output:0-lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_322/addAddV2lstm_cell_322/MatMul:product:0 lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_322/BiasAddBiasAddlstm_cell_322/add:z:0,lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_322/splitSplit&lstm_cell_322/split/split_dim:output:0lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_322/SigmoidSigmoidlstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_1Sigmoidlstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_322/mulMullstm_cell_322/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_322/ReluRelulstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_1Mullstm_cell_322/Sigmoid:y:0 lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_322/add_1AddV2lstm_cell_322/mul:z:0lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_2Sigmoidlstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_322/Relu_1Relulstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_2Mullstm_cell_322/Sigmoid_2:y:0"lstm_cell_322/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_322_matmul_readvariableop_resource.lstm_cell_322_matmul_1_readvariableop_resource-lstm_cell_322_biasadd_readvariableop_resource*
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
while_body_1958525*
condR
while_cond_1958524*K
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
NoOpNoOp%^lstm_cell_322/BiasAdd/ReadVariableOp$^lstm_cell_322/MatMul/ReadVariableOp&^lstm_cell_322/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_322/BiasAdd/ReadVariableOp$lstm_cell_322/BiasAdd/ReadVariableOp2J
#lstm_cell_322/MatMul/ReadVariableOp#lstm_cell_322/MatMul/ReadVariableOp2N
%lstm_cell_322/MatMul_1/ReadVariableOp%lstm_cell_322/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_25_layer_call_and_return_conditional_losses_1956375

inputs?
,lstm_cell_322_matmul_readvariableop_resource:	d?A
.lstm_cell_322_matmul_1_readvariableop_resource:	2?<
-lstm_cell_322_biasadd_readvariableop_resource:	?
identity??$lstm_cell_322/BiasAdd/ReadVariableOp?#lstm_cell_322/MatMul/ReadVariableOp?%lstm_cell_322/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_322/MatMul/ReadVariableOpReadVariableOp,lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_322/MatMulMatMulstrided_slice_2:output:0+lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_322/MatMul_1MatMulzeros:output:0-lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_322/addAddV2lstm_cell_322/MatMul:product:0 lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_322/BiasAddBiasAddlstm_cell_322/add:z:0,lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_322/splitSplit&lstm_cell_322/split/split_dim:output:0lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_322/SigmoidSigmoidlstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_1Sigmoidlstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_322/mulMullstm_cell_322/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_322/ReluRelulstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_1Mullstm_cell_322/Sigmoid:y:0 lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_322/add_1AddV2lstm_cell_322/mul:z:0lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_2Sigmoidlstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_322/Relu_1Relulstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_2Mullstm_cell_322/Sigmoid_2:y:0"lstm_cell_322/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_322_matmul_readvariableop_resource.lstm_cell_322_matmul_1_readvariableop_resource-lstm_cell_322_biasadd_readvariableop_resource*
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
while_body_1956291*
condR
while_cond_1956290*K
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
NoOpNoOp%^lstm_cell_322/BiasAdd/ReadVariableOp$^lstm_cell_322/MatMul/ReadVariableOp&^lstm_cell_322/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_322/BiasAdd/ReadVariableOp$lstm_cell_322/BiasAdd/ReadVariableOp2J
#lstm_cell_322/MatMul/ReadVariableOp#lstm_cell_322/MatMul/ReadVariableOp2N
%lstm_cell_322/MatMul_1/ReadVariableOp%lstm_cell_322/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1958052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_321_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_321_matmul_readvariableop_resource:	?G
4while_lstm_cell_321_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_321_biasadd_readvariableop_resource:	???*while/lstm_cell_321/BiasAdd/ReadVariableOp?)while/lstm_cell_321/MatMul/ReadVariableOp?+while/lstm_cell_321/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_321/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_321/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_321/addAddV2$while/lstm_cell_321/MatMul:product:0&while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_321/BiasAddBiasAddwhile/lstm_cell_321/add:z:02while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_321/splitSplit,while/lstm_cell_321/split/split_dim:output:0$while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_321/SigmoidSigmoid"while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_1Sigmoid"while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mulMul!while/lstm_cell_321/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_321/ReluRelu"while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_1Mulwhile/lstm_cell_321/Sigmoid:y:0&while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/add_1AddV2while/lstm_cell_321/mul:z:0while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_2Sigmoid"while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_321/Relu_1Reluwhile/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_2Mul!while/lstm_cell_321/Sigmoid_2:y:0(while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_321/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_321/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_321/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_321/BiasAdd/ReadVariableOp*^while/lstm_cell_321/MatMul/ReadVariableOp,^while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_321_biasadd_readvariableop_resource5while_lstm_cell_321_biasadd_readvariableop_resource_0"n
4while_lstm_cell_321_matmul_1_readvariableop_resource6while_lstm_cell_321_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_321_matmul_readvariableop_resource4while_lstm_cell_321_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_321/BiasAdd/ReadVariableOp*while/lstm_cell_321/BiasAdd/ReadVariableOp2V
)while/lstm_cell_321/MatMul/ReadVariableOp)while/lstm_cell_321/MatMul/ReadVariableOp2Z
+while/lstm_cell_321/MatMul_1/ReadVariableOp+while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955408

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
?J
?
D__inference_lstm_24_layer_call_and_return_conditional_losses_1956540

inputs?
,lstm_cell_321_matmul_readvariableop_resource:	?A
.lstm_cell_321_matmul_1_readvariableop_resource:	d?<
-lstm_cell_321_biasadd_readvariableop_resource:	?
identity??$lstm_cell_321/BiasAdd/ReadVariableOp?#lstm_cell_321/MatMul/ReadVariableOp?%lstm_cell_321/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_321/MatMul/ReadVariableOpReadVariableOp,lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_321/MatMulMatMulstrided_slice_2:output:0+lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_321/MatMul_1MatMulzeros:output:0-lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_321/addAddV2lstm_cell_321/MatMul:product:0 lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_321/BiasAddBiasAddlstm_cell_321/add:z:0,lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_321/splitSplit&lstm_cell_321/split/split_dim:output:0lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_321/SigmoidSigmoidlstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_1Sigmoidlstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_321/mulMullstm_cell_321/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_321/ReluRelulstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_1Mullstm_cell_321/Sigmoid:y:0 lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_321/add_1AddV2lstm_cell_321/mul:z:0lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_2Sigmoidlstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_321/Relu_1Relulstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_2Mullstm_cell_321/Sigmoid_2:y:0"lstm_cell_321/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_321_matmul_readvariableop_resource.lstm_cell_321_matmul_1_readvariableop_resource-lstm_cell_321_biasadd_readvariableop_resource*
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
while_body_1956456*
condR
while_cond_1956455*K
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
NoOpNoOp%^lstm_cell_321/BiasAdd/ReadVariableOp$^lstm_cell_321/MatMul/ReadVariableOp&^lstm_cell_321/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_321/BiasAdd/ReadVariableOp$lstm_cell_321/BiasAdd/ReadVariableOp2J
#lstm_cell_321/MatMul/ReadVariableOp#lstm_cell_321/MatMul/ReadVariableOp2N
%lstm_cell_321/MatMul_1/ReadVariableOp%lstm_cell_321/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_26_layer_call_fn_1958917
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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955536o
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
?
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956690
lstm_24_input"
lstm_24_1956663:	?"
lstm_24_1956665:	d?
lstm_24_1956667:	?"
lstm_25_1956670:	d?"
lstm_25_1956672:	2?
lstm_25_1956674:	?!
lstm_26_1956677:2(!
lstm_26_1956679:
(
lstm_26_1956681:(!
dense_8_1956684:

dense_8_1956686:
identity??dense_8/StatefulPartitionedCall?lstm_24/StatefulPartitionedCall?lstm_25/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_24/StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputlstm_24_1956663lstm_24_1956665lstm_24_1956667*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1955694?
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_1956670lstm_25_1956672lstm_25_1956674*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1955844?
lstm_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0lstm_26_1956677lstm_26_1956679lstm_26_1956681*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955994?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_8_1956684dense_8_1956686*
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
GPU 2J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1956012w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_24_input
?
?
/__inference_lstm_cell_322_layer_call_fn_1959662

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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1955058o
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
while_body_1956456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_321_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_321_matmul_readvariableop_resource:	?G
4while_lstm_cell_321_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_321_biasadd_readvariableop_resource:	???*while/lstm_cell_321/BiasAdd/ReadVariableOp?)while/lstm_cell_321/MatMul/ReadVariableOp?+while/lstm_cell_321/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_321/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_321/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_321/addAddV2$while/lstm_cell_321/MatMul:product:0&while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_321/BiasAddBiasAddwhile/lstm_cell_321/add:z:02while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_321/splitSplit,while/lstm_cell_321/split/split_dim:output:0$while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_321/SigmoidSigmoid"while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_1Sigmoid"while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mulMul!while/lstm_cell_321/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_321/ReluRelu"while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_1Mulwhile/lstm_cell_321/Sigmoid:y:0&while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/add_1AddV2while/lstm_cell_321/mul:z:0while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_2Sigmoid"while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_321/Relu_1Reluwhile/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_2Mul!while/lstm_cell_321/Sigmoid_2:y:0(while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_321/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_321/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_321/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_321/BiasAdd/ReadVariableOp*^while/lstm_cell_321/MatMul/ReadVariableOp,^while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_321_biasadd_readvariableop_resource5while_lstm_cell_321_biasadd_readvariableop_resource_0"n
4while_lstm_cell_321_matmul_1_readvariableop_resource6while_lstm_cell_321_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_321_matmul_readvariableop_resource4while_lstm_cell_321_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_321/BiasAdd/ReadVariableOp*while/lstm_cell_321/BiasAdd/ReadVariableOp2V
)while/lstm_cell_321/MatMul/ReadVariableOp)while/lstm_cell_321/MatMul/ReadVariableOp2Z
+while/lstm_cell_321/MatMul_1/ReadVariableOp+while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
'sequential_8_lstm_26_while_cond_1954404F
Bsequential_8_lstm_26_while_sequential_8_lstm_26_while_loop_counterL
Hsequential_8_lstm_26_while_sequential_8_lstm_26_while_maximum_iterations*
&sequential_8_lstm_26_while_placeholder,
(sequential_8_lstm_26_while_placeholder_1,
(sequential_8_lstm_26_while_placeholder_2,
(sequential_8_lstm_26_while_placeholder_3H
Dsequential_8_lstm_26_while_less_sequential_8_lstm_26_strided_slice_1_
[sequential_8_lstm_26_while_sequential_8_lstm_26_while_cond_1954404___redundant_placeholder0_
[sequential_8_lstm_26_while_sequential_8_lstm_26_while_cond_1954404___redundant_placeholder1_
[sequential_8_lstm_26_while_sequential_8_lstm_26_while_cond_1954404___redundant_placeholder2_
[sequential_8_lstm_26_while_sequential_8_lstm_26_while_cond_1954404___redundant_placeholder3'
#sequential_8_lstm_26_while_identity
?
sequential_8/lstm_26/while/LessLess&sequential_8_lstm_26_while_placeholderDsequential_8_lstm_26_while_less_sequential_8_lstm_26_strided_slice_1*
T0*
_output_shapes
: u
#sequential_8/lstm_26/while/IdentityIdentity#sequential_8/lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_8_lstm_26_while_identity,sequential_8/lstm_26/while/Identity:output:0*(
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
/__inference_lstm_cell_323_layer_call_fn_1959743

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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955262o
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
?J
?
D__inference_lstm_24_layer_call_and_return_conditional_losses_1958279

inputs?
,lstm_cell_321_matmul_readvariableop_resource:	?A
.lstm_cell_321_matmul_1_readvariableop_resource:	d?<
-lstm_cell_321_biasadd_readvariableop_resource:	?
identity??$lstm_cell_321/BiasAdd/ReadVariableOp?#lstm_cell_321/MatMul/ReadVariableOp?%lstm_cell_321/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_321/MatMul/ReadVariableOpReadVariableOp,lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_321/MatMulMatMulstrided_slice_2:output:0+lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_321/MatMul_1MatMulzeros:output:0-lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_321/addAddV2lstm_cell_321/MatMul:product:0 lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_321/BiasAddBiasAddlstm_cell_321/add:z:0,lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_321/splitSplit&lstm_cell_321/split/split_dim:output:0lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_321/SigmoidSigmoidlstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_1Sigmoidlstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_321/mulMullstm_cell_321/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_321/ReluRelulstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_1Mullstm_cell_321/Sigmoid:y:0 lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_321/add_1AddV2lstm_cell_321/mul:z:0lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_2Sigmoidlstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_321/Relu_1Relulstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_2Mullstm_cell_321/Sigmoid_2:y:0"lstm_cell_321/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_321_matmul_readvariableop_resource.lstm_cell_321_matmul_1_readvariableop_resource-lstm_cell_321_biasadd_readvariableop_resource*
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
while_body_1958195*
condR
while_cond_1958194*K
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
NoOpNoOp%^lstm_cell_321/BiasAdd/ReadVariableOp$^lstm_cell_321/MatMul/ReadVariableOp&^lstm_cell_321/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_321/BiasAdd/ReadVariableOp$lstm_cell_321/BiasAdd/ReadVariableOp2J
#lstm_cell_321/MatMul/ReadVariableOp#lstm_cell_321/MatMul/ReadVariableOp2N
%lstm_cell_321/MatMul_1/ReadVariableOp%lstm_cell_321/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1959596

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
??
?

I__inference_sequential_8_layer_call_and_return_conditional_losses_1957663

inputsG
4lstm_24_lstm_cell_321_matmul_readvariableop_resource:	?I
6lstm_24_lstm_cell_321_matmul_1_readvariableop_resource:	d?D
5lstm_24_lstm_cell_321_biasadd_readvariableop_resource:	?G
4lstm_25_lstm_cell_322_matmul_readvariableop_resource:	d?I
6lstm_25_lstm_cell_322_matmul_1_readvariableop_resource:	2?D
5lstm_25_lstm_cell_322_biasadd_readvariableop_resource:	?F
4lstm_26_lstm_cell_323_matmul_readvariableop_resource:2(H
6lstm_26_lstm_cell_323_matmul_1_readvariableop_resource:
(C
5lstm_26_lstm_cell_323_biasadd_readvariableop_resource:(8
&dense_8_matmul_readvariableop_resource:
5
'dense_8_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp?+lstm_24/lstm_cell_321/MatMul/ReadVariableOp?-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp?lstm_24/while?,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp?+lstm_25/lstm_cell_322/MatMul/ReadVariableOp?-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp?lstm_25/while?,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp?+lstm_26/lstm_cell_323/MatMul/ReadVariableOp?-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp?lstm_26/whileC
lstm_24/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_sliceStridedSlicelstm_24/Shape:output:0$lstm_24/strided_slice/stack:output:0&lstm_24/strided_slice/stack_1:output:0&lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_24/zeros/packedPacklstm_24/strided_slice:output:0lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_24/zerosFilllstm_24/zeros/packed:output:0lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_24/zeros_1/packedPacklstm_24/strided_slice:output:0!lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_24/zeros_1Filllstm_24/zeros_1/packed:output:0lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_24/transpose	Transposeinputslstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_24/Shape_1Shapelstm_24/transpose:y:0*
T0*
_output_shapes
:g
lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_slice_1StridedSlicelstm_24/Shape_1:output:0&lstm_24/strided_slice_1/stack:output:0(lstm_24/strided_slice_1/stack_1:output:0(lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_24/TensorArrayV2TensorListReserve,lstm_24/TensorArrayV2/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_24/transpose:y:0Flstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_slice_2StridedSlicelstm_24/transpose:y:0&lstm_24/strided_slice_2/stack:output:0(lstm_24/strided_slice_2/stack_1:output:0(lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
+lstm_24/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4lstm_24_lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_24/lstm_cell_321/MatMulMatMul lstm_24/strided_slice_2:output:03lstm_24/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6lstm_24_lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_24/lstm_cell_321/MatMul_1MatMullstm_24/zeros:output:05lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_24/lstm_cell_321/addAddV2&lstm_24/lstm_cell_321/MatMul:product:0(lstm_24/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5lstm_24_lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_24/lstm_cell_321/BiasAddBiasAddlstm_24/lstm_cell_321/add:z:04lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_24/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_24/lstm_cell_321/splitSplit.lstm_24/lstm_cell_321/split/split_dim:output:0&lstm_24/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_24/lstm_cell_321/SigmoidSigmoid$lstm_24/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/Sigmoid_1Sigmoid$lstm_24/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/mulMul#lstm_24/lstm_cell_321/Sigmoid_1:y:0lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:?????????dz
lstm_24/lstm_cell_321/ReluRelu$lstm_24/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/mul_1Mul!lstm_24/lstm_cell_321/Sigmoid:y:0(lstm_24/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/add_1AddV2lstm_24/lstm_cell_321/mul:z:0lstm_24/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/Sigmoid_2Sigmoid$lstm_24/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dw
lstm_24/lstm_cell_321/Relu_1Relulstm_24/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/mul_2Mul#lstm_24/lstm_cell_321/Sigmoid_2:y:0*lstm_24/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_24/TensorArrayV2_1TensorListReserve.lstm_24/TensorArrayV2_1/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_24/whileWhile#lstm_24/while/loop_counter:output:0)lstm_24/while/maximum_iterations:output:0lstm_24/time:output:0 lstm_24/TensorArrayV2_1:handle:0lstm_24/zeros:output:0lstm_24/zeros_1:output:0 lstm_24/strided_slice_1:output:0?lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_24_lstm_cell_321_matmul_readvariableop_resource6lstm_24_lstm_cell_321_matmul_1_readvariableop_resource5lstm_24_lstm_cell_321_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_24_while_body_1957295*&
condR
lstm_24_while_cond_1957294*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_24/TensorArrayV2Stack/TensorListStackTensorListStacklstm_24/while:output:3Alstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_slice_3StridedSlice3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_24/strided_slice_3/stack:output:0(lstm_24/strided_slice_3/stack_1:output:0(lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_24/transpose_1	Transpose3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_25/ShapeShapelstm_24/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_25/transpose	Transposelstm_24/transpose_1:y:0lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
:g
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
+lstm_25/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_25/lstm_cell_322/MatMulMatMul lstm_25/strided_slice_2:output:03lstm_25/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6lstm_25_lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_25/lstm_cell_322/MatMul_1MatMullstm_25/zeros:output:05lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_25/lstm_cell_322/addAddV2&lstm_25/lstm_cell_322/MatMul:product:0(lstm_25/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5lstm_25_lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_25/lstm_cell_322/BiasAddBiasAddlstm_25/lstm_cell_322/add:z:04lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_25/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_25/lstm_cell_322/splitSplit.lstm_25/lstm_cell_322/split/split_dim:output:0&lstm_25/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_25/lstm_cell_322/SigmoidSigmoid$lstm_25/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/Sigmoid_1Sigmoid$lstm_25/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/mulMul#lstm_25/lstm_cell_322/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:?????????2z
lstm_25/lstm_cell_322/ReluRelu$lstm_25/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/mul_1Mul!lstm_25/lstm_cell_322/Sigmoid:y:0(lstm_25/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/add_1AddV2lstm_25/lstm_cell_322/mul:z:0lstm_25/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/Sigmoid_2Sigmoid$lstm_25/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2w
lstm_25/lstm_cell_322/Relu_1Relulstm_25/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/mul_2Mul#lstm_25/lstm_cell_322/Sigmoid_2:y:0*lstm_25/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_25_lstm_cell_322_matmul_readvariableop_resource6lstm_25_lstm_cell_322_matmul_1_readvariableop_resource5lstm_25_lstm_cell_322_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_25_while_body_1957434*&
condR
lstm_25_while_cond_1957433*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_26/ShapeShapelstm_25/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_sliceStridedSlicelstm_26/Shape:output:0$lstm_26/strided_slice/stack:output:0&lstm_26/strided_slice/stack_1:output:0&lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_26/zeros/packedPacklstm_26/strided_slice:output:0lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_26/zerosFilllstm_26/zeros/packed:output:0lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_26/zeros_1/packedPacklstm_26/strided_slice:output:0!lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_26/zeros_1Filllstm_26/zeros_1/packed:output:0lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_26/transpose	Transposelstm_25/transpose_1:y:0lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_26/Shape_1Shapelstm_26/transpose:y:0*
T0*
_output_shapes
:g
lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_slice_1StridedSlicelstm_26/Shape_1:output:0&lstm_26/strided_slice_1/stack:output:0(lstm_26/strided_slice_1/stack_1:output:0(lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_26/TensorArrayV2TensorListReserve,lstm_26/TensorArrayV2/element_shape:output:0 lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_26/transpose:y:0Flstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_slice_2StridedSlicelstm_26/transpose:y:0&lstm_26/strided_slice_2/stack:output:0(lstm_26/strided_slice_2/stack_1:output:0(lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
+lstm_26/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4lstm_26_lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_26/lstm_cell_323/MatMulMatMul lstm_26/strided_slice_2:output:03lstm_26/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6lstm_26_lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_26/lstm_cell_323/MatMul_1MatMullstm_26/zeros:output:05lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_26/lstm_cell_323/addAddV2&lstm_26/lstm_cell_323/MatMul:product:0(lstm_26/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5lstm_26_lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_26/lstm_cell_323/BiasAddBiasAddlstm_26/lstm_cell_323/add:z:04lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(g
%lstm_26/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_26/lstm_cell_323/splitSplit.lstm_26/lstm_cell_323/split/split_dim:output:0&lstm_26/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_26/lstm_cell_323/SigmoidSigmoid$lstm_26/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/Sigmoid_1Sigmoid$lstm_26/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/mulMul#lstm_26/lstm_cell_323/Sigmoid_1:y:0lstm_26/zeros_1:output:0*
T0*'
_output_shapes
:?????????
z
lstm_26/lstm_cell_323/ReluRelu$lstm_26/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/mul_1Mul!lstm_26/lstm_cell_323/Sigmoid:y:0(lstm_26/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/add_1AddV2lstm_26/lstm_cell_323/mul:z:0lstm_26/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/Sigmoid_2Sigmoid$lstm_26/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
w
lstm_26/lstm_cell_323/Relu_1Relulstm_26/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/mul_2Mul#lstm_26/lstm_cell_323/Sigmoid_2:y:0*lstm_26/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_26/TensorArrayV2_1TensorListReserve.lstm_26/TensorArrayV2_1/element_shape:output:0 lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_26/whileWhile#lstm_26/while/loop_counter:output:0)lstm_26/while/maximum_iterations:output:0lstm_26/time:output:0 lstm_26/TensorArrayV2_1:handle:0lstm_26/zeros:output:0lstm_26/zeros_1:output:0 lstm_26/strided_slice_1:output:0?lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_26_lstm_cell_323_matmul_readvariableop_resource6lstm_26_lstm_cell_323_matmul_1_readvariableop_resource5lstm_26_lstm_cell_323_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_26_while_body_1957573*&
condR
lstm_26_while_cond_1957572*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_26/TensorArrayV2Stack/TensorListStackTensorListStacklstm_26/while:output:3Alstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_slice_3StridedSlice3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_26/strided_slice_3/stack:output:0(lstm_26/strided_slice_3/stack_1:output:0(lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_26/transpose_1	Transpose3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_26/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_8/MatMulMatMul lstm_26/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_8/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp-^lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp,^lstm_24/lstm_cell_321/MatMul/ReadVariableOp.^lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp^lstm_24/while-^lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp,^lstm_25/lstm_cell_322/MatMul/ReadVariableOp.^lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp^lstm_25/while-^lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp,^lstm_26/lstm_cell_323/MatMul/ReadVariableOp.^lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp^lstm_26/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2\
,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp2Z
+lstm_24/lstm_cell_321/MatMul/ReadVariableOp+lstm_24/lstm_cell_321/MatMul/ReadVariableOp2^
-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp2
lstm_24/whilelstm_24/while2\
,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp2Z
+lstm_25/lstm_cell_322/MatMul/ReadVariableOp+lstm_25/lstm_cell_322/MatMul/ReadVariableOp2^
-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp2
lstm_25/whilelstm_25/while2\
,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp2Z
+lstm_26/lstm_cell_323/MatMul/ReadVariableOp+lstm_26/lstm_cell_323/MatMul/ReadVariableOp2^
-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp2
lstm_26/whilelstm_26/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955345

inputs'
lstm_cell_323_1955263:2('
lstm_cell_323_1955265:
(#
lstm_cell_323_1955267:(
identity??%lstm_cell_323/StatefulPartitionedCall?while;
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
%lstm_cell_323/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_323_1955263lstm_cell_323_1955265lstm_cell_323_1955267*
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955262n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_323_1955263lstm_cell_323_1955265lstm_cell_323_1955267*
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
while_body_1955276*
condR
while_cond_1955275*K
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
NoOpNoOp&^lstm_cell_323/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_323/StatefulPartitionedCall%lstm_cell_323/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_26_layer_call_fn_1958939

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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1956210o
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
?
D__inference_lstm_25_layer_call_and_return_conditional_losses_1955186

inputs(
lstm_cell_322_1955104:	d?(
lstm_cell_322_1955106:	2?$
lstm_cell_322_1955108:	?
identity??%lstm_cell_322/StatefulPartitionedCall?while;
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
%lstm_cell_322/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_322_1955104lstm_cell_322_1955106lstm_cell_322_1955108*
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1955058n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_322_1955104lstm_cell_322_1955106lstm_cell_322_1955108*
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
while_body_1955117*
condR
while_cond_1955116*K
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
NoOpNoOp&^lstm_cell_322/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_322/StatefulPartitionedCall%lstm_cell_322/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_24_layer_call_and_return_conditional_losses_1955694

inputs?
,lstm_cell_321_matmul_readvariableop_resource:	?A
.lstm_cell_321_matmul_1_readvariableop_resource:	d?<
-lstm_cell_321_biasadd_readvariableop_resource:	?
identity??$lstm_cell_321/BiasAdd/ReadVariableOp?#lstm_cell_321/MatMul/ReadVariableOp?%lstm_cell_321/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_321/MatMul/ReadVariableOpReadVariableOp,lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_321/MatMulMatMulstrided_slice_2:output:0+lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_321/MatMul_1MatMulzeros:output:0-lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_321/addAddV2lstm_cell_321/MatMul:product:0 lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_321/BiasAddBiasAddlstm_cell_321/add:z:0,lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_321/splitSplit&lstm_cell_321/split/split_dim:output:0lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_321/SigmoidSigmoidlstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_1Sigmoidlstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_321/mulMullstm_cell_321/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_321/ReluRelulstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_1Mullstm_cell_321/Sigmoid:y:0 lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_321/add_1AddV2lstm_cell_321/mul:z:0lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_2Sigmoidlstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_321/Relu_1Relulstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_2Mullstm_cell_321/Sigmoid_2:y:0"lstm_cell_321/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_321_matmul_readvariableop_resource.lstm_cell_321_matmul_1_readvariableop_resource-lstm_cell_321_biasadd_readvariableop_resource*
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
while_body_1955610*
condR
while_cond_1955609*K
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
NoOpNoOp%^lstm_cell_321/BiasAdd/ReadVariableOp$^lstm_cell_321/MatMul/ReadVariableOp&^lstm_cell_321/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_321/BiasAdd/ReadVariableOp$lstm_cell_321/BiasAdd/ReadVariableOp2J
#lstm_cell_321/MatMul/ReadVariableOp#lstm_cell_321/MatMul/ReadVariableOp2N
%lstm_cell_321/MatMul_1/ReadVariableOp%lstm_cell_321/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?

I__inference_sequential_8_layer_call_and_return_conditional_losses_1957236

inputsG
4lstm_24_lstm_cell_321_matmul_readvariableop_resource:	?I
6lstm_24_lstm_cell_321_matmul_1_readvariableop_resource:	d?D
5lstm_24_lstm_cell_321_biasadd_readvariableop_resource:	?G
4lstm_25_lstm_cell_322_matmul_readvariableop_resource:	d?I
6lstm_25_lstm_cell_322_matmul_1_readvariableop_resource:	2?D
5lstm_25_lstm_cell_322_biasadd_readvariableop_resource:	?F
4lstm_26_lstm_cell_323_matmul_readvariableop_resource:2(H
6lstm_26_lstm_cell_323_matmul_1_readvariableop_resource:
(C
5lstm_26_lstm_cell_323_biasadd_readvariableop_resource:(8
&dense_8_matmul_readvariableop_resource:
5
'dense_8_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp?+lstm_24/lstm_cell_321/MatMul/ReadVariableOp?-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp?lstm_24/while?,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp?+lstm_25/lstm_cell_322/MatMul/ReadVariableOp?-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp?lstm_25/while?,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp?+lstm_26/lstm_cell_323/MatMul/ReadVariableOp?-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp?lstm_26/whileC
lstm_24/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_sliceStridedSlicelstm_24/Shape:output:0$lstm_24/strided_slice/stack:output:0&lstm_24/strided_slice/stack_1:output:0&lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_24/zeros/packedPacklstm_24/strided_slice:output:0lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_24/zerosFilllstm_24/zeros/packed:output:0lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_24/zeros_1/packedPacklstm_24/strided_slice:output:0!lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_24/zeros_1Filllstm_24/zeros_1/packed:output:0lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_24/transpose	Transposeinputslstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_24/Shape_1Shapelstm_24/transpose:y:0*
T0*
_output_shapes
:g
lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_slice_1StridedSlicelstm_24/Shape_1:output:0&lstm_24/strided_slice_1/stack:output:0(lstm_24/strided_slice_1/stack_1:output:0(lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_24/TensorArrayV2TensorListReserve,lstm_24/TensorArrayV2/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_24/transpose:y:0Flstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_slice_2StridedSlicelstm_24/transpose:y:0&lstm_24/strided_slice_2/stack:output:0(lstm_24/strided_slice_2/stack_1:output:0(lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
+lstm_24/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4lstm_24_lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_24/lstm_cell_321/MatMulMatMul lstm_24/strided_slice_2:output:03lstm_24/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6lstm_24_lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_24/lstm_cell_321/MatMul_1MatMullstm_24/zeros:output:05lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_24/lstm_cell_321/addAddV2&lstm_24/lstm_cell_321/MatMul:product:0(lstm_24/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5lstm_24_lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_24/lstm_cell_321/BiasAddBiasAddlstm_24/lstm_cell_321/add:z:04lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_24/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_24/lstm_cell_321/splitSplit.lstm_24/lstm_cell_321/split/split_dim:output:0&lstm_24/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_24/lstm_cell_321/SigmoidSigmoid$lstm_24/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/Sigmoid_1Sigmoid$lstm_24/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/mulMul#lstm_24/lstm_cell_321/Sigmoid_1:y:0lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:?????????dz
lstm_24/lstm_cell_321/ReluRelu$lstm_24/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/mul_1Mul!lstm_24/lstm_cell_321/Sigmoid:y:0(lstm_24/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/add_1AddV2lstm_24/lstm_cell_321/mul:z:0lstm_24/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/Sigmoid_2Sigmoid$lstm_24/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dw
lstm_24/lstm_cell_321/Relu_1Relulstm_24/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_24/lstm_cell_321/mul_2Mul#lstm_24/lstm_cell_321/Sigmoid_2:y:0*lstm_24/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_24/TensorArrayV2_1TensorListReserve.lstm_24/TensorArrayV2_1/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_24/whileWhile#lstm_24/while/loop_counter:output:0)lstm_24/while/maximum_iterations:output:0lstm_24/time:output:0 lstm_24/TensorArrayV2_1:handle:0lstm_24/zeros:output:0lstm_24/zeros_1:output:0 lstm_24/strided_slice_1:output:0?lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_24_lstm_cell_321_matmul_readvariableop_resource6lstm_24_lstm_cell_321_matmul_1_readvariableop_resource5lstm_24_lstm_cell_321_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_24_while_body_1956868*&
condR
lstm_24_while_cond_1956867*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_24/TensorArrayV2Stack/TensorListStackTensorListStacklstm_24/while:output:3Alstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_24/strided_slice_3StridedSlice3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_24/strided_slice_3/stack:output:0(lstm_24/strided_slice_3/stack_1:output:0(lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_24/transpose_1	Transpose3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_25/ShapeShapelstm_24/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_25/transpose	Transposelstm_24/transpose_1:y:0lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
:g
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
+lstm_25/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_25/lstm_cell_322/MatMulMatMul lstm_25/strided_slice_2:output:03lstm_25/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6lstm_25_lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_25/lstm_cell_322/MatMul_1MatMullstm_25/zeros:output:05lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_25/lstm_cell_322/addAddV2&lstm_25/lstm_cell_322/MatMul:product:0(lstm_25/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5lstm_25_lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_25/lstm_cell_322/BiasAddBiasAddlstm_25/lstm_cell_322/add:z:04lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_25/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_25/lstm_cell_322/splitSplit.lstm_25/lstm_cell_322/split/split_dim:output:0&lstm_25/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_25/lstm_cell_322/SigmoidSigmoid$lstm_25/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/Sigmoid_1Sigmoid$lstm_25/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/mulMul#lstm_25/lstm_cell_322/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:?????????2z
lstm_25/lstm_cell_322/ReluRelu$lstm_25/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/mul_1Mul!lstm_25/lstm_cell_322/Sigmoid:y:0(lstm_25/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/add_1AddV2lstm_25/lstm_cell_322/mul:z:0lstm_25/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/Sigmoid_2Sigmoid$lstm_25/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2w
lstm_25/lstm_cell_322/Relu_1Relulstm_25/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_25/lstm_cell_322/mul_2Mul#lstm_25/lstm_cell_322/Sigmoid_2:y:0*lstm_25/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_25_lstm_cell_322_matmul_readvariableop_resource6lstm_25_lstm_cell_322_matmul_1_readvariableop_resource5lstm_25_lstm_cell_322_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_25_while_body_1957007*&
condR
lstm_25_while_cond_1957006*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_26/ShapeShapelstm_25/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_sliceStridedSlicelstm_26/Shape:output:0$lstm_26/strided_slice/stack:output:0&lstm_26/strided_slice/stack_1:output:0&lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_26/zeros/packedPacklstm_26/strided_slice:output:0lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_26/zerosFilllstm_26/zeros/packed:output:0lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_26/zeros_1/packedPacklstm_26/strided_slice:output:0!lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_26/zeros_1Filllstm_26/zeros_1/packed:output:0lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_26/transpose	Transposelstm_25/transpose_1:y:0lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_26/Shape_1Shapelstm_26/transpose:y:0*
T0*
_output_shapes
:g
lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_slice_1StridedSlicelstm_26/Shape_1:output:0&lstm_26/strided_slice_1/stack:output:0(lstm_26/strided_slice_1/stack_1:output:0(lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_26/TensorArrayV2TensorListReserve,lstm_26/TensorArrayV2/element_shape:output:0 lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_26/transpose:y:0Flstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_slice_2StridedSlicelstm_26/transpose:y:0&lstm_26/strided_slice_2/stack:output:0(lstm_26/strided_slice_2/stack_1:output:0(lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
+lstm_26/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4lstm_26_lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_26/lstm_cell_323/MatMulMatMul lstm_26/strided_slice_2:output:03lstm_26/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6lstm_26_lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_26/lstm_cell_323/MatMul_1MatMullstm_26/zeros:output:05lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_26/lstm_cell_323/addAddV2&lstm_26/lstm_cell_323/MatMul:product:0(lstm_26/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5lstm_26_lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_26/lstm_cell_323/BiasAddBiasAddlstm_26/lstm_cell_323/add:z:04lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(g
%lstm_26/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_26/lstm_cell_323/splitSplit.lstm_26/lstm_cell_323/split/split_dim:output:0&lstm_26/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_26/lstm_cell_323/SigmoidSigmoid$lstm_26/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/Sigmoid_1Sigmoid$lstm_26/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/mulMul#lstm_26/lstm_cell_323/Sigmoid_1:y:0lstm_26/zeros_1:output:0*
T0*'
_output_shapes
:?????????
z
lstm_26/lstm_cell_323/ReluRelu$lstm_26/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/mul_1Mul!lstm_26/lstm_cell_323/Sigmoid:y:0(lstm_26/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/add_1AddV2lstm_26/lstm_cell_323/mul:z:0lstm_26/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/Sigmoid_2Sigmoid$lstm_26/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
w
lstm_26/lstm_cell_323/Relu_1Relulstm_26/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_26/lstm_cell_323/mul_2Mul#lstm_26/lstm_cell_323/Sigmoid_2:y:0*lstm_26/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_26/TensorArrayV2_1TensorListReserve.lstm_26/TensorArrayV2_1/element_shape:output:0 lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_26/whileWhile#lstm_26/while/loop_counter:output:0)lstm_26/while/maximum_iterations:output:0lstm_26/time:output:0 lstm_26/TensorArrayV2_1:handle:0lstm_26/zeros:output:0lstm_26/zeros_1:output:0 lstm_26/strided_slice_1:output:0?lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_26_lstm_cell_323_matmul_readvariableop_resource6lstm_26_lstm_cell_323_matmul_1_readvariableop_resource5lstm_26_lstm_cell_323_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_26_while_body_1957146*&
condR
lstm_26_while_cond_1957145*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_26/TensorArrayV2Stack/TensorListStackTensorListStacklstm_26/while:output:3Alstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_26/strided_slice_3StridedSlice3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_26/strided_slice_3/stack:output:0(lstm_26/strided_slice_3/stack_1:output:0(lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_26/transpose_1	Transpose3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_26/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_8/MatMulMatMul lstm_26/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_8/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp-^lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp,^lstm_24/lstm_cell_321/MatMul/ReadVariableOp.^lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp^lstm_24/while-^lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp,^lstm_25/lstm_cell_322/MatMul/ReadVariableOp.^lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp^lstm_25/while-^lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp,^lstm_26/lstm_cell_323/MatMul/ReadVariableOp.^lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp^lstm_26/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2\
,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp,lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp2Z
+lstm_24/lstm_cell_321/MatMul/ReadVariableOp+lstm_24/lstm_cell_321/MatMul/ReadVariableOp2^
-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp-lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp2
lstm_24/whilelstm_24/while2\
,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp,lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp2Z
+lstm_25/lstm_cell_322/MatMul/ReadVariableOp+lstm_25/lstm_cell_322/MatMul/ReadVariableOp2^
-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp-lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp2
lstm_25/whilelstm_25/while2\
,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp,lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp2Z
+lstm_26/lstm_cell_323/MatMul/ReadVariableOp+lstm_26/lstm_cell_323/MatMul/ReadVariableOp2^
-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp-lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp2
lstm_26/whilelstm_26/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_24_layer_call_and_return_conditional_losses_1954645

inputs(
lstm_cell_321_1954563:	?(
lstm_cell_321_1954565:	d?$
lstm_cell_321_1954567:	?
identity??%lstm_cell_321/StatefulPartitionedCall?while;
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
%lstm_cell_321/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_321_1954563lstm_cell_321_1954565lstm_cell_321_1954567*
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954562n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_321_1954563lstm_cell_321_1954565lstm_cell_321_1954567*
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
while_body_1954576*
condR
while_cond_1954575*K
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
NoOpNoOp&^lstm_cell_321/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_321/StatefulPartitionedCall%lstm_cell_321/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?V
?
 __inference__traced_save_1959967
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_24_lstm_cell_24_kernel_read_readvariableopD
@savev2_lstm_24_lstm_cell_24_recurrent_kernel_read_readvariableop8
4savev2_lstm_24_lstm_cell_24_bias_read_readvariableop:
6savev2_lstm_25_lstm_cell_25_kernel_read_readvariableopD
@savev2_lstm_25_lstm_cell_25_recurrent_kernel_read_readvariableop8
4savev2_lstm_25_lstm_cell_25_bias_read_readvariableop:
6savev2_lstm_26_lstm_cell_26_kernel_read_readvariableopD
@savev2_lstm_26_lstm_cell_26_recurrent_kernel_read_readvariableop8
4savev2_lstm_26_lstm_cell_26_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableopA
=savev2_adam_lstm_24_lstm_cell_24_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_24_lstm_cell_24_bias_m_read_readvariableopA
=savev2_adam_lstm_25_lstm_cell_25_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_25_lstm_cell_25_bias_m_read_readvariableopA
=savev2_adam_lstm_26_lstm_cell_26_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_26_lstm_cell_26_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableopA
=savev2_adam_lstm_24_lstm_cell_24_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_24_lstm_cell_24_bias_v_read_readvariableopA
=savev2_adam_lstm_25_lstm_cell_25_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_25_lstm_cell_25_bias_v_read_readvariableopA
=savev2_adam_lstm_26_lstm_cell_26_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_26_lstm_cell_26_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_24_lstm_cell_24_kernel_read_readvariableop@savev2_lstm_24_lstm_cell_24_recurrent_kernel_read_readvariableop4savev2_lstm_24_lstm_cell_24_bias_read_readvariableop6savev2_lstm_25_lstm_cell_25_kernel_read_readvariableop@savev2_lstm_25_lstm_cell_25_recurrent_kernel_read_readvariableop4savev2_lstm_25_lstm_cell_25_bias_read_readvariableop6savev2_lstm_26_lstm_cell_26_kernel_read_readvariableop@savev2_lstm_26_lstm_cell_26_recurrent_kernel_read_readvariableop4savev2_lstm_26_lstm_cell_26_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop=savev2_adam_lstm_24_lstm_cell_24_kernel_m_read_readvariableopGsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_24_lstm_cell_24_bias_m_read_readvariableop=savev2_adam_lstm_25_lstm_cell_25_kernel_m_read_readvariableopGsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_25_lstm_cell_25_bias_m_read_readvariableop=savev2_adam_lstm_26_lstm_cell_26_kernel_m_read_readvariableopGsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_26_lstm_cell_26_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop=savev2_adam_lstm_24_lstm_cell_24_kernel_v_read_readvariableopGsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_24_lstm_cell_24_bias_v_read_readvariableop=savev2_adam_lstm_25_lstm_cell_25_kernel_v_read_readvariableopGsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_25_lstm_cell_25_bias_v_read_readvariableop=savev2_adam_lstm_26_lstm_cell_26_kernel_v_read_readvariableopGsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_26_lstm_cell_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1957909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_321_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_321_matmul_readvariableop_resource:	?G
4while_lstm_cell_321_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_321_biasadd_readvariableop_resource:	???*while/lstm_cell_321/BiasAdd/ReadVariableOp?)while/lstm_cell_321/MatMul/ReadVariableOp?+while/lstm_cell_321/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_321/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_321/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_321/addAddV2$while/lstm_cell_321/MatMul:product:0&while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_321/BiasAddBiasAddwhile/lstm_cell_321/add:z:02while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_321/splitSplit,while/lstm_cell_321/split/split_dim:output:0$while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_321/SigmoidSigmoid"while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_1Sigmoid"while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mulMul!while/lstm_cell_321/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_321/ReluRelu"while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_1Mulwhile/lstm_cell_321/Sigmoid:y:0&while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/add_1AddV2while/lstm_cell_321/mul:z:0while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_2Sigmoid"while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_321/Relu_1Reluwhile/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_2Mul!while/lstm_cell_321/Sigmoid_2:y:0(while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_321/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_321/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_321/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_321/BiasAdd/ReadVariableOp*^while/lstm_cell_321/MatMul/ReadVariableOp,^while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_321_biasadd_readvariableop_resource5while_lstm_cell_321_biasadd_readvariableop_resource_0"n
4while_lstm_cell_321_matmul_1_readvariableop_resource6while_lstm_cell_321_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_321_matmul_readvariableop_resource4while_lstm_cell_321_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_321/BiasAdd/ReadVariableOp*while/lstm_cell_321/BiasAdd/ReadVariableOp2V
)while/lstm_cell_321/MatMul/ReadVariableOp)while/lstm_cell_321/MatMul/ReadVariableOp2Z
+while/lstm_cell_321/MatMul_1/ReadVariableOp+while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?B
?

lstm_24_while_body_1956868,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3+
'lstm_24_while_lstm_24_strided_slice_1_0g
clstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0:	?Q
>lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?L
=lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
lstm_24_while_identity
lstm_24_while_identity_1
lstm_24_while_identity_2
lstm_24_while_identity_3
lstm_24_while_identity_4
lstm_24_while_identity_5)
%lstm_24_while_lstm_24_strided_slice_1e
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorM
:lstm_24_while_lstm_cell_321_matmul_readvariableop_resource:	?O
<lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource:	d?J
;lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource:	???2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp?1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp?3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp?
?lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0lstm_24_while_placeholderHlstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp<lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
"lstm_24/while/lstm_cell_321/MatMulMatMul8lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp>lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
$lstm_24/while/lstm_cell_321/MatMul_1MatMullstm_24_while_placeholder_2;lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_24/while/lstm_cell_321/addAddV2,lstm_24/while/lstm_cell_321/MatMul:product:0.lstm_24/while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp=lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_24/while/lstm_cell_321/BiasAddBiasAdd#lstm_24/while/lstm_cell_321/add:z:0:lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_24/while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_24/while/lstm_cell_321/splitSplit4lstm_24/while/lstm_cell_321/split/split_dim:output:0,lstm_24/while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
#lstm_24/while/lstm_cell_321/SigmoidSigmoid*lstm_24/while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d?
%lstm_24/while/lstm_cell_321/Sigmoid_1Sigmoid*lstm_24/while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_24/while/lstm_cell_321/mulMul)lstm_24/while/lstm_cell_321/Sigmoid_1:y:0lstm_24_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
 lstm_24/while/lstm_cell_321/ReluRelu*lstm_24/while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
!lstm_24/while/lstm_cell_321/mul_1Mul'lstm_24/while/lstm_cell_321/Sigmoid:y:0.lstm_24/while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
!lstm_24/while/lstm_cell_321/add_1AddV2#lstm_24/while/lstm_cell_321/mul:z:0%lstm_24/while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
%lstm_24/while/lstm_cell_321/Sigmoid_2Sigmoid*lstm_24/while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????d?
"lstm_24/while/lstm_cell_321/Relu_1Relu%lstm_24/while/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
!lstm_24/while/lstm_cell_321/mul_2Mul)lstm_24/while/lstm_cell_321/Sigmoid_2:y:00lstm_24/while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_24_while_placeholder_1lstm_24_while_placeholder%lstm_24/while/lstm_cell_321/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_24/while/addAddV2lstm_24_while_placeholderlstm_24/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_24/while/add_1AddV2(lstm_24_while_lstm_24_while_loop_counterlstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_24/while/IdentityIdentitylstm_24/while/add_1:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ?
lstm_24/while/Identity_1Identity.lstm_24_while_lstm_24_while_maximum_iterations^lstm_24/while/NoOp*
T0*
_output_shapes
: q
lstm_24/while/Identity_2Identitylstm_24/while/add:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ?
lstm_24/while/Identity_3IdentityBlstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ?
lstm_24/while/Identity_4Identity%lstm_24/while/lstm_cell_321/mul_2:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_24/while/Identity_5Identity%lstm_24/while/lstm_cell_321/add_1:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_24/while/NoOpNoOp3^lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2^lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp4^lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_24_while_identitylstm_24/while/Identity:output:0"=
lstm_24_while_identity_1!lstm_24/while/Identity_1:output:0"=
lstm_24_while_identity_2!lstm_24/while/Identity_2:output:0"=
lstm_24_while_identity_3!lstm_24/while/Identity_3:output:0"=
lstm_24_while_identity_4!lstm_24/while/Identity_4:output:0"=
lstm_24_while_identity_5!lstm_24/while/Identity_5:output:0"P
%lstm_24_while_lstm_24_strided_slice_1'lstm_24_while_lstm_24_strided_slice_1_0"|
;lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource=lstm_24_while_lstm_cell_321_biasadd_readvariableop_resource_0"~
<lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource>lstm_24_while_lstm_cell_321_matmul_1_readvariableop_resource_0"z
:lstm_24_while_lstm_cell_321_matmul_readvariableop_resource<lstm_24_while_lstm_cell_321_matmul_readvariableop_resource_0"?
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2h
2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2lstm_24/while/lstm_cell_321/BiasAdd/ReadVariableOp2f
1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp1lstm_24/while/lstm_cell_321/MatMul/ReadVariableOp2j
3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp3lstm_24/while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1957993
inputs_0?
,lstm_cell_321_matmul_readvariableop_resource:	?A
.lstm_cell_321_matmul_1_readvariableop_resource:	d?<
-lstm_cell_321_biasadd_readvariableop_resource:	?
identity??$lstm_cell_321/BiasAdd/ReadVariableOp?#lstm_cell_321/MatMul/ReadVariableOp?%lstm_cell_321/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_321/MatMul/ReadVariableOpReadVariableOp,lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_321/MatMulMatMulstrided_slice_2:output:0+lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_321/MatMul_1MatMulzeros:output:0-lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_321/addAddV2lstm_cell_321/MatMul:product:0 lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_321/BiasAddBiasAddlstm_cell_321/add:z:0,lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_321/splitSplit&lstm_cell_321/split/split_dim:output:0lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_321/SigmoidSigmoidlstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_1Sigmoidlstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_321/mulMullstm_cell_321/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_321/ReluRelulstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_1Mullstm_cell_321/Sigmoid:y:0 lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_321/add_1AddV2lstm_cell_321/mul:z:0lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_321/Sigmoid_2Sigmoidlstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_321/Relu_1Relulstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_321/mul_2Mullstm_cell_321/Sigmoid_2:y:0"lstm_cell_321/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_321_matmul_readvariableop_resource.lstm_cell_321_matmul_1_readvariableop_resource-lstm_cell_321_biasadd_readvariableop_resource*
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
while_body_1957909*
condR
while_cond_1957908*K
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
NoOpNoOp%^lstm_cell_321/BiasAdd/ReadVariableOp$^lstm_cell_321/MatMul/ReadVariableOp&^lstm_cell_321/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_321/BiasAdd/ReadVariableOp$lstm_cell_321/BiasAdd/ReadVariableOp2J
#lstm_cell_321/MatMul/ReadVariableOp#lstm_cell_321/MatMul/ReadVariableOp2N
%lstm_cell_321/MatMul_1/ReadVariableOp%lstm_cell_321/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
.__inference_sequential_8_layer_call_fn_1956782

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
GPU 2J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956019o
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
while_body_1958668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_322_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_322_matmul_readvariableop_resource:	d?G
4while_lstm_cell_322_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_322_biasadd_readvariableop_resource:	???*while/lstm_cell_322/BiasAdd/ReadVariableOp?)while/lstm_cell_322/MatMul/ReadVariableOp?+while/lstm_cell_322/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_322/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_322/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_322/addAddV2$while/lstm_cell_322/MatMul:product:0&while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_322/BiasAddBiasAddwhile/lstm_cell_322/add:z:02while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_322/splitSplit,while/lstm_cell_322/split/split_dim:output:0$while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_322/SigmoidSigmoid"while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_1Sigmoid"while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mulMul!while/lstm_cell_322/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_322/ReluRelu"while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_1Mulwhile/lstm_cell_322/Sigmoid:y:0&while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/add_1AddV2while/lstm_cell_322/mul:z:0while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_2Sigmoid"while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_322/Relu_1Reluwhile/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_2Mul!while/lstm_cell_322/Sigmoid_2:y:0(while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_322/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_322/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_322/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_322/BiasAdd/ReadVariableOp*^while/lstm_cell_322/MatMul/ReadVariableOp,^while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_322_biasadd_readvariableop_resource5while_lstm_cell_322_biasadd_readvariableop_resource_0"n
4while_lstm_cell_322_matmul_1_readvariableop_resource6while_lstm_cell_322_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_322_matmul_readvariableop_resource4while_lstm_cell_322_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_322/BiasAdd/ReadVariableOp*while/lstm_cell_322/BiasAdd/ReadVariableOp2V
)while/lstm_cell_322/MatMul/ReadVariableOp)while/lstm_cell_322/MatMul/ReadVariableOp2Z
+while/lstm_cell_322/MatMul_1/ReadVariableOp+while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1959426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1959426___redundant_placeholder05
1while_while_cond_1959426___redundant_placeholder15
1while_while_cond_1959426___redundant_placeholder25
1while_while_cond_1959426___redundant_placeholder3
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
while_body_1955117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_322_1955141_0:	d?0
while_lstm_cell_322_1955143_0:	2?,
while_lstm_cell_322_1955145_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_322_1955141:	d?.
while_lstm_cell_322_1955143:	2?*
while_lstm_cell_322_1955145:	???+while/lstm_cell_322/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_322/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_322_1955141_0while_lstm_cell_322_1955143_0while_lstm_cell_322_1955145_0*
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1955058?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_322/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_322/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_322/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_322/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_322_1955141while_lstm_cell_322_1955141_0"<
while_lstm_cell_322_1955143while_lstm_cell_322_1955143_0"<
while_lstm_cell_322_1955145while_lstm_cell_322_1955145_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_322/StatefulPartitionedCall+while/lstm_cell_322/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
߯
?
"__inference__wrapped_model_1954495
lstm_24_inputT
Asequential_8_lstm_24_lstm_cell_321_matmul_readvariableop_resource:	?V
Csequential_8_lstm_24_lstm_cell_321_matmul_1_readvariableop_resource:	d?Q
Bsequential_8_lstm_24_lstm_cell_321_biasadd_readvariableop_resource:	?T
Asequential_8_lstm_25_lstm_cell_322_matmul_readvariableop_resource:	d?V
Csequential_8_lstm_25_lstm_cell_322_matmul_1_readvariableop_resource:	2?Q
Bsequential_8_lstm_25_lstm_cell_322_biasadd_readvariableop_resource:	?S
Asequential_8_lstm_26_lstm_cell_323_matmul_readvariableop_resource:2(U
Csequential_8_lstm_26_lstm_cell_323_matmul_1_readvariableop_resource:
(P
Bsequential_8_lstm_26_lstm_cell_323_biasadd_readvariableop_resource:(E
3sequential_8_dense_8_matmul_readvariableop_resource:
B
4sequential_8_dense_8_biasadd_readvariableop_resource:
identity??+sequential_8/dense_8/BiasAdd/ReadVariableOp?*sequential_8/dense_8/MatMul/ReadVariableOp?9sequential_8/lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp?8sequential_8/lstm_24/lstm_cell_321/MatMul/ReadVariableOp?:sequential_8/lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp?sequential_8/lstm_24/while?9sequential_8/lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp?8sequential_8/lstm_25/lstm_cell_322/MatMul/ReadVariableOp?:sequential_8/lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp?sequential_8/lstm_25/while?9sequential_8/lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp?8sequential_8/lstm_26/lstm_cell_323/MatMul/ReadVariableOp?:sequential_8/lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp?sequential_8/lstm_26/whileW
sequential_8/lstm_24/ShapeShapelstm_24_input*
T0*
_output_shapes
:r
(sequential_8/lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_8/lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_8/lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"sequential_8/lstm_24/strided_sliceStridedSlice#sequential_8/lstm_24/Shape:output:01sequential_8/lstm_24/strided_slice/stack:output:03sequential_8/lstm_24/strided_slice/stack_1:output:03sequential_8/lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_8/lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
!sequential_8/lstm_24/zeros/packedPack+sequential_8/lstm_24/strided_slice:output:0,sequential_8/lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_8/lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_8/lstm_24/zerosFill*sequential_8/lstm_24/zeros/packed:output:0)sequential_8/lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dg
%sequential_8/lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_8/lstm_24/zeros_1/packedPack+sequential_8/lstm_24/strided_slice:output:0.sequential_8/lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_8/lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_8/lstm_24/zeros_1Fill,sequential_8/lstm_24/zeros_1/packed:output:0+sequential_8/lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dx
#sequential_8/lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_8/lstm_24/transpose	Transposelstm_24_input,sequential_8/lstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:?????????n
sequential_8/lstm_24/Shape_1Shape"sequential_8/lstm_24/transpose:y:0*
T0*
_output_shapes
:t
*sequential_8/lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_8/lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_24/strided_slice_1StridedSlice%sequential_8/lstm_24/Shape_1:output:03sequential_8/lstm_24/strided_slice_1/stack:output:05sequential_8/lstm_24/strided_slice_1/stack_1:output:05sequential_8/lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_8/lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_8/lstm_24/TensorArrayV2TensorListReserve9sequential_8/lstm_24/TensorArrayV2/element_shape:output:0-sequential_8/lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Jsequential_8/lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
<sequential_8/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_8/lstm_24/transpose:y:0Ssequential_8/lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???t
*sequential_8/lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_8/lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_24/strided_slice_2StridedSlice"sequential_8/lstm_24/transpose:y:03sequential_8/lstm_24/strided_slice_2/stack:output:05sequential_8/lstm_24/strided_slice_2/stack_1:output:05sequential_8/lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
8sequential_8/lstm_24/lstm_cell_321/MatMul/ReadVariableOpReadVariableOpAsequential_8_lstm_24_lstm_cell_321_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
)sequential_8/lstm_24/lstm_cell_321/MatMulMatMul-sequential_8/lstm_24/strided_slice_2:output:0@sequential_8/lstm_24/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_8/lstm_24/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOpCsequential_8_lstm_24_lstm_cell_321_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_8/lstm_24/lstm_cell_321/MatMul_1MatMul#sequential_8/lstm_24/zeros:output:0Bsequential_8/lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_8/lstm_24/lstm_cell_321/addAddV23sequential_8/lstm_24/lstm_cell_321/MatMul:product:05sequential_8/lstm_24/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_8/lstm_24/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOpBsequential_8_lstm_24_lstm_cell_321_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_8/lstm_24/lstm_cell_321/BiasAddBiasAdd*sequential_8/lstm_24/lstm_cell_321/add:z:0Asequential_8/lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_8/lstm_24/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_8/lstm_24/lstm_cell_321/splitSplit;sequential_8/lstm_24/lstm_cell_321/split/split_dim:output:03sequential_8/lstm_24/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
*sequential_8/lstm_24/lstm_cell_321/SigmoidSigmoid1sequential_8/lstm_24/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d?
,sequential_8/lstm_24/lstm_cell_321/Sigmoid_1Sigmoid1sequential_8/lstm_24/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
&sequential_8/lstm_24/lstm_cell_321/mulMul0sequential_8/lstm_24/lstm_cell_321/Sigmoid_1:y:0%sequential_8/lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
'sequential_8/lstm_24/lstm_cell_321/ReluRelu1sequential_8/lstm_24/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
(sequential_8/lstm_24/lstm_cell_321/mul_1Mul.sequential_8/lstm_24/lstm_cell_321/Sigmoid:y:05sequential_8/lstm_24/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
(sequential_8/lstm_24/lstm_cell_321/add_1AddV2*sequential_8/lstm_24/lstm_cell_321/mul:z:0,sequential_8/lstm_24/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
,sequential_8/lstm_24/lstm_cell_321/Sigmoid_2Sigmoid1sequential_8/lstm_24/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????d?
)sequential_8/lstm_24/lstm_cell_321/Relu_1Relu,sequential_8/lstm_24/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
(sequential_8/lstm_24/lstm_cell_321/mul_2Mul0sequential_8/lstm_24/lstm_cell_321/Sigmoid_2:y:07sequential_8/lstm_24/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2sequential_8/lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
$sequential_8/lstm_24/TensorArrayV2_1TensorListReserve;sequential_8/lstm_24/TensorArrayV2_1/element_shape:output:0-sequential_8/lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???[
sequential_8/lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_8/lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????i
'sequential_8/lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_8/lstm_24/whileWhile0sequential_8/lstm_24/while/loop_counter:output:06sequential_8/lstm_24/while/maximum_iterations:output:0"sequential_8/lstm_24/time:output:0-sequential_8/lstm_24/TensorArrayV2_1:handle:0#sequential_8/lstm_24/zeros:output:0%sequential_8/lstm_24/zeros_1:output:0-sequential_8/lstm_24/strided_slice_1:output:0Lsequential_8/lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_8_lstm_24_lstm_cell_321_matmul_readvariableop_resourceCsequential_8_lstm_24_lstm_cell_321_matmul_1_readvariableop_resourceBsequential_8_lstm_24_lstm_cell_321_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_8_lstm_24_while_body_1954127*3
cond+R)
'sequential_8_lstm_24_while_cond_1954126*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Esequential_8/lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
7sequential_8/lstm_24/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_8/lstm_24/while:output:3Nsequential_8/lstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0}
*sequential_8/lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,sequential_8/lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_24/strided_slice_3StridedSlice@sequential_8/lstm_24/TensorArrayV2Stack/TensorListStack:tensor:03sequential_8/lstm_24/strided_slice_3/stack:output:05sequential_8/lstm_24/strided_slice_3/stack_1:output:05sequential_8/lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskz
%sequential_8/lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_8/lstm_24/transpose_1	Transpose@sequential_8/lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_8/lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dp
sequential_8/lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
sequential_8/lstm_25/ShapeShape$sequential_8/lstm_24/transpose_1:y:0*
T0*
_output_shapes
:r
(sequential_8/lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_8/lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_8/lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"sequential_8/lstm_25/strided_sliceStridedSlice#sequential_8/lstm_25/Shape:output:01sequential_8/lstm_25/strided_slice/stack:output:03sequential_8/lstm_25/strided_slice/stack_1:output:03sequential_8/lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_8/lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
!sequential_8/lstm_25/zeros/packedPack+sequential_8/lstm_25/strided_slice:output:0,sequential_8/lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_8/lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_8/lstm_25/zerosFill*sequential_8/lstm_25/zeros/packed:output:0)sequential_8/lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2g
%sequential_8/lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_8/lstm_25/zeros_1/packedPack+sequential_8/lstm_25/strided_slice:output:0.sequential_8/lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_8/lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_8/lstm_25/zeros_1Fill,sequential_8/lstm_25/zeros_1/packed:output:0+sequential_8/lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2x
#sequential_8/lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_8/lstm_25/transpose	Transpose$sequential_8/lstm_24/transpose_1:y:0,sequential_8/lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dn
sequential_8/lstm_25/Shape_1Shape"sequential_8/lstm_25/transpose:y:0*
T0*
_output_shapes
:t
*sequential_8/lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_8/lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_25/strided_slice_1StridedSlice%sequential_8/lstm_25/Shape_1:output:03sequential_8/lstm_25/strided_slice_1/stack:output:05sequential_8/lstm_25/strided_slice_1/stack_1:output:05sequential_8/lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_8/lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_8/lstm_25/TensorArrayV2TensorListReserve9sequential_8/lstm_25/TensorArrayV2/element_shape:output:0-sequential_8/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Jsequential_8/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
<sequential_8/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_8/lstm_25/transpose:y:0Ssequential_8/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???t
*sequential_8/lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_8/lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_25/strided_slice_2StridedSlice"sequential_8/lstm_25/transpose:y:03sequential_8/lstm_25/strided_slice_2/stack:output:05sequential_8/lstm_25/strided_slice_2/stack_1:output:05sequential_8/lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
8sequential_8/lstm_25/lstm_cell_322/MatMul/ReadVariableOpReadVariableOpAsequential_8_lstm_25_lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
)sequential_8/lstm_25/lstm_cell_322/MatMulMatMul-sequential_8/lstm_25/strided_slice_2:output:0@sequential_8/lstm_25/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_8/lstm_25/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOpCsequential_8_lstm_25_lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
+sequential_8/lstm_25/lstm_cell_322/MatMul_1MatMul#sequential_8/lstm_25/zeros:output:0Bsequential_8/lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_8/lstm_25/lstm_cell_322/addAddV23sequential_8/lstm_25/lstm_cell_322/MatMul:product:05sequential_8/lstm_25/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_8/lstm_25/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOpBsequential_8_lstm_25_lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_8/lstm_25/lstm_cell_322/BiasAddBiasAdd*sequential_8/lstm_25/lstm_cell_322/add:z:0Asequential_8/lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_8/lstm_25/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_8/lstm_25/lstm_cell_322/splitSplit;sequential_8/lstm_25/lstm_cell_322/split/split_dim:output:03sequential_8/lstm_25/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
*sequential_8/lstm_25/lstm_cell_322/SigmoidSigmoid1sequential_8/lstm_25/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2?
,sequential_8/lstm_25/lstm_cell_322/Sigmoid_1Sigmoid1sequential_8/lstm_25/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
&sequential_8/lstm_25/lstm_cell_322/mulMul0sequential_8/lstm_25/lstm_cell_322/Sigmoid_1:y:0%sequential_8/lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
'sequential_8/lstm_25/lstm_cell_322/ReluRelu1sequential_8/lstm_25/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
(sequential_8/lstm_25/lstm_cell_322/mul_1Mul.sequential_8/lstm_25/lstm_cell_322/Sigmoid:y:05sequential_8/lstm_25/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
(sequential_8/lstm_25/lstm_cell_322/add_1AddV2*sequential_8/lstm_25/lstm_cell_322/mul:z:0,sequential_8/lstm_25/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
,sequential_8/lstm_25/lstm_cell_322/Sigmoid_2Sigmoid1sequential_8/lstm_25/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2?
)sequential_8/lstm_25/lstm_cell_322/Relu_1Relu,sequential_8/lstm_25/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
(sequential_8/lstm_25/lstm_cell_322/mul_2Mul0sequential_8/lstm_25/lstm_cell_322/Sigmoid_2:y:07sequential_8/lstm_25/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2sequential_8/lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
$sequential_8/lstm_25/TensorArrayV2_1TensorListReserve;sequential_8/lstm_25/TensorArrayV2_1/element_shape:output:0-sequential_8/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???[
sequential_8/lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_8/lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????i
'sequential_8/lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_8/lstm_25/whileWhile0sequential_8/lstm_25/while/loop_counter:output:06sequential_8/lstm_25/while/maximum_iterations:output:0"sequential_8/lstm_25/time:output:0-sequential_8/lstm_25/TensorArrayV2_1:handle:0#sequential_8/lstm_25/zeros:output:0%sequential_8/lstm_25/zeros_1:output:0-sequential_8/lstm_25/strided_slice_1:output:0Lsequential_8/lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_8_lstm_25_lstm_cell_322_matmul_readvariableop_resourceCsequential_8_lstm_25_lstm_cell_322_matmul_1_readvariableop_resourceBsequential_8_lstm_25_lstm_cell_322_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_8_lstm_25_while_body_1954266*3
cond+R)
'sequential_8_lstm_25_while_cond_1954265*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Esequential_8/lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
7sequential_8/lstm_25/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_8/lstm_25/while:output:3Nsequential_8/lstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0}
*sequential_8/lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,sequential_8/lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_25/strided_slice_3StridedSlice@sequential_8/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:03sequential_8/lstm_25/strided_slice_3/stack:output:05sequential_8/lstm_25/strided_slice_3/stack_1:output:05sequential_8/lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskz
%sequential_8/lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_8/lstm_25/transpose_1	Transpose@sequential_8/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_8/lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2p
sequential_8/lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
sequential_8/lstm_26/ShapeShape$sequential_8/lstm_25/transpose_1:y:0*
T0*
_output_shapes
:r
(sequential_8/lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_8/lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_8/lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"sequential_8/lstm_26/strided_sliceStridedSlice#sequential_8/lstm_26/Shape:output:01sequential_8/lstm_26/strided_slice/stack:output:03sequential_8/lstm_26/strided_slice/stack_1:output:03sequential_8/lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_8/lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!sequential_8/lstm_26/zeros/packedPack+sequential_8/lstm_26/strided_slice:output:0,sequential_8/lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_8/lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_8/lstm_26/zerosFill*sequential_8/lstm_26/zeros/packed:output:0)sequential_8/lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
g
%sequential_8/lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_8/lstm_26/zeros_1/packedPack+sequential_8/lstm_26/strided_slice:output:0.sequential_8/lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_8/lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_8/lstm_26/zeros_1Fill,sequential_8/lstm_26/zeros_1/packed:output:0+sequential_8/lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
x
#sequential_8/lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_8/lstm_26/transpose	Transpose$sequential_8/lstm_25/transpose_1:y:0,sequential_8/lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2n
sequential_8/lstm_26/Shape_1Shape"sequential_8/lstm_26/transpose:y:0*
T0*
_output_shapes
:t
*sequential_8/lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_8/lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_26/strided_slice_1StridedSlice%sequential_8/lstm_26/Shape_1:output:03sequential_8/lstm_26/strided_slice_1/stack:output:05sequential_8/lstm_26/strided_slice_1/stack_1:output:05sequential_8/lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_8/lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_8/lstm_26/TensorArrayV2TensorListReserve9sequential_8/lstm_26/TensorArrayV2/element_shape:output:0-sequential_8/lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Jsequential_8/lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
<sequential_8/lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_8/lstm_26/transpose:y:0Ssequential_8/lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???t
*sequential_8/lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_8/lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_26/strided_slice_2StridedSlice"sequential_8/lstm_26/transpose:y:03sequential_8/lstm_26/strided_slice_2/stack:output:05sequential_8/lstm_26/strided_slice_2/stack_1:output:05sequential_8/lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
8sequential_8/lstm_26/lstm_cell_323/MatMul/ReadVariableOpReadVariableOpAsequential_8_lstm_26_lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
)sequential_8/lstm_26/lstm_cell_323/MatMulMatMul-sequential_8/lstm_26/strided_slice_2:output:0@sequential_8/lstm_26/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
:sequential_8/lstm_26/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOpCsequential_8_lstm_26_lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
+sequential_8/lstm_26/lstm_cell_323/MatMul_1MatMul#sequential_8/lstm_26/zeros:output:0Bsequential_8/lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
&sequential_8/lstm_26/lstm_cell_323/addAddV23sequential_8/lstm_26/lstm_cell_323/MatMul:product:05sequential_8/lstm_26/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
9sequential_8/lstm_26/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOpBsequential_8_lstm_26_lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
*sequential_8/lstm_26/lstm_cell_323/BiasAddBiasAdd*sequential_8/lstm_26/lstm_cell_323/add:z:0Asequential_8/lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(t
2sequential_8/lstm_26/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_8/lstm_26/lstm_cell_323/splitSplit;sequential_8/lstm_26/lstm_cell_323/split/split_dim:output:03sequential_8/lstm_26/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
*sequential_8/lstm_26/lstm_cell_323/SigmoidSigmoid1sequential_8/lstm_26/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
?
,sequential_8/lstm_26/lstm_cell_323/Sigmoid_1Sigmoid1sequential_8/lstm_26/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
&sequential_8/lstm_26/lstm_cell_323/mulMul0sequential_8/lstm_26/lstm_cell_323/Sigmoid_1:y:0%sequential_8/lstm_26/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
'sequential_8/lstm_26/lstm_cell_323/ReluRelu1sequential_8/lstm_26/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
(sequential_8/lstm_26/lstm_cell_323/mul_1Mul.sequential_8/lstm_26/lstm_cell_323/Sigmoid:y:05sequential_8/lstm_26/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
(sequential_8/lstm_26/lstm_cell_323/add_1AddV2*sequential_8/lstm_26/lstm_cell_323/mul:z:0,sequential_8/lstm_26/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
,sequential_8/lstm_26/lstm_cell_323/Sigmoid_2Sigmoid1sequential_8/lstm_26/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
?
)sequential_8/lstm_26/lstm_cell_323/Relu_1Relu,sequential_8/lstm_26/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
(sequential_8/lstm_26/lstm_cell_323/mul_2Mul0sequential_8/lstm_26/lstm_cell_323/Sigmoid_2:y:07sequential_8/lstm_26/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2sequential_8/lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
$sequential_8/lstm_26/TensorArrayV2_1TensorListReserve;sequential_8/lstm_26/TensorArrayV2_1/element_shape:output:0-sequential_8/lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???[
sequential_8/lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_8/lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????i
'sequential_8/lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_8/lstm_26/whileWhile0sequential_8/lstm_26/while/loop_counter:output:06sequential_8/lstm_26/while/maximum_iterations:output:0"sequential_8/lstm_26/time:output:0-sequential_8/lstm_26/TensorArrayV2_1:handle:0#sequential_8/lstm_26/zeros:output:0%sequential_8/lstm_26/zeros_1:output:0-sequential_8/lstm_26/strided_slice_1:output:0Lsequential_8/lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_8_lstm_26_lstm_cell_323_matmul_readvariableop_resourceCsequential_8_lstm_26_lstm_cell_323_matmul_1_readvariableop_resourceBsequential_8_lstm_26_lstm_cell_323_biasadd_readvariableop_resource*
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
_stateful_parallelism( *3
body+R)
'sequential_8_lstm_26_while_body_1954405*3
cond+R)
'sequential_8_lstm_26_while_cond_1954404*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Esequential_8/lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
7sequential_8/lstm_26/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_8/lstm_26/while:output:3Nsequential_8/lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0}
*sequential_8/lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,sequential_8/lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_8/lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_8/lstm_26/strided_slice_3StridedSlice@sequential_8/lstm_26/TensorArrayV2Stack/TensorListStack:tensor:03sequential_8/lstm_26/strided_slice_3/stack:output:05sequential_8/lstm_26/strided_slice_3/stack_1:output:05sequential_8/lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskz
%sequential_8/lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_8/lstm_26/transpose_1	Transpose@sequential_8/lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_8/lstm_26/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
p
sequential_8/lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
*sequential_8/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_8_dense_8_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_8/dense_8/MatMulMatMul-sequential_8/lstm_26/strided_slice_3:output:02sequential_8/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_8/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_8_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_8/dense_8/BiasAddBiasAdd%sequential_8/dense_8/MatMul:product:03sequential_8/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_8/dense_8/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_8/dense_8/BiasAdd/ReadVariableOp+^sequential_8/dense_8/MatMul/ReadVariableOp:^sequential_8/lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp9^sequential_8/lstm_24/lstm_cell_321/MatMul/ReadVariableOp;^sequential_8/lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp^sequential_8/lstm_24/while:^sequential_8/lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp9^sequential_8/lstm_25/lstm_cell_322/MatMul/ReadVariableOp;^sequential_8/lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp^sequential_8/lstm_25/while:^sequential_8/lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp9^sequential_8/lstm_26/lstm_cell_323/MatMul/ReadVariableOp;^sequential_8/lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp^sequential_8/lstm_26/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2Z
+sequential_8/dense_8/BiasAdd/ReadVariableOp+sequential_8/dense_8/BiasAdd/ReadVariableOp2X
*sequential_8/dense_8/MatMul/ReadVariableOp*sequential_8/dense_8/MatMul/ReadVariableOp2v
9sequential_8/lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp9sequential_8/lstm_24/lstm_cell_321/BiasAdd/ReadVariableOp2t
8sequential_8/lstm_24/lstm_cell_321/MatMul/ReadVariableOp8sequential_8/lstm_24/lstm_cell_321/MatMul/ReadVariableOp2x
:sequential_8/lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp:sequential_8/lstm_24/lstm_cell_321/MatMul_1/ReadVariableOp28
sequential_8/lstm_24/whilesequential_8/lstm_24/while2v
9sequential_8/lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp9sequential_8/lstm_25/lstm_cell_322/BiasAdd/ReadVariableOp2t
8sequential_8/lstm_25/lstm_cell_322/MatMul/ReadVariableOp8sequential_8/lstm_25/lstm_cell_322/MatMul/ReadVariableOp2x
:sequential_8/lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp:sequential_8/lstm_25/lstm_cell_322/MatMul_1/ReadVariableOp28
sequential_8/lstm_25/whilesequential_8/lstm_25/while2v
9sequential_8/lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp9sequential_8/lstm_26/lstm_cell_323/BiasAdd/ReadVariableOp2t
8sequential_8/lstm_26/lstm_cell_323/MatMul/ReadVariableOp8sequential_8/lstm_26/lstm_cell_323/MatMul/ReadVariableOp2x
:sequential_8/lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp:sequential_8/lstm_26/lstm_cell_323/MatMul_1/ReadVariableOp28
sequential_8/lstm_26/whilesequential_8/lstm_26/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_24_input
?
?
)__inference_lstm_25_layer_call_fn_1958301
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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1955186|
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
?K
?
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958466
inputs_0?
,lstm_cell_322_matmul_readvariableop_resource:	d?A
.lstm_cell_322_matmul_1_readvariableop_resource:	2?<
-lstm_cell_322_biasadd_readvariableop_resource:	?
identity??$lstm_cell_322/BiasAdd/ReadVariableOp?#lstm_cell_322/MatMul/ReadVariableOp?%lstm_cell_322/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_322/MatMul/ReadVariableOpReadVariableOp,lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_322/MatMulMatMulstrided_slice_2:output:0+lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_322/MatMul_1MatMulzeros:output:0-lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_322/addAddV2lstm_cell_322/MatMul:product:0 lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_322/BiasAddBiasAddlstm_cell_322/add:z:0,lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_322/splitSplit&lstm_cell_322/split/split_dim:output:0lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_322/SigmoidSigmoidlstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_1Sigmoidlstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_322/mulMullstm_cell_322/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_322/ReluRelulstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_1Mullstm_cell_322/Sigmoid:y:0 lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_322/add_1AddV2lstm_cell_322/mul:z:0lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_2Sigmoidlstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_322/Relu_1Relulstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_2Mullstm_cell_322/Sigmoid_2:y:0"lstm_cell_322/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_322_matmul_readvariableop_resource.lstm_cell_322_matmul_1_readvariableop_resource-lstm_cell_322_biasadd_readvariableop_resource*
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
while_body_1958382*
condR
while_cond_1958381*K
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
NoOpNoOp%^lstm_cell_322/BiasAdd/ReadVariableOp$^lstm_cell_322/MatMul/ReadVariableOp&^lstm_cell_322/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_322/BiasAdd/ReadVariableOp$lstm_cell_322/BiasAdd/ReadVariableOp2J
#lstm_cell_322/MatMul/ReadVariableOp#lstm_cell_322/MatMul/ReadVariableOp2N
%lstm_cell_322/MatMul_1/ReadVariableOp%lstm_cell_322/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956608

inputs"
lstm_24_1956581:	?"
lstm_24_1956583:	d?
lstm_24_1956585:	?"
lstm_25_1956588:	d?"
lstm_25_1956590:	2?
lstm_25_1956592:	?!
lstm_26_1956595:2(!
lstm_26_1956597:
(
lstm_26_1956599:(!
dense_8_1956602:

dense_8_1956604:
identity??dense_8/StatefulPartitionedCall?lstm_24/StatefulPartitionedCall?lstm_25/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_24/StatefulPartitionedCallStatefulPartitionedCallinputslstm_24_1956581lstm_24_1956583lstm_24_1956585*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1956540?
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_1956588lstm_25_1956590lstm_25_1956592*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1956375?
lstm_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0lstm_26_1956595lstm_26_1956597lstm_26_1956599*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1956210?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_8_1956602dense_8_1956604*
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
GPU 2J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1956012w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_25_layer_call_fn_1958323

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
GPU 2J 8? *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1956375s
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
while_cond_1957908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1957908___redundant_placeholder05
1while_while_cond_1957908___redundant_placeholder15
1while_while_cond_1957908___redundant_placeholder25
1while_while_cond_1957908___redundant_placeholder3
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
while_body_1958998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_323_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_323_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_323_matmul_readvariableop_resource:2(F
4while_lstm_cell_323_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_323_biasadd_readvariableop_resource:(??*while/lstm_cell_323/BiasAdd/ReadVariableOp?)while/lstm_cell_323/MatMul/ReadVariableOp?+while/lstm_cell_323/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_323/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_323/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_323/addAddV2$while/lstm_cell_323/MatMul:product:0&while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_323/BiasAddBiasAddwhile/lstm_cell_323/add:z:02while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_323/splitSplit,while/lstm_cell_323/split/split_dim:output:0$while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_323/SigmoidSigmoid"while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_1Sigmoid"while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mulMul!while/lstm_cell_323/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_323/ReluRelu"while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_1Mulwhile/lstm_cell_323/Sigmoid:y:0&while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/add_1AddV2while/lstm_cell_323/mul:z:0while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_2Sigmoid"while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_323/Relu_1Reluwhile/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_2Mul!while/lstm_cell_323/Sigmoid_2:y:0(while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_323/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_323/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_323/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_323/BiasAdd/ReadVariableOp*^while/lstm_cell_323/MatMul/ReadVariableOp,^while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_323_biasadd_readvariableop_resource5while_lstm_cell_323_biasadd_readvariableop_resource_0"n
4while_lstm_cell_323_matmul_1_readvariableop_resource6while_lstm_cell_323_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_323_matmul_readvariableop_resource4while_lstm_cell_323_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_323/BiasAdd/ReadVariableOp*while/lstm_cell_323/BiasAdd/ReadVariableOp2V
)while/lstm_cell_323/MatMul/ReadVariableOp)while/lstm_cell_323/MatMul/ReadVariableOp2Z
+while/lstm_cell_323/MatMul_1/ReadVariableOp+while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1955609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1955609___redundant_placeholder05
1while_while_cond_1955609___redundant_placeholder15
1while_while_cond_1955609___redundant_placeholder25
1while_while_cond_1955609___redundant_placeholder3
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

?
.__inference_sequential_8_layer_call_fn_1956809

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
GPU 2J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956608o
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
?B
?

lstm_25_while_body_1957007,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0:	d?Q
>lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?L
=lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorM
:lstm_25_while_lstm_cell_322_matmul_readvariableop_resource:	d?O
<lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource:	2?J
;lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource:	???2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp?1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp?3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp?
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
"lstm_25/while/lstm_cell_322/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp>lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
$lstm_25/while/lstm_cell_322/MatMul_1MatMullstm_25_while_placeholder_2;lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_25/while/lstm_cell_322/addAddV2,lstm_25/while/lstm_cell_322/MatMul:product:0.lstm_25/while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp=lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_25/while/lstm_cell_322/BiasAddBiasAdd#lstm_25/while/lstm_cell_322/add:z:0:lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_25/while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_25/while/lstm_cell_322/splitSplit4lstm_25/while/lstm_cell_322/split/split_dim:output:0,lstm_25/while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
#lstm_25/while/lstm_cell_322/SigmoidSigmoid*lstm_25/while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2?
%lstm_25/while/lstm_cell_322/Sigmoid_1Sigmoid*lstm_25/while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_25/while/lstm_cell_322/mulMul)lstm_25/while/lstm_cell_322/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
 lstm_25/while/lstm_cell_322/ReluRelu*lstm_25/while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
!lstm_25/while/lstm_cell_322/mul_1Mul'lstm_25/while/lstm_cell_322/Sigmoid:y:0.lstm_25/while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
!lstm_25/while/lstm_cell_322/add_1AddV2#lstm_25/while/lstm_cell_322/mul:z:0%lstm_25/while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
%lstm_25/while/lstm_cell_322/Sigmoid_2Sigmoid*lstm_25/while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2?
"lstm_25/while/lstm_cell_322/Relu_1Relu%lstm_25/while/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
!lstm_25/while/lstm_cell_322/mul_2Mul)lstm_25/while/lstm_cell_322/Sigmoid_2:y:00lstm_25/while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1lstm_25_while_placeholder%lstm_25/while/lstm_cell_322/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ?
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: q
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ?
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ?
lstm_25/while/Identity_4Identity%lstm_25/while/lstm_cell_322/mul_2:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_25/while/Identity_5Identity%lstm_25/while/lstm_cell_322/add_1:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_25/while/NoOpNoOp3^lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2^lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp4^lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_25_while_identitylstm_25/while/Identity:output:0"=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"|
;lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource=lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0"~
<lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource>lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0"z
:lstm_25_while_lstm_cell_322_matmul_readvariableop_resource<lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0"?
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2h
2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2f
1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp2j
3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1955909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1955909___redundant_placeholder05
1while_while_cond_1955909___redundant_placeholder15
1while_while_cond_1955909___redundant_placeholder25
1while_while_cond_1955909___redundant_placeholder3
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
while_cond_1956455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1956455___redundant_placeholder05
1while_while_cond_1956455___redundant_placeholder15
1while_while_cond_1956455___redundant_placeholder25
1while_while_cond_1956455___redundant_placeholder3
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
?
'sequential_8_lstm_24_while_cond_1954126F
Bsequential_8_lstm_24_while_sequential_8_lstm_24_while_loop_counterL
Hsequential_8_lstm_24_while_sequential_8_lstm_24_while_maximum_iterations*
&sequential_8_lstm_24_while_placeholder,
(sequential_8_lstm_24_while_placeholder_1,
(sequential_8_lstm_24_while_placeholder_2,
(sequential_8_lstm_24_while_placeholder_3H
Dsequential_8_lstm_24_while_less_sequential_8_lstm_24_strided_slice_1_
[sequential_8_lstm_24_while_sequential_8_lstm_24_while_cond_1954126___redundant_placeholder0_
[sequential_8_lstm_24_while_sequential_8_lstm_24_while_cond_1954126___redundant_placeholder1_
[sequential_8_lstm_24_while_sequential_8_lstm_24_while_cond_1954126___redundant_placeholder2_
[sequential_8_lstm_24_while_sequential_8_lstm_24_while_cond_1954126___redundant_placeholder3'
#sequential_8_lstm_24_while_identity
?
sequential_8/lstm_24/while/LessLess&sequential_8_lstm_24_while_placeholderDsequential_8_lstm_24_while_less_sequential_8_lstm_24_strided_slice_1*
T0*
_output_shapes
: u
#sequential_8/lstm_24/while/IdentityIdentity#sequential_8/lstm_24/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_8_lstm_24_while_identity,sequential_8/lstm_24/while/Identity:output:0*(
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
while_cond_1956125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1956125___redundant_placeholder05
1while_while_cond_1956125___redundant_placeholder15
1while_while_cond_1956125___redundant_placeholder25
1while_while_cond_1956125___redundant_placeholder3
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958752

inputs?
,lstm_cell_322_matmul_readvariableop_resource:	d?A
.lstm_cell_322_matmul_1_readvariableop_resource:	2?<
-lstm_cell_322_biasadd_readvariableop_resource:	?
identity??$lstm_cell_322/BiasAdd/ReadVariableOp?#lstm_cell_322/MatMul/ReadVariableOp?%lstm_cell_322/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_322/MatMul/ReadVariableOpReadVariableOp,lstm_cell_322_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_322/MatMulMatMulstrided_slice_2:output:0+lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_322_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_322/MatMul_1MatMulzeros:output:0-lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_322/addAddV2lstm_cell_322/MatMul:product:0 lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_322_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_322/BiasAddBiasAddlstm_cell_322/add:z:0,lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_322/splitSplit&lstm_cell_322/split/split_dim:output:0lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_322/SigmoidSigmoidlstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_1Sigmoidlstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_322/mulMullstm_cell_322/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_322/ReluRelulstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_1Mullstm_cell_322/Sigmoid:y:0 lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_322/add_1AddV2lstm_cell_322/mul:z:0lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_322/Sigmoid_2Sigmoidlstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_322/Relu_1Relulstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_322/mul_2Mullstm_cell_322/Sigmoid_2:y:0"lstm_cell_322/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_322_matmul_readvariableop_resource.lstm_cell_322_matmul_1_readvariableop_resource-lstm_cell_322_biasadd_readvariableop_resource*
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
while_body_1958668*
condR
while_cond_1958667*K
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
NoOpNoOp%^lstm_cell_322/BiasAdd/ReadVariableOp$^lstm_cell_322/MatMul/ReadVariableOp&^lstm_cell_322/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_322/BiasAdd/ReadVariableOp$lstm_cell_322/BiasAdd/ReadVariableOp2J
#lstm_cell_322/MatMul/ReadVariableOp#lstm_cell_322/MatMul/ReadVariableOp2N
%lstm_cell_322/MatMul_1/ReadVariableOp%lstm_cell_322/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1959141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_323_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_323_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_323_matmul_readvariableop_resource:2(F
4while_lstm_cell_323_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_323_biasadd_readvariableop_resource:(??*while/lstm_cell_323/BiasAdd/ReadVariableOp?)while/lstm_cell_323/MatMul/ReadVariableOp?+while/lstm_cell_323/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_323/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_323/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_323/addAddV2$while/lstm_cell_323/MatMul:product:0&while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_323/BiasAddBiasAddwhile/lstm_cell_323/add:z:02while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_323/splitSplit,while/lstm_cell_323/split/split_dim:output:0$while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_323/SigmoidSigmoid"while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_1Sigmoid"while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mulMul!while/lstm_cell_323/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_323/ReluRelu"while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_1Mulwhile/lstm_cell_323/Sigmoid:y:0&while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/add_1AddV2while/lstm_cell_323/mul:z:0while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_2Sigmoid"while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_323/Relu_1Reluwhile/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_2Mul!while/lstm_cell_323/Sigmoid_2:y:0(while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_323/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_323/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_323/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_323/BiasAdd/ReadVariableOp*^while/lstm_cell_323/MatMul/ReadVariableOp,^while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_323_biasadd_readvariableop_resource5while_lstm_cell_323_biasadd_readvariableop_resource_0"n
4while_lstm_cell_323_matmul_1_readvariableop_resource6while_lstm_cell_323_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_323_matmul_readvariableop_resource4while_lstm_cell_323_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_323/BiasAdd/ReadVariableOp*while/lstm_cell_323/BiasAdd/ReadVariableOp2V
)while/lstm_cell_323/MatMul/ReadVariableOp)while/lstm_cell_323/MatMul/ReadVariableOp2Z
+while/lstm_cell_323/MatMul_1/ReadVariableOp+while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959225
inputs_0>
,lstm_cell_323_matmul_readvariableop_resource:2(@
.lstm_cell_323_matmul_1_readvariableop_resource:
(;
-lstm_cell_323_biasadd_readvariableop_resource:(
identity??$lstm_cell_323/BiasAdd/ReadVariableOp?#lstm_cell_323/MatMul/ReadVariableOp?%lstm_cell_323/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_323/MatMul/ReadVariableOpReadVariableOp,lstm_cell_323_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_323/MatMulMatMulstrided_slice_2:output:0+lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_323_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_323/MatMul_1MatMulzeros:output:0-lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_323/addAddV2lstm_cell_323/MatMul:product:0 lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_323_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_323/BiasAddBiasAddlstm_cell_323/add:z:0,lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_323/splitSplit&lstm_cell_323/split/split_dim:output:0lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_323/SigmoidSigmoidlstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_1Sigmoidlstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_323/mulMullstm_cell_323/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_323/ReluRelulstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_1Mullstm_cell_323/Sigmoid:y:0 lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_323/add_1AddV2lstm_cell_323/mul:z:0lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_323/Sigmoid_2Sigmoidlstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_323/Relu_1Relulstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_323/mul_2Mullstm_cell_323/Sigmoid_2:y:0"lstm_cell_323/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_323_matmul_readvariableop_resource.lstm_cell_323_matmul_1_readvariableop_resource-lstm_cell_323_biasadd_readvariableop_resource*
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
while_body_1959141*
condR
while_cond_1959140*K
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
NoOpNoOp%^lstm_cell_323/BiasAdd/ReadVariableOp$^lstm_cell_323/MatMul/ReadVariableOp&^lstm_cell_323/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_323/BiasAdd/ReadVariableOp$lstm_cell_323/BiasAdd/ReadVariableOp2J
#lstm_cell_323/MatMul/ReadVariableOp#lstm_cell_323/MatMul/ReadVariableOp2N
%lstm_cell_323/MatMul_1/ReadVariableOp%lstm_cell_323/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1955760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_322_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_322_matmul_readvariableop_resource:	d?G
4while_lstm_cell_322_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_322_biasadd_readvariableop_resource:	???*while/lstm_cell_322/BiasAdd/ReadVariableOp?)while/lstm_cell_322/MatMul/ReadVariableOp?+while/lstm_cell_322/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_322/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_322/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_322/addAddV2$while/lstm_cell_322/MatMul:product:0&while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_322/BiasAddBiasAddwhile/lstm_cell_322/add:z:02while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_322/splitSplit,while/lstm_cell_322/split/split_dim:output:0$while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_322/SigmoidSigmoid"while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_1Sigmoid"while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mulMul!while/lstm_cell_322/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_322/ReluRelu"while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_1Mulwhile/lstm_cell_322/Sigmoid:y:0&while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/add_1AddV2while/lstm_cell_322/mul:z:0while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_2Sigmoid"while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_322/Relu_1Reluwhile/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_2Mul!while/lstm_cell_322/Sigmoid_2:y:0(while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_322/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_322/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_322/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_322/BiasAdd/ReadVariableOp*^while/lstm_cell_322/MatMul/ReadVariableOp,^while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_322_biasadd_readvariableop_resource5while_lstm_cell_322_biasadd_readvariableop_resource_0"n
4while_lstm_cell_322_matmul_1_readvariableop_resource6while_lstm_cell_322_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_322_matmul_readvariableop_resource4while_lstm_cell_322_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_322/BiasAdd/ReadVariableOp*while/lstm_cell_322/BiasAdd/ReadVariableOp2V
)while/lstm_cell_322/MatMul/ReadVariableOp)while/lstm_cell_322/MatMul/ReadVariableOp2Z
+while/lstm_cell_322/MatMul_1/ReadVariableOp+while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1958051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958051___redundant_placeholder05
1while_while_cond_1958051___redundant_placeholder15
1while_while_cond_1958051___redundant_placeholder25
1while_while_cond_1958051___redundant_placeholder3
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
lstm_24_while_cond_1957294,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3.
*lstm_24_while_less_lstm_24_strided_slice_1E
Alstm_24_while_lstm_24_while_cond_1957294___redundant_placeholder0E
Alstm_24_while_lstm_24_while_cond_1957294___redundant_placeholder1E
Alstm_24_while_lstm_24_while_cond_1957294___redundant_placeholder2E
Alstm_24_while_lstm_24_while_cond_1957294___redundant_placeholder3
lstm_24_while_identity
?
lstm_24/while/LessLesslstm_24_while_placeholder*lstm_24_while_less_lstm_24_strided_slice_1*
T0*
_output_shapes
: [
lstm_24/while/IdentityIdentitylstm_24/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_24_while_identitylstm_24/while/Identity:output:0*(
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
while_body_1954926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_322_1954950_0:	d?0
while_lstm_cell_322_1954952_0:	2?,
while_lstm_cell_322_1954954_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_322_1954950:	d?.
while_lstm_cell_322_1954952:	2?*
while_lstm_cell_322_1954954:	???+while/lstm_cell_322/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_322/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_322_1954950_0while_lstm_cell_322_1954952_0while_lstm_cell_322_1954954_0*
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1954912?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_322/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_322/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_322/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_322/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_322_1954950while_lstm_cell_322_1954950_0"<
while_lstm_cell_322_1954952while_lstm_cell_322_1954952_0"<
while_lstm_cell_322_1954954while_lstm_cell_322_1954954_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_322/StatefulPartitionedCall+while/lstm_cell_322/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_25_while_cond_1957006,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1E
Alstm_25_while_lstm_25_while_cond_1957006___redundant_placeholder0E
Alstm_25_while_lstm_25_while_cond_1957006___redundant_placeholder1E
Alstm_25_while_lstm_25_while_cond_1957006___redundant_placeholder2E
Alstm_25_while_lstm_25_while_cond_1957006___redundant_placeholder3
lstm_25_while_identity
?
lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: [
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1955058

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

?
lstm_25_while_cond_1957433,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1E
Alstm_25_while_lstm_25_while_cond_1957433___redundant_placeholder0E
Alstm_25_while_lstm_25_while_cond_1957433___redundant_placeholder1E
Alstm_25_while_lstm_25_while_cond_1957433___redundant_placeholder2E
Alstm_25_while_lstm_25_while_cond_1957433___redundant_placeholder3
lstm_25_while_identity
?
lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: [
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
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
lstm_26_while_cond_1957145,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3.
*lstm_26_while_less_lstm_26_strided_slice_1E
Alstm_26_while_lstm_26_while_cond_1957145___redundant_placeholder0E
Alstm_26_while_lstm_26_while_cond_1957145___redundant_placeholder1E
Alstm_26_while_lstm_26_while_cond_1957145___redundant_placeholder2E
Alstm_26_while_lstm_26_while_cond_1957145___redundant_placeholder3
lstm_26_while_identity
?
lstm_26/while/LessLesslstm_26_while_placeholder*lstm_26_while_less_lstm_26_strided_slice_1*
T0*
_output_shapes
: [
lstm_26/while/IdentityIdentitylstm_26/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_26_while_identitylstm_26/while/Identity:output:0*(
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
while_cond_1958997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958997___redundant_placeholder05
1while_while_cond_1958997___redundant_placeholder15
1while_while_cond_1958997___redundant_placeholder25
1while_while_cond_1958997___redundant_placeholder3
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
while_body_1955610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_321_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_321_matmul_readvariableop_resource:	?G
4while_lstm_cell_321_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_321_biasadd_readvariableop_resource:	???*while/lstm_cell_321/BiasAdd/ReadVariableOp?)while/lstm_cell_321/MatMul/ReadVariableOp?+while/lstm_cell_321/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_321/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_321/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_321/addAddV2$while/lstm_cell_321/MatMul:product:0&while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_321/BiasAddBiasAddwhile/lstm_cell_321/add:z:02while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_321/splitSplit,while/lstm_cell_321/split/split_dim:output:0$while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_321/SigmoidSigmoid"while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_1Sigmoid"while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mulMul!while/lstm_cell_321/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_321/ReluRelu"while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_1Mulwhile/lstm_cell_321/Sigmoid:y:0&while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/add_1AddV2while/lstm_cell_321/mul:z:0while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_2Sigmoid"while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_321/Relu_1Reluwhile/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_2Mul!while/lstm_cell_321/Sigmoid_2:y:0(while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_321/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_321/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_321/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_321/BiasAdd/ReadVariableOp*^while/lstm_cell_321/MatMul/ReadVariableOp,^while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_321_biasadd_readvariableop_resource5while_lstm_cell_321_biasadd_readvariableop_resource_0"n
4while_lstm_cell_321_matmul_1_readvariableop_resource6while_lstm_cell_321_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_321_matmul_readvariableop_resource4while_lstm_cell_321_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_321/BiasAdd/ReadVariableOp*while/lstm_cell_321/BiasAdd/ReadVariableOp2V
)while/lstm_cell_321/MatMul/ReadVariableOp)while/lstm_cell_321/MatMul/ReadVariableOp2Z
+while/lstm_cell_321/MatMul_1/ReadVariableOp+while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1958667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1958667___redundant_placeholder05
1while_while_cond_1958667___redundant_placeholder15
1while_while_cond_1958667___redundant_placeholder25
1while_while_cond_1958667___redundant_placeholder3
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1954836

inputs(
lstm_cell_321_1954754:	?(
lstm_cell_321_1954756:	d?$
lstm_cell_321_1954758:	?
identity??%lstm_cell_321/StatefulPartitionedCall?while;
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
%lstm_cell_321/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_321_1954754lstm_cell_321_1954756lstm_cell_321_1954758*
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954708n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_321_1954754lstm_cell_321_1954756lstm_cell_321_1954758*
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
while_body_1954767*
condR
while_cond_1954766*K
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
NoOpNoOp&^lstm_cell_321/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_321/StatefulPartitionedCall%lstm_cell_321/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_8_layer_call_fn_1956044
lstm_24_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956019o
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_24_input
?#
?
while_body_1955276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_323_1955300_0:2(/
while_lstm_cell_323_1955302_0:
(+
while_lstm_cell_323_1955304_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_323_1955300:2(-
while_lstm_cell_323_1955302:
()
while_lstm_cell_323_1955304:(??+while/lstm_cell_323/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_323/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_323_1955300_0while_lstm_cell_323_1955302_0while_lstm_cell_323_1955304_0*
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955262?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_323/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_323/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_323/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_323_1955300while_lstm_cell_323_1955300_0"<
while_lstm_cell_323_1955302while_lstm_cell_323_1955302_0"<
while_lstm_cell_323_1955304while_lstm_cell_323_1955304_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_323/StatefulPartitionedCall+while/lstm_cell_323/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1958195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_321_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_321_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_321_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_321_matmul_readvariableop_resource:	?G
4while_lstm_cell_321_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_321_biasadd_readvariableop_resource:	???*while/lstm_cell_321/BiasAdd/ReadVariableOp?)while/lstm_cell_321/MatMul/ReadVariableOp?+while/lstm_cell_321/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_321/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_321_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_321/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_321/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_321/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_321_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_321/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_321/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_321/addAddV2$while/lstm_cell_321/MatMul:product:0&while/lstm_cell_321/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_321/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_321_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_321/BiasAddBiasAddwhile/lstm_cell_321/add:z:02while/lstm_cell_321/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_321/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_321/splitSplit,while/lstm_cell_321/split/split_dim:output:0$while/lstm_cell_321/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_321/SigmoidSigmoid"while/lstm_cell_321/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_1Sigmoid"while/lstm_cell_321/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mulMul!while/lstm_cell_321/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_321/ReluRelu"while/lstm_cell_321/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_1Mulwhile/lstm_cell_321/Sigmoid:y:0&while/lstm_cell_321/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/add_1AddV2while/lstm_cell_321/mul:z:0while/lstm_cell_321/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_321/Sigmoid_2Sigmoid"while/lstm_cell_321/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_321/Relu_1Reluwhile/lstm_cell_321/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_321/mul_2Mul!while/lstm_cell_321/Sigmoid_2:y:0(while/lstm_cell_321/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_321/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_321/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_321/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_321/BiasAdd/ReadVariableOp*^while/lstm_cell_321/MatMul/ReadVariableOp,^while/lstm_cell_321/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_321_biasadd_readvariableop_resource5while_lstm_cell_321_biasadd_readvariableop_resource_0"n
4while_lstm_cell_321_matmul_1_readvariableop_resource6while_lstm_cell_321_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_321_matmul_readvariableop_resource4while_lstm_cell_321_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_321/BiasAdd/ReadVariableOp*while/lstm_cell_321/BiasAdd/ReadVariableOp2V
)while/lstm_cell_321/MatMul/ReadVariableOp)while/lstm_cell_321/MatMul/ReadVariableOp2Z
+while/lstm_cell_321/MatMul_1/ReadVariableOp+while/lstm_cell_321/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_24_layer_call_fn_1957685
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
GPU 2J 8? *M
fHRF
D__inference_lstm_24_layer_call_and_return_conditional_losses_1954836|
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
while_cond_1956290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1956290___redundant_placeholder05
1while_while_cond_1956290___redundant_placeholder15
1while_while_cond_1956290___redundant_placeholder25
1while_while_cond_1956290___redundant_placeholder3
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
?#
?
while_body_1954576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_321_1954600_0:	?0
while_lstm_cell_321_1954602_0:	d?,
while_lstm_cell_321_1954604_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_321_1954600:	?.
while_lstm_cell_321_1954602:	d?*
while_lstm_cell_321_1954604:	???+while/lstm_cell_321/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_321/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_321_1954600_0while_lstm_cell_321_1954602_0while_lstm_cell_321_1954604_0*
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954562?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_321/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_321/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_321/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_321/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_321_1954600while_lstm_cell_321_1954600_0"<
while_lstm_cell_321_1954602while_lstm_cell_321_1954602_0"<
while_lstm_cell_321_1954604while_lstm_cell_321_1954604_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_321/StatefulPartitionedCall+while/lstm_cell_321/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1955116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1955116___redundant_placeholder05
1while_while_cond_1955116___redundant_placeholder15
1while_while_cond_1955116___redundant_placeholder25
1while_while_cond_1955116___redundant_placeholder3
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
?B
?

lstm_25_while_body_1957434,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0:	d?Q
>lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?L
=lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorM
:lstm_25_while_lstm_cell_322_matmul_readvariableop_resource:	d?O
<lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource:	2?J
;lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource:	???2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp?1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp?3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp?
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
"lstm_25/while/lstm_cell_322/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp>lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
$lstm_25/while/lstm_cell_322/MatMul_1MatMullstm_25_while_placeholder_2;lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_25/while/lstm_cell_322/addAddV2,lstm_25/while/lstm_cell_322/MatMul:product:0.lstm_25/while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp=lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_25/while/lstm_cell_322/BiasAddBiasAdd#lstm_25/while/lstm_cell_322/add:z:0:lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_25/while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_25/while/lstm_cell_322/splitSplit4lstm_25/while/lstm_cell_322/split/split_dim:output:0,lstm_25/while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
#lstm_25/while/lstm_cell_322/SigmoidSigmoid*lstm_25/while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2?
%lstm_25/while/lstm_cell_322/Sigmoid_1Sigmoid*lstm_25/while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_25/while/lstm_cell_322/mulMul)lstm_25/while/lstm_cell_322/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
 lstm_25/while/lstm_cell_322/ReluRelu*lstm_25/while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
!lstm_25/while/lstm_cell_322/mul_1Mul'lstm_25/while/lstm_cell_322/Sigmoid:y:0.lstm_25/while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
!lstm_25/while/lstm_cell_322/add_1AddV2#lstm_25/while/lstm_cell_322/mul:z:0%lstm_25/while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
%lstm_25/while/lstm_cell_322/Sigmoid_2Sigmoid*lstm_25/while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2?
"lstm_25/while/lstm_cell_322/Relu_1Relu%lstm_25/while/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
!lstm_25/while/lstm_cell_322/mul_2Mul)lstm_25/while/lstm_cell_322/Sigmoid_2:y:00lstm_25/while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1lstm_25_while_placeholder%lstm_25/while/lstm_cell_322/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ?
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: q
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ?
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ?
lstm_25/while/Identity_4Identity%lstm_25/while/lstm_cell_322/mul_2:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_25/while/Identity_5Identity%lstm_25/while/lstm_cell_322/add_1:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_25/while/NoOpNoOp3^lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2^lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp4^lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_25_while_identitylstm_25/while/Identity:output:0"=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"|
;lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource=lstm_25_while_lstm_cell_322_biasadd_readvariableop_resource_0"~
<lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource>lstm_25_while_lstm_cell_322_matmul_1_readvariableop_resource_0"z
:lstm_25_while_lstm_cell_322_matmul_readvariableop_resource<lstm_25_while_lstm_cell_322_matmul_readvariableop_resource_0"?
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2h
2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2lstm_25/while/lstm_cell_322/BiasAdd/ReadVariableOp2f
1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp1lstm_25/while/lstm_cell_322/MatMul/ReadVariableOp2j
3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp3lstm_25/while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_26_while_cond_1957572,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3.
*lstm_26_while_less_lstm_26_strided_slice_1E
Alstm_26_while_lstm_26_while_cond_1957572___redundant_placeholder0E
Alstm_26_while_lstm_26_while_cond_1957572___redundant_placeholder1E
Alstm_26_while_lstm_26_while_cond_1957572___redundant_placeholder2E
Alstm_26_while_lstm_26_while_cond_1957572___redundant_placeholder3
lstm_26_while_identity
?
lstm_26/while/LessLesslstm_26_while_placeholder*lstm_26_while_less_lstm_26_strided_slice_1*
T0*
_output_shapes
: [
lstm_26/while/IdentityIdentitylstm_26/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_26_while_identitylstm_26/while/Identity:output:0*(
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
?
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955536

inputs'
lstm_cell_323_1955454:2('
lstm_cell_323_1955456:
(#
lstm_cell_323_1955458:(
identity??%lstm_cell_323/StatefulPartitionedCall?while;
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
%lstm_cell_323/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_323_1955454lstm_cell_323_1955456lstm_cell_323_1955458*
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955408n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_323_1955454lstm_cell_323_1955456lstm_cell_323_1955458*
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
while_body_1955467*
condR
while_cond_1955466*K
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
NoOpNoOp&^lstm_cell_323/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_323/StatefulPartitionedCall%lstm_cell_323/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_26_layer_call_fn_1958928

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
GPU 2J 8? *M
fHRF
D__inference_lstm_26_layer_call_and_return_conditional_losses_1955994o
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
?
/__inference_lstm_cell_321_layer_call_fn_1959564

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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1954708o
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
?#
?
while_body_1955467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_323_1955491_0:2(/
while_lstm_cell_323_1955493_0:
(+
while_lstm_cell_323_1955495_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_323_1955491:2(-
while_lstm_cell_323_1955493:
()
while_lstm_cell_323_1955495:(??+while/lstm_cell_323/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_323/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_323_1955491_0while_lstm_cell_323_1955493_0while_lstm_cell_323_1955495_0*
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1955408?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_323/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_323/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_323/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_323_1955491while_lstm_cell_323_1955491_0"<
while_lstm_cell_323_1955493while_lstm_cell_323_1955493_0"<
while_lstm_cell_323_1955495while_lstm_cell_323_1955495_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_323/StatefulPartitionedCall+while/lstm_cell_323/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1954912

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
D__inference_dense_8_layer_call_and_return_conditional_losses_1959530

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
while_body_1955910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_323_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_323_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_323_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_323_matmul_readvariableop_resource:2(F
4while_lstm_cell_323_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_323_biasadd_readvariableop_resource:(??*while/lstm_cell_323/BiasAdd/ReadVariableOp?)while/lstm_cell_323/MatMul/ReadVariableOp?+while/lstm_cell_323/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_323/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_323_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_323/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_323/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_323_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_323/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_323/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_323/addAddV2$while/lstm_cell_323/MatMul:product:0&while/lstm_cell_323/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_323/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_323_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_323/BiasAddBiasAddwhile/lstm_cell_323/add:z:02while/lstm_cell_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_323/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_323/splitSplit,while/lstm_cell_323/split/split_dim:output:0$while/lstm_cell_323/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_323/SigmoidSigmoid"while/lstm_cell_323/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_1Sigmoid"while/lstm_cell_323/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mulMul!while/lstm_cell_323/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_323/ReluRelu"while/lstm_cell_323/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_1Mulwhile/lstm_cell_323/Sigmoid:y:0&while/lstm_cell_323/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/add_1AddV2while/lstm_cell_323/mul:z:0while/lstm_cell_323/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_323/Sigmoid_2Sigmoid"while/lstm_cell_323/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_323/Relu_1Reluwhile/lstm_cell_323/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_323/mul_2Mul!while/lstm_cell_323/Sigmoid_2:y:0(while/lstm_cell_323/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_323/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_323/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_323/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_323/BiasAdd/ReadVariableOp*^while/lstm_cell_323/MatMul/ReadVariableOp,^while/lstm_cell_323/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_323_biasadd_readvariableop_resource5while_lstm_cell_323_biasadd_readvariableop_resource_0"n
4while_lstm_cell_323_matmul_1_readvariableop_resource6while_lstm_cell_323_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_323_matmul_readvariableop_resource4while_lstm_cell_323_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_323/BiasAdd/ReadVariableOp*while/lstm_cell_323/BiasAdd/ReadVariableOp2V
)while/lstm_cell_323/MatMul/ReadVariableOp)while/lstm_cell_323/MatMul/ReadVariableOp2Z
+while/lstm_cell_323/MatMul_1/ReadVariableOp+while/lstm_cell_323/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1958525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_322_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_322_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_322_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_322_matmul_readvariableop_resource:	d?G
4while_lstm_cell_322_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_322_biasadd_readvariableop_resource:	???*while/lstm_cell_322/BiasAdd/ReadVariableOp?)while/lstm_cell_322/MatMul/ReadVariableOp?+while/lstm_cell_322/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_322/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_322_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_322/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_322/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_322/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_322_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_322/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_322/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_322/addAddV2$while/lstm_cell_322/MatMul:product:0&while/lstm_cell_322/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_322/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_322_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_322/BiasAddBiasAddwhile/lstm_cell_322/add:z:02while/lstm_cell_322/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_322/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_322/splitSplit,while/lstm_cell_322/split/split_dim:output:0$while/lstm_cell_322/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_322/SigmoidSigmoid"while/lstm_cell_322/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_1Sigmoid"while/lstm_cell_322/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mulMul!while/lstm_cell_322/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_322/ReluRelu"while/lstm_cell_322/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_1Mulwhile/lstm_cell_322/Sigmoid:y:0&while/lstm_cell_322/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/add_1AddV2while/lstm_cell_322/mul:z:0while/lstm_cell_322/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_322/Sigmoid_2Sigmoid"while/lstm_cell_322/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_322/Relu_1Reluwhile/lstm_cell_322/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_322/mul_2Mul!while/lstm_cell_322/Sigmoid_2:y:0(while/lstm_cell_322/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_322/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_322/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_322/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_322/BiasAdd/ReadVariableOp*^while/lstm_cell_322/MatMul/ReadVariableOp,^while/lstm_cell_322/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_322_biasadd_readvariableop_resource5while_lstm_cell_322_biasadd_readvariableop_resource_0"n
4while_lstm_cell_322_matmul_1_readvariableop_resource6while_lstm_cell_322_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_322_matmul_readvariableop_resource4while_lstm_cell_322_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_322/BiasAdd/ReadVariableOp*while/lstm_cell_322/BiasAdd/ReadVariableOp2V
)while/lstm_cell_322/MatMul/ReadVariableOp)while/lstm_cell_322/MatMul/ReadVariableOp2Z
+while/lstm_cell_322/MatMul_1/ReadVariableOp+while/lstm_cell_322/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K
lstm_24_input:
serving_default_lstm_24_input:0?????????;
dense_80
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
 :
2dense_8/kernel
:2dense_8/bias
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
.:,	?2lstm_24/lstm_cell_24/kernel
8:6	d?2%lstm_24/lstm_cell_24/recurrent_kernel
(:&?2lstm_24/lstm_cell_24/bias
.:,	d?2lstm_25/lstm_cell_25/kernel
8:6	2?2%lstm_25/lstm_cell_25/recurrent_kernel
(:&?2lstm_25/lstm_cell_25/bias
-:+2(2lstm_26/lstm_cell_26/kernel
7:5
(2%lstm_26/lstm_cell_26/recurrent_kernel
':%(2lstm_26/lstm_cell_26/bias
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
%:#
2Adam/dense_8/kernel/m
:2Adam/dense_8/bias/m
3:1	?2"Adam/lstm_24/lstm_cell_24/kernel/m
=:;	d?2,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m
-:+?2 Adam/lstm_24/lstm_cell_24/bias/m
3:1	d?2"Adam/lstm_25/lstm_cell_25/kernel/m
=:;	2?2,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m
-:+?2 Adam/lstm_25/lstm_cell_25/bias/m
2:02(2"Adam/lstm_26/lstm_cell_26/kernel/m
<::
(2,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m
,:*(2 Adam/lstm_26/lstm_cell_26/bias/m
%:#
2Adam/dense_8/kernel/v
:2Adam/dense_8/bias/v
3:1	?2"Adam/lstm_24/lstm_cell_24/kernel/v
=:;	d?2,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v
-:+?2 Adam/lstm_24/lstm_cell_24/bias/v
3:1	d?2"Adam/lstm_25/lstm_cell_25/kernel/v
=:;	2?2,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v
-:+?2 Adam/lstm_25/lstm_cell_25/bias/v
2:02(2"Adam/lstm_26/lstm_cell_26/kernel/v
<::
(2,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v
,:*(2 Adam/lstm_26/lstm_cell_26/bias/v
?2?
.__inference_sequential_8_layer_call_fn_1956044
.__inference_sequential_8_layer_call_fn_1956782
.__inference_sequential_8_layer_call_fn_1956809
.__inference_sequential_8_layer_call_fn_1956660?
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
I__inference_sequential_8_layer_call_and_return_conditional_losses_1957236
I__inference_sequential_8_layer_call_and_return_conditional_losses_1957663
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956690
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956720?
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
"__inference__wrapped_model_1954495lstm_24_input"?
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
)__inference_lstm_24_layer_call_fn_1957674
)__inference_lstm_24_layer_call_fn_1957685
)__inference_lstm_24_layer_call_fn_1957696
)__inference_lstm_24_layer_call_fn_1957707?
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1957850
D__inference_lstm_24_layer_call_and_return_conditional_losses_1957993
D__inference_lstm_24_layer_call_and_return_conditional_losses_1958136
D__inference_lstm_24_layer_call_and_return_conditional_losses_1958279?
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
)__inference_lstm_25_layer_call_fn_1958290
)__inference_lstm_25_layer_call_fn_1958301
)__inference_lstm_25_layer_call_fn_1958312
)__inference_lstm_25_layer_call_fn_1958323?
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958466
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958609
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958752
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958895?
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
)__inference_lstm_26_layer_call_fn_1958906
)__inference_lstm_26_layer_call_fn_1958917
)__inference_lstm_26_layer_call_fn_1958928
)__inference_lstm_26_layer_call_fn_1958939?
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959082
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959225
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959368
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959511?
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
)__inference_dense_8_layer_call_fn_1959520?
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
D__inference_dense_8_layer_call_and_return_conditional_losses_1959530?
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
%__inference_signature_wrapper_1956755lstm_24_input"?
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
/__inference_lstm_cell_321_layer_call_fn_1959547
/__inference_lstm_cell_321_layer_call_fn_1959564?
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1959596
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1959628?
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
/__inference_lstm_cell_322_layer_call_fn_1959645
/__inference_lstm_cell_322_layer_call_fn_1959662?
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1959694
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1959726?
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
/__inference_lstm_cell_323_layer_call_fn_1959743
/__inference_lstm_cell_323_layer_call_fn_1959760?
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1959792
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1959824?
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
"__inference__wrapped_model_1954495|-./012345!":?7
0?-
+?(
lstm_24_input?????????
? "1?.
,
dense_8!?
dense_8??????????
D__inference_dense_8_layer_call_and_return_conditional_losses_1959530\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? |
)__inference_dense_8_layer_call_fn_1959520O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_24_layer_call_and_return_conditional_losses_1957850?-./O?L
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1957993?-./O?L
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1958136q-./??<
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
D__inference_lstm_24_layer_call_and_return_conditional_losses_1958279q-./??<
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
)__inference_lstm_24_layer_call_fn_1957674}-./O?L
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
)__inference_lstm_24_layer_call_fn_1957685}-./O?L
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
)__inference_lstm_24_layer_call_fn_1957696d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_24_layer_call_fn_1957707d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958466?012O?L
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958609?012O?L
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958752q012??<
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
D__inference_lstm_25_layer_call_and_return_conditional_losses_1958895q012??<
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
)__inference_lstm_25_layer_call_fn_1958290}012O?L
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
)__inference_lstm_25_layer_call_fn_1958301}012O?L
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
)__inference_lstm_25_layer_call_fn_1958312d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_25_layer_call_fn_1958323d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959082}345O?L
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959225}345O?L
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959368m345??<
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
D__inference_lstm_26_layer_call_and_return_conditional_losses_1959511m345??<
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
)__inference_lstm_26_layer_call_fn_1958906p345O?L
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
)__inference_lstm_26_layer_call_fn_1958917p345O?L
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
)__inference_lstm_26_layer_call_fn_1958928`345??<
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
)__inference_lstm_26_layer_call_fn_1958939`345??<
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1959596?-./??}
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
J__inference_lstm_cell_321_layer_call_and_return_conditional_losses_1959628?-./??}
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
/__inference_lstm_cell_321_layer_call_fn_1959547?-./??}
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
/__inference_lstm_cell_321_layer_call_fn_1959564?-./??}
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1959694?012??}
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
J__inference_lstm_cell_322_layer_call_and_return_conditional_losses_1959726?012??}
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
/__inference_lstm_cell_322_layer_call_fn_1959645?012??}
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
/__inference_lstm_cell_322_layer_call_fn_1959662?012??}
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1959792?345??}
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
J__inference_lstm_cell_323_layer_call_and_return_conditional_losses_1959824?345??}
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
/__inference_lstm_cell_323_layer_call_fn_1959743?345??}
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
/__inference_lstm_cell_323_layer_call_fn_1959760?345??}
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
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956690x-./012345!"B??
8?5
+?(
lstm_24_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1956720x-./012345!"B??
8?5
+?(
lstm_24_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1957236q-./012345!";?8
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
I__inference_sequential_8_layer_call_and_return_conditional_losses_1957663q-./012345!";?8
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
.__inference_sequential_8_layer_call_fn_1956044k-./012345!"B??
8?5
+?(
lstm_24_input?????????
p 

 
? "???????????
.__inference_sequential_8_layer_call_fn_1956660k-./012345!"B??
8?5
+?(
lstm_24_input?????????
p

 
? "???????????
.__inference_sequential_8_layer_call_fn_1956782d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_8_layer_call_fn_1956809d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1956755?-./012345!"K?H
? 
A?>
<
lstm_24_input+?(
lstm_24_input?????????"1?.
,
dense_8!?
dense_8?????????