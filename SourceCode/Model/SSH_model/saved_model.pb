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
dense_271/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_271/kernel
u
$dense_271/kernel/Read/ReadVariableOpReadVariableOpdense_271/kernel*
_output_shapes

:
*
dtype0
t
dense_271/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_271/bias
m
"dense_271/bias/Read/ReadVariableOpReadVariableOpdense_271/bias*
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
lstm_813/lstm_cell_813/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_813/lstm_cell_813/kernel
?
1lstm_813/lstm_cell_813/kernel/Read/ReadVariableOpReadVariableOplstm_813/lstm_cell_813/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_813/lstm_cell_813/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_813/lstm_cell_813/recurrent_kernel
?
;lstm_813/lstm_cell_813/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_813/lstm_cell_813/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_813/lstm_cell_813/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_813/lstm_cell_813/bias
?
/lstm_813/lstm_cell_813/bias/Read/ReadVariableOpReadVariableOplstm_813/lstm_cell_813/bias*
_output_shapes	
:?*
dtype0
?
lstm_814/lstm_cell_814/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_814/lstm_cell_814/kernel
?
1lstm_814/lstm_cell_814/kernel/Read/ReadVariableOpReadVariableOplstm_814/lstm_cell_814/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_814/lstm_cell_814/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_814/lstm_cell_814/recurrent_kernel
?
;lstm_814/lstm_cell_814/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_814/lstm_cell_814/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_814/lstm_cell_814/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_814/lstm_cell_814/bias
?
/lstm_814/lstm_cell_814/bias/Read/ReadVariableOpReadVariableOplstm_814/lstm_cell_814/bias*
_output_shapes	
:?*
dtype0
?
lstm_815/lstm_cell_815/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_815/lstm_cell_815/kernel
?
1lstm_815/lstm_cell_815/kernel/Read/ReadVariableOpReadVariableOplstm_815/lstm_cell_815/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_815/lstm_cell_815/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_815/lstm_cell_815/recurrent_kernel
?
;lstm_815/lstm_cell_815/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_815/lstm_cell_815/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_815/lstm_cell_815/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_815/lstm_cell_815/bias
?
/lstm_815/lstm_cell_815/bias/Read/ReadVariableOpReadVariableOplstm_815/lstm_cell_815/bias*
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
Adam/dense_271/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_271/kernel/m
?
+Adam/dense_271/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_271/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_271/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_271/bias/m
{
)Adam/dense_271/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_271/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_813/lstm_cell_813/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_813/lstm_cell_813/kernel/m
?
8Adam/lstm_813/lstm_cell_813/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_813/lstm_cell_813/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_813/lstm_cell_813/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_813/lstm_cell_813/recurrent_kernel/m
?
BAdam/lstm_813/lstm_cell_813/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_813/lstm_cell_813/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_813/lstm_cell_813/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_813/lstm_cell_813/bias/m
?
6Adam/lstm_813/lstm_cell_813/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_813/lstm_cell_813/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_814/lstm_cell_814/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_814/lstm_cell_814/kernel/m
?
8Adam/lstm_814/lstm_cell_814/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_814/lstm_cell_814/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_814/lstm_cell_814/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_814/lstm_cell_814/recurrent_kernel/m
?
BAdam/lstm_814/lstm_cell_814/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_814/lstm_cell_814/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_814/lstm_cell_814/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_814/lstm_cell_814/bias/m
?
6Adam/lstm_814/lstm_cell_814/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_814/lstm_cell_814/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_815/lstm_cell_815/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_815/lstm_cell_815/kernel/m
?
8Adam/lstm_815/lstm_cell_815/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_815/lstm_cell_815/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_815/lstm_cell_815/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_815/lstm_cell_815/recurrent_kernel/m
?
BAdam/lstm_815/lstm_cell_815/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_815/lstm_cell_815/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_815/lstm_cell_815/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_815/lstm_cell_815/bias/m
?
6Adam/lstm_815/lstm_cell_815/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_815/lstm_cell_815/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_271/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_271/kernel/v
?
+Adam/dense_271/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_271/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_271/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_271/bias/v
{
)Adam/dense_271/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_271/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_813/lstm_cell_813/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_813/lstm_cell_813/kernel/v
?
8Adam/lstm_813/lstm_cell_813/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_813/lstm_cell_813/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_813/lstm_cell_813/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_813/lstm_cell_813/recurrent_kernel/v
?
BAdam/lstm_813/lstm_cell_813/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_813/lstm_cell_813/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_813/lstm_cell_813/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_813/lstm_cell_813/bias/v
?
6Adam/lstm_813/lstm_cell_813/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_813/lstm_cell_813/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_814/lstm_cell_814/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_814/lstm_cell_814/kernel/v
?
8Adam/lstm_814/lstm_cell_814/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_814/lstm_cell_814/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_814/lstm_cell_814/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_814/lstm_cell_814/recurrent_kernel/v
?
BAdam/lstm_814/lstm_cell_814/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_814/lstm_cell_814/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_814/lstm_cell_814/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_814/lstm_cell_814/bias/v
?
6Adam/lstm_814/lstm_cell_814/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_814/lstm_cell_814/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_815/lstm_cell_815/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_815/lstm_cell_815/kernel/v
?
8Adam/lstm_815/lstm_cell_815/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_815/lstm_cell_815/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_815/lstm_cell_815/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_815/lstm_cell_815/recurrent_kernel/v
?
BAdam/lstm_815/lstm_cell_815/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_815/lstm_cell_815/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_815/lstm_cell_815/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_815/lstm_cell_815/bias/v
?
6Adam/lstm_815/lstm_cell_815/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_815/lstm_cell_815/bias/v*
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
VARIABLE_VALUEdense_271/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_271/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_813/lstm_cell_813/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_813/lstm_cell_813/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_813/lstm_cell_813/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_814/lstm_cell_814/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_814/lstm_cell_814/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_814/lstm_cell_814/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_815/lstm_cell_815/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_815/lstm_cell_815/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_815/lstm_cell_815/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_271/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_271/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_813/lstm_cell_813/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_813/lstm_cell_813/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_813/lstm_cell_813/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_814/lstm_cell_814/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_814/lstm_cell_814/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_814/lstm_cell_814/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_815/lstm_cell_815/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_815/lstm_cell_815/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_815/lstm_cell_815/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_271/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_271/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_813/lstm_cell_813/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_813/lstm_cell_813/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_813/lstm_cell_813/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_814/lstm_cell_814/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_814/lstm_cell_814/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_814/lstm_cell_814/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_815/lstm_cell_815/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_815/lstm_cell_815/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_815/lstm_cell_815/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_813_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_813_inputlstm_813/lstm_cell_813/kernel'lstm_813/lstm_cell_813/recurrent_kernellstm_813/lstm_cell_813/biaslstm_814/lstm_cell_814/kernel'lstm_814/lstm_cell_814/recurrent_kernellstm_814/lstm_cell_814/biaslstm_815/lstm_cell_815/kernel'lstm_815/lstm_cell_815/recurrent_kernellstm_815/lstm_cell_815/biasdense_271/kerneldense_271/bias*
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
%__inference_signature_wrapper_4080237
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_271/kernel/Read/ReadVariableOp"dense_271/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_813/lstm_cell_813/kernel/Read/ReadVariableOp;lstm_813/lstm_cell_813/recurrent_kernel/Read/ReadVariableOp/lstm_813/lstm_cell_813/bias/Read/ReadVariableOp1lstm_814/lstm_cell_814/kernel/Read/ReadVariableOp;lstm_814/lstm_cell_814/recurrent_kernel/Read/ReadVariableOp/lstm_814/lstm_cell_814/bias/Read/ReadVariableOp1lstm_815/lstm_cell_815/kernel/Read/ReadVariableOp;lstm_815/lstm_cell_815/recurrent_kernel/Read/ReadVariableOp/lstm_815/lstm_cell_815/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_271/kernel/m/Read/ReadVariableOp)Adam/dense_271/bias/m/Read/ReadVariableOp8Adam/lstm_813/lstm_cell_813/kernel/m/Read/ReadVariableOpBAdam/lstm_813/lstm_cell_813/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_813/lstm_cell_813/bias/m/Read/ReadVariableOp8Adam/lstm_814/lstm_cell_814/kernel/m/Read/ReadVariableOpBAdam/lstm_814/lstm_cell_814/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_814/lstm_cell_814/bias/m/Read/ReadVariableOp8Adam/lstm_815/lstm_cell_815/kernel/m/Read/ReadVariableOpBAdam/lstm_815/lstm_cell_815/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_815/lstm_cell_815/bias/m/Read/ReadVariableOp+Adam/dense_271/kernel/v/Read/ReadVariableOp)Adam/dense_271/bias/v/Read/ReadVariableOp8Adam/lstm_813/lstm_cell_813/kernel/v/Read/ReadVariableOpBAdam/lstm_813/lstm_cell_813/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_813/lstm_cell_813/bias/v/Read/ReadVariableOp8Adam/lstm_814/lstm_cell_814/kernel/v/Read/ReadVariableOpBAdam/lstm_814/lstm_cell_814/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_814/lstm_cell_814/bias/v/Read/ReadVariableOp8Adam/lstm_815/lstm_cell_815/kernel/v/Read/ReadVariableOpBAdam/lstm_815/lstm_cell_815/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_815/lstm_cell_815/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4083449
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_271/kerneldense_271/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_813/lstm_cell_813/kernel'lstm_813/lstm_cell_813/recurrent_kernellstm_813/lstm_cell_813/biaslstm_814/lstm_cell_814/kernel'lstm_814/lstm_cell_814/recurrent_kernellstm_814/lstm_cell_814/biaslstm_815/lstm_cell_815/kernel'lstm_815/lstm_cell_815/recurrent_kernellstm_815/lstm_cell_815/biastotalcountAdam/dense_271/kernel/mAdam/dense_271/bias/m$Adam/lstm_813/lstm_cell_813/kernel/m.Adam/lstm_813/lstm_cell_813/recurrent_kernel/m"Adam/lstm_813/lstm_cell_813/bias/m$Adam/lstm_814/lstm_cell_814/kernel/m.Adam/lstm_814/lstm_cell_814/recurrent_kernel/m"Adam/lstm_814/lstm_cell_814/bias/m$Adam/lstm_815/lstm_cell_815/kernel/m.Adam/lstm_815/lstm_cell_815/recurrent_kernel/m"Adam/lstm_815/lstm_cell_815/bias/mAdam/dense_271/kernel/vAdam/dense_271/bias/v$Adam/lstm_813/lstm_cell_813/kernel/v.Adam/lstm_813/lstm_cell_813/recurrent_kernel/v"Adam/lstm_813/lstm_cell_813/bias/v$Adam/lstm_814/lstm_cell_814/kernel/v.Adam/lstm_814/lstm_cell_814/recurrent_kernel/v"Adam/lstm_814/lstm_cell_814/bias/v$Adam/lstm_815/lstm_cell_815/kernel/v.Adam/lstm_815/lstm_cell_815/recurrent_kernel/v"Adam/lstm_815/lstm_cell_815/bias/v*4
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
#__inference__traced_restore_4083579??+
?
?
while_cond_4081533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4081533___redundant_placeholder05
1while_while_cond_4081533___redundant_placeholder15
1while_while_cond_4081533___redundant_placeholder25
1while_while_cond_4081533___redundant_placeholder3
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
lstm_814_while_cond_4080915.
*lstm_814_while_lstm_814_while_loop_counter4
0lstm_814_while_lstm_814_while_maximum_iterations
lstm_814_while_placeholder 
lstm_814_while_placeholder_1 
lstm_814_while_placeholder_2 
lstm_814_while_placeholder_30
,lstm_814_while_less_lstm_814_strided_slice_1G
Clstm_814_while_lstm_814_while_cond_4080915___redundant_placeholder0G
Clstm_814_while_lstm_814_while_cond_4080915___redundant_placeholder1G
Clstm_814_while_lstm_814_while_cond_4080915___redundant_placeholder2G
Clstm_814_while_lstm_814_while_cond_4080915___redundant_placeholder3
lstm_814_while_identity
?
lstm_814/while/LessLesslstm_814_while_placeholder,lstm_814_while_less_lstm_814_strided_slice_1*
T0*
_output_shapes
: ]
lstm_814/while/IdentityIdentitylstm_814/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_814_while_identity lstm_814/while/Identity:output:0*(
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
while_body_4082480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_674_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_674_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_674_matmul_readvariableop_resource:2(F
4while_lstm_cell_674_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_674_biasadd_readvariableop_resource:(??*while/lstm_cell_674/BiasAdd/ReadVariableOp?)while/lstm_cell_674/MatMul/ReadVariableOp?+while/lstm_cell_674/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_674/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_674/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_674/addAddV2$while/lstm_cell_674/MatMul:product:0&while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_674/BiasAddBiasAddwhile/lstm_cell_674/add:z:02while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_674/splitSplit,while/lstm_cell_674/split/split_dim:output:0$while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_674/SigmoidSigmoid"while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_1Sigmoid"while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mulMul!while/lstm_cell_674/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_674/ReluRelu"while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_1Mulwhile/lstm_cell_674/Sigmoid:y:0&while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/add_1AddV2while/lstm_cell_674/mul:z:0while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_2Sigmoid"while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_674/Relu_1Reluwhile/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_2Mul!while/lstm_cell_674/Sigmoid_2:y:0(while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_674/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_674/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_674/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_674/BiasAdd/ReadVariableOp*^while/lstm_cell_674/MatMul/ReadVariableOp,^while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_674_biasadd_readvariableop_resource5while_lstm_cell_674_biasadd_readvariableop_resource_0"n
4while_lstm_cell_674_matmul_1_readvariableop_resource6while_lstm_cell_674_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_674_matmul_readvariableop_resource4while_lstm_cell_674_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_674/BiasAdd/ReadVariableOp*while/lstm_cell_674/BiasAdd/ReadVariableOp2V
)while/lstm_cell_674/MatMul/ReadVariableOp)while/lstm_cell_674/MatMul/ReadVariableOp2Z
+while/lstm_cell_674/MatMul_1/ReadVariableOp+while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_814_layer_call_fn_4081772
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4078477|
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
?
?
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078394

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
?
?
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4083078

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
?J
?
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079857

inputs?
,lstm_cell_673_matmul_readvariableop_resource:	d?A
.lstm_cell_673_matmul_1_readvariableop_resource:	2?<
-lstm_cell_673_biasadd_readvariableop_resource:	?
identity??$lstm_cell_673/BiasAdd/ReadVariableOp?#lstm_cell_673/MatMul/ReadVariableOp?%lstm_cell_673/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_673/MatMul/ReadVariableOpReadVariableOp,lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_673/MatMulMatMulstrided_slice_2:output:0+lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_673/MatMul_1MatMulzeros:output:0-lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_673/addAddV2lstm_cell_673/MatMul:product:0 lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_673/BiasAddBiasAddlstm_cell_673/add:z:0,lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_673/splitSplit&lstm_cell_673/split/split_dim:output:0lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_673/SigmoidSigmoidlstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_1Sigmoidlstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_673/mulMullstm_cell_673/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_673/ReluRelulstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_1Mullstm_cell_673/Sigmoid:y:0 lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_673/add_1AddV2lstm_cell_673/mul:z:0lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_2Sigmoidlstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_673/Relu_1Relulstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_2Mullstm_cell_673/Sigmoid_2:y:0"lstm_cell_673/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_673_matmul_readvariableop_resource.lstm_cell_673_matmul_1_readvariableop_resource-lstm_cell_673_biasadd_readvariableop_resource*
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
while_body_4079773*
condR
while_cond_4079772*K
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
NoOpNoOp%^lstm_cell_673/BiasAdd/ReadVariableOp$^lstm_cell_673/MatMul/ReadVariableOp&^lstm_cell_673/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_673/BiasAdd/ReadVariableOp$lstm_cell_673/BiasAdd/ReadVariableOp2J
#lstm_cell_673/MatMul/ReadVariableOp#lstm_cell_673/MatMul/ReadVariableOp2N
%lstm_cell_673/MatMul_1/ReadVariableOp%lstm_cell_673/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4079608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_674_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_674_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_674_matmul_readvariableop_resource:2(F
4while_lstm_cell_674_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_674_biasadd_readvariableop_resource:(??*while/lstm_cell_674/BiasAdd/ReadVariableOp?)while/lstm_cell_674/MatMul/ReadVariableOp?+while/lstm_cell_674/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_674/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_674/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_674/addAddV2$while/lstm_cell_674/MatMul:product:0&while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_674/BiasAddBiasAddwhile/lstm_cell_674/add:z:02while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_674/splitSplit,while/lstm_cell_674/split/split_dim:output:0$while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_674/SigmoidSigmoid"while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_1Sigmoid"while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mulMul!while/lstm_cell_674/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_674/ReluRelu"while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_1Mulwhile/lstm_cell_674/Sigmoid:y:0&while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/add_1AddV2while/lstm_cell_674/mul:z:0while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_2Sigmoid"while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_674/Relu_1Reluwhile/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_2Mul!while/lstm_cell_674/Sigmoid_2:y:0(while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_674/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_674/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_674/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_674/BiasAdd/ReadVariableOp*^while/lstm_cell_674/MatMul/ReadVariableOp,^while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_674_biasadd_readvariableop_resource5while_lstm_cell_674_biasadd_readvariableop_resource_0"n
4while_lstm_cell_674_matmul_1_readvariableop_resource6while_lstm_cell_674_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_674_matmul_readvariableop_resource4while_lstm_cell_674_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_674/BiasAdd/ReadVariableOp*while/lstm_cell_674/BiasAdd/ReadVariableOp2V
)while/lstm_cell_674/MatMul/ReadVariableOp)while/lstm_cell_674/MatMul/ReadVariableOp2Z
+while/lstm_cell_674/MatMul_1/ReadVariableOp+while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4082150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_673_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_673_matmul_readvariableop_resource:	d?G
4while_lstm_cell_673_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_673_biasadd_readvariableop_resource:	???*while/lstm_cell_673/BiasAdd/ReadVariableOp?)while/lstm_cell_673/MatMul/ReadVariableOp?+while/lstm_cell_673/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_673/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_673/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_673/addAddV2$while/lstm_cell_673/MatMul:product:0&while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_673/BiasAddBiasAddwhile/lstm_cell_673/add:z:02while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_673/splitSplit,while/lstm_cell_673/split/split_dim:output:0$while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_673/SigmoidSigmoid"while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_1Sigmoid"while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mulMul!while/lstm_cell_673/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_673/ReluRelu"while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_1Mulwhile/lstm_cell_673/Sigmoid:y:0&while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/add_1AddV2while/lstm_cell_673/mul:z:0while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_2Sigmoid"while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_673/Relu_1Reluwhile/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_2Mul!while/lstm_cell_673/Sigmoid_2:y:0(while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_673/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_673/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_673/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_673/BiasAdd/ReadVariableOp*^while/lstm_cell_673/MatMul/ReadVariableOp,^while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_673_biasadd_readvariableop_resource5while_lstm_cell_673_biasadd_readvariableop_resource_0"n
4while_lstm_cell_673_matmul_1_readvariableop_resource6while_lstm_cell_673_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_673_matmul_readvariableop_resource4while_lstm_cell_673_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_673/BiasAdd/ReadVariableOp*while/lstm_cell_673/BiasAdd/ReadVariableOp2V
)while/lstm_cell_673/MatMul/ReadVariableOp)while/lstm_cell_673/MatMul/ReadVariableOp2Z
+while/lstm_cell_673/MatMul_1/ReadVariableOp+while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
E__inference_lstm_813_layer_call_and_return_conditional_losses_4078318

