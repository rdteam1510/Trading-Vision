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
dense_193/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_193/kernel
u
$dense_193/kernel/Read/ReadVariableOpReadVariableOpdense_193/kernel*
_output_shapes

:
*
dtype0
t
dense_193/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_193/bias
m
"dense_193/bias/Read/ReadVariableOpReadVariableOpdense_193/bias*
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
lstm_579/lstm_cell_579/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_579/lstm_cell_579/kernel
?
1lstm_579/lstm_cell_579/kernel/Read/ReadVariableOpReadVariableOplstm_579/lstm_cell_579/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_579/lstm_cell_579/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_579/lstm_cell_579/recurrent_kernel
?
;lstm_579/lstm_cell_579/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_579/lstm_cell_579/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_579/lstm_cell_579/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_579/lstm_cell_579/bias
?
/lstm_579/lstm_cell_579/bias/Read/ReadVariableOpReadVariableOplstm_579/lstm_cell_579/bias*
_output_shapes	
:?*
dtype0
?
lstm_580/lstm_cell_580/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_580/lstm_cell_580/kernel
?
1lstm_580/lstm_cell_580/kernel/Read/ReadVariableOpReadVariableOplstm_580/lstm_cell_580/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_580/lstm_cell_580/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_580/lstm_cell_580/recurrent_kernel
?
;lstm_580/lstm_cell_580/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_580/lstm_cell_580/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_580/lstm_cell_580/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_580/lstm_cell_580/bias
?
/lstm_580/lstm_cell_580/bias/Read/ReadVariableOpReadVariableOplstm_580/lstm_cell_580/bias*
_output_shapes	
:?*
dtype0
?
lstm_581/lstm_cell_581/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_581/lstm_cell_581/kernel
?
1lstm_581/lstm_cell_581/kernel/Read/ReadVariableOpReadVariableOplstm_581/lstm_cell_581/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_581/lstm_cell_581/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_581/lstm_cell_581/recurrent_kernel
?
;lstm_581/lstm_cell_581/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_581/lstm_cell_581/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_581/lstm_cell_581/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_581/lstm_cell_581/bias
?
/lstm_581/lstm_cell_581/bias/Read/ReadVariableOpReadVariableOplstm_581/lstm_cell_581/bias*
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
Adam/dense_193/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_193/kernel/m
?
+Adam/dense_193/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_193/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_193/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_193/bias/m
{
)Adam/dense_193/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_193/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_579/lstm_cell_579/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_579/lstm_cell_579/kernel/m
?
8Adam/lstm_579/lstm_cell_579/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_579/lstm_cell_579/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_579/lstm_cell_579/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_579/lstm_cell_579/recurrent_kernel/m
?
BAdam/lstm_579/lstm_cell_579/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_579/lstm_cell_579/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_579/lstm_cell_579/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_579/lstm_cell_579/bias/m
?
6Adam/lstm_579/lstm_cell_579/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_579/lstm_cell_579/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_580/lstm_cell_580/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_580/lstm_cell_580/kernel/m
?
8Adam/lstm_580/lstm_cell_580/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_580/lstm_cell_580/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_580/lstm_cell_580/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_580/lstm_cell_580/recurrent_kernel/m
?
BAdam/lstm_580/lstm_cell_580/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_580/lstm_cell_580/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_580/lstm_cell_580/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_580/lstm_cell_580/bias/m
?
6Adam/lstm_580/lstm_cell_580/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_580/lstm_cell_580/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_581/lstm_cell_581/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_581/lstm_cell_581/kernel/m
?
8Adam/lstm_581/lstm_cell_581/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_581/lstm_cell_581/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_581/lstm_cell_581/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_581/lstm_cell_581/recurrent_kernel/m
?
BAdam/lstm_581/lstm_cell_581/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_581/lstm_cell_581/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_581/lstm_cell_581/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_581/lstm_cell_581/bias/m
?
6Adam/lstm_581/lstm_cell_581/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_581/lstm_cell_581/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_193/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_193/kernel/v
?
+Adam/dense_193/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_193/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_193/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_193/bias/v
{
)Adam/dense_193/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_193/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_579/lstm_cell_579/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_579/lstm_cell_579/kernel/v
?
8Adam/lstm_579/lstm_cell_579/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_579/lstm_cell_579/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_579/lstm_cell_579/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_579/lstm_cell_579/recurrent_kernel/v
?
BAdam/lstm_579/lstm_cell_579/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_579/lstm_cell_579/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_579/lstm_cell_579/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_579/lstm_cell_579/bias/v
?
6Adam/lstm_579/lstm_cell_579/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_579/lstm_cell_579/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_580/lstm_cell_580/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_580/lstm_cell_580/kernel/v
?
8Adam/lstm_580/lstm_cell_580/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_580/lstm_cell_580/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_580/lstm_cell_580/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_580/lstm_cell_580/recurrent_kernel/v
?
BAdam/lstm_580/lstm_cell_580/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_580/lstm_cell_580/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_580/lstm_cell_580/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_580/lstm_cell_580/bias/v
?
6Adam/lstm_580/lstm_cell_580/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_580/lstm_cell_580/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_581/lstm_cell_581/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_581/lstm_cell_581/kernel/v
?
8Adam/lstm_581/lstm_cell_581/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_581/lstm_cell_581/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_581/lstm_cell_581/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_581/lstm_cell_581/recurrent_kernel/v
?
BAdam/lstm_581/lstm_cell_581/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_581/lstm_cell_581/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_581/lstm_cell_581/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_581/lstm_cell_581/bias/v
?
6Adam/lstm_581/lstm_cell_581/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_581/lstm_cell_581/bias/v*
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
VARIABLE_VALUEdense_193/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_193/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_579/lstm_cell_579/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_579/lstm_cell_579/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_579/lstm_cell_579/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_580/lstm_cell_580/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_580/lstm_cell_580/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_580/lstm_cell_580/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_581/lstm_cell_581/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_581/lstm_cell_581/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_581/lstm_cell_581/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_193/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_193/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_579/lstm_cell_579/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_579/lstm_cell_579/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_579/lstm_cell_579/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_580/lstm_cell_580/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_580/lstm_cell_580/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_580/lstm_cell_580/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_581/lstm_cell_581/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_581/lstm_cell_581/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_581/lstm_cell_581/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_193/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_193/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_579/lstm_cell_579/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_579/lstm_cell_579/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_579/lstm_cell_579/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_580/lstm_cell_580/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_580/lstm_cell_580/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_580/lstm_cell_580/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_581/lstm_cell_581/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_581/lstm_cell_581/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_581/lstm_cell_581/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_579_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_579_inputlstm_579/lstm_cell_579/kernel'lstm_579/lstm_cell_579/recurrent_kernellstm_579/lstm_cell_579/biaslstm_580/lstm_cell_580/kernel'lstm_580/lstm_cell_580/recurrent_kernellstm_580/lstm_cell_580/biaslstm_581/lstm_cell_581/kernel'lstm_581/lstm_cell_581/recurrent_kernellstm_581/lstm_cell_581/biasdense_193/kerneldense_193/bias*
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
%__inference_signature_wrapper_1031102
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_193/kernel/Read/ReadVariableOp"dense_193/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_579/lstm_cell_579/kernel/Read/ReadVariableOp;lstm_579/lstm_cell_579/recurrent_kernel/Read/ReadVariableOp/lstm_579/lstm_cell_579/bias/Read/ReadVariableOp1lstm_580/lstm_cell_580/kernel/Read/ReadVariableOp;lstm_580/lstm_cell_580/recurrent_kernel/Read/ReadVariableOp/lstm_580/lstm_cell_580/bias/Read/ReadVariableOp1lstm_581/lstm_cell_581/kernel/Read/ReadVariableOp;lstm_581/lstm_cell_581/recurrent_kernel/Read/ReadVariableOp/lstm_581/lstm_cell_581/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_193/kernel/m/Read/ReadVariableOp)Adam/dense_193/bias/m/Read/ReadVariableOp8Adam/lstm_579/lstm_cell_579/kernel/m/Read/ReadVariableOpBAdam/lstm_579/lstm_cell_579/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_579/lstm_cell_579/bias/m/Read/ReadVariableOp8Adam/lstm_580/lstm_cell_580/kernel/m/Read/ReadVariableOpBAdam/lstm_580/lstm_cell_580/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_580/lstm_cell_580/bias/m/Read/ReadVariableOp8Adam/lstm_581/lstm_cell_581/kernel/m/Read/ReadVariableOpBAdam/lstm_581/lstm_cell_581/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_581/lstm_cell_581/bias/m/Read/ReadVariableOp+Adam/dense_193/kernel/v/Read/ReadVariableOp)Adam/dense_193/bias/v/Read/ReadVariableOp8Adam/lstm_579/lstm_cell_579/kernel/v/Read/ReadVariableOpBAdam/lstm_579/lstm_cell_579/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_579/lstm_cell_579/bias/v/Read/ReadVariableOp8Adam/lstm_580/lstm_cell_580/kernel/v/Read/ReadVariableOpBAdam/lstm_580/lstm_cell_580/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_580/lstm_cell_580/bias/v/Read/ReadVariableOp8Adam/lstm_581/lstm_cell_581/kernel/v/Read/ReadVariableOpBAdam/lstm_581/lstm_cell_581/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_581/lstm_cell_581/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1034314
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_193/kerneldense_193/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_579/lstm_cell_579/kernel'lstm_579/lstm_cell_579/recurrent_kernellstm_579/lstm_cell_579/biaslstm_580/lstm_cell_580/kernel'lstm_580/lstm_cell_580/recurrent_kernellstm_580/lstm_cell_580/biaslstm_581/lstm_cell_581/kernel'lstm_581/lstm_cell_581/recurrent_kernellstm_581/lstm_cell_581/biastotalcountAdam/dense_193/kernel/mAdam/dense_193/bias/m$Adam/lstm_579/lstm_cell_579/kernel/m.Adam/lstm_579/lstm_cell_579/recurrent_kernel/m"Adam/lstm_579/lstm_cell_579/bias/m$Adam/lstm_580/lstm_cell_580/kernel/m.Adam/lstm_580/lstm_cell_580/recurrent_kernel/m"Adam/lstm_580/lstm_cell_580/bias/m$Adam/lstm_581/lstm_cell_581/kernel/m.Adam/lstm_581/lstm_cell_581/recurrent_kernel/m"Adam/lstm_581/lstm_cell_581/bias/mAdam/dense_193/kernel/vAdam/dense_193/bias/v$Adam/lstm_579/lstm_cell_579/kernel/v.Adam/lstm_579/lstm_cell_579/recurrent_kernel/v"Adam/lstm_579/lstm_cell_579/bias/v$Adam/lstm_580/lstm_cell_580/kernel/v.Adam/lstm_580/lstm_cell_580/recurrent_kernel/v"Adam/lstm_580/lstm_cell_580/bias/v$Adam/lstm_581/lstm_cell_581/kernel/v.Adam/lstm_581/lstm_cell_581/recurrent_kernel/v"Adam/lstm_581/lstm_cell_581/bias/v*4
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
#__inference__traced_restore_1034444??+
?C
?

lstm_581_while_body_1031493.
*lstm_581_while_lstm_581_while_loop_counter4
0lstm_581_while_lstm_581_while_maximum_iterations
lstm_581_while_placeholder 
lstm_581_while_placeholder_1 
lstm_581_while_placeholder_2 
lstm_581_while_placeholder_3-
)lstm_581_while_lstm_581_strided_slice_1_0i
elstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0:2(Q
?lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(L
>lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0:(
lstm_581_while_identity
lstm_581_while_identity_1
lstm_581_while_identity_2
lstm_581_while_identity_3
lstm_581_while_identity_4
lstm_581_while_identity_5+
'lstm_581_while_lstm_581_strided_slice_1g
clstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensorM
;lstm_581_while_lstm_cell_170_matmul_readvariableop_resource:2(O
=lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource:
(J
<lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource:(??3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp?2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp?4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp?
@lstm_581/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_581/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensor_0lstm_581_while_placeholderIlstm_581/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp=lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_581/while/lstm_cell_170/MatMulMatMul9lstm_581/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp?lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_581/while/lstm_cell_170/MatMul_1MatMullstm_581_while_placeholder_2<lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_581/while/lstm_cell_170/addAddV2-lstm_581/while/lstm_cell_170/MatMul:product:0/lstm_581/while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp>lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_581/while/lstm_cell_170/BiasAddBiasAdd$lstm_581/while/lstm_cell_170/add:z:0;lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_581/while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_581/while/lstm_cell_170/splitSplit5lstm_581/while/lstm_cell_170/split/split_dim:output:0-lstm_581/while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_581/while/lstm_cell_170/SigmoidSigmoid+lstm_581/while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_581/while/lstm_cell_170/Sigmoid_1Sigmoid+lstm_581/while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_581/while/lstm_cell_170/mulMul*lstm_581/while/lstm_cell_170/Sigmoid_1:y:0lstm_581_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_581/while/lstm_cell_170/ReluRelu+lstm_581/while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_581/while/lstm_cell_170/mul_1Mul(lstm_581/while/lstm_cell_170/Sigmoid:y:0/lstm_581/while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_581/while/lstm_cell_170/add_1AddV2$lstm_581/while/lstm_cell_170/mul:z:0&lstm_581/while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_581/while/lstm_cell_170/Sigmoid_2Sigmoid+lstm_581/while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_581/while/lstm_cell_170/Relu_1Relu&lstm_581/while/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_581/while/lstm_cell_170/mul_2Mul*lstm_581/while/lstm_cell_170/Sigmoid_2:y:01lstm_581/while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_581/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_581_while_placeholder_1lstm_581_while_placeholder&lstm_581/while/lstm_cell_170/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_581/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_581/while/addAddV2lstm_581_while_placeholderlstm_581/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_581/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_581/while/add_1AddV2*lstm_581_while_lstm_581_while_loop_counterlstm_581/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_581/while/IdentityIdentitylstm_581/while/add_1:z:0^lstm_581/while/NoOp*
T0*
_output_shapes
: ?
lstm_581/while/Identity_1Identity0lstm_581_while_lstm_581_while_maximum_iterations^lstm_581/while/NoOp*
T0*
_output_shapes
: t
lstm_581/while/Identity_2Identitylstm_581/while/add:z:0^lstm_581/while/NoOp*
T0*
_output_shapes
: ?
lstm_581/while/Identity_3IdentityClstm_581/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_581/while/NoOp*
T0*
_output_shapes
: ?
lstm_581/while/Identity_4Identity&lstm_581/while/lstm_cell_170/mul_2:z:0^lstm_581/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_581/while/Identity_5Identity&lstm_581/while/lstm_cell_170/add_1:z:0^lstm_581/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_581/while/NoOpNoOp4^lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp3^lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp5^lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_581_while_identity lstm_581/while/Identity:output:0"?
lstm_581_while_identity_1"lstm_581/while/Identity_1:output:0"?
lstm_581_while_identity_2"lstm_581/while/Identity_2:output:0"?
lstm_581_while_identity_3"lstm_581/while/Identity_3:output:0"?
lstm_581_while_identity_4"lstm_581/while/Identity_4:output:0"?
lstm_581_while_identity_5"lstm_581/while/Identity_5:output:0"T
'lstm_581_while_lstm_581_strided_slice_1)lstm_581_while_lstm_581_strided_slice_1_0"~
<lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource>lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0"?
=lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource?lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0"|
;lstm_581_while_lstm_cell_170_matmul_readvariableop_resource=lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0"?
clstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensorelstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp2h
2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp2l
4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030041

inputs?
,lstm_cell_168_matmul_readvariableop_resource:	?A
.lstm_cell_168_matmul_1_readvariableop_resource:	d?<
-lstm_cell_168_biasadd_readvariableop_resource:	?
identity??$lstm_cell_168/BiasAdd/ReadVariableOp?#lstm_cell_168/MatMul/ReadVariableOp?%lstm_cell_168/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_168/MatMul/ReadVariableOpReadVariableOp,lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_168/MatMulMatMulstrided_slice_2:output:0+lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_168/MatMul_1MatMulzeros:output:0-lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_168/addAddV2lstm_cell_168/MatMul:product:0 lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_168/BiasAddBiasAddlstm_cell_168/add:z:0,lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_168/splitSplit&lstm_cell_168/split/split_dim:output:0lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_168/SigmoidSigmoidlstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_1Sigmoidlstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_168/mulMullstm_cell_168/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_168/ReluRelulstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_1Mullstm_cell_168/Sigmoid:y:0 lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_168/add_1AddV2lstm_cell_168/mul:z:0lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_2Sigmoidlstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_168/Relu_1Relulstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_2Mullstm_cell_168/Sigmoid_2:y:0"lstm_cell_168/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_168_matmul_readvariableop_resource.lstm_cell_168_matmul_1_readvariableop_resource-lstm_cell_168_biasadd_readvariableop_resource*
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
while_body_1029957*
condR
while_cond_1029956*K
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
NoOpNoOp%^lstm_cell_168/BiasAdd/ReadVariableOp$^lstm_cell_168/MatMul/ReadVariableOp&^lstm_cell_168/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_168/BiasAdd/ReadVariableOp$lstm_cell_168/BiasAdd/ReadVariableOp2J
#lstm_cell_168/MatMul/ReadVariableOp#lstm_cell_168/MatMul/ReadVariableOp2N
%lstm_cell_168/MatMul_1/ReadVariableOp%lstm_cell_168/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1032872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_169_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_169_matmul_readvariableop_resource:	d?G
4while_lstm_cell_169_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_169_biasadd_readvariableop_resource:	???*while/lstm_cell_169/BiasAdd/ReadVariableOp?)while/lstm_cell_169/MatMul/ReadVariableOp?+while/lstm_cell_169/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_169/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_169/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_169/addAddV2$while/lstm_cell_169/MatMul:product:0&while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_169/BiasAddBiasAddwhile/lstm_cell_169/add:z:02while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_169/splitSplit,while/lstm_cell_169/split/split_dim:output:0$while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_169/SigmoidSigmoid"while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_1Sigmoid"while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mulMul!while/lstm_cell_169/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_169/ReluRelu"while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_1Mulwhile/lstm_cell_169/Sigmoid:y:0&while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/add_1AddV2while/lstm_cell_169/mul:z:0while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_2Sigmoid"while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_169/Relu_1Reluwhile/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_2Mul!while/lstm_cell_169/Sigmoid_2:y:0(while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_169/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_169/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_169/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_169/BiasAdd/ReadVariableOp*^while/lstm_cell_169/MatMul/ReadVariableOp,^while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_169_biasadd_readvariableop_resource5while_lstm_cell_169_biasadd_readvariableop_resource_0"n
4while_lstm_cell_169_matmul_1_readvariableop_resource6while_lstm_cell_169_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_169_matmul_readvariableop_resource4while_lstm_cell_169_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_169/BiasAdd/ReadVariableOp*while/lstm_cell_169/BiasAdd/ReadVariableOp2V
)while/lstm_cell_169/MatMul/ReadVariableOp)while/lstm_cell_169/MatMul/ReadVariableOp2Z
+while/lstm_cell_169/MatMul_1/ReadVariableOp+while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_579_while_body_1031215.
*lstm_579_while_lstm_579_while_loop_counter4
0lstm_579_while_lstm_579_while_maximum_iterations
lstm_579_while_placeholder 
lstm_579_while_placeholder_1 
lstm_579_while_placeholder_2 
lstm_579_while_placeholder_3-
)lstm_579_while_lstm_579_strided_slice_1_0i
elstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0:	?R
?lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?M
>lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
lstm_579_while_identity
lstm_579_while_identity_1
lstm_579_while_identity_2
lstm_579_while_identity_3
lstm_579_while_identity_4
lstm_579_while_identity_5+
'lstm_579_while_lstm_579_strided_slice_1g
clstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensorN
;lstm_579_while_lstm_cell_168_matmul_readvariableop_resource:	?P
=lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource:	d?K
<lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource:	???3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp?2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp?4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp?
@lstm_579/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_579/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensor_0lstm_579_while_placeholderIlstm_579/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp=lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_579/while/lstm_cell_168/MatMulMatMul9lstm_579/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp?lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_579/while/lstm_cell_168/MatMul_1MatMullstm_579_while_placeholder_2<lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_579/while/lstm_cell_168/addAddV2-lstm_579/while/lstm_cell_168/MatMul:product:0/lstm_579/while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp>lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_579/while/lstm_cell_168/BiasAddBiasAdd$lstm_579/while/lstm_cell_168/add:z:0;lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_579/while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_579/while/lstm_cell_168/splitSplit5lstm_579/while/lstm_cell_168/split/split_dim:output:0-lstm_579/while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_579/while/lstm_cell_168/SigmoidSigmoid+lstm_579/while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_579/while/lstm_cell_168/Sigmoid_1Sigmoid+lstm_579/while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_579/while/lstm_cell_168/mulMul*lstm_579/while/lstm_cell_168/Sigmoid_1:y:0lstm_579_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_579/while/lstm_cell_168/ReluRelu+lstm_579/while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_579/while/lstm_cell_168/mul_1Mul(lstm_579/while/lstm_cell_168/Sigmoid:y:0/lstm_579/while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_579/while/lstm_cell_168/add_1AddV2$lstm_579/while/lstm_cell_168/mul:z:0&lstm_579/while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_579/while/lstm_cell_168/Sigmoid_2Sigmoid+lstm_579/while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_579/while/lstm_cell_168/Relu_1Relu&lstm_579/while/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_579/while/lstm_cell_168/mul_2Mul*lstm_579/while/lstm_cell_168/Sigmoid_2:y:01lstm_579/while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_579/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_579_while_placeholder_1lstm_579_while_placeholder&lstm_579/while/lstm_cell_168/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_579/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_579/while/addAddV2lstm_579_while_placeholderlstm_579/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_579/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_579/while/add_1AddV2*lstm_579_while_lstm_579_while_loop_counterlstm_579/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_579/while/IdentityIdentitylstm_579/while/add_1:z:0^lstm_579/while/NoOp*
T0*
_output_shapes
: ?
lstm_579/while/Identity_1Identity0lstm_579_while_lstm_579_while_maximum_iterations^lstm_579/while/NoOp*
T0*
_output_shapes
: t
lstm_579/while/Identity_2Identitylstm_579/while/add:z:0^lstm_579/while/NoOp*
T0*
_output_shapes
: ?
lstm_579/while/Identity_3IdentityClstm_579/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_579/while/NoOp*
T0*
_output_shapes
: ?
lstm_579/while/Identity_4Identity&lstm_579/while/lstm_cell_168/mul_2:z:0^lstm_579/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_579/while/Identity_5Identity&lstm_579/while/lstm_cell_168/add_1:z:0^lstm_579/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_579/while/NoOpNoOp4^lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp3^lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp5^lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_579_while_identity lstm_579/while/Identity:output:0"?
lstm_579_while_identity_1"lstm_579/while/Identity_1:output:0"?
lstm_579_while_identity_2"lstm_579/while/Identity_2:output:0"?
lstm_579_while_identity_3"lstm_579/while/Identity_3:output:0"?
lstm_579_while_identity_4"lstm_579/while/Identity_4:output:0"?
lstm_579_while_identity_5"lstm_579/while/Identity_5:output:0"T
'lstm_579_while_lstm_579_strided_slice_1)lstm_579_while_lstm_579_strided_slice_1_0"~
<lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource>lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0"?
=lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource?lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0"|
;lstm_579_while_lstm_cell_168_matmul_readvariableop_resource=lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0"?
clstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensorelstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp2h
2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp2l
4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_580_layer_call_fn_1032637
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1029342|
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
while_body_1033774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_170_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_170_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_170_matmul_readvariableop_resource:2(F
4while_lstm_cell_170_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_170_biasadd_readvariableop_resource:(??*while/lstm_cell_170/BiasAdd/ReadVariableOp?)while/lstm_cell_170/MatMul/ReadVariableOp?+while/lstm_cell_170/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_170/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_170/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_170/addAddV2$while/lstm_cell_170/MatMul:product:0&while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_170/BiasAddBiasAddwhile/lstm_cell_170/add:z:02while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_170/splitSplit,while/lstm_cell_170/split/split_dim:output:0$while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_170/SigmoidSigmoid"while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_1Sigmoid"while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mulMul!while/lstm_cell_170/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_170/ReluRelu"while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_1Mulwhile/lstm_cell_170/Sigmoid:y:0&while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/add_1AddV2while/lstm_cell_170/mul:z:0while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_2Sigmoid"while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_170/Relu_1Reluwhile/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_2Mul!while/lstm_cell_170/Sigmoid_2:y:0(while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_170/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_170/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_170/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_170/BiasAdd/ReadVariableOp*^while/lstm_cell_170/MatMul/ReadVariableOp,^while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_170_biasadd_readvariableop_resource5while_lstm_cell_170_biasadd_readvariableop_resource_0"n
4while_lstm_cell_170_matmul_1_readvariableop_resource6while_lstm_cell_170_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_170_matmul_readvariableop_resource4while_lstm_cell_170_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_170/BiasAdd/ReadVariableOp*while/lstm_cell_170/BiasAdd/ReadVariableOp2V
)while/lstm_cell_170/MatMul/ReadVariableOp)while/lstm_cell_170/MatMul/ReadVariableOp2Z
+while/lstm_cell_170/MatMul_1/ReadVariableOp+while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1030637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1030637___redundant_placeholder05
1while_while_cond_1030637___redundant_placeholder15
1while_while_cond_1030637___redundant_placeholder25
1while_while_cond_1030637___redundant_placeholder3
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029755

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
while_cond_1030106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1030106___redundant_placeholder05
1while_while_cond_1030106___redundant_placeholder15
1while_while_cond_1030106___redundant_placeholder25
1while_while_cond_1030106___redundant_placeholder3
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1029692

inputs'
lstm_cell_170_1029610:2('
lstm_cell_170_1029612:
(#
lstm_cell_170_1029614:(
identity??%lstm_cell_170/StatefulPartitionedCall?while;
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
%lstm_cell_170/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_170_1029610lstm_cell_170_1029612lstm_cell_170_1029614*
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029609n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_170_1029610lstm_cell_170_1029612lstm_cell_170_1029614*
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
while_body_1029623*
condR
while_cond_1029622*K
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
NoOpNoOp&^lstm_cell_170/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_170/StatefulPartitionedCall%lstm_cell_170/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1033157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1033157___redundant_placeholder05
1while_while_cond_1033157___redundant_placeholder15
1while_while_cond_1033157___redundant_placeholder25
1while_while_cond_1033157___redundant_placeholder3
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032626

inputs?
,lstm_cell_168_matmul_readvariableop_resource:	?A
.lstm_cell_168_matmul_1_readvariableop_resource:	d?<
-lstm_cell_168_biasadd_readvariableop_resource:	?
identity??$lstm_cell_168/BiasAdd/ReadVariableOp?#lstm_cell_168/MatMul/ReadVariableOp?%lstm_cell_168/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_168/MatMul/ReadVariableOpReadVariableOp,lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_168/MatMulMatMulstrided_slice_2:output:0+lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_168/MatMul_1MatMulzeros:output:0-lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_168/addAddV2lstm_cell_168/MatMul:product:0 lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_168/BiasAddBiasAddlstm_cell_168/add:z:0,lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_168/splitSplit&lstm_cell_168/split/split_dim:output:0lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_168/SigmoidSigmoidlstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_1Sigmoidlstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_168/mulMullstm_cell_168/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_168/ReluRelulstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_1Mullstm_cell_168/Sigmoid:y:0 lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_168/add_1AddV2lstm_cell_168/mul:z:0lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_2Sigmoidlstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_168/Relu_1Relulstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_2Mullstm_cell_168/Sigmoid_2:y:0"lstm_cell_168/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_168_matmul_readvariableop_resource.lstm_cell_168_matmul_1_readvariableop_resource-lstm_cell_168_biasadd_readvariableop_resource*
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
while_body_1032542*
condR
while_cond_1032541*K
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
NoOpNoOp%^lstm_cell_168/BiasAdd/ReadVariableOp$^lstm_cell_168/MatMul/ReadVariableOp&^lstm_cell_168/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_168/BiasAdd/ReadVariableOp$lstm_cell_168/BiasAdd/ReadVariableOp2J
#lstm_cell_168/MatMul/ReadVariableOp#lstm_cell_168/MatMul/ReadVariableOp2N
%lstm_cell_168/MatMul_1/ReadVariableOp%lstm_cell_168/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_193_layer_call_and_return_conditional_losses_1030359

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
?
?
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1028909

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
?#
?
while_body_1029464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_169_1029488_0:	d?0
while_lstm_cell_169_1029490_0:	2?,
while_lstm_cell_169_1029492_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_169_1029488:	d?.
while_lstm_cell_169_1029490:	2?*
while_lstm_cell_169_1029492:	???+while/lstm_cell_169/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_169/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_169_1029488_0while_lstm_cell_169_1029490_0while_lstm_cell_169_1029492_0*
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029405?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_169/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_169/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_169/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_169/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_169_1029488while_lstm_cell_169_1029488_0"<
while_lstm_cell_169_1029490while_lstm_cell_169_1029490_0"<
while_lstm_cell_169_1029492while_lstm_cell_169_1029492_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_169/StatefulPartitionedCall+while/lstm_cell_169/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1032871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1032871___redundant_placeholder05
1while_while_cond_1032871___redundant_placeholder15
1while_while_cond_1032871___redundant_placeholder25
1while_while_cond_1032871___redundant_placeholder3
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1028992

inputs(
lstm_cell_168_1028910:	?(
lstm_cell_168_1028912:	d?$
lstm_cell_168_1028914:	?
identity??%lstm_cell_168/StatefulPartitionedCall?while;
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
%lstm_cell_168/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_168_1028910lstm_cell_168_1028912lstm_cell_168_1028914*
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1028909n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_168_1028910lstm_cell_168_1028912lstm_cell_168_1028914*
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
while_body_1028923*
condR
while_cond_1028922*K
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
NoOpNoOp&^lstm_cell_168/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_168/StatefulPartitionedCall%lstm_cell_168/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1032113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_168_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_168_matmul_readvariableop_resource:	?G
4while_lstm_cell_168_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_168_biasadd_readvariableop_resource:	???*while/lstm_cell_168/BiasAdd/ReadVariableOp?)while/lstm_cell_168/MatMul/ReadVariableOp?+while/lstm_cell_168/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_168/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_168/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_168/addAddV2$while/lstm_cell_168/MatMul:product:0&while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_168/BiasAddBiasAddwhile/lstm_cell_168/add:z:02while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_168/splitSplit,while/lstm_cell_168/split/split_dim:output:0$while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_168/SigmoidSigmoid"while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_1Sigmoid"while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mulMul!while/lstm_cell_168/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_168/ReluRelu"while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_1Mulwhile/lstm_cell_168/Sigmoid:y:0&while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/add_1AddV2while/lstm_cell_168/mul:z:0while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_2Sigmoid"while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_168/Relu_1Reluwhile/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_2Mul!while/lstm_cell_168/Sigmoid_2:y:0(while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_168/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_168/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_168/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_168/BiasAdd/ReadVariableOp*^while/lstm_cell_168/MatMul/ReadVariableOp,^while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_168_biasadd_readvariableop_resource5while_lstm_cell_168_biasadd_readvariableop_resource_0"n
4while_lstm_cell_168_matmul_1_readvariableop_resource6while_lstm_cell_168_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_168_matmul_readvariableop_resource4while_lstm_cell_168_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_168/BiasAdd/ReadVariableOp*while/lstm_cell_168/BiasAdd/ReadVariableOp2V
)while/lstm_cell_168/MatMul/ReadVariableOp)while/lstm_cell_168/MatMul/ReadVariableOp2Z
+while/lstm_cell_168/MatMul_1/ReadVariableOp+while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030341

inputs>
,lstm_cell_170_matmul_readvariableop_resource:2(@
.lstm_cell_170_matmul_1_readvariableop_resource:
(;
-lstm_cell_170_biasadd_readvariableop_resource:(
identity??$lstm_cell_170/BiasAdd/ReadVariableOp?#lstm_cell_170/MatMul/ReadVariableOp?%lstm_cell_170/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_170/MatMul/ReadVariableOpReadVariableOp,lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_170/MatMulMatMulstrided_slice_2:output:0+lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_170/MatMul_1MatMulzeros:output:0-lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_170/addAddV2lstm_cell_170/MatMul:product:0 lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_170/BiasAddBiasAddlstm_cell_170/add:z:0,lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_170/splitSplit&lstm_cell_170/split/split_dim:output:0lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_170/SigmoidSigmoidlstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_1Sigmoidlstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_170/mulMullstm_cell_170/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_170/ReluRelulstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_1Mullstm_cell_170/Sigmoid:y:0 lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_170/add_1AddV2lstm_cell_170/mul:z:0lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_2Sigmoidlstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_170/Relu_1Relulstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_2Mullstm_cell_170/Sigmoid_2:y:0"lstm_cell_170/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_170_matmul_readvariableop_resource.lstm_cell_170_matmul_1_readvariableop_resource-lstm_cell_170_biasadd_readvariableop_resource*
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
while_body_1030257*
condR
while_cond_1030256*K
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
NoOpNoOp%^lstm_cell_170/BiasAdd/ReadVariableOp$^lstm_cell_170/MatMul/ReadVariableOp&^lstm_cell_170/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_170/BiasAdd/ReadVariableOp$lstm_cell_170/BiasAdd/ReadVariableOp2J
#lstm_cell_170/MatMul/ReadVariableOp#lstm_cell_170/MatMul/ReadVariableOp2N
%lstm_cell_170/MatMul_1/ReadVariableOp%lstm_cell_170/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*sequential_193_lstm_581_while_cond_1028751L
Hsequential_193_lstm_581_while_sequential_193_lstm_581_while_loop_counterR
Nsequential_193_lstm_581_while_sequential_193_lstm_581_while_maximum_iterations-
)sequential_193_lstm_581_while_placeholder/
+sequential_193_lstm_581_while_placeholder_1/
+sequential_193_lstm_581_while_placeholder_2/
+sequential_193_lstm_581_while_placeholder_3N
Jsequential_193_lstm_581_while_less_sequential_193_lstm_581_strided_slice_1e
asequential_193_lstm_581_while_sequential_193_lstm_581_while_cond_1028751___redundant_placeholder0e
asequential_193_lstm_581_while_sequential_193_lstm_581_while_cond_1028751___redundant_placeholder1e
asequential_193_lstm_581_while_sequential_193_lstm_581_while_cond_1028751___redundant_placeholder2e
asequential_193_lstm_581_while_sequential_193_lstm_581_while_cond_1028751___redundant_placeholder3*
&sequential_193_lstm_581_while_identity
?
"sequential_193/lstm_581/while/LessLess)sequential_193_lstm_581_while_placeholderJsequential_193_lstm_581_while_less_sequential_193_lstm_581_strided_slice_1*
T0*
_output_shapes
: {
&sequential_193/lstm_581/while/IdentityIdentity&sequential_193/lstm_581/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_193_lstm_581_while_identity/sequential_193/lstm_581/while/Identity:output:0*(
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
F__inference_dense_193_layer_call_and_return_conditional_losses_1033877

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
?
*__inference_lstm_581_layer_call_fn_1033253
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1029692o
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
while_cond_1030472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1030472___redundant_placeholder05
1while_while_cond_1030472___redundant_placeholder15
1while_while_cond_1030472___redundant_placeholder25
1while_while_cond_1030472___redundant_placeholder3
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029405

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
?8
?
while_body_1033158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_169_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_169_matmul_readvariableop_resource:	d?G
4while_lstm_cell_169_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_169_biasadd_readvariableop_resource:	???*while/lstm_cell_169/BiasAdd/ReadVariableOp?)while/lstm_cell_169/MatMul/ReadVariableOp?+while/lstm_cell_169/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_169/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_169/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_169/addAddV2$while/lstm_cell_169/MatMul:product:0&while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_169/BiasAddBiasAddwhile/lstm_cell_169/add:z:02while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_169/splitSplit,while/lstm_cell_169/split/split_dim:output:0$while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_169/SigmoidSigmoid"while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_1Sigmoid"while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mulMul!while/lstm_cell_169/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_169/ReluRelu"while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_1Mulwhile/lstm_cell_169/Sigmoid:y:0&while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/add_1AddV2while/lstm_cell_169/mul:z:0while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_2Sigmoid"while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_169/Relu_1Reluwhile/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_2Mul!while/lstm_cell_169/Sigmoid_2:y:0(while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_169/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_169/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_169/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_169/BiasAdd/ReadVariableOp*^while/lstm_cell_169/MatMul/ReadVariableOp,^while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_169_biasadd_readvariableop_resource5while_lstm_cell_169_biasadd_readvariableop_resource_0"n
4while_lstm_cell_169_matmul_1_readvariableop_resource6while_lstm_cell_169_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_169_matmul_readvariableop_resource4while_lstm_cell_169_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_169/BiasAdd/ReadVariableOp*while/lstm_cell_169/BiasAdd/ReadVariableOp2V
)while/lstm_cell_169/MatMul/ReadVariableOp)while/lstm_cell_169/MatMul/ReadVariableOp2Z
+while/lstm_cell_169/MatMul_1/ReadVariableOp+while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
/__inference_lstm_cell_169_layer_call_fn_1034009

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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029405o
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
?J
?
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032483

inputs?
,lstm_cell_168_matmul_readvariableop_resource:	?A
.lstm_cell_168_matmul_1_readvariableop_resource:	d?<
-lstm_cell_168_biasadd_readvariableop_resource:	?
identity??$lstm_cell_168/BiasAdd/ReadVariableOp?#lstm_cell_168/MatMul/ReadVariableOp?%lstm_cell_168/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_168/MatMul/ReadVariableOpReadVariableOp,lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_168/MatMulMatMulstrided_slice_2:output:0+lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_168/MatMul_1MatMulzeros:output:0-lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_168/addAddV2lstm_cell_168/MatMul:product:0 lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_168/BiasAddBiasAddlstm_cell_168/add:z:0,lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_168/splitSplit&lstm_cell_168/split/split_dim:output:0lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_168/SigmoidSigmoidlstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_1Sigmoidlstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_168/mulMullstm_cell_168/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_168/ReluRelulstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_1Mullstm_cell_168/Sigmoid:y:0 lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_168/add_1AddV2lstm_cell_168/mul:z:0lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_2Sigmoidlstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_168/Relu_1Relulstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_2Mullstm_cell_168/Sigmoid_2:y:0"lstm_cell_168/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_168_matmul_readvariableop_resource.lstm_cell_168_matmul_1_readvariableop_resource-lstm_cell_168_biasadd_readvariableop_resource*
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
while_body_1032399*
condR
while_cond_1032398*K
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
NoOpNoOp%^lstm_cell_168/BiasAdd/ReadVariableOp$^lstm_cell_168/MatMul/ReadVariableOp&^lstm_cell_168/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_168/BiasAdd/ReadVariableOp$lstm_cell_168/BiasAdd/ReadVariableOp2J
#lstm_cell_168/MatMul/ReadVariableOp#lstm_cell_168/MatMul/ReadVariableOp2N
%lstm_cell_168/MatMul_1/ReadVariableOp%lstm_cell_168/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1034444
file_prefix3
!assignvariableop_dense_193_kernel:
/
!assignvariableop_1_dense_193_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_579_lstm_cell_579_kernel:	?M
:assignvariableop_8_lstm_579_lstm_cell_579_recurrent_kernel:	d?=
.assignvariableop_9_lstm_579_lstm_cell_579_bias:	?D
1assignvariableop_10_lstm_580_lstm_cell_580_kernel:	d?N
;assignvariableop_11_lstm_580_lstm_cell_580_recurrent_kernel:	2?>
/assignvariableop_12_lstm_580_lstm_cell_580_bias:	?C
1assignvariableop_13_lstm_581_lstm_cell_581_kernel:2(M
;assignvariableop_14_lstm_581_lstm_cell_581_recurrent_kernel:
(=
/assignvariableop_15_lstm_581_lstm_cell_581_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_193_kernel_m:
7
)assignvariableop_19_adam_dense_193_bias_m:K
8assignvariableop_20_adam_lstm_579_lstm_cell_579_kernel_m:	?U
Bassignvariableop_21_adam_lstm_579_lstm_cell_579_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_579_lstm_cell_579_bias_m:	?K
8assignvariableop_23_adam_lstm_580_lstm_cell_580_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_580_lstm_cell_580_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_580_lstm_cell_580_bias_m:	?J
8assignvariableop_26_adam_lstm_581_lstm_cell_581_kernel_m:2(T
Bassignvariableop_27_adam_lstm_581_lstm_cell_581_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_581_lstm_cell_581_bias_m:(=
+assignvariableop_29_adam_dense_193_kernel_v:
7
)assignvariableop_30_adam_dense_193_bias_v:K
8assignvariableop_31_adam_lstm_579_lstm_cell_579_kernel_v:	?U
Bassignvariableop_32_adam_lstm_579_lstm_cell_579_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_579_lstm_cell_579_bias_v:	?K
8assignvariableop_34_adam_lstm_580_lstm_cell_580_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_580_lstm_cell_580_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_580_lstm_cell_580_bias_v:	?J
8assignvariableop_37_adam_lstm_581_lstm_cell_581_kernel_v:2(T
Bassignvariableop_38_adam_lstm_581_lstm_cell_581_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_581_lstm_cell_581_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_193_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_193_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_579_lstm_cell_579_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_579_lstm_cell_579_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_579_lstm_cell_579_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_580_lstm_cell_580_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_580_lstm_cell_580_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_580_lstm_cell_580_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_581_lstm_cell_581_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_581_lstm_cell_581_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_581_lstm_cell_581_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_193_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_193_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_579_lstm_cell_579_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_579_lstm_cell_579_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_579_lstm_cell_579_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_580_lstm_cell_580_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_580_lstm_cell_580_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_580_lstm_cell_580_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_581_lstm_cell_581_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_581_lstm_cell_581_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_581_lstm_cell_581_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_193_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_193_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_579_lstm_cell_579_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_579_lstm_cell_579_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_579_lstm_cell_579_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_580_lstm_cell_580_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_580_lstm_cell_580_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_580_lstm_cell_580_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_581_lstm_cell_581_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_581_lstm_cell_581_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_581_lstm_cell_581_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033715

inputs>
,lstm_cell_170_matmul_readvariableop_resource:2(@
.lstm_cell_170_matmul_1_readvariableop_resource:
(;
-lstm_cell_170_biasadd_readvariableop_resource:(
identity??$lstm_cell_170/BiasAdd/ReadVariableOp?#lstm_cell_170/MatMul/ReadVariableOp?%lstm_cell_170/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_170/MatMul/ReadVariableOpReadVariableOp,lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_170/MatMulMatMulstrided_slice_2:output:0+lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_170/MatMul_1MatMulzeros:output:0-lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_170/addAddV2lstm_cell_170/MatMul:product:0 lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_170/BiasAddBiasAddlstm_cell_170/add:z:0,lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_170/splitSplit&lstm_cell_170/split/split_dim:output:0lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_170/SigmoidSigmoidlstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_1Sigmoidlstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_170/mulMullstm_cell_170/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_170/ReluRelulstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_1Mullstm_cell_170/Sigmoid:y:0 lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_170/add_1AddV2lstm_cell_170/mul:z:0lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_2Sigmoidlstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_170/Relu_1Relulstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_2Mullstm_cell_170/Sigmoid_2:y:0"lstm_cell_170/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_170_matmul_readvariableop_resource.lstm_cell_170_matmul_1_readvariableop_resource-lstm_cell_170_biasadd_readvariableop_resource*
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
while_body_1033631*
condR
while_cond_1033630*K
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
NoOpNoOp%^lstm_cell_170/BiasAdd/ReadVariableOp$^lstm_cell_170/MatMul/ReadVariableOp&^lstm_cell_170/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_170/BiasAdd/ReadVariableOp$lstm_cell_170/BiasAdd/ReadVariableOp2J
#lstm_cell_170/MatMul/ReadVariableOp#lstm_cell_170/MatMul/ReadVariableOp2N
%lstm_cell_170/MatMul_1/ReadVariableOp%lstm_cell_170/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_168_layer_call_fn_1033894

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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1028909o
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
while_cond_1029272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1029272___redundant_placeholder05
1while_while_cond_1029272___redundant_placeholder15
1while_while_cond_1029272___redundant_placeholder25
1while_while_cond_1029272___redundant_placeholder3
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
while_body_1030473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_170_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_170_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_170_matmul_readvariableop_resource:2(F
4while_lstm_cell_170_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_170_biasadd_readvariableop_resource:(??*while/lstm_cell_170/BiasAdd/ReadVariableOp?)while/lstm_cell_170/MatMul/ReadVariableOp?+while/lstm_cell_170/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_170/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_170/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_170/addAddV2$while/lstm_cell_170/MatMul:product:0&while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_170/BiasAddBiasAddwhile/lstm_cell_170/add:z:02while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_170/splitSplit,while/lstm_cell_170/split/split_dim:output:0$while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_170/SigmoidSigmoid"while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_1Sigmoid"while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mulMul!while/lstm_cell_170/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_170/ReluRelu"while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_1Mulwhile/lstm_cell_170/Sigmoid:y:0&while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/add_1AddV2while/lstm_cell_170/mul:z:0while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_2Sigmoid"while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_170/Relu_1Reluwhile/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_2Mul!while/lstm_cell_170/Sigmoid_2:y:0(while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_170/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_170/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_170/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_170/BiasAdd/ReadVariableOp*^while/lstm_cell_170/MatMul/ReadVariableOp,^while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_170_biasadd_readvariableop_resource5while_lstm_cell_170_biasadd_readvariableop_resource_0"n
4while_lstm_cell_170_matmul_1_readvariableop_resource6while_lstm_cell_170_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_170_matmul_readvariableop_resource4while_lstm_cell_170_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_170/BiasAdd/ReadVariableOp*while/lstm_cell_170/BiasAdd/ReadVariableOp2V
)while/lstm_cell_170/MatMul/ReadVariableOp)while/lstm_cell_170/MatMul/ReadVariableOp2Z
+while/lstm_cell_170/MatMul_1/ReadVariableOp+while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_580_layer_call_fn_1032670

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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030722s
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
?K
?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1032813
inputs_0?
,lstm_cell_169_matmul_readvariableop_resource:	d?A
.lstm_cell_169_matmul_1_readvariableop_resource:	2?<
-lstm_cell_169_biasadd_readvariableop_resource:	?
identity??$lstm_cell_169/BiasAdd/ReadVariableOp?#lstm_cell_169/MatMul/ReadVariableOp?%lstm_cell_169/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_169/MatMul/ReadVariableOpReadVariableOp,lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_169/MatMulMatMulstrided_slice_2:output:0+lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_169/MatMul_1MatMulzeros:output:0-lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_169/addAddV2lstm_cell_169/MatMul:product:0 lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_169/BiasAddBiasAddlstm_cell_169/add:z:0,lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_169/splitSplit&lstm_cell_169/split/split_dim:output:0lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_169/SigmoidSigmoidlstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_1Sigmoidlstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_169/mulMullstm_cell_169/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_169/ReluRelulstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_1Mullstm_cell_169/Sigmoid:y:0 lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_169/add_1AddV2lstm_cell_169/mul:z:0lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_2Sigmoidlstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_169/Relu_1Relulstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_2Mullstm_cell_169/Sigmoid_2:y:0"lstm_cell_169/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_169_matmul_readvariableop_resource.lstm_cell_169_matmul_1_readvariableop_resource-lstm_cell_169_biasadd_readvariableop_resource*
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
while_body_1032729*
condR
while_cond_1032728*K
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
NoOpNoOp%^lstm_cell_169/BiasAdd/ReadVariableOp$^lstm_cell_169/MatMul/ReadVariableOp&^lstm_cell_169/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_169/BiasAdd/ReadVariableOp$lstm_cell_169/BiasAdd/ReadVariableOp2J
#lstm_cell_169/MatMul/ReadVariableOp#lstm_cell_169/MatMul/ReadVariableOp2N
%lstm_cell_169/MatMul_1/ReadVariableOp%lstm_cell_169/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033858

inputs>
,lstm_cell_170_matmul_readvariableop_resource:2(@
.lstm_cell_170_matmul_1_readvariableop_resource:
(;
-lstm_cell_170_biasadd_readvariableop_resource:(
identity??$lstm_cell_170/BiasAdd/ReadVariableOp?#lstm_cell_170/MatMul/ReadVariableOp?%lstm_cell_170/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_170/MatMul/ReadVariableOpReadVariableOp,lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_170/MatMulMatMulstrided_slice_2:output:0+lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_170/MatMul_1MatMulzeros:output:0-lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_170/addAddV2lstm_cell_170/MatMul:product:0 lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_170/BiasAddBiasAddlstm_cell_170/add:z:0,lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_170/splitSplit&lstm_cell_170/split/split_dim:output:0lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_170/SigmoidSigmoidlstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_1Sigmoidlstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_170/mulMullstm_cell_170/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_170/ReluRelulstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_1Mullstm_cell_170/Sigmoid:y:0 lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_170/add_1AddV2lstm_cell_170/mul:z:0lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_2Sigmoidlstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_170/Relu_1Relulstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_2Mullstm_cell_170/Sigmoid_2:y:0"lstm_cell_170/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_170_matmul_readvariableop_resource.lstm_cell_170_matmul_1_readvariableop_resource-lstm_cell_170_biasadd_readvariableop_resource*
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
while_body_1033774*
condR
while_cond_1033773*K
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
NoOpNoOp%^lstm_cell_170/BiasAdd/ReadVariableOp$^lstm_cell_170/MatMul/ReadVariableOp&^lstm_cell_170/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_170/BiasAdd/ReadVariableOp$lstm_cell_170/BiasAdd/ReadVariableOp2J
#lstm_cell_170/MatMul/ReadVariableOp#lstm_cell_170/MatMul/ReadVariableOp2N
%lstm_cell_170/MatMul_1/ReadVariableOp%lstm_cell_170/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1033631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_170_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_170_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_170_matmul_readvariableop_resource:2(F
4while_lstm_cell_170_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_170_biasadd_readvariableop_resource:(??*while/lstm_cell_170/BiasAdd/ReadVariableOp?)while/lstm_cell_170/MatMul/ReadVariableOp?+while/lstm_cell_170/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_170/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_170/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_170/addAddV2$while/lstm_cell_170/MatMul:product:0&while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_170/BiasAddBiasAddwhile/lstm_cell_170/add:z:02while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_170/splitSplit,while/lstm_cell_170/split/split_dim:output:0$while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_170/SigmoidSigmoid"while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_1Sigmoid"while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mulMul!while/lstm_cell_170/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_170/ReluRelu"while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_1Mulwhile/lstm_cell_170/Sigmoid:y:0&while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/add_1AddV2while/lstm_cell_170/mul:z:0while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_2Sigmoid"while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_170/Relu_1Reluwhile/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_2Mul!while/lstm_cell_170/Sigmoid_2:y:0(while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_170/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_170/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_170/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_170/BiasAdd/ReadVariableOp*^while/lstm_cell_170/MatMul/ReadVariableOp,^while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_170_biasadd_readvariableop_resource5while_lstm_cell_170_biasadd_readvariableop_resource_0"n
4while_lstm_cell_170_matmul_1_readvariableop_resource6while_lstm_cell_170_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_170_matmul_readvariableop_resource4while_lstm_cell_170_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_170/BiasAdd/ReadVariableOp*while/lstm_cell_170/BiasAdd/ReadVariableOp2V
)while/lstm_cell_170/MatMul/ReadVariableOp)while/lstm_cell_170/MatMul/ReadVariableOp2Z
+while/lstm_cell_170/MatMul_1/ReadVariableOp+while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029259

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
while_cond_1029956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1029956___redundant_placeholder05
1while_while_cond_1029956___redundant_placeholder15
1while_while_cond_1029956___redundant_placeholder25
1while_while_cond_1029956___redundant_placeholder3
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
/__inference_lstm_cell_170_layer_call_fn_1034090

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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029609o
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
?
E__inference_lstm_581_layer_call_and_return_conditional_losses_1029883

inputs'
lstm_cell_170_1029801:2('
lstm_cell_170_1029803:
(#
lstm_cell_170_1029805:(
identity??%lstm_cell_170/StatefulPartitionedCall?while;
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
%lstm_cell_170/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_170_1029801lstm_cell_170_1029803lstm_cell_170_1029805*
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029755n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_170_1029801lstm_cell_170_1029803lstm_cell_170_1029805*
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
while_body_1029814*
condR
while_cond_1029813*K
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
NoOpNoOp&^lstm_cell_170/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_170/StatefulPartitionedCall%lstm_cell_170/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_579_layer_call_fn_1032032
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1029183|
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
while_body_1029273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_169_1029297_0:	d?0
while_lstm_cell_169_1029299_0:	2?,
while_lstm_cell_169_1029301_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_169_1029297:	d?.
while_lstm_cell_169_1029299:	2?*
while_lstm_cell_169_1029301:	???+while/lstm_cell_169/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_169/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_169_1029297_0while_lstm_cell_169_1029299_0while_lstm_cell_169_1029301_0*
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029259?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_169/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_169/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_169/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_169/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_169_1029297while_lstm_cell_169_1029297_0"<
while_lstm_cell_169_1029299while_lstm_cell_169_1029299_0"<
while_lstm_cell_169_1029301while_lstm_cell_169_1029301_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_169/StatefulPartitionedCall+while/lstm_cell_169/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_193_layer_call_fn_1030391
lstm_579_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_579_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1030366o
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
_user_specified_namelstm_579_input
?C
?

lstm_581_while_body_1031920.
*lstm_581_while_lstm_581_while_loop_counter4
0lstm_581_while_lstm_581_while_maximum_iterations
lstm_581_while_placeholder 
lstm_581_while_placeholder_1 
lstm_581_while_placeholder_2 
lstm_581_while_placeholder_3-
)lstm_581_while_lstm_581_strided_slice_1_0i
elstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0:2(Q
?lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(L
>lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0:(
lstm_581_while_identity
lstm_581_while_identity_1
lstm_581_while_identity_2
lstm_581_while_identity_3
lstm_581_while_identity_4
lstm_581_while_identity_5+
'lstm_581_while_lstm_581_strided_slice_1g
clstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensorM
;lstm_581_while_lstm_cell_170_matmul_readvariableop_resource:2(O
=lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource:
(J
<lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource:(??3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp?2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp?4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp?
@lstm_581/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_581/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensor_0lstm_581_while_placeholderIlstm_581/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp=lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_581/while/lstm_cell_170/MatMulMatMul9lstm_581/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp?lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_581/while/lstm_cell_170/MatMul_1MatMullstm_581_while_placeholder_2<lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_581/while/lstm_cell_170/addAddV2-lstm_581/while/lstm_cell_170/MatMul:product:0/lstm_581/while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp>lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_581/while/lstm_cell_170/BiasAddBiasAdd$lstm_581/while/lstm_cell_170/add:z:0;lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_581/while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_581/while/lstm_cell_170/splitSplit5lstm_581/while/lstm_cell_170/split/split_dim:output:0-lstm_581/while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_581/while/lstm_cell_170/SigmoidSigmoid+lstm_581/while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_581/while/lstm_cell_170/Sigmoid_1Sigmoid+lstm_581/while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_581/while/lstm_cell_170/mulMul*lstm_581/while/lstm_cell_170/Sigmoid_1:y:0lstm_581_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_581/while/lstm_cell_170/ReluRelu+lstm_581/while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_581/while/lstm_cell_170/mul_1Mul(lstm_581/while/lstm_cell_170/Sigmoid:y:0/lstm_581/while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_581/while/lstm_cell_170/add_1AddV2$lstm_581/while/lstm_cell_170/mul:z:0&lstm_581/while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_581/while/lstm_cell_170/Sigmoid_2Sigmoid+lstm_581/while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_581/while/lstm_cell_170/Relu_1Relu&lstm_581/while/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_581/while/lstm_cell_170/mul_2Mul*lstm_581/while/lstm_cell_170/Sigmoid_2:y:01lstm_581/while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_581/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_581_while_placeholder_1lstm_581_while_placeholder&lstm_581/while/lstm_cell_170/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_581/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_581/while/addAddV2lstm_581_while_placeholderlstm_581/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_581/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_581/while/add_1AddV2*lstm_581_while_lstm_581_while_loop_counterlstm_581/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_581/while/IdentityIdentitylstm_581/while/add_1:z:0^lstm_581/while/NoOp*
T0*
_output_shapes
: ?
lstm_581/while/Identity_1Identity0lstm_581_while_lstm_581_while_maximum_iterations^lstm_581/while/NoOp*
T0*
_output_shapes
: t
lstm_581/while/Identity_2Identitylstm_581/while/add:z:0^lstm_581/while/NoOp*
T0*
_output_shapes
: ?
lstm_581/while/Identity_3IdentityClstm_581/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_581/while/NoOp*
T0*
_output_shapes
: ?
lstm_581/while/Identity_4Identity&lstm_581/while/lstm_cell_170/mul_2:z:0^lstm_581/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_581/while/Identity_5Identity&lstm_581/while/lstm_cell_170/add_1:z:0^lstm_581/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_581/while/NoOpNoOp4^lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp3^lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp5^lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_581_while_identity lstm_581/while/Identity:output:0"?
lstm_581_while_identity_1"lstm_581/while/Identity_1:output:0"?
lstm_581_while_identity_2"lstm_581/while/Identity_2:output:0"?
lstm_581_while_identity_3"lstm_581/while/Identity_3:output:0"?
lstm_581_while_identity_4"lstm_581/while/Identity_4:output:0"?
lstm_581_while_identity_5"lstm_581/while/Identity_5:output:0"T
'lstm_581_while_lstm_581_strided_slice_1)lstm_581_while_lstm_581_strided_slice_1_0"~
<lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource>lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0"?
=lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource?lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0"|
;lstm_581_while_lstm_cell_170_matmul_readvariableop_resource=lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0"?
clstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensorelstm_581_while_tensorarrayv2read_tensorlistgetitem_lstm_581_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp3lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp2h
2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp2lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp2l
4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp4lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1033015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_169_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_169_matmul_readvariableop_resource:	d?G
4while_lstm_cell_169_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_169_biasadd_readvariableop_resource:	???*while/lstm_cell_169/BiasAdd/ReadVariableOp?)while/lstm_cell_169/MatMul/ReadVariableOp?+while/lstm_cell_169/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_169/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_169/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_169/addAddV2$while/lstm_cell_169/MatMul:product:0&while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_169/BiasAddBiasAddwhile/lstm_cell_169/add:z:02while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_169/splitSplit,while/lstm_cell_169/split/split_dim:output:0$while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_169/SigmoidSigmoid"while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_1Sigmoid"while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mulMul!while/lstm_cell_169/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_169/ReluRelu"while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_1Mulwhile/lstm_cell_169/Sigmoid:y:0&while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/add_1AddV2while/lstm_cell_169/mul:z:0while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_2Sigmoid"while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_169/Relu_1Reluwhile/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_2Mul!while/lstm_cell_169/Sigmoid_2:y:0(while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_169/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_169/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_169/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_169/BiasAdd/ReadVariableOp*^while/lstm_cell_169/MatMul/ReadVariableOp,^while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_169_biasadd_readvariableop_resource5while_lstm_cell_169_biasadd_readvariableop_resource_0"n
4while_lstm_cell_169_matmul_1_readvariableop_resource6while_lstm_cell_169_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_169_matmul_readvariableop_resource4while_lstm_cell_169_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_169/BiasAdd/ReadVariableOp*while/lstm_cell_169/BiasAdd/ReadVariableOp2V
)while/lstm_cell_169/MatMul/ReadVariableOp)while/lstm_cell_169/MatMul/ReadVariableOp2Z
+while/lstm_cell_169/MatMul_1/ReadVariableOp+while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1032728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1032728___redundant_placeholder05
1while_while_cond_1032728___redundant_placeholder15
1while_while_cond_1032728___redundant_placeholder25
1while_while_cond_1032728___redundant_placeholder3
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
while_cond_1029622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1029622___redundant_placeholder05
1while_while_cond_1029622___redundant_placeholder15
1while_while_cond_1029622___redundant_placeholder25
1while_while_cond_1029622___redundant_placeholder3
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
?K
?
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033429
inputs_0>
,lstm_cell_170_matmul_readvariableop_resource:2(@
.lstm_cell_170_matmul_1_readvariableop_resource:
(;
-lstm_cell_170_biasadd_readvariableop_resource:(
identity??$lstm_cell_170/BiasAdd/ReadVariableOp?#lstm_cell_170/MatMul/ReadVariableOp?%lstm_cell_170/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_170/MatMul/ReadVariableOpReadVariableOp,lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_170/MatMulMatMulstrided_slice_2:output:0+lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_170/MatMul_1MatMulzeros:output:0-lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_170/addAddV2lstm_cell_170/MatMul:product:0 lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_170/BiasAddBiasAddlstm_cell_170/add:z:0,lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_170/splitSplit&lstm_cell_170/split/split_dim:output:0lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_170/SigmoidSigmoidlstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_1Sigmoidlstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_170/mulMullstm_cell_170/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_170/ReluRelulstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_1Mullstm_cell_170/Sigmoid:y:0 lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_170/add_1AddV2lstm_cell_170/mul:z:0lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_2Sigmoidlstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_170/Relu_1Relulstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_2Mullstm_cell_170/Sigmoid_2:y:0"lstm_cell_170/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_170_matmul_readvariableop_resource.lstm_cell_170_matmul_1_readvariableop_resource-lstm_cell_170_biasadd_readvariableop_resource*
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
while_body_1033345*
condR
while_cond_1033344*K
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
NoOpNoOp%^lstm_cell_170/BiasAdd/ReadVariableOp$^lstm_cell_170/MatMul/ReadVariableOp&^lstm_cell_170/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_170/BiasAdd/ReadVariableOp$lstm_cell_170/BiasAdd/ReadVariableOp2J
#lstm_cell_170/MatMul/ReadVariableOp#lstm_cell_170/MatMul/ReadVariableOp2N
%lstm_cell_170/MatMul_1/ReadVariableOp%lstm_cell_170/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_193_layer_call_and_return_conditional_losses_1032010

inputsH
5lstm_579_lstm_cell_168_matmul_readvariableop_resource:	?J
7lstm_579_lstm_cell_168_matmul_1_readvariableop_resource:	d?E
6lstm_579_lstm_cell_168_biasadd_readvariableop_resource:	?H
5lstm_580_lstm_cell_169_matmul_readvariableop_resource:	d?J
7lstm_580_lstm_cell_169_matmul_1_readvariableop_resource:	2?E
6lstm_580_lstm_cell_169_biasadd_readvariableop_resource:	?G
5lstm_581_lstm_cell_170_matmul_readvariableop_resource:2(I
7lstm_581_lstm_cell_170_matmul_1_readvariableop_resource:
(D
6lstm_581_lstm_cell_170_biasadd_readvariableop_resource:(:
(dense_193_matmul_readvariableop_resource:
7
)dense_193_biasadd_readvariableop_resource:
identity?? dense_193/BiasAdd/ReadVariableOp?dense_193/MatMul/ReadVariableOp?-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp?,lstm_579/lstm_cell_168/MatMul/ReadVariableOp?.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp?lstm_579/while?-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp?,lstm_580/lstm_cell_169/MatMul/ReadVariableOp?.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp?lstm_580/while?-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp?,lstm_581/lstm_cell_170/MatMul/ReadVariableOp?.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp?lstm_581/whileD
lstm_579/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_579/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_579/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_579/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_sliceStridedSlicelstm_579/Shape:output:0%lstm_579/strided_slice/stack:output:0'lstm_579/strided_slice/stack_1:output:0'lstm_579/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_579/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_579/zeros/packedPacklstm_579/strided_slice:output:0 lstm_579/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_579/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_579/zerosFilllstm_579/zeros/packed:output:0lstm_579/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_579/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_579/zeros_1/packedPacklstm_579/strided_slice:output:0"lstm_579/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_579/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_579/zeros_1Fill lstm_579/zeros_1/packed:output:0lstm_579/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_579/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_579/transpose	Transposeinputs lstm_579/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_579/Shape_1Shapelstm_579/transpose:y:0*
T0*
_output_shapes
:h
lstm_579/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_579/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_579/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_slice_1StridedSlicelstm_579/Shape_1:output:0'lstm_579/strided_slice_1/stack:output:0)lstm_579/strided_slice_1/stack_1:output:0)lstm_579/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_579/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_579/TensorArrayV2TensorListReserve-lstm_579/TensorArrayV2/element_shape:output:0!lstm_579/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_579/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_579/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_579/transpose:y:0Glstm_579/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_579/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_579/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_579/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_slice_2StridedSlicelstm_579/transpose:y:0'lstm_579/strided_slice_2/stack:output:0)lstm_579/strided_slice_2/stack_1:output:0)lstm_579/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_579/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp5lstm_579_lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_579/lstm_cell_168/MatMulMatMul!lstm_579/strided_slice_2:output:04lstm_579/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp7lstm_579_lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_579/lstm_cell_168/MatMul_1MatMullstm_579/zeros:output:06lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_579/lstm_cell_168/addAddV2'lstm_579/lstm_cell_168/MatMul:product:0)lstm_579/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp6lstm_579_lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_579/lstm_cell_168/BiasAddBiasAddlstm_579/lstm_cell_168/add:z:05lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_579/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_579/lstm_cell_168/splitSplit/lstm_579/lstm_cell_168/split/split_dim:output:0'lstm_579/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_579/lstm_cell_168/SigmoidSigmoid%lstm_579/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_579/lstm_cell_168/Sigmoid_1Sigmoid%lstm_579/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/mulMul$lstm_579/lstm_cell_168/Sigmoid_1:y:0lstm_579/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_579/lstm_cell_168/ReluRelu%lstm_579/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/mul_1Mul"lstm_579/lstm_cell_168/Sigmoid:y:0)lstm_579/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/add_1AddV2lstm_579/lstm_cell_168/mul:z:0 lstm_579/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_579/lstm_cell_168/Sigmoid_2Sigmoid%lstm_579/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_579/lstm_cell_168/Relu_1Relu lstm_579/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/mul_2Mul$lstm_579/lstm_cell_168/Sigmoid_2:y:0+lstm_579/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_579/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_579/TensorArrayV2_1TensorListReserve/lstm_579/TensorArrayV2_1/element_shape:output:0!lstm_579/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_579/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_579/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_579/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_579/whileWhile$lstm_579/while/loop_counter:output:0*lstm_579/while/maximum_iterations:output:0lstm_579/time:output:0!lstm_579/TensorArrayV2_1:handle:0lstm_579/zeros:output:0lstm_579/zeros_1:output:0!lstm_579/strided_slice_1:output:0@lstm_579/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_579_lstm_cell_168_matmul_readvariableop_resource7lstm_579_lstm_cell_168_matmul_1_readvariableop_resource6lstm_579_lstm_cell_168_biasadd_readvariableop_resource*
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
lstm_579_while_body_1031642*'
condR
lstm_579_while_cond_1031641*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_579/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_579/TensorArrayV2Stack/TensorListStackTensorListStacklstm_579/while:output:3Blstm_579/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_579/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_579/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_579/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_slice_3StridedSlice4lstm_579/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_579/strided_slice_3/stack:output:0)lstm_579/strided_slice_3/stack_1:output:0)lstm_579/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_579/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_579/transpose_1	Transpose4lstm_579/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_579/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_579/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_580/ShapeShapelstm_579/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_580/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_580/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_580/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_sliceStridedSlicelstm_580/Shape:output:0%lstm_580/strided_slice/stack:output:0'lstm_580/strided_slice/stack_1:output:0'lstm_580/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_580/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_580/zeros/packedPacklstm_580/strided_slice:output:0 lstm_580/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_580/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_580/zerosFilllstm_580/zeros/packed:output:0lstm_580/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_580/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_580/zeros_1/packedPacklstm_580/strided_slice:output:0"lstm_580/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_580/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_580/zeros_1Fill lstm_580/zeros_1/packed:output:0lstm_580/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_580/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_580/transpose	Transposelstm_579/transpose_1:y:0 lstm_580/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_580/Shape_1Shapelstm_580/transpose:y:0*
T0*
_output_shapes
:h
lstm_580/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_580/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_580/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_slice_1StridedSlicelstm_580/Shape_1:output:0'lstm_580/strided_slice_1/stack:output:0)lstm_580/strided_slice_1/stack_1:output:0)lstm_580/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_580/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_580/TensorArrayV2TensorListReserve-lstm_580/TensorArrayV2/element_shape:output:0!lstm_580/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_580/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_580/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_580/transpose:y:0Glstm_580/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_580/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_580/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_580/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_slice_2StridedSlicelstm_580/transpose:y:0'lstm_580/strided_slice_2/stack:output:0)lstm_580/strided_slice_2/stack_1:output:0)lstm_580/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_580/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp5lstm_580_lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_580/lstm_cell_169/MatMulMatMul!lstm_580/strided_slice_2:output:04lstm_580/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp7lstm_580_lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_580/lstm_cell_169/MatMul_1MatMullstm_580/zeros:output:06lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_580/lstm_cell_169/addAddV2'lstm_580/lstm_cell_169/MatMul:product:0)lstm_580/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp6lstm_580_lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_580/lstm_cell_169/BiasAddBiasAddlstm_580/lstm_cell_169/add:z:05lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_580/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_580/lstm_cell_169/splitSplit/lstm_580/lstm_cell_169/split/split_dim:output:0'lstm_580/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_580/lstm_cell_169/SigmoidSigmoid%lstm_580/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_580/lstm_cell_169/Sigmoid_1Sigmoid%lstm_580/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/mulMul$lstm_580/lstm_cell_169/Sigmoid_1:y:0lstm_580/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_580/lstm_cell_169/ReluRelu%lstm_580/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/mul_1Mul"lstm_580/lstm_cell_169/Sigmoid:y:0)lstm_580/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/add_1AddV2lstm_580/lstm_cell_169/mul:z:0 lstm_580/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_580/lstm_cell_169/Sigmoid_2Sigmoid%lstm_580/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_580/lstm_cell_169/Relu_1Relu lstm_580/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/mul_2Mul$lstm_580/lstm_cell_169/Sigmoid_2:y:0+lstm_580/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_580/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_580/TensorArrayV2_1TensorListReserve/lstm_580/TensorArrayV2_1/element_shape:output:0!lstm_580/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_580/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_580/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_580/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_580/whileWhile$lstm_580/while/loop_counter:output:0*lstm_580/while/maximum_iterations:output:0lstm_580/time:output:0!lstm_580/TensorArrayV2_1:handle:0lstm_580/zeros:output:0lstm_580/zeros_1:output:0!lstm_580/strided_slice_1:output:0@lstm_580/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_580_lstm_cell_169_matmul_readvariableop_resource7lstm_580_lstm_cell_169_matmul_1_readvariableop_resource6lstm_580_lstm_cell_169_biasadd_readvariableop_resource*
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
lstm_580_while_body_1031781*'
condR
lstm_580_while_cond_1031780*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_580/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_580/TensorArrayV2Stack/TensorListStackTensorListStacklstm_580/while:output:3Blstm_580/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_580/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_580/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_580/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_slice_3StridedSlice4lstm_580/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_580/strided_slice_3/stack:output:0)lstm_580/strided_slice_3/stack_1:output:0)lstm_580/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_580/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_580/transpose_1	Transpose4lstm_580/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_580/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_580/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_581/ShapeShapelstm_580/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_581/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_581/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_581/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_sliceStridedSlicelstm_581/Shape:output:0%lstm_581/strided_slice/stack:output:0'lstm_581/strided_slice/stack_1:output:0'lstm_581/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_581/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_581/zeros/packedPacklstm_581/strided_slice:output:0 lstm_581/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_581/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_581/zerosFilllstm_581/zeros/packed:output:0lstm_581/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_581/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_581/zeros_1/packedPacklstm_581/strided_slice:output:0"lstm_581/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_581/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_581/zeros_1Fill lstm_581/zeros_1/packed:output:0lstm_581/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_581/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_581/transpose	Transposelstm_580/transpose_1:y:0 lstm_581/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_581/Shape_1Shapelstm_581/transpose:y:0*
T0*
_output_shapes
:h
lstm_581/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_581/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_581/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_slice_1StridedSlicelstm_581/Shape_1:output:0'lstm_581/strided_slice_1/stack:output:0)lstm_581/strided_slice_1/stack_1:output:0)lstm_581/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_581/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_581/TensorArrayV2TensorListReserve-lstm_581/TensorArrayV2/element_shape:output:0!lstm_581/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_581/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_581/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_581/transpose:y:0Glstm_581/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_581/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_581/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_581/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_slice_2StridedSlicelstm_581/transpose:y:0'lstm_581/strided_slice_2/stack:output:0)lstm_581/strided_slice_2/stack_1:output:0)lstm_581/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_581/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp5lstm_581_lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_581/lstm_cell_170/MatMulMatMul!lstm_581/strided_slice_2:output:04lstm_581/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp7lstm_581_lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_581/lstm_cell_170/MatMul_1MatMullstm_581/zeros:output:06lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_581/lstm_cell_170/addAddV2'lstm_581/lstm_cell_170/MatMul:product:0)lstm_581/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp6lstm_581_lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_581/lstm_cell_170/BiasAddBiasAddlstm_581/lstm_cell_170/add:z:05lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_581/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_581/lstm_cell_170/splitSplit/lstm_581/lstm_cell_170/split/split_dim:output:0'lstm_581/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_581/lstm_cell_170/SigmoidSigmoid%lstm_581/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_581/lstm_cell_170/Sigmoid_1Sigmoid%lstm_581/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/mulMul$lstm_581/lstm_cell_170/Sigmoid_1:y:0lstm_581/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_581/lstm_cell_170/ReluRelu%lstm_581/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/mul_1Mul"lstm_581/lstm_cell_170/Sigmoid:y:0)lstm_581/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/add_1AddV2lstm_581/lstm_cell_170/mul:z:0 lstm_581/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_581/lstm_cell_170/Sigmoid_2Sigmoid%lstm_581/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_581/lstm_cell_170/Relu_1Relu lstm_581/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/mul_2Mul$lstm_581/lstm_cell_170/Sigmoid_2:y:0+lstm_581/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_581/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_581/TensorArrayV2_1TensorListReserve/lstm_581/TensorArrayV2_1/element_shape:output:0!lstm_581/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_581/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_581/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_581/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_581/whileWhile$lstm_581/while/loop_counter:output:0*lstm_581/while/maximum_iterations:output:0lstm_581/time:output:0!lstm_581/TensorArrayV2_1:handle:0lstm_581/zeros:output:0lstm_581/zeros_1:output:0!lstm_581/strided_slice_1:output:0@lstm_581/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_581_lstm_cell_170_matmul_readvariableop_resource7lstm_581_lstm_cell_170_matmul_1_readvariableop_resource6lstm_581_lstm_cell_170_biasadd_readvariableop_resource*
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
lstm_581_while_body_1031920*'
condR
lstm_581_while_cond_1031919*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_581/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_581/TensorArrayV2Stack/TensorListStackTensorListStacklstm_581/while:output:3Blstm_581/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_581/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_581/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_581/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_slice_3StridedSlice4lstm_581/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_581/strided_slice_3/stack:output:0)lstm_581/strided_slice_3/stack_1:output:0)lstm_581/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_581/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_581/transpose_1	Transpose4lstm_581/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_581/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_581/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_193/MatMul/ReadVariableOpReadVariableOp(dense_193_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_193/MatMulMatMul!lstm_581/strided_slice_3:output:0'dense_193/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_193/BiasAdd/ReadVariableOpReadVariableOp)dense_193_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_193/BiasAddBiasAdddense_193/MatMul:product:0(dense_193/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_193/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_193/BiasAdd/ReadVariableOp ^dense_193/MatMul/ReadVariableOp.^lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp-^lstm_579/lstm_cell_168/MatMul/ReadVariableOp/^lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp^lstm_579/while.^lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp-^lstm_580/lstm_cell_169/MatMul/ReadVariableOp/^lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp^lstm_580/while.^lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp-^lstm_581/lstm_cell_170/MatMul/ReadVariableOp/^lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp^lstm_581/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_193/BiasAdd/ReadVariableOp dense_193/BiasAdd/ReadVariableOp2B
dense_193/MatMul/ReadVariableOpdense_193/MatMul/ReadVariableOp2^
-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp2\
,lstm_579/lstm_cell_168/MatMul/ReadVariableOp,lstm_579/lstm_cell_168/MatMul/ReadVariableOp2`
.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp2 
lstm_579/whilelstm_579/while2^
-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp2\
,lstm_580/lstm_cell_169/MatMul/ReadVariableOp,lstm_580/lstm_cell_169/MatMul/ReadVariableOp2`
.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp2 
lstm_580/whilelstm_580/while2^
-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp2\
,lstm_581/lstm_cell_170/MatMul/ReadVariableOp,lstm_581/lstm_cell_170/MatMul/ReadVariableOp2`
.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp2 
lstm_581/whilelstm_581/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1029055

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
while_cond_1029813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1029813___redundant_placeholder05
1while_while_cond_1029813___redundant_placeholder15
1while_while_cond_1029813___redundant_placeholder25
1while_while_cond_1029813___redundant_placeholder3
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

?
0__inference_sequential_193_layer_call_fn_1031007
lstm_579_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_579_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1030955o
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
_user_specified_namelstm_579_input
?8
?
while_body_1030803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_168_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_168_matmul_readvariableop_resource:	?G
4while_lstm_cell_168_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_168_biasadd_readvariableop_resource:	???*while/lstm_cell_168/BiasAdd/ReadVariableOp?)while/lstm_cell_168/MatMul/ReadVariableOp?+while/lstm_cell_168/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_168/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_168/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_168/addAddV2$while/lstm_cell_168/MatMul:product:0&while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_168/BiasAddBiasAddwhile/lstm_cell_168/add:z:02while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_168/splitSplit,while/lstm_cell_168/split/split_dim:output:0$while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_168/SigmoidSigmoid"while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_1Sigmoid"while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mulMul!while/lstm_cell_168/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_168/ReluRelu"while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_1Mulwhile/lstm_cell_168/Sigmoid:y:0&while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/add_1AddV2while/lstm_cell_168/mul:z:0while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_2Sigmoid"while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_168/Relu_1Reluwhile/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_2Mul!while/lstm_cell_168/Sigmoid_2:y:0(while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_168/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_168/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_168/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_168/BiasAdd/ReadVariableOp*^while/lstm_cell_168/MatMul/ReadVariableOp,^while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_168_biasadd_readvariableop_resource5while_lstm_cell_168_biasadd_readvariableop_resource_0"n
4while_lstm_cell_168_matmul_1_readvariableop_resource6while_lstm_cell_168_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_168_matmul_readvariableop_resource4while_lstm_cell_168_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_168/BiasAdd/ReadVariableOp*while/lstm_cell_168/BiasAdd/ReadVariableOp2V
)while/lstm_cell_168/MatMul/ReadVariableOp)while/lstm_cell_168/MatMul/ReadVariableOp2Z
+while/lstm_cell_168/MatMul_1/ReadVariableOp+while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_580_while_body_1031354.
*lstm_580_while_lstm_580_while_loop_counter4
0lstm_580_while_lstm_580_while_maximum_iterations
lstm_580_while_placeholder 
lstm_580_while_placeholder_1 
lstm_580_while_placeholder_2 
lstm_580_while_placeholder_3-
)lstm_580_while_lstm_580_strided_slice_1_0i
elstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0:	d?R
?lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?M
>lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
lstm_580_while_identity
lstm_580_while_identity_1
lstm_580_while_identity_2
lstm_580_while_identity_3
lstm_580_while_identity_4
lstm_580_while_identity_5+
'lstm_580_while_lstm_580_strided_slice_1g
clstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensorN
;lstm_580_while_lstm_cell_169_matmul_readvariableop_resource:	d?P
=lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource:	2?K
<lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource:	???3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp?2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp?4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp?
@lstm_580/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_580/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensor_0lstm_580_while_placeholderIlstm_580/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp=lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_580/while/lstm_cell_169/MatMulMatMul9lstm_580/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp?lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_580/while/lstm_cell_169/MatMul_1MatMullstm_580_while_placeholder_2<lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_580/while/lstm_cell_169/addAddV2-lstm_580/while/lstm_cell_169/MatMul:product:0/lstm_580/while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp>lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_580/while/lstm_cell_169/BiasAddBiasAdd$lstm_580/while/lstm_cell_169/add:z:0;lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_580/while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_580/while/lstm_cell_169/splitSplit5lstm_580/while/lstm_cell_169/split/split_dim:output:0-lstm_580/while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_580/while/lstm_cell_169/SigmoidSigmoid+lstm_580/while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_580/while/lstm_cell_169/Sigmoid_1Sigmoid+lstm_580/while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_580/while/lstm_cell_169/mulMul*lstm_580/while/lstm_cell_169/Sigmoid_1:y:0lstm_580_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_580/while/lstm_cell_169/ReluRelu+lstm_580/while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_580/while/lstm_cell_169/mul_1Mul(lstm_580/while/lstm_cell_169/Sigmoid:y:0/lstm_580/while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_580/while/lstm_cell_169/add_1AddV2$lstm_580/while/lstm_cell_169/mul:z:0&lstm_580/while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_580/while/lstm_cell_169/Sigmoid_2Sigmoid+lstm_580/while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_580/while/lstm_cell_169/Relu_1Relu&lstm_580/while/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_580/while/lstm_cell_169/mul_2Mul*lstm_580/while/lstm_cell_169/Sigmoid_2:y:01lstm_580/while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_580/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_580_while_placeholder_1lstm_580_while_placeholder&lstm_580/while/lstm_cell_169/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_580/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_580/while/addAddV2lstm_580_while_placeholderlstm_580/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_580/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_580/while/add_1AddV2*lstm_580_while_lstm_580_while_loop_counterlstm_580/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_580/while/IdentityIdentitylstm_580/while/add_1:z:0^lstm_580/while/NoOp*
T0*
_output_shapes
: ?
lstm_580/while/Identity_1Identity0lstm_580_while_lstm_580_while_maximum_iterations^lstm_580/while/NoOp*
T0*
_output_shapes
: t
lstm_580/while/Identity_2Identitylstm_580/while/add:z:0^lstm_580/while/NoOp*
T0*
_output_shapes
: ?
lstm_580/while/Identity_3IdentityClstm_580/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_580/while/NoOp*
T0*
_output_shapes
: ?
lstm_580/while/Identity_4Identity&lstm_580/while/lstm_cell_169/mul_2:z:0^lstm_580/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_580/while/Identity_5Identity&lstm_580/while/lstm_cell_169/add_1:z:0^lstm_580/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_580/while/NoOpNoOp4^lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp3^lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp5^lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_580_while_identity lstm_580/while/Identity:output:0"?
lstm_580_while_identity_1"lstm_580/while/Identity_1:output:0"?
lstm_580_while_identity_2"lstm_580/while/Identity_2:output:0"?
lstm_580_while_identity_3"lstm_580/while/Identity_3:output:0"?
lstm_580_while_identity_4"lstm_580/while/Identity_4:output:0"?
lstm_580_while_identity_5"lstm_580/while/Identity_5:output:0"T
'lstm_580_while_lstm_580_strided_slice_1)lstm_580_while_lstm_580_strided_slice_1_0"~
<lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource>lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0"?
=lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource?lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0"|
;lstm_580_while_lstm_cell_169_matmul_readvariableop_resource=lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0"?
clstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensorelstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp2h
2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp2l
4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*__inference_lstm_579_layer_call_fn_1032021
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1028992|
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1033242

inputs?
,lstm_cell_169_matmul_readvariableop_resource:	d?A
.lstm_cell_169_matmul_1_readvariableop_resource:	2?<
-lstm_cell_169_biasadd_readvariableop_resource:	?
identity??$lstm_cell_169/BiasAdd/ReadVariableOp?#lstm_cell_169/MatMul/ReadVariableOp?%lstm_cell_169/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_169/MatMul/ReadVariableOpReadVariableOp,lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_169/MatMulMatMulstrided_slice_2:output:0+lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_169/MatMul_1MatMulzeros:output:0-lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_169/addAddV2lstm_cell_169/MatMul:product:0 lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_169/BiasAddBiasAddlstm_cell_169/add:z:0,lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_169/splitSplit&lstm_cell_169/split/split_dim:output:0lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_169/SigmoidSigmoidlstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_1Sigmoidlstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_169/mulMullstm_cell_169/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_169/ReluRelulstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_1Mullstm_cell_169/Sigmoid:y:0 lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_169/add_1AddV2lstm_cell_169/mul:z:0lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_2Sigmoidlstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_169/Relu_1Relulstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_2Mullstm_cell_169/Sigmoid_2:y:0"lstm_cell_169/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_169_matmul_readvariableop_resource.lstm_cell_169_matmul_1_readvariableop_resource-lstm_cell_169_biasadd_readvariableop_resource*
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
while_body_1033158*
condR
while_cond_1033157*K
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
NoOpNoOp%^lstm_cell_169/BiasAdd/ReadVariableOp$^lstm_cell_169/MatMul/ReadVariableOp&^lstm_cell_169/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_169/BiasAdd/ReadVariableOp$lstm_cell_169/BiasAdd/ReadVariableOp2J
#lstm_cell_169/MatMul/ReadVariableOp#lstm_cell_169/MatMul/ReadVariableOp2N
%lstm_cell_169/MatMul_1/ReadVariableOp%lstm_cell_169/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1033487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1033487___redundant_placeholder05
1while_while_cond_1033487___redundant_placeholder15
1while_while_cond_1033487___redundant_placeholder25
1while_while_cond_1033487___redundant_placeholder3
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
while_body_1029957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_168_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_168_matmul_readvariableop_resource:	?G
4while_lstm_cell_168_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_168_biasadd_readvariableop_resource:	???*while/lstm_cell_168/BiasAdd/ReadVariableOp?)while/lstm_cell_168/MatMul/ReadVariableOp?+while/lstm_cell_168/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_168/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_168/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_168/addAddV2$while/lstm_cell_168/MatMul:product:0&while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_168/BiasAddBiasAddwhile/lstm_cell_168/add:z:02while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_168/splitSplit,while/lstm_cell_168/split/split_dim:output:0$while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_168/SigmoidSigmoid"while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_1Sigmoid"while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mulMul!while/lstm_cell_168/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_168/ReluRelu"while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_1Mulwhile/lstm_cell_168/Sigmoid:y:0&while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/add_1AddV2while/lstm_cell_168/mul:z:0while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_2Sigmoid"while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_168/Relu_1Reluwhile/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_2Mul!while/lstm_cell_168/Sigmoid_2:y:0(while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_168/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_168/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_168/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_168/BiasAdd/ReadVariableOp*^while/lstm_cell_168/MatMul/ReadVariableOp,^while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_168_biasadd_readvariableop_resource5while_lstm_cell_168_biasadd_readvariableop_resource_0"n
4while_lstm_cell_168_matmul_1_readvariableop_resource6while_lstm_cell_168_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_168_matmul_readvariableop_resource4while_lstm_cell_168_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_168/BiasAdd/ReadVariableOp*while/lstm_cell_168/BiasAdd/ReadVariableOp2V
)while/lstm_cell_168/MatMul/ReadVariableOp)while/lstm_cell_168/MatMul/ReadVariableOp2Z
+while/lstm_cell_168/MatMul_1/ReadVariableOp+while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_193_lstm_580_while_cond_1028612L
Hsequential_193_lstm_580_while_sequential_193_lstm_580_while_loop_counterR
Nsequential_193_lstm_580_while_sequential_193_lstm_580_while_maximum_iterations-
)sequential_193_lstm_580_while_placeholder/
+sequential_193_lstm_580_while_placeholder_1/
+sequential_193_lstm_580_while_placeholder_2/
+sequential_193_lstm_580_while_placeholder_3N
Jsequential_193_lstm_580_while_less_sequential_193_lstm_580_strided_slice_1e
asequential_193_lstm_580_while_sequential_193_lstm_580_while_cond_1028612___redundant_placeholder0e
asequential_193_lstm_580_while_sequential_193_lstm_580_while_cond_1028612___redundant_placeholder1e
asequential_193_lstm_580_while_sequential_193_lstm_580_while_cond_1028612___redundant_placeholder2e
asequential_193_lstm_580_while_sequential_193_lstm_580_while_cond_1028612___redundant_placeholder3*
&sequential_193_lstm_580_while_identity
?
"sequential_193/lstm_580/while/LessLess)sequential_193_lstm_580_while_placeholderJsequential_193_lstm_580_while_less_sequential_193_lstm_580_strided_slice_1*
T0*
_output_shapes
: {
&sequential_193/lstm_580/while/IdentityIdentity&sequential_193/lstm_580/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_193_lstm_580_while_identity/sequential_193/lstm_580/while/Identity:output:0*(
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
?
?
*__inference_lstm_581_layer_call_fn_1033286

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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030557o
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
/__inference_lstm_cell_169_layer_call_fn_1033992

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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029259o
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
?T
?
*sequential_193_lstm_581_while_body_1028752L
Hsequential_193_lstm_581_while_sequential_193_lstm_581_while_loop_counterR
Nsequential_193_lstm_581_while_sequential_193_lstm_581_while_maximum_iterations-
)sequential_193_lstm_581_while_placeholder/
+sequential_193_lstm_581_while_placeholder_1/
+sequential_193_lstm_581_while_placeholder_2/
+sequential_193_lstm_581_while_placeholder_3K
Gsequential_193_lstm_581_while_sequential_193_lstm_581_strided_slice_1_0?
?sequential_193_lstm_581_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_581_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_193_lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0:2(`
Nsequential_193_lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0:
([
Msequential_193_lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0:(*
&sequential_193_lstm_581_while_identity,
(sequential_193_lstm_581_while_identity_1,
(sequential_193_lstm_581_while_identity_2,
(sequential_193_lstm_581_while_identity_3,
(sequential_193_lstm_581_while_identity_4,
(sequential_193_lstm_581_while_identity_5I
Esequential_193_lstm_581_while_sequential_193_lstm_581_strided_slice_1?
?sequential_193_lstm_581_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_581_tensorarrayunstack_tensorlistfromtensor\
Jsequential_193_lstm_581_while_lstm_cell_170_matmul_readvariableop_resource:2(^
Lsequential_193_lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource:
(Y
Ksequential_193_lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource:(??Bsequential_193/lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp?Asequential_193/lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp?Csequential_193/lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp?
Osequential_193/lstm_581/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_193/lstm_581/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_193_lstm_581_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_581_tensorarrayunstack_tensorlistfromtensor_0)sequential_193_lstm_581_while_placeholderXsequential_193/lstm_581/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_193/lstm_581/while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOpLsequential_193_lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_193/lstm_581/while/lstm_cell_170/MatMulMatMulHsequential_193/lstm_581/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_193/lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_193/lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOpNsequential_193_lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_193/lstm_581/while/lstm_cell_170/MatMul_1MatMul+sequential_193_lstm_581_while_placeholder_2Ksequential_193/lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_193/lstm_581/while/lstm_cell_170/addAddV2<sequential_193/lstm_581/while/lstm_cell_170/MatMul:product:0>sequential_193/lstm_581/while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_193/lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOpMsequential_193_lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_193/lstm_581/while/lstm_cell_170/BiasAddBiasAdd3sequential_193/lstm_581/while/lstm_cell_170/add:z:0Jsequential_193/lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_193/lstm_581/while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_193/lstm_581/while/lstm_cell_170/splitSplitDsequential_193/lstm_581/while/lstm_cell_170/split/split_dim:output:0<sequential_193/lstm_581/while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_193/lstm_581/while/lstm_cell_170/SigmoidSigmoid:sequential_193/lstm_581/while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_193/lstm_581/while/lstm_cell_170/Sigmoid_1Sigmoid:sequential_193/lstm_581/while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_193/lstm_581/while/lstm_cell_170/mulMul9sequential_193/lstm_581/while/lstm_cell_170/Sigmoid_1:y:0+sequential_193_lstm_581_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_193/lstm_581/while/lstm_cell_170/ReluRelu:sequential_193/lstm_581/while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_193/lstm_581/while/lstm_cell_170/mul_1Mul7sequential_193/lstm_581/while/lstm_cell_170/Sigmoid:y:0>sequential_193/lstm_581/while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_193/lstm_581/while/lstm_cell_170/add_1AddV23sequential_193/lstm_581/while/lstm_cell_170/mul:z:05sequential_193/lstm_581/while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_193/lstm_581/while/lstm_cell_170/Sigmoid_2Sigmoid:sequential_193/lstm_581/while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_193/lstm_581/while/lstm_cell_170/Relu_1Relu5sequential_193/lstm_581/while/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_193/lstm_581/while/lstm_cell_170/mul_2Mul9sequential_193/lstm_581/while/lstm_cell_170/Sigmoid_2:y:0@sequential_193/lstm_581/while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_193/lstm_581/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_193_lstm_581_while_placeholder_1)sequential_193_lstm_581_while_placeholder5sequential_193/lstm_581/while/lstm_cell_170/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_193/lstm_581/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_193/lstm_581/while/addAddV2)sequential_193_lstm_581_while_placeholder,sequential_193/lstm_581/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_193/lstm_581/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_193/lstm_581/while/add_1AddV2Hsequential_193_lstm_581_while_sequential_193_lstm_581_while_loop_counter.sequential_193/lstm_581/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_193/lstm_581/while/IdentityIdentity'sequential_193/lstm_581/while/add_1:z:0#^sequential_193/lstm_581/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_581/while/Identity_1IdentityNsequential_193_lstm_581_while_sequential_193_lstm_581_while_maximum_iterations#^sequential_193/lstm_581/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_581/while/Identity_2Identity%sequential_193/lstm_581/while/add:z:0#^sequential_193/lstm_581/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_581/while/Identity_3IdentityRsequential_193/lstm_581/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_193/lstm_581/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_581/while/Identity_4Identity5sequential_193/lstm_581/while/lstm_cell_170/mul_2:z:0#^sequential_193/lstm_581/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_193/lstm_581/while/Identity_5Identity5sequential_193/lstm_581/while/lstm_cell_170/add_1:z:0#^sequential_193/lstm_581/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_193/lstm_581/while/NoOpNoOpC^sequential_193/lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOpB^sequential_193/lstm_581/while/lstm_cell_170/MatMul/ReadVariableOpD^sequential_193/lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_193_lstm_581_while_identity/sequential_193/lstm_581/while/Identity:output:0"]
(sequential_193_lstm_581_while_identity_11sequential_193/lstm_581/while/Identity_1:output:0"]
(sequential_193_lstm_581_while_identity_21sequential_193/lstm_581/while/Identity_2:output:0"]
(sequential_193_lstm_581_while_identity_31sequential_193/lstm_581/while/Identity_3:output:0"]
(sequential_193_lstm_581_while_identity_41sequential_193/lstm_581/while/Identity_4:output:0"]
(sequential_193_lstm_581_while_identity_51sequential_193/lstm_581/while/Identity_5:output:0"?
Ksequential_193_lstm_581_while_lstm_cell_170_biasadd_readvariableop_resourceMsequential_193_lstm_581_while_lstm_cell_170_biasadd_readvariableop_resource_0"?
Lsequential_193_lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resourceNsequential_193_lstm_581_while_lstm_cell_170_matmul_1_readvariableop_resource_0"?
Jsequential_193_lstm_581_while_lstm_cell_170_matmul_readvariableop_resourceLsequential_193_lstm_581_while_lstm_cell_170_matmul_readvariableop_resource_0"?
Esequential_193_lstm_581_while_sequential_193_lstm_581_strided_slice_1Gsequential_193_lstm_581_while_sequential_193_lstm_581_strided_slice_1_0"?
?sequential_193_lstm_581_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_581_tensorarrayunstack_tensorlistfromtensor?sequential_193_lstm_581_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_581_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_193/lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOpBsequential_193/lstm_581/while/lstm_cell_170/BiasAdd/ReadVariableOp2?
Asequential_193/lstm_581/while/lstm_cell_170/MatMul/ReadVariableOpAsequential_193/lstm_581/while/lstm_cell_170/MatMul/ReadVariableOp2?
Csequential_193/lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOpCsequential_193/lstm_581/while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_580_while_cond_1031353.
*lstm_580_while_lstm_580_while_loop_counter4
0lstm_580_while_lstm_580_while_maximum_iterations
lstm_580_while_placeholder 
lstm_580_while_placeholder_1 
lstm_580_while_placeholder_2 
lstm_580_while_placeholder_30
,lstm_580_while_less_lstm_580_strided_slice_1G
Clstm_580_while_lstm_580_while_cond_1031353___redundant_placeholder0G
Clstm_580_while_lstm_580_while_cond_1031353___redundant_placeholder1G
Clstm_580_while_lstm_580_while_cond_1031353___redundant_placeholder2G
Clstm_580_while_lstm_580_while_cond_1031353___redundant_placeholder3
lstm_580_while_identity
?
lstm_580/while/LessLesslstm_580_while_placeholder,lstm_580_while_less_lstm_580_strided_slice_1*
T0*
_output_shapes
: ]
lstm_580/while/IdentityIdentitylstm_580/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_580_while_identity lstm_580/while/Identity:output:0*(
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033572
inputs_0>
,lstm_cell_170_matmul_readvariableop_resource:2(@
.lstm_cell_170_matmul_1_readvariableop_resource:
(;
-lstm_cell_170_biasadd_readvariableop_resource:(
identity??$lstm_cell_170/BiasAdd/ReadVariableOp?#lstm_cell_170/MatMul/ReadVariableOp?%lstm_cell_170/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_170/MatMul/ReadVariableOpReadVariableOp,lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_170/MatMulMatMulstrided_slice_2:output:0+lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_170/MatMul_1MatMulzeros:output:0-lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_170/addAddV2lstm_cell_170/MatMul:product:0 lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_170/BiasAddBiasAddlstm_cell_170/add:z:0,lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_170/splitSplit&lstm_cell_170/split/split_dim:output:0lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_170/SigmoidSigmoidlstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_1Sigmoidlstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_170/mulMullstm_cell_170/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_170/ReluRelulstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_1Mullstm_cell_170/Sigmoid:y:0 lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_170/add_1AddV2lstm_cell_170/mul:z:0lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_2Sigmoidlstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_170/Relu_1Relulstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_2Mullstm_cell_170/Sigmoid_2:y:0"lstm_cell_170/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_170_matmul_readvariableop_resource.lstm_cell_170_matmul_1_readvariableop_resource-lstm_cell_170_biasadd_readvariableop_resource*
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
while_body_1033488*
condR
while_cond_1033487*K
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
NoOpNoOp%^lstm_cell_170/BiasAdd/ReadVariableOp$^lstm_cell_170/MatMul/ReadVariableOp&^lstm_cell_170/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_170/BiasAdd/ReadVariableOp$lstm_cell_170/BiasAdd/ReadVariableOp2J
#lstm_cell_170/MatMul/ReadVariableOp#lstm_cell_170/MatMul/ReadVariableOp2N
%lstm_cell_170/MatMul_1/ReadVariableOp%lstm_cell_170/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_580_while_body_1031781.
*lstm_580_while_lstm_580_while_loop_counter4
0lstm_580_while_lstm_580_while_maximum_iterations
lstm_580_while_placeholder 
lstm_580_while_placeholder_1 
lstm_580_while_placeholder_2 
lstm_580_while_placeholder_3-
)lstm_580_while_lstm_580_strided_slice_1_0i
elstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0:	d?R
?lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?M
>lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
lstm_580_while_identity
lstm_580_while_identity_1
lstm_580_while_identity_2
lstm_580_while_identity_3
lstm_580_while_identity_4
lstm_580_while_identity_5+
'lstm_580_while_lstm_580_strided_slice_1g
clstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensorN
;lstm_580_while_lstm_cell_169_matmul_readvariableop_resource:	d?P
=lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource:	2?K
<lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource:	???3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp?2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp?4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp?
@lstm_580/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_580/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensor_0lstm_580_while_placeholderIlstm_580/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp=lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_580/while/lstm_cell_169/MatMulMatMul9lstm_580/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp?lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_580/while/lstm_cell_169/MatMul_1MatMullstm_580_while_placeholder_2<lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_580/while/lstm_cell_169/addAddV2-lstm_580/while/lstm_cell_169/MatMul:product:0/lstm_580/while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp>lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_580/while/lstm_cell_169/BiasAddBiasAdd$lstm_580/while/lstm_cell_169/add:z:0;lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_580/while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_580/while/lstm_cell_169/splitSplit5lstm_580/while/lstm_cell_169/split/split_dim:output:0-lstm_580/while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_580/while/lstm_cell_169/SigmoidSigmoid+lstm_580/while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_580/while/lstm_cell_169/Sigmoid_1Sigmoid+lstm_580/while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_580/while/lstm_cell_169/mulMul*lstm_580/while/lstm_cell_169/Sigmoid_1:y:0lstm_580_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_580/while/lstm_cell_169/ReluRelu+lstm_580/while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_580/while/lstm_cell_169/mul_1Mul(lstm_580/while/lstm_cell_169/Sigmoid:y:0/lstm_580/while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_580/while/lstm_cell_169/add_1AddV2$lstm_580/while/lstm_cell_169/mul:z:0&lstm_580/while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_580/while/lstm_cell_169/Sigmoid_2Sigmoid+lstm_580/while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_580/while/lstm_cell_169/Relu_1Relu&lstm_580/while/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_580/while/lstm_cell_169/mul_2Mul*lstm_580/while/lstm_cell_169/Sigmoid_2:y:01lstm_580/while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_580/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_580_while_placeholder_1lstm_580_while_placeholder&lstm_580/while/lstm_cell_169/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_580/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_580/while/addAddV2lstm_580_while_placeholderlstm_580/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_580/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_580/while/add_1AddV2*lstm_580_while_lstm_580_while_loop_counterlstm_580/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_580/while/IdentityIdentitylstm_580/while/add_1:z:0^lstm_580/while/NoOp*
T0*
_output_shapes
: ?
lstm_580/while/Identity_1Identity0lstm_580_while_lstm_580_while_maximum_iterations^lstm_580/while/NoOp*
T0*
_output_shapes
: t
lstm_580/while/Identity_2Identitylstm_580/while/add:z:0^lstm_580/while/NoOp*
T0*
_output_shapes
: ?
lstm_580/while/Identity_3IdentityClstm_580/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_580/while/NoOp*
T0*
_output_shapes
: ?
lstm_580/while/Identity_4Identity&lstm_580/while/lstm_cell_169/mul_2:z:0^lstm_580/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_580/while/Identity_5Identity&lstm_580/while/lstm_cell_169/add_1:z:0^lstm_580/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_580/while/NoOpNoOp4^lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp3^lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp5^lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_580_while_identity lstm_580/while/Identity:output:0"?
lstm_580_while_identity_1"lstm_580/while/Identity_1:output:0"?
lstm_580_while_identity_2"lstm_580/while/Identity_2:output:0"?
lstm_580_while_identity_3"lstm_580/while/Identity_3:output:0"?
lstm_580_while_identity_4"lstm_580/while/Identity_4:output:0"?
lstm_580_while_identity_5"lstm_580/while/Identity_5:output:0"T
'lstm_580_while_lstm_580_strided_slice_1)lstm_580_while_lstm_580_strided_slice_1_0"~
<lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource>lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0"?
=lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource?lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0"|
;lstm_580_while_lstm_cell_169_matmul_readvariableop_resource=lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0"?
clstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensorelstm_580_while_tensorarrayv2read_tensorlistgetitem_lstm_580_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp3lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp2h
2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp2lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp2l
4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp4lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_193_layer_call_and_return_conditional_losses_1030955

inputs#
lstm_579_1030928:	?#
lstm_579_1030930:	d?
lstm_579_1030932:	?#
lstm_580_1030935:	d?#
lstm_580_1030937:	2?
lstm_580_1030939:	?"
lstm_581_1030942:2("
lstm_581_1030944:
(
lstm_581_1030946:(#
dense_193_1030949:

dense_193_1030951:
identity??!dense_193/StatefulPartitionedCall? lstm_579/StatefulPartitionedCall? lstm_580/StatefulPartitionedCall? lstm_581/StatefulPartitionedCall?
 lstm_579/StatefulPartitionedCallStatefulPartitionedCallinputslstm_579_1030928lstm_579_1030930lstm_579_1030932*
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030887?
 lstm_580/StatefulPartitionedCallStatefulPartitionedCall)lstm_579/StatefulPartitionedCall:output:0lstm_580_1030935lstm_580_1030937lstm_580_1030939*
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030722?
 lstm_581/StatefulPartitionedCallStatefulPartitionedCall)lstm_580/StatefulPartitionedCall:output:0lstm_581_1030942lstm_581_1030944lstm_581_1030946*
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030557?
!dense_193/StatefulPartitionedCallStatefulPartitionedCall)lstm_581/StatefulPartitionedCall:output:0dense_193_1030949dense_193_1030951*
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
F__inference_dense_193_layer_call_and_return_conditional_losses_1030359y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_193/StatefulPartitionedCall!^lstm_579/StatefulPartitionedCall!^lstm_580/StatefulPartitionedCall!^lstm_581/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2D
 lstm_579/StatefulPartitionedCall lstm_579/StatefulPartitionedCall2D
 lstm_580/StatefulPartitionedCall lstm_580/StatefulPartitionedCall2D
 lstm_581/StatefulPartitionedCall lstm_581/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_579_layer_call_fn_1032043

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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030041s
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
?C
?

lstm_579_while_body_1031642.
*lstm_579_while_lstm_579_while_loop_counter4
0lstm_579_while_lstm_579_while_maximum_iterations
lstm_579_while_placeholder 
lstm_579_while_placeholder_1 
lstm_579_while_placeholder_2 
lstm_579_while_placeholder_3-
)lstm_579_while_lstm_579_strided_slice_1_0i
elstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0:	?R
?lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?M
>lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
lstm_579_while_identity
lstm_579_while_identity_1
lstm_579_while_identity_2
lstm_579_while_identity_3
lstm_579_while_identity_4
lstm_579_while_identity_5+
'lstm_579_while_lstm_579_strided_slice_1g
clstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensorN
;lstm_579_while_lstm_cell_168_matmul_readvariableop_resource:	?P
=lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource:	d?K
<lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource:	???3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp?2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp?4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp?
@lstm_579/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_579/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensor_0lstm_579_while_placeholderIlstm_579/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp=lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_579/while/lstm_cell_168/MatMulMatMul9lstm_579/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp?lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_579/while/lstm_cell_168/MatMul_1MatMullstm_579_while_placeholder_2<lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_579/while/lstm_cell_168/addAddV2-lstm_579/while/lstm_cell_168/MatMul:product:0/lstm_579/while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp>lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_579/while/lstm_cell_168/BiasAddBiasAdd$lstm_579/while/lstm_cell_168/add:z:0;lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_579/while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_579/while/lstm_cell_168/splitSplit5lstm_579/while/lstm_cell_168/split/split_dim:output:0-lstm_579/while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_579/while/lstm_cell_168/SigmoidSigmoid+lstm_579/while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_579/while/lstm_cell_168/Sigmoid_1Sigmoid+lstm_579/while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_579/while/lstm_cell_168/mulMul*lstm_579/while/lstm_cell_168/Sigmoid_1:y:0lstm_579_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_579/while/lstm_cell_168/ReluRelu+lstm_579/while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_579/while/lstm_cell_168/mul_1Mul(lstm_579/while/lstm_cell_168/Sigmoid:y:0/lstm_579/while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_579/while/lstm_cell_168/add_1AddV2$lstm_579/while/lstm_cell_168/mul:z:0&lstm_579/while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_579/while/lstm_cell_168/Sigmoid_2Sigmoid+lstm_579/while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_579/while/lstm_cell_168/Relu_1Relu&lstm_579/while/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_579/while/lstm_cell_168/mul_2Mul*lstm_579/while/lstm_cell_168/Sigmoid_2:y:01lstm_579/while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_579/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_579_while_placeholder_1lstm_579_while_placeholder&lstm_579/while/lstm_cell_168/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_579/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_579/while/addAddV2lstm_579_while_placeholderlstm_579/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_579/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_579/while/add_1AddV2*lstm_579_while_lstm_579_while_loop_counterlstm_579/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_579/while/IdentityIdentitylstm_579/while/add_1:z:0^lstm_579/while/NoOp*
T0*
_output_shapes
: ?
lstm_579/while/Identity_1Identity0lstm_579_while_lstm_579_while_maximum_iterations^lstm_579/while/NoOp*
T0*
_output_shapes
: t
lstm_579/while/Identity_2Identitylstm_579/while/add:z:0^lstm_579/while/NoOp*
T0*
_output_shapes
: ?
lstm_579/while/Identity_3IdentityClstm_579/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_579/while/NoOp*
T0*
_output_shapes
: ?
lstm_579/while/Identity_4Identity&lstm_579/while/lstm_cell_168/mul_2:z:0^lstm_579/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_579/while/Identity_5Identity&lstm_579/while/lstm_cell_168/add_1:z:0^lstm_579/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_579/while/NoOpNoOp4^lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp3^lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp5^lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_579_while_identity lstm_579/while/Identity:output:0"?
lstm_579_while_identity_1"lstm_579/while/Identity_1:output:0"?
lstm_579_while_identity_2"lstm_579/while/Identity_2:output:0"?
lstm_579_while_identity_3"lstm_579/while/Identity_3:output:0"?
lstm_579_while_identity_4"lstm_579/while/Identity_4:output:0"?
lstm_579_while_identity_5"lstm_579/while/Identity_5:output:0"T
'lstm_579_while_lstm_579_strided_slice_1)lstm_579_while_lstm_579_strided_slice_1_0"~
<lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource>lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0"?
=lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource?lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0"|
;lstm_579_while_lstm_cell_168_matmul_readvariableop_resource=lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0"?
clstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensorelstm_579_while_tensorarrayv2read_tensorlistgetitem_lstm_579_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp3lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp2h
2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp2lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp2l
4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp4lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1030366

inputs#
lstm_579_1030042:	?#
lstm_579_1030044:	d?
lstm_579_1030046:	?#
lstm_580_1030192:	d?#
lstm_580_1030194:	2?
lstm_580_1030196:	?"
lstm_581_1030342:2("
lstm_581_1030344:
(
lstm_581_1030346:(#
dense_193_1030360:

dense_193_1030362:
identity??!dense_193/StatefulPartitionedCall? lstm_579/StatefulPartitionedCall? lstm_580/StatefulPartitionedCall? lstm_581/StatefulPartitionedCall?
 lstm_579/StatefulPartitionedCallStatefulPartitionedCallinputslstm_579_1030042lstm_579_1030044lstm_579_1030046*
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030041?
 lstm_580/StatefulPartitionedCallStatefulPartitionedCall)lstm_579/StatefulPartitionedCall:output:0lstm_580_1030192lstm_580_1030194lstm_580_1030196*
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030191?
 lstm_581/StatefulPartitionedCallStatefulPartitionedCall)lstm_580/StatefulPartitionedCall:output:0lstm_581_1030342lstm_581_1030344lstm_581_1030346*
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030341?
!dense_193/StatefulPartitionedCallStatefulPartitionedCall)lstm_581/StatefulPartitionedCall:output:0dense_193_1030360dense_193_1030362*
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
F__inference_dense_193_layer_call_and_return_conditional_losses_1030359y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_193/StatefulPartitionedCall!^lstm_579/StatefulPartitionedCall!^lstm_580/StatefulPartitionedCall!^lstm_581/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2D
 lstm_579/StatefulPartitionedCall lstm_579/StatefulPartitionedCall2D
 lstm_580/StatefulPartitionedCall lstm_580/StatefulPartitionedCall2D
 lstm_581/StatefulPartitionedCall lstm_581/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_193_lstm_579_while_cond_1028473L
Hsequential_193_lstm_579_while_sequential_193_lstm_579_while_loop_counterR
Nsequential_193_lstm_579_while_sequential_193_lstm_579_while_maximum_iterations-
)sequential_193_lstm_579_while_placeholder/
+sequential_193_lstm_579_while_placeholder_1/
+sequential_193_lstm_579_while_placeholder_2/
+sequential_193_lstm_579_while_placeholder_3N
Jsequential_193_lstm_579_while_less_sequential_193_lstm_579_strided_slice_1e
asequential_193_lstm_579_while_sequential_193_lstm_579_while_cond_1028473___redundant_placeholder0e
asequential_193_lstm_579_while_sequential_193_lstm_579_while_cond_1028473___redundant_placeholder1e
asequential_193_lstm_579_while_sequential_193_lstm_579_while_cond_1028473___redundant_placeholder2e
asequential_193_lstm_579_while_sequential_193_lstm_579_while_cond_1028473___redundant_placeholder3*
&sequential_193_lstm_579_while_identity
?
"sequential_193/lstm_579/while/LessLess)sequential_193_lstm_579_while_placeholderJsequential_193_lstm_579_while_less_sequential_193_lstm_579_strided_slice_1*
T0*
_output_shapes
: {
&sequential_193/lstm_579/while/IdentityIdentity&sequential_193/lstm_579/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_193_lstm_579_while_identity/sequential_193/lstm_579/while/Identity:output:0*(
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
lstm_581_while_cond_1031492.
*lstm_581_while_lstm_581_while_loop_counter4
0lstm_581_while_lstm_581_while_maximum_iterations
lstm_581_while_placeholder 
lstm_581_while_placeholder_1 
lstm_581_while_placeholder_2 
lstm_581_while_placeholder_30
,lstm_581_while_less_lstm_581_strided_slice_1G
Clstm_581_while_lstm_581_while_cond_1031492___redundant_placeholder0G
Clstm_581_while_lstm_581_while_cond_1031492___redundant_placeholder1G
Clstm_581_while_lstm_581_while_cond_1031492___redundant_placeholder2G
Clstm_581_while_lstm_581_while_cond_1031492___redundant_placeholder3
lstm_581_while_identity
?
lstm_581/while/LessLesslstm_581_while_placeholder,lstm_581_while_less_lstm_581_strided_slice_1*
T0*
_output_shapes
: ]
lstm_581/while/IdentityIdentitylstm_581/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_581_while_identity lstm_581/while/Identity:output:0*(
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
while_cond_1032255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1032255___redundant_placeholder05
1while_while_cond_1032255___redundant_placeholder15
1while_while_cond_1032255___redundant_placeholder25
1while_while_cond_1032255___redundant_placeholder3
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1034041

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
?J
?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030191

inputs?
,lstm_cell_169_matmul_readvariableop_resource:	d?A
.lstm_cell_169_matmul_1_readvariableop_resource:	2?<
-lstm_cell_169_biasadd_readvariableop_resource:	?
identity??$lstm_cell_169/BiasAdd/ReadVariableOp?#lstm_cell_169/MatMul/ReadVariableOp?%lstm_cell_169/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_169/MatMul/ReadVariableOpReadVariableOp,lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_169/MatMulMatMulstrided_slice_2:output:0+lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_169/MatMul_1MatMulzeros:output:0-lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_169/addAddV2lstm_cell_169/MatMul:product:0 lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_169/BiasAddBiasAddlstm_cell_169/add:z:0,lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_169/splitSplit&lstm_cell_169/split/split_dim:output:0lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_169/SigmoidSigmoidlstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_1Sigmoidlstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_169/mulMullstm_cell_169/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_169/ReluRelulstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_1Mullstm_cell_169/Sigmoid:y:0 lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_169/add_1AddV2lstm_cell_169/mul:z:0lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_2Sigmoidlstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_169/Relu_1Relulstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_2Mullstm_cell_169/Sigmoid_2:y:0"lstm_cell_169/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_169_matmul_readvariableop_resource.lstm_cell_169_matmul_1_readvariableop_resource-lstm_cell_169_biasadd_readvariableop_resource*
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
while_body_1030107*
condR
while_cond_1030106*K
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
NoOpNoOp%^lstm_cell_169/BiasAdd/ReadVariableOp$^lstm_cell_169/MatMul/ReadVariableOp&^lstm_cell_169/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_169/BiasAdd/ReadVariableOp$lstm_cell_169/BiasAdd/ReadVariableOp2J
#lstm_cell_169/MatMul/ReadVariableOp#lstm_cell_169/MatMul/ReadVariableOp2N
%lstm_cell_169/MatMul_1/ReadVariableOp%lstm_cell_169/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1029533

inputs(
lstm_cell_169_1029451:	d?(
lstm_cell_169_1029453:	2?$
lstm_cell_169_1029455:	?
identity??%lstm_cell_169/StatefulPartitionedCall?while;
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
%lstm_cell_169/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_169_1029451lstm_cell_169_1029453lstm_cell_169_1029455*
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029405n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_169_1029451lstm_cell_169_1029453lstm_cell_169_1029455*
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
while_body_1029464*
condR
while_cond_1029463*K
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
NoOpNoOp&^lstm_cell_169/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_169/StatefulPartitionedCall%lstm_cell_169/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_193_layer_call_fn_1031129

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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1030366o
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
?
?
while_cond_1032398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1032398___redundant_placeholder05
1while_while_cond_1032398___redundant_placeholder15
1while_while_cond_1032398___redundant_placeholder25
1while_while_cond_1032398___redundant_placeholder3
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
while_cond_1029463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1029463___redundant_placeholder05
1while_while_cond_1029463___redundant_placeholder15
1while_while_cond_1029463___redundant_placeholder25
1while_while_cond_1029463___redundant_placeholder3
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
while_body_1029623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_170_1029647_0:2(/
while_lstm_cell_170_1029649_0:
(+
while_lstm_cell_170_1029651_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_170_1029647:2(-
while_lstm_cell_170_1029649:
()
while_lstm_cell_170_1029651:(??+while/lstm_cell_170/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_170/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_170_1029647_0while_lstm_cell_170_1029649_0while_lstm_cell_170_1029651_0*
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029609?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_170/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_170/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_170/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_170_1029647while_lstm_cell_170_1029647_0"<
while_lstm_cell_170_1029649while_lstm_cell_170_1029649_0"<
while_lstm_cell_170_1029651while_lstm_cell_170_1029651_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_170/StatefulPartitionedCall+while/lstm_cell_170/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_1034314
file_prefix/
+savev2_dense_193_kernel_read_readvariableop-
)savev2_dense_193_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_579_lstm_cell_579_kernel_read_readvariableopF
Bsavev2_lstm_579_lstm_cell_579_recurrent_kernel_read_readvariableop:
6savev2_lstm_579_lstm_cell_579_bias_read_readvariableop<
8savev2_lstm_580_lstm_cell_580_kernel_read_readvariableopF
Bsavev2_lstm_580_lstm_cell_580_recurrent_kernel_read_readvariableop:
6savev2_lstm_580_lstm_cell_580_bias_read_readvariableop<
8savev2_lstm_581_lstm_cell_581_kernel_read_readvariableopF
Bsavev2_lstm_581_lstm_cell_581_recurrent_kernel_read_readvariableop:
6savev2_lstm_581_lstm_cell_581_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_193_kernel_m_read_readvariableop4
0savev2_adam_dense_193_bias_m_read_readvariableopC
?savev2_adam_lstm_579_lstm_cell_579_kernel_m_read_readvariableopM
Isavev2_adam_lstm_579_lstm_cell_579_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_579_lstm_cell_579_bias_m_read_readvariableopC
?savev2_adam_lstm_580_lstm_cell_580_kernel_m_read_readvariableopM
Isavev2_adam_lstm_580_lstm_cell_580_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_580_lstm_cell_580_bias_m_read_readvariableopC
?savev2_adam_lstm_581_lstm_cell_581_kernel_m_read_readvariableopM
Isavev2_adam_lstm_581_lstm_cell_581_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_581_lstm_cell_581_bias_m_read_readvariableop6
2savev2_adam_dense_193_kernel_v_read_readvariableop4
0savev2_adam_dense_193_bias_v_read_readvariableopC
?savev2_adam_lstm_579_lstm_cell_579_kernel_v_read_readvariableopM
Isavev2_adam_lstm_579_lstm_cell_579_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_579_lstm_cell_579_bias_v_read_readvariableopC
?savev2_adam_lstm_580_lstm_cell_580_kernel_v_read_readvariableopM
Isavev2_adam_lstm_580_lstm_cell_580_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_580_lstm_cell_580_bias_v_read_readvariableopC
?savev2_adam_lstm_581_lstm_cell_581_kernel_v_read_readvariableopM
Isavev2_adam_lstm_581_lstm_cell_581_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_581_lstm_cell_581_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_193_kernel_read_readvariableop)savev2_dense_193_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_579_lstm_cell_579_kernel_read_readvariableopBsavev2_lstm_579_lstm_cell_579_recurrent_kernel_read_readvariableop6savev2_lstm_579_lstm_cell_579_bias_read_readvariableop8savev2_lstm_580_lstm_cell_580_kernel_read_readvariableopBsavev2_lstm_580_lstm_cell_580_recurrent_kernel_read_readvariableop6savev2_lstm_580_lstm_cell_580_bias_read_readvariableop8savev2_lstm_581_lstm_cell_581_kernel_read_readvariableopBsavev2_lstm_581_lstm_cell_581_recurrent_kernel_read_readvariableop6savev2_lstm_581_lstm_cell_581_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_193_kernel_m_read_readvariableop0savev2_adam_dense_193_bias_m_read_readvariableop?savev2_adam_lstm_579_lstm_cell_579_kernel_m_read_readvariableopIsavev2_adam_lstm_579_lstm_cell_579_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_579_lstm_cell_579_bias_m_read_readvariableop?savev2_adam_lstm_580_lstm_cell_580_kernel_m_read_readvariableopIsavev2_adam_lstm_580_lstm_cell_580_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_580_lstm_cell_580_bias_m_read_readvariableop?savev2_adam_lstm_581_lstm_cell_581_kernel_m_read_readvariableopIsavev2_adam_lstm_581_lstm_cell_581_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_581_lstm_cell_581_bias_m_read_readvariableop2savev2_adam_dense_193_kernel_v_read_readvariableop0savev2_adam_dense_193_bias_v_read_readvariableop?savev2_adam_lstm_579_lstm_cell_579_kernel_v_read_readvariableopIsavev2_adam_lstm_579_lstm_cell_579_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_579_lstm_cell_579_bias_v_read_readvariableop?savev2_adam_lstm_580_lstm_cell_580_kernel_v_read_readvariableopIsavev2_adam_lstm_580_lstm_cell_580_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_580_lstm_cell_580_bias_v_read_readvariableop?savev2_adam_lstm_581_lstm_cell_581_kernel_v_read_readvariableopIsavev2_adam_lstm_581_lstm_cell_581_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_581_lstm_cell_581_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
/__inference_lstm_cell_170_layer_call_fn_1034107

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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029755o
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
while_body_1032729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_169_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_169_matmul_readvariableop_resource:	d?G
4while_lstm_cell_169_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_169_biasadd_readvariableop_resource:	???*while/lstm_cell_169/BiasAdd/ReadVariableOp?)while/lstm_cell_169/MatMul/ReadVariableOp?+while/lstm_cell_169/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_169/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_169/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_169/addAddV2$while/lstm_cell_169/MatMul:product:0&while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_169/BiasAddBiasAddwhile/lstm_cell_169/add:z:02while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_169/splitSplit,while/lstm_cell_169/split/split_dim:output:0$while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_169/SigmoidSigmoid"while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_1Sigmoid"while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mulMul!while/lstm_cell_169/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_169/ReluRelu"while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_1Mulwhile/lstm_cell_169/Sigmoid:y:0&while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/add_1AddV2while/lstm_cell_169/mul:z:0while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_2Sigmoid"while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_169/Relu_1Reluwhile/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_2Mul!while/lstm_cell_169/Sigmoid_2:y:0(while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_169/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_169/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_169/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_169/BiasAdd/ReadVariableOp*^while/lstm_cell_169/MatMul/ReadVariableOp,^while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_169_biasadd_readvariableop_resource5while_lstm_cell_169_biasadd_readvariableop_resource_0"n
4while_lstm_cell_169_matmul_1_readvariableop_resource6while_lstm_cell_169_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_169_matmul_readvariableop_resource4while_lstm_cell_169_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_169/BiasAdd/ReadVariableOp*while/lstm_cell_169/BiasAdd/ReadVariableOp2V
)while/lstm_cell_169/MatMul/ReadVariableOp)while/lstm_cell_169/MatMul/ReadVariableOp2Z
+while/lstm_cell_169/MatMul_1/ReadVariableOp+while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1029114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_168_1029138_0:	?0
while_lstm_cell_168_1029140_0:	d?,
while_lstm_cell_168_1029142_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_168_1029138:	?.
while_lstm_cell_168_1029140:	d?*
while_lstm_cell_168_1029142:	???+while/lstm_cell_168/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_168/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_168_1029138_0while_lstm_cell_168_1029140_0while_lstm_cell_168_1029142_0*
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1029055?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_168/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_168/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_168/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_168/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_168_1029138while_lstm_cell_168_1029138_0"<
while_lstm_cell_168_1029140while_lstm_cell_168_1029140_0"<
while_lstm_cell_168_1029142while_lstm_cell_168_1029142_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_168/StatefulPartitionedCall+while/lstm_cell_168/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_580_layer_call_fn_1032648
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1029533|
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032340
inputs_0?
,lstm_cell_168_matmul_readvariableop_resource:	?A
.lstm_cell_168_matmul_1_readvariableop_resource:	d?<
-lstm_cell_168_biasadd_readvariableop_resource:	?
identity??$lstm_cell_168/BiasAdd/ReadVariableOp?#lstm_cell_168/MatMul/ReadVariableOp?%lstm_cell_168/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_168/MatMul/ReadVariableOpReadVariableOp,lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_168/MatMulMatMulstrided_slice_2:output:0+lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_168/MatMul_1MatMulzeros:output:0-lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_168/addAddV2lstm_cell_168/MatMul:product:0 lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_168/BiasAddBiasAddlstm_cell_168/add:z:0,lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_168/splitSplit&lstm_cell_168/split/split_dim:output:0lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_168/SigmoidSigmoidlstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_1Sigmoidlstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_168/mulMullstm_cell_168/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_168/ReluRelulstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_1Mullstm_cell_168/Sigmoid:y:0 lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_168/add_1AddV2lstm_cell_168/mul:z:0lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_2Sigmoidlstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_168/Relu_1Relulstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_2Mullstm_cell_168/Sigmoid_2:y:0"lstm_cell_168/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_168_matmul_readvariableop_resource.lstm_cell_168_matmul_1_readvariableop_resource-lstm_cell_168_biasadd_readvariableop_resource*
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
while_body_1032256*
condR
while_cond_1032255*K
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
NoOpNoOp%^lstm_cell_168/BiasAdd/ReadVariableOp$^lstm_cell_168/MatMul/ReadVariableOp&^lstm_cell_168/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_168/BiasAdd/ReadVariableOp$lstm_cell_168/BiasAdd/ReadVariableOp2J
#lstm_cell_168/MatMul/ReadVariableOp#lstm_cell_168/MatMul/ReadVariableOp2N
%lstm_cell_168/MatMul_1/ReadVariableOp%lstm_cell_168/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1033488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_170_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_170_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_170_matmul_readvariableop_resource:2(F
4while_lstm_cell_170_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_170_biasadd_readvariableop_resource:(??*while/lstm_cell_170/BiasAdd/ReadVariableOp?)while/lstm_cell_170/MatMul/ReadVariableOp?+while/lstm_cell_170/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_170/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_170/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_170/addAddV2$while/lstm_cell_170/MatMul:product:0&while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_170/BiasAddBiasAddwhile/lstm_cell_170/add:z:02while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_170/splitSplit,while/lstm_cell_170/split/split_dim:output:0$while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_170/SigmoidSigmoid"while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_1Sigmoid"while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mulMul!while/lstm_cell_170/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_170/ReluRelu"while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_1Mulwhile/lstm_cell_170/Sigmoid:y:0&while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/add_1AddV2while/lstm_cell_170/mul:z:0while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_2Sigmoid"while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_170/Relu_1Reluwhile/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_2Mul!while/lstm_cell_170/Sigmoid_2:y:0(while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_170/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_170/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_170/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_170/BiasAdd/ReadVariableOp*^while/lstm_cell_170/MatMul/ReadVariableOp,^while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_170_biasadd_readvariableop_resource5while_lstm_cell_170_biasadd_readvariableop_resource_0"n
4while_lstm_cell_170_matmul_1_readvariableop_resource6while_lstm_cell_170_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_170_matmul_readvariableop_resource4while_lstm_cell_170_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_170/BiasAdd/ReadVariableOp*while/lstm_cell_170/BiasAdd/ReadVariableOp2V
)while/lstm_cell_170/MatMul/ReadVariableOp)while/lstm_cell_170/MatMul/ReadVariableOp2Z
+while/lstm_cell_170/MatMul_1/ReadVariableOp+while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1029113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1029113___redundant_placeholder05
1while_while_cond_1029113___redundant_placeholder15
1while_while_cond_1029113___redundant_placeholder25
1while_while_cond_1029113___redundant_placeholder3
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
*__inference_lstm_579_layer_call_fn_1032054

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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030887s
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
while_cond_1028922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1028922___redundant_placeholder05
1while_while_cond_1028922___redundant_placeholder15
1while_while_cond_1028922___redundant_placeholder25
1while_while_cond_1028922___redundant_placeholder3
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1034139

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
?J
?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030722

inputs?
,lstm_cell_169_matmul_readvariableop_resource:	d?A
.lstm_cell_169_matmul_1_readvariableop_resource:	2?<
-lstm_cell_169_biasadd_readvariableop_resource:	?
identity??$lstm_cell_169/BiasAdd/ReadVariableOp?#lstm_cell_169/MatMul/ReadVariableOp?%lstm_cell_169/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_169/MatMul/ReadVariableOpReadVariableOp,lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_169/MatMulMatMulstrided_slice_2:output:0+lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_169/MatMul_1MatMulzeros:output:0-lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_169/addAddV2lstm_cell_169/MatMul:product:0 lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_169/BiasAddBiasAddlstm_cell_169/add:z:0,lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_169/splitSplit&lstm_cell_169/split/split_dim:output:0lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_169/SigmoidSigmoidlstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_1Sigmoidlstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_169/mulMullstm_cell_169/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_169/ReluRelulstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_1Mullstm_cell_169/Sigmoid:y:0 lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_169/add_1AddV2lstm_cell_169/mul:z:0lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_2Sigmoidlstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_169/Relu_1Relulstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_2Mullstm_cell_169/Sigmoid_2:y:0"lstm_cell_169/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_169_matmul_readvariableop_resource.lstm_cell_169_matmul_1_readvariableop_resource-lstm_cell_169_biasadd_readvariableop_resource*
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
while_body_1030638*
condR
while_cond_1030637*K
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
NoOpNoOp%^lstm_cell_169/BiasAdd/ReadVariableOp$^lstm_cell_169/MatMul/ReadVariableOp&^lstm_cell_169/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_169/BiasAdd/ReadVariableOp$lstm_cell_169/BiasAdd/ReadVariableOp2J
#lstm_cell_169/MatMul/ReadVariableOp#lstm_cell_169/MatMul/ReadVariableOp2N
%lstm_cell_169/MatMul_1/ReadVariableOp%lstm_cell_169/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_580_layer_call_fn_1032659

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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030191s
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030557

inputs>
,lstm_cell_170_matmul_readvariableop_resource:2(@
.lstm_cell_170_matmul_1_readvariableop_resource:
(;
-lstm_cell_170_biasadd_readvariableop_resource:(
identity??$lstm_cell_170/BiasAdd/ReadVariableOp?#lstm_cell_170/MatMul/ReadVariableOp?%lstm_cell_170/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_170/MatMul/ReadVariableOpReadVariableOp,lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_170/MatMulMatMulstrided_slice_2:output:0+lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_170/MatMul_1MatMulzeros:output:0-lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_170/addAddV2lstm_cell_170/MatMul:product:0 lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_170/BiasAddBiasAddlstm_cell_170/add:z:0,lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_170/splitSplit&lstm_cell_170/split/split_dim:output:0lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_170/SigmoidSigmoidlstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_1Sigmoidlstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_170/mulMullstm_cell_170/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_170/ReluRelulstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_1Mullstm_cell_170/Sigmoid:y:0 lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_170/add_1AddV2lstm_cell_170/mul:z:0lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_170/Sigmoid_2Sigmoidlstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_170/Relu_1Relulstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_170/mul_2Mullstm_cell_170/Sigmoid_2:y:0"lstm_cell_170/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_170_matmul_readvariableop_resource.lstm_cell_170_matmul_1_readvariableop_resource-lstm_cell_170_biasadd_readvariableop_resource*
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
while_body_1030473*
condR
while_cond_1030472*K
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
NoOpNoOp%^lstm_cell_170/BiasAdd/ReadVariableOp$^lstm_cell_170/MatMul/ReadVariableOp&^lstm_cell_170/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_170/BiasAdd/ReadVariableOp$lstm_cell_170/BiasAdd/ReadVariableOp2J
#lstm_cell_170/MatMul/ReadVariableOp#lstm_cell_170/MatMul/ReadVariableOp2N
%lstm_cell_170/MatMul_1/ReadVariableOp%lstm_cell_170/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1030107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_169_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_169_matmul_readvariableop_resource:	d?G
4while_lstm_cell_169_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_169_biasadd_readvariableop_resource:	???*while/lstm_cell_169/BiasAdd/ReadVariableOp?)while/lstm_cell_169/MatMul/ReadVariableOp?+while/lstm_cell_169/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_169/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_169/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_169/addAddV2$while/lstm_cell_169/MatMul:product:0&while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_169/BiasAddBiasAddwhile/lstm_cell_169/add:z:02while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_169/splitSplit,while/lstm_cell_169/split/split_dim:output:0$while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_169/SigmoidSigmoid"while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_1Sigmoid"while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mulMul!while/lstm_cell_169/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_169/ReluRelu"while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_1Mulwhile/lstm_cell_169/Sigmoid:y:0&while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/add_1AddV2while/lstm_cell_169/mul:z:0while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_2Sigmoid"while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_169/Relu_1Reluwhile/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_2Mul!while/lstm_cell_169/Sigmoid_2:y:0(while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_169/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_169/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_169/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_169/BiasAdd/ReadVariableOp*^while/lstm_cell_169/MatMul/ReadVariableOp,^while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_169_biasadd_readvariableop_resource5while_lstm_cell_169_biasadd_readvariableop_resource_0"n
4while_lstm_cell_169_matmul_1_readvariableop_resource6while_lstm_cell_169_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_169_matmul_readvariableop_resource4while_lstm_cell_169_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_169/BiasAdd/ReadVariableOp*while/lstm_cell_169/BiasAdd/ReadVariableOp2V
)while/lstm_cell_169/MatMul/ReadVariableOp)while/lstm_cell_169/MatMul/ReadVariableOp2Z
+while/lstm_cell_169/MatMul_1/ReadVariableOp+while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_193_lstm_579_while_body_1028474L
Hsequential_193_lstm_579_while_sequential_193_lstm_579_while_loop_counterR
Nsequential_193_lstm_579_while_sequential_193_lstm_579_while_maximum_iterations-
)sequential_193_lstm_579_while_placeholder/
+sequential_193_lstm_579_while_placeholder_1/
+sequential_193_lstm_579_while_placeholder_2/
+sequential_193_lstm_579_while_placeholder_3K
Gsequential_193_lstm_579_while_sequential_193_lstm_579_strided_slice_1_0?
?sequential_193_lstm_579_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_579_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_193_lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0:	?a
Nsequential_193_lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?\
Msequential_193_lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0:	?*
&sequential_193_lstm_579_while_identity,
(sequential_193_lstm_579_while_identity_1,
(sequential_193_lstm_579_while_identity_2,
(sequential_193_lstm_579_while_identity_3,
(sequential_193_lstm_579_while_identity_4,
(sequential_193_lstm_579_while_identity_5I
Esequential_193_lstm_579_while_sequential_193_lstm_579_strided_slice_1?
?sequential_193_lstm_579_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_579_tensorarrayunstack_tensorlistfromtensor]
Jsequential_193_lstm_579_while_lstm_cell_168_matmul_readvariableop_resource:	?_
Lsequential_193_lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource:	d?Z
Ksequential_193_lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource:	???Bsequential_193/lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp?Asequential_193/lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp?Csequential_193/lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp?
Osequential_193/lstm_579/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_193/lstm_579/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_193_lstm_579_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_579_tensorarrayunstack_tensorlistfromtensor_0)sequential_193_lstm_579_while_placeholderXsequential_193/lstm_579/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_193/lstm_579/while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOpLsequential_193_lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_193/lstm_579/while/lstm_cell_168/MatMulMatMulHsequential_193/lstm_579/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_193/lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_193/lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOpNsequential_193_lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_193/lstm_579/while/lstm_cell_168/MatMul_1MatMul+sequential_193_lstm_579_while_placeholder_2Ksequential_193/lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_193/lstm_579/while/lstm_cell_168/addAddV2<sequential_193/lstm_579/while/lstm_cell_168/MatMul:product:0>sequential_193/lstm_579/while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_193/lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOpMsequential_193_lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_193/lstm_579/while/lstm_cell_168/BiasAddBiasAdd3sequential_193/lstm_579/while/lstm_cell_168/add:z:0Jsequential_193/lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_193/lstm_579/while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_193/lstm_579/while/lstm_cell_168/splitSplitDsequential_193/lstm_579/while/lstm_cell_168/split/split_dim:output:0<sequential_193/lstm_579/while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_193/lstm_579/while/lstm_cell_168/SigmoidSigmoid:sequential_193/lstm_579/while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_193/lstm_579/while/lstm_cell_168/Sigmoid_1Sigmoid:sequential_193/lstm_579/while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_193/lstm_579/while/lstm_cell_168/mulMul9sequential_193/lstm_579/while/lstm_cell_168/Sigmoid_1:y:0+sequential_193_lstm_579_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_193/lstm_579/while/lstm_cell_168/ReluRelu:sequential_193/lstm_579/while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_193/lstm_579/while/lstm_cell_168/mul_1Mul7sequential_193/lstm_579/while/lstm_cell_168/Sigmoid:y:0>sequential_193/lstm_579/while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_193/lstm_579/while/lstm_cell_168/add_1AddV23sequential_193/lstm_579/while/lstm_cell_168/mul:z:05sequential_193/lstm_579/while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_193/lstm_579/while/lstm_cell_168/Sigmoid_2Sigmoid:sequential_193/lstm_579/while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_193/lstm_579/while/lstm_cell_168/Relu_1Relu5sequential_193/lstm_579/while/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_193/lstm_579/while/lstm_cell_168/mul_2Mul9sequential_193/lstm_579/while/lstm_cell_168/Sigmoid_2:y:0@sequential_193/lstm_579/while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_193/lstm_579/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_193_lstm_579_while_placeholder_1)sequential_193_lstm_579_while_placeholder5sequential_193/lstm_579/while/lstm_cell_168/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_193/lstm_579/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_193/lstm_579/while/addAddV2)sequential_193_lstm_579_while_placeholder,sequential_193/lstm_579/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_193/lstm_579/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_193/lstm_579/while/add_1AddV2Hsequential_193_lstm_579_while_sequential_193_lstm_579_while_loop_counter.sequential_193/lstm_579/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_193/lstm_579/while/IdentityIdentity'sequential_193/lstm_579/while/add_1:z:0#^sequential_193/lstm_579/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_579/while/Identity_1IdentityNsequential_193_lstm_579_while_sequential_193_lstm_579_while_maximum_iterations#^sequential_193/lstm_579/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_579/while/Identity_2Identity%sequential_193/lstm_579/while/add:z:0#^sequential_193/lstm_579/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_579/while/Identity_3IdentityRsequential_193/lstm_579/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_193/lstm_579/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_579/while/Identity_4Identity5sequential_193/lstm_579/while/lstm_cell_168/mul_2:z:0#^sequential_193/lstm_579/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_193/lstm_579/while/Identity_5Identity5sequential_193/lstm_579/while/lstm_cell_168/add_1:z:0#^sequential_193/lstm_579/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_193/lstm_579/while/NoOpNoOpC^sequential_193/lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOpB^sequential_193/lstm_579/while/lstm_cell_168/MatMul/ReadVariableOpD^sequential_193/lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_193_lstm_579_while_identity/sequential_193/lstm_579/while/Identity:output:0"]
(sequential_193_lstm_579_while_identity_11sequential_193/lstm_579/while/Identity_1:output:0"]
(sequential_193_lstm_579_while_identity_21sequential_193/lstm_579/while/Identity_2:output:0"]
(sequential_193_lstm_579_while_identity_31sequential_193/lstm_579/while/Identity_3:output:0"]
(sequential_193_lstm_579_while_identity_41sequential_193/lstm_579/while/Identity_4:output:0"]
(sequential_193_lstm_579_while_identity_51sequential_193/lstm_579/while/Identity_5:output:0"?
Ksequential_193_lstm_579_while_lstm_cell_168_biasadd_readvariableop_resourceMsequential_193_lstm_579_while_lstm_cell_168_biasadd_readvariableop_resource_0"?
Lsequential_193_lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resourceNsequential_193_lstm_579_while_lstm_cell_168_matmul_1_readvariableop_resource_0"?
Jsequential_193_lstm_579_while_lstm_cell_168_matmul_readvariableop_resourceLsequential_193_lstm_579_while_lstm_cell_168_matmul_readvariableop_resource_0"?
Esequential_193_lstm_579_while_sequential_193_lstm_579_strided_slice_1Gsequential_193_lstm_579_while_sequential_193_lstm_579_strided_slice_1_0"?
?sequential_193_lstm_579_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_579_tensorarrayunstack_tensorlistfromtensor?sequential_193_lstm_579_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_579_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_193/lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOpBsequential_193/lstm_579/while/lstm_cell_168/BiasAdd/ReadVariableOp2?
Asequential_193/lstm_579/while/lstm_cell_168/MatMul/ReadVariableOpAsequential_193/lstm_579/while/lstm_cell_168/MatMul/ReadVariableOp2?
Csequential_193/lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOpCsequential_193/lstm_579/while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1029814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_170_1029838_0:2(/
while_lstm_cell_170_1029840_0:
(+
while_lstm_cell_170_1029842_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_170_1029838:2(-
while_lstm_cell_170_1029840:
()
while_lstm_cell_170_1029842:(??+while/lstm_cell_170/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_170/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_170_1029838_0while_lstm_cell_170_1029840_0while_lstm_cell_170_1029842_0*
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029755?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_170/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_170/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_170/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_170_1029838while_lstm_cell_170_1029838_0"<
while_lstm_cell_170_1029840while_lstm_cell_170_1029840_0"<
while_lstm_cell_170_1029842while_lstm_cell_170_1029842_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_170/StatefulPartitionedCall+while/lstm_cell_170/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1032956
inputs_0?
,lstm_cell_169_matmul_readvariableop_resource:	d?A
.lstm_cell_169_matmul_1_readvariableop_resource:	2?<
-lstm_cell_169_biasadd_readvariableop_resource:	?
identity??$lstm_cell_169/BiasAdd/ReadVariableOp?#lstm_cell_169/MatMul/ReadVariableOp?%lstm_cell_169/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_169/MatMul/ReadVariableOpReadVariableOp,lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_169/MatMulMatMulstrided_slice_2:output:0+lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_169/MatMul_1MatMulzeros:output:0-lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_169/addAddV2lstm_cell_169/MatMul:product:0 lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_169/BiasAddBiasAddlstm_cell_169/add:z:0,lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_169/splitSplit&lstm_cell_169/split/split_dim:output:0lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_169/SigmoidSigmoidlstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_1Sigmoidlstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_169/mulMullstm_cell_169/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_169/ReluRelulstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_1Mullstm_cell_169/Sigmoid:y:0 lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_169/add_1AddV2lstm_cell_169/mul:z:0lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_2Sigmoidlstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_169/Relu_1Relulstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_2Mullstm_cell_169/Sigmoid_2:y:0"lstm_cell_169/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_169_matmul_readvariableop_resource.lstm_cell_169_matmul_1_readvariableop_resource-lstm_cell_169_biasadd_readvariableop_resource*
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
while_body_1032872*
condR
while_cond_1032871*K
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
NoOpNoOp%^lstm_cell_169/BiasAdd/ReadVariableOp$^lstm_cell_169/MatMul/ReadVariableOp&^lstm_cell_169/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_169/BiasAdd/ReadVariableOp$lstm_cell_169/BiasAdd/ReadVariableOp2J
#lstm_cell_169/MatMul/ReadVariableOp#lstm_cell_169/MatMul/ReadVariableOp2N
%lstm_cell_169/MatMul_1/ReadVariableOp%lstm_cell_169/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_579_while_cond_1031641.
*lstm_579_while_lstm_579_while_loop_counter4
0lstm_579_while_lstm_579_while_maximum_iterations
lstm_579_while_placeholder 
lstm_579_while_placeholder_1 
lstm_579_while_placeholder_2 
lstm_579_while_placeholder_30
,lstm_579_while_less_lstm_579_strided_slice_1G
Clstm_579_while_lstm_579_while_cond_1031641___redundant_placeholder0G
Clstm_579_while_lstm_579_while_cond_1031641___redundant_placeholder1G
Clstm_579_while_lstm_579_while_cond_1031641___redundant_placeholder2G
Clstm_579_while_lstm_579_while_cond_1031641___redundant_placeholder3
lstm_579_while_identity
?
lstm_579/while/LessLesslstm_579_while_placeholder,lstm_579_while_less_lstm_579_strided_slice_1*
T0*
_output_shapes
: ]
lstm_579/while/IdentityIdentitylstm_579/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_579_while_identity lstm_579/while/Identity:output:0*(
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
while_body_1032542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_168_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_168_matmul_readvariableop_resource:	?G
4while_lstm_cell_168_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_168_biasadd_readvariableop_resource:	???*while/lstm_cell_168/BiasAdd/ReadVariableOp?)while/lstm_cell_168/MatMul/ReadVariableOp?+while/lstm_cell_168/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_168/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_168/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_168/addAddV2$while/lstm_cell_168/MatMul:product:0&while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_168/BiasAddBiasAddwhile/lstm_cell_168/add:z:02while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_168/splitSplit,while/lstm_cell_168/split/split_dim:output:0$while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_168/SigmoidSigmoid"while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_1Sigmoid"while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mulMul!while/lstm_cell_168/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_168/ReluRelu"while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_1Mulwhile/lstm_cell_168/Sigmoid:y:0&while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/add_1AddV2while/lstm_cell_168/mul:z:0while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_2Sigmoid"while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_168/Relu_1Reluwhile/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_2Mul!while/lstm_cell_168/Sigmoid_2:y:0(while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_168/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_168/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_168/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_168/BiasAdd/ReadVariableOp*^while/lstm_cell_168/MatMul/ReadVariableOp,^while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_168_biasadd_readvariableop_resource5while_lstm_cell_168_biasadd_readvariableop_resource_0"n
4while_lstm_cell_168_matmul_1_readvariableop_resource6while_lstm_cell_168_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_168_matmul_readvariableop_resource4while_lstm_cell_168_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_168/BiasAdd/ReadVariableOp*while/lstm_cell_168/BiasAdd/ReadVariableOp2V
)while/lstm_cell_168/MatMul/ReadVariableOp)while/lstm_cell_168/MatMul/ReadVariableOp2Z
+while/lstm_cell_168/MatMul_1/ReadVariableOp+while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1030256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1030256___redundant_placeholder05
1while_while_cond_1030256___redundant_placeholder15
1while_while_cond_1030256___redundant_placeholder25
1while_while_cond_1030256___redundant_placeholder3
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031583

inputsH
5lstm_579_lstm_cell_168_matmul_readvariableop_resource:	?J
7lstm_579_lstm_cell_168_matmul_1_readvariableop_resource:	d?E
6lstm_579_lstm_cell_168_biasadd_readvariableop_resource:	?H
5lstm_580_lstm_cell_169_matmul_readvariableop_resource:	d?J
7lstm_580_lstm_cell_169_matmul_1_readvariableop_resource:	2?E
6lstm_580_lstm_cell_169_biasadd_readvariableop_resource:	?G
5lstm_581_lstm_cell_170_matmul_readvariableop_resource:2(I
7lstm_581_lstm_cell_170_matmul_1_readvariableop_resource:
(D
6lstm_581_lstm_cell_170_biasadd_readvariableop_resource:(:
(dense_193_matmul_readvariableop_resource:
7
)dense_193_biasadd_readvariableop_resource:
identity?? dense_193/BiasAdd/ReadVariableOp?dense_193/MatMul/ReadVariableOp?-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp?,lstm_579/lstm_cell_168/MatMul/ReadVariableOp?.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp?lstm_579/while?-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp?,lstm_580/lstm_cell_169/MatMul/ReadVariableOp?.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp?lstm_580/while?-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp?,lstm_581/lstm_cell_170/MatMul/ReadVariableOp?.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp?lstm_581/whileD
lstm_579/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_579/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_579/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_579/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_sliceStridedSlicelstm_579/Shape:output:0%lstm_579/strided_slice/stack:output:0'lstm_579/strided_slice/stack_1:output:0'lstm_579/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_579/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_579/zeros/packedPacklstm_579/strided_slice:output:0 lstm_579/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_579/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_579/zerosFilllstm_579/zeros/packed:output:0lstm_579/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_579/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_579/zeros_1/packedPacklstm_579/strided_slice:output:0"lstm_579/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_579/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_579/zeros_1Fill lstm_579/zeros_1/packed:output:0lstm_579/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_579/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_579/transpose	Transposeinputs lstm_579/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_579/Shape_1Shapelstm_579/transpose:y:0*
T0*
_output_shapes
:h
lstm_579/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_579/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_579/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_slice_1StridedSlicelstm_579/Shape_1:output:0'lstm_579/strided_slice_1/stack:output:0)lstm_579/strided_slice_1/stack_1:output:0)lstm_579/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_579/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_579/TensorArrayV2TensorListReserve-lstm_579/TensorArrayV2/element_shape:output:0!lstm_579/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_579/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_579/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_579/transpose:y:0Glstm_579/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_579/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_579/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_579/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_slice_2StridedSlicelstm_579/transpose:y:0'lstm_579/strided_slice_2/stack:output:0)lstm_579/strided_slice_2/stack_1:output:0)lstm_579/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_579/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp5lstm_579_lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_579/lstm_cell_168/MatMulMatMul!lstm_579/strided_slice_2:output:04lstm_579/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp7lstm_579_lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_579/lstm_cell_168/MatMul_1MatMullstm_579/zeros:output:06lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_579/lstm_cell_168/addAddV2'lstm_579/lstm_cell_168/MatMul:product:0)lstm_579/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp6lstm_579_lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_579/lstm_cell_168/BiasAddBiasAddlstm_579/lstm_cell_168/add:z:05lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_579/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_579/lstm_cell_168/splitSplit/lstm_579/lstm_cell_168/split/split_dim:output:0'lstm_579/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_579/lstm_cell_168/SigmoidSigmoid%lstm_579/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_579/lstm_cell_168/Sigmoid_1Sigmoid%lstm_579/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/mulMul$lstm_579/lstm_cell_168/Sigmoid_1:y:0lstm_579/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_579/lstm_cell_168/ReluRelu%lstm_579/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/mul_1Mul"lstm_579/lstm_cell_168/Sigmoid:y:0)lstm_579/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/add_1AddV2lstm_579/lstm_cell_168/mul:z:0 lstm_579/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_579/lstm_cell_168/Sigmoid_2Sigmoid%lstm_579/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_579/lstm_cell_168/Relu_1Relu lstm_579/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_579/lstm_cell_168/mul_2Mul$lstm_579/lstm_cell_168/Sigmoid_2:y:0+lstm_579/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_579/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_579/TensorArrayV2_1TensorListReserve/lstm_579/TensorArrayV2_1/element_shape:output:0!lstm_579/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_579/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_579/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_579/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_579/whileWhile$lstm_579/while/loop_counter:output:0*lstm_579/while/maximum_iterations:output:0lstm_579/time:output:0!lstm_579/TensorArrayV2_1:handle:0lstm_579/zeros:output:0lstm_579/zeros_1:output:0!lstm_579/strided_slice_1:output:0@lstm_579/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_579_lstm_cell_168_matmul_readvariableop_resource7lstm_579_lstm_cell_168_matmul_1_readvariableop_resource6lstm_579_lstm_cell_168_biasadd_readvariableop_resource*
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
lstm_579_while_body_1031215*'
condR
lstm_579_while_cond_1031214*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_579/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_579/TensorArrayV2Stack/TensorListStackTensorListStacklstm_579/while:output:3Blstm_579/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_579/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_579/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_579/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_579/strided_slice_3StridedSlice4lstm_579/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_579/strided_slice_3/stack:output:0)lstm_579/strided_slice_3/stack_1:output:0)lstm_579/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_579/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_579/transpose_1	Transpose4lstm_579/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_579/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_579/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_580/ShapeShapelstm_579/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_580/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_580/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_580/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_sliceStridedSlicelstm_580/Shape:output:0%lstm_580/strided_slice/stack:output:0'lstm_580/strided_slice/stack_1:output:0'lstm_580/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_580/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_580/zeros/packedPacklstm_580/strided_slice:output:0 lstm_580/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_580/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_580/zerosFilllstm_580/zeros/packed:output:0lstm_580/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_580/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_580/zeros_1/packedPacklstm_580/strided_slice:output:0"lstm_580/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_580/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_580/zeros_1Fill lstm_580/zeros_1/packed:output:0lstm_580/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_580/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_580/transpose	Transposelstm_579/transpose_1:y:0 lstm_580/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_580/Shape_1Shapelstm_580/transpose:y:0*
T0*
_output_shapes
:h
lstm_580/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_580/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_580/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_slice_1StridedSlicelstm_580/Shape_1:output:0'lstm_580/strided_slice_1/stack:output:0)lstm_580/strided_slice_1/stack_1:output:0)lstm_580/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_580/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_580/TensorArrayV2TensorListReserve-lstm_580/TensorArrayV2/element_shape:output:0!lstm_580/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_580/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_580/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_580/transpose:y:0Glstm_580/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_580/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_580/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_580/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_slice_2StridedSlicelstm_580/transpose:y:0'lstm_580/strided_slice_2/stack:output:0)lstm_580/strided_slice_2/stack_1:output:0)lstm_580/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_580/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp5lstm_580_lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_580/lstm_cell_169/MatMulMatMul!lstm_580/strided_slice_2:output:04lstm_580/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp7lstm_580_lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_580/lstm_cell_169/MatMul_1MatMullstm_580/zeros:output:06lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_580/lstm_cell_169/addAddV2'lstm_580/lstm_cell_169/MatMul:product:0)lstm_580/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp6lstm_580_lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_580/lstm_cell_169/BiasAddBiasAddlstm_580/lstm_cell_169/add:z:05lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_580/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_580/lstm_cell_169/splitSplit/lstm_580/lstm_cell_169/split/split_dim:output:0'lstm_580/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_580/lstm_cell_169/SigmoidSigmoid%lstm_580/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_580/lstm_cell_169/Sigmoid_1Sigmoid%lstm_580/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/mulMul$lstm_580/lstm_cell_169/Sigmoid_1:y:0lstm_580/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_580/lstm_cell_169/ReluRelu%lstm_580/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/mul_1Mul"lstm_580/lstm_cell_169/Sigmoid:y:0)lstm_580/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/add_1AddV2lstm_580/lstm_cell_169/mul:z:0 lstm_580/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_580/lstm_cell_169/Sigmoid_2Sigmoid%lstm_580/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_580/lstm_cell_169/Relu_1Relu lstm_580/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_580/lstm_cell_169/mul_2Mul$lstm_580/lstm_cell_169/Sigmoid_2:y:0+lstm_580/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_580/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_580/TensorArrayV2_1TensorListReserve/lstm_580/TensorArrayV2_1/element_shape:output:0!lstm_580/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_580/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_580/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_580/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_580/whileWhile$lstm_580/while/loop_counter:output:0*lstm_580/while/maximum_iterations:output:0lstm_580/time:output:0!lstm_580/TensorArrayV2_1:handle:0lstm_580/zeros:output:0lstm_580/zeros_1:output:0!lstm_580/strided_slice_1:output:0@lstm_580/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_580_lstm_cell_169_matmul_readvariableop_resource7lstm_580_lstm_cell_169_matmul_1_readvariableop_resource6lstm_580_lstm_cell_169_biasadd_readvariableop_resource*
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
lstm_580_while_body_1031354*'
condR
lstm_580_while_cond_1031353*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_580/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_580/TensorArrayV2Stack/TensorListStackTensorListStacklstm_580/while:output:3Blstm_580/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_580/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_580/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_580/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_580/strided_slice_3StridedSlice4lstm_580/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_580/strided_slice_3/stack:output:0)lstm_580/strided_slice_3/stack_1:output:0)lstm_580/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_580/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_580/transpose_1	Transpose4lstm_580/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_580/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_580/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_581/ShapeShapelstm_580/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_581/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_581/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_581/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_sliceStridedSlicelstm_581/Shape:output:0%lstm_581/strided_slice/stack:output:0'lstm_581/strided_slice/stack_1:output:0'lstm_581/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_581/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_581/zeros/packedPacklstm_581/strided_slice:output:0 lstm_581/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_581/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_581/zerosFilllstm_581/zeros/packed:output:0lstm_581/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_581/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_581/zeros_1/packedPacklstm_581/strided_slice:output:0"lstm_581/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_581/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_581/zeros_1Fill lstm_581/zeros_1/packed:output:0lstm_581/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_581/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_581/transpose	Transposelstm_580/transpose_1:y:0 lstm_581/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_581/Shape_1Shapelstm_581/transpose:y:0*
T0*
_output_shapes
:h
lstm_581/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_581/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_581/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_slice_1StridedSlicelstm_581/Shape_1:output:0'lstm_581/strided_slice_1/stack:output:0)lstm_581/strided_slice_1/stack_1:output:0)lstm_581/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_581/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_581/TensorArrayV2TensorListReserve-lstm_581/TensorArrayV2/element_shape:output:0!lstm_581/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_581/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_581/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_581/transpose:y:0Glstm_581/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_581/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_581/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_581/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_slice_2StridedSlicelstm_581/transpose:y:0'lstm_581/strided_slice_2/stack:output:0)lstm_581/strided_slice_2/stack_1:output:0)lstm_581/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_581/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp5lstm_581_lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_581/lstm_cell_170/MatMulMatMul!lstm_581/strided_slice_2:output:04lstm_581/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp7lstm_581_lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_581/lstm_cell_170/MatMul_1MatMullstm_581/zeros:output:06lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_581/lstm_cell_170/addAddV2'lstm_581/lstm_cell_170/MatMul:product:0)lstm_581/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp6lstm_581_lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_581/lstm_cell_170/BiasAddBiasAddlstm_581/lstm_cell_170/add:z:05lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_581/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_581/lstm_cell_170/splitSplit/lstm_581/lstm_cell_170/split/split_dim:output:0'lstm_581/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_581/lstm_cell_170/SigmoidSigmoid%lstm_581/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_581/lstm_cell_170/Sigmoid_1Sigmoid%lstm_581/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/mulMul$lstm_581/lstm_cell_170/Sigmoid_1:y:0lstm_581/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_581/lstm_cell_170/ReluRelu%lstm_581/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/mul_1Mul"lstm_581/lstm_cell_170/Sigmoid:y:0)lstm_581/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/add_1AddV2lstm_581/lstm_cell_170/mul:z:0 lstm_581/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_581/lstm_cell_170/Sigmoid_2Sigmoid%lstm_581/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_581/lstm_cell_170/Relu_1Relu lstm_581/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_581/lstm_cell_170/mul_2Mul$lstm_581/lstm_cell_170/Sigmoid_2:y:0+lstm_581/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_581/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_581/TensorArrayV2_1TensorListReserve/lstm_581/TensorArrayV2_1/element_shape:output:0!lstm_581/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_581/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_581/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_581/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_581/whileWhile$lstm_581/while/loop_counter:output:0*lstm_581/while/maximum_iterations:output:0lstm_581/time:output:0!lstm_581/TensorArrayV2_1:handle:0lstm_581/zeros:output:0lstm_581/zeros_1:output:0!lstm_581/strided_slice_1:output:0@lstm_581/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_581_lstm_cell_170_matmul_readvariableop_resource7lstm_581_lstm_cell_170_matmul_1_readvariableop_resource6lstm_581_lstm_cell_170_biasadd_readvariableop_resource*
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
lstm_581_while_body_1031493*'
condR
lstm_581_while_cond_1031492*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_581/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_581/TensorArrayV2Stack/TensorListStackTensorListStacklstm_581/while:output:3Blstm_581/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_581/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_581/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_581/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_581/strided_slice_3StridedSlice4lstm_581/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_581/strided_slice_3/stack:output:0)lstm_581/strided_slice_3/stack_1:output:0)lstm_581/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_581/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_581/transpose_1	Transpose4lstm_581/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_581/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_581/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_193/MatMul/ReadVariableOpReadVariableOp(dense_193_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_193/MatMulMatMul!lstm_581/strided_slice_3:output:0'dense_193/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_193/BiasAdd/ReadVariableOpReadVariableOp)dense_193_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_193/BiasAddBiasAdddense_193/MatMul:product:0(dense_193/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_193/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_193/BiasAdd/ReadVariableOp ^dense_193/MatMul/ReadVariableOp.^lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp-^lstm_579/lstm_cell_168/MatMul/ReadVariableOp/^lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp^lstm_579/while.^lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp-^lstm_580/lstm_cell_169/MatMul/ReadVariableOp/^lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp^lstm_580/while.^lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp-^lstm_581/lstm_cell_170/MatMul/ReadVariableOp/^lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp^lstm_581/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_193/BiasAdd/ReadVariableOp dense_193/BiasAdd/ReadVariableOp2B
dense_193/MatMul/ReadVariableOpdense_193/MatMul/ReadVariableOp2^
-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp-lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp2\
,lstm_579/lstm_cell_168/MatMul/ReadVariableOp,lstm_579/lstm_cell_168/MatMul/ReadVariableOp2`
.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp.lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp2 
lstm_579/whilelstm_579/while2^
-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp-lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp2\
,lstm_580/lstm_cell_169/MatMul/ReadVariableOp,lstm_580/lstm_cell_169/MatMul/ReadVariableOp2`
.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp.lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp2 
lstm_580/whilelstm_580/while2^
-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp-lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp2\
,lstm_581/lstm_cell_170/MatMul/ReadVariableOp,lstm_581/lstm_cell_170/MatMul/ReadVariableOp2`
.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp.lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp2 
lstm_581/whilelstm_581/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_579_while_cond_1031214.
*lstm_579_while_lstm_579_while_loop_counter4
0lstm_579_while_lstm_579_while_maximum_iterations
lstm_579_while_placeholder 
lstm_579_while_placeholder_1 
lstm_579_while_placeholder_2 
lstm_579_while_placeholder_30
,lstm_579_while_less_lstm_579_strided_slice_1G
Clstm_579_while_lstm_579_while_cond_1031214___redundant_placeholder0G
Clstm_579_while_lstm_579_while_cond_1031214___redundant_placeholder1G
Clstm_579_while_lstm_579_while_cond_1031214___redundant_placeholder2G
Clstm_579_while_lstm_579_while_cond_1031214___redundant_placeholder3
lstm_579_while_identity
?
lstm_579/while/LessLesslstm_579_while_placeholder,lstm_579_while_less_lstm_579_strided_slice_1*
T0*
_output_shapes
: ]
lstm_579/while/IdentityIdentitylstm_579/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_579_while_identity lstm_579/while/Identity:output:0*(
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
while_cond_1033014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1033014___redundant_placeholder05
1while_while_cond_1033014___redundant_placeholder15
1while_while_cond_1033014___redundant_placeholder25
1while_while_cond_1033014___redundant_placeholder3
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
while_body_1032256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_168_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_168_matmul_readvariableop_resource:	?G
4while_lstm_cell_168_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_168_biasadd_readvariableop_resource:	???*while/lstm_cell_168/BiasAdd/ReadVariableOp?)while/lstm_cell_168/MatMul/ReadVariableOp?+while/lstm_cell_168/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_168/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_168/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_168/addAddV2$while/lstm_cell_168/MatMul:product:0&while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_168/BiasAddBiasAddwhile/lstm_cell_168/add:z:02while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_168/splitSplit,while/lstm_cell_168/split/split_dim:output:0$while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_168/SigmoidSigmoid"while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_1Sigmoid"while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mulMul!while/lstm_cell_168/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_168/ReluRelu"while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_1Mulwhile/lstm_cell_168/Sigmoid:y:0&while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/add_1AddV2while/lstm_cell_168/mul:z:0while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_2Sigmoid"while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_168/Relu_1Reluwhile/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_2Mul!while/lstm_cell_168/Sigmoid_2:y:0(while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_168/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_168/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_168/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_168/BiasAdd/ReadVariableOp*^while/lstm_cell_168/MatMul/ReadVariableOp,^while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_168_biasadd_readvariableop_resource5while_lstm_cell_168_biasadd_readvariableop_resource_0"n
4while_lstm_cell_168_matmul_1_readvariableop_resource6while_lstm_cell_168_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_168_matmul_readvariableop_resource4while_lstm_cell_168_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_168/BiasAdd/ReadVariableOp*while/lstm_cell_168/BiasAdd/ReadVariableOp2V
)while/lstm_cell_168/MatMul/ReadVariableOp)while/lstm_cell_168/MatMul/ReadVariableOp2Z
+while/lstm_cell_168/MatMul_1/ReadVariableOp+while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1034073

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
?J
?
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030887

inputs?
,lstm_cell_168_matmul_readvariableop_resource:	?A
.lstm_cell_168_matmul_1_readvariableop_resource:	d?<
-lstm_cell_168_biasadd_readvariableop_resource:	?
identity??$lstm_cell_168/BiasAdd/ReadVariableOp?#lstm_cell_168/MatMul/ReadVariableOp?%lstm_cell_168/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_168/MatMul/ReadVariableOpReadVariableOp,lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_168/MatMulMatMulstrided_slice_2:output:0+lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_168/MatMul_1MatMulzeros:output:0-lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_168/addAddV2lstm_cell_168/MatMul:product:0 lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_168/BiasAddBiasAddlstm_cell_168/add:z:0,lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_168/splitSplit&lstm_cell_168/split/split_dim:output:0lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_168/SigmoidSigmoidlstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_1Sigmoidlstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_168/mulMullstm_cell_168/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_168/ReluRelulstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_1Mullstm_cell_168/Sigmoid:y:0 lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_168/add_1AddV2lstm_cell_168/mul:z:0lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_2Sigmoidlstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_168/Relu_1Relulstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_2Mullstm_cell_168/Sigmoid_2:y:0"lstm_cell_168/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_168_matmul_readvariableop_resource.lstm_cell_168_matmul_1_readvariableop_resource-lstm_cell_168_biasadd_readvariableop_resource*
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
while_body_1030803*
condR
while_cond_1030802*K
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
NoOpNoOp%^lstm_cell_168/BiasAdd/ReadVariableOp$^lstm_cell_168/MatMul/ReadVariableOp&^lstm_cell_168/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_168/BiasAdd/ReadVariableOp$lstm_cell_168/BiasAdd/ReadVariableOp2J
#lstm_cell_168/MatMul/ReadVariableOp#lstm_cell_168/MatMul/ReadVariableOp2N
%lstm_cell_168/MatMul_1/ReadVariableOp%lstm_cell_168/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1029609

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

?
lstm_580_while_cond_1031780.
*lstm_580_while_lstm_580_while_loop_counter4
0lstm_580_while_lstm_580_while_maximum_iterations
lstm_580_while_placeholder 
lstm_580_while_placeholder_1 
lstm_580_while_placeholder_2 
lstm_580_while_placeholder_30
,lstm_580_while_less_lstm_580_strided_slice_1G
Clstm_580_while_lstm_580_while_cond_1031780___redundant_placeholder0G
Clstm_580_while_lstm_580_while_cond_1031780___redundant_placeholder1G
Clstm_580_while_lstm_580_while_cond_1031780___redundant_placeholder2G
Clstm_580_while_lstm_580_while_cond_1031780___redundant_placeholder3
lstm_580_while_identity
?
lstm_580/while/LessLesslstm_580_while_placeholder,lstm_580_while_less_lstm_580_strided_slice_1*
T0*
_output_shapes
: ]
lstm_580/while/IdentityIdentitylstm_580/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_580_while_identity lstm_580/while/Identity:output:0*(
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
%__inference_signature_wrapper_1031102
lstm_579_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_579_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1028842o
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
_user_specified_namelstm_579_input
?8
?
E__inference_lstm_579_layer_call_and_return_conditional_losses_1029183

inputs(
lstm_cell_168_1029101:	?(
lstm_cell_168_1029103:	d?$
lstm_cell_168_1029105:	?
identity??%lstm_cell_168/StatefulPartitionedCall?while;
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
%lstm_cell_168/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_168_1029101lstm_cell_168_1029103lstm_cell_168_1029105*
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1029055n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_168_1029101lstm_cell_168_1029103lstm_cell_168_1029105*
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
while_body_1029114*
condR
while_cond_1029113*K
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
NoOpNoOp&^lstm_cell_168/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_168/StatefulPartitionedCall%lstm_cell_168/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1033975

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
?
?
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031037
lstm_579_input#
lstm_579_1031010:	?#
lstm_579_1031012:	d?
lstm_579_1031014:	?#
lstm_580_1031017:	d?#
lstm_580_1031019:	2?
lstm_580_1031021:	?"
lstm_581_1031024:2("
lstm_581_1031026:
(
lstm_581_1031028:(#
dense_193_1031031:

dense_193_1031033:
identity??!dense_193/StatefulPartitionedCall? lstm_579/StatefulPartitionedCall? lstm_580/StatefulPartitionedCall? lstm_581/StatefulPartitionedCall?
 lstm_579/StatefulPartitionedCallStatefulPartitionedCalllstm_579_inputlstm_579_1031010lstm_579_1031012lstm_579_1031014*
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030041?
 lstm_580/StatefulPartitionedCallStatefulPartitionedCall)lstm_579/StatefulPartitionedCall:output:0lstm_580_1031017lstm_580_1031019lstm_580_1031021*
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030191?
 lstm_581/StatefulPartitionedCallStatefulPartitionedCall)lstm_580/StatefulPartitionedCall:output:0lstm_581_1031024lstm_581_1031026lstm_581_1031028*
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030341?
!dense_193/StatefulPartitionedCallStatefulPartitionedCall)lstm_581/StatefulPartitionedCall:output:0dense_193_1031031dense_193_1031033*
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
F__inference_dense_193_layer_call_and_return_conditional_losses_1030359y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_193/StatefulPartitionedCall!^lstm_579/StatefulPartitionedCall!^lstm_580/StatefulPartitionedCall!^lstm_581/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2D
 lstm_579/StatefulPartitionedCall lstm_579/StatefulPartitionedCall2D
 lstm_580/StatefulPartitionedCall lstm_580/StatefulPartitionedCall2D
 lstm_581/StatefulPartitionedCall lstm_581/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_579_input
?8
?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1029342

inputs(
lstm_cell_169_1029260:	d?(
lstm_cell_169_1029262:	2?$
lstm_cell_169_1029264:	?
identity??%lstm_cell_169/StatefulPartitionedCall?while;
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
%lstm_cell_169/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_169_1029260lstm_cell_169_1029262lstm_cell_169_1029264*
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1029259n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_169_1029260lstm_cell_169_1029262lstm_cell_169_1029264*
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
while_body_1029273*
condR
while_cond_1029272*K
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
NoOpNoOp&^lstm_cell_169/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_169/StatefulPartitionedCall%lstm_cell_169/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1034171

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
?
/__inference_lstm_cell_168_layer_call_fn_1033911

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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1029055o
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
while_cond_1033630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1033630___redundant_placeholder05
1while_while_cond_1033630___redundant_placeholder15
1while_while_cond_1033630___redundant_placeholder25
1while_while_cond_1033630___redundant_placeholder3
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
?
?
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031067
lstm_579_input#
lstm_579_1031040:	?#
lstm_579_1031042:	d?
lstm_579_1031044:	?#
lstm_580_1031047:	d?#
lstm_580_1031049:	2?
lstm_580_1031051:	?"
lstm_581_1031054:2("
lstm_581_1031056:
(
lstm_581_1031058:(#
dense_193_1031061:

dense_193_1031063:
identity??!dense_193/StatefulPartitionedCall? lstm_579/StatefulPartitionedCall? lstm_580/StatefulPartitionedCall? lstm_581/StatefulPartitionedCall?
 lstm_579/StatefulPartitionedCallStatefulPartitionedCalllstm_579_inputlstm_579_1031040lstm_579_1031042lstm_579_1031044*
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1030887?
 lstm_580/StatefulPartitionedCallStatefulPartitionedCall)lstm_579/StatefulPartitionedCall:output:0lstm_580_1031047lstm_580_1031049lstm_580_1031051*
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1030722?
 lstm_581/StatefulPartitionedCallStatefulPartitionedCall)lstm_580/StatefulPartitionedCall:output:0lstm_581_1031054lstm_581_1031056lstm_581_1031058*
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030557?
!dense_193/StatefulPartitionedCallStatefulPartitionedCall)lstm_581/StatefulPartitionedCall:output:0dense_193_1031061dense_193_1031063*
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
F__inference_dense_193_layer_call_and_return_conditional_losses_1030359y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_193/StatefulPartitionedCall!^lstm_579/StatefulPartitionedCall!^lstm_580/StatefulPartitionedCall!^lstm_581/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2D
 lstm_579/StatefulPartitionedCall lstm_579/StatefulPartitionedCall2D
 lstm_580/StatefulPartitionedCall lstm_580/StatefulPartitionedCall2D
 lstm_581/StatefulPartitionedCall lstm_581/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_579_input
?
?
while_cond_1033344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1033344___redundant_placeholder05
1while_while_cond_1033344___redundant_placeholder15
1while_while_cond_1033344___redundant_placeholder25
1while_while_cond_1033344___redundant_placeholder3
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
while_body_1030257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_170_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_170_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_170_matmul_readvariableop_resource:2(F
4while_lstm_cell_170_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_170_biasadd_readvariableop_resource:(??*while/lstm_cell_170/BiasAdd/ReadVariableOp?)while/lstm_cell_170/MatMul/ReadVariableOp?+while/lstm_cell_170/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_170/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_170/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_170/addAddV2$while/lstm_cell_170/MatMul:product:0&while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_170/BiasAddBiasAddwhile/lstm_cell_170/add:z:02while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_170/splitSplit,while/lstm_cell_170/split/split_dim:output:0$while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_170/SigmoidSigmoid"while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_1Sigmoid"while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mulMul!while/lstm_cell_170/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_170/ReluRelu"while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_1Mulwhile/lstm_cell_170/Sigmoid:y:0&while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/add_1AddV2while/lstm_cell_170/mul:z:0while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_2Sigmoid"while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_170/Relu_1Reluwhile/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_2Mul!while/lstm_cell_170/Sigmoid_2:y:0(while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_170/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_170/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_170/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_170/BiasAdd/ReadVariableOp*^while/lstm_cell_170/MatMul/ReadVariableOp,^while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_170_biasadd_readvariableop_resource5while_lstm_cell_170_biasadd_readvariableop_resource_0"n
4while_lstm_cell_170_matmul_1_readvariableop_resource6while_lstm_cell_170_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_170_matmul_readvariableop_resource4while_lstm_cell_170_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_170/BiasAdd/ReadVariableOp*while/lstm_cell_170/BiasAdd/ReadVariableOp2V
)while/lstm_cell_170/MatMul/ReadVariableOp)while/lstm_cell_170/MatMul/ReadVariableOp2Z
+while/lstm_cell_170/MatMul_1/ReadVariableOp+while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1030638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_169_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_169_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_169_matmul_readvariableop_resource:	d?G
4while_lstm_cell_169_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_169_biasadd_readvariableop_resource:	???*while/lstm_cell_169/BiasAdd/ReadVariableOp?)while/lstm_cell_169/MatMul/ReadVariableOp?+while/lstm_cell_169/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_169/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_169/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_169/addAddV2$while/lstm_cell_169/MatMul:product:0&while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_169/BiasAddBiasAddwhile/lstm_cell_169/add:z:02while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_169/splitSplit,while/lstm_cell_169/split/split_dim:output:0$while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_169/SigmoidSigmoid"while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_1Sigmoid"while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mulMul!while/lstm_cell_169/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_169/ReluRelu"while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_1Mulwhile/lstm_cell_169/Sigmoid:y:0&while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/add_1AddV2while/lstm_cell_169/mul:z:0while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_169/Sigmoid_2Sigmoid"while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_169/Relu_1Reluwhile/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_169/mul_2Mul!while/lstm_cell_169/Sigmoid_2:y:0(while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_169/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_169/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_169/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_169/BiasAdd/ReadVariableOp*^while/lstm_cell_169/MatMul/ReadVariableOp,^while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_169_biasadd_readvariableop_resource5while_lstm_cell_169_biasadd_readvariableop_resource_0"n
4while_lstm_cell_169_matmul_1_readvariableop_resource6while_lstm_cell_169_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_169_matmul_readvariableop_resource4while_lstm_cell_169_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_169/BiasAdd/ReadVariableOp*while/lstm_cell_169/BiasAdd/ReadVariableOp2V
)while/lstm_cell_169/MatMul/ReadVariableOp)while/lstm_cell_169/MatMul/ReadVariableOp2Z
+while/lstm_cell_169/MatMul_1/ReadVariableOp+while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1033773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1033773___redundant_placeholder05
1while_while_cond_1033773___redundant_placeholder15
1while_while_cond_1033773___redundant_placeholder25
1while_while_cond_1033773___redundant_placeholder3
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1033943

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
?
while_cond_1032541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1032541___redundant_placeholder05
1while_while_cond_1032541___redundant_placeholder15
1while_while_cond_1032541___redundant_placeholder25
1while_while_cond_1032541___redundant_placeholder3
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
while_body_1032399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_168_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_168_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_168_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_168_matmul_readvariableop_resource:	?G
4while_lstm_cell_168_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_168_biasadd_readvariableop_resource:	???*while/lstm_cell_168/BiasAdd/ReadVariableOp?)while/lstm_cell_168/MatMul/ReadVariableOp?+while/lstm_cell_168/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_168/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_168_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_168/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_168_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_168/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_168/addAddV2$while/lstm_cell_168/MatMul:product:0&while/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_168_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_168/BiasAddBiasAddwhile/lstm_cell_168/add:z:02while/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_168/splitSplit,while/lstm_cell_168/split/split_dim:output:0$while/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_168/SigmoidSigmoid"while/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_1Sigmoid"while/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mulMul!while/lstm_cell_168/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_168/ReluRelu"while/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_1Mulwhile/lstm_cell_168/Sigmoid:y:0&while/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/add_1AddV2while/lstm_cell_168/mul:z:0while/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_168/Sigmoid_2Sigmoid"while/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_168/Relu_1Reluwhile/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_168/mul_2Mul!while/lstm_cell_168/Sigmoid_2:y:0(while/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_168/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_168/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_168/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_168/BiasAdd/ReadVariableOp*^while/lstm_cell_168/MatMul/ReadVariableOp,^while/lstm_cell_168/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_168_biasadd_readvariableop_resource5while_lstm_cell_168_biasadd_readvariableop_resource_0"n
4while_lstm_cell_168_matmul_1_readvariableop_resource6while_lstm_cell_168_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_168_matmul_readvariableop_resource4while_lstm_cell_168_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_168/BiasAdd/ReadVariableOp*while/lstm_cell_168/BiasAdd/ReadVariableOp2V
)while/lstm_cell_168/MatMul/ReadVariableOp)while/lstm_cell_168/MatMul/ReadVariableOp2Z
+while/lstm_cell_168/MatMul_1/ReadVariableOp+while/lstm_cell_168/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_581_layer_call_fn_1033264
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1029883o
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
while_cond_1032112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1032112___redundant_placeholder05
1while_while_cond_1032112___redundant_placeholder15
1while_while_cond_1032112___redundant_placeholder25
1while_while_cond_1032112___redundant_placeholder3
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032197
inputs_0?
,lstm_cell_168_matmul_readvariableop_resource:	?A
.lstm_cell_168_matmul_1_readvariableop_resource:	d?<
-lstm_cell_168_biasadd_readvariableop_resource:	?
identity??$lstm_cell_168/BiasAdd/ReadVariableOp?#lstm_cell_168/MatMul/ReadVariableOp?%lstm_cell_168/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_168/MatMul/ReadVariableOpReadVariableOp,lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_168/MatMulMatMulstrided_slice_2:output:0+lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_168/MatMul_1MatMulzeros:output:0-lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_168/addAddV2lstm_cell_168/MatMul:product:0 lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_168/BiasAddBiasAddlstm_cell_168/add:z:0,lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_168/splitSplit&lstm_cell_168/split/split_dim:output:0lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_168/SigmoidSigmoidlstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_1Sigmoidlstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_168/mulMullstm_cell_168/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_168/ReluRelulstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_1Mullstm_cell_168/Sigmoid:y:0 lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_168/add_1AddV2lstm_cell_168/mul:z:0lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_168/Sigmoid_2Sigmoidlstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_168/Relu_1Relulstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_168/mul_2Mullstm_cell_168/Sigmoid_2:y:0"lstm_cell_168/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_168_matmul_readvariableop_resource.lstm_cell_168_matmul_1_readvariableop_resource-lstm_cell_168_biasadd_readvariableop_resource*
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
while_body_1032113*
condR
while_cond_1032112*K
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
NoOpNoOp%^lstm_cell_168/BiasAdd/ReadVariableOp$^lstm_cell_168/MatMul/ReadVariableOp&^lstm_cell_168/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_168/BiasAdd/ReadVariableOp$lstm_cell_168/BiasAdd/ReadVariableOp2J
#lstm_cell_168/MatMul/ReadVariableOp#lstm_cell_168/MatMul/ReadVariableOp2N
%lstm_cell_168/MatMul_1/ReadVariableOp%lstm_cell_168/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_581_while_cond_1031919.
*lstm_581_while_lstm_581_while_loop_counter4
0lstm_581_while_lstm_581_while_maximum_iterations
lstm_581_while_placeholder 
lstm_581_while_placeholder_1 
lstm_581_while_placeholder_2 
lstm_581_while_placeholder_30
,lstm_581_while_less_lstm_581_strided_slice_1G
Clstm_581_while_lstm_581_while_cond_1031919___redundant_placeholder0G
Clstm_581_while_lstm_581_while_cond_1031919___redundant_placeholder1G
Clstm_581_while_lstm_581_while_cond_1031919___redundant_placeholder2G
Clstm_581_while_lstm_581_while_cond_1031919___redundant_placeholder3
lstm_581_while_identity
?
lstm_581/while/LessLesslstm_581_while_placeholder,lstm_581_while_less_lstm_581_strided_slice_1*
T0*
_output_shapes
: ]
lstm_581/while/IdentityIdentitylstm_581/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_581_while_identity lstm_581/while/Identity:output:0*(
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
while_body_1033345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_170_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_170_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_170_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_170_matmul_readvariableop_resource:2(F
4while_lstm_cell_170_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_170_biasadd_readvariableop_resource:(??*while/lstm_cell_170/BiasAdd/ReadVariableOp?)while/lstm_cell_170/MatMul/ReadVariableOp?+while/lstm_cell_170/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_170/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_170_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_170/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_170_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_170/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_170/addAddV2$while/lstm_cell_170/MatMul:product:0&while/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_170_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_170/BiasAddBiasAddwhile/lstm_cell_170/add:z:02while/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_170/splitSplit,while/lstm_cell_170/split/split_dim:output:0$while/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_170/SigmoidSigmoid"while/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_1Sigmoid"while/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mulMul!while/lstm_cell_170/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_170/ReluRelu"while/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_1Mulwhile/lstm_cell_170/Sigmoid:y:0&while/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/add_1AddV2while/lstm_cell_170/mul:z:0while/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_170/Sigmoid_2Sigmoid"while/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_170/Relu_1Reluwhile/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_170/mul_2Mul!while/lstm_cell_170/Sigmoid_2:y:0(while/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_170/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_170/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_170/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_170/BiasAdd/ReadVariableOp*^while/lstm_cell_170/MatMul/ReadVariableOp,^while/lstm_cell_170/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_170_biasadd_readvariableop_resource5while_lstm_cell_170_biasadd_readvariableop_resource_0"n
4while_lstm_cell_170_matmul_1_readvariableop_resource6while_lstm_cell_170_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_170_matmul_readvariableop_resource4while_lstm_cell_170_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_170/BiasAdd/ReadVariableOp*while/lstm_cell_170/BiasAdd/ReadVariableOp2V
)while/lstm_cell_170/MatMul/ReadVariableOp)while/lstm_cell_170/MatMul/ReadVariableOp2Z
+while/lstm_cell_170/MatMul_1/ReadVariableOp+while/lstm_cell_170/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_193_layer_call_fn_1031156

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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1030955o
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
?J
?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1033099

inputs?
,lstm_cell_169_matmul_readvariableop_resource:	d?A
.lstm_cell_169_matmul_1_readvariableop_resource:	2?<
-lstm_cell_169_biasadd_readvariableop_resource:	?
identity??$lstm_cell_169/BiasAdd/ReadVariableOp?#lstm_cell_169/MatMul/ReadVariableOp?%lstm_cell_169/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_169/MatMul/ReadVariableOpReadVariableOp,lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_169/MatMulMatMulstrided_slice_2:output:0+lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_169/MatMul_1MatMulzeros:output:0-lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_169/addAddV2lstm_cell_169/MatMul:product:0 lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_169/BiasAddBiasAddlstm_cell_169/add:z:0,lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_169/splitSplit&lstm_cell_169/split/split_dim:output:0lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_169/SigmoidSigmoidlstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_1Sigmoidlstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_169/mulMullstm_cell_169/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_169/ReluRelulstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_1Mullstm_cell_169/Sigmoid:y:0 lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_169/add_1AddV2lstm_cell_169/mul:z:0lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_169/Sigmoid_2Sigmoidlstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_169/Relu_1Relulstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_169/mul_2Mullstm_cell_169/Sigmoid_2:y:0"lstm_cell_169/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_169_matmul_readvariableop_resource.lstm_cell_169_matmul_1_readvariableop_resource-lstm_cell_169_biasadd_readvariableop_resource*
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
while_body_1033015*
condR
while_cond_1033014*K
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
NoOpNoOp%^lstm_cell_169/BiasAdd/ReadVariableOp$^lstm_cell_169/MatMul/ReadVariableOp&^lstm_cell_169/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_169/BiasAdd/ReadVariableOp$lstm_cell_169/BiasAdd/ReadVariableOp2J
#lstm_cell_169/MatMul/ReadVariableOp#lstm_cell_169/MatMul/ReadVariableOp2N
%lstm_cell_169/MatMul_1/ReadVariableOp%lstm_cell_169/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
+__inference_dense_193_layer_call_fn_1033867

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
F__inference_dense_193_layer_call_and_return_conditional_losses_1030359o
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
?T
?
*sequential_193_lstm_580_while_body_1028613L
Hsequential_193_lstm_580_while_sequential_193_lstm_580_while_loop_counterR
Nsequential_193_lstm_580_while_sequential_193_lstm_580_while_maximum_iterations-
)sequential_193_lstm_580_while_placeholder/
+sequential_193_lstm_580_while_placeholder_1/
+sequential_193_lstm_580_while_placeholder_2/
+sequential_193_lstm_580_while_placeholder_3K
Gsequential_193_lstm_580_while_sequential_193_lstm_580_strided_slice_1_0?
?sequential_193_lstm_580_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_580_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_193_lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0:	d?a
Nsequential_193_lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0:	2?\
Msequential_193_lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0:	?*
&sequential_193_lstm_580_while_identity,
(sequential_193_lstm_580_while_identity_1,
(sequential_193_lstm_580_while_identity_2,
(sequential_193_lstm_580_while_identity_3,
(sequential_193_lstm_580_while_identity_4,
(sequential_193_lstm_580_while_identity_5I
Esequential_193_lstm_580_while_sequential_193_lstm_580_strided_slice_1?
?sequential_193_lstm_580_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_580_tensorarrayunstack_tensorlistfromtensor]
Jsequential_193_lstm_580_while_lstm_cell_169_matmul_readvariableop_resource:	d?_
Lsequential_193_lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource:	2?Z
Ksequential_193_lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource:	???Bsequential_193/lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp?Asequential_193/lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp?Csequential_193/lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp?
Osequential_193/lstm_580/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_193/lstm_580/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_193_lstm_580_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_580_tensorarrayunstack_tensorlistfromtensor_0)sequential_193_lstm_580_while_placeholderXsequential_193/lstm_580/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_193/lstm_580/while/lstm_cell_169/MatMul/ReadVariableOpReadVariableOpLsequential_193_lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_193/lstm_580/while/lstm_cell_169/MatMulMatMulHsequential_193/lstm_580/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_193/lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_193/lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOpNsequential_193_lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_193/lstm_580/while/lstm_cell_169/MatMul_1MatMul+sequential_193_lstm_580_while_placeholder_2Ksequential_193/lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_193/lstm_580/while/lstm_cell_169/addAddV2<sequential_193/lstm_580/while/lstm_cell_169/MatMul:product:0>sequential_193/lstm_580/while/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_193/lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOpMsequential_193_lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_193/lstm_580/while/lstm_cell_169/BiasAddBiasAdd3sequential_193/lstm_580/while/lstm_cell_169/add:z:0Jsequential_193/lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_193/lstm_580/while/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_193/lstm_580/while/lstm_cell_169/splitSplitDsequential_193/lstm_580/while/lstm_cell_169/split/split_dim:output:0<sequential_193/lstm_580/while/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_193/lstm_580/while/lstm_cell_169/SigmoidSigmoid:sequential_193/lstm_580/while/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_193/lstm_580/while/lstm_cell_169/Sigmoid_1Sigmoid:sequential_193/lstm_580/while/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_193/lstm_580/while/lstm_cell_169/mulMul9sequential_193/lstm_580/while/lstm_cell_169/Sigmoid_1:y:0+sequential_193_lstm_580_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_193/lstm_580/while/lstm_cell_169/ReluRelu:sequential_193/lstm_580/while/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_193/lstm_580/while/lstm_cell_169/mul_1Mul7sequential_193/lstm_580/while/lstm_cell_169/Sigmoid:y:0>sequential_193/lstm_580/while/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_193/lstm_580/while/lstm_cell_169/add_1AddV23sequential_193/lstm_580/while/lstm_cell_169/mul:z:05sequential_193/lstm_580/while/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_193/lstm_580/while/lstm_cell_169/Sigmoid_2Sigmoid:sequential_193/lstm_580/while/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_193/lstm_580/while/lstm_cell_169/Relu_1Relu5sequential_193/lstm_580/while/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_193/lstm_580/while/lstm_cell_169/mul_2Mul9sequential_193/lstm_580/while/lstm_cell_169/Sigmoid_2:y:0@sequential_193/lstm_580/while/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_193/lstm_580/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_193_lstm_580_while_placeholder_1)sequential_193_lstm_580_while_placeholder5sequential_193/lstm_580/while/lstm_cell_169/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_193/lstm_580/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_193/lstm_580/while/addAddV2)sequential_193_lstm_580_while_placeholder,sequential_193/lstm_580/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_193/lstm_580/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_193/lstm_580/while/add_1AddV2Hsequential_193_lstm_580_while_sequential_193_lstm_580_while_loop_counter.sequential_193/lstm_580/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_193/lstm_580/while/IdentityIdentity'sequential_193/lstm_580/while/add_1:z:0#^sequential_193/lstm_580/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_580/while/Identity_1IdentityNsequential_193_lstm_580_while_sequential_193_lstm_580_while_maximum_iterations#^sequential_193/lstm_580/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_580/while/Identity_2Identity%sequential_193/lstm_580/while/add:z:0#^sequential_193/lstm_580/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_580/while/Identity_3IdentityRsequential_193/lstm_580/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_193/lstm_580/while/NoOp*
T0*
_output_shapes
: ?
(sequential_193/lstm_580/while/Identity_4Identity5sequential_193/lstm_580/while/lstm_cell_169/mul_2:z:0#^sequential_193/lstm_580/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_193/lstm_580/while/Identity_5Identity5sequential_193/lstm_580/while/lstm_cell_169/add_1:z:0#^sequential_193/lstm_580/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_193/lstm_580/while/NoOpNoOpC^sequential_193/lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOpB^sequential_193/lstm_580/while/lstm_cell_169/MatMul/ReadVariableOpD^sequential_193/lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_193_lstm_580_while_identity/sequential_193/lstm_580/while/Identity:output:0"]
(sequential_193_lstm_580_while_identity_11sequential_193/lstm_580/while/Identity_1:output:0"]
(sequential_193_lstm_580_while_identity_21sequential_193/lstm_580/while/Identity_2:output:0"]
(sequential_193_lstm_580_while_identity_31sequential_193/lstm_580/while/Identity_3:output:0"]
(sequential_193_lstm_580_while_identity_41sequential_193/lstm_580/while/Identity_4:output:0"]
(sequential_193_lstm_580_while_identity_51sequential_193/lstm_580/while/Identity_5:output:0"?
Ksequential_193_lstm_580_while_lstm_cell_169_biasadd_readvariableop_resourceMsequential_193_lstm_580_while_lstm_cell_169_biasadd_readvariableop_resource_0"?
Lsequential_193_lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resourceNsequential_193_lstm_580_while_lstm_cell_169_matmul_1_readvariableop_resource_0"?
Jsequential_193_lstm_580_while_lstm_cell_169_matmul_readvariableop_resourceLsequential_193_lstm_580_while_lstm_cell_169_matmul_readvariableop_resource_0"?
Esequential_193_lstm_580_while_sequential_193_lstm_580_strided_slice_1Gsequential_193_lstm_580_while_sequential_193_lstm_580_strided_slice_1_0"?
?sequential_193_lstm_580_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_580_tensorarrayunstack_tensorlistfromtensor?sequential_193_lstm_580_while_tensorarrayv2read_tensorlistgetitem_sequential_193_lstm_580_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_193/lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOpBsequential_193/lstm_580/while/lstm_cell_169/BiasAdd/ReadVariableOp2?
Asequential_193/lstm_580/while/lstm_cell_169/MatMul/ReadVariableOpAsequential_193/lstm_580/while/lstm_cell_169/MatMul/ReadVariableOp2?
Csequential_193/lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOpCsequential_193/lstm_580/while/lstm_cell_169/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__wrapped_model_1028842
lstm_579_inputW
Dsequential_193_lstm_579_lstm_cell_168_matmul_readvariableop_resource:	?Y
Fsequential_193_lstm_579_lstm_cell_168_matmul_1_readvariableop_resource:	d?T
Esequential_193_lstm_579_lstm_cell_168_biasadd_readvariableop_resource:	?W
Dsequential_193_lstm_580_lstm_cell_169_matmul_readvariableop_resource:	d?Y
Fsequential_193_lstm_580_lstm_cell_169_matmul_1_readvariableop_resource:	2?T
Esequential_193_lstm_580_lstm_cell_169_biasadd_readvariableop_resource:	?V
Dsequential_193_lstm_581_lstm_cell_170_matmul_readvariableop_resource:2(X
Fsequential_193_lstm_581_lstm_cell_170_matmul_1_readvariableop_resource:
(S
Esequential_193_lstm_581_lstm_cell_170_biasadd_readvariableop_resource:(I
7sequential_193_dense_193_matmul_readvariableop_resource:
F
8sequential_193_dense_193_biasadd_readvariableop_resource:
identity??/sequential_193/dense_193/BiasAdd/ReadVariableOp?.sequential_193/dense_193/MatMul/ReadVariableOp?<sequential_193/lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp?;sequential_193/lstm_579/lstm_cell_168/MatMul/ReadVariableOp?=sequential_193/lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp?sequential_193/lstm_579/while?<sequential_193/lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp?;sequential_193/lstm_580/lstm_cell_169/MatMul/ReadVariableOp?=sequential_193/lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp?sequential_193/lstm_580/while?<sequential_193/lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp?;sequential_193/lstm_581/lstm_cell_170/MatMul/ReadVariableOp?=sequential_193/lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp?sequential_193/lstm_581/while[
sequential_193/lstm_579/ShapeShapelstm_579_input*
T0*
_output_shapes
:u
+sequential_193/lstm_579/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_193/lstm_579/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_193/lstm_579/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_193/lstm_579/strided_sliceStridedSlice&sequential_193/lstm_579/Shape:output:04sequential_193/lstm_579/strided_slice/stack:output:06sequential_193/lstm_579/strided_slice/stack_1:output:06sequential_193/lstm_579/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_193/lstm_579/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_193/lstm_579/zeros/packedPack.sequential_193/lstm_579/strided_slice:output:0/sequential_193/lstm_579/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_193/lstm_579/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_193/lstm_579/zerosFill-sequential_193/lstm_579/zeros/packed:output:0,sequential_193/lstm_579/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_193/lstm_579/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_193/lstm_579/zeros_1/packedPack.sequential_193/lstm_579/strided_slice:output:01sequential_193/lstm_579/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_193/lstm_579/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_193/lstm_579/zeros_1Fill/sequential_193/lstm_579/zeros_1/packed:output:0.sequential_193/lstm_579/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_193/lstm_579/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_193/lstm_579/transpose	Transposelstm_579_input/sequential_193/lstm_579/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_193/lstm_579/Shape_1Shape%sequential_193/lstm_579/transpose:y:0*
T0*
_output_shapes
:w
-sequential_193/lstm_579/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_579/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_193/lstm_579/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_579/strided_slice_1StridedSlice(sequential_193/lstm_579/Shape_1:output:06sequential_193/lstm_579/strided_slice_1/stack:output:08sequential_193/lstm_579/strided_slice_1/stack_1:output:08sequential_193/lstm_579/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_193/lstm_579/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_193/lstm_579/TensorArrayV2TensorListReserve<sequential_193/lstm_579/TensorArrayV2/element_shape:output:00sequential_193/lstm_579/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_193/lstm_579/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_193/lstm_579/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_193/lstm_579/transpose:y:0Vsequential_193/lstm_579/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_193/lstm_579/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_579/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_193/lstm_579/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_579/strided_slice_2StridedSlice%sequential_193/lstm_579/transpose:y:06sequential_193/lstm_579/strided_slice_2/stack:output:08sequential_193/lstm_579/strided_slice_2/stack_1:output:08sequential_193/lstm_579/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_193/lstm_579/lstm_cell_168/MatMul/ReadVariableOpReadVariableOpDsequential_193_lstm_579_lstm_cell_168_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_193/lstm_579/lstm_cell_168/MatMulMatMul0sequential_193/lstm_579/strided_slice_2:output:0Csequential_193/lstm_579/lstm_cell_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_193/lstm_579/lstm_cell_168/MatMul_1/ReadVariableOpReadVariableOpFsequential_193_lstm_579_lstm_cell_168_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_193/lstm_579/lstm_cell_168/MatMul_1MatMul&sequential_193/lstm_579/zeros:output:0Esequential_193/lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_193/lstm_579/lstm_cell_168/addAddV26sequential_193/lstm_579/lstm_cell_168/MatMul:product:08sequential_193/lstm_579/lstm_cell_168/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_193/lstm_579/lstm_cell_168/BiasAdd/ReadVariableOpReadVariableOpEsequential_193_lstm_579_lstm_cell_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_193/lstm_579/lstm_cell_168/BiasAddBiasAdd-sequential_193/lstm_579/lstm_cell_168/add:z:0Dsequential_193/lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_193/lstm_579/lstm_cell_168/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_193/lstm_579/lstm_cell_168/splitSplit>sequential_193/lstm_579/lstm_cell_168/split/split_dim:output:06sequential_193/lstm_579/lstm_cell_168/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_193/lstm_579/lstm_cell_168/SigmoidSigmoid4sequential_193/lstm_579/lstm_cell_168/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_193/lstm_579/lstm_cell_168/Sigmoid_1Sigmoid4sequential_193/lstm_579/lstm_cell_168/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_193/lstm_579/lstm_cell_168/mulMul3sequential_193/lstm_579/lstm_cell_168/Sigmoid_1:y:0(sequential_193/lstm_579/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_193/lstm_579/lstm_cell_168/ReluRelu4sequential_193/lstm_579/lstm_cell_168/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_193/lstm_579/lstm_cell_168/mul_1Mul1sequential_193/lstm_579/lstm_cell_168/Sigmoid:y:08sequential_193/lstm_579/lstm_cell_168/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_193/lstm_579/lstm_cell_168/add_1AddV2-sequential_193/lstm_579/lstm_cell_168/mul:z:0/sequential_193/lstm_579/lstm_cell_168/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_193/lstm_579/lstm_cell_168/Sigmoid_2Sigmoid4sequential_193/lstm_579/lstm_cell_168/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_193/lstm_579/lstm_cell_168/Relu_1Relu/sequential_193/lstm_579/lstm_cell_168/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_193/lstm_579/lstm_cell_168/mul_2Mul3sequential_193/lstm_579/lstm_cell_168/Sigmoid_2:y:0:sequential_193/lstm_579/lstm_cell_168/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_193/lstm_579/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_193/lstm_579/TensorArrayV2_1TensorListReserve>sequential_193/lstm_579/TensorArrayV2_1/element_shape:output:00sequential_193/lstm_579/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_193/lstm_579/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_193/lstm_579/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_193/lstm_579/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_193/lstm_579/whileWhile3sequential_193/lstm_579/while/loop_counter:output:09sequential_193/lstm_579/while/maximum_iterations:output:0%sequential_193/lstm_579/time:output:00sequential_193/lstm_579/TensorArrayV2_1:handle:0&sequential_193/lstm_579/zeros:output:0(sequential_193/lstm_579/zeros_1:output:00sequential_193/lstm_579/strided_slice_1:output:0Osequential_193/lstm_579/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_193_lstm_579_lstm_cell_168_matmul_readvariableop_resourceFsequential_193_lstm_579_lstm_cell_168_matmul_1_readvariableop_resourceEsequential_193_lstm_579_lstm_cell_168_biasadd_readvariableop_resource*
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
*sequential_193_lstm_579_while_body_1028474*6
cond.R,
*sequential_193_lstm_579_while_cond_1028473*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_193/lstm_579/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_193/lstm_579/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_193/lstm_579/while:output:3Qsequential_193/lstm_579/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_193/lstm_579/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_193/lstm_579/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_579/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_579/strided_slice_3StridedSliceCsequential_193/lstm_579/TensorArrayV2Stack/TensorListStack:tensor:06sequential_193/lstm_579/strided_slice_3/stack:output:08sequential_193/lstm_579/strided_slice_3/stack_1:output:08sequential_193/lstm_579/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_193/lstm_579/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_193/lstm_579/transpose_1	TransposeCsequential_193/lstm_579/TensorArrayV2Stack/TensorListStack:tensor:01sequential_193/lstm_579/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_193/lstm_579/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_193/lstm_580/ShapeShape'sequential_193/lstm_579/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_193/lstm_580/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_193/lstm_580/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_193/lstm_580/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_193/lstm_580/strided_sliceStridedSlice&sequential_193/lstm_580/Shape:output:04sequential_193/lstm_580/strided_slice/stack:output:06sequential_193/lstm_580/strided_slice/stack_1:output:06sequential_193/lstm_580/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_193/lstm_580/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_193/lstm_580/zeros/packedPack.sequential_193/lstm_580/strided_slice:output:0/sequential_193/lstm_580/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_193/lstm_580/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_193/lstm_580/zerosFill-sequential_193/lstm_580/zeros/packed:output:0,sequential_193/lstm_580/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_193/lstm_580/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_193/lstm_580/zeros_1/packedPack.sequential_193/lstm_580/strided_slice:output:01sequential_193/lstm_580/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_193/lstm_580/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_193/lstm_580/zeros_1Fill/sequential_193/lstm_580/zeros_1/packed:output:0.sequential_193/lstm_580/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_193/lstm_580/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_193/lstm_580/transpose	Transpose'sequential_193/lstm_579/transpose_1:y:0/sequential_193/lstm_580/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_193/lstm_580/Shape_1Shape%sequential_193/lstm_580/transpose:y:0*
T0*
_output_shapes
:w
-sequential_193/lstm_580/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_580/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_193/lstm_580/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_580/strided_slice_1StridedSlice(sequential_193/lstm_580/Shape_1:output:06sequential_193/lstm_580/strided_slice_1/stack:output:08sequential_193/lstm_580/strided_slice_1/stack_1:output:08sequential_193/lstm_580/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_193/lstm_580/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_193/lstm_580/TensorArrayV2TensorListReserve<sequential_193/lstm_580/TensorArrayV2/element_shape:output:00sequential_193/lstm_580/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_193/lstm_580/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_193/lstm_580/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_193/lstm_580/transpose:y:0Vsequential_193/lstm_580/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_193/lstm_580/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_580/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_193/lstm_580/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_580/strided_slice_2StridedSlice%sequential_193/lstm_580/transpose:y:06sequential_193/lstm_580/strided_slice_2/stack:output:08sequential_193/lstm_580/strided_slice_2/stack_1:output:08sequential_193/lstm_580/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_193/lstm_580/lstm_cell_169/MatMul/ReadVariableOpReadVariableOpDsequential_193_lstm_580_lstm_cell_169_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_193/lstm_580/lstm_cell_169/MatMulMatMul0sequential_193/lstm_580/strided_slice_2:output:0Csequential_193/lstm_580/lstm_cell_169/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_193/lstm_580/lstm_cell_169/MatMul_1/ReadVariableOpReadVariableOpFsequential_193_lstm_580_lstm_cell_169_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_193/lstm_580/lstm_cell_169/MatMul_1MatMul&sequential_193/lstm_580/zeros:output:0Esequential_193/lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_193/lstm_580/lstm_cell_169/addAddV26sequential_193/lstm_580/lstm_cell_169/MatMul:product:08sequential_193/lstm_580/lstm_cell_169/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_193/lstm_580/lstm_cell_169/BiasAdd/ReadVariableOpReadVariableOpEsequential_193_lstm_580_lstm_cell_169_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_193/lstm_580/lstm_cell_169/BiasAddBiasAdd-sequential_193/lstm_580/lstm_cell_169/add:z:0Dsequential_193/lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_193/lstm_580/lstm_cell_169/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_193/lstm_580/lstm_cell_169/splitSplit>sequential_193/lstm_580/lstm_cell_169/split/split_dim:output:06sequential_193/lstm_580/lstm_cell_169/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_193/lstm_580/lstm_cell_169/SigmoidSigmoid4sequential_193/lstm_580/lstm_cell_169/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_193/lstm_580/lstm_cell_169/Sigmoid_1Sigmoid4sequential_193/lstm_580/lstm_cell_169/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_193/lstm_580/lstm_cell_169/mulMul3sequential_193/lstm_580/lstm_cell_169/Sigmoid_1:y:0(sequential_193/lstm_580/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_193/lstm_580/lstm_cell_169/ReluRelu4sequential_193/lstm_580/lstm_cell_169/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_193/lstm_580/lstm_cell_169/mul_1Mul1sequential_193/lstm_580/lstm_cell_169/Sigmoid:y:08sequential_193/lstm_580/lstm_cell_169/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_193/lstm_580/lstm_cell_169/add_1AddV2-sequential_193/lstm_580/lstm_cell_169/mul:z:0/sequential_193/lstm_580/lstm_cell_169/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_193/lstm_580/lstm_cell_169/Sigmoid_2Sigmoid4sequential_193/lstm_580/lstm_cell_169/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_193/lstm_580/lstm_cell_169/Relu_1Relu/sequential_193/lstm_580/lstm_cell_169/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_193/lstm_580/lstm_cell_169/mul_2Mul3sequential_193/lstm_580/lstm_cell_169/Sigmoid_2:y:0:sequential_193/lstm_580/lstm_cell_169/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_193/lstm_580/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_193/lstm_580/TensorArrayV2_1TensorListReserve>sequential_193/lstm_580/TensorArrayV2_1/element_shape:output:00sequential_193/lstm_580/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_193/lstm_580/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_193/lstm_580/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_193/lstm_580/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_193/lstm_580/whileWhile3sequential_193/lstm_580/while/loop_counter:output:09sequential_193/lstm_580/while/maximum_iterations:output:0%sequential_193/lstm_580/time:output:00sequential_193/lstm_580/TensorArrayV2_1:handle:0&sequential_193/lstm_580/zeros:output:0(sequential_193/lstm_580/zeros_1:output:00sequential_193/lstm_580/strided_slice_1:output:0Osequential_193/lstm_580/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_193_lstm_580_lstm_cell_169_matmul_readvariableop_resourceFsequential_193_lstm_580_lstm_cell_169_matmul_1_readvariableop_resourceEsequential_193_lstm_580_lstm_cell_169_biasadd_readvariableop_resource*
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
*sequential_193_lstm_580_while_body_1028613*6
cond.R,
*sequential_193_lstm_580_while_cond_1028612*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_193/lstm_580/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_193/lstm_580/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_193/lstm_580/while:output:3Qsequential_193/lstm_580/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_193/lstm_580/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_193/lstm_580/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_580/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_580/strided_slice_3StridedSliceCsequential_193/lstm_580/TensorArrayV2Stack/TensorListStack:tensor:06sequential_193/lstm_580/strided_slice_3/stack:output:08sequential_193/lstm_580/strided_slice_3/stack_1:output:08sequential_193/lstm_580/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_193/lstm_580/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_193/lstm_580/transpose_1	TransposeCsequential_193/lstm_580/TensorArrayV2Stack/TensorListStack:tensor:01sequential_193/lstm_580/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_193/lstm_580/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_193/lstm_581/ShapeShape'sequential_193/lstm_580/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_193/lstm_581/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_193/lstm_581/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_193/lstm_581/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_193/lstm_581/strided_sliceStridedSlice&sequential_193/lstm_581/Shape:output:04sequential_193/lstm_581/strided_slice/stack:output:06sequential_193/lstm_581/strided_slice/stack_1:output:06sequential_193/lstm_581/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_193/lstm_581/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_193/lstm_581/zeros/packedPack.sequential_193/lstm_581/strided_slice:output:0/sequential_193/lstm_581/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_193/lstm_581/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_193/lstm_581/zerosFill-sequential_193/lstm_581/zeros/packed:output:0,sequential_193/lstm_581/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_193/lstm_581/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_193/lstm_581/zeros_1/packedPack.sequential_193/lstm_581/strided_slice:output:01sequential_193/lstm_581/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_193/lstm_581/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_193/lstm_581/zeros_1Fill/sequential_193/lstm_581/zeros_1/packed:output:0.sequential_193/lstm_581/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_193/lstm_581/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_193/lstm_581/transpose	Transpose'sequential_193/lstm_580/transpose_1:y:0/sequential_193/lstm_581/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_193/lstm_581/Shape_1Shape%sequential_193/lstm_581/transpose:y:0*
T0*
_output_shapes
:w
-sequential_193/lstm_581/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_581/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_193/lstm_581/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_581/strided_slice_1StridedSlice(sequential_193/lstm_581/Shape_1:output:06sequential_193/lstm_581/strided_slice_1/stack:output:08sequential_193/lstm_581/strided_slice_1/stack_1:output:08sequential_193/lstm_581/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_193/lstm_581/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_193/lstm_581/TensorArrayV2TensorListReserve<sequential_193/lstm_581/TensorArrayV2/element_shape:output:00sequential_193/lstm_581/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_193/lstm_581/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_193/lstm_581/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_193/lstm_581/transpose:y:0Vsequential_193/lstm_581/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_193/lstm_581/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_581/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_193/lstm_581/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_581/strided_slice_2StridedSlice%sequential_193/lstm_581/transpose:y:06sequential_193/lstm_581/strided_slice_2/stack:output:08sequential_193/lstm_581/strided_slice_2/stack_1:output:08sequential_193/lstm_581/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_193/lstm_581/lstm_cell_170/MatMul/ReadVariableOpReadVariableOpDsequential_193_lstm_581_lstm_cell_170_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_193/lstm_581/lstm_cell_170/MatMulMatMul0sequential_193/lstm_581/strided_slice_2:output:0Csequential_193/lstm_581/lstm_cell_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_193/lstm_581/lstm_cell_170/MatMul_1/ReadVariableOpReadVariableOpFsequential_193_lstm_581_lstm_cell_170_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_193/lstm_581/lstm_cell_170/MatMul_1MatMul&sequential_193/lstm_581/zeros:output:0Esequential_193/lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_193/lstm_581/lstm_cell_170/addAddV26sequential_193/lstm_581/lstm_cell_170/MatMul:product:08sequential_193/lstm_581/lstm_cell_170/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_193/lstm_581/lstm_cell_170/BiasAdd/ReadVariableOpReadVariableOpEsequential_193_lstm_581_lstm_cell_170_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_193/lstm_581/lstm_cell_170/BiasAddBiasAdd-sequential_193/lstm_581/lstm_cell_170/add:z:0Dsequential_193/lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_193/lstm_581/lstm_cell_170/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_193/lstm_581/lstm_cell_170/splitSplit>sequential_193/lstm_581/lstm_cell_170/split/split_dim:output:06sequential_193/lstm_581/lstm_cell_170/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_193/lstm_581/lstm_cell_170/SigmoidSigmoid4sequential_193/lstm_581/lstm_cell_170/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_193/lstm_581/lstm_cell_170/Sigmoid_1Sigmoid4sequential_193/lstm_581/lstm_cell_170/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_193/lstm_581/lstm_cell_170/mulMul3sequential_193/lstm_581/lstm_cell_170/Sigmoid_1:y:0(sequential_193/lstm_581/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_193/lstm_581/lstm_cell_170/ReluRelu4sequential_193/lstm_581/lstm_cell_170/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_193/lstm_581/lstm_cell_170/mul_1Mul1sequential_193/lstm_581/lstm_cell_170/Sigmoid:y:08sequential_193/lstm_581/lstm_cell_170/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_193/lstm_581/lstm_cell_170/add_1AddV2-sequential_193/lstm_581/lstm_cell_170/mul:z:0/sequential_193/lstm_581/lstm_cell_170/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_193/lstm_581/lstm_cell_170/Sigmoid_2Sigmoid4sequential_193/lstm_581/lstm_cell_170/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_193/lstm_581/lstm_cell_170/Relu_1Relu/sequential_193/lstm_581/lstm_cell_170/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_193/lstm_581/lstm_cell_170/mul_2Mul3sequential_193/lstm_581/lstm_cell_170/Sigmoid_2:y:0:sequential_193/lstm_581/lstm_cell_170/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_193/lstm_581/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_193/lstm_581/TensorArrayV2_1TensorListReserve>sequential_193/lstm_581/TensorArrayV2_1/element_shape:output:00sequential_193/lstm_581/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_193/lstm_581/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_193/lstm_581/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_193/lstm_581/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_193/lstm_581/whileWhile3sequential_193/lstm_581/while/loop_counter:output:09sequential_193/lstm_581/while/maximum_iterations:output:0%sequential_193/lstm_581/time:output:00sequential_193/lstm_581/TensorArrayV2_1:handle:0&sequential_193/lstm_581/zeros:output:0(sequential_193/lstm_581/zeros_1:output:00sequential_193/lstm_581/strided_slice_1:output:0Osequential_193/lstm_581/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_193_lstm_581_lstm_cell_170_matmul_readvariableop_resourceFsequential_193_lstm_581_lstm_cell_170_matmul_1_readvariableop_resourceEsequential_193_lstm_581_lstm_cell_170_biasadd_readvariableop_resource*
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
*sequential_193_lstm_581_while_body_1028752*6
cond.R,
*sequential_193_lstm_581_while_cond_1028751*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_193/lstm_581/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_193/lstm_581/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_193/lstm_581/while:output:3Qsequential_193/lstm_581/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_193/lstm_581/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_193/lstm_581/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_193/lstm_581/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_193/lstm_581/strided_slice_3StridedSliceCsequential_193/lstm_581/TensorArrayV2Stack/TensorListStack:tensor:06sequential_193/lstm_581/strided_slice_3/stack:output:08sequential_193/lstm_581/strided_slice_3/stack_1:output:08sequential_193/lstm_581/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_193/lstm_581/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_193/lstm_581/transpose_1	TransposeCsequential_193/lstm_581/TensorArrayV2Stack/TensorListStack:tensor:01sequential_193/lstm_581/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_193/lstm_581/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_193/dense_193/MatMul/ReadVariableOpReadVariableOp7sequential_193_dense_193_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_193/dense_193/MatMulMatMul0sequential_193/lstm_581/strided_slice_3:output:06sequential_193/dense_193/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_193/dense_193/BiasAdd/ReadVariableOpReadVariableOp8sequential_193_dense_193_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_193/dense_193/BiasAddBiasAdd)sequential_193/dense_193/MatMul:product:07sequential_193/dense_193/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_193/dense_193/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_193/dense_193/BiasAdd/ReadVariableOp/^sequential_193/dense_193/MatMul/ReadVariableOp=^sequential_193/lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp<^sequential_193/lstm_579/lstm_cell_168/MatMul/ReadVariableOp>^sequential_193/lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp^sequential_193/lstm_579/while=^sequential_193/lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp<^sequential_193/lstm_580/lstm_cell_169/MatMul/ReadVariableOp>^sequential_193/lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp^sequential_193/lstm_580/while=^sequential_193/lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp<^sequential_193/lstm_581/lstm_cell_170/MatMul/ReadVariableOp>^sequential_193/lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp^sequential_193/lstm_581/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_193/dense_193/BiasAdd/ReadVariableOp/sequential_193/dense_193/BiasAdd/ReadVariableOp2`
.sequential_193/dense_193/MatMul/ReadVariableOp.sequential_193/dense_193/MatMul/ReadVariableOp2|
<sequential_193/lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp<sequential_193/lstm_579/lstm_cell_168/BiasAdd/ReadVariableOp2z
;sequential_193/lstm_579/lstm_cell_168/MatMul/ReadVariableOp;sequential_193/lstm_579/lstm_cell_168/MatMul/ReadVariableOp2~
=sequential_193/lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp=sequential_193/lstm_579/lstm_cell_168/MatMul_1/ReadVariableOp2>
sequential_193/lstm_579/whilesequential_193/lstm_579/while2|
<sequential_193/lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp<sequential_193/lstm_580/lstm_cell_169/BiasAdd/ReadVariableOp2z
;sequential_193/lstm_580/lstm_cell_169/MatMul/ReadVariableOp;sequential_193/lstm_580/lstm_cell_169/MatMul/ReadVariableOp2~
=sequential_193/lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp=sequential_193/lstm_580/lstm_cell_169/MatMul_1/ReadVariableOp2>
sequential_193/lstm_580/whilesequential_193/lstm_580/while2|
<sequential_193/lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp<sequential_193/lstm_581/lstm_cell_170/BiasAdd/ReadVariableOp2z
;sequential_193/lstm_581/lstm_cell_170/MatMul/ReadVariableOp;sequential_193/lstm_581/lstm_cell_170/MatMul/ReadVariableOp2~
=sequential_193/lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp=sequential_193/lstm_581/lstm_cell_170/MatMul_1/ReadVariableOp2>
sequential_193/lstm_581/whilesequential_193/lstm_581/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_579_input
?
?
while_cond_1030802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1030802___redundant_placeholder05
1while_while_cond_1030802___redundant_placeholder15
1while_while_cond_1030802___redundant_placeholder25
1while_while_cond_1030802___redundant_placeholder3
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
?
?
*__inference_lstm_581_layer_call_fn_1033275

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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1030341o
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
while_body_1028923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_168_1028947_0:	?0
while_lstm_cell_168_1028949_0:	d?,
while_lstm_cell_168_1028951_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_168_1028947:	?.
while_lstm_cell_168_1028949:	d?*
while_lstm_cell_168_1028951:	???+while/lstm_cell_168/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_168/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_168_1028947_0while_lstm_cell_168_1028949_0while_lstm_cell_168_1028951_0*
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1028909?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_168/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_168/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_168/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_168/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_168_1028947while_lstm_cell_168_1028947_0"<
while_lstm_cell_168_1028949while_lstm_cell_168_1028949_0"<
while_lstm_cell_168_1028951while_lstm_cell_168_1028951_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_168/StatefulPartitionedCall+while/lstm_cell_168/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_579_input;
 serving_default_lstm_579_input:0?????????=
	dense_1930
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
2dense_193/kernel
:2dense_193/bias
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
0:.	?2lstm_579/lstm_cell_579/kernel
::8	d?2'lstm_579/lstm_cell_579/recurrent_kernel
*:(?2lstm_579/lstm_cell_579/bias
0:.	d?2lstm_580/lstm_cell_580/kernel
::8	2?2'lstm_580/lstm_cell_580/recurrent_kernel
*:(?2lstm_580/lstm_cell_580/bias
/:-2(2lstm_581/lstm_cell_581/kernel
9:7
(2'lstm_581/lstm_cell_581/recurrent_kernel
):'(2lstm_581/lstm_cell_581/bias
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
2Adam/dense_193/kernel/m
!:2Adam/dense_193/bias/m
5:3	?2$Adam/lstm_579/lstm_cell_579/kernel/m
?:=	d?2.Adam/lstm_579/lstm_cell_579/recurrent_kernel/m
/:-?2"Adam/lstm_579/lstm_cell_579/bias/m
5:3	d?2$Adam/lstm_580/lstm_cell_580/kernel/m
?:=	2?2.Adam/lstm_580/lstm_cell_580/recurrent_kernel/m
/:-?2"Adam/lstm_580/lstm_cell_580/bias/m
4:22(2$Adam/lstm_581/lstm_cell_581/kernel/m
>:<
(2.Adam/lstm_581/lstm_cell_581/recurrent_kernel/m
.:,(2"Adam/lstm_581/lstm_cell_581/bias/m
':%
2Adam/dense_193/kernel/v
!:2Adam/dense_193/bias/v
5:3	?2$Adam/lstm_579/lstm_cell_579/kernel/v
?:=	d?2.Adam/lstm_579/lstm_cell_579/recurrent_kernel/v
/:-?2"Adam/lstm_579/lstm_cell_579/bias/v
5:3	d?2$Adam/lstm_580/lstm_cell_580/kernel/v
?:=	2?2.Adam/lstm_580/lstm_cell_580/recurrent_kernel/v
/:-?2"Adam/lstm_580/lstm_cell_580/bias/v
4:22(2$Adam/lstm_581/lstm_cell_581/kernel/v
>:<
(2.Adam/lstm_581/lstm_cell_581/recurrent_kernel/v
.:,(2"Adam/lstm_581/lstm_cell_581/bias/v
?2?
0__inference_sequential_193_layer_call_fn_1030391
0__inference_sequential_193_layer_call_fn_1031129
0__inference_sequential_193_layer_call_fn_1031156
0__inference_sequential_193_layer_call_fn_1031007?
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031583
K__inference_sequential_193_layer_call_and_return_conditional_losses_1032010
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031037
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031067?
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
"__inference__wrapped_model_1028842lstm_579_input"?
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
*__inference_lstm_579_layer_call_fn_1032021
*__inference_lstm_579_layer_call_fn_1032032
*__inference_lstm_579_layer_call_fn_1032043
*__inference_lstm_579_layer_call_fn_1032054?
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032197
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032340
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032483
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032626?
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
*__inference_lstm_580_layer_call_fn_1032637
*__inference_lstm_580_layer_call_fn_1032648
*__inference_lstm_580_layer_call_fn_1032659
*__inference_lstm_580_layer_call_fn_1032670?
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1032813
E__inference_lstm_580_layer_call_and_return_conditional_losses_1032956
E__inference_lstm_580_layer_call_and_return_conditional_losses_1033099
E__inference_lstm_580_layer_call_and_return_conditional_losses_1033242?
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
*__inference_lstm_581_layer_call_fn_1033253
*__inference_lstm_581_layer_call_fn_1033264
*__inference_lstm_581_layer_call_fn_1033275
*__inference_lstm_581_layer_call_fn_1033286?
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033429
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033572
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033715
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033858?
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
+__inference_dense_193_layer_call_fn_1033867?
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
F__inference_dense_193_layer_call_and_return_conditional_losses_1033877?
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
%__inference_signature_wrapper_1031102lstm_579_input"?
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
/__inference_lstm_cell_168_layer_call_fn_1033894
/__inference_lstm_cell_168_layer_call_fn_1033911?
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1033943
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1033975?
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
/__inference_lstm_cell_169_layer_call_fn_1033992
/__inference_lstm_cell_169_layer_call_fn_1034009?
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1034041
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1034073?
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
/__inference_lstm_cell_170_layer_call_fn_1034090
/__inference_lstm_cell_170_layer_call_fn_1034107?
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1034139
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1034171?
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
"__inference__wrapped_model_1028842?-./012345!";?8
1?.
,?)
lstm_579_input?????????
? "5?2
0
	dense_193#? 
	dense_193??????????
F__inference_dense_193_layer_call_and_return_conditional_losses_1033877\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_193_layer_call_fn_1033867O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032197?-./O?L
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032340?-./O?L
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032483q-./??<
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
E__inference_lstm_579_layer_call_and_return_conditional_losses_1032626q-./??<
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
*__inference_lstm_579_layer_call_fn_1032021}-./O?L
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
*__inference_lstm_579_layer_call_fn_1032032}-./O?L
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
*__inference_lstm_579_layer_call_fn_1032043d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_579_layer_call_fn_1032054d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_580_layer_call_and_return_conditional_losses_1032813?012O?L
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1032956?012O?L
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1033099q012??<
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
E__inference_lstm_580_layer_call_and_return_conditional_losses_1033242q012??<
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
*__inference_lstm_580_layer_call_fn_1032637}012O?L
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
*__inference_lstm_580_layer_call_fn_1032648}012O?L
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
*__inference_lstm_580_layer_call_fn_1032659d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_580_layer_call_fn_1032670d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033429}345O?L
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033572}345O?L
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033715m345??<
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
E__inference_lstm_581_layer_call_and_return_conditional_losses_1033858m345??<
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
*__inference_lstm_581_layer_call_fn_1033253p345O?L
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
*__inference_lstm_581_layer_call_fn_1033264p345O?L
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
*__inference_lstm_581_layer_call_fn_1033275`345??<
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
*__inference_lstm_581_layer_call_fn_1033286`345??<
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1033943?-./??}
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
J__inference_lstm_cell_168_layer_call_and_return_conditional_losses_1033975?-./??}
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
/__inference_lstm_cell_168_layer_call_fn_1033894?-./??}
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
/__inference_lstm_cell_168_layer_call_fn_1033911?-./??}
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1034041?012??}
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
J__inference_lstm_cell_169_layer_call_and_return_conditional_losses_1034073?012??}
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
/__inference_lstm_cell_169_layer_call_fn_1033992?012??}
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
/__inference_lstm_cell_169_layer_call_fn_1034009?012??}
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1034139?345??}
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
J__inference_lstm_cell_170_layer_call_and_return_conditional_losses_1034171?345??}
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
/__inference_lstm_cell_170_layer_call_fn_1034090?345??}
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
/__inference_lstm_cell_170_layer_call_fn_1034107?345??}
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031037y-./012345!"C?@
9?6
,?)
lstm_579_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031067y-./012345!"C?@
9?6
,?)
lstm_579_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_193_layer_call_and_return_conditional_losses_1031583q-./012345!";?8
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
K__inference_sequential_193_layer_call_and_return_conditional_losses_1032010q-./012345!";?8
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
0__inference_sequential_193_layer_call_fn_1030391l-./012345!"C?@
9?6
,?)
lstm_579_input?????????
p 

 
? "???????????
0__inference_sequential_193_layer_call_fn_1031007l-./012345!"C?@
9?6
,?)
lstm_579_input?????????
p

 
? "???????????
0__inference_sequential_193_layer_call_fn_1031129d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_193_layer_call_fn_1031156d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1031102?-./012345!"M?J
? 
C?@
>
lstm_579_input,?)
lstm_579_input?????????"5?2
0
	dense_193#? 
	dense_193?????????