inputs(
lstm_cell_672_4078236:	?(
lstm_cell_672_4078238:	d?$
lstm_cell_672_4078240:	?
identity??%lstm_cell_672/StatefulPartitionedCall?while;
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
%lstm_cell_672/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_672_4078236lstm_cell_672_4078238lstm_cell_672_4078240*
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078190n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_672_4078236lstm_cell_672_4078238lstm_cell_672_4078240*
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
while_body_4078249*
condR
while_cond_4078248*K
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
NoOpNoOp&^lstm_cell_672/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_672/StatefulPartitionedCall%lstm_cell_672/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_4078599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_673_4078623_0:	d?0
while_lstm_cell_673_4078625_0:	2?,
while_lstm_cell_673_4078627_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_673_4078623:	d?.
while_lstm_cell_673_4078625:	2?*
while_lstm_cell_673_4078627:	???+while/lstm_cell_673/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_673/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_673_4078623_0while_lstm_cell_673_4078625_0while_lstm_cell_673_4078627_0*
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078540?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_673/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_673/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_673/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_673/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_673_4078623while_lstm_cell_673_4078623_0"<
while_lstm_cell_673_4078625while_lstm_cell_673_4078625_0"<
while_lstm_cell_673_4078627while_lstm_cell_673_4078627_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_673/StatefulPartitionedCall+while/lstm_cell_673/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
+__inference_dense_271_layer_call_fn_4083002

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
F__inference_dense_271_layer_call_and_return_conditional_losses_4079494o
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
?
?
/__inference_lstm_cell_672_layer_call_fn_4083046

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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078190o
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
*sequential_271_lstm_815_while_body_4077887L
Hsequential_271_lstm_815_while_sequential_271_lstm_815_while_loop_counterR
Nsequential_271_lstm_815_while_sequential_271_lstm_815_while_maximum_iterations-
)sequential_271_lstm_815_while_placeholder/
+sequential_271_lstm_815_while_placeholder_1/
+sequential_271_lstm_815_while_placeholder_2/
+sequential_271_lstm_815_while_placeholder_3K
Gsequential_271_lstm_815_while_sequential_271_lstm_815_strided_slice_1_0?
?sequential_271_lstm_815_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_815_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_271_lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0:2(`
Nsequential_271_lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0:
([
Msequential_271_lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0:(*
&sequential_271_lstm_815_while_identity,
(sequential_271_lstm_815_while_identity_1,
(sequential_271_lstm_815_while_identity_2,
(sequential_271_lstm_815_while_identity_3,
(sequential_271_lstm_815_while_identity_4,
(sequential_271_lstm_815_while_identity_5I
Esequential_271_lstm_815_while_sequential_271_lstm_815_strided_slice_1?
?sequential_271_lstm_815_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_815_tensorarrayunstack_tensorlistfromtensor\
Jsequential_271_lstm_815_while_lstm_cell_674_matmul_readvariableop_resource:2(^
Lsequential_271_lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource:
(Y
Ksequential_271_lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource:(??Bsequential_271/lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp?Asequential_271/lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp?Csequential_271/lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp?
Osequential_271/lstm_815/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_271/lstm_815/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_271_lstm_815_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_815_tensorarrayunstack_tensorlistfromtensor_0)sequential_271_lstm_815_while_placeholderXsequential_271/lstm_815/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_271/lstm_815/while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOpLsequential_271_lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_271/lstm_815/while/lstm_cell_674/MatMulMatMulHsequential_271/lstm_815/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_271/lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_271/lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOpNsequential_271_lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_271/lstm_815/while/lstm_cell_674/MatMul_1MatMul+sequential_271_lstm_815_while_placeholder_2Ksequential_271/lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_271/lstm_815/while/lstm_cell_674/addAddV2<sequential_271/lstm_815/while/lstm_cell_674/MatMul:product:0>sequential_271/lstm_815/while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_271/lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOpMsequential_271_lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_271/lstm_815/while/lstm_cell_674/BiasAddBiasAdd3sequential_271/lstm_815/while/lstm_cell_674/add:z:0Jsequential_271/lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_271/lstm_815/while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_271/lstm_815/while/lstm_cell_674/splitSplitDsequential_271/lstm_815/while/lstm_cell_674/split/split_dim:output:0<sequential_271/lstm_815/while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_271/lstm_815/while/lstm_cell_674/SigmoidSigmoid:sequential_271/lstm_815/while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_271/lstm_815/while/lstm_cell_674/Sigmoid_1Sigmoid:sequential_271/lstm_815/while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_271/lstm_815/while/lstm_cell_674/mulMul9sequential_271/lstm_815/while/lstm_cell_674/Sigmoid_1:y:0+sequential_271_lstm_815_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_271/lstm_815/while/lstm_cell_674/ReluRelu:sequential_271/lstm_815/while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_271/lstm_815/while/lstm_cell_674/mul_1Mul7sequential_271/lstm_815/while/lstm_cell_674/Sigmoid:y:0>sequential_271/lstm_815/while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_271/lstm_815/while/lstm_cell_674/add_1AddV23sequential_271/lstm_815/while/lstm_cell_674/mul:z:05sequential_271/lstm_815/while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_271/lstm_815/while/lstm_cell_674/Sigmoid_2Sigmoid:sequential_271/lstm_815/while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_271/lstm_815/while/lstm_cell_674/Relu_1Relu5sequential_271/lstm_815/while/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_271/lstm_815/while/lstm_cell_674/mul_2Mul9sequential_271/lstm_815/while/lstm_cell_674/Sigmoid_2:y:0@sequential_271/lstm_815/while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_271/lstm_815/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_271_lstm_815_while_placeholder_1)sequential_271_lstm_815_while_placeholder5sequential_271/lstm_815/while/lstm_cell_674/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_271/lstm_815/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_271/lstm_815/while/addAddV2)sequential_271_lstm_815_while_placeholder,sequential_271/lstm_815/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_271/lstm_815/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_271/lstm_815/while/add_1AddV2Hsequential_271_lstm_815_while_sequential_271_lstm_815_while_loop_counter.sequential_271/lstm_815/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_271/lstm_815/while/IdentityIdentity'sequential_271/lstm_815/while/add_1:z:0#^sequential_271/lstm_815/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_815/while/Identity_1IdentityNsequential_271_lstm_815_while_sequential_271_lstm_815_while_maximum_iterations#^sequential_271/lstm_815/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_815/while/Identity_2Identity%sequential_271/lstm_815/while/add:z:0#^sequential_271/lstm_815/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_815/while/Identity_3IdentityRsequential_271/lstm_815/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_271/lstm_815/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_815/while/Identity_4Identity5sequential_271/lstm_815/while/lstm_cell_674/mul_2:z:0#^sequential_271/lstm_815/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_271/lstm_815/while/Identity_5Identity5sequential_271/lstm_815/while/lstm_cell_674/add_1:z:0#^sequential_271/lstm_815/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_271/lstm_815/while/NoOpNoOpC^sequential_271/lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOpB^sequential_271/lstm_815/while/lstm_cell_674/MatMul/ReadVariableOpD^sequential_271/lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_271_lstm_815_while_identity/sequential_271/lstm_815/while/Identity:output:0"]
(sequential_271_lstm_815_while_identity_11sequential_271/lstm_815/while/Identity_1:output:0"]
(sequential_271_lstm_815_while_identity_21sequential_271/lstm_815/while/Identity_2:output:0"]
(sequential_271_lstm_815_while_identity_31sequential_271/lstm_815/while/Identity_3:output:0"]
(sequential_271_lstm_815_while_identity_41sequential_271/lstm_815/while/Identity_4:output:0"]
(sequential_271_lstm_815_while_identity_51sequential_271/lstm_815/while/Identity_5:output:0"?
Ksequential_271_lstm_815_while_lstm_cell_674_biasadd_readvariableop_resourceMsequential_271_lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0"?
Lsequential_271_lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resourceNsequential_271_lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0"?
Jsequential_271_lstm_815_while_lstm_cell_674_matmul_readvariableop_resourceLsequential_271_lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0"?
Esequential_271_lstm_815_while_sequential_271_lstm_815_strided_slice_1Gsequential_271_lstm_815_while_sequential_271_lstm_815_strided_slice_1_0"?
?sequential_271_lstm_815_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_815_tensorarrayunstack_tensorlistfromtensor?sequential_271_lstm_815_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_815_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_271/lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOpBsequential_271/lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp2?
Asequential_271/lstm_815/while/lstm_cell_674/MatMul/ReadVariableOpAsequential_271/lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp2?
Csequential_271/lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOpCsequential_271/lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4079176

inputs?
,lstm_cell_672_matmul_readvariableop_resource:	?A
.lstm_cell_672_matmul_1_readvariableop_resource:	d?<
-lstm_cell_672_biasadd_readvariableop_resource:	?
identity??$lstm_cell_672/BiasAdd/ReadVariableOp?#lstm_cell_672/MatMul/ReadVariableOp?%lstm_cell_672/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_672/MatMul/ReadVariableOpReadVariableOp,lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_672/MatMulMatMulstrided_slice_2:output:0+lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_672/MatMul_1MatMulzeros:output:0-lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_672/addAddV2lstm_cell_672/MatMul:product:0 lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_672/BiasAddBiasAddlstm_cell_672/add:z:0,lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_672/splitSplit&lstm_cell_672/split/split_dim:output:0lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_672/SigmoidSigmoidlstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_1Sigmoidlstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_672/mulMullstm_cell_672/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_672/ReluRelulstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_1Mullstm_cell_672/Sigmoid:y:0 lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_672/add_1AddV2lstm_cell_672/mul:z:0lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_2Sigmoidlstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_672/Relu_1Relulstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_2Mullstm_cell_672/Sigmoid_2:y:0"lstm_cell_672/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_672_matmul_readvariableop_resource.lstm_cell_672_matmul_1_readvariableop_resource-lstm_cell_672_biasadd_readvariableop_resource*
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
while_body_4079092*
condR
while_cond_4079091*K
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
NoOpNoOp%^lstm_cell_672/BiasAdd/ReadVariableOp$^lstm_cell_672/MatMul/ReadVariableOp&^lstm_cell_672/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_672/BiasAdd/ReadVariableOp$lstm_cell_672/BiasAdd/ReadVariableOp2J
#lstm_cell_672/MatMul/ReadVariableOp#lstm_cell_672/MatMul/ReadVariableOp2N
%lstm_cell_672/MatMul_1/ReadVariableOp%lstm_cell_672/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081761

inputs?
,lstm_cell_672_matmul_readvariableop_resource:	?A
.lstm_cell_672_matmul_1_readvariableop_resource:	d?<
-lstm_cell_672_biasadd_readvariableop_resource:	?
identity??$lstm_cell_672/BiasAdd/ReadVariableOp?#lstm_cell_672/MatMul/ReadVariableOp?%lstm_cell_672/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_672/MatMul/ReadVariableOpReadVariableOp,lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_672/MatMulMatMulstrided_slice_2:output:0+lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_672/MatMul_1MatMulzeros:output:0-lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_672/addAddV2lstm_cell_672/MatMul:product:0 lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_672/BiasAddBiasAddlstm_cell_672/add:z:0,lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_672/splitSplit&lstm_cell_672/split/split_dim:output:0lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_672/SigmoidSigmoidlstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_1Sigmoidlstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_672/mulMullstm_cell_672/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_672/ReluRelulstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_1Mullstm_cell_672/Sigmoid:y:0 lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_672/add_1AddV2lstm_cell_672/mul:z:0lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_2Sigmoidlstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_672/Relu_1Relulstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_2Mullstm_cell_672/Sigmoid_2:y:0"lstm_cell_672/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_672_matmul_readvariableop_resource.lstm_cell_672_matmul_1_readvariableop_resource-lstm_cell_672_biasadd_readvariableop_resource*
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
while_body_4081677*
condR
while_cond_4081676*K
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
NoOpNoOp%^lstm_cell_672/BiasAdd/ReadVariableOp$^lstm_cell_672/MatMul/ReadVariableOp&^lstm_cell_672/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_672/BiasAdd/ReadVariableOp$lstm_cell_672/BiasAdd/ReadVariableOp2J
#lstm_cell_672/MatMul/ReadVariableOp#lstm_cell_672/MatMul/ReadVariableOp2N
%lstm_cell_672/MatMul_1/ReadVariableOp%lstm_cell_672/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_813_while_cond_4080349.
*lstm_813_while_lstm_813_while_loop_counter4
0lstm_813_while_lstm_813_while_maximum_iterations
lstm_813_while_placeholder 
lstm_813_while_placeholder_1 
lstm_813_while_placeholder_2 
lstm_813_while_placeholder_30
,lstm_813_while_less_lstm_813_strided_slice_1G
Clstm_813_while_lstm_813_while_cond_4080349___redundant_placeholder0G
Clstm_813_while_lstm_813_while_cond_4080349___redundant_placeholder1G
Clstm_813_while_lstm_813_while_cond_4080349___redundant_placeholder2G
Clstm_813_while_lstm_813_while_cond_4080349___redundant_placeholder3
lstm_813_while_identity
?
lstm_813/while/LessLesslstm_813_while_placeholder,lstm_813_while_less_lstm_813_strided_slice_1*
T0*
_output_shapes
: ]
lstm_813/while/IdentityIdentitylstm_813/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_813_while_identity lstm_813/while/Identity:output:0*(
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
while_body_4082766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_674_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_674_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_674_matmul_readvariableop_resource:2(F
4while_lstm_cell_674_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_674_biasadd_readvariableop_resource:(??*while/lstm_cell_674/BiasAdd/ReadVariableOp?)while/lstm_cell_674/MatMul/ReadVariableOp?+while/lstm_cell_674/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_674/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_674/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_674/addAddV2$while/lstm_cell_674/MatMul:product:0&while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_674/BiasAddBiasAddwhile/lstm_cell_674/add:z:02while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_674/splitSplit,while/lstm_cell_674/split/split_dim:output:0$while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_674/SigmoidSigmoid"while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_1Sigmoid"while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mulMul!while/lstm_cell_674/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_674/ReluRelu"while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_1Mulwhile/lstm_cell_674/Sigmoid:y:0&while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/add_1AddV2while/lstm_cell_674/mul:z:0while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_2Sigmoid"while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_674/Relu_1Reluwhile/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_2Mul!while/lstm_cell_674/Sigmoid_2:y:0(while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_674/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_674/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_674/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_674/BiasAdd/ReadVariableOp*^while/lstm_cell_674/MatMul/ReadVariableOp,^while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_674_biasadd_readvariableop_resource5while_lstm_cell_674_biasadd_readvariableop_resource_0"n
4while_lstm_cell_674_matmul_1_readvariableop_resource6while_lstm_cell_674_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_674_matmul_readvariableop_resource4while_lstm_cell_674_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_674/BiasAdd/ReadVariableOp*while/lstm_cell_674/BiasAdd/ReadVariableOp2V
)while/lstm_cell_674/MatMul/ReadVariableOp)while/lstm_cell_674/MatMul/ReadVariableOp2Z
+while/lstm_cell_674/MatMul_1/ReadVariableOp+while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_815_while_cond_4081054.
*lstm_815_while_lstm_815_while_loop_counter4
0lstm_815_while_lstm_815_while_maximum_iterations
lstm_815_while_placeholder 
lstm_815_while_placeholder_1 
lstm_815_while_placeholder_2 
lstm_815_while_placeholder_30
,lstm_815_while_less_lstm_815_strided_slice_1G
Clstm_815_while_lstm_815_while_cond_4081054___redundant_placeholder0G
Clstm_815_while_lstm_815_while_cond_4081054___redundant_placeholder1G
Clstm_815_while_lstm_815_while_cond_4081054___redundant_placeholder2G
Clstm_815_while_lstm_815_while_cond_4081054___redundant_placeholder3
lstm_815_while_identity
?
lstm_815/while/LessLesslstm_815_while_placeholder,lstm_815_while_less_lstm_815_strided_slice_1*
T0*
_output_shapes
: ]
lstm_815/while/IdentityIdentitylstm_815/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_815_while_identity lstm_815/while/Identity:output:0*(
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079476

inputs>
,lstm_cell_674_matmul_readvariableop_resource:2(@
.lstm_cell_674_matmul_1_readvariableop_resource:
(;
-lstm_cell_674_biasadd_readvariableop_resource:(
identity??$lstm_cell_674/BiasAdd/ReadVariableOp?#lstm_cell_674/MatMul/ReadVariableOp?%lstm_cell_674/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_674/MatMul/ReadVariableOpReadVariableOp,lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_674/MatMulMatMulstrided_slice_2:output:0+lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_674/MatMul_1MatMulzeros:output:0-lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_674/addAddV2lstm_cell_674/MatMul:product:0 lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_674/BiasAddBiasAddlstm_cell_674/add:z:0,lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_674/splitSplit&lstm_cell_674/split/split_dim:output:0lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_674/SigmoidSigmoidlstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_1Sigmoidlstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_674/mulMullstm_cell_674/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_674/ReluRelulstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_1Mullstm_cell_674/Sigmoid:y:0 lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_674/add_1AddV2lstm_cell_674/mul:z:0lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_2Sigmoidlstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_674/Relu_1Relulstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_2Mullstm_cell_674/Sigmoid_2:y:0"lstm_cell_674/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_674_matmul_readvariableop_resource.lstm_cell_674_matmul_1_readvariableop_resource-lstm_cell_674_biasadd_readvariableop_resource*
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
while_body_4079392*
condR
while_cond_4079391*K
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
NoOpNoOp%^lstm_cell_674/BiasAdd/ReadVariableOp$^lstm_cell_674/MatMul/ReadVariableOp&^lstm_cell_674/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_674/BiasAdd/ReadVariableOp$lstm_cell_674/BiasAdd/ReadVariableOp2J
#lstm_cell_674/MatMul/ReadVariableOp#lstm_cell_674/MatMul/ReadVariableOp2N
%lstm_cell_674/MatMul_1/ReadVariableOp%lstm_cell_674/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4080237
lstm_813_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_813_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4077977o
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
_user_specified_namelstm_813_input
?	
?
F__inference_dense_271_layer_call_and_return_conditional_losses_4079494

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
??
?
#__inference__traced_restore_4083579
file_prefix3
!assignvariableop_dense_271_kernel:
/
!assignvariableop_1_dense_271_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_813_lstm_cell_813_kernel:	?M
:assignvariableop_8_lstm_813_lstm_cell_813_recurrent_kernel:	d?=
.assignvariableop_9_lstm_813_lstm_cell_813_bias:	?D
1assignvariableop_10_lstm_814_lstm_cell_814_kernel:	d?N
;assignvariableop_11_lstm_814_lstm_cell_814_recurrent_kernel:	2?>
/assignvariableop_12_lstm_814_lstm_cell_814_bias:	?C
1assignvariableop_13_lstm_815_lstm_cell_815_kernel:2(M
;assignvariableop_14_lstm_815_lstm_cell_815_recurrent_kernel:
(=
/assignvariableop_15_lstm_815_lstm_cell_815_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_271_kernel_m:
7
)assignvariableop_19_adam_dense_271_bias_m:K
8assignvariableop_20_adam_lstm_813_lstm_cell_813_kernel_m:	?U
Bassignvariableop_21_adam_lstm_813_lstm_cell_813_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_813_lstm_cell_813_bias_m:	?K
8assignvariableop_23_adam_lstm_814_lstm_cell_814_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_814_lstm_cell_814_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_814_lstm_cell_814_bias_m:	?J
8assignvariableop_26_adam_lstm_815_lstm_cell_815_kernel_m:2(T
Bassignvariableop_27_adam_lstm_815_lstm_cell_815_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_815_lstm_cell_815_bias_m:(=
+assignvariableop_29_adam_dense_271_kernel_v:
7
)assignvariableop_30_adam_dense_271_bias_v:K
8assignvariableop_31_adam_lstm_813_lstm_cell_813_kernel_v:	?U
Bassignvariableop_32_adam_lstm_813_lstm_cell_813_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_813_lstm_cell_813_bias_v:	?K
8assignvariableop_34_adam_lstm_814_lstm_cell_814_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_814_lstm_cell_814_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_814_lstm_cell_814_bias_v:	?J
8assignvariableop_37_adam_lstm_815_lstm_cell_815_kernel_v:2(T
Bassignvariableop_38_adam_lstm_815_lstm_cell_815_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_815_lstm_cell_815_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_271_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_271_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_813_lstm_cell_813_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_813_lstm_cell_813_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_813_lstm_cell_813_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_814_lstm_cell_814_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_814_lstm_cell_814_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_814_lstm_cell_814_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_815_lstm_cell_815_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_815_lstm_cell_815_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_815_lstm_cell_815_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_271_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_271_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_813_lstm_cell_813_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_813_lstm_cell_813_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_813_lstm_cell_813_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_814_lstm_cell_814_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_814_lstm_cell_814_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_814_lstm_cell_814_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_815_lstm_cell_815_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_815_lstm_cell_815_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_815_lstm_cell_815_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_271_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_271_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_813_lstm_cell_813_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_813_lstm_cell_813_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_813_lstm_cell_813_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_814_lstm_cell_814_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_814_lstm_cell_814_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_814_lstm_cell_814_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_815_lstm_cell_815_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_815_lstm_cell_815_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_815_lstm_cell_815_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4078598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4078598___redundant_placeholder05
1while_while_cond_4078598___redundant_placeholder15
1while_while_cond_4078598___redundant_placeholder25
1while_while_cond_4078598___redundant_placeholder3
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
while_cond_4078057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4078057___redundant_placeholder05
1while_while_cond_4078057___redundant_placeholder15
1while_while_cond_4078057___redundant_placeholder25
1while_while_cond_4078057___redundant_placeholder3
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078744

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
?

?
0__inference_sequential_271_layer_call_fn_4080142
lstm_813_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_813_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080090o
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
_user_specified_namelstm_813_input
?C
?

lstm_814_while_body_4080489.
*lstm_814_while_lstm_814_while_loop_counter4
0lstm_814_while_lstm_814_while_maximum_iterations
lstm_814_while_placeholder 
lstm_814_while_placeholder_1 
lstm_814_while_placeholder_2 
lstm_814_while_placeholder_3-
)lstm_814_while_lstm_814_strided_slice_1_0i
elstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0:	d?R
?lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?M
>lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
lstm_814_while_identity
lstm_814_while_identity_1
lstm_814_while_identity_2
lstm_814_while_identity_3
lstm_814_while_identity_4
lstm_814_while_identity_5+
'lstm_814_while_lstm_814_strided_slice_1g
clstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensorN
;lstm_814_while_lstm_cell_673_matmul_readvariableop_resource:	d?P
=lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource:	2?K
<lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource:	???3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp?2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp?4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp?
@lstm_814/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_814/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensor_0lstm_814_while_placeholderIlstm_814/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp=lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_814/while/lstm_cell_673/MatMulMatMul9lstm_814/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp?lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_814/while/lstm_cell_673/MatMul_1MatMullstm_814_while_placeholder_2<lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_814/while/lstm_cell_673/addAddV2-lstm_814/while/lstm_cell_673/MatMul:product:0/lstm_814/while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp>lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_814/while/lstm_cell_673/BiasAddBiasAdd$lstm_814/while/lstm_cell_673/add:z:0;lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_814/while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_814/while/lstm_cell_673/splitSplit5lstm_814/while/lstm_cell_673/split/split_dim:output:0-lstm_814/while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_814/while/lstm_cell_673/SigmoidSigmoid+lstm_814/while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_814/while/lstm_cell_673/Sigmoid_1Sigmoid+lstm_814/while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_814/while/lstm_cell_673/mulMul*lstm_814/while/lstm_cell_673/Sigmoid_1:y:0lstm_814_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_814/while/lstm_cell_673/ReluRelu+lstm_814/while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_814/while/lstm_cell_673/mul_1Mul(lstm_814/while/lstm_cell_673/Sigmoid:y:0/lstm_814/while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_814/while/lstm_cell_673/add_1AddV2$lstm_814/while/lstm_cell_673/mul:z:0&lstm_814/while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_814/while/lstm_cell_673/Sigmoid_2Sigmoid+lstm_814/while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_814/while/lstm_cell_673/Relu_1Relu&lstm_814/while/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_814/while/lstm_cell_673/mul_2Mul*lstm_814/while/lstm_cell_673/Sigmoid_2:y:01lstm_814/while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_814/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_814_while_placeholder_1lstm_814_while_placeholder&lstm_814/while/lstm_cell_673/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_814/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_814/while/addAddV2lstm_814_while_placeholderlstm_814/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_814/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_814/while/add_1AddV2*lstm_814_while_lstm_814_while_loop_counterlstm_814/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_814/while/IdentityIdentitylstm_814/while/add_1:z:0^lstm_814/while/NoOp*
T0*
_output_shapes
: ?
lstm_814/while/Identity_1Identity0lstm_814_while_lstm_814_while_maximum_iterations^lstm_814/while/NoOp*
T0*
_output_shapes
: t
lstm_814/while/Identity_2Identitylstm_814/while/add:z:0^lstm_814/while/NoOp*
T0*
_output_shapes
: ?
lstm_814/while/Identity_3IdentityClstm_814/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_814/while/NoOp*
T0*
_output_shapes
: ?
lstm_814/while/Identity_4Identity&lstm_814/while/lstm_cell_673/mul_2:z:0^lstm_814/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_814/while/Identity_5Identity&lstm_814/while/lstm_cell_673/add_1:z:0^lstm_814/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_814/while/NoOpNoOp4^lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp3^lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp5^lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_814_while_identity lstm_814/while/Identity:output:0"?
lstm_814_while_identity_1"lstm_814/while/Identity_1:output:0"?
lstm_814_while_identity_2"lstm_814/while/Identity_2:output:0"?
lstm_814_while_identity_3"lstm_814/while/Identity_3:output:0"?
lstm_814_while_identity_4"lstm_814/while/Identity_4:output:0"?
lstm_814_while_identity_5"lstm_814/while/Identity_5:output:0"T
'lstm_814_while_lstm_814_strided_slice_1)lstm_814_while_lstm_814_strided_slice_1_0"~
<lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource>lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0"?
=lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource?lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0"|
;lstm_814_while_lstm_cell_673_matmul_readvariableop_resource=lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0"?
clstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensorelstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp2h
2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp2l
4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
E__inference_lstm_813_layer_call_and_return_conditional_losses_4078127

inputs(
lstm_cell_672_4078045:	?(
lstm_cell_672_4078047:	d?$
lstm_cell_672_4078049:	?
identity??%lstm_cell_672/StatefulPartitionedCall?while;
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
%lstm_cell_672/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_672_4078045lstm_cell_672_4078047lstm_cell_672_4078049*
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078044n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_672_4078045lstm_cell_672_4078047lstm_cell_672_4078049*
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
while_body_4078058*
condR
while_cond_4078057*K
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
NoOpNoOp&^lstm_cell_672/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_672/StatefulPartitionedCall%lstm_cell_672/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_271_lstm_815_while_cond_4077886L
Hsequential_271_lstm_815_while_sequential_271_lstm_815_while_loop_counterR
Nsequential_271_lstm_815_while_sequential_271_lstm_815_while_maximum_iterations-
)sequential_271_lstm_815_while_placeholder/
+sequential_271_lstm_815_while_placeholder_1/
+sequential_271_lstm_815_while_placeholder_2/
+sequential_271_lstm_815_while_placeholder_3N
Jsequential_271_lstm_815_while_less_sequential_271_lstm_815_strided_slice_1e
asequential_271_lstm_815_while_sequential_271_lstm_815_while_cond_4077886___redundant_placeholder0e
asequential_271_lstm_815_while_sequential_271_lstm_815_while_cond_4077886___redundant_placeholder1e
asequential_271_lstm_815_while_sequential_271_lstm_815_while_cond_4077886___redundant_placeholder2e
asequential_271_lstm_815_while_sequential_271_lstm_815_while_cond_4077886___redundant_placeholder3*
&sequential_271_lstm_815_while_identity
?
"sequential_271/lstm_815/while/LessLess)sequential_271_lstm_815_while_placeholderJsequential_271_lstm_815_while_less_sequential_271_lstm_815_strided_slice_1*
T0*
_output_shapes
: {
&sequential_271/lstm_815/while/IdentityIdentity&sequential_271/lstm_815/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_271_lstm_815_while_identity/sequential_271/lstm_815/while/Identity:output:0*(
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

lstm_815_while_body_4080628.
*lstm_815_while_lstm_815_while_loop_counter4
0lstm_815_while_lstm_815_while_maximum_iterations
lstm_815_while_placeholder 
lstm_815_while_placeholder_1 
lstm_815_while_placeholder_2 
lstm_815_while_placeholder_3-
)lstm_815_while_lstm_815_strided_slice_1_0i
elstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0:2(Q
?lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(L
>lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0:(
lstm_815_while_identity
lstm_815_while_identity_1
lstm_815_while_identity_2
lstm_815_while_identity_3
lstm_815_while_identity_4
lstm_815_while_identity_5+
'lstm_815_while_lstm_815_strided_slice_1g
clstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensorM
;lstm_815_while_lstm_cell_674_matmul_readvariableop_resource:2(O
=lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource:
(J
<lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource:(??3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp?2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp?4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp?
@lstm_815/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_815/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensor_0lstm_815_while_placeholderIlstm_815/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp=lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_815/while/lstm_cell_674/MatMulMatMul9lstm_815/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp?lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_815/while/lstm_cell_674/MatMul_1MatMullstm_815_while_placeholder_2<lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_815/while/lstm_cell_674/addAddV2-lstm_815/while/lstm_cell_674/MatMul:product:0/lstm_815/while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp>lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_815/while/lstm_cell_674/BiasAddBiasAdd$lstm_815/while/lstm_cell_674/add:z:0;lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_815/while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_815/while/lstm_cell_674/splitSplit5lstm_815/while/lstm_cell_674/split/split_dim:output:0-lstm_815/while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_815/while/lstm_cell_674/SigmoidSigmoid+lstm_815/while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_815/while/lstm_cell_674/Sigmoid_1Sigmoid+lstm_815/while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_815/while/lstm_cell_674/mulMul*lstm_815/while/lstm_cell_674/Sigmoid_1:y:0lstm_815_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_815/while/lstm_cell_674/ReluRelu+lstm_815/while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_815/while/lstm_cell_674/mul_1Mul(lstm_815/while/lstm_cell_674/Sigmoid:y:0/lstm_815/while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_815/while/lstm_cell_674/add_1AddV2$lstm_815/while/lstm_cell_674/mul:z:0&lstm_815/while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_815/while/lstm_cell_674/Sigmoid_2Sigmoid+lstm_815/while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_815/while/lstm_cell_674/Relu_1Relu&lstm_815/while/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_815/while/lstm_cell_674/mul_2Mul*lstm_815/while/lstm_cell_674/Sigmoid_2:y:01lstm_815/while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_815/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_815_while_placeholder_1lstm_815_while_placeholder&lstm_815/while/lstm_cell_674/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_815/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_815/while/addAddV2lstm_815_while_placeholderlstm_815/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_815/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_815/while/add_1AddV2*lstm_815_while_lstm_815_while_loop_counterlstm_815/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_815/while/IdentityIdentitylstm_815/while/add_1:z:0^lstm_815/while/NoOp*
T0*
_output_shapes
: ?
lstm_815/while/Identity_1Identity0lstm_815_while_lstm_815_while_maximum_iterations^lstm_815/while/NoOp*
T0*
_output_shapes
: t
lstm_815/while/Identity_2Identitylstm_815/while/add:z:0^lstm_815/while/NoOp*
T0*
_output_shapes
: ?
lstm_815/while/Identity_3IdentityClstm_815/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_815/while/NoOp*
T0*
_output_shapes
: ?
lstm_815/while/Identity_4Identity&lstm_815/while/lstm_cell_674/mul_2:z:0^lstm_815/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_815/while/Identity_5Identity&lstm_815/while/lstm_cell_674/add_1:z:0^lstm_815/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_815/while/NoOpNoOp4^lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp3^lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp5^lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_815_while_identity lstm_815/while/Identity:output:0"?
lstm_815_while_identity_1"lstm_815/while/Identity_1:output:0"?
lstm_815_while_identity_2"lstm_815/while/Identity_2:output:0"?
lstm_815_while_identity_3"lstm_815/while/Identity_3:output:0"?
lstm_815_while_identity_4"lstm_815/while/Identity_4:output:0"?
lstm_815_while_identity_5"lstm_815/while/Identity_5:output:0"T
'lstm_815_while_lstm_815_strided_slice_1)lstm_815_while_lstm_815_strided_slice_1_0"~
<lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource>lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0"?
=lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource?lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0"|
;lstm_815_while_lstm_cell_674_matmul_readvariableop_resource=lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0"?
clstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensorelstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp2h
2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp2l
4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081618

inputs?
,lstm_cell_672_matmul_readvariableop_resource:	?A
.lstm_cell_672_matmul_1_readvariableop_resource:	d?<
-lstm_cell_672_biasadd_readvariableop_resource:	?
identity??$lstm_cell_672/BiasAdd/ReadVariableOp?#lstm_cell_672/MatMul/ReadVariableOp?%lstm_cell_672/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_672/MatMul/ReadVariableOpReadVariableOp,lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_672/MatMulMatMulstrided_slice_2:output:0+lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_672/MatMul_1MatMulzeros:output:0-lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_672/addAddV2lstm_cell_672/MatMul:product:0 lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_672/BiasAddBiasAddlstm_cell_672/add:z:0,lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_672/splitSplit&lstm_cell_672/split/split_dim:output:0lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_672/SigmoidSigmoidlstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_1Sigmoidlstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_672/mulMullstm_cell_672/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_672/ReluRelulstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_1Mullstm_cell_672/Sigmoid:y:0 lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_672/add_1AddV2lstm_cell_672/mul:z:0lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_2Sigmoidlstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_672/Relu_1Relulstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_2Mullstm_cell_672/Sigmoid_2:y:0"lstm_cell_672/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_672_matmul_readvariableop_resource.lstm_cell_672_matmul_1_readvariableop_resource-lstm_cell_672_biasadd_readvariableop_resource*
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
while_body_4081534*
condR
while_cond_4081533*K
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
NoOpNoOp%^lstm_cell_672/BiasAdd/ReadVariableOp$^lstm_cell_672/MatMul/ReadVariableOp&^lstm_cell_672/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_672/BiasAdd/ReadVariableOp$lstm_cell_672/BiasAdd/ReadVariableOp2J
#lstm_cell_672/MatMul/ReadVariableOp#lstm_cell_672/MatMul/ReadVariableOp2N
%lstm_cell_672/MatMul_1/ReadVariableOp%lstm_cell_672/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082993

inputs>
,lstm_cell_674_matmul_readvariableop_resource:2(@
.lstm_cell_674_matmul_1_readvariableop_resource:
(;
-lstm_cell_674_biasadd_readvariableop_resource:(
identity??$lstm_cell_674/BiasAdd/ReadVariableOp?#lstm_cell_674/MatMul/ReadVariableOp?%lstm_cell_674/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_674/MatMul/ReadVariableOpReadVariableOp,lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_674/MatMulMatMulstrided_slice_2:output:0+lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_674/MatMul_1MatMulzeros:output:0-lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_674/addAddV2lstm_cell_674/MatMul:product:0 lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_674/BiasAddBiasAddlstm_cell_674/add:z:0,lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_674/splitSplit&lstm_cell_674/split/split_dim:output:0lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_674/SigmoidSigmoidlstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_1Sigmoidlstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_674/mulMullstm_cell_674/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_674/ReluRelulstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_1Mullstm_cell_674/Sigmoid:y:0 lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_674/add_1AddV2lstm_cell_674/mul:z:0lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_2Sigmoidlstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_674/Relu_1Relulstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_2Mullstm_cell_674/Sigmoid_2:y:0"lstm_cell_674/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_674_matmul_readvariableop_resource.lstm_cell_674_matmul_1_readvariableop_resource-lstm_cell_674_biasadd_readvariableop_resource*
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
while_body_4082909*
condR
while_cond_4082908*K
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
NoOpNoOp%^lstm_cell_674/BiasAdd/ReadVariableOp$^lstm_cell_674/MatMul/ReadVariableOp&^lstm_cell_674/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_674/BiasAdd/ReadVariableOp$lstm_cell_674/BiasAdd/ReadVariableOp2J
#lstm_cell_674/MatMul/ReadVariableOp#lstm_cell_674/MatMul/ReadVariableOp2N
%lstm_cell_674/MatMul_1/ReadVariableOp%lstm_cell_674/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4082006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082006___redundant_placeholder05
1while_while_cond_4082006___redundant_placeholder15
1while_while_cond_4082006___redundant_placeholder25
1while_while_cond_4082006___redundant_placeholder3
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
while_body_4078058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_672_4078082_0:	?0
while_lstm_cell_672_4078084_0:	d?,
while_lstm_cell_672_4078086_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_672_4078082:	?.
while_lstm_cell_672_4078084:	d?*
while_lstm_cell_672_4078086:	???+while/lstm_cell_672/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_672/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_672_4078082_0while_lstm_cell_672_4078084_0while_lstm_cell_672_4078086_0*
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078044?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_672/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_672/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_672/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_672/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_672_4078082while_lstm_cell_672_4078082_0"<
while_lstm_cell_672_4078084while_lstm_cell_672_4078084_0"<
while_lstm_cell_672_4078086while_lstm_cell_672_4078086_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_672/StatefulPartitionedCall+while/lstm_cell_672/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4081864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_673_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_673_matmul_readvariableop_resource:	d?G
4while_lstm_cell_673_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_673_biasadd_readvariableop_resource:	???*while/lstm_cell_673/BiasAdd/ReadVariableOp?)while/lstm_cell_673/MatMul/ReadVariableOp?+while/lstm_cell_673/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_673/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_673/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_673/addAddV2$while/lstm_cell_673/MatMul:product:0&while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_673/BiasAddBiasAddwhile/lstm_cell_673/add:z:02while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_673/splitSplit,while/lstm_cell_673/split/split_dim:output:0$while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_673/SigmoidSigmoid"while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_1Sigmoid"while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mulMul!while/lstm_cell_673/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_673/ReluRelu"while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_1Mulwhile/lstm_cell_673/Sigmoid:y:0&while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/add_1AddV2while/lstm_cell_673/mul:z:0while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_2Sigmoid"while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_673/Relu_1Reluwhile/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_2Mul!while/lstm_cell_673/Sigmoid_2:y:0(while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_673/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_673/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_673/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_673/BiasAdd/ReadVariableOp*^while/lstm_cell_673/MatMul/ReadVariableOp,^while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_673_biasadd_readvariableop_resource5while_lstm_cell_673_biasadd_readvariableop_resource_0"n
4while_lstm_cell_673_matmul_1_readvariableop_resource6while_lstm_cell_673_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_673_matmul_readvariableop_resource4while_lstm_cell_673_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_673/BiasAdd/ReadVariableOp*while/lstm_cell_673/BiasAdd/ReadVariableOp2V
)while/lstm_cell_673/MatMul/ReadVariableOp)while/lstm_cell_673/MatMul/ReadVariableOp2Z
+while/lstm_cell_673/MatMul_1/ReadVariableOp+while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079018

inputs'
lstm_cell_674_4078936:2('
lstm_cell_674_4078938:
(#
lstm_cell_674_4078940:(
identity??%lstm_cell_674/StatefulPartitionedCall?while;
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
%lstm_cell_674/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_674_4078936lstm_cell_674_4078938lstm_cell_674_4078940*
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078890n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_674_4078936lstm_cell_674_4078938lstm_cell_674_4078940*
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
while_body_4078949*
condR
while_cond_4078948*K
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
NoOpNoOp&^lstm_cell_674/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_674/StatefulPartitionedCall%lstm_cell_674/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4078949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_674_4078973_0:2(/
while_lstm_cell_674_4078975_0:
(+
while_lstm_cell_674_4078977_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_674_4078973:2(-
while_lstm_cell_674_4078975:
()
while_lstm_cell_674_4078977:(??+while/lstm_cell_674/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_674/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_674_4078973_0while_lstm_cell_674_4078975_0while_lstm_cell_674_4078977_0*
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078890?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_674/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_674/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_674/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_674_4078973while_lstm_cell_674_4078973_0"<
while_lstm_cell_674_4078975while_lstm_cell_674_4078975_0"<
while_lstm_cell_674_4078977while_lstm_cell_674_4078977_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_674/StatefulPartitionedCall+while/lstm_cell_674/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_815_layer_call_fn_4082399
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079018o
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
?
while_cond_4082479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082479___redundant_placeholder05
1while_while_cond_4082479___redundant_placeholder15
1while_while_cond_4082479___redundant_placeholder25
1while_while_cond_4082479___redundant_placeholder3
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079326

inputs?
,lstm_cell_673_matmul_readvariableop_resource:	d?A
.lstm_cell_673_matmul_1_readvariableop_resource:	2?<
-lstm_cell_673_biasadd_readvariableop_resource:	?
identity??$lstm_cell_673/BiasAdd/ReadVariableOp?#lstm_cell_673/MatMul/ReadVariableOp?%lstm_cell_673/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_673/MatMul/ReadVariableOpReadVariableOp,lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_673/MatMulMatMulstrided_slice_2:output:0+lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_673/MatMul_1MatMulzeros:output:0-lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_673/addAddV2lstm_cell_673/MatMul:product:0 lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_673/BiasAddBiasAddlstm_cell_673/add:z:0,lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_673/splitSplit&lstm_cell_673/split/split_dim:output:0lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_673/SigmoidSigmoidlstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_1Sigmoidlstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_673/mulMullstm_cell_673/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_673/ReluRelulstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_1Mullstm_cell_673/Sigmoid:y:0 lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_673/add_1AddV2lstm_cell_673/mul:z:0lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_2Sigmoidlstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_673/Relu_1Relulstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_2Mullstm_cell_673/Sigmoid_2:y:0"lstm_cell_673/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_673_matmul_readvariableop_resource.lstm_cell_673_matmul_1_readvariableop_resource-lstm_cell_673_biasadd_readvariableop_resource*
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
while_body_4079242*
condR
while_cond_4079241*K
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
NoOpNoOp%^lstm_cell_673/BiasAdd/ReadVariableOp$^lstm_cell_673/MatMul/ReadVariableOp&^lstm_cell_673/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_673/BiasAdd/ReadVariableOp$lstm_cell_673/BiasAdd/ReadVariableOp2J
#lstm_cell_673/MatMul/ReadVariableOp#lstm_cell_673/MatMul/ReadVariableOp2N
%lstm_cell_673/MatMul_1/ReadVariableOp%lstm_cell_673/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4082007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_673_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_673_matmul_readvariableop_resource:	d?G
4while_lstm_cell_673_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_673_biasadd_readvariableop_resource:	???*while/lstm_cell_673/BiasAdd/ReadVariableOp?)while/lstm_cell_673/MatMul/ReadVariableOp?+while/lstm_cell_673/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_673/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_673/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_673/addAddV2$while/lstm_cell_673/MatMul:product:0&while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_673/BiasAddBiasAddwhile/lstm_cell_673/add:z:02while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_673/splitSplit,while/lstm_cell_673/split/split_dim:output:0$while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_673/SigmoidSigmoid"while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_1Sigmoid"while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mulMul!while/lstm_cell_673/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_673/ReluRelu"while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_1Mulwhile/lstm_cell_673/Sigmoid:y:0&while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/add_1AddV2while/lstm_cell_673/mul:z:0while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_2Sigmoid"while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_673/Relu_1Reluwhile/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_2Mul!while/lstm_cell_673/Sigmoid_2:y:0(while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_673/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_673/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_673/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_673/BiasAdd/ReadVariableOp*^while/lstm_cell_673/MatMul/ReadVariableOp,^while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_673_biasadd_readvariableop_resource5while_lstm_cell_673_biasadd_readvariableop_resource_0"n
4while_lstm_cell_673_matmul_1_readvariableop_resource6while_lstm_cell_673_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_673_matmul_readvariableop_resource4while_lstm_cell_673_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_673/BiasAdd/ReadVariableOp*while/lstm_cell_673/BiasAdd/ReadVariableOp2V
)while/lstm_cell_673/MatMul/ReadVariableOp)while/lstm_cell_673/MatMul/ReadVariableOp2Z
+while/lstm_cell_673/MatMul_1/ReadVariableOp+while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4079241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4079241___redundant_placeholder05
1while_while_cond_4079241___redundant_placeholder15
1while_while_cond_4079241___redundant_placeholder25
1while_while_cond_4079241___redundant_placeholder3
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
while_body_4082293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_673_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_673_matmul_readvariableop_resource:	d?G
4while_lstm_cell_673_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_673_biasadd_readvariableop_resource:	???*while/lstm_cell_673/BiasAdd/ReadVariableOp?)while/lstm_cell_673/MatMul/ReadVariableOp?+while/lstm_cell_673/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_673/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_673/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_673/addAddV2$while/lstm_cell_673/MatMul:product:0&while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_673/BiasAddBiasAddwhile/lstm_cell_673/add:z:02while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_673/splitSplit,while/lstm_cell_673/split/split_dim:output:0$while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_673/SigmoidSigmoid"while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_1Sigmoid"while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mulMul!while/lstm_cell_673/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_673/ReluRelu"while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_1Mulwhile/lstm_cell_673/Sigmoid:y:0&while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/add_1AddV2while/lstm_cell_673/mul:z:0while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_2Sigmoid"while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_673/Relu_1Reluwhile/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_2Mul!while/lstm_cell_673/Sigmoid_2:y:0(while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_673/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_673/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_673/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_673/BiasAdd/ReadVariableOp*^while/lstm_cell_673/MatMul/ReadVariableOp,^while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_673_biasadd_readvariableop_resource5while_lstm_cell_673_biasadd_readvariableop_resource_0"n
4while_lstm_cell_673_matmul_1_readvariableop_resource6while_lstm_cell_673_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_673_matmul_readvariableop_resource4while_lstm_cell_673_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_673/BiasAdd/ReadVariableOp*while/lstm_cell_673/BiasAdd/ReadVariableOp2V
)while/lstm_cell_673/MatMul/ReadVariableOp)while/lstm_cell_673/MatMul/ReadVariableOp2Z
+while/lstm_cell_673/MatMul_1/ReadVariableOp+while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4079937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4079937___redundant_placeholder05
1while_while_cond_4079937___redundant_placeholder15
1while_while_cond_4079937___redundant_placeholder25
1while_while_cond_4079937___redundant_placeholder3
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
while_cond_4081390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4081390___redundant_placeholder05
1while_while_cond_4081390___redundant_placeholder15
1while_while_cond_4081390___redundant_placeholder25
1while_while_cond_4081390___redundant_placeholder3
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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080090

inputs#
lstm_813_4080063:	?#
lstm_813_4080065:	d?
lstm_813_4080067:	?#
lstm_814_4080070:	d?#
lstm_814_4080072:	2?
lstm_814_4080074:	?"
lstm_815_4080077:2("
lstm_815_4080079:
(
lstm_815_4080081:(#
dense_271_4080084:

dense_271_4080086:
identity??!dense_271/StatefulPartitionedCall? lstm_813/StatefulPartitionedCall? lstm_814/StatefulPartitionedCall? lstm_815/StatefulPartitionedCall?
 lstm_813/StatefulPartitionedCallStatefulPartitionedCallinputslstm_813_4080063lstm_813_4080065lstm_813_4080067*
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4080022?
 lstm_814/StatefulPartitionedCallStatefulPartitionedCall)lstm_813/StatefulPartitionedCall:output:0lstm_814_4080070lstm_814_4080072lstm_814_4080074*
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079857?
 lstm_815/StatefulPartitionedCallStatefulPartitionedCall)lstm_814/StatefulPartitionedCall:output:0lstm_815_4080077lstm_815_4080079lstm_815_4080081*
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079692?
!dense_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_815/StatefulPartitionedCall:output:0dense_271_4080084dense_271_4080086*
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
F__inference_dense_271_layer_call_and_return_conditional_losses_4079494y
IdentityIdentity*dense_271/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_271/StatefulPartitionedCall!^lstm_813/StatefulPartitionedCall!^lstm_814/StatefulPartitionedCall!^lstm_815/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_271/StatefulPartitionedCall!dense_271/StatefulPartitionedCall2D
 lstm_813/StatefulPartitionedCall lstm_813/StatefulPartitionedCall2D
 lstm_814/StatefulPartitionedCall lstm_814/StatefulPartitionedCall2D
 lstm_815/StatefulPartitionedCall lstm_815/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_814_while_body_4080916.
*lstm_814_while_lstm_814_while_loop_counter4
0lstm_814_while_lstm_814_while_maximum_iterations
lstm_814_while_placeholder 
lstm_814_while_placeholder_1 
lstm_814_while_placeholder_2 
lstm_814_while_placeholder_3-
)lstm_814_while_lstm_814_strided_slice_1_0i
elstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0:	d?R
?lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?M
>lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
lstm_814_while_identity
lstm_814_while_identity_1
lstm_814_while_identity_2
lstm_814_while_identity_3
lstm_814_while_identity_4
lstm_814_while_identity_5+
'lstm_814_while_lstm_814_strided_slice_1g
clstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensorN
;lstm_814_while_lstm_cell_673_matmul_readvariableop_resource:	d?P
=lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource:	2?K
<lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource:	???3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp?2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp?4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp?
@lstm_814/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_814/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensor_0lstm_814_while_placeholderIlstm_814/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp=lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_814/while/lstm_cell_673/MatMulMatMul9lstm_814/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp?lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_814/while/lstm_cell_673/MatMul_1MatMullstm_814_while_placeholder_2<lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_814/while/lstm_cell_673/addAddV2-lstm_814/while/lstm_cell_673/MatMul:product:0/lstm_814/while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp>lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_814/while/lstm_cell_673/BiasAddBiasAdd$lstm_814/while/lstm_cell_673/add:z:0;lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_814/while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_814/while/lstm_cell_673/splitSplit5lstm_814/while/lstm_cell_673/split/split_dim:output:0-lstm_814/while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_814/while/lstm_cell_673/SigmoidSigmoid+lstm_814/while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_814/while/lstm_cell_673/Sigmoid_1Sigmoid+lstm_814/while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_814/while/lstm_cell_673/mulMul*lstm_814/while/lstm_cell_673/Sigmoid_1:y:0lstm_814_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_814/while/lstm_cell_673/ReluRelu+lstm_814/while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_814/while/lstm_cell_673/mul_1Mul(lstm_814/while/lstm_cell_673/Sigmoid:y:0/lstm_814/while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_814/while/lstm_cell_673/add_1AddV2$lstm_814/while/lstm_cell_673/mul:z:0&lstm_814/while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_814/while/lstm_cell_673/Sigmoid_2Sigmoid+lstm_814/while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_814/while/lstm_cell_673/Relu_1Relu&lstm_814/while/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_814/while/lstm_cell_673/mul_2Mul*lstm_814/while/lstm_cell_673/Sigmoid_2:y:01lstm_814/while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_814/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_814_while_placeholder_1lstm_814_while_placeholder&lstm_814/while/lstm_cell_673/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_814/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_814/while/addAddV2lstm_814_while_placeholderlstm_814/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_814/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_814/while/add_1AddV2*lstm_814_while_lstm_814_while_loop_counterlstm_814/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_814/while/IdentityIdentitylstm_814/while/add_1:z:0^lstm_814/while/NoOp*
T0*
_output_shapes
: ?
lstm_814/while/Identity_1Identity0lstm_814_while_lstm_814_while_maximum_iterations^lstm_814/while/NoOp*
T0*
_output_shapes
: t
lstm_814/while/Identity_2Identitylstm_814/while/add:z:0^lstm_814/while/NoOp*
T0*
_output_shapes
: ?
lstm_814/while/Identity_3IdentityClstm_814/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_814/while/NoOp*
T0*
_output_shapes
: ?
lstm_814/while/Identity_4Identity&lstm_814/while/lstm_cell_673/mul_2:z:0^lstm_814/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_814/while/Identity_5Identity&lstm_814/while/lstm_cell_673/add_1:z:0^lstm_814/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_814/while/NoOpNoOp4^lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp3^lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp5^lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_814_while_identity lstm_814/while/Identity:output:0"?
lstm_814_while_identity_1"lstm_814/while/Identity_1:output:0"?
lstm_814_while_identity_2"lstm_814/while/Identity_2:output:0"?
lstm_814_while_identity_3"lstm_814/while/Identity_3:output:0"?
lstm_814_while_identity_4"lstm_814/while/Identity_4:output:0"?
lstm_814_while_identity_5"lstm_814/while/Identity_5:output:0"T
'lstm_814_while_lstm_814_strided_slice_1)lstm_814_while_lstm_814_strided_slice_1_0"~
<lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource>lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0"?
=lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource?lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0"|
;lstm_814_while_lstm_cell_673_matmul_readvariableop_resource=lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0"?
clstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensorelstm_814_while_tensorarrayv2read_tensorlistgetitem_lstm_814_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp3lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp2h
2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp2lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp2l
4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp4lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4078407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4078407___redundant_placeholder05
1while_while_cond_4078407___redundant_placeholder15
1while_while_cond_4078407___redundant_placeholder25
1while_while_cond_4078407___redundant_placeholder3
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
?
?
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078540

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
lstm_814_while_cond_4080488.
*lstm_814_while_lstm_814_while_loop_counter4
0lstm_814_while_lstm_814_while_maximum_iterations
lstm_814_while_placeholder 
lstm_814_while_placeholder_1 
lstm_814_while_placeholder_2 
lstm_814_while_placeholder_30
,lstm_814_while_less_lstm_814_strided_slice_1G
Clstm_814_while_lstm_814_while_cond_4080488___redundant_placeholder0G
Clstm_814_while_lstm_814_while_cond_4080488___redundant_placeholder1G
Clstm_814_while_lstm_814_while_cond_4080488___redundant_placeholder2G
Clstm_814_while_lstm_814_while_cond_4080488___redundant_placeholder3
lstm_814_while_identity
?
lstm_814/while/LessLesslstm_814_while_placeholder,lstm_814_while_less_lstm_814_strided_slice_1*
T0*
_output_shapes
: ]
lstm_814/while/IdentityIdentitylstm_814/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_814_while_identity lstm_814/while/Identity:output:0*(
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4081948
inputs_0?
,lstm_cell_673_matmul_readvariableop_resource:	d?A
.lstm_cell_673_matmul_1_readvariableop_resource:	2?<
-lstm_cell_673_biasadd_readvariableop_resource:	?
identity??$lstm_cell_673/BiasAdd/ReadVariableOp?#lstm_cell_673/MatMul/ReadVariableOp?%lstm_cell_673/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_673/MatMul/ReadVariableOpReadVariableOp,lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_673/MatMulMatMulstrided_slice_2:output:0+lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_673/MatMul_1MatMulzeros:output:0-lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_673/addAddV2lstm_cell_673/MatMul:product:0 lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_673/BiasAddBiasAddlstm_cell_673/add:z:0,lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_673/splitSplit&lstm_cell_673/split/split_dim:output:0lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_673/SigmoidSigmoidlstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_1Sigmoidlstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_673/mulMullstm_cell_673/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_673/ReluRelulstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_1Mullstm_cell_673/Sigmoid:y:0 lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_673/add_1AddV2lstm_cell_673/mul:z:0lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_2Sigmoidlstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_673/Relu_1Relulstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_2Mullstm_cell_673/Sigmoid_2:y:0"lstm_cell_673/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_673_matmul_readvariableop_resource.lstm_cell_673_matmul_1_readvariableop_resource-lstm_cell_673_biasadd_readvariableop_resource*
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
while_body_4081864*
condR
while_cond_4081863*K
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
NoOpNoOp%^lstm_cell_673/BiasAdd/ReadVariableOp$^lstm_cell_673/MatMul/ReadVariableOp&^lstm_cell_673/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_673/BiasAdd/ReadVariableOp$lstm_cell_673/BiasAdd/ReadVariableOp2J
#lstm_cell_673/MatMul/ReadVariableOp#lstm_cell_673/MatMul/ReadVariableOp2N
%lstm_cell_673/MatMul_1/ReadVariableOp%lstm_cell_673/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?#
?
while_body_4078408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_673_4078432_0:	d?0
while_lstm_cell_673_4078434_0:	2?,
while_lstm_cell_673_4078436_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_673_4078432:	d?.
while_lstm_cell_673_4078434:	2?*
while_lstm_cell_673_4078436:	???+while/lstm_cell_673/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_673/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_673_4078432_0while_lstm_cell_673_4078434_0while_lstm_cell_673_4078436_0*
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078394?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_673/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_673/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_673/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_673/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_673_4078432while_lstm_cell_673_4078432_0"<
while_lstm_cell_673_4078434while_lstm_cell_673_4078434_0"<
while_lstm_cell_673_4078436while_lstm_cell_673_4078436_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_673/StatefulPartitionedCall+while/lstm_cell_673/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4081248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_672_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_672_matmul_readvariableop_resource:	?G
4while_lstm_cell_672_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_672_biasadd_readvariableop_resource:	???*while/lstm_cell_672/BiasAdd/ReadVariableOp?)while/lstm_cell_672/MatMul/ReadVariableOp?+while/lstm_cell_672/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_672/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_672/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_672/addAddV2$while/lstm_cell_672/MatMul:product:0&while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_672/BiasAddBiasAddwhile/lstm_cell_672/add:z:02while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_672/splitSplit,while/lstm_cell_672/split/split_dim:output:0$while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_672/SigmoidSigmoid"while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_1Sigmoid"while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mulMul!while/lstm_cell_672/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_672/ReluRelu"while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_1Mulwhile/lstm_cell_672/Sigmoid:y:0&while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/add_1AddV2while/lstm_cell_672/mul:z:0while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_2Sigmoid"while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_672/Relu_1Reluwhile/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_2Mul!while/lstm_cell_672/Sigmoid_2:y:0(while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_672/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_672/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_672/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_672/BiasAdd/ReadVariableOp*^while/lstm_cell_672/MatMul/ReadVariableOp,^while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_672_biasadd_readvariableop_resource5while_lstm_cell_672_biasadd_readvariableop_resource_0"n
4while_lstm_cell_672_matmul_1_readvariableop_resource6while_lstm_cell_672_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_672_matmul_readvariableop_resource4while_lstm_cell_672_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_672/BiasAdd/ReadVariableOp*while/lstm_cell_672/BiasAdd/ReadVariableOp2V
)while/lstm_cell_672/MatMul/ReadVariableOp)while/lstm_cell_672/MatMul/ReadVariableOp2Z
+while/lstm_cell_672/MatMul_1/ReadVariableOp+while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
0__inference_sequential_271_layer_call_fn_4080291

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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080090o
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
?C
?

lstm_813_while_body_4080350.
*lstm_813_while_lstm_813_while_loop_counter4
0lstm_813_while_lstm_813_while_maximum_iterations
lstm_813_while_placeholder 
lstm_813_while_placeholder_1 
lstm_813_while_placeholder_2 
lstm_813_while_placeholder_3-
)lstm_813_while_lstm_813_strided_slice_1_0i
elstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0:	?R
?lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?M
>lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
lstm_813_while_identity
lstm_813_while_identity_1
lstm_813_while_identity_2
lstm_813_while_identity_3
lstm_813_while_identity_4
lstm_813_while_identity_5+
'lstm_813_while_lstm_813_strided_slice_1g
clstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensorN
;lstm_813_while_lstm_cell_672_matmul_readvariableop_resource:	?P
=lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource:	d?K
<lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource:	???3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp?2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp?4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp?
@lstm_813/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_813/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensor_0lstm_813_while_placeholderIlstm_813/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp=lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_813/while/lstm_cell_672/MatMulMatMul9lstm_813/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp?lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_813/while/lstm_cell_672/MatMul_1MatMullstm_813_while_placeholder_2<lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_813/while/lstm_cell_672/addAddV2-lstm_813/while/lstm_cell_672/MatMul:product:0/lstm_813/while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp>lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_813/while/lstm_cell_672/BiasAddBiasAdd$lstm_813/while/lstm_cell_672/add:z:0;lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_813/while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_813/while/lstm_cell_672/splitSplit5lstm_813/while/lstm_cell_672/split/split_dim:output:0-lstm_813/while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_813/while/lstm_cell_672/SigmoidSigmoid+lstm_813/while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_813/while/lstm_cell_672/Sigmoid_1Sigmoid+lstm_813/while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_813/while/lstm_cell_672/mulMul*lstm_813/while/lstm_cell_672/Sigmoid_1:y:0lstm_813_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_813/while/lstm_cell_672/ReluRelu+lstm_813/while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_813/while/lstm_cell_672/mul_1Mul(lstm_813/while/lstm_cell_672/Sigmoid:y:0/lstm_813/while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_813/while/lstm_cell_672/add_1AddV2$lstm_813/while/lstm_cell_672/mul:z:0&lstm_813/while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_813/while/lstm_cell_672/Sigmoid_2Sigmoid+lstm_813/while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_813/while/lstm_cell_672/Relu_1Relu&lstm_813/while/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_813/while/lstm_cell_672/mul_2Mul*lstm_813/while/lstm_cell_672/Sigmoid_2:y:01lstm_813/while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_813/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_813_while_placeholder_1lstm_813_while_placeholder&lstm_813/while/lstm_cell_672/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_813/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_813/while/addAddV2lstm_813_while_placeholderlstm_813/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_813/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_813/while/add_1AddV2*lstm_813_while_lstm_813_while_loop_counterlstm_813/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_813/while/IdentityIdentitylstm_813/while/add_1:z:0^lstm_813/while/NoOp*
T0*
_output_shapes
: ?
lstm_813/while/Identity_1Identity0lstm_813_while_lstm_813_while_maximum_iterations^lstm_813/while/NoOp*
T0*
_output_shapes
: t
lstm_813/while/Identity_2Identitylstm_813/while/add:z:0^lstm_813/while/NoOp*
T0*
_output_shapes
: ?
lstm_813/while/Identity_3IdentityClstm_813/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_813/while/NoOp*
T0*
_output_shapes
: ?
lstm_813/while/Identity_4Identity&lstm_813/while/lstm_cell_672/mul_2:z:0^lstm_813/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_813/while/Identity_5Identity&lstm_813/while/lstm_cell_672/add_1:z:0^lstm_813/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_813/while/NoOpNoOp4^lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp3^lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp5^lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_813_while_identity lstm_813/while/Identity:output:0"?
lstm_813_while_identity_1"lstm_813/while/Identity_1:output:0"?
lstm_813_while_identity_2"lstm_813/while/Identity_2:output:0"?
lstm_813_while_identity_3"lstm_813/while/Identity_3:output:0"?
lstm_813_while_identity_4"lstm_813/while/Identity_4:output:0"?
lstm_813_while_identity_5"lstm_813/while/Identity_5:output:0"T
'lstm_813_while_lstm_813_strided_slice_1)lstm_813_while_lstm_813_strided_slice_1_0"~
<lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource>lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0"?
=lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource?lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0"|
;lstm_813_while_lstm_cell_672_matmul_readvariableop_resource=lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0"?
clstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensorelstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp2h
2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp2l
4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_814_layer_call_fn_4081783
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4078668|
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
?

?
0__inference_sequential_271_layer_call_fn_4079526
lstm_813_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_813_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4079501o
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
_user_specified_namelstm_813_input
?
?
*__inference_lstm_814_layer_call_fn_4081805

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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079857s
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
while_cond_4082292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082292___redundant_placeholder05
1while_while_cond_4082292___redundant_placeholder15
1while_while_cond_4082292___redundant_placeholder25
1while_while_cond_4082292___redundant_placeholder3
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
while_body_4079938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_672_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_672_matmul_readvariableop_resource:	?G
4while_lstm_cell_672_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_672_biasadd_readvariableop_resource:	???*while/lstm_cell_672/BiasAdd/ReadVariableOp?)while/lstm_cell_672/MatMul/ReadVariableOp?+while/lstm_cell_672/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_672/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_672/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_672/addAddV2$while/lstm_cell_672/MatMul:product:0&while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_672/BiasAddBiasAddwhile/lstm_cell_672/add:z:02while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_672/splitSplit,while/lstm_cell_672/split/split_dim:output:0$while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_672/SigmoidSigmoid"while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_1Sigmoid"while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mulMul!while/lstm_cell_672/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_672/ReluRelu"while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_1Mulwhile/lstm_cell_672/Sigmoid:y:0&while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/add_1AddV2while/lstm_cell_672/mul:z:0while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_2Sigmoid"while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_672/Relu_1Reluwhile/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_2Mul!while/lstm_cell_672/Sigmoid_2:y:0(while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_672/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_672/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_672/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_672/BiasAdd/ReadVariableOp*^while/lstm_cell_672/MatMul/ReadVariableOp,^while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_672_biasadd_readvariableop_resource5while_lstm_cell_672_biasadd_readvariableop_resource_0"n
4while_lstm_cell_672_matmul_1_readvariableop_resource6while_lstm_cell_672_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_672_matmul_readvariableop_resource4while_lstm_cell_672_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_672/BiasAdd/ReadVariableOp*while/lstm_cell_672/BiasAdd/ReadVariableOp2V
)while/lstm_cell_672/MatMul/ReadVariableOp)while/lstm_cell_672/MatMul/ReadVariableOp2Z
+while/lstm_cell_672/MatMul_1/ReadVariableOp+while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4078757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4078757___redundant_placeholder05
1while_while_cond_4078757___redundant_placeholder15
1while_while_cond_4078757___redundant_placeholder25
1while_while_cond_4078757___redundant_placeholder3
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
?
*__inference_lstm_813_layer_call_fn_4081167
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4078318|
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
?J
?
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082234

inputs?
,lstm_cell_673_matmul_readvariableop_resource:	d?A
.lstm_cell_673_matmul_1_readvariableop_resource:	2?<
-lstm_cell_673_biasadd_readvariableop_resource:	?
identity??$lstm_cell_673/BiasAdd/ReadVariableOp?#lstm_cell_673/MatMul/ReadVariableOp?%lstm_cell_673/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_673/MatMul/ReadVariableOpReadVariableOp,lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_673/MatMulMatMulstrided_slice_2:output:0+lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_673/MatMul_1MatMulzeros:output:0-lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_673/addAddV2lstm_cell_673/MatMul:product:0 lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_673/BiasAddBiasAddlstm_cell_673/add:z:0,lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_673/splitSplit&lstm_cell_673/split/split_dim:output:0lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_673/SigmoidSigmoidlstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_1Sigmoidlstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_673/mulMullstm_cell_673/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_673/ReluRelulstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_1Mullstm_cell_673/Sigmoid:y:0 lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_673/add_1AddV2lstm_cell_673/mul:z:0lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_2Sigmoidlstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_673/Relu_1Relulstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_2Mullstm_cell_673/Sigmoid_2:y:0"lstm_cell_673/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_673_matmul_readvariableop_resource.lstm_cell_673_matmul_1_readvariableop_resource-lstm_cell_673_biasadd_readvariableop_resource*
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
while_body_4082150*
condR
while_cond_4082149*K
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
NoOpNoOp%^lstm_cell_673/BiasAdd/ReadVariableOp$^lstm_cell_673/MatMul/ReadVariableOp&^lstm_cell_673/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_673/BiasAdd/ReadVariableOp$lstm_cell_673/BiasAdd/ReadVariableOp2J
#lstm_cell_673/MatMul/ReadVariableOp#lstm_cell_673/MatMul/ReadVariableOp2N
%lstm_cell_673/MatMul_1/ReadVariableOp%lstm_cell_673/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4081677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_672_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_672_matmul_readvariableop_resource:	?G
4while_lstm_cell_672_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_672_biasadd_readvariableop_resource:	???*while/lstm_cell_672/BiasAdd/ReadVariableOp?)while/lstm_cell_672/MatMul/ReadVariableOp?+while/lstm_cell_672/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_672/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_672/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_672/addAddV2$while/lstm_cell_672/MatMul:product:0&while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_672/BiasAddBiasAddwhile/lstm_cell_672/add:z:02while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_672/splitSplit,while/lstm_cell_672/split/split_dim:output:0$while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_672/SigmoidSigmoid"while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_1Sigmoid"while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mulMul!while/lstm_cell_672/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_672/ReluRelu"while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_1Mulwhile/lstm_cell_672/Sigmoid:y:0&while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/add_1AddV2while/lstm_cell_672/mul:z:0while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_2Sigmoid"while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_672/Relu_1Reluwhile/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_2Mul!while/lstm_cell_672/Sigmoid_2:y:0(while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_672/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_672/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_672/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_672/BiasAdd/ReadVariableOp*^while/lstm_cell_672/MatMul/ReadVariableOp,^while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_672_biasadd_readvariableop_resource5while_lstm_cell_672_biasadd_readvariableop_resource_0"n
4while_lstm_cell_672_matmul_1_readvariableop_resource6while_lstm_cell_672_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_672_matmul_readvariableop_resource4while_lstm_cell_672_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_672/BiasAdd/ReadVariableOp*while/lstm_cell_672/BiasAdd/ReadVariableOp2V
)while/lstm_cell_672/MatMul/ReadVariableOp)while/lstm_cell_672/MatMul/ReadVariableOp2Z
+while/lstm_cell_672/MatMul_1/ReadVariableOp+while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078190

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
?
?
while_cond_4082622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082622___redundant_placeholder05
1while_while_cond_4082622___redundant_placeholder15
1while_while_cond_4082622___redundant_placeholder25
1while_while_cond_4082622___redundant_placeholder3
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
??
?
"__inference__wrapped_model_4077977
lstm_813_inputW
Dsequential_271_lstm_813_lstm_cell_672_matmul_readvariableop_resource:	?Y
Fsequential_271_lstm_813_lstm_cell_672_matmul_1_readvariableop_resource:	d?T
Esequential_271_lstm_813_lstm_cell_672_biasadd_readvariableop_resource:	?W
Dsequential_271_lstm_814_lstm_cell_673_matmul_readvariableop_resource:	d?Y
Fsequential_271_lstm_814_lstm_cell_673_matmul_1_readvariableop_resource:	2?T
Esequential_271_lstm_814_lstm_cell_673_biasadd_readvariableop_resource:	?V
Dsequential_271_lstm_815_lstm_cell_674_matmul_readvariableop_resource:2(X
Fsequential_271_lstm_815_lstm_cell_674_matmul_1_readvariableop_resource:
(S
Esequential_271_lstm_815_lstm_cell_674_biasadd_readvariableop_resource:(I
7sequential_271_dense_271_matmul_readvariableop_resource:
F
8sequential_271_dense_271_biasadd_readvariableop_resource:
identity??/sequential_271/dense_271/BiasAdd/ReadVariableOp?.sequential_271/dense_271/MatMul/ReadVariableOp?<sequential_271/lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp?;sequential_271/lstm_813/lstm_cell_672/MatMul/ReadVariableOp?=sequential_271/lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp?sequential_271/lstm_813/while?<sequential_271/lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp?;sequential_271/lstm_814/lstm_cell_673/MatMul/ReadVariableOp?=sequential_271/lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp?sequential_271/lstm_814/while?<sequential_271/lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp?;sequential_271/lstm_815/lstm_cell_674/MatMul/ReadVariableOp?=sequential_271/lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp?sequential_271/lstm_815/while[
sequential_271/lstm_813/ShapeShapelstm_813_input*
T0*
_output_shapes
:u
+sequential_271/lstm_813/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_271/lstm_813/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_271/lstm_813/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_271/lstm_813/strided_sliceStridedSlice&sequential_271/lstm_813/Shape:output:04sequential_271/lstm_813/strided_slice/stack:output:06sequential_271/lstm_813/strided_slice/stack_1:output:06sequential_271/lstm_813/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_271/lstm_813/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_271/lstm_813/zeros/packedPack.sequential_271/lstm_813/strided_slice:output:0/sequential_271/lstm_813/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_271/lstm_813/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_271/lstm_813/zerosFill-sequential_271/lstm_813/zeros/packed:output:0,sequential_271/lstm_813/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_271/lstm_813/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_271/lstm_813/zeros_1/packedPack.sequential_271/lstm_813/strided_slice:output:01sequential_271/lstm_813/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_271/lstm_813/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_271/lstm_813/zeros_1Fill/sequential_271/lstm_813/zeros_1/packed:output:0.sequential_271/lstm_813/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_271/lstm_813/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_271/lstm_813/transpose	Transposelstm_813_input/sequential_271/lstm_813/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_271/lstm_813/Shape_1Shape%sequential_271/lstm_813/transpose:y:0*
T0*
_output_shapes
:w
-sequential_271/lstm_813/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_813/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_271/lstm_813/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_813/strided_slice_1StridedSlice(sequential_271/lstm_813/Shape_1:output:06sequential_271/lstm_813/strided_slice_1/stack:output:08sequential_271/lstm_813/strided_slice_1/stack_1:output:08sequential_271/lstm_813/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_271/lstm_813/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_271/lstm_813/TensorArrayV2TensorListReserve<sequential_271/lstm_813/TensorArrayV2/element_shape:output:00sequential_271/lstm_813/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_271/lstm_813/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_271/lstm_813/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_271/lstm_813/transpose:y:0Vsequential_271/lstm_813/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_271/lstm_813/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_813/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_271/lstm_813/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_813/strided_slice_2StridedSlice%sequential_271/lstm_813/transpose:y:06sequential_271/lstm_813/strided_slice_2/stack:output:08sequential_271/lstm_813/strided_slice_2/stack_1:output:08sequential_271/lstm_813/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_271/lstm_813/lstm_cell_672/MatMul/ReadVariableOpReadVariableOpDsequential_271_lstm_813_lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_271/lstm_813/lstm_cell_672/MatMulMatMul0sequential_271/lstm_813/strided_slice_2:output:0Csequential_271/lstm_813/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_271/lstm_813/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOpFsequential_271_lstm_813_lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_271/lstm_813/lstm_cell_672/MatMul_1MatMul&sequential_271/lstm_813/zeros:output:0Esequential_271/lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_271/lstm_813/lstm_cell_672/addAddV26sequential_271/lstm_813/lstm_cell_672/MatMul:product:08sequential_271/lstm_813/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_271/lstm_813/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOpEsequential_271_lstm_813_lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_271/lstm_813/lstm_cell_672/BiasAddBiasAdd-sequential_271/lstm_813/lstm_cell_672/add:z:0Dsequential_271/lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_271/lstm_813/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_271/lstm_813/lstm_cell_672/splitSplit>sequential_271/lstm_813/lstm_cell_672/split/split_dim:output:06sequential_271/lstm_813/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_271/lstm_813/lstm_cell_672/SigmoidSigmoid4sequential_271/lstm_813/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_271/lstm_813/lstm_cell_672/Sigmoid_1Sigmoid4sequential_271/lstm_813/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_271/lstm_813/lstm_cell_672/mulMul3sequential_271/lstm_813/lstm_cell_672/Sigmoid_1:y:0(sequential_271/lstm_813/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_271/lstm_813/lstm_cell_672/ReluRelu4sequential_271/lstm_813/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_271/lstm_813/lstm_cell_672/mul_1Mul1sequential_271/lstm_813/lstm_cell_672/Sigmoid:y:08sequential_271/lstm_813/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_271/lstm_813/lstm_cell_672/add_1AddV2-sequential_271/lstm_813/lstm_cell_672/mul:z:0/sequential_271/lstm_813/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_271/lstm_813/lstm_cell_672/Sigmoid_2Sigmoid4sequential_271/lstm_813/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_271/lstm_813/lstm_cell_672/Relu_1Relu/sequential_271/lstm_813/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_271/lstm_813/lstm_cell_672/mul_2Mul3sequential_271/lstm_813/lstm_cell_672/Sigmoid_2:y:0:sequential_271/lstm_813/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_271/lstm_813/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_271/lstm_813/TensorArrayV2_1TensorListReserve>sequential_271/lstm_813/TensorArrayV2_1/element_shape:output:00sequential_271/lstm_813/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_271/lstm_813/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_271/lstm_813/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_271/lstm_813/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_271/lstm_813/whileWhile3sequential_271/lstm_813/while/loop_counter:output:09sequential_271/lstm_813/while/maximum_iterations:output:0%sequential_271/lstm_813/time:output:00sequential_271/lstm_813/TensorArrayV2_1:handle:0&sequential_271/lstm_813/zeros:output:0(sequential_271/lstm_813/zeros_1:output:00sequential_271/lstm_813/strided_slice_1:output:0Osequential_271/lstm_813/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_271_lstm_813_lstm_cell_672_matmul_readvariableop_resourceFsequential_271_lstm_813_lstm_cell_672_matmul_1_readvariableop_resourceEsequential_271_lstm_813_lstm_cell_672_biasadd_readvariableop_resource*
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
*sequential_271_lstm_813_while_body_4077609*6
cond.R,
*sequential_271_lstm_813_while_cond_4077608*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_271/lstm_813/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_271/lstm_813/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_271/lstm_813/while:output:3Qsequential_271/lstm_813/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_271/lstm_813/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_271/lstm_813/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_813/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_813/strided_slice_3StridedSliceCsequential_271/lstm_813/TensorArrayV2Stack/TensorListStack:tensor:06sequential_271/lstm_813/strided_slice_3/stack:output:08sequential_271/lstm_813/strided_slice_3/stack_1:output:08sequential_271/lstm_813/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_271/lstm_813/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_271/lstm_813/transpose_1	TransposeCsequential_271/lstm_813/TensorArrayV2Stack/TensorListStack:tensor:01sequential_271/lstm_813/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_271/lstm_813/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_271/lstm_814/ShapeShape'sequential_271/lstm_813/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_271/lstm_814/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_271/lstm_814/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_271/lstm_814/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_271/lstm_814/strided_sliceStridedSlice&sequential_271/lstm_814/Shape:output:04sequential_271/lstm_814/strided_slice/stack:output:06sequential_271/lstm_814/strided_slice/stack_1:output:06sequential_271/lstm_814/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_271/lstm_814/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_271/lstm_814/zeros/packedPack.sequential_271/lstm_814/strided_slice:output:0/sequential_271/lstm_814/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_271/lstm_814/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_271/lstm_814/zerosFill-sequential_271/lstm_814/zeros/packed:output:0,sequential_271/lstm_814/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_271/lstm_814/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_271/lstm_814/zeros_1/packedPack.sequential_271/lstm_814/strided_slice:output:01sequential_271/lstm_814/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_271/lstm_814/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_271/lstm_814/zeros_1Fill/sequential_271/lstm_814/zeros_1/packed:output:0.sequential_271/lstm_814/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_271/lstm_814/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_271/lstm_814/transpose	Transpose'sequential_271/lstm_813/transpose_1:y:0/sequential_271/lstm_814/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_271/lstm_814/Shape_1Shape%sequential_271/lstm_814/transpose:y:0*
T0*
_output_shapes
:w
-sequential_271/lstm_814/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_814/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_271/lstm_814/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_814/strided_slice_1StridedSlice(sequential_271/lstm_814/Shape_1:output:06sequential_271/lstm_814/strided_slice_1/stack:output:08sequential_271/lstm_814/strided_slice_1/stack_1:output:08sequential_271/lstm_814/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_271/lstm_814/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_271/lstm_814/TensorArrayV2TensorListReserve<sequential_271/lstm_814/TensorArrayV2/element_shape:output:00sequential_271/lstm_814/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_271/lstm_814/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_271/lstm_814/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_271/lstm_814/transpose:y:0Vsequential_271/lstm_814/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_271/lstm_814/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_814/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_271/lstm_814/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_814/strided_slice_2StridedSlice%sequential_271/lstm_814/transpose:y:06sequential_271/lstm_814/strided_slice_2/stack:output:08sequential_271/lstm_814/strided_slice_2/stack_1:output:08sequential_271/lstm_814/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_271/lstm_814/lstm_cell_673/MatMul/ReadVariableOpReadVariableOpDsequential_271_lstm_814_lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_271/lstm_814/lstm_cell_673/MatMulMatMul0sequential_271/lstm_814/strided_slice_2:output:0Csequential_271/lstm_814/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_271/lstm_814/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOpFsequential_271_lstm_814_lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_271/lstm_814/lstm_cell_673/MatMul_1MatMul&sequential_271/lstm_814/zeros:output:0Esequential_271/lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_271/lstm_814/lstm_cell_673/addAddV26sequential_271/lstm_814/lstm_cell_673/MatMul:product:08sequential_271/lstm_814/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_271/lstm_814/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOpEsequential_271_lstm_814_lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_271/lstm_814/lstm_cell_673/BiasAddBiasAdd-sequential_271/lstm_814/lstm_cell_673/add:z:0Dsequential_271/lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_271/lstm_814/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_271/lstm_814/lstm_cell_673/splitSplit>sequential_271/lstm_814/lstm_cell_673/split/split_dim:output:06sequential_271/lstm_814/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_271/lstm_814/lstm_cell_673/SigmoidSigmoid4sequential_271/lstm_814/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_271/lstm_814/lstm_cell_673/Sigmoid_1Sigmoid4sequential_271/lstm_814/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_271/lstm_814/lstm_cell_673/mulMul3sequential_271/lstm_814/lstm_cell_673/Sigmoid_1:y:0(sequential_271/lstm_814/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_271/lstm_814/lstm_cell_673/ReluRelu4sequential_271/lstm_814/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_271/lstm_814/lstm_cell_673/mul_1Mul1sequential_271/lstm_814/lstm_cell_673/Sigmoid:y:08sequential_271/lstm_814/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_271/lstm_814/lstm_cell_673/add_1AddV2-sequential_271/lstm_814/lstm_cell_673/mul:z:0/sequential_271/lstm_814/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_271/lstm_814/lstm_cell_673/Sigmoid_2Sigmoid4sequential_271/lstm_814/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_271/lstm_814/lstm_cell_673/Relu_1Relu/sequential_271/lstm_814/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_271/lstm_814/lstm_cell_673/mul_2Mul3sequential_271/lstm_814/lstm_cell_673/Sigmoid_2:y:0:sequential_271/lstm_814/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_271/lstm_814/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_271/lstm_814/TensorArrayV2_1TensorListReserve>sequential_271/lstm_814/TensorArrayV2_1/element_shape:output:00sequential_271/lstm_814/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_271/lstm_814/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_271/lstm_814/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_271/lstm_814/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_271/lstm_814/whileWhile3sequential_271/lstm_814/while/loop_counter:output:09sequential_271/lstm_814/while/maximum_iterations:output:0%sequential_271/lstm_814/time:output:00sequential_271/lstm_814/TensorArrayV2_1:handle:0&sequential_271/lstm_814/zeros:output:0(sequential_271/lstm_814/zeros_1:output:00sequential_271/lstm_814/strided_slice_1:output:0Osequential_271/lstm_814/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_271_lstm_814_lstm_cell_673_matmul_readvariableop_resourceFsequential_271_lstm_814_lstm_cell_673_matmul_1_readvariableop_resourceEsequential_271_lstm_814_lstm_cell_673_biasadd_readvariableop_resource*
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
*sequential_271_lstm_814_while_body_4077748*6
cond.R,
*sequential_271_lstm_814_while_cond_4077747*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_271/lstm_814/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_271/lstm_814/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_271/lstm_814/while:output:3Qsequential_271/lstm_814/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_271/lstm_814/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_271/lstm_814/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_814/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_814/strided_slice_3StridedSliceCsequential_271/lstm_814/TensorArrayV2Stack/TensorListStack:tensor:06sequential_271/lstm_814/strided_slice_3/stack:output:08sequential_271/lstm_814/strided_slice_3/stack_1:output:08sequential_271/lstm_814/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_271/lstm_814/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_271/lstm_814/transpose_1	TransposeCsequential_271/lstm_814/TensorArrayV2Stack/TensorListStack:tensor:01sequential_271/lstm_814/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_271/lstm_814/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_271/lstm_815/ShapeShape'sequential_271/lstm_814/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_271/lstm_815/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_271/lstm_815/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_271/lstm_815/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_271/lstm_815/strided_sliceStridedSlice&sequential_271/lstm_815/Shape:output:04sequential_271/lstm_815/strided_slice/stack:output:06sequential_271/lstm_815/strided_slice/stack_1:output:06sequential_271/lstm_815/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_271/lstm_815/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_271/lstm_815/zeros/packedPack.sequential_271/lstm_815/strided_slice:output:0/sequential_271/lstm_815/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_271/lstm_815/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_271/lstm_815/zerosFill-sequential_271/lstm_815/zeros/packed:output:0,sequential_271/lstm_815/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_271/lstm_815/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_271/lstm_815/zeros_1/packedPack.sequential_271/lstm_815/strided_slice:output:01sequential_271/lstm_815/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_271/lstm_815/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_271/lstm_815/zeros_1Fill/sequential_271/lstm_815/zeros_1/packed:output:0.sequential_271/lstm_815/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_271/lstm_815/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_271/lstm_815/transpose	Transpose'sequential_271/lstm_814/transpose_1:y:0/sequential_271/lstm_815/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_271/lstm_815/Shape_1Shape%sequential_271/lstm_815/transpose:y:0*
T0*
_output_shapes
:w
-sequential_271/lstm_815/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_815/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_271/lstm_815/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_815/strided_slice_1StridedSlice(sequential_271/lstm_815/Shape_1:output:06sequential_271/lstm_815/strided_slice_1/stack:output:08sequential_271/lstm_815/strided_slice_1/stack_1:output:08sequential_271/lstm_815/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_271/lstm_815/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_271/lstm_815/TensorArrayV2TensorListReserve<sequential_271/lstm_815/TensorArrayV2/element_shape:output:00sequential_271/lstm_815/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_271/lstm_815/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_271/lstm_815/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_271/lstm_815/transpose:y:0Vsequential_271/lstm_815/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_271/lstm_815/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_815/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_271/lstm_815/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_815/strided_slice_2StridedSlice%sequential_271/lstm_815/transpose:y:06sequential_271/lstm_815/strided_slice_2/stack:output:08sequential_271/lstm_815/strided_slice_2/stack_1:output:08sequential_271/lstm_815/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_271/lstm_815/lstm_cell_674/MatMul/ReadVariableOpReadVariableOpDsequential_271_lstm_815_lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_271/lstm_815/lstm_cell_674/MatMulMatMul0sequential_271/lstm_815/strided_slice_2:output:0Csequential_271/lstm_815/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_271/lstm_815/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOpFsequential_271_lstm_815_lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_271/lstm_815/lstm_cell_674/MatMul_1MatMul&sequential_271/lstm_815/zeros:output:0Esequential_271/lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_271/lstm_815/lstm_cell_674/addAddV26sequential_271/lstm_815/lstm_cell_674/MatMul:product:08sequential_271/lstm_815/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_271/lstm_815/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOpEsequential_271_lstm_815_lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_271/lstm_815/lstm_cell_674/BiasAddBiasAdd-sequential_271/lstm_815/lstm_cell_674/add:z:0Dsequential_271/lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_271/lstm_815/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_271/lstm_815/lstm_cell_674/splitSplit>sequential_271/lstm_815/lstm_cell_674/split/split_dim:output:06sequential_271/lstm_815/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_271/lstm_815/lstm_cell_674/SigmoidSigmoid4sequential_271/lstm_815/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_271/lstm_815/lstm_cell_674/Sigmoid_1Sigmoid4sequential_271/lstm_815/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_271/lstm_815/lstm_cell_674/mulMul3sequential_271/lstm_815/lstm_cell_674/Sigmoid_1:y:0(sequential_271/lstm_815/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_271/lstm_815/lstm_cell_674/ReluRelu4sequential_271/lstm_815/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_271/lstm_815/lstm_cell_674/mul_1Mul1sequential_271/lstm_815/lstm_cell_674/Sigmoid:y:08sequential_271/lstm_815/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_271/lstm_815/lstm_cell_674/add_1AddV2-sequential_271/lstm_815/lstm_cell_674/mul:z:0/sequential_271/lstm_815/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_271/lstm_815/lstm_cell_674/Sigmoid_2Sigmoid4sequential_271/lstm_815/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_271/lstm_815/lstm_cell_674/Relu_1Relu/sequential_271/lstm_815/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_271/lstm_815/lstm_cell_674/mul_2Mul3sequential_271/lstm_815/lstm_cell_674/Sigmoid_2:y:0:sequential_271/lstm_815/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_271/lstm_815/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_271/lstm_815/TensorArrayV2_1TensorListReserve>sequential_271/lstm_815/TensorArrayV2_1/element_shape:output:00sequential_271/lstm_815/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_271/lstm_815/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_271/lstm_815/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_271/lstm_815/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_271/lstm_815/whileWhile3sequential_271/lstm_815/while/loop_counter:output:09sequential_271/lstm_815/while/maximum_iterations:output:0%sequential_271/lstm_815/time:output:00sequential_271/lstm_815/TensorArrayV2_1:handle:0&sequential_271/lstm_815/zeros:output:0(sequential_271/lstm_815/zeros_1:output:00sequential_271/lstm_815/strided_slice_1:output:0Osequential_271/lstm_815/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_271_lstm_815_lstm_cell_674_matmul_readvariableop_resourceFsequential_271_lstm_815_lstm_cell_674_matmul_1_readvariableop_resourceEsequential_271_lstm_815_lstm_cell_674_biasadd_readvariableop_resource*
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
*sequential_271_lstm_815_while_body_4077887*6
cond.R,
*sequential_271_lstm_815_while_cond_4077886*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_271/lstm_815/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_271/lstm_815/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_271/lstm_815/while:output:3Qsequential_271/lstm_815/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_271/lstm_815/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_271/lstm_815/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_271/lstm_815/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_271/lstm_815/strided_slice_3StridedSliceCsequential_271/lstm_815/TensorArrayV2Stack/TensorListStack:tensor:06sequential_271/lstm_815/strided_slice_3/stack:output:08sequential_271/lstm_815/strided_slice_3/stack_1:output:08sequential_271/lstm_815/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_271/lstm_815/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_271/lstm_815/transpose_1	TransposeCsequential_271/lstm_815/TensorArrayV2Stack/TensorListStack:tensor:01sequential_271/lstm_815/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_271/lstm_815/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_271/dense_271/MatMul/ReadVariableOpReadVariableOp7sequential_271_dense_271_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_271/dense_271/MatMulMatMul0sequential_271/lstm_815/strided_slice_3:output:06sequential_271/dense_271/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_271/dense_271/BiasAdd/ReadVariableOpReadVariableOp8sequential_271_dense_271_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_271/dense_271/BiasAddBiasAdd)sequential_271/dense_271/MatMul:product:07sequential_271/dense_271/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_271/dense_271/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_271/dense_271/BiasAdd/ReadVariableOp/^sequential_271/dense_271/MatMul/ReadVariableOp=^sequential_271/lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp<^sequential_271/lstm_813/lstm_cell_672/MatMul/ReadVariableOp>^sequential_271/lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp^sequential_271/lstm_813/while=^sequential_271/lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp<^sequential_271/lstm_814/lstm_cell_673/MatMul/ReadVariableOp>^sequential_271/lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp^sequential_271/lstm_814/while=^sequential_271/lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp<^sequential_271/lstm_815/lstm_cell_674/MatMul/ReadVariableOp>^sequential_271/lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp^sequential_271/lstm_815/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_271/dense_271/BiasAdd/ReadVariableOp/sequential_271/dense_271/BiasAdd/ReadVariableOp2`
.sequential_271/dense_271/MatMul/ReadVariableOp.sequential_271/dense_271/MatMul/ReadVariableOp2|
<sequential_271/lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp<sequential_271/lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp2z
;sequential_271/lstm_813/lstm_cell_672/MatMul/ReadVariableOp;sequential_271/lstm_813/lstm_cell_672/MatMul/ReadVariableOp2~
=sequential_271/lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp=sequential_271/lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp2>
sequential_271/lstm_813/whilesequential_271/lstm_813/while2|
<sequential_271/lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp<sequential_271/lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp2z
;sequential_271/lstm_814/lstm_cell_673/MatMul/ReadVariableOp;sequential_271/lstm_814/lstm_cell_673/MatMul/ReadVariableOp2~
=sequential_271/lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp=sequential_271/lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp2>
sequential_271/lstm_814/whilesequential_271/lstm_814/while2|
<sequential_271/lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp<sequential_271/lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp2z
;sequential_271/lstm_815/lstm_cell_674/MatMul/ReadVariableOp;sequential_271/lstm_815/lstm_cell_674/MatMul/ReadVariableOp2~
=sequential_271/lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp=sequential_271/lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp2>
sequential_271/lstm_815/whilesequential_271/lstm_815/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_813_input
?
?
while_cond_4079391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4079391___redundant_placeholder05
1while_while_cond_4079391___redundant_placeholder15
1while_while_cond_4079391___redundant_placeholder25
1while_while_cond_4079391___redundant_placeholder3
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
?T
?
*sequential_271_lstm_813_while_body_4077609L
Hsequential_271_lstm_813_while_sequential_271_lstm_813_while_loop_counterR
Nsequential_271_lstm_813_while_sequential_271_lstm_813_while_maximum_iterations-
)sequential_271_lstm_813_while_placeholder/
+sequential_271_lstm_813_while_placeholder_1/
+sequential_271_lstm_813_while_placeholder_2/
+sequential_271_lstm_813_while_placeholder_3K
Gsequential_271_lstm_813_while_sequential_271_lstm_813_strided_slice_1_0?
?sequential_271_lstm_813_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_813_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_271_lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0:	?a
Nsequential_271_lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?\
Msequential_271_lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0:	?*
&sequential_271_lstm_813_while_identity,
(sequential_271_lstm_813_while_identity_1,
(sequential_271_lstm_813_while_identity_2,
(sequential_271_lstm_813_while_identity_3,
(sequential_271_lstm_813_while_identity_4,
(sequential_271_lstm_813_while_identity_5I
Esequential_271_lstm_813_while_sequential_271_lstm_813_strided_slice_1?
?sequential_271_lstm_813_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_813_tensorarrayunstack_tensorlistfromtensor]
Jsequential_271_lstm_813_while_lstm_cell_672_matmul_readvariableop_resource:	?_
Lsequential_271_lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource:	d?Z
Ksequential_271_lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource:	???Bsequential_271/lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp?Asequential_271/lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp?Csequential_271/lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp?
Osequential_271/lstm_813/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_271/lstm_813/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_271_lstm_813_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_813_tensorarrayunstack_tensorlistfromtensor_0)sequential_271_lstm_813_while_placeholderXsequential_271/lstm_813/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_271/lstm_813/while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOpLsequential_271_lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_271/lstm_813/while/lstm_cell_672/MatMulMatMulHsequential_271/lstm_813/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_271/lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_271/lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOpNsequential_271_lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_271/lstm_813/while/lstm_cell_672/MatMul_1MatMul+sequential_271_lstm_813_while_placeholder_2Ksequential_271/lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_271/lstm_813/while/lstm_cell_672/addAddV2<sequential_271/lstm_813/while/lstm_cell_672/MatMul:product:0>sequential_271/lstm_813/while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_271/lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOpMsequential_271_lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_271/lstm_813/while/lstm_cell_672/BiasAddBiasAdd3sequential_271/lstm_813/while/lstm_cell_672/add:z:0Jsequential_271/lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_271/lstm_813/while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_271/lstm_813/while/lstm_cell_672/splitSplitDsequential_271/lstm_813/while/lstm_cell_672/split/split_dim:output:0<sequential_271/lstm_813/while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_271/lstm_813/while/lstm_cell_672/SigmoidSigmoid:sequential_271/lstm_813/while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_271/lstm_813/while/lstm_cell_672/Sigmoid_1Sigmoid:sequential_271/lstm_813/while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_271/lstm_813/while/lstm_cell_672/mulMul9sequential_271/lstm_813/while/lstm_cell_672/Sigmoid_1:y:0+sequential_271_lstm_813_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_271/lstm_813/while/lstm_cell_672/ReluRelu:sequential_271/lstm_813/while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_271/lstm_813/while/lstm_cell_672/mul_1Mul7sequential_271/lstm_813/while/lstm_cell_672/Sigmoid:y:0>sequential_271/lstm_813/while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_271/lstm_813/while/lstm_cell_672/add_1AddV23sequential_271/lstm_813/while/lstm_cell_672/mul:z:05sequential_271/lstm_813/while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_271/lstm_813/while/lstm_cell_672/Sigmoid_2Sigmoid:sequential_271/lstm_813/while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_271/lstm_813/while/lstm_cell_672/Relu_1Relu5sequential_271/lstm_813/while/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_271/lstm_813/while/lstm_cell_672/mul_2Mul9sequential_271/lstm_813/while/lstm_cell_672/Sigmoid_2:y:0@sequential_271/lstm_813/while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_271/lstm_813/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_271_lstm_813_while_placeholder_1)sequential_271_lstm_813_while_placeholder5sequential_271/lstm_813/while/lstm_cell_672/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_271/lstm_813/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_271/lstm_813/while/addAddV2)sequential_271_lstm_813_while_placeholder,sequential_271/lstm_813/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_271/lstm_813/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_271/lstm_813/while/add_1AddV2Hsequential_271_lstm_813_while_sequential_271_lstm_813_while_loop_counter.sequential_271/lstm_813/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_271/lstm_813/while/IdentityIdentity'sequential_271/lstm_813/while/add_1:z:0#^sequential_271/lstm_813/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_813/while/Identity_1IdentityNsequential_271_lstm_813_while_sequential_271_lstm_813_while_maximum_iterations#^sequential_271/lstm_813/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_813/while/Identity_2Identity%sequential_271/lstm_813/while/add:z:0#^sequential_271/lstm_813/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_813/while/Identity_3IdentityRsequential_271/lstm_813/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_271/lstm_813/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_813/while/Identity_4Identity5sequential_271/lstm_813/while/lstm_cell_672/mul_2:z:0#^sequential_271/lstm_813/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_271/lstm_813/while/Identity_5Identity5sequential_271/lstm_813/while/lstm_cell_672/add_1:z:0#^sequential_271/lstm_813/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_271/lstm_813/while/NoOpNoOpC^sequential_271/lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOpB^sequential_271/lstm_813/while/lstm_cell_672/MatMul/ReadVariableOpD^sequential_271/lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_271_lstm_813_while_identity/sequential_271/lstm_813/while/Identity:output:0"]
(sequential_271_lstm_813_while_identity_11sequential_271/lstm_813/while/Identity_1:output:0"]
(sequential_271_lstm_813_while_identity_21sequential_271/lstm_813/while/Identity_2:output:0"]
(sequential_271_lstm_813_while_identity_31sequential_271/lstm_813/while/Identity_3:output:0"]
(sequential_271_lstm_813_while_identity_41sequential_271/lstm_813/while/Identity_4:output:0"]
(sequential_271_lstm_813_while_identity_51sequential_271/lstm_813/while/Identity_5:output:0"?
Ksequential_271_lstm_813_while_lstm_cell_672_biasadd_readvariableop_resourceMsequential_271_lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0"?
Lsequential_271_lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resourceNsequential_271_lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0"?
Jsequential_271_lstm_813_while_lstm_cell_672_matmul_readvariableop_resourceLsequential_271_lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0"?
Esequential_271_lstm_813_while_sequential_271_lstm_813_strided_slice_1Gsequential_271_lstm_813_while_sequential_271_lstm_813_strided_slice_1_0"?
?sequential_271_lstm_813_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_813_tensorarrayunstack_tensorlistfromtensor?sequential_271_lstm_813_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_813_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_271/lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOpBsequential_271/lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp2?
Asequential_271/lstm_813/while/lstm_cell_672/MatMul/ReadVariableOpAsequential_271/lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp2?
Csequential_271/lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOpCsequential_271/lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4079092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_672_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_672_matmul_readvariableop_resource:	?G
4while_lstm_cell_672_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_672_biasadd_readvariableop_resource:	???*while/lstm_cell_672/BiasAdd/ReadVariableOp?)while/lstm_cell_672/MatMul/ReadVariableOp?+while/lstm_cell_672/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_672/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_672/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_672/addAddV2$while/lstm_cell_672/MatMul:product:0&while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_672/BiasAddBiasAddwhile/lstm_cell_672/add:z:02while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_672/splitSplit,while/lstm_cell_672/split/split_dim:output:0$while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_672/SigmoidSigmoid"while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_1Sigmoid"while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mulMul!while/lstm_cell_672/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_672/ReluRelu"while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_1Mulwhile/lstm_cell_672/Sigmoid:y:0&while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/add_1AddV2while/lstm_cell_672/mul:z:0while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_2Sigmoid"while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_672/Relu_1Reluwhile/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_2Mul!while/lstm_cell_672/Sigmoid_2:y:0(while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_672/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_672/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_672/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_672/BiasAdd/ReadVariableOp*^while/lstm_cell_672/MatMul/ReadVariableOp,^while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_672_biasadd_readvariableop_resource5while_lstm_cell_672_biasadd_readvariableop_resource_0"n
4while_lstm_cell_672_matmul_1_readvariableop_resource6while_lstm_cell_672_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_672_matmul_readvariableop_resource4while_lstm_cell_672_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_672/BiasAdd/ReadVariableOp*while/lstm_cell_672/BiasAdd/ReadVariableOp2V
)while/lstm_cell_672/MatMul/ReadVariableOp)while/lstm_cell_672/MatMul/ReadVariableOp2Z
+while/lstm_cell_672/MatMul_1/ReadVariableOp+while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_815_layer_call_fn_4082410

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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079476o
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
?#
?
while_body_4078249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_672_4078273_0:	?0
while_lstm_cell_672_4078275_0:	d?,
while_lstm_cell_672_4078277_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_672_4078273:	?.
while_lstm_cell_672_4078275:	d?*
while_lstm_cell_672_4078277:	???+while/lstm_cell_672/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_672/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_672_4078273_0while_lstm_cell_672_4078275_0while_lstm_cell_672_4078277_0*
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078190?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_672/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_672/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_672/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_672/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_672_4078273while_lstm_cell_672_4078273_0"<
while_lstm_cell_672_4078275while_lstm_cell_672_4078275_0"<
while_lstm_cell_672_4078277while_lstm_cell_672_4078277_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_672/StatefulPartitionedCall+while/lstm_cell_672/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4083110

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
?J
?
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082850

inputs>
,lstm_cell_674_matmul_readvariableop_resource:2(@
.lstm_cell_674_matmul_1_readvariableop_resource:
(;
-lstm_cell_674_biasadd_readvariableop_resource:(
identity??$lstm_cell_674/BiasAdd/ReadVariableOp?#lstm_cell_674/MatMul/ReadVariableOp?%lstm_cell_674/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_674/MatMul/ReadVariableOpReadVariableOp,lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_674/MatMulMatMulstrided_slice_2:output:0+lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_674/MatMul_1MatMulzeros:output:0-lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_674/addAddV2lstm_cell_674/MatMul:product:0 lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_674/BiasAddBiasAddlstm_cell_674/add:z:0,lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_674/splitSplit&lstm_cell_674/split/split_dim:output:0lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_674/SigmoidSigmoidlstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_1Sigmoidlstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_674/mulMullstm_cell_674/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_674/ReluRelulstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_1Mullstm_cell_674/Sigmoid:y:0 lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_674/add_1AddV2lstm_cell_674/mul:z:0lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_2Sigmoidlstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_674/Relu_1Relulstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_2Mullstm_cell_674/Sigmoid_2:y:0"lstm_cell_674/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_674_matmul_readvariableop_resource.lstm_cell_674_matmul_1_readvariableop_resource-lstm_cell_674_biasadd_readvariableop_resource*
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
while_body_4082766*
condR
while_cond_4082765*K
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
NoOpNoOp%^lstm_cell_674/BiasAdd/ReadVariableOp$^lstm_cell_674/MatMul/ReadVariableOp&^lstm_cell_674/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_674/BiasAdd/ReadVariableOp$lstm_cell_674/BiasAdd/ReadVariableOp2J
#lstm_cell_674/MatMul/ReadVariableOp#lstm_cell_674/MatMul/ReadVariableOp2N
%lstm_cell_674/MatMul_1/ReadVariableOp%lstm_cell_674/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_813_layer_call_and_return_conditional_losses_4080022

inputs?
,lstm_cell_672_matmul_readvariableop_resource:	?A
.lstm_cell_672_matmul_1_readvariableop_resource:	d?<
-lstm_cell_672_biasadd_readvariableop_resource:	?
identity??$lstm_cell_672/BiasAdd/ReadVariableOp?#lstm_cell_672/MatMul/ReadVariableOp?%lstm_cell_672/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_672/MatMul/ReadVariableOpReadVariableOp,lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_672/MatMulMatMulstrided_slice_2:output:0+lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_672/MatMul_1MatMulzeros:output:0-lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_672/addAddV2lstm_cell_672/MatMul:product:0 lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_672/BiasAddBiasAddlstm_cell_672/add:z:0,lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_672/splitSplit&lstm_cell_672/split/split_dim:output:0lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_672/SigmoidSigmoidlstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_1Sigmoidlstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_672/mulMullstm_cell_672/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_672/ReluRelulstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_1Mullstm_cell_672/Sigmoid:y:0 lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_672/add_1AddV2lstm_cell_672/mul:z:0lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_2Sigmoidlstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_672/Relu_1Relulstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_2Mullstm_cell_672/Sigmoid_2:y:0"lstm_cell_672/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_672_matmul_readvariableop_resource.lstm_cell_672_matmul_1_readvariableop_resource-lstm_cell_672_biasadd_readvariableop_resource*
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
while_body_4079938*
condR
while_cond_4079937*K
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
NoOpNoOp%^lstm_cell_672/BiasAdd/ReadVariableOp$^lstm_cell_672/MatMul/ReadVariableOp&^lstm_cell_672/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_672/BiasAdd/ReadVariableOp$lstm_cell_672/BiasAdd/ReadVariableOp2J
#lstm_cell_672/MatMul/ReadVariableOp#lstm_cell_672/MatMul/ReadVariableOp2N
%lstm_cell_672/MatMul_1/ReadVariableOp%lstm_cell_672/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_815_layer_call_and_return_conditional_losses_4078827

inputs'
lstm_cell_674_4078745:2('
lstm_cell_674_4078747:
(#
lstm_cell_674_4078749:(
identity??%lstm_cell_674/StatefulPartitionedCall?while;
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
%lstm_cell_674/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_674_4078745lstm_cell_674_4078747lstm_cell_674_4078749*
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078744n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_674_4078745lstm_cell_674_4078747lstm_cell_674_4078749*
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
while_body_4078758*
condR
while_cond_4078757*K
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
NoOpNoOp&^lstm_cell_674/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_674/StatefulPartitionedCall%lstm_cell_674/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080172
lstm_813_input#
lstm_813_4080145:	?#
lstm_813_4080147:	d?
lstm_813_4080149:	?#
lstm_814_4080152:	d?#
lstm_814_4080154:	2?
lstm_814_4080156:	?"
lstm_815_4080159:2("
lstm_815_4080161:
(
lstm_815_4080163:(#
dense_271_4080166:

dense_271_4080168:
identity??!dense_271/StatefulPartitionedCall? lstm_813/StatefulPartitionedCall? lstm_814/StatefulPartitionedCall? lstm_815/StatefulPartitionedCall?
 lstm_813/StatefulPartitionedCallStatefulPartitionedCalllstm_813_inputlstm_813_4080145lstm_813_4080147lstm_813_4080149*
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4079176?
 lstm_814/StatefulPartitionedCallStatefulPartitionedCall)lstm_813/StatefulPartitionedCall:output:0lstm_814_4080152lstm_814_4080154lstm_814_4080156*
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079326?
 lstm_815/StatefulPartitionedCallStatefulPartitionedCall)lstm_814/StatefulPartitionedCall:output:0lstm_815_4080159lstm_815_4080161lstm_815_4080163*
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079476?
!dense_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_815/StatefulPartitionedCall:output:0dense_271_4080166dense_271_4080168*
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
F__inference_dense_271_layer_call_and_return_conditional_losses_4079494y
IdentityIdentity*dense_271/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_271/StatefulPartitionedCall!^lstm_813/StatefulPartitionedCall!^lstm_814/StatefulPartitionedCall!^lstm_815/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_271/StatefulPartitionedCall!dense_271/StatefulPartitionedCall2D
 lstm_813/StatefulPartitionedCall lstm_813/StatefulPartitionedCall2D
 lstm_814/StatefulPartitionedCall lstm_814/StatefulPartitionedCall2D
 lstm_815/StatefulPartitionedCall lstm_815/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_813_input
?
?
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078044

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
?C
?

lstm_815_while_body_4081055.
*lstm_815_while_lstm_815_while_loop_counter4
0lstm_815_while_lstm_815_while_maximum_iterations
lstm_815_while_placeholder 
lstm_815_while_placeholder_1 
lstm_815_while_placeholder_2 
lstm_815_while_placeholder_3-
)lstm_815_while_lstm_815_strided_slice_1_0i
elstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0:2(Q
?lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(L
>lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0:(
lstm_815_while_identity
lstm_815_while_identity_1
lstm_815_while_identity_2
lstm_815_while_identity_3
lstm_815_while_identity_4
lstm_815_while_identity_5+
'lstm_815_while_lstm_815_strided_slice_1g
clstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensorM
;lstm_815_while_lstm_cell_674_matmul_readvariableop_resource:2(O
=lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource:
(J
<lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource:(??3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp?2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp?4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp?
@lstm_815/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_815/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensor_0lstm_815_while_placeholderIlstm_815/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp=lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_815/while/lstm_cell_674/MatMulMatMul9lstm_815/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp?lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_815/while/lstm_cell_674/MatMul_1MatMullstm_815_while_placeholder_2<lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_815/while/lstm_cell_674/addAddV2-lstm_815/while/lstm_cell_674/MatMul:product:0/lstm_815/while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp>lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_815/while/lstm_cell_674/BiasAddBiasAdd$lstm_815/while/lstm_cell_674/add:z:0;lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_815/while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_815/while/lstm_cell_674/splitSplit5lstm_815/while/lstm_cell_674/split/split_dim:output:0-lstm_815/while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_815/while/lstm_cell_674/SigmoidSigmoid+lstm_815/while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_815/while/lstm_cell_674/Sigmoid_1Sigmoid+lstm_815/while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_815/while/lstm_cell_674/mulMul*lstm_815/while/lstm_cell_674/Sigmoid_1:y:0lstm_815_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_815/while/lstm_cell_674/ReluRelu+lstm_815/while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_815/while/lstm_cell_674/mul_1Mul(lstm_815/while/lstm_cell_674/Sigmoid:y:0/lstm_815/while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_815/while/lstm_cell_674/add_1AddV2$lstm_815/while/lstm_cell_674/mul:z:0&lstm_815/while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_815/while/lstm_cell_674/Sigmoid_2Sigmoid+lstm_815/while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_815/while/lstm_cell_674/Relu_1Relu&lstm_815/while/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_815/while/lstm_cell_674/mul_2Mul*lstm_815/while/lstm_cell_674/Sigmoid_2:y:01lstm_815/while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_815/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_815_while_placeholder_1lstm_815_while_placeholder&lstm_815/while/lstm_cell_674/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_815/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_815/while/addAddV2lstm_815_while_placeholderlstm_815/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_815/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_815/while/add_1AddV2*lstm_815_while_lstm_815_while_loop_counterlstm_815/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_815/while/IdentityIdentitylstm_815/while/add_1:z:0^lstm_815/while/NoOp*
T0*
_output_shapes
: ?
lstm_815/while/Identity_1Identity0lstm_815_while_lstm_815_while_maximum_iterations^lstm_815/while/NoOp*
T0*
_output_shapes
: t
lstm_815/while/Identity_2Identitylstm_815/while/add:z:0^lstm_815/while/NoOp*
T0*
_output_shapes
: ?
lstm_815/while/Identity_3IdentityClstm_815/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_815/while/NoOp*
T0*
_output_shapes
: ?
lstm_815/while/Identity_4Identity&lstm_815/while/lstm_cell_674/mul_2:z:0^lstm_815/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_815/while/Identity_5Identity&lstm_815/while/lstm_cell_674/add_1:z:0^lstm_815/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_815/while/NoOpNoOp4^lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp3^lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp5^lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_815_while_identity lstm_815/while/Identity:output:0"?
lstm_815_while_identity_1"lstm_815/while/Identity_1:output:0"?
lstm_815_while_identity_2"lstm_815/while/Identity_2:output:0"?
lstm_815_while_identity_3"lstm_815/while/Identity_3:output:0"?
lstm_815_while_identity_4"lstm_815/while/Identity_4:output:0"?
lstm_815_while_identity_5"lstm_815/while/Identity_5:output:0"T
'lstm_815_while_lstm_815_strided_slice_1)lstm_815_while_lstm_815_strided_slice_1_0"~
<lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource>lstm_815_while_lstm_cell_674_biasadd_readvariableop_resource_0"?
=lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource?lstm_815_while_lstm_cell_674_matmul_1_readvariableop_resource_0"|
;lstm_815_while_lstm_cell_674_matmul_readvariableop_resource=lstm_815_while_lstm_cell_674_matmul_readvariableop_resource_0"?
clstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensorelstm_815_while_tensorarrayv2read_tensorlistgetitem_lstm_815_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp3lstm_815/while/lstm_cell_674/BiasAdd/ReadVariableOp2h
2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp2lstm_815/while/lstm_cell_674/MatMul/ReadVariableOp2l
4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp4lstm_815/while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4083306

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
?K
?
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082564
inputs_0>
,lstm_cell_674_matmul_readvariableop_resource:2(@
.lstm_cell_674_matmul_1_readvariableop_resource:
(;
-lstm_cell_674_biasadd_readvariableop_resource:(
identity??$lstm_cell_674/BiasAdd/ReadVariableOp?#lstm_cell_674/MatMul/ReadVariableOp?%lstm_cell_674/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_674/MatMul/ReadVariableOpReadVariableOp,lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_674/MatMulMatMulstrided_slice_2:output:0+lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_674/MatMul_1MatMulzeros:output:0-lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_674/addAddV2lstm_cell_674/MatMul:product:0 lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_674/BiasAddBiasAddlstm_cell_674/add:z:0,lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_674/splitSplit&lstm_cell_674/split/split_dim:output:0lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_674/SigmoidSigmoidlstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_1Sigmoidlstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_674/mulMullstm_cell_674/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_674/ReluRelulstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_1Mullstm_cell_674/Sigmoid:y:0 lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_674/add_1AddV2lstm_cell_674/mul:z:0lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_2Sigmoidlstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_674/Relu_1Relulstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_2Mullstm_cell_674/Sigmoid_2:y:0"lstm_cell_674/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_674_matmul_readvariableop_resource.lstm_cell_674_matmul_1_readvariableop_resource-lstm_cell_674_biasadd_readvariableop_resource*
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
while_body_4082480*
condR
while_cond_4082479*K
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
NoOpNoOp%^lstm_cell_674/BiasAdd/ReadVariableOp$^lstm_cell_674/MatMul/ReadVariableOp&^lstm_cell_674/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_674/BiasAdd/ReadVariableOp$lstm_cell_674/BiasAdd/ReadVariableOp2J
#lstm_cell_674/MatMul/ReadVariableOp#lstm_cell_674/MatMul/ReadVariableOp2N
%lstm_cell_674/MatMul_1/ReadVariableOp%lstm_cell_674/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082091
inputs_0?
,lstm_cell_673_matmul_readvariableop_resource:	d?A
.lstm_cell_673_matmul_1_readvariableop_resource:	2?<
-lstm_cell_673_biasadd_readvariableop_resource:	?
identity??$lstm_cell_673/BiasAdd/ReadVariableOp?#lstm_cell_673/MatMul/ReadVariableOp?%lstm_cell_673/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_673/MatMul/ReadVariableOpReadVariableOp,lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_673/MatMulMatMulstrided_slice_2:output:0+lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_673/MatMul_1MatMulzeros:output:0-lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_673/addAddV2lstm_cell_673/MatMul:product:0 lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_673/BiasAddBiasAddlstm_cell_673/add:z:0,lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_673/splitSplit&lstm_cell_673/split/split_dim:output:0lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_673/SigmoidSigmoidlstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_1Sigmoidlstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_673/mulMullstm_cell_673/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_673/ReluRelulstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_1Mullstm_cell_673/Sigmoid:y:0 lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_673/add_1AddV2lstm_cell_673/mul:z:0lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_2Sigmoidlstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_673/Relu_1Relulstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_2Mullstm_cell_673/Sigmoid_2:y:0"lstm_cell_673/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_673_matmul_readvariableop_resource.lstm_cell_673_matmul_1_readvariableop_resource-lstm_cell_673_biasadd_readvariableop_resource*
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
while_body_4082007*
condR
while_cond_4082006*K
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
NoOpNoOp%^lstm_cell_673/BiasAdd/ReadVariableOp$^lstm_cell_673/MatMul/ReadVariableOp&^lstm_cell_673/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_673/BiasAdd/ReadVariableOp$lstm_cell_673/BiasAdd/ReadVariableOp2J
#lstm_cell_673/MatMul/ReadVariableOp#lstm_cell_673/MatMul/ReadVariableOp2N
%lstm_cell_673/MatMul_1/ReadVariableOp%lstm_cell_673/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4079772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4079772___redundant_placeholder05
1while_while_cond_4079772___redundant_placeholder15
1while_while_cond_4079772___redundant_placeholder25
1while_while_cond_4079772___redundant_placeholder3
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
while_body_4079773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_673_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_673_matmul_readvariableop_resource:	d?G
4while_lstm_cell_673_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_673_biasadd_readvariableop_resource:	???*while/lstm_cell_673/BiasAdd/ReadVariableOp?)while/lstm_cell_673/MatMul/ReadVariableOp?+while/lstm_cell_673/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_673/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_673/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_673/addAddV2$while/lstm_cell_673/MatMul:product:0&while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_673/BiasAddBiasAddwhile/lstm_cell_673/add:z:02while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_673/splitSplit,while/lstm_cell_673/split/split_dim:output:0$while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_673/SigmoidSigmoid"while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_1Sigmoid"while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mulMul!while/lstm_cell_673/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_673/ReluRelu"while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_1Mulwhile/lstm_cell_673/Sigmoid:y:0&while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/add_1AddV2while/lstm_cell_673/mul:z:0while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_2Sigmoid"while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_673/Relu_1Reluwhile/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_2Mul!while/lstm_cell_673/Sigmoid_2:y:0(while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_673/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_673/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_673/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_673/BiasAdd/ReadVariableOp*^while/lstm_cell_673/MatMul/ReadVariableOp,^while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_673_biasadd_readvariableop_resource5while_lstm_cell_673_biasadd_readvariableop_resource_0"n
4while_lstm_cell_673_matmul_1_readvariableop_resource6while_lstm_cell_673_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_673_matmul_readvariableop_resource4while_lstm_cell_673_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_673/BiasAdd/ReadVariableOp*while/lstm_cell_673/BiasAdd/ReadVariableOp2V
)while/lstm_cell_673/MatMul/ReadVariableOp)while/lstm_cell_673/MatMul/ReadVariableOp2Z
+while/lstm_cell_673/MatMul_1/ReadVariableOp+while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082707
inputs_0>
,lstm_cell_674_matmul_readvariableop_resource:2(@
.lstm_cell_674_matmul_1_readvariableop_resource:
(;
-lstm_cell_674_biasadd_readvariableop_resource:(
identity??$lstm_cell_674/BiasAdd/ReadVariableOp?#lstm_cell_674/MatMul/ReadVariableOp?%lstm_cell_674/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_674/MatMul/ReadVariableOpReadVariableOp,lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_674/MatMulMatMulstrided_slice_2:output:0+lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_674/MatMul_1MatMulzeros:output:0-lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_674/addAddV2lstm_cell_674/MatMul:product:0 lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_674/BiasAddBiasAddlstm_cell_674/add:z:0,lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_674/splitSplit&lstm_cell_674/split/split_dim:output:0lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_674/SigmoidSigmoidlstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_1Sigmoidlstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_674/mulMullstm_cell_674/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_674/ReluRelulstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_1Mullstm_cell_674/Sigmoid:y:0 lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_674/add_1AddV2lstm_cell_674/mul:z:0lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_2Sigmoidlstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_674/Relu_1Relulstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_2Mullstm_cell_674/Sigmoid_2:y:0"lstm_cell_674/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_674_matmul_readvariableop_resource.lstm_cell_674_matmul_1_readvariableop_resource-lstm_cell_674_biasadd_readvariableop_resource*
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
while_body_4082623*
condR
while_cond_4082622*K
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
NoOpNoOp%^lstm_cell_674/BiasAdd/ReadVariableOp$^lstm_cell_674/MatMul/ReadVariableOp&^lstm_cell_674/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_674/BiasAdd/ReadVariableOp$lstm_cell_674/BiasAdd/ReadVariableOp2J
#lstm_cell_674/MatMul/ReadVariableOp#lstm_cell_674/MatMul/ReadVariableOp2N
%lstm_cell_674/MatMul_1/ReadVariableOp%lstm_cell_674/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4079607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4079607___redundant_placeholder05
1while_while_cond_4079607___redundant_placeholder15
1while_while_cond_4079607___redundant_placeholder25
1while_while_cond_4079607___redundant_placeholder3
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
while_body_4082623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_674_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_674_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_674_matmul_readvariableop_resource:2(F
4while_lstm_cell_674_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_674_biasadd_readvariableop_resource:(??*while/lstm_cell_674/BiasAdd/ReadVariableOp?)while/lstm_cell_674/MatMul/ReadVariableOp?+while/lstm_cell_674/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_674/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_674/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_674/addAddV2$while/lstm_cell_674/MatMul:product:0&while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_674/BiasAddBiasAddwhile/lstm_cell_674/add:z:02while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_674/splitSplit,while/lstm_cell_674/split/split_dim:output:0$while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_674/SigmoidSigmoid"while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_1Sigmoid"while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mulMul!while/lstm_cell_674/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_674/ReluRelu"while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_1Mulwhile/lstm_cell_674/Sigmoid:y:0&while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/add_1AddV2while/lstm_cell_674/mul:z:0while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_2Sigmoid"while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_674/Relu_1Reluwhile/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_2Mul!while/lstm_cell_674/Sigmoid_2:y:0(while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_674/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_674/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_674/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_674/BiasAdd/ReadVariableOp*^while/lstm_cell_674/MatMul/ReadVariableOp,^while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_674_biasadd_readvariableop_resource5while_lstm_cell_674_biasadd_readvariableop_resource_0"n
4while_lstm_cell_674_matmul_1_readvariableop_resource6while_lstm_cell_674_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_674_matmul_readvariableop_resource4while_lstm_cell_674_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_674/BiasAdd/ReadVariableOp*while/lstm_cell_674/BiasAdd/ReadVariableOp2V
)while/lstm_cell_674/MatMul/ReadVariableOp)while/lstm_cell_674/MatMul/ReadVariableOp2Z
+while/lstm_cell_674/MatMul_1/ReadVariableOp+while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_271_layer_call_fn_4080264

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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4079501o
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
while_body_4081534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_672_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_672_matmul_readvariableop_resource:	?G
4while_lstm_cell_672_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_672_biasadd_readvariableop_resource:	???*while/lstm_cell_672/BiasAdd/ReadVariableOp?)while/lstm_cell_672/MatMul/ReadVariableOp?+while/lstm_cell_672/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_672/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_672/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_672/addAddV2$while/lstm_cell_672/MatMul:product:0&while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_672/BiasAddBiasAddwhile/lstm_cell_672/add:z:02while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_672/splitSplit,while/lstm_cell_672/split/split_dim:output:0$while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_672/SigmoidSigmoid"while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_1Sigmoid"while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mulMul!while/lstm_cell_672/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_672/ReluRelu"while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_1Mulwhile/lstm_cell_672/Sigmoid:y:0&while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/add_1AddV2while/lstm_cell_672/mul:z:0while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_2Sigmoid"while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_672/Relu_1Reluwhile/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_2Mul!while/lstm_cell_672/Sigmoid_2:y:0(while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_672/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_672/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_672/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_672/BiasAdd/ReadVariableOp*^while/lstm_cell_672/MatMul/ReadVariableOp,^while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_672_biasadd_readvariableop_resource5while_lstm_cell_672_biasadd_readvariableop_resource_0"n
4while_lstm_cell_672_matmul_1_readvariableop_resource6while_lstm_cell_672_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_672_matmul_readvariableop_resource4while_lstm_cell_672_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_672/BiasAdd/ReadVariableOp*while/lstm_cell_672/BiasAdd/ReadVariableOp2V
)while/lstm_cell_672/MatMul/ReadVariableOp)while/lstm_cell_672/MatMul/ReadVariableOp2Z
+while/lstm_cell_672/MatMul_1/ReadVariableOp+while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_271_lstm_814_while_body_4077748L
Hsequential_271_lstm_814_while_sequential_271_lstm_814_while_loop_counterR
Nsequential_271_lstm_814_while_sequential_271_lstm_814_while_maximum_iterations-
)sequential_271_lstm_814_while_placeholder/
+sequential_271_lstm_814_while_placeholder_1/
+sequential_271_lstm_814_while_placeholder_2/
+sequential_271_lstm_814_while_placeholder_3K
Gsequential_271_lstm_814_while_sequential_271_lstm_814_strided_slice_1_0?
?sequential_271_lstm_814_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_814_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_271_lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0:	d?a
Nsequential_271_lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?\
Msequential_271_lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0:	?*
&sequential_271_lstm_814_while_identity,
(sequential_271_lstm_814_while_identity_1,
(sequential_271_lstm_814_while_identity_2,
(sequential_271_lstm_814_while_identity_3,
(sequential_271_lstm_814_while_identity_4,
(sequential_271_lstm_814_while_identity_5I
Esequential_271_lstm_814_while_sequential_271_lstm_814_strided_slice_1?
?sequential_271_lstm_814_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_814_tensorarrayunstack_tensorlistfromtensor]
Jsequential_271_lstm_814_while_lstm_cell_673_matmul_readvariableop_resource:	d?_
Lsequential_271_lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource:	2?Z
Ksequential_271_lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource:	???Bsequential_271/lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp?Asequential_271/lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp?Csequential_271/lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp?
Osequential_271/lstm_814/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_271/lstm_814/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_271_lstm_814_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_814_tensorarrayunstack_tensorlistfromtensor_0)sequential_271_lstm_814_while_placeholderXsequential_271/lstm_814/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_271/lstm_814/while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOpLsequential_271_lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_271/lstm_814/while/lstm_cell_673/MatMulMatMulHsequential_271/lstm_814/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_271/lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_271/lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOpNsequential_271_lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_271/lstm_814/while/lstm_cell_673/MatMul_1MatMul+sequential_271_lstm_814_while_placeholder_2Ksequential_271/lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_271/lstm_814/while/lstm_cell_673/addAddV2<sequential_271/lstm_814/while/lstm_cell_673/MatMul:product:0>sequential_271/lstm_814/while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_271/lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOpMsequential_271_lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_271/lstm_814/while/lstm_cell_673/BiasAddBiasAdd3sequential_271/lstm_814/while/lstm_cell_673/add:z:0Jsequential_271/lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_271/lstm_814/while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_271/lstm_814/while/lstm_cell_673/splitSplitDsequential_271/lstm_814/while/lstm_cell_673/split/split_dim:output:0<sequential_271/lstm_814/while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_271/lstm_814/while/lstm_cell_673/SigmoidSigmoid:sequential_271/lstm_814/while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_271/lstm_814/while/lstm_cell_673/Sigmoid_1Sigmoid:sequential_271/lstm_814/while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_271/lstm_814/while/lstm_cell_673/mulMul9sequential_271/lstm_814/while/lstm_cell_673/Sigmoid_1:y:0+sequential_271_lstm_814_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_271/lstm_814/while/lstm_cell_673/ReluRelu:sequential_271/lstm_814/while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_271/lstm_814/while/lstm_cell_673/mul_1Mul7sequential_271/lstm_814/while/lstm_cell_673/Sigmoid:y:0>sequential_271/lstm_814/while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_271/lstm_814/while/lstm_cell_673/add_1AddV23sequential_271/lstm_814/while/lstm_cell_673/mul:z:05sequential_271/lstm_814/while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_271/lstm_814/while/lstm_cell_673/Sigmoid_2Sigmoid:sequential_271/lstm_814/while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_271/lstm_814/while/lstm_cell_673/Relu_1Relu5sequential_271/lstm_814/while/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_271/lstm_814/while/lstm_cell_673/mul_2Mul9sequential_271/lstm_814/while/lstm_cell_673/Sigmoid_2:y:0@sequential_271/lstm_814/while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_271/lstm_814/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_271_lstm_814_while_placeholder_1)sequential_271_lstm_814_while_placeholder5sequential_271/lstm_814/while/lstm_cell_673/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_271/lstm_814/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_271/lstm_814/while/addAddV2)sequential_271_lstm_814_while_placeholder,sequential_271/lstm_814/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_271/lstm_814/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_271/lstm_814/while/add_1AddV2Hsequential_271_lstm_814_while_sequential_271_lstm_814_while_loop_counter.sequential_271/lstm_814/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_271/lstm_814/while/IdentityIdentity'sequential_271/lstm_814/while/add_1:z:0#^sequential_271/lstm_814/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_814/while/Identity_1IdentityNsequential_271_lstm_814_while_sequential_271_lstm_814_while_maximum_iterations#^sequential_271/lstm_814/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_814/while/Identity_2Identity%sequential_271/lstm_814/while/add:z:0#^sequential_271/lstm_814/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_814/while/Identity_3IdentityRsequential_271/lstm_814/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_271/lstm_814/while/NoOp*
T0*
_output_shapes
: ?
(sequential_271/lstm_814/while/Identity_4Identity5sequential_271/lstm_814/while/lstm_cell_673/mul_2:z:0#^sequential_271/lstm_814/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_271/lstm_814/while/Identity_5Identity5sequential_271/lstm_814/while/lstm_cell_673/add_1:z:0#^sequential_271/lstm_814/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_271/lstm_814/while/NoOpNoOpC^sequential_271/lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOpB^sequential_271/lstm_814/while/lstm_cell_673/MatMul/ReadVariableOpD^sequential_271/lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_271_lstm_814_while_identity/sequential_271/lstm_814/while/Identity:output:0"]
(sequential_271_lstm_814_while_identity_11sequential_271/lstm_814/while/Identity_1:output:0"]
(sequential_271_lstm_814_while_identity_21sequential_271/lstm_814/while/Identity_2:output:0"]
(sequential_271_lstm_814_while_identity_31sequential_271/lstm_814/while/Identity_3:output:0"]
(sequential_271_lstm_814_while_identity_41sequential_271/lstm_814/while/Identity_4:output:0"]
(sequential_271_lstm_814_while_identity_51sequential_271/lstm_814/while/Identity_5:output:0"?
Ksequential_271_lstm_814_while_lstm_cell_673_biasadd_readvariableop_resourceMsequential_271_lstm_814_while_lstm_cell_673_biasadd_readvariableop_resource_0"?
Lsequential_271_lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resourceNsequential_271_lstm_814_while_lstm_cell_673_matmul_1_readvariableop_resource_0"?
Jsequential_271_lstm_814_while_lstm_cell_673_matmul_readvariableop_resourceLsequential_271_lstm_814_while_lstm_cell_673_matmul_readvariableop_resource_0"?
Esequential_271_lstm_814_while_sequential_271_lstm_814_strided_slice_1Gsequential_271_lstm_814_while_sequential_271_lstm_814_strided_slice_1_0"?
?sequential_271_lstm_814_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_814_tensorarrayunstack_tensorlistfromtensor?sequential_271_lstm_814_while_tensorarrayv2read_tensorlistgetitem_sequential_271_lstm_814_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_271/lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOpBsequential_271/lstm_814/while/lstm_cell_673/BiasAdd/ReadVariableOp2?
Asequential_271/lstm_814/while/lstm_cell_673/MatMul/ReadVariableOpAsequential_271/lstm_814/while/lstm_cell_673/MatMul/ReadVariableOp2?
Csequential_271/lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOpCsequential_271/lstm_814/while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_813_while_body_4080777.
*lstm_813_while_lstm_813_while_loop_counter4
0lstm_813_while_lstm_813_while_maximum_iterations
lstm_813_while_placeholder 
lstm_813_while_placeholder_1 
lstm_813_while_placeholder_2 
lstm_813_while_placeholder_3-
)lstm_813_while_lstm_813_strided_slice_1_0i
elstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0:	?R
?lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?M
>lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
lstm_813_while_identity
lstm_813_while_identity_1
lstm_813_while_identity_2
lstm_813_while_identity_3
lstm_813_while_identity_4
lstm_813_while_identity_5+
'lstm_813_while_lstm_813_strided_slice_1g
clstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensorN
;lstm_813_while_lstm_cell_672_matmul_readvariableop_resource:	?P
=lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource:	d?K
<lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource:	???3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp?2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp?4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp?
@lstm_813/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_813/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensor_0lstm_813_while_placeholderIlstm_813/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp=lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_813/while/lstm_cell_672/MatMulMatMul9lstm_813/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp?lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_813/while/lstm_cell_672/MatMul_1MatMullstm_813_while_placeholder_2<lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_813/while/lstm_cell_672/addAddV2-lstm_813/while/lstm_cell_672/MatMul:product:0/lstm_813/while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp>lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_813/while/lstm_cell_672/BiasAddBiasAdd$lstm_813/while/lstm_cell_672/add:z:0;lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_813/while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_813/while/lstm_cell_672/splitSplit5lstm_813/while/lstm_cell_672/split/split_dim:output:0-lstm_813/while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_813/while/lstm_cell_672/SigmoidSigmoid+lstm_813/while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_813/while/lstm_cell_672/Sigmoid_1Sigmoid+lstm_813/while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_813/while/lstm_cell_672/mulMul*lstm_813/while/lstm_cell_672/Sigmoid_1:y:0lstm_813_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_813/while/lstm_cell_672/ReluRelu+lstm_813/while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_813/while/lstm_cell_672/mul_1Mul(lstm_813/while/lstm_cell_672/Sigmoid:y:0/lstm_813/while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_813/while/lstm_cell_672/add_1AddV2$lstm_813/while/lstm_cell_672/mul:z:0&lstm_813/while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_813/while/lstm_cell_672/Sigmoid_2Sigmoid+lstm_813/while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_813/while/lstm_cell_672/Relu_1Relu&lstm_813/while/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_813/while/lstm_cell_672/mul_2Mul*lstm_813/while/lstm_cell_672/Sigmoid_2:y:01lstm_813/while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_813/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_813_while_placeholder_1lstm_813_while_placeholder&lstm_813/while/lstm_cell_672/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_813/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_813/while/addAddV2lstm_813_while_placeholderlstm_813/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_813/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_813/while/add_1AddV2*lstm_813_while_lstm_813_while_loop_counterlstm_813/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_813/while/IdentityIdentitylstm_813/while/add_1:z:0^lstm_813/while/NoOp*
T0*
_output_shapes
: ?
lstm_813/while/Identity_1Identity0lstm_813_while_lstm_813_while_maximum_iterations^lstm_813/while/NoOp*
T0*
_output_shapes
: t
lstm_813/while/Identity_2Identitylstm_813/while/add:z:0^lstm_813/while/NoOp*
T0*
_output_shapes
: ?
lstm_813/while/Identity_3IdentityClstm_813/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_813/while/NoOp*
T0*
_output_shapes
: ?
lstm_813/while/Identity_4Identity&lstm_813/while/lstm_cell_672/mul_2:z:0^lstm_813/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_813/while/Identity_5Identity&lstm_813/while/lstm_cell_672/add_1:z:0^lstm_813/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_813/while/NoOpNoOp4^lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp3^lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp5^lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_813_while_identity lstm_813/while/Identity:output:0"?
lstm_813_while_identity_1"lstm_813/while/Identity_1:output:0"?
lstm_813_while_identity_2"lstm_813/while/Identity_2:output:0"?
lstm_813_while_identity_3"lstm_813/while/Identity_3:output:0"?
lstm_813_while_identity_4"lstm_813/while/Identity_4:output:0"?
lstm_813_while_identity_5"lstm_813/while/Identity_5:output:0"T
'lstm_813_while_lstm_813_strided_slice_1)lstm_813_while_lstm_813_strided_slice_1_0"~
<lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource>lstm_813_while_lstm_cell_672_biasadd_readvariableop_resource_0"?
=lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource?lstm_813_while_lstm_cell_672_matmul_1_readvariableop_resource_0"|
;lstm_813_while_lstm_cell_672_matmul_readvariableop_resource=lstm_813_while_lstm_cell_672_matmul_readvariableop_resource_0"?
clstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensorelstm_813_while_tensorarrayv2read_tensorlistgetitem_lstm_813_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp3lstm_813/while/lstm_cell_672/BiasAdd/ReadVariableOp2h
2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp2lstm_813/while/lstm_cell_672/MatMul/ReadVariableOp2l
4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp4lstm_813/while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4082765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082765___redundant_placeholder05
1while_while_cond_4082765___redundant_placeholder15
1while_while_cond_4082765___redundant_placeholder25
1while_while_cond_4082765___redundant_placeholder3
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
?
*__inference_lstm_813_layer_call_fn_4081189

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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4080022s
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082377

inputs?
,lstm_cell_673_matmul_readvariableop_resource:	d?A
.lstm_cell_673_matmul_1_readvariableop_resource:	2?<
-lstm_cell_673_biasadd_readvariableop_resource:	?
identity??$lstm_cell_673/BiasAdd/ReadVariableOp?#lstm_cell_673/MatMul/ReadVariableOp?%lstm_cell_673/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_673/MatMul/ReadVariableOpReadVariableOp,lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_673/MatMulMatMulstrided_slice_2:output:0+lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_673/MatMul_1MatMulzeros:output:0-lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_673/addAddV2lstm_cell_673/MatMul:product:0 lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_673/BiasAddBiasAddlstm_cell_673/add:z:0,lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_673/splitSplit&lstm_cell_673/split/split_dim:output:0lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_673/SigmoidSigmoidlstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_1Sigmoidlstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_673/mulMullstm_cell_673/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_673/ReluRelulstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_1Mullstm_cell_673/Sigmoid:y:0 lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_673/add_1AddV2lstm_cell_673/mul:z:0lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_673/Sigmoid_2Sigmoidlstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_673/Relu_1Relulstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_673/mul_2Mullstm_cell_673/Sigmoid_2:y:0"lstm_cell_673/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_673_matmul_readvariableop_resource.lstm_cell_673_matmul_1_readvariableop_resource-lstm_cell_673_biasadd_readvariableop_resource*
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
while_body_4082293*
condR
while_cond_4082292*K
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
NoOpNoOp%^lstm_cell_673/BiasAdd/ReadVariableOp$^lstm_cell_673/MatMul/ReadVariableOp&^lstm_cell_673/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_673/BiasAdd/ReadVariableOp$lstm_cell_673/BiasAdd/ReadVariableOp2J
#lstm_cell_673/MatMul/ReadVariableOp#lstm_cell_673/MatMul/ReadVariableOp2N
%lstm_cell_673/MatMul_1/ReadVariableOp%lstm_cell_673/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078890

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
?
?
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4083208

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
?
?
*__inference_lstm_813_layer_call_fn_4081178

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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4079176s
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
*__inference_lstm_814_layer_call_fn_4081794

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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079326s
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
while_cond_4082908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082908___redundant_placeholder05
1while_while_cond_4082908___redundant_placeholder15
1while_while_cond_4082908___redundant_placeholder25
1while_while_cond_4082908___redundant_placeholder3
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
while_cond_4081247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4081247___redundant_placeholder05
1while_while_cond_4081247___redundant_placeholder15
1while_while_cond_4081247___redundant_placeholder25
1while_while_cond_4081247___redundant_placeholder3
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
/__inference_lstm_cell_673_layer_call_fn_4083127

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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078394o
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
?
*sequential_271_lstm_814_while_cond_4077747L
Hsequential_271_lstm_814_while_sequential_271_lstm_814_while_loop_counterR
Nsequential_271_lstm_814_while_sequential_271_lstm_814_while_maximum_iterations-
)sequential_271_lstm_814_while_placeholder/
+sequential_271_lstm_814_while_placeholder_1/
+sequential_271_lstm_814_while_placeholder_2/
+sequential_271_lstm_814_while_placeholder_3N
Jsequential_271_lstm_814_while_less_sequential_271_lstm_814_strided_slice_1e
asequential_271_lstm_814_while_sequential_271_lstm_814_while_cond_4077747___redundant_placeholder0e
asequential_271_lstm_814_while_sequential_271_lstm_814_while_cond_4077747___redundant_placeholder1e
asequential_271_lstm_814_while_sequential_271_lstm_814_while_cond_4077747___redundant_placeholder2e
asequential_271_lstm_814_while_sequential_271_lstm_814_while_cond_4077747___redundant_placeholder3*
&sequential_271_lstm_814_while_identity
?
"sequential_271/lstm_814/while/LessLess)sequential_271_lstm_814_while_placeholderJsequential_271_lstm_814_while_less_sequential_271_lstm_814_strided_slice_1*
T0*
_output_shapes
: {
&sequential_271/lstm_814/while/IdentityIdentity&sequential_271/lstm_814/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_271_lstm_814_while_identity/sequential_271/lstm_814/while/Identity:output:0*(
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
while_body_4079242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_673_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_673_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_673_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_673_matmul_readvariableop_resource:	d?G
4while_lstm_cell_673_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_673_biasadd_readvariableop_resource:	???*while/lstm_cell_673/BiasAdd/ReadVariableOp?)while/lstm_cell_673/MatMul/ReadVariableOp?+while/lstm_cell_673/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_673_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_673/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_673_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_673/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_673/addAddV2$while/lstm_cell_673/MatMul:product:0&while/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_673_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_673/BiasAddBiasAddwhile/lstm_cell_673/add:z:02while/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_673/splitSplit,while/lstm_cell_673/split/split_dim:output:0$while/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_673/SigmoidSigmoid"while/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_1Sigmoid"while/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mulMul!while/lstm_cell_673/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_673/ReluRelu"while/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_1Mulwhile/lstm_cell_673/Sigmoid:y:0&while/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/add_1AddV2while/lstm_cell_673/mul:z:0while/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_673/Sigmoid_2Sigmoid"while/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_673/Relu_1Reluwhile/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_673/mul_2Mul!while/lstm_cell_673/Sigmoid_2:y:0(while/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_673/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_673/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_673/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_673/BiasAdd/ReadVariableOp*^while/lstm_cell_673/MatMul/ReadVariableOp,^while/lstm_cell_673/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_673_biasadd_readvariableop_resource5while_lstm_cell_673_biasadd_readvariableop_resource_0"n
4while_lstm_cell_673_matmul_1_readvariableop_resource6while_lstm_cell_673_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_673_matmul_readvariableop_resource4while_lstm_cell_673_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_673/BiasAdd/ReadVariableOp*while/lstm_cell_673/BiasAdd/ReadVariableOp2V
)while/lstm_cell_673/MatMul/ReadVariableOp)while/lstm_cell_673/MatMul/ReadVariableOp2Z
+while/lstm_cell_673/MatMul_1/ReadVariableOp+while/lstm_cell_673/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4081391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_672_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_672_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_672_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_672_matmul_readvariableop_resource:	?G
4while_lstm_cell_672_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_672_biasadd_readvariableop_resource:	???*while/lstm_cell_672/BiasAdd/ReadVariableOp?)while/lstm_cell_672/MatMul/ReadVariableOp?+while/lstm_cell_672/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_672_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_672/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_672_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_672/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_672/addAddV2$while/lstm_cell_672/MatMul:product:0&while/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_672_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_672/BiasAddBiasAddwhile/lstm_cell_672/add:z:02while/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_672/splitSplit,while/lstm_cell_672/split/split_dim:output:0$while/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_672/SigmoidSigmoid"while/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_1Sigmoid"while/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mulMul!while/lstm_cell_672/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_672/ReluRelu"while/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_1Mulwhile/lstm_cell_672/Sigmoid:y:0&while/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/add_1AddV2while/lstm_cell_672/mul:z:0while/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_672/Sigmoid_2Sigmoid"while/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_672/Relu_1Reluwhile/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_672/mul_2Mul!while/lstm_cell_672/Sigmoid_2:y:0(while/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_672/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_672/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_672/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_672/BiasAdd/ReadVariableOp*^while/lstm_cell_672/MatMul/ReadVariableOp,^while/lstm_cell_672/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_672_biasadd_readvariableop_resource5while_lstm_cell_672_biasadd_readvariableop_resource_0"n
4while_lstm_cell_672_matmul_1_readvariableop_resource6while_lstm_cell_672_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_672_matmul_readvariableop_resource4while_lstm_cell_672_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_672/BiasAdd/ReadVariableOp*while/lstm_cell_672/BiasAdd/ReadVariableOp2V
)while/lstm_cell_672/MatMul/ReadVariableOp)while/lstm_cell_672/MatMul/ReadVariableOp2Z
+while/lstm_cell_672/MatMul_1/ReadVariableOp+while/lstm_cell_672/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
/__inference_lstm_cell_672_layer_call_fn_4083029

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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4078044o
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
?
?
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4083176

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
?
?
/__inference_lstm_cell_673_layer_call_fn_4083144

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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078540o
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
?
?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4079501

inputs#
lstm_813_4079177:	?#
lstm_813_4079179:	d?
lstm_813_4079181:	?#
lstm_814_4079327:	d?#
lstm_814_4079329:	2?
lstm_814_4079331:	?"
lstm_815_4079477:2("
lstm_815_4079479:
(
lstm_815_4079481:(#
dense_271_4079495:

dense_271_4079497:
identity??!dense_271/StatefulPartitionedCall? lstm_813/StatefulPartitionedCall? lstm_814/StatefulPartitionedCall? lstm_815/StatefulPartitionedCall?
 lstm_813/StatefulPartitionedCallStatefulPartitionedCallinputslstm_813_4079177lstm_813_4079179lstm_813_4079181*
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4079176?
 lstm_814/StatefulPartitionedCallStatefulPartitionedCall)lstm_813/StatefulPartitionedCall:output:0lstm_814_4079327lstm_814_4079329lstm_814_4079331*
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079326?
 lstm_815/StatefulPartitionedCallStatefulPartitionedCall)lstm_814/StatefulPartitionedCall:output:0lstm_815_4079477lstm_815_4079479lstm_815_4079481*
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079476?
!dense_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_815/StatefulPartitionedCall:output:0dense_271_4079495dense_271_4079497*
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
F__inference_dense_271_layer_call_and_return_conditional_losses_4079494y
IdentityIdentity*dense_271/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_271/StatefulPartitionedCall!^lstm_813/StatefulPartitionedCall!^lstm_814/StatefulPartitionedCall!^lstm_815/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_271/StatefulPartitionedCall!dense_271/StatefulPartitionedCall2D
 lstm_813/StatefulPartitionedCall lstm_813/StatefulPartitionedCall2D
 lstm_814/StatefulPartitionedCall lstm_814/StatefulPartitionedCall2D
 lstm_815/StatefulPartitionedCall lstm_815/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_674_layer_call_fn_4083242

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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078890o
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
?K
?
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081332
inputs_0?
,lstm_cell_672_matmul_readvariableop_resource:	?A
.lstm_cell_672_matmul_1_readvariableop_resource:	d?<
-lstm_cell_672_biasadd_readvariableop_resource:	?
identity??$lstm_cell_672/BiasAdd/ReadVariableOp?#lstm_cell_672/MatMul/ReadVariableOp?%lstm_cell_672/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_672/MatMul/ReadVariableOpReadVariableOp,lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_672/MatMulMatMulstrided_slice_2:output:0+lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_672/MatMul_1MatMulzeros:output:0-lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_672/addAddV2lstm_cell_672/MatMul:product:0 lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_672/BiasAddBiasAddlstm_cell_672/add:z:0,lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_672/splitSplit&lstm_cell_672/split/split_dim:output:0lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_672/SigmoidSigmoidlstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_1Sigmoidlstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_672/mulMullstm_cell_672/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_672/ReluRelulstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_1Mullstm_cell_672/Sigmoid:y:0 lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_672/add_1AddV2lstm_cell_672/mul:z:0lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_2Sigmoidlstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_672/Relu_1Relulstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_2Mullstm_cell_672/Sigmoid_2:y:0"lstm_cell_672/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_672_matmul_readvariableop_resource.lstm_cell_672_matmul_1_readvariableop_resource-lstm_cell_672_biasadd_readvariableop_resource*
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
while_body_4081248*
condR
while_cond_4081247*K
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
NoOpNoOp%^lstm_cell_672/BiasAdd/ReadVariableOp$^lstm_cell_672/MatMul/ReadVariableOp&^lstm_cell_672/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_672/BiasAdd/ReadVariableOp$lstm_cell_672/BiasAdd/ReadVariableOp2J
#lstm_cell_672/MatMul/ReadVariableOp#lstm_cell_672/MatMul/ReadVariableOp2N
%lstm_cell_672/MatMul_1/ReadVariableOp%lstm_cell_672/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_813_while_cond_4080776.
*lstm_813_while_lstm_813_while_loop_counter4
0lstm_813_while_lstm_813_while_maximum_iterations
lstm_813_while_placeholder 
lstm_813_while_placeholder_1 
lstm_813_while_placeholder_2 
lstm_813_while_placeholder_30
,lstm_813_while_less_lstm_813_strided_slice_1G
Clstm_813_while_lstm_813_while_cond_4080776___redundant_placeholder0G
Clstm_813_while_lstm_813_while_cond_4080776___redundant_placeholder1G
Clstm_813_while_lstm_813_while_cond_4080776___redundant_placeholder2G
Clstm_813_while_lstm_813_while_cond_4080776___redundant_placeholder3
lstm_813_while_identity
?
lstm_813/while/LessLesslstm_813_while_placeholder,lstm_813_while_less_lstm_813_strided_slice_1*
T0*
_output_shapes
: ]
lstm_813/while/IdentityIdentitylstm_813/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_813_while_identity lstm_813/while/Identity:output:0*(
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
?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080202
lstm_813_input#
lstm_813_4080175:	?#
lstm_813_4080177:	d?
lstm_813_4080179:	?#
lstm_814_4080182:	d?#
lstm_814_4080184:	2?
lstm_814_4080186:	?"
lstm_815_4080189:2("
lstm_815_4080191:
(
lstm_815_4080193:(#
dense_271_4080196:

dense_271_4080198:
identity??!dense_271/StatefulPartitionedCall? lstm_813/StatefulPartitionedCall? lstm_814/StatefulPartitionedCall? lstm_815/StatefulPartitionedCall?
 lstm_813/StatefulPartitionedCallStatefulPartitionedCalllstm_813_inputlstm_813_4080175lstm_813_4080177lstm_813_4080179*
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4080022?
 lstm_814/StatefulPartitionedCallStatefulPartitionedCall)lstm_813/StatefulPartitionedCall:output:0lstm_814_4080182lstm_814_4080184lstm_814_4080186*
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4079857?
 lstm_815/StatefulPartitionedCallStatefulPartitionedCall)lstm_814/StatefulPartitionedCall:output:0lstm_815_4080189lstm_815_4080191lstm_815_4080193*
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079692?
!dense_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_815/StatefulPartitionedCall:output:0dense_271_4080196dense_271_4080198*
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
F__inference_dense_271_layer_call_and_return_conditional_losses_4079494y
IdentityIdentity*dense_271/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_271/StatefulPartitionedCall!^lstm_813/StatefulPartitionedCall!^lstm_814/StatefulPartitionedCall!^lstm_815/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_271/StatefulPartitionedCall!dense_271/StatefulPartitionedCall2D
 lstm_813/StatefulPartitionedCall lstm_813/StatefulPartitionedCall2D
 lstm_814/StatefulPartitionedCall lstm_814/StatefulPartitionedCall2D
 lstm_815/StatefulPartitionedCall lstm_815/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_813_input
?
?
while_cond_4078248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4078248___redundant_placeholder05
1while_while_cond_4078248___redundant_placeholder15
1while_while_cond_4078248___redundant_placeholder25
1while_while_cond_4078248___redundant_placeholder3
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
?K
?
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081475
inputs_0?
,lstm_cell_672_matmul_readvariableop_resource:	?A
.lstm_cell_672_matmul_1_readvariableop_resource:	d?<
-lstm_cell_672_biasadd_readvariableop_resource:	?
identity??$lstm_cell_672/BiasAdd/ReadVariableOp?#lstm_cell_672/MatMul/ReadVariableOp?%lstm_cell_672/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_672/MatMul/ReadVariableOpReadVariableOp,lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_672/MatMulMatMulstrided_slice_2:output:0+lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_672/MatMul_1MatMulzeros:output:0-lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_672/addAddV2lstm_cell_672/MatMul:product:0 lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_672/BiasAddBiasAddlstm_cell_672/add:z:0,lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_672/splitSplit&lstm_cell_672/split/split_dim:output:0lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_672/SigmoidSigmoidlstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_1Sigmoidlstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_672/mulMullstm_cell_672/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_672/ReluRelulstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_1Mullstm_cell_672/Sigmoid:y:0 lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_672/add_1AddV2lstm_cell_672/mul:z:0lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_672/Sigmoid_2Sigmoidlstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_672/Relu_1Relulstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_672/mul_2Mullstm_cell_672/Sigmoid_2:y:0"lstm_cell_672/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_672_matmul_readvariableop_resource.lstm_cell_672_matmul_1_readvariableop_resource-lstm_cell_672_biasadd_readvariableop_resource*
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
while_body_4081391*
condR
while_cond_4081390*K
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
NoOpNoOp%^lstm_cell_672/BiasAdd/ReadVariableOp$^lstm_cell_672/MatMul/ReadVariableOp&^lstm_cell_672/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_672/BiasAdd/ReadVariableOp$lstm_cell_672/BiasAdd/ReadVariableOp2J
#lstm_cell_672/MatMul/ReadVariableOp#lstm_cell_672/MatMul/ReadVariableOp2N
%lstm_cell_672/MatMul_1/ReadVariableOp%lstm_cell_672/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080718

inputsH
5lstm_813_lstm_cell_672_matmul_readvariableop_resource:	?J
7lstm_813_lstm_cell_672_matmul_1_readvariableop_resource:	d?E
6lstm_813_lstm_cell_672_biasadd_readvariableop_resource:	?H
5lstm_814_lstm_cell_673_matmul_readvariableop_resource:	d?J
7lstm_814_lstm_cell_673_matmul_1_readvariableop_resource:	2?E
6lstm_814_lstm_cell_673_biasadd_readvariableop_resource:	?G
5lstm_815_lstm_cell_674_matmul_readvariableop_resource:2(I
7lstm_815_lstm_cell_674_matmul_1_readvariableop_resource:
(D
6lstm_815_lstm_cell_674_biasadd_readvariableop_resource:(:
(dense_271_matmul_readvariableop_resource:
7
)dense_271_biasadd_readvariableop_resource:
identity?? dense_271/BiasAdd/ReadVariableOp?dense_271/MatMul/ReadVariableOp?-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp?,lstm_813/lstm_cell_672/MatMul/ReadVariableOp?.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp?lstm_813/while?-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp?,lstm_814/lstm_cell_673/MatMul/ReadVariableOp?.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp?lstm_814/while?-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp?,lstm_815/lstm_cell_674/MatMul/ReadVariableOp?.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp?lstm_815/whileD
lstm_813/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_813/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_813/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_813/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_sliceStridedSlicelstm_813/Shape:output:0%lstm_813/strided_slice/stack:output:0'lstm_813/strided_slice/stack_1:output:0'lstm_813/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_813/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_813/zeros/packedPacklstm_813/strided_slice:output:0 lstm_813/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_813/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_813/zerosFilllstm_813/zeros/packed:output:0lstm_813/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_813/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_813/zeros_1/packedPacklstm_813/strided_slice:output:0"lstm_813/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_813/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_813/zeros_1Fill lstm_813/zeros_1/packed:output:0lstm_813/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_813/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_813/transpose	Transposeinputs lstm_813/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_813/Shape_1Shapelstm_813/transpose:y:0*
T0*
_output_shapes
:h
lstm_813/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_813/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_813/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_slice_1StridedSlicelstm_813/Shape_1:output:0'lstm_813/strided_slice_1/stack:output:0)lstm_813/strided_slice_1/stack_1:output:0)lstm_813/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_813/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_813/TensorArrayV2TensorListReserve-lstm_813/TensorArrayV2/element_shape:output:0!lstm_813/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_813/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_813/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_813/transpose:y:0Glstm_813/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_813/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_813/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_813/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_slice_2StridedSlicelstm_813/transpose:y:0'lstm_813/strided_slice_2/stack:output:0)lstm_813/strided_slice_2/stack_1:output:0)lstm_813/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_813/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp5lstm_813_lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_813/lstm_cell_672/MatMulMatMul!lstm_813/strided_slice_2:output:04lstm_813/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp7lstm_813_lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_813/lstm_cell_672/MatMul_1MatMullstm_813/zeros:output:06lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_813/lstm_cell_672/addAddV2'lstm_813/lstm_cell_672/MatMul:product:0)lstm_813/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp6lstm_813_lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_813/lstm_cell_672/BiasAddBiasAddlstm_813/lstm_cell_672/add:z:05lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_813/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_813/lstm_cell_672/splitSplit/lstm_813/lstm_cell_672/split/split_dim:output:0'lstm_813/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_813/lstm_cell_672/SigmoidSigmoid%lstm_813/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_813/lstm_cell_672/Sigmoid_1Sigmoid%lstm_813/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/mulMul$lstm_813/lstm_cell_672/Sigmoid_1:y:0lstm_813/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_813/lstm_cell_672/ReluRelu%lstm_813/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/mul_1Mul"lstm_813/lstm_cell_672/Sigmoid:y:0)lstm_813/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/add_1AddV2lstm_813/lstm_cell_672/mul:z:0 lstm_813/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_813/lstm_cell_672/Sigmoid_2Sigmoid%lstm_813/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_813/lstm_cell_672/Relu_1Relu lstm_813/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/mul_2Mul$lstm_813/lstm_cell_672/Sigmoid_2:y:0+lstm_813/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_813/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_813/TensorArrayV2_1TensorListReserve/lstm_813/TensorArrayV2_1/element_shape:output:0!lstm_813/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_813/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_813/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_813/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_813/whileWhile$lstm_813/while/loop_counter:output:0*lstm_813/while/maximum_iterations:output:0lstm_813/time:output:0!lstm_813/TensorArrayV2_1:handle:0lstm_813/zeros:output:0lstm_813/zeros_1:output:0!lstm_813/strided_slice_1:output:0@lstm_813/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_813_lstm_cell_672_matmul_readvariableop_resource7lstm_813_lstm_cell_672_matmul_1_readvariableop_resource6lstm_813_lstm_cell_672_biasadd_readvariableop_resource*
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
lstm_813_while_body_4080350*'
condR
lstm_813_while_cond_4080349*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_813/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_813/TensorArrayV2Stack/TensorListStackTensorListStacklstm_813/while:output:3Blstm_813/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_813/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_813/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_813/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_slice_3StridedSlice4lstm_813/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_813/strided_slice_3/stack:output:0)lstm_813/strided_slice_3/stack_1:output:0)lstm_813/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_813/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_813/transpose_1	Transpose4lstm_813/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_813/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_813/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_814/ShapeShapelstm_813/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_814/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_814/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_814/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_sliceStridedSlicelstm_814/Shape:output:0%lstm_814/strided_slice/stack:output:0'lstm_814/strided_slice/stack_1:output:0'lstm_814/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_814/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_814/zeros/packedPacklstm_814/strided_slice:output:0 lstm_814/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_814/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_814/zerosFilllstm_814/zeros/packed:output:0lstm_814/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_814/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_814/zeros_1/packedPacklstm_814/strided_slice:output:0"lstm_814/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_814/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_814/zeros_1Fill lstm_814/zeros_1/packed:output:0lstm_814/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_814/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_814/transpose	Transposelstm_813/transpose_1:y:0 lstm_814/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_814/Shape_1Shapelstm_814/transpose:y:0*
T0*
_output_shapes
:h
lstm_814/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_814/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_814/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_slice_1StridedSlicelstm_814/Shape_1:output:0'lstm_814/strided_slice_1/stack:output:0)lstm_814/strided_slice_1/stack_1:output:0)lstm_814/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_814/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_814/TensorArrayV2TensorListReserve-lstm_814/TensorArrayV2/element_shape:output:0!lstm_814/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_814/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_814/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_814/transpose:y:0Glstm_814/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_814/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_814/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_814/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_slice_2StridedSlicelstm_814/transpose:y:0'lstm_814/strided_slice_2/stack:output:0)lstm_814/strided_slice_2/stack_1:output:0)lstm_814/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_814/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp5lstm_814_lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_814/lstm_cell_673/MatMulMatMul!lstm_814/strided_slice_2:output:04lstm_814/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp7lstm_814_lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_814/lstm_cell_673/MatMul_1MatMullstm_814/zeros:output:06lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_814/lstm_cell_673/addAddV2'lstm_814/lstm_cell_673/MatMul:product:0)lstm_814/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp6lstm_814_lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_814/lstm_cell_673/BiasAddBiasAddlstm_814/lstm_cell_673/add:z:05lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_814/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_814/lstm_cell_673/splitSplit/lstm_814/lstm_cell_673/split/split_dim:output:0'lstm_814/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_814/lstm_cell_673/SigmoidSigmoid%lstm_814/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_814/lstm_cell_673/Sigmoid_1Sigmoid%lstm_814/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/mulMul$lstm_814/lstm_cell_673/Sigmoid_1:y:0lstm_814/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_814/lstm_cell_673/ReluRelu%lstm_814/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/mul_1Mul"lstm_814/lstm_cell_673/Sigmoid:y:0)lstm_814/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/add_1AddV2lstm_814/lstm_cell_673/mul:z:0 lstm_814/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_814/lstm_cell_673/Sigmoid_2Sigmoid%lstm_814/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_814/lstm_cell_673/Relu_1Relu lstm_814/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/mul_2Mul$lstm_814/lstm_cell_673/Sigmoid_2:y:0+lstm_814/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_814/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_814/TensorArrayV2_1TensorListReserve/lstm_814/TensorArrayV2_1/element_shape:output:0!lstm_814/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_814/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_814/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_814/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_814/whileWhile$lstm_814/while/loop_counter:output:0*lstm_814/while/maximum_iterations:output:0lstm_814/time:output:0!lstm_814/TensorArrayV2_1:handle:0lstm_814/zeros:output:0lstm_814/zeros_1:output:0!lstm_814/strided_slice_1:output:0@lstm_814/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_814_lstm_cell_673_matmul_readvariableop_resource7lstm_814_lstm_cell_673_matmul_1_readvariableop_resource6lstm_814_lstm_cell_673_biasadd_readvariableop_resource*
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
lstm_814_while_body_4080489*'
condR
lstm_814_while_cond_4080488*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_814/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_814/TensorArrayV2Stack/TensorListStackTensorListStacklstm_814/while:output:3Blstm_814/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_814/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_814/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_814/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_slice_3StridedSlice4lstm_814/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_814/strided_slice_3/stack:output:0)lstm_814/strided_slice_3/stack_1:output:0)lstm_814/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_814/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_814/transpose_1	Transpose4lstm_814/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_814/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_814/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_815/ShapeShapelstm_814/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_815/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_815/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_815/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_sliceStridedSlicelstm_815/Shape:output:0%lstm_815/strided_slice/stack:output:0'lstm_815/strided_slice/stack_1:output:0'lstm_815/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_815/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_815/zeros/packedPacklstm_815/strided_slice:output:0 lstm_815/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_815/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_815/zerosFilllstm_815/zeros/packed:output:0lstm_815/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_815/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_815/zeros_1/packedPacklstm_815/strided_slice:output:0"lstm_815/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_815/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_815/zeros_1Fill lstm_815/zeros_1/packed:output:0lstm_815/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_815/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_815/transpose	Transposelstm_814/transpose_1:y:0 lstm_815/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_815/Shape_1Shapelstm_815/transpose:y:0*
T0*
_output_shapes
:h
lstm_815/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_815/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_815/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_slice_1StridedSlicelstm_815/Shape_1:output:0'lstm_815/strided_slice_1/stack:output:0)lstm_815/strided_slice_1/stack_1:output:0)lstm_815/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_815/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_815/TensorArrayV2TensorListReserve-lstm_815/TensorArrayV2/element_shape:output:0!lstm_815/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_815/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_815/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_815/transpose:y:0Glstm_815/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_815/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_815/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_815/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_slice_2StridedSlicelstm_815/transpose:y:0'lstm_815/strided_slice_2/stack:output:0)lstm_815/strided_slice_2/stack_1:output:0)lstm_815/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_815/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp5lstm_815_lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_815/lstm_cell_674/MatMulMatMul!lstm_815/strided_slice_2:output:04lstm_815/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp7lstm_815_lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_815/lstm_cell_674/MatMul_1MatMullstm_815/zeros:output:06lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_815/lstm_cell_674/addAddV2'lstm_815/lstm_cell_674/MatMul:product:0)lstm_815/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp6lstm_815_lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_815/lstm_cell_674/BiasAddBiasAddlstm_815/lstm_cell_674/add:z:05lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_815/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_815/lstm_cell_674/splitSplit/lstm_815/lstm_cell_674/split/split_dim:output:0'lstm_815/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_815/lstm_cell_674/SigmoidSigmoid%lstm_815/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_815/lstm_cell_674/Sigmoid_1Sigmoid%lstm_815/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/mulMul$lstm_815/lstm_cell_674/Sigmoid_1:y:0lstm_815/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_815/lstm_cell_674/ReluRelu%lstm_815/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/mul_1Mul"lstm_815/lstm_cell_674/Sigmoid:y:0)lstm_815/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/add_1AddV2lstm_815/lstm_cell_674/mul:z:0 lstm_815/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_815/lstm_cell_674/Sigmoid_2Sigmoid%lstm_815/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_815/lstm_cell_674/Relu_1Relu lstm_815/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/mul_2Mul$lstm_815/lstm_cell_674/Sigmoid_2:y:0+lstm_815/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_815/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_815/TensorArrayV2_1TensorListReserve/lstm_815/TensorArrayV2_1/element_shape:output:0!lstm_815/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_815/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_815/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_815/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_815/whileWhile$lstm_815/while/loop_counter:output:0*lstm_815/while/maximum_iterations:output:0lstm_815/time:output:0!lstm_815/TensorArrayV2_1:handle:0lstm_815/zeros:output:0lstm_815/zeros_1:output:0!lstm_815/strided_slice_1:output:0@lstm_815/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_815_lstm_cell_674_matmul_readvariableop_resource7lstm_815_lstm_cell_674_matmul_1_readvariableop_resource6lstm_815_lstm_cell_674_biasadd_readvariableop_resource*
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
lstm_815_while_body_4080628*'
condR
lstm_815_while_cond_4080627*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_815/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_815/TensorArrayV2Stack/TensorListStackTensorListStacklstm_815/while:output:3Blstm_815/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_815/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_815/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_815/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_slice_3StridedSlice4lstm_815/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_815/strided_slice_3/stack:output:0)lstm_815/strided_slice_3/stack_1:output:0)lstm_815/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_815/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_815/transpose_1	Transpose4lstm_815/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_815/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_815/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_271/MatMul/ReadVariableOpReadVariableOp(dense_271_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_271/MatMulMatMul!lstm_815/strided_slice_3:output:0'dense_271/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_271/BiasAdd/ReadVariableOpReadVariableOp)dense_271_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_271/BiasAddBiasAdddense_271/MatMul:product:0(dense_271/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_271/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_271/BiasAdd/ReadVariableOp ^dense_271/MatMul/ReadVariableOp.^lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp-^lstm_813/lstm_cell_672/MatMul/ReadVariableOp/^lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp^lstm_813/while.^lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp-^lstm_814/lstm_cell_673/MatMul/ReadVariableOp/^lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp^lstm_814/while.^lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp-^lstm_815/lstm_cell_674/MatMul/ReadVariableOp/^lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp^lstm_815/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_271/BiasAdd/ReadVariableOp dense_271/BiasAdd/ReadVariableOp2B
dense_271/MatMul/ReadVariableOpdense_271/MatMul/ReadVariableOp2^
-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp2\
,lstm_813/lstm_cell_672/MatMul/ReadVariableOp,lstm_813/lstm_cell_672/MatMul/ReadVariableOp2`
.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp2 
lstm_813/whilelstm_813/while2^
-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp2\
,lstm_814/lstm_cell_673/MatMul/ReadVariableOp,lstm_814/lstm_cell_673/MatMul/ReadVariableOp2`
.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp2 
lstm_814/whilelstm_814/while2^
-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp2\
,lstm_815/lstm_cell_674/MatMul/ReadVariableOp,lstm_815/lstm_cell_674/MatMul/ReadVariableOp2`
.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp2 
lstm_815/whilelstm_815/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4078758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_674_4078782_0:2(/
while_lstm_cell_674_4078784_0:
(+
while_lstm_cell_674_4078786_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_674_4078782:2(-
while_lstm_cell_674_4078784:
()
while_lstm_cell_674_4078786:(??+while/lstm_cell_674/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_674/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_674_4078782_0while_lstm_cell_674_4078784_0while_lstm_cell_674_4078786_0*
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078744?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_674/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_674/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_674/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_674_4078782while_lstm_cell_674_4078782_0"<
while_lstm_cell_674_4078784while_lstm_cell_674_4078784_0"<
while_lstm_cell_674_4078786while_lstm_cell_674_4078786_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_674/StatefulPartitionedCall+while/lstm_cell_674/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4081676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4081676___redundant_placeholder05
1while_while_cond_4081676___redundant_placeholder15
1while_while_cond_4081676___redundant_placeholder25
1while_while_cond_4081676___redundant_placeholder3
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
while_body_4082909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_674_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_674_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_674_matmul_readvariableop_resource:2(F
4while_lstm_cell_674_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_674_biasadd_readvariableop_resource:(??*while/lstm_cell_674/BiasAdd/ReadVariableOp?)while/lstm_cell_674/MatMul/ReadVariableOp?+while/lstm_cell_674/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_674/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_674/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_674/addAddV2$while/lstm_cell_674/MatMul:product:0&while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_674/BiasAddBiasAddwhile/lstm_cell_674/add:z:02while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_674/splitSplit,while/lstm_cell_674/split/split_dim:output:0$while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_674/SigmoidSigmoid"while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_1Sigmoid"while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mulMul!while/lstm_cell_674/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_674/ReluRelu"while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_1Mulwhile/lstm_cell_674/Sigmoid:y:0&while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/add_1AddV2while/lstm_cell_674/mul:z:0while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_2Sigmoid"while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_674/Relu_1Reluwhile/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_2Mul!while/lstm_cell_674/Sigmoid_2:y:0(while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_674/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_674/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_674/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_674/BiasAdd/ReadVariableOp*^while/lstm_cell_674/MatMul/ReadVariableOp,^while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_674_biasadd_readvariableop_resource5while_lstm_cell_674_biasadd_readvariableop_resource_0"n
4while_lstm_cell_674_matmul_1_readvariableop_resource6while_lstm_cell_674_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_674_matmul_readvariableop_resource4while_lstm_cell_674_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_674/BiasAdd/ReadVariableOp*while/lstm_cell_674/BiasAdd/ReadVariableOp2V
)while/lstm_cell_674/MatMul/ReadVariableOp)while/lstm_cell_674/MatMul/ReadVariableOp2Z
+while/lstm_cell_674/MatMul_1/ReadVariableOp+while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4082149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4082149___redundant_placeholder05
1while_while_cond_4082149___redundant_placeholder15
1while_while_cond_4082149___redundant_placeholder25
1while_while_cond_4082149___redundant_placeholder3
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
*__inference_lstm_813_layer_call_fn_4081156
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4078127|
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
?W
?
 __inference__traced_save_4083449
file_prefix/
+savev2_dense_271_kernel_read_readvariableop-
)savev2_dense_271_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_813_lstm_cell_813_kernel_read_readvariableopF
Bsavev2_lstm_813_lstm_cell_813_recurrent_kernel_read_readvariableop:
6savev2_lstm_813_lstm_cell_813_bias_read_readvariableop<
8savev2_lstm_814_lstm_cell_814_kernel_read_readvariableopF
Bsavev2_lstm_814_lstm_cell_814_recurrent_kernel_read_readvariableop:
6savev2_lstm_814_lstm_cell_814_bias_read_readvariableop<
8savev2_lstm_815_lstm_cell_815_kernel_read_readvariableopF
Bsavev2_lstm_815_lstm_cell_815_recurrent_kernel_read_readvariableop:
6savev2_lstm_815_lstm_cell_815_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_271_kernel_m_read_readvariableop4
0savev2_adam_dense_271_bias_m_read_readvariableopC
?savev2_adam_lstm_813_lstm_cell_813_kernel_m_read_readvariableopM
Isavev2_adam_lstm_813_lstm_cell_813_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_813_lstm_cell_813_bias_m_read_readvariableopC
?savev2_adam_lstm_814_lstm_cell_814_kernel_m_read_readvariableopM
Isavev2_adam_lstm_814_lstm_cell_814_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_814_lstm_cell_814_bias_m_read_readvariableopC
?savev2_adam_lstm_815_lstm_cell_815_kernel_m_read_readvariableopM
Isavev2_adam_lstm_815_lstm_cell_815_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_815_lstm_cell_815_bias_m_read_readvariableop6
2savev2_adam_dense_271_kernel_v_read_readvariableop4
0savev2_adam_dense_271_bias_v_read_readvariableopC
?savev2_adam_lstm_813_lstm_cell_813_kernel_v_read_readvariableopM
Isavev2_adam_lstm_813_lstm_cell_813_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_813_lstm_cell_813_bias_v_read_readvariableopC
?savev2_adam_lstm_814_lstm_cell_814_kernel_v_read_readvariableopM
Isavev2_adam_lstm_814_lstm_cell_814_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_814_lstm_cell_814_bias_v_read_readvariableopC
?savev2_adam_lstm_815_lstm_cell_815_kernel_v_read_readvariableopM
Isavev2_adam_lstm_815_lstm_cell_815_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_815_lstm_cell_815_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_271_kernel_read_readvariableop)savev2_dense_271_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_813_lstm_cell_813_kernel_read_readvariableopBsavev2_lstm_813_lstm_cell_813_recurrent_kernel_read_readvariableop6savev2_lstm_813_lstm_cell_813_bias_read_readvariableop8savev2_lstm_814_lstm_cell_814_kernel_read_readvariableopBsavev2_lstm_814_lstm_cell_814_recurrent_kernel_read_readvariableop6savev2_lstm_814_lstm_cell_814_bias_read_readvariableop8savev2_lstm_815_lstm_cell_815_kernel_read_readvariableopBsavev2_lstm_815_lstm_cell_815_recurrent_kernel_read_readvariableop6savev2_lstm_815_lstm_cell_815_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_271_kernel_m_read_readvariableop0savev2_adam_dense_271_bias_m_read_readvariableop?savev2_adam_lstm_813_lstm_cell_813_kernel_m_read_readvariableopIsavev2_adam_lstm_813_lstm_cell_813_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_813_lstm_cell_813_bias_m_read_readvariableop?savev2_adam_lstm_814_lstm_cell_814_kernel_m_read_readvariableopIsavev2_adam_lstm_814_lstm_cell_814_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_814_lstm_cell_814_bias_m_read_readvariableop?savev2_adam_lstm_815_lstm_cell_815_kernel_m_read_readvariableopIsavev2_adam_lstm_815_lstm_cell_815_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_815_lstm_cell_815_bias_m_read_readvariableop2savev2_adam_dense_271_kernel_v_read_readvariableop0savev2_adam_dense_271_bias_v_read_readvariableop?savev2_adam_lstm_813_lstm_cell_813_kernel_v_read_readvariableopIsavev2_adam_lstm_813_lstm_cell_813_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_813_lstm_cell_813_bias_v_read_readvariableop?savev2_adam_lstm_814_lstm_cell_814_kernel_v_read_readvariableopIsavev2_adam_lstm_814_lstm_cell_814_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_814_lstm_cell_814_bias_v_read_readvariableop?savev2_adam_lstm_815_lstm_cell_815_kernel_v_read_readvariableopIsavev2_adam_lstm_815_lstm_cell_815_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_815_lstm_cell_815_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4079392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_674_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_674_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_674_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_674_matmul_readvariableop_resource:2(F
4while_lstm_cell_674_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_674_biasadd_readvariableop_resource:(??*while/lstm_cell_674/BiasAdd/ReadVariableOp?)while/lstm_cell_674/MatMul/ReadVariableOp?+while/lstm_cell_674/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_674_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_674/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_674_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_674/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_674/addAddV2$while/lstm_cell_674/MatMul:product:0&while/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_674_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_674/BiasAddBiasAddwhile/lstm_cell_674/add:z:02while/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_674/splitSplit,while/lstm_cell_674/split/split_dim:output:0$while/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_674/SigmoidSigmoid"while/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_1Sigmoid"while/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mulMul!while/lstm_cell_674/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_674/ReluRelu"while/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_1Mulwhile/lstm_cell_674/Sigmoid:y:0&while/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/add_1AddV2while/lstm_cell_674/mul:z:0while/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_674/Sigmoid_2Sigmoid"while/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_674/Relu_1Reluwhile/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_674/mul_2Mul!while/lstm_cell_674/Sigmoid_2:y:0(while/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_674/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_674/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_674/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_674/BiasAdd/ReadVariableOp*^while/lstm_cell_674/MatMul/ReadVariableOp,^while/lstm_cell_674/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_674_biasadd_readvariableop_resource5while_lstm_cell_674_biasadd_readvariableop_resource_0"n
4while_lstm_cell_674_matmul_1_readvariableop_resource6while_lstm_cell_674_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_674_matmul_readvariableop_resource4while_lstm_cell_674_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_674/BiasAdd/ReadVariableOp*while/lstm_cell_674/BiasAdd/ReadVariableOp2V
)while/lstm_cell_674/MatMul/ReadVariableOp)while/lstm_cell_674/MatMul/ReadVariableOp2Z
+while/lstm_cell_674/MatMul_1/ReadVariableOp+while/lstm_cell_674/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079692

inputs>
,lstm_cell_674_matmul_readvariableop_resource:2(@
.lstm_cell_674_matmul_1_readvariableop_resource:
(;
-lstm_cell_674_biasadd_readvariableop_resource:(
identity??$lstm_cell_674/BiasAdd/ReadVariableOp?#lstm_cell_674/MatMul/ReadVariableOp?%lstm_cell_674/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_674/MatMul/ReadVariableOpReadVariableOp,lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_674/MatMulMatMulstrided_slice_2:output:0+lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_674/MatMul_1MatMulzeros:output:0-lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_674/addAddV2lstm_cell_674/MatMul:product:0 lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_674/BiasAddBiasAddlstm_cell_674/add:z:0,lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_674/splitSplit&lstm_cell_674/split/split_dim:output:0lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_674/SigmoidSigmoidlstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_1Sigmoidlstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_674/mulMullstm_cell_674/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_674/ReluRelulstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_1Mullstm_cell_674/Sigmoid:y:0 lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_674/add_1AddV2lstm_cell_674/mul:z:0lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_674/Sigmoid_2Sigmoidlstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_674/Relu_1Relulstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_674/mul_2Mullstm_cell_674/Sigmoid_2:y:0"lstm_cell_674/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_674_matmul_readvariableop_resource.lstm_cell_674_matmul_1_readvariableop_resource-lstm_cell_674_biasadd_readvariableop_resource*
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
while_body_4079608*
condR
while_cond_4079607*K
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
NoOpNoOp%^lstm_cell_674/BiasAdd/ReadVariableOp$^lstm_cell_674/MatMul/ReadVariableOp&^lstm_cell_674/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_674/BiasAdd/ReadVariableOp$lstm_cell_674/BiasAdd/ReadVariableOp2J
#lstm_cell_674/MatMul/ReadVariableOp#lstm_cell_674/MatMul/ReadVariableOp2N
%lstm_cell_674/MatMul_1/ReadVariableOp%lstm_cell_674/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_814_layer_call_and_return_conditional_losses_4078668

inputs(
lstm_cell_673_4078586:	d?(
lstm_cell_673_4078588:	2?$
lstm_cell_673_4078590:	?
identity??%lstm_cell_673/StatefulPartitionedCall?while;
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
%lstm_cell_673/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_673_4078586lstm_cell_673_4078588lstm_cell_673_4078590*
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078540n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_673_4078586lstm_cell_673_4078588lstm_cell_673_4078590*
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
while_body_4078599*
condR
while_cond_4078598*K
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
NoOpNoOp&^lstm_cell_673/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_673/StatefulPartitionedCall%lstm_cell_673/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_815_layer_call_fn_4082388
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4078827o
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
??
?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4081145

inputsH
5lstm_813_lstm_cell_672_matmul_readvariableop_resource:	?J
7lstm_813_lstm_cell_672_matmul_1_readvariableop_resource:	d?E
6lstm_813_lstm_cell_672_biasadd_readvariableop_resource:	?H
5lstm_814_lstm_cell_673_matmul_readvariableop_resource:	d?J
7lstm_814_lstm_cell_673_matmul_1_readvariableop_resource:	2?E
6lstm_814_lstm_cell_673_biasadd_readvariableop_resource:	?G
5lstm_815_lstm_cell_674_matmul_readvariableop_resource:2(I
7lstm_815_lstm_cell_674_matmul_1_readvariableop_resource:
(D
6lstm_815_lstm_cell_674_biasadd_readvariableop_resource:(:
(dense_271_matmul_readvariableop_resource:
7
)dense_271_biasadd_readvariableop_resource:
identity?? dense_271/BiasAdd/ReadVariableOp?dense_271/MatMul/ReadVariableOp?-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp?,lstm_813/lstm_cell_672/MatMul/ReadVariableOp?.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp?lstm_813/while?-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp?,lstm_814/lstm_cell_673/MatMul/ReadVariableOp?.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp?lstm_814/while?-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp?,lstm_815/lstm_cell_674/MatMul/ReadVariableOp?.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp?lstm_815/whileD
lstm_813/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_813/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_813/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_813/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_sliceStridedSlicelstm_813/Shape:output:0%lstm_813/strided_slice/stack:output:0'lstm_813/strided_slice/stack_1:output:0'lstm_813/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_813/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_813/zeros/packedPacklstm_813/strided_slice:output:0 lstm_813/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_813/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_813/zerosFilllstm_813/zeros/packed:output:0lstm_813/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_813/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_813/zeros_1/packedPacklstm_813/strided_slice:output:0"lstm_813/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_813/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_813/zeros_1Fill lstm_813/zeros_1/packed:output:0lstm_813/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_813/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_813/transpose	Transposeinputs lstm_813/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_813/Shape_1Shapelstm_813/transpose:y:0*
T0*
_output_shapes
:h
lstm_813/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_813/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_813/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_slice_1StridedSlicelstm_813/Shape_1:output:0'lstm_813/strided_slice_1/stack:output:0)lstm_813/strided_slice_1/stack_1:output:0)lstm_813/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_813/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_813/TensorArrayV2TensorListReserve-lstm_813/TensorArrayV2/element_shape:output:0!lstm_813/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_813/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_813/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_813/transpose:y:0Glstm_813/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_813/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_813/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_813/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_slice_2StridedSlicelstm_813/transpose:y:0'lstm_813/strided_slice_2/stack:output:0)lstm_813/strided_slice_2/stack_1:output:0)lstm_813/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_813/lstm_cell_672/MatMul/ReadVariableOpReadVariableOp5lstm_813_lstm_cell_672_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_813/lstm_cell_672/MatMulMatMul!lstm_813/strided_slice_2:output:04lstm_813/lstm_cell_672/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOpReadVariableOp7lstm_813_lstm_cell_672_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_813/lstm_cell_672/MatMul_1MatMullstm_813/zeros:output:06lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_813/lstm_cell_672/addAddV2'lstm_813/lstm_cell_672/MatMul:product:0)lstm_813/lstm_cell_672/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOpReadVariableOp6lstm_813_lstm_cell_672_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_813/lstm_cell_672/BiasAddBiasAddlstm_813/lstm_cell_672/add:z:05lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_813/lstm_cell_672/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_813/lstm_cell_672/splitSplit/lstm_813/lstm_cell_672/split/split_dim:output:0'lstm_813/lstm_cell_672/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_813/lstm_cell_672/SigmoidSigmoid%lstm_813/lstm_cell_672/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_813/lstm_cell_672/Sigmoid_1Sigmoid%lstm_813/lstm_cell_672/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/mulMul$lstm_813/lstm_cell_672/Sigmoid_1:y:0lstm_813/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_813/lstm_cell_672/ReluRelu%lstm_813/lstm_cell_672/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/mul_1Mul"lstm_813/lstm_cell_672/Sigmoid:y:0)lstm_813/lstm_cell_672/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/add_1AddV2lstm_813/lstm_cell_672/mul:z:0 lstm_813/lstm_cell_672/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_813/lstm_cell_672/Sigmoid_2Sigmoid%lstm_813/lstm_cell_672/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_813/lstm_cell_672/Relu_1Relu lstm_813/lstm_cell_672/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_813/lstm_cell_672/mul_2Mul$lstm_813/lstm_cell_672/Sigmoid_2:y:0+lstm_813/lstm_cell_672/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_813/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_813/TensorArrayV2_1TensorListReserve/lstm_813/TensorArrayV2_1/element_shape:output:0!lstm_813/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_813/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_813/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_813/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_813/whileWhile$lstm_813/while/loop_counter:output:0*lstm_813/while/maximum_iterations:output:0lstm_813/time:output:0!lstm_813/TensorArrayV2_1:handle:0lstm_813/zeros:output:0lstm_813/zeros_1:output:0!lstm_813/strided_slice_1:output:0@lstm_813/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_813_lstm_cell_672_matmul_readvariableop_resource7lstm_813_lstm_cell_672_matmul_1_readvariableop_resource6lstm_813_lstm_cell_672_biasadd_readvariableop_resource*
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
lstm_813_while_body_4080777*'
condR
lstm_813_while_cond_4080776*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_813/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_813/TensorArrayV2Stack/TensorListStackTensorListStacklstm_813/while:output:3Blstm_813/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_813/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_813/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_813/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_813/strided_slice_3StridedSlice4lstm_813/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_813/strided_slice_3/stack:output:0)lstm_813/strided_slice_3/stack_1:output:0)lstm_813/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_813/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_813/transpose_1	Transpose4lstm_813/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_813/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_813/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_814/ShapeShapelstm_813/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_814/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_814/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_814/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_sliceStridedSlicelstm_814/Shape:output:0%lstm_814/strided_slice/stack:output:0'lstm_814/strided_slice/stack_1:output:0'lstm_814/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_814/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_814/zeros/packedPacklstm_814/strided_slice:output:0 lstm_814/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_814/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_814/zerosFilllstm_814/zeros/packed:output:0lstm_814/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_814/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_814/zeros_1/packedPacklstm_814/strided_slice:output:0"lstm_814/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_814/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_814/zeros_1Fill lstm_814/zeros_1/packed:output:0lstm_814/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_814/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_814/transpose	Transposelstm_813/transpose_1:y:0 lstm_814/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_814/Shape_1Shapelstm_814/transpose:y:0*
T0*
_output_shapes
:h
lstm_814/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_814/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_814/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_slice_1StridedSlicelstm_814/Shape_1:output:0'lstm_814/strided_slice_1/stack:output:0)lstm_814/strided_slice_1/stack_1:output:0)lstm_814/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_814/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_814/TensorArrayV2TensorListReserve-lstm_814/TensorArrayV2/element_shape:output:0!lstm_814/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_814/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_814/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_814/transpose:y:0Glstm_814/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_814/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_814/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_814/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_slice_2StridedSlicelstm_814/transpose:y:0'lstm_814/strided_slice_2/stack:output:0)lstm_814/strided_slice_2/stack_1:output:0)lstm_814/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_814/lstm_cell_673/MatMul/ReadVariableOpReadVariableOp5lstm_814_lstm_cell_673_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_814/lstm_cell_673/MatMulMatMul!lstm_814/strided_slice_2:output:04lstm_814/lstm_cell_673/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOpReadVariableOp7lstm_814_lstm_cell_673_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_814/lstm_cell_673/MatMul_1MatMullstm_814/zeros:output:06lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_814/lstm_cell_673/addAddV2'lstm_814/lstm_cell_673/MatMul:product:0)lstm_814/lstm_cell_673/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOpReadVariableOp6lstm_814_lstm_cell_673_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_814/lstm_cell_673/BiasAddBiasAddlstm_814/lstm_cell_673/add:z:05lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_814/lstm_cell_673/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_814/lstm_cell_673/splitSplit/lstm_814/lstm_cell_673/split/split_dim:output:0'lstm_814/lstm_cell_673/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_814/lstm_cell_673/SigmoidSigmoid%lstm_814/lstm_cell_673/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_814/lstm_cell_673/Sigmoid_1Sigmoid%lstm_814/lstm_cell_673/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/mulMul$lstm_814/lstm_cell_673/Sigmoid_1:y:0lstm_814/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_814/lstm_cell_673/ReluRelu%lstm_814/lstm_cell_673/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/mul_1Mul"lstm_814/lstm_cell_673/Sigmoid:y:0)lstm_814/lstm_cell_673/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/add_1AddV2lstm_814/lstm_cell_673/mul:z:0 lstm_814/lstm_cell_673/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_814/lstm_cell_673/Sigmoid_2Sigmoid%lstm_814/lstm_cell_673/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_814/lstm_cell_673/Relu_1Relu lstm_814/lstm_cell_673/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_814/lstm_cell_673/mul_2Mul$lstm_814/lstm_cell_673/Sigmoid_2:y:0+lstm_814/lstm_cell_673/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_814/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_814/TensorArrayV2_1TensorListReserve/lstm_814/TensorArrayV2_1/element_shape:output:0!lstm_814/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_814/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_814/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_814/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_814/whileWhile$lstm_814/while/loop_counter:output:0*lstm_814/while/maximum_iterations:output:0lstm_814/time:output:0!lstm_814/TensorArrayV2_1:handle:0lstm_814/zeros:output:0lstm_814/zeros_1:output:0!lstm_814/strided_slice_1:output:0@lstm_814/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_814_lstm_cell_673_matmul_readvariableop_resource7lstm_814_lstm_cell_673_matmul_1_readvariableop_resource6lstm_814_lstm_cell_673_biasadd_readvariableop_resource*
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
lstm_814_while_body_4080916*'
condR
lstm_814_while_cond_4080915*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_814/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_814/TensorArrayV2Stack/TensorListStackTensorListStacklstm_814/while:output:3Blstm_814/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_814/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_814/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_814/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_814/strided_slice_3StridedSlice4lstm_814/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_814/strided_slice_3/stack:output:0)lstm_814/strided_slice_3/stack_1:output:0)lstm_814/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_814/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_814/transpose_1	Transpose4lstm_814/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_814/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_814/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_815/ShapeShapelstm_814/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_815/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_815/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_815/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_sliceStridedSlicelstm_815/Shape:output:0%lstm_815/strided_slice/stack:output:0'lstm_815/strided_slice/stack_1:output:0'lstm_815/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_815/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_815/zeros/packedPacklstm_815/strided_slice:output:0 lstm_815/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_815/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_815/zerosFilllstm_815/zeros/packed:output:0lstm_815/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_815/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_815/zeros_1/packedPacklstm_815/strided_slice:output:0"lstm_815/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_815/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_815/zeros_1Fill lstm_815/zeros_1/packed:output:0lstm_815/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_815/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_815/transpose	Transposelstm_814/transpose_1:y:0 lstm_815/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_815/Shape_1Shapelstm_815/transpose:y:0*
T0*
_output_shapes
:h
lstm_815/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_815/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_815/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_slice_1StridedSlicelstm_815/Shape_1:output:0'lstm_815/strided_slice_1/stack:output:0)lstm_815/strided_slice_1/stack_1:output:0)lstm_815/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_815/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_815/TensorArrayV2TensorListReserve-lstm_815/TensorArrayV2/element_shape:output:0!lstm_815/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_815/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_815/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_815/transpose:y:0Glstm_815/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_815/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_815/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_815/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_slice_2StridedSlicelstm_815/transpose:y:0'lstm_815/strided_slice_2/stack:output:0)lstm_815/strided_slice_2/stack_1:output:0)lstm_815/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_815/lstm_cell_674/MatMul/ReadVariableOpReadVariableOp5lstm_815_lstm_cell_674_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_815/lstm_cell_674/MatMulMatMul!lstm_815/strided_slice_2:output:04lstm_815/lstm_cell_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOpReadVariableOp7lstm_815_lstm_cell_674_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_815/lstm_cell_674/MatMul_1MatMullstm_815/zeros:output:06lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_815/lstm_cell_674/addAddV2'lstm_815/lstm_cell_674/MatMul:product:0)lstm_815/lstm_cell_674/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOpReadVariableOp6lstm_815_lstm_cell_674_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_815/lstm_cell_674/BiasAddBiasAddlstm_815/lstm_cell_674/add:z:05lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_815/lstm_cell_674/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_815/lstm_cell_674/splitSplit/lstm_815/lstm_cell_674/split/split_dim:output:0'lstm_815/lstm_cell_674/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_815/lstm_cell_674/SigmoidSigmoid%lstm_815/lstm_cell_674/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_815/lstm_cell_674/Sigmoid_1Sigmoid%lstm_815/lstm_cell_674/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/mulMul$lstm_815/lstm_cell_674/Sigmoid_1:y:0lstm_815/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_815/lstm_cell_674/ReluRelu%lstm_815/lstm_cell_674/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/mul_1Mul"lstm_815/lstm_cell_674/Sigmoid:y:0)lstm_815/lstm_cell_674/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/add_1AddV2lstm_815/lstm_cell_674/mul:z:0 lstm_815/lstm_cell_674/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_815/lstm_cell_674/Sigmoid_2Sigmoid%lstm_815/lstm_cell_674/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_815/lstm_cell_674/Relu_1Relu lstm_815/lstm_cell_674/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_815/lstm_cell_674/mul_2Mul$lstm_815/lstm_cell_674/Sigmoid_2:y:0+lstm_815/lstm_cell_674/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_815/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_815/TensorArrayV2_1TensorListReserve/lstm_815/TensorArrayV2_1/element_shape:output:0!lstm_815/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_815/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_815/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_815/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_815/whileWhile$lstm_815/while/loop_counter:output:0*lstm_815/while/maximum_iterations:output:0lstm_815/time:output:0!lstm_815/TensorArrayV2_1:handle:0lstm_815/zeros:output:0lstm_815/zeros_1:output:0!lstm_815/strided_slice_1:output:0@lstm_815/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_815_lstm_cell_674_matmul_readvariableop_resource7lstm_815_lstm_cell_674_matmul_1_readvariableop_resource6lstm_815_lstm_cell_674_biasadd_readvariableop_resource*
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
lstm_815_while_body_4081055*'
condR
lstm_815_while_cond_4081054*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_815/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_815/TensorArrayV2Stack/TensorListStackTensorListStacklstm_815/while:output:3Blstm_815/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_815/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_815/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_815/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_815/strided_slice_3StridedSlice4lstm_815/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_815/strided_slice_3/stack:output:0)lstm_815/strided_slice_3/stack_1:output:0)lstm_815/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_815/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_815/transpose_1	Transpose4lstm_815/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_815/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_815/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_271/MatMul/ReadVariableOpReadVariableOp(dense_271_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_271/MatMulMatMul!lstm_815/strided_slice_3:output:0'dense_271/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_271/BiasAdd/ReadVariableOpReadVariableOp)dense_271_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_271/BiasAddBiasAdddense_271/MatMul:product:0(dense_271/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_271/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_271/BiasAdd/ReadVariableOp ^dense_271/MatMul/ReadVariableOp.^lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp-^lstm_813/lstm_cell_672/MatMul/ReadVariableOp/^lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp^lstm_813/while.^lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp-^lstm_814/lstm_cell_673/MatMul/ReadVariableOp/^lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp^lstm_814/while.^lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp-^lstm_815/lstm_cell_674/MatMul/ReadVariableOp/^lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp^lstm_815/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_271/BiasAdd/ReadVariableOp dense_271/BiasAdd/ReadVariableOp2B
dense_271/MatMul/ReadVariableOpdense_271/MatMul/ReadVariableOp2^
-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp-lstm_813/lstm_cell_672/BiasAdd/ReadVariableOp2\
,lstm_813/lstm_cell_672/MatMul/ReadVariableOp,lstm_813/lstm_cell_672/MatMul/ReadVariableOp2`
.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp.lstm_813/lstm_cell_672/MatMul_1/ReadVariableOp2 
lstm_813/whilelstm_813/while2^
-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp-lstm_814/lstm_cell_673/BiasAdd/ReadVariableOp2\
,lstm_814/lstm_cell_673/MatMul/ReadVariableOp,lstm_814/lstm_cell_673/MatMul/ReadVariableOp2`
.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp.lstm_814/lstm_cell_673/MatMul_1/ReadVariableOp2 
lstm_814/whilelstm_814/while2^
-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp-lstm_815/lstm_cell_674/BiasAdd/ReadVariableOp2\
,lstm_815/lstm_cell_674/MatMul/ReadVariableOp,lstm_815/lstm_cell_674/MatMul/ReadVariableOp2`
.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp.lstm_815/lstm_cell_674/MatMul_1/ReadVariableOp2 
lstm_815/whilelstm_815/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_815_while_cond_4080627.
*lstm_815_while_lstm_815_while_loop_counter4
0lstm_815_while_lstm_815_while_maximum_iterations
lstm_815_while_placeholder 
lstm_815_while_placeholder_1 
lstm_815_while_placeholder_2 
lstm_815_while_placeholder_30
,lstm_815_while_less_lstm_815_strided_slice_1G
Clstm_815_while_lstm_815_while_cond_4080627___redundant_placeholder0G
Clstm_815_while_lstm_815_while_cond_4080627___redundant_placeholder1G
Clstm_815_while_lstm_815_while_cond_4080627___redundant_placeholder2G
Clstm_815_while_lstm_815_while_cond_4080627___redundant_placeholder3
lstm_815_while_identity
?
lstm_815/while/LessLesslstm_815_while_placeholder,lstm_815_while_less_lstm_815_strided_slice_1*
T0*
_output_shapes
: ]
lstm_815/while/IdentityIdentitylstm_815/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_815_while_identity lstm_815/while/Identity:output:0*(
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
while_cond_4079091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4079091___redundant_placeholder05
1while_while_cond_4079091___redundant_placeholder15
1while_while_cond_4079091___redundant_placeholder25
1while_while_cond_4079091___redundant_placeholder3
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
F__inference_dense_271_layer_call_and_return_conditional_losses_4083012

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
?
?
while_cond_4078948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4078948___redundant_placeholder05
1while_while_cond_4078948___redundant_placeholder15
1while_while_cond_4078948___redundant_placeholder25
1while_while_cond_4078948___redundant_placeholder3
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
?
E__inference_lstm_814_layer_call_and_return_conditional_losses_4078477

inputs(
lstm_cell_673_4078395:	d?(
lstm_cell_673_4078397:	2?$
lstm_cell_673_4078399:	?
identity??%lstm_cell_673/StatefulPartitionedCall?while;
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
%lstm_cell_673/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_673_4078395lstm_cell_673_4078397lstm_cell_673_4078399*
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4078394n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_673_4078395lstm_cell_673_4078397lstm_cell_673_4078399*
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
while_body_4078408*
condR
while_cond_4078407*K
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
NoOpNoOp&^lstm_cell_673/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_673/StatefulPartitionedCall%lstm_cell_673/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4083274

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
?
?
*sequential_271_lstm_813_while_cond_4077608L
Hsequential_271_lstm_813_while_sequential_271_lstm_813_while_loop_counterR
Nsequential_271_lstm_813_while_sequential_271_lstm_813_while_maximum_iterations-
)sequential_271_lstm_813_while_placeholder/
+sequential_271_lstm_813_while_placeholder_1/
+sequential_271_lstm_813_while_placeholder_2/
+sequential_271_lstm_813_while_placeholder_3N
Jsequential_271_lstm_813_while_less_sequential_271_lstm_813_strided_slice_1e
asequential_271_lstm_813_while_sequential_271_lstm_813_while_cond_4077608___redundant_placeholder0e
asequential_271_lstm_813_while_sequential_271_lstm_813_while_cond_4077608___redundant_placeholder1e
asequential_271_lstm_813_while_sequential_271_lstm_813_while_cond_4077608___redundant_placeholder2e
asequential_271_lstm_813_while_sequential_271_lstm_813_while_cond_4077608___redundant_placeholder3*
&sequential_271_lstm_813_while_identity
?
"sequential_271/lstm_813/while/LessLess)sequential_271_lstm_813_while_placeholderJsequential_271_lstm_813_while_less_sequential_271_lstm_813_strided_slice_1*
T0*
_output_shapes
: {
&sequential_271/lstm_813/while/IdentityIdentity&sequential_271/lstm_813/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_271_lstm_813_while_identity/sequential_271/lstm_813/while/Identity:output:0*(
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
while_cond_4081863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4081863___redundant_placeholder05
1while_while_cond_4081863___redundant_placeholder15
1while_while_cond_4081863___redundant_placeholder25
1while_while_cond_4081863___redundant_placeholder3
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
/__inference_lstm_cell_674_layer_call_fn_4083225

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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4078744o
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
?
?
*__inference_lstm_815_layer_call_fn_4082421

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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4079692o
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_813_input;
 serving_default_lstm_813_input:0?????????=
	dense_2710
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
2dense_271/kernel
:2dense_271/bias
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
0:.	?2lstm_813/lstm_cell_813/kernel
::8	d?2'lstm_813/lstm_cell_813/recurrent_kernel
*:(?2lstm_813/lstm_cell_813/bias
0:.	d?2lstm_814/lstm_cell_814/kernel
::8	2?2'lstm_814/lstm_cell_814/recurrent_kernel
*:(?2lstm_814/lstm_cell_814/bias
/:-2(2lstm_815/lstm_cell_815/kernel
9:7
(2'lstm_815/lstm_cell_815/recurrent_kernel
):'(2lstm_815/lstm_cell_815/bias
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
2Adam/dense_271/kernel/m
!:2Adam/dense_271/bias/m
5:3	?2$Adam/lstm_813/lstm_cell_813/kernel/m
?:=	d?2.Adam/lstm_813/lstm_cell_813/recurrent_kernel/m
/:-?2"Adam/lstm_813/lstm_cell_813/bias/m
5:3	d?2$Adam/lstm_814/lstm_cell_814/kernel/m
?:=	2?2.Adam/lstm_814/lstm_cell_814/recurrent_kernel/m
/:-?2"Adam/lstm_814/lstm_cell_814/bias/m
4:22(2$Adam/lstm_815/lstm_cell_815/kernel/m
>:<
(2.Adam/lstm_815/lstm_cell_815/recurrent_kernel/m
.:,(2"Adam/lstm_815/lstm_cell_815/bias/m
':%
2Adam/dense_271/kernel/v
!:2Adam/dense_271/bias/v
5:3	?2$Adam/lstm_813/lstm_cell_813/kernel/v
?:=	d?2.Adam/lstm_813/lstm_cell_813/recurrent_kernel/v
/:-?2"Adam/lstm_813/lstm_cell_813/bias/v
5:3	d?2$Adam/lstm_814/lstm_cell_814/kernel/v
?:=	2?2.Adam/lstm_814/lstm_cell_814/recurrent_kernel/v
/:-?2"Adam/lstm_814/lstm_cell_814/bias/v
4:22(2$Adam/lstm_815/lstm_cell_815/kernel/v
>:<
(2.Adam/lstm_815/lstm_cell_815/recurrent_kernel/v
.:,(2"Adam/lstm_815/lstm_cell_815/bias/v
?2?
0__inference_sequential_271_layer_call_fn_4079526
0__inference_sequential_271_layer_call_fn_4080264
0__inference_sequential_271_layer_call_fn_4080291
0__inference_sequential_271_layer_call_fn_4080142?
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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080718
K__inference_sequential_271_layer_call_and_return_conditional_losses_4081145
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080172
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080202?
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
"__inference__wrapped_model_4077977lstm_813_input"?
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
*__inference_lstm_813_layer_call_fn_4081156
*__inference_lstm_813_layer_call_fn_4081167
*__inference_lstm_813_layer_call_fn_4081178
*__inference_lstm_813_layer_call_fn_4081189?
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081332
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081475
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081618
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081761?
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
*__inference_lstm_814_layer_call_fn_4081772
*__inference_lstm_814_layer_call_fn_4081783
*__inference_lstm_814_layer_call_fn_4081794
*__inference_lstm_814_layer_call_fn_4081805?
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4081948
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082091
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082234
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082377?
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
*__inference_lstm_815_layer_call_fn_4082388
*__inference_lstm_815_layer_call_fn_4082399
*__inference_lstm_815_layer_call_fn_4082410
*__inference_lstm_815_layer_call_fn_4082421?
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082564
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082707
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082850
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082993?
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
+__inference_dense_271_layer_call_fn_4083002?
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
F__inference_dense_271_layer_call_and_return_conditional_losses_4083012?
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
%__inference_signature_wrapper_4080237lstm_813_input"?
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
/__inference_lstm_cell_672_layer_call_fn_4083029
/__inference_lstm_cell_672_layer_call_fn_4083046?
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4083078
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4083110?
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
/__inference_lstm_cell_673_layer_call_fn_4083127
/__inference_lstm_cell_673_layer_call_fn_4083144?
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4083176
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4083208?
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
/__inference_lstm_cell_674_layer_call_fn_4083225
/__inference_lstm_cell_674_layer_call_fn_4083242?
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4083274
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4083306?
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
"__inference__wrapped_model_4077977?-./012345!";?8
1?.
,?)
lstm_813_input?????????
? "5?2
0
	dense_271#? 
	dense_271??????????
F__inference_dense_271_layer_call_and_return_conditional_losses_4083012\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_271_layer_call_fn_4083002O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081332?-./O?L
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081475?-./O?L
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081618q-./??<
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
E__inference_lstm_813_layer_call_and_return_conditional_losses_4081761q-./??<
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
*__inference_lstm_813_layer_call_fn_4081156}-./O?L
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
*__inference_lstm_813_layer_call_fn_4081167}-./O?L
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
*__inference_lstm_813_layer_call_fn_4081178d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_813_layer_call_fn_4081189d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_814_layer_call_and_return_conditional_losses_4081948?012O?L
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082091?012O?L
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082234q012??<
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
E__inference_lstm_814_layer_call_and_return_conditional_losses_4082377q012??<
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
*__inference_lstm_814_layer_call_fn_4081772}012O?L
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
*__inference_lstm_814_layer_call_fn_4081783}012O?L
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
*__inference_lstm_814_layer_call_fn_4081794d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_814_layer_call_fn_4081805d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082564}345O?L
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082707}345O?L
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082850m345??<
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
E__inference_lstm_815_layer_call_and_return_conditional_losses_4082993m345??<
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
*__inference_lstm_815_layer_call_fn_4082388p345O?L
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
*__inference_lstm_815_layer_call_fn_4082399p345O?L
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
*__inference_lstm_815_layer_call_fn_4082410`345??<
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
*__inference_lstm_815_layer_call_fn_4082421`345??<
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4083078?-./??}
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
J__inference_lstm_cell_672_layer_call_and_return_conditional_losses_4083110?-./??}
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
/__inference_lstm_cell_672_layer_call_fn_4083029?-./??}
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
/__inference_lstm_cell_672_layer_call_fn_4083046?-./??}
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4083176?012??}
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
J__inference_lstm_cell_673_layer_call_and_return_conditional_losses_4083208?012??}
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
/__inference_lstm_cell_673_layer_call_fn_4083127?012??}
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
/__inference_lstm_cell_673_layer_call_fn_4083144?012??}
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4083274?345??}
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
J__inference_lstm_cell_674_layer_call_and_return_conditional_losses_4083306?345??}
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
/__inference_lstm_cell_674_layer_call_fn_4083225?345??}
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
/__inference_lstm_cell_674_layer_call_fn_4083242?345??}
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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080172y-./012345!"C?@
9?6
,?)
lstm_813_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080202y-./012345!"C?@
9?6
,?)
lstm_813_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_271_layer_call_and_return_conditional_losses_4080718q-./012345!";?8
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
K__inference_sequential_271_layer_call_and_return_conditional_losses_4081145q-./012345!";?8
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
0__inference_sequential_271_layer_call_fn_4079526l-./012345!"C?@
9?6
,?)
lstm_813_input?????????
p 

 
? "???????????
0__inference_sequential_271_layer_call_fn_4080142l-./012345!"C?@
9?6
,?)
lstm_813_input?????????
p

 
? "???????????
0__inference_sequential_271_layer_call_fn_4080264d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_271_layer_call_fn_4080291d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4080237?-./012345!"M?J
? 
C?@
>
lstm_813_input,?)
lstm_813_input?????????"5?2
0
	dense_271#? 
	dense_271?????????