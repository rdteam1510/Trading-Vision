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
dense_279/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_279/kernel
u
$dense_279/kernel/Read/ReadVariableOpReadVariableOpdense_279/kernel*
_output_shapes

:
*
dtype0
t
dense_279/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_279/bias
m
"dense_279/bias/Read/ReadVariableOpReadVariableOpdense_279/bias*
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
lstm_837/lstm_cell_837/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_837/lstm_cell_837/kernel
?
1lstm_837/lstm_cell_837/kernel/Read/ReadVariableOpReadVariableOplstm_837/lstm_cell_837/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_837/lstm_cell_837/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_837/lstm_cell_837/recurrent_kernel
?
;lstm_837/lstm_cell_837/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_837/lstm_cell_837/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_837/lstm_cell_837/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_837/lstm_cell_837/bias
?
/lstm_837/lstm_cell_837/bias/Read/ReadVariableOpReadVariableOplstm_837/lstm_cell_837/bias*
_output_shapes	
:?*
dtype0
?
lstm_838/lstm_cell_838/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_838/lstm_cell_838/kernel
?
1lstm_838/lstm_cell_838/kernel/Read/ReadVariableOpReadVariableOplstm_838/lstm_cell_838/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_838/lstm_cell_838/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_838/lstm_cell_838/recurrent_kernel
?
;lstm_838/lstm_cell_838/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_838/lstm_cell_838/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_838/lstm_cell_838/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_838/lstm_cell_838/bias
?
/lstm_838/lstm_cell_838/bias/Read/ReadVariableOpReadVariableOplstm_838/lstm_cell_838/bias*
_output_shapes	
:?*
dtype0
?
lstm_839/lstm_cell_839/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_839/lstm_cell_839/kernel
?
1lstm_839/lstm_cell_839/kernel/Read/ReadVariableOpReadVariableOplstm_839/lstm_cell_839/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_839/lstm_cell_839/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_839/lstm_cell_839/recurrent_kernel
?
;lstm_839/lstm_cell_839/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_839/lstm_cell_839/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_839/lstm_cell_839/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_839/lstm_cell_839/bias
?
/lstm_839/lstm_cell_839/bias/Read/ReadVariableOpReadVariableOplstm_839/lstm_cell_839/bias*
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
Adam/dense_279/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_279/kernel/m
?
+Adam/dense_279/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_279/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_279/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_279/bias/m
{
)Adam/dense_279/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_279/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_837/lstm_cell_837/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_837/lstm_cell_837/kernel/m
?
8Adam/lstm_837/lstm_cell_837/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_837/lstm_cell_837/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_837/lstm_cell_837/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_837/lstm_cell_837/recurrent_kernel/m
?
BAdam/lstm_837/lstm_cell_837/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_837/lstm_cell_837/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_837/lstm_cell_837/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_837/lstm_cell_837/bias/m
?
6Adam/lstm_837/lstm_cell_837/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_837/lstm_cell_837/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_838/lstm_cell_838/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_838/lstm_cell_838/kernel/m
?
8Adam/lstm_838/lstm_cell_838/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_838/lstm_cell_838/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_838/lstm_cell_838/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_838/lstm_cell_838/recurrent_kernel/m
?
BAdam/lstm_838/lstm_cell_838/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_838/lstm_cell_838/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_838/lstm_cell_838/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_838/lstm_cell_838/bias/m
?
6Adam/lstm_838/lstm_cell_838/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_838/lstm_cell_838/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_839/lstm_cell_839/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_839/lstm_cell_839/kernel/m
?
8Adam/lstm_839/lstm_cell_839/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_839/lstm_cell_839/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_839/lstm_cell_839/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_839/lstm_cell_839/recurrent_kernel/m
?
BAdam/lstm_839/lstm_cell_839/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_839/lstm_cell_839/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_839/lstm_cell_839/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_839/lstm_cell_839/bias/m
?
6Adam/lstm_839/lstm_cell_839/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_839/lstm_cell_839/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_279/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_279/kernel/v
?
+Adam/dense_279/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_279/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_279/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_279/bias/v
{
)Adam/dense_279/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_279/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_837/lstm_cell_837/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_837/lstm_cell_837/kernel/v
?
8Adam/lstm_837/lstm_cell_837/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_837/lstm_cell_837/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_837/lstm_cell_837/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_837/lstm_cell_837/recurrent_kernel/v
?
BAdam/lstm_837/lstm_cell_837/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_837/lstm_cell_837/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_837/lstm_cell_837/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_837/lstm_cell_837/bias/v
?
6Adam/lstm_837/lstm_cell_837/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_837/lstm_cell_837/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_838/lstm_cell_838/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_838/lstm_cell_838/kernel/v
?
8Adam/lstm_838/lstm_cell_838/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_838/lstm_cell_838/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_838/lstm_cell_838/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_838/lstm_cell_838/recurrent_kernel/v
?
BAdam/lstm_838/lstm_cell_838/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_838/lstm_cell_838/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_838/lstm_cell_838/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_838/lstm_cell_838/bias/v
?
6Adam/lstm_838/lstm_cell_838/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_838/lstm_cell_838/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_839/lstm_cell_839/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_839/lstm_cell_839/kernel/v
?
8Adam/lstm_839/lstm_cell_839/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_839/lstm_cell_839/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_839/lstm_cell_839/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_839/lstm_cell_839/recurrent_kernel/v
?
BAdam/lstm_839/lstm_cell_839/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_839/lstm_cell_839/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_839/lstm_cell_839/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_839/lstm_cell_839/bias/v
?
6Adam/lstm_839/lstm_cell_839/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_839/lstm_cell_839/bias/v*
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
VARIABLE_VALUEdense_279/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_279/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_837/lstm_cell_837/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_837/lstm_cell_837/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_837/lstm_cell_837/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_838/lstm_cell_838/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_838/lstm_cell_838/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_838/lstm_cell_838/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_839/lstm_cell_839/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_839/lstm_cell_839/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_839/lstm_cell_839/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_279/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_279/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_837/lstm_cell_837/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_837/lstm_cell_837/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_837/lstm_cell_837/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_838/lstm_cell_838/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_838/lstm_cell_838/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_838/lstm_cell_838/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_839/lstm_cell_839/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_839/lstm_cell_839/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_839/lstm_cell_839/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_279/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_279/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_837/lstm_cell_837/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_837/lstm_cell_837/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_837/lstm_cell_837/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_838/lstm_cell_838/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_838/lstm_cell_838/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_838/lstm_cell_838/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_839/lstm_cell_839/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_839/lstm_cell_839/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_839/lstm_cell_839/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_837_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_837_inputlstm_837/lstm_cell_837/kernel'lstm_837/lstm_cell_837/recurrent_kernellstm_837/lstm_cell_837/biaslstm_838/lstm_cell_838/kernel'lstm_838/lstm_cell_838/recurrent_kernellstm_838/lstm_cell_838/biaslstm_839/lstm_cell_839/kernel'lstm_839/lstm_cell_839/recurrent_kernellstm_839/lstm_cell_839/biasdense_279/kerneldense_279/bias*
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
%__inference_signature_wrapper_4568427
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_279/kernel/Read/ReadVariableOp"dense_279/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_837/lstm_cell_837/kernel/Read/ReadVariableOp;lstm_837/lstm_cell_837/recurrent_kernel/Read/ReadVariableOp/lstm_837/lstm_cell_837/bias/Read/ReadVariableOp1lstm_838/lstm_cell_838/kernel/Read/ReadVariableOp;lstm_838/lstm_cell_838/recurrent_kernel/Read/ReadVariableOp/lstm_838/lstm_cell_838/bias/Read/ReadVariableOp1lstm_839/lstm_cell_839/kernel/Read/ReadVariableOp;lstm_839/lstm_cell_839/recurrent_kernel/Read/ReadVariableOp/lstm_839/lstm_cell_839/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_279/kernel/m/Read/ReadVariableOp)Adam/dense_279/bias/m/Read/ReadVariableOp8Adam/lstm_837/lstm_cell_837/kernel/m/Read/ReadVariableOpBAdam/lstm_837/lstm_cell_837/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_837/lstm_cell_837/bias/m/Read/ReadVariableOp8Adam/lstm_838/lstm_cell_838/kernel/m/Read/ReadVariableOpBAdam/lstm_838/lstm_cell_838/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_838/lstm_cell_838/bias/m/Read/ReadVariableOp8Adam/lstm_839/lstm_cell_839/kernel/m/Read/ReadVariableOpBAdam/lstm_839/lstm_cell_839/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_839/lstm_cell_839/bias/m/Read/ReadVariableOp+Adam/dense_279/kernel/v/Read/ReadVariableOp)Adam/dense_279/bias/v/Read/ReadVariableOp8Adam/lstm_837/lstm_cell_837/kernel/v/Read/ReadVariableOpBAdam/lstm_837/lstm_cell_837/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_837/lstm_cell_837/bias/v/Read/ReadVariableOp8Adam/lstm_838/lstm_cell_838/kernel/v/Read/ReadVariableOpBAdam/lstm_838/lstm_cell_838/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_838/lstm_cell_838/bias/v/Read/ReadVariableOp8Adam/lstm_839/lstm_cell_839/kernel/v/Read/ReadVariableOpBAdam/lstm_839/lstm_cell_839/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_839/lstm_cell_839/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4571639
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_279/kerneldense_279/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_837/lstm_cell_837/kernel'lstm_837/lstm_cell_837/recurrent_kernellstm_837/lstm_cell_837/biaslstm_838/lstm_cell_838/kernel'lstm_838/lstm_cell_838/recurrent_kernellstm_838/lstm_cell_838/biaslstm_839/lstm_cell_839/kernel'lstm_839/lstm_cell_839/recurrent_kernellstm_839/lstm_cell_839/biastotalcountAdam/dense_279/kernel/mAdam/dense_279/bias/m$Adam/lstm_837/lstm_cell_837/kernel/m.Adam/lstm_837/lstm_cell_837/recurrent_kernel/m"Adam/lstm_837/lstm_cell_837/bias/m$Adam/lstm_838/lstm_cell_838/kernel/m.Adam/lstm_838/lstm_cell_838/recurrent_kernel/m"Adam/lstm_838/lstm_cell_838/bias/m$Adam/lstm_839/lstm_cell_839/kernel/m.Adam/lstm_839/lstm_cell_839/recurrent_kernel/m"Adam/lstm_839/lstm_cell_839/bias/mAdam/dense_279/kernel/vAdam/dense_279/bias/v$Adam/lstm_837/lstm_cell_837/kernel/v.Adam/lstm_837/lstm_cell_837/recurrent_kernel/v"Adam/lstm_837/lstm_cell_837/bias/v$Adam/lstm_838/lstm_cell_838/kernel/v.Adam/lstm_838/lstm_cell_838/recurrent_kernel/v"Adam/lstm_838/lstm_cell_838/bias/v$Adam/lstm_839/lstm_cell_839/kernel/v.Adam/lstm_839/lstm_cell_839/recurrent_kernel/v"Adam/lstm_839/lstm_cell_839/bias/v*4
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
#__inference__traced_restore_4571769??+
?
?
*__inference_lstm_839_layer_call_fn_4570578
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567017o
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
?8
?
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567017

inputs'
lstm_cell_755_4566935:2('
lstm_cell_755_4566937:
(#
lstm_cell_755_4566939:(
identity??%lstm_cell_755/StatefulPartitionedCall?while;
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
%lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_755_4566935lstm_cell_755_4566937lstm_cell_755_4566939*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4566934n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_755_4566935lstm_cell_755_4566937lstm_cell_755_4566939*
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
while_body_4566948*
condR
while_cond_4566947*K
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
NoOpNoOp&^lstm_cell_755/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_755/StatefulPartitionedCall%lstm_cell_755/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567208

inputs'
lstm_cell_755_4567126:2('
lstm_cell_755_4567128:
(#
lstm_cell_755_4567130:(
identity??%lstm_cell_755/StatefulPartitionedCall?while;
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
%lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_755_4567126lstm_cell_755_4567128lstm_cell_755_4567130*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4567080n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_755_4567126lstm_cell_755_4567128lstm_cell_755_4567130*
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
while_body_4567139*
condR
while_cond_4567138*K
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
NoOpNoOp&^lstm_cell_755/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_755/StatefulPartitionedCall%lstm_cell_755/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4567516

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4567432*
condR
while_cond_4567431*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_837_layer_call_fn_4569379

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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4568212s
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
?	
?
F__inference_dense_279_layer_call_and_return_conditional_losses_4571202

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
?
?
+__inference_dense_279_layer_call_fn_4571192

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
F__inference_dense_279_layer_call_and_return_conditional_losses_4567684o
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
?
?
while_cond_4569437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4569437___redundant_placeholder05
1while_while_cond_4569437___redundant_placeholder15
1while_while_cond_4569437___redundant_placeholder25
1while_while_cond_4569437___redundant_placeholder3
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
?
*sequential_279_lstm_839_while_cond_4566076L
Hsequential_279_lstm_839_while_sequential_279_lstm_839_while_loop_counterR
Nsequential_279_lstm_839_while_sequential_279_lstm_839_while_maximum_iterations-
)sequential_279_lstm_839_while_placeholder/
+sequential_279_lstm_839_while_placeholder_1/
+sequential_279_lstm_839_while_placeholder_2/
+sequential_279_lstm_839_while_placeholder_3N
Jsequential_279_lstm_839_while_less_sequential_279_lstm_839_strided_slice_1e
asequential_279_lstm_839_while_sequential_279_lstm_839_while_cond_4566076___redundant_placeholder0e
asequential_279_lstm_839_while_sequential_279_lstm_839_while_cond_4566076___redundant_placeholder1e
asequential_279_lstm_839_while_sequential_279_lstm_839_while_cond_4566076___redundant_placeholder2e
asequential_279_lstm_839_while_sequential_279_lstm_839_while_cond_4566076___redundant_placeholder3*
&sequential_279_lstm_839_while_identity
?
"sequential_279/lstm_839/while/LessLess)sequential_279_lstm_839_while_placeholderJsequential_279_lstm_839_while_less_sequential_279_lstm_839_strided_slice_1*
T0*
_output_shapes
: {
&sequential_279/lstm_839/while/IdentityIdentity&sequential_279/lstm_839/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_279_lstm_839_while_identity/sequential_279/lstm_839/while/Identity:output:0*(
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
??
?
#__inference__traced_restore_4571769
file_prefix3
!assignvariableop_dense_279_kernel:
/
!assignvariableop_1_dense_279_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_837_lstm_cell_837_kernel:	?M
:assignvariableop_8_lstm_837_lstm_cell_837_recurrent_kernel:	d?=
.assignvariableop_9_lstm_837_lstm_cell_837_bias:	?D
1assignvariableop_10_lstm_838_lstm_cell_838_kernel:	d?N
;assignvariableop_11_lstm_838_lstm_cell_838_recurrent_kernel:	2?>
/assignvariableop_12_lstm_838_lstm_cell_838_bias:	?C
1assignvariableop_13_lstm_839_lstm_cell_839_kernel:2(M
;assignvariableop_14_lstm_839_lstm_cell_839_recurrent_kernel:
(=
/assignvariableop_15_lstm_839_lstm_cell_839_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_279_kernel_m:
7
)assignvariableop_19_adam_dense_279_bias_m:K
8assignvariableop_20_adam_lstm_837_lstm_cell_837_kernel_m:	?U
Bassignvariableop_21_adam_lstm_837_lstm_cell_837_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_837_lstm_cell_837_bias_m:	?K
8assignvariableop_23_adam_lstm_838_lstm_cell_838_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_838_lstm_cell_838_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_838_lstm_cell_838_bias_m:	?J
8assignvariableop_26_adam_lstm_839_lstm_cell_839_kernel_m:2(T
Bassignvariableop_27_adam_lstm_839_lstm_cell_839_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_839_lstm_cell_839_bias_m:(=
+assignvariableop_29_adam_dense_279_kernel_v:
7
)assignvariableop_30_adam_dense_279_bias_v:K
8assignvariableop_31_adam_lstm_837_lstm_cell_837_kernel_v:	?U
Bassignvariableop_32_adam_lstm_837_lstm_cell_837_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_837_lstm_cell_837_bias_v:	?K
8assignvariableop_34_adam_lstm_838_lstm_cell_838_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_838_lstm_cell_838_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_838_lstm_cell_838_bias_v:	?J
8assignvariableop_37_adam_lstm_839_lstm_cell_839_kernel_v:2(T
Bassignvariableop_38_adam_lstm_839_lstm_cell_839_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_839_lstm_cell_839_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_279_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_279_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_837_lstm_cell_837_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_837_lstm_cell_837_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_837_lstm_cell_837_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_838_lstm_cell_838_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_838_lstm_cell_838_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_838_lstm_cell_838_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_839_lstm_cell_839_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_839_lstm_cell_839_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_839_lstm_cell_839_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_279_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_279_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_837_lstm_cell_837_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_837_lstm_cell_837_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_837_lstm_cell_837_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_838_lstm_cell_838_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_838_lstm_cell_838_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_838_lstm_cell_838_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_839_lstm_cell_839_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_839_lstm_cell_839_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_839_lstm_cell_839_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_279_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_279_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_837_lstm_cell_837_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_837_lstm_cell_837_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_837_lstm_cell_837_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_838_lstm_cell_838_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_838_lstm_cell_838_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_838_lstm_cell_838_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_839_lstm_cell_839_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_839_lstm_cell_839_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_839_lstm_cell_839_bias_vIdentity_39:output:0"/device:CPU:0*
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
*__inference_lstm_838_layer_call_fn_4569984

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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4567516s
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
?8
?
while_body_4569867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_839_while_body_4568818.
*lstm_839_while_lstm_839_while_loop_counter4
0lstm_839_while_lstm_839_while_maximum_iterations
lstm_839_while_placeholder 
lstm_839_while_placeholder_1 
lstm_839_while_placeholder_2 
lstm_839_while_placeholder_3-
)lstm_839_while_lstm_839_strided_slice_1_0i
elstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0:2(Q
?lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(L
>lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0:(
lstm_839_while_identity
lstm_839_while_identity_1
lstm_839_while_identity_2
lstm_839_while_identity_3
lstm_839_while_identity_4
lstm_839_while_identity_5+
'lstm_839_while_lstm_839_strided_slice_1g
clstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensorM
;lstm_839_while_lstm_cell_755_matmul_readvariableop_resource:2(O
=lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource:
(J
<lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource:(??3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp?2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp?4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp?
@lstm_839/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_839/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensor_0lstm_839_while_placeholderIlstm_839/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp=lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_839/while/lstm_cell_755/MatMulMatMul9lstm_839/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp?lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_839/while/lstm_cell_755/MatMul_1MatMullstm_839_while_placeholder_2<lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_839/while/lstm_cell_755/addAddV2-lstm_839/while/lstm_cell_755/MatMul:product:0/lstm_839/while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp>lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_839/while/lstm_cell_755/BiasAddBiasAdd$lstm_839/while/lstm_cell_755/add:z:0;lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_839/while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_839/while/lstm_cell_755/splitSplit5lstm_839/while/lstm_cell_755/split/split_dim:output:0-lstm_839/while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_839/while/lstm_cell_755/SigmoidSigmoid+lstm_839/while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_839/while/lstm_cell_755/Sigmoid_1Sigmoid+lstm_839/while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_839/while/lstm_cell_755/mulMul*lstm_839/while/lstm_cell_755/Sigmoid_1:y:0lstm_839_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_839/while/lstm_cell_755/ReluRelu+lstm_839/while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_839/while/lstm_cell_755/mul_1Mul(lstm_839/while/lstm_cell_755/Sigmoid:y:0/lstm_839/while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_839/while/lstm_cell_755/add_1AddV2$lstm_839/while/lstm_cell_755/mul:z:0&lstm_839/while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_839/while/lstm_cell_755/Sigmoid_2Sigmoid+lstm_839/while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_839/while/lstm_cell_755/Relu_1Relu&lstm_839/while/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_839/while/lstm_cell_755/mul_2Mul*lstm_839/while/lstm_cell_755/Sigmoid_2:y:01lstm_839/while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_839/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_839_while_placeholder_1lstm_839_while_placeholder&lstm_839/while/lstm_cell_755/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_839/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_839/while/addAddV2lstm_839_while_placeholderlstm_839/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_839/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_839/while/add_1AddV2*lstm_839_while_lstm_839_while_loop_counterlstm_839/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_839/while/IdentityIdentitylstm_839/while/add_1:z:0^lstm_839/while/NoOp*
T0*
_output_shapes
: ?
lstm_839/while/Identity_1Identity0lstm_839_while_lstm_839_while_maximum_iterations^lstm_839/while/NoOp*
T0*
_output_shapes
: t
lstm_839/while/Identity_2Identitylstm_839/while/add:z:0^lstm_839/while/NoOp*
T0*
_output_shapes
: ?
lstm_839/while/Identity_3IdentityClstm_839/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_839/while/NoOp*
T0*
_output_shapes
: ?
lstm_839/while/Identity_4Identity&lstm_839/while/lstm_cell_755/mul_2:z:0^lstm_839/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_839/while/Identity_5Identity&lstm_839/while/lstm_cell_755/add_1:z:0^lstm_839/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_839/while/NoOpNoOp4^lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp3^lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp5^lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_839_while_identity lstm_839/while/Identity:output:0"?
lstm_839_while_identity_1"lstm_839/while/Identity_1:output:0"?
lstm_839_while_identity_2"lstm_839/while/Identity_2:output:0"?
lstm_839_while_identity_3"lstm_839/while/Identity_3:output:0"?
lstm_839_while_identity_4"lstm_839/while/Identity_4:output:0"?
lstm_839_while_identity_5"lstm_839/while/Identity_5:output:0"T
'lstm_839_while_lstm_839_strided_slice_1)lstm_839_while_lstm_839_strided_slice_1_0"~
<lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource>lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0"?
=lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource?lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0"|
;lstm_839_while_lstm_cell_755_matmul_readvariableop_resource=lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0"?
clstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensorelstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp2h
2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp2l
4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4569335

inputsH
5lstm_837_lstm_cell_753_matmul_readvariableop_resource:	?J
7lstm_837_lstm_cell_753_matmul_1_readvariableop_resource:	d?E
6lstm_837_lstm_cell_753_biasadd_readvariableop_resource:	?H
5lstm_838_lstm_cell_754_matmul_readvariableop_resource:	d?J
7lstm_838_lstm_cell_754_matmul_1_readvariableop_resource:	2?E
6lstm_838_lstm_cell_754_biasadd_readvariableop_resource:	?G
5lstm_839_lstm_cell_755_matmul_readvariableop_resource:2(I
7lstm_839_lstm_cell_755_matmul_1_readvariableop_resource:
(D
6lstm_839_lstm_cell_755_biasadd_readvariableop_resource:(:
(dense_279_matmul_readvariableop_resource:
7
)dense_279_biasadd_readvariableop_resource:
identity?? dense_279/BiasAdd/ReadVariableOp?dense_279/MatMul/ReadVariableOp?-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp?,lstm_837/lstm_cell_753/MatMul/ReadVariableOp?.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp?lstm_837/while?-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp?,lstm_838/lstm_cell_754/MatMul/ReadVariableOp?.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp?lstm_838/while?-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp?,lstm_839/lstm_cell_755/MatMul/ReadVariableOp?.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp?lstm_839/whileD
lstm_837/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_837/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_837/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_837/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_sliceStridedSlicelstm_837/Shape:output:0%lstm_837/strided_slice/stack:output:0'lstm_837/strided_slice/stack_1:output:0'lstm_837/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_837/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_837/zeros/packedPacklstm_837/strided_slice:output:0 lstm_837/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_837/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_837/zerosFilllstm_837/zeros/packed:output:0lstm_837/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_837/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_837/zeros_1/packedPacklstm_837/strided_slice:output:0"lstm_837/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_837/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_837/zeros_1Fill lstm_837/zeros_1/packed:output:0lstm_837/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_837/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_837/transpose	Transposeinputs lstm_837/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_837/Shape_1Shapelstm_837/transpose:y:0*
T0*
_output_shapes
:h
lstm_837/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_837/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_837/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_slice_1StridedSlicelstm_837/Shape_1:output:0'lstm_837/strided_slice_1/stack:output:0)lstm_837/strided_slice_1/stack_1:output:0)lstm_837/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_837/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_837/TensorArrayV2TensorListReserve-lstm_837/TensorArrayV2/element_shape:output:0!lstm_837/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_837/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_837/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_837/transpose:y:0Glstm_837/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_837/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_837/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_837/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_slice_2StridedSlicelstm_837/transpose:y:0'lstm_837/strided_slice_2/stack:output:0)lstm_837/strided_slice_2/stack_1:output:0)lstm_837/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_837/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp5lstm_837_lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_837/lstm_cell_753/MatMulMatMul!lstm_837/strided_slice_2:output:04lstm_837/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp7lstm_837_lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_837/lstm_cell_753/MatMul_1MatMullstm_837/zeros:output:06lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_837/lstm_cell_753/addAddV2'lstm_837/lstm_cell_753/MatMul:product:0)lstm_837/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp6lstm_837_lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_837/lstm_cell_753/BiasAddBiasAddlstm_837/lstm_cell_753/add:z:05lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_837/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_837/lstm_cell_753/splitSplit/lstm_837/lstm_cell_753/split/split_dim:output:0'lstm_837/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_837/lstm_cell_753/SigmoidSigmoid%lstm_837/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_837/lstm_cell_753/Sigmoid_1Sigmoid%lstm_837/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/mulMul$lstm_837/lstm_cell_753/Sigmoid_1:y:0lstm_837/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_837/lstm_cell_753/ReluRelu%lstm_837/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/mul_1Mul"lstm_837/lstm_cell_753/Sigmoid:y:0)lstm_837/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/add_1AddV2lstm_837/lstm_cell_753/mul:z:0 lstm_837/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_837/lstm_cell_753/Sigmoid_2Sigmoid%lstm_837/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_837/lstm_cell_753/Relu_1Relu lstm_837/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/mul_2Mul$lstm_837/lstm_cell_753/Sigmoid_2:y:0+lstm_837/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_837/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_837/TensorArrayV2_1TensorListReserve/lstm_837/TensorArrayV2_1/element_shape:output:0!lstm_837/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_837/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_837/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_837/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_837/whileWhile$lstm_837/while/loop_counter:output:0*lstm_837/while/maximum_iterations:output:0lstm_837/time:output:0!lstm_837/TensorArrayV2_1:handle:0lstm_837/zeros:output:0lstm_837/zeros_1:output:0!lstm_837/strided_slice_1:output:0@lstm_837/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_837_lstm_cell_753_matmul_readvariableop_resource7lstm_837_lstm_cell_753_matmul_1_readvariableop_resource6lstm_837_lstm_cell_753_biasadd_readvariableop_resource*
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
lstm_837_while_body_4568967*'
condR
lstm_837_while_cond_4568966*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_837/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_837/TensorArrayV2Stack/TensorListStackTensorListStacklstm_837/while:output:3Blstm_837/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_837/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_837/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_837/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_slice_3StridedSlice4lstm_837/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_837/strided_slice_3/stack:output:0)lstm_837/strided_slice_3/stack_1:output:0)lstm_837/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_837/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_837/transpose_1	Transpose4lstm_837/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_837/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_837/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_838/ShapeShapelstm_837/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_838/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_838/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_838/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_sliceStridedSlicelstm_838/Shape:output:0%lstm_838/strided_slice/stack:output:0'lstm_838/strided_slice/stack_1:output:0'lstm_838/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_838/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_838/zeros/packedPacklstm_838/strided_slice:output:0 lstm_838/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_838/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_838/zerosFilllstm_838/zeros/packed:output:0lstm_838/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_838/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_838/zeros_1/packedPacklstm_838/strided_slice:output:0"lstm_838/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_838/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_838/zeros_1Fill lstm_838/zeros_1/packed:output:0lstm_838/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_838/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_838/transpose	Transposelstm_837/transpose_1:y:0 lstm_838/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_838/Shape_1Shapelstm_838/transpose:y:0*
T0*
_output_shapes
:h
lstm_838/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_838/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_838/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_slice_1StridedSlicelstm_838/Shape_1:output:0'lstm_838/strided_slice_1/stack:output:0)lstm_838/strided_slice_1/stack_1:output:0)lstm_838/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_838/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_838/TensorArrayV2TensorListReserve-lstm_838/TensorArrayV2/element_shape:output:0!lstm_838/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_838/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_838/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_838/transpose:y:0Glstm_838/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_838/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_838/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_838/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_slice_2StridedSlicelstm_838/transpose:y:0'lstm_838/strided_slice_2/stack:output:0)lstm_838/strided_slice_2/stack_1:output:0)lstm_838/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_838/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp5lstm_838_lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_838/lstm_cell_754/MatMulMatMul!lstm_838/strided_slice_2:output:04lstm_838/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp7lstm_838_lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_838/lstm_cell_754/MatMul_1MatMullstm_838/zeros:output:06lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_838/lstm_cell_754/addAddV2'lstm_838/lstm_cell_754/MatMul:product:0)lstm_838/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp6lstm_838_lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_838/lstm_cell_754/BiasAddBiasAddlstm_838/lstm_cell_754/add:z:05lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_838/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_838/lstm_cell_754/splitSplit/lstm_838/lstm_cell_754/split/split_dim:output:0'lstm_838/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_838/lstm_cell_754/SigmoidSigmoid%lstm_838/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_838/lstm_cell_754/Sigmoid_1Sigmoid%lstm_838/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/mulMul$lstm_838/lstm_cell_754/Sigmoid_1:y:0lstm_838/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_838/lstm_cell_754/ReluRelu%lstm_838/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/mul_1Mul"lstm_838/lstm_cell_754/Sigmoid:y:0)lstm_838/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/add_1AddV2lstm_838/lstm_cell_754/mul:z:0 lstm_838/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_838/lstm_cell_754/Sigmoid_2Sigmoid%lstm_838/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_838/lstm_cell_754/Relu_1Relu lstm_838/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/mul_2Mul$lstm_838/lstm_cell_754/Sigmoid_2:y:0+lstm_838/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_838/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_838/TensorArrayV2_1TensorListReserve/lstm_838/TensorArrayV2_1/element_shape:output:0!lstm_838/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_838/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_838/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_838/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_838/whileWhile$lstm_838/while/loop_counter:output:0*lstm_838/while/maximum_iterations:output:0lstm_838/time:output:0!lstm_838/TensorArrayV2_1:handle:0lstm_838/zeros:output:0lstm_838/zeros_1:output:0!lstm_838/strided_slice_1:output:0@lstm_838/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_838_lstm_cell_754_matmul_readvariableop_resource7lstm_838_lstm_cell_754_matmul_1_readvariableop_resource6lstm_838_lstm_cell_754_biasadd_readvariableop_resource*
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
lstm_838_while_body_4569106*'
condR
lstm_838_while_cond_4569105*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_838/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_838/TensorArrayV2Stack/TensorListStackTensorListStacklstm_838/while:output:3Blstm_838/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_838/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_838/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_838/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_slice_3StridedSlice4lstm_838/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_838/strided_slice_3/stack:output:0)lstm_838/strided_slice_3/stack_1:output:0)lstm_838/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_838/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_838/transpose_1	Transpose4lstm_838/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_838/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_838/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_839/ShapeShapelstm_838/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_839/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_839/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_839/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_sliceStridedSlicelstm_839/Shape:output:0%lstm_839/strided_slice/stack:output:0'lstm_839/strided_slice/stack_1:output:0'lstm_839/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_839/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_839/zeros/packedPacklstm_839/strided_slice:output:0 lstm_839/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_839/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_839/zerosFilllstm_839/zeros/packed:output:0lstm_839/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_839/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_839/zeros_1/packedPacklstm_839/strided_slice:output:0"lstm_839/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_839/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_839/zeros_1Fill lstm_839/zeros_1/packed:output:0lstm_839/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_839/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_839/transpose	Transposelstm_838/transpose_1:y:0 lstm_839/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_839/Shape_1Shapelstm_839/transpose:y:0*
T0*
_output_shapes
:h
lstm_839/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_839/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_839/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_slice_1StridedSlicelstm_839/Shape_1:output:0'lstm_839/strided_slice_1/stack:output:0)lstm_839/strided_slice_1/stack_1:output:0)lstm_839/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_839/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_839/TensorArrayV2TensorListReserve-lstm_839/TensorArrayV2/element_shape:output:0!lstm_839/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_839/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_839/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_839/transpose:y:0Glstm_839/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_839/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_839/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_839/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_slice_2StridedSlicelstm_839/transpose:y:0'lstm_839/strided_slice_2/stack:output:0)lstm_839/strided_slice_2/stack_1:output:0)lstm_839/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_839/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp5lstm_839_lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_839/lstm_cell_755/MatMulMatMul!lstm_839/strided_slice_2:output:04lstm_839/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp7lstm_839_lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_839/lstm_cell_755/MatMul_1MatMullstm_839/zeros:output:06lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_839/lstm_cell_755/addAddV2'lstm_839/lstm_cell_755/MatMul:product:0)lstm_839/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp6lstm_839_lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_839/lstm_cell_755/BiasAddBiasAddlstm_839/lstm_cell_755/add:z:05lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_839/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_839/lstm_cell_755/splitSplit/lstm_839/lstm_cell_755/split/split_dim:output:0'lstm_839/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_839/lstm_cell_755/SigmoidSigmoid%lstm_839/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_839/lstm_cell_755/Sigmoid_1Sigmoid%lstm_839/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/mulMul$lstm_839/lstm_cell_755/Sigmoid_1:y:0lstm_839/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_839/lstm_cell_755/ReluRelu%lstm_839/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/mul_1Mul"lstm_839/lstm_cell_755/Sigmoid:y:0)lstm_839/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/add_1AddV2lstm_839/lstm_cell_755/mul:z:0 lstm_839/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_839/lstm_cell_755/Sigmoid_2Sigmoid%lstm_839/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_839/lstm_cell_755/Relu_1Relu lstm_839/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/mul_2Mul$lstm_839/lstm_cell_755/Sigmoid_2:y:0+lstm_839/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_839/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_839/TensorArrayV2_1TensorListReserve/lstm_839/TensorArrayV2_1/element_shape:output:0!lstm_839/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_839/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_839/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_839/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_839/whileWhile$lstm_839/while/loop_counter:output:0*lstm_839/while/maximum_iterations:output:0lstm_839/time:output:0!lstm_839/TensorArrayV2_1:handle:0lstm_839/zeros:output:0lstm_839/zeros_1:output:0!lstm_839/strided_slice_1:output:0@lstm_839/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_839_lstm_cell_755_matmul_readvariableop_resource7lstm_839_lstm_cell_755_matmul_1_readvariableop_resource6lstm_839_lstm_cell_755_biasadd_readvariableop_resource*
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
lstm_839_while_body_4569245*'
condR
lstm_839_while_cond_4569244*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_839/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_839/TensorArrayV2Stack/TensorListStackTensorListStacklstm_839/while:output:3Blstm_839/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_839/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_839/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_839/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_slice_3StridedSlice4lstm_839/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_839/strided_slice_3/stack:output:0)lstm_839/strided_slice_3/stack_1:output:0)lstm_839/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_839/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_839/transpose_1	Transpose4lstm_839/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_839/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_839/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_279/MatMul/ReadVariableOpReadVariableOp(dense_279_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_279/MatMulMatMul!lstm_839/strided_slice_3:output:0'dense_279/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_279/BiasAdd/ReadVariableOpReadVariableOp)dense_279_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_279/BiasAddBiasAdddense_279/MatMul:product:0(dense_279/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_279/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_279/BiasAdd/ReadVariableOp ^dense_279/MatMul/ReadVariableOp.^lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp-^lstm_837/lstm_cell_753/MatMul/ReadVariableOp/^lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp^lstm_837/while.^lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp-^lstm_838/lstm_cell_754/MatMul/ReadVariableOp/^lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp^lstm_838/while.^lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp-^lstm_839/lstm_cell_755/MatMul/ReadVariableOp/^lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp^lstm_839/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_279/BiasAdd/ReadVariableOp dense_279/BiasAdd/ReadVariableOp2B
dense_279/MatMul/ReadVariableOpdense_279/MatMul/ReadVariableOp2^
-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp2\
,lstm_837/lstm_cell_753/MatMul/ReadVariableOp,lstm_837/lstm_cell_753/MatMul/ReadVariableOp2`
.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp2 
lstm_837/whilelstm_837/while2^
-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp2\
,lstm_838/lstm_cell_754/MatMul/ReadVariableOp,lstm_838/lstm_cell_754/MatMul/ReadVariableOp2`
.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp2 
lstm_838/whilelstm_838/while2^
-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp2\
,lstm_839/lstm_cell_755/MatMul/ReadVariableOp,lstm_839/lstm_cell_755/MatMul/ReadVariableOp2`
.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp2 
lstm_839/whilelstm_839/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568392
lstm_837_input#
lstm_837_4568365:	?#
lstm_837_4568367:	d?
lstm_837_4568369:	?#
lstm_838_4568372:	d?#
lstm_838_4568374:	2?
lstm_838_4568376:	?"
lstm_839_4568379:2("
lstm_839_4568381:
(
lstm_839_4568383:(#
dense_279_4568386:

dense_279_4568388:
identity??!dense_279/StatefulPartitionedCall? lstm_837/StatefulPartitionedCall? lstm_838/StatefulPartitionedCall? lstm_839/StatefulPartitionedCall?
 lstm_837/StatefulPartitionedCallStatefulPartitionedCalllstm_837_inputlstm_837_4568365lstm_837_4568367lstm_837_4568369*
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4568212?
 lstm_838/StatefulPartitionedCallStatefulPartitionedCall)lstm_837/StatefulPartitionedCall:output:0lstm_838_4568372lstm_838_4568374lstm_838_4568376*
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4568047?
 lstm_839/StatefulPartitionedCallStatefulPartitionedCall)lstm_838/StatefulPartitionedCall:output:0lstm_839_4568379lstm_839_4568381lstm_839_4568383*
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567882?
!dense_279/StatefulPartitionedCallStatefulPartitionedCall)lstm_839/StatefulPartitionedCall:output:0dense_279_4568386dense_279_4568388*
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
F__inference_dense_279_layer_call_and_return_conditional_losses_4567684y
IdentityIdentity*dense_279/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_279/StatefulPartitionedCall!^lstm_837/StatefulPartitionedCall!^lstm_838/StatefulPartitionedCall!^lstm_839/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_279/StatefulPartitionedCall!dense_279/StatefulPartitionedCall2D
 lstm_837/StatefulPartitionedCall lstm_837/StatefulPartitionedCall2D
 lstm_838/StatefulPartitionedCall lstm_838/StatefulPartitionedCall2D
 lstm_839/StatefulPartitionedCall lstm_839/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_837_input
?8
?
while_body_4567963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4568127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4568127___redundant_placeholder05
1while_while_cond_4568127___redundant_placeholder15
1while_while_cond_4568127___redundant_placeholder25
1while_while_cond_4568127___redundant_placeholder3
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
?J
?
E__inference_lstm_839_layer_call_and_return_conditional_losses_4571183

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4571099*
condR
while_cond_4571098*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4571300

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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569951

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4569867*
condR
while_cond_4569866*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4570669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570669___redundant_placeholder05
1while_while_cond_4570669___redundant_placeholder15
1while_while_cond_4570669___redundant_placeholder25
1while_while_cond_4570669___redundant_placeholder3
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
while_body_4570956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4571366

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
?
*sequential_279_lstm_837_while_cond_4565798L
Hsequential_279_lstm_837_while_sequential_279_lstm_837_while_loop_counterR
Nsequential_279_lstm_837_while_sequential_279_lstm_837_while_maximum_iterations-
)sequential_279_lstm_837_while_placeholder/
+sequential_279_lstm_837_while_placeholder_1/
+sequential_279_lstm_837_while_placeholder_2/
+sequential_279_lstm_837_while_placeholder_3N
Jsequential_279_lstm_837_while_less_sequential_279_lstm_837_strided_slice_1e
asequential_279_lstm_837_while_sequential_279_lstm_837_while_cond_4565798___redundant_placeholder0e
asequential_279_lstm_837_while_sequential_279_lstm_837_while_cond_4565798___redundant_placeholder1e
asequential_279_lstm_837_while_sequential_279_lstm_837_while_cond_4565798___redundant_placeholder2e
asequential_279_lstm_837_while_sequential_279_lstm_837_while_cond_4565798___redundant_placeholder3*
&sequential_279_lstm_837_while_identity
?
"sequential_279/lstm_837/while/LessLess)sequential_279_lstm_837_while_placeholderJsequential_279_lstm_837_while_less_sequential_279_lstm_837_strided_slice_1*
T0*
_output_shapes
: {
&sequential_279/lstm_837/while/IdentityIdentity&sequential_279/lstm_837/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_279_lstm_837_while_identity/sequential_279/lstm_837/while/Identity:output:0*(
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
*__inference_lstm_839_layer_call_fn_4570600

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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567666o
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
?J
?
E__inference_lstm_839_layer_call_and_return_conditional_losses_4571040

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4570956*
condR
while_cond_4570955*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4567798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4567432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_837_while_body_4568540.
*lstm_837_while_lstm_837_while_loop_counter4
0lstm_837_while_lstm_837_while_maximum_iterations
lstm_837_while_placeholder 
lstm_837_while_placeholder_1 
lstm_837_while_placeholder_2 
lstm_837_while_placeholder_3-
)lstm_837_while_lstm_837_strided_slice_1_0i
elstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0:	?R
?lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?M
>lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
lstm_837_while_identity
lstm_837_while_identity_1
lstm_837_while_identity_2
lstm_837_while_identity_3
lstm_837_while_identity_4
lstm_837_while_identity_5+
'lstm_837_while_lstm_837_strided_slice_1g
clstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensorN
;lstm_837_while_lstm_cell_753_matmul_readvariableop_resource:	?P
=lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource:	d?K
<lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource:	???3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp?2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp?4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp?
@lstm_837/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_837/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensor_0lstm_837_while_placeholderIlstm_837/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp=lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_837/while/lstm_cell_753/MatMulMatMul9lstm_837/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp?lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_837/while/lstm_cell_753/MatMul_1MatMullstm_837_while_placeholder_2<lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_837/while/lstm_cell_753/addAddV2-lstm_837/while/lstm_cell_753/MatMul:product:0/lstm_837/while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp>lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_837/while/lstm_cell_753/BiasAddBiasAdd$lstm_837/while/lstm_cell_753/add:z:0;lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_837/while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_837/while/lstm_cell_753/splitSplit5lstm_837/while/lstm_cell_753/split/split_dim:output:0-lstm_837/while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_837/while/lstm_cell_753/SigmoidSigmoid+lstm_837/while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_837/while/lstm_cell_753/Sigmoid_1Sigmoid+lstm_837/while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_837/while/lstm_cell_753/mulMul*lstm_837/while/lstm_cell_753/Sigmoid_1:y:0lstm_837_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_837/while/lstm_cell_753/ReluRelu+lstm_837/while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_837/while/lstm_cell_753/mul_1Mul(lstm_837/while/lstm_cell_753/Sigmoid:y:0/lstm_837/while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_837/while/lstm_cell_753/add_1AddV2$lstm_837/while/lstm_cell_753/mul:z:0&lstm_837/while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_837/while/lstm_cell_753/Sigmoid_2Sigmoid+lstm_837/while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_837/while/lstm_cell_753/Relu_1Relu&lstm_837/while/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_837/while/lstm_cell_753/mul_2Mul*lstm_837/while/lstm_cell_753/Sigmoid_2:y:01lstm_837/while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_837/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_837_while_placeholder_1lstm_837_while_placeholder&lstm_837/while/lstm_cell_753/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_837/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_837/while/addAddV2lstm_837_while_placeholderlstm_837/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_837/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_837/while/add_1AddV2*lstm_837_while_lstm_837_while_loop_counterlstm_837/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_837/while/IdentityIdentitylstm_837/while/add_1:z:0^lstm_837/while/NoOp*
T0*
_output_shapes
: ?
lstm_837/while/Identity_1Identity0lstm_837_while_lstm_837_while_maximum_iterations^lstm_837/while/NoOp*
T0*
_output_shapes
: t
lstm_837/while/Identity_2Identitylstm_837/while/add:z:0^lstm_837/while/NoOp*
T0*
_output_shapes
: ?
lstm_837/while/Identity_3IdentityClstm_837/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_837/while/NoOp*
T0*
_output_shapes
: ?
lstm_837/while/Identity_4Identity&lstm_837/while/lstm_cell_753/mul_2:z:0^lstm_837/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_837/while/Identity_5Identity&lstm_837/while/lstm_cell_753/add_1:z:0^lstm_837/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_837/while/NoOpNoOp4^lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp3^lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp5^lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_837_while_identity lstm_837/while/Identity:output:0"?
lstm_837_while_identity_1"lstm_837/while/Identity_1:output:0"?
lstm_837_while_identity_2"lstm_837/while/Identity_2:output:0"?
lstm_837_while_identity_3"lstm_837/while/Identity_3:output:0"?
lstm_837_while_identity_4"lstm_837/while/Identity_4:output:0"?
lstm_837_while_identity_5"lstm_837/while/Identity_5:output:0"T
'lstm_837_while_lstm_837_strided_slice_1)lstm_837_while_lstm_837_strided_slice_1_0"~
<lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource>lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0"?
=lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource?lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0"|
;lstm_837_while_lstm_cell_753_matmul_readvariableop_resource=lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0"?
clstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensorelstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp2h
2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp2l
4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
lstm_839_while_cond_4569244.
*lstm_839_while_lstm_839_while_loop_counter4
0lstm_839_while_lstm_839_while_maximum_iterations
lstm_839_while_placeholder 
lstm_839_while_placeholder_1 
lstm_839_while_placeholder_2 
lstm_839_while_placeholder_30
,lstm_839_while_less_lstm_839_strided_slice_1G
Clstm_839_while_lstm_839_while_cond_4569244___redundant_placeholder0G
Clstm_839_while_lstm_839_while_cond_4569244___redundant_placeholder1G
Clstm_839_while_lstm_839_while_cond_4569244___redundant_placeholder2G
Clstm_839_while_lstm_839_while_cond_4569244___redundant_placeholder3
lstm_839_while_identity
?
lstm_839/while/LessLesslstm_839_while_placeholder,lstm_839_while_less_lstm_839_strided_slice_1*
T0*
_output_shapes
: ]
lstm_839/while/IdentityIdentitylstm_839/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_839_while_identity lstm_839/while/Identity:output:0*(
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
while_body_4569724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_279_layer_call_fn_4568481

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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568280o
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567666

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4567582*
condR
while_cond_4567581*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568280

inputs#
lstm_837_4568253:	?#
lstm_837_4568255:	d?
lstm_837_4568257:	?#
lstm_838_4568260:	d?#
lstm_838_4568262:	2?
lstm_838_4568264:	?"
lstm_839_4568267:2("
lstm_839_4568269:
(
lstm_839_4568271:(#
dense_279_4568274:

dense_279_4568276:
identity??!dense_279/StatefulPartitionedCall? lstm_837/StatefulPartitionedCall? lstm_838/StatefulPartitionedCall? lstm_839/StatefulPartitionedCall?
 lstm_837/StatefulPartitionedCallStatefulPartitionedCallinputslstm_837_4568253lstm_837_4568255lstm_837_4568257*
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4568212?
 lstm_838/StatefulPartitionedCallStatefulPartitionedCall)lstm_837/StatefulPartitionedCall:output:0lstm_838_4568260lstm_838_4568262lstm_838_4568264*
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4568047?
 lstm_839/StatefulPartitionedCallStatefulPartitionedCall)lstm_838/StatefulPartitionedCall:output:0lstm_839_4568267lstm_839_4568269lstm_839_4568271*
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567882?
!dense_279/StatefulPartitionedCallStatefulPartitionedCall)lstm_839/StatefulPartitionedCall:output:0dense_279_4568274dense_279_4568276*
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
F__inference_dense_279_layer_call_and_return_conditional_losses_4567684y
IdentityIdentity*dense_279/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_279/StatefulPartitionedCall!^lstm_837/StatefulPartitionedCall!^lstm_838/StatefulPartitionedCall!^lstm_839/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_279/StatefulPartitionedCall!dense_279/StatefulPartitionedCall2D
 lstm_837/StatefulPartitionedCall lstm_837/StatefulPartitionedCall2D
 lstm_838/StatefulPartitionedCall lstm_838/StatefulPartitionedCall2D
 lstm_839/StatefulPartitionedCall lstm_839/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4568047

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4567963*
condR
while_cond_4567962*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4566788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4566788___redundant_placeholder05
1while_while_cond_4566788___redundant_placeholder15
1while_while_cond_4566788___redundant_placeholder25
1while_while_cond_4566788___redundant_placeholder3
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
*__inference_lstm_838_layer_call_fn_4569995

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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4568047s
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
while_cond_4567962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4567962___redundant_placeholder05
1while_while_cond_4567962___redundant_placeholder15
1while_while_cond_4567962___redundant_placeholder25
1while_while_cond_4567962___redundant_placeholder3
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
while_cond_4570955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570955___redundant_placeholder05
1while_while_cond_4570955___redundant_placeholder15
1while_while_cond_4570955___redundant_placeholder25
1while_while_cond_4570955___redundant_placeholder3
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
/__inference_lstm_cell_755_layer_call_fn_4571432

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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4567080o
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4566667

inputs(
lstm_cell_754_4566585:	d?(
lstm_cell_754_4566587:	2?$
lstm_cell_754_4566589:	?
identity??%lstm_cell_754/StatefulPartitionedCall?while;
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
%lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_754_4566585lstm_cell_754_4566587lstm_cell_754_4566589*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566584n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_754_4566585lstm_cell_754_4566587lstm_cell_754_4566589*
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
while_body_4566598*
condR
while_cond_4566597*K
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
NoOpNoOp&^lstm_cell_754/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_754/StatefulPartitionedCall%lstm_cell_754/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_837_while_cond_4568539.
*lstm_837_while_lstm_837_while_loop_counter4
0lstm_837_while_lstm_837_while_maximum_iterations
lstm_837_while_placeholder 
lstm_837_while_placeholder_1 
lstm_837_while_placeholder_2 
lstm_837_while_placeholder_30
,lstm_837_while_less_lstm_837_strided_slice_1G
Clstm_837_while_lstm_837_while_cond_4568539___redundant_placeholder0G
Clstm_837_while_lstm_837_while_cond_4568539___redundant_placeholder1G
Clstm_837_while_lstm_837_while_cond_4568539___redundant_placeholder2G
Clstm_837_while_lstm_837_while_cond_4568539___redundant_placeholder3
lstm_837_while_identity
?
lstm_837/while/LessLesslstm_837_while_placeholder,lstm_837_while_less_lstm_837_strided_slice_1*
T0*
_output_shapes
: ]
lstm_837/while/IdentityIdentitylstm_837/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_837_while_identity lstm_837/while/Identity:output:0*(
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
?T
?
*sequential_279_lstm_839_while_body_4566077L
Hsequential_279_lstm_839_while_sequential_279_lstm_839_while_loop_counterR
Nsequential_279_lstm_839_while_sequential_279_lstm_839_while_maximum_iterations-
)sequential_279_lstm_839_while_placeholder/
+sequential_279_lstm_839_while_placeholder_1/
+sequential_279_lstm_839_while_placeholder_2/
+sequential_279_lstm_839_while_placeholder_3K
Gsequential_279_lstm_839_while_sequential_279_lstm_839_strided_slice_1_0?
?sequential_279_lstm_839_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_839_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_279_lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0:2(`
Nsequential_279_lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0:
([
Msequential_279_lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0:(*
&sequential_279_lstm_839_while_identity,
(sequential_279_lstm_839_while_identity_1,
(sequential_279_lstm_839_while_identity_2,
(sequential_279_lstm_839_while_identity_3,
(sequential_279_lstm_839_while_identity_4,
(sequential_279_lstm_839_while_identity_5I
Esequential_279_lstm_839_while_sequential_279_lstm_839_strided_slice_1?
?sequential_279_lstm_839_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_839_tensorarrayunstack_tensorlistfromtensor\
Jsequential_279_lstm_839_while_lstm_cell_755_matmul_readvariableop_resource:2(^
Lsequential_279_lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource:
(Y
Ksequential_279_lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource:(??Bsequential_279/lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp?Asequential_279/lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp?Csequential_279/lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp?
Osequential_279/lstm_839/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_279/lstm_839/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_279_lstm_839_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_839_tensorarrayunstack_tensorlistfromtensor_0)sequential_279_lstm_839_while_placeholderXsequential_279/lstm_839/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_279/lstm_839/while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOpLsequential_279_lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_279/lstm_839/while/lstm_cell_755/MatMulMatMulHsequential_279/lstm_839/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_279/lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_279/lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOpNsequential_279_lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_279/lstm_839/while/lstm_cell_755/MatMul_1MatMul+sequential_279_lstm_839_while_placeholder_2Ksequential_279/lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_279/lstm_839/while/lstm_cell_755/addAddV2<sequential_279/lstm_839/while/lstm_cell_755/MatMul:product:0>sequential_279/lstm_839/while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_279/lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOpMsequential_279_lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_279/lstm_839/while/lstm_cell_755/BiasAddBiasAdd3sequential_279/lstm_839/while/lstm_cell_755/add:z:0Jsequential_279/lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_279/lstm_839/while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_279/lstm_839/while/lstm_cell_755/splitSplitDsequential_279/lstm_839/while/lstm_cell_755/split/split_dim:output:0<sequential_279/lstm_839/while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_279/lstm_839/while/lstm_cell_755/SigmoidSigmoid:sequential_279/lstm_839/while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_279/lstm_839/while/lstm_cell_755/Sigmoid_1Sigmoid:sequential_279/lstm_839/while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_279/lstm_839/while/lstm_cell_755/mulMul9sequential_279/lstm_839/while/lstm_cell_755/Sigmoid_1:y:0+sequential_279_lstm_839_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_279/lstm_839/while/lstm_cell_755/ReluRelu:sequential_279/lstm_839/while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_279/lstm_839/while/lstm_cell_755/mul_1Mul7sequential_279/lstm_839/while/lstm_cell_755/Sigmoid:y:0>sequential_279/lstm_839/while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_279/lstm_839/while/lstm_cell_755/add_1AddV23sequential_279/lstm_839/while/lstm_cell_755/mul:z:05sequential_279/lstm_839/while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_279/lstm_839/while/lstm_cell_755/Sigmoid_2Sigmoid:sequential_279/lstm_839/while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_279/lstm_839/while/lstm_cell_755/Relu_1Relu5sequential_279/lstm_839/while/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_279/lstm_839/while/lstm_cell_755/mul_2Mul9sequential_279/lstm_839/while/lstm_cell_755/Sigmoid_2:y:0@sequential_279/lstm_839/while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_279/lstm_839/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_279_lstm_839_while_placeholder_1)sequential_279_lstm_839_while_placeholder5sequential_279/lstm_839/while/lstm_cell_755/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_279/lstm_839/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_279/lstm_839/while/addAddV2)sequential_279_lstm_839_while_placeholder,sequential_279/lstm_839/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_279/lstm_839/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_279/lstm_839/while/add_1AddV2Hsequential_279_lstm_839_while_sequential_279_lstm_839_while_loop_counter.sequential_279/lstm_839/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_279/lstm_839/while/IdentityIdentity'sequential_279/lstm_839/while/add_1:z:0#^sequential_279/lstm_839/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_839/while/Identity_1IdentityNsequential_279_lstm_839_while_sequential_279_lstm_839_while_maximum_iterations#^sequential_279/lstm_839/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_839/while/Identity_2Identity%sequential_279/lstm_839/while/add:z:0#^sequential_279/lstm_839/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_839/while/Identity_3IdentityRsequential_279/lstm_839/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_279/lstm_839/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_839/while/Identity_4Identity5sequential_279/lstm_839/while/lstm_cell_755/mul_2:z:0#^sequential_279/lstm_839/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_279/lstm_839/while/Identity_5Identity5sequential_279/lstm_839/while/lstm_cell_755/add_1:z:0#^sequential_279/lstm_839/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_279/lstm_839/while/NoOpNoOpC^sequential_279/lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOpB^sequential_279/lstm_839/while/lstm_cell_755/MatMul/ReadVariableOpD^sequential_279/lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_279_lstm_839_while_identity/sequential_279/lstm_839/while/Identity:output:0"]
(sequential_279_lstm_839_while_identity_11sequential_279/lstm_839/while/Identity_1:output:0"]
(sequential_279_lstm_839_while_identity_21sequential_279/lstm_839/while/Identity_2:output:0"]
(sequential_279_lstm_839_while_identity_31sequential_279/lstm_839/while/Identity_3:output:0"]
(sequential_279_lstm_839_while_identity_41sequential_279/lstm_839/while/Identity_4:output:0"]
(sequential_279_lstm_839_while_identity_51sequential_279/lstm_839/while/Identity_5:output:0"?
Ksequential_279_lstm_839_while_lstm_cell_755_biasadd_readvariableop_resourceMsequential_279_lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0"?
Lsequential_279_lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resourceNsequential_279_lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0"?
Jsequential_279_lstm_839_while_lstm_cell_755_matmul_readvariableop_resourceLsequential_279_lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0"?
Esequential_279_lstm_839_while_sequential_279_lstm_839_strided_slice_1Gsequential_279_lstm_839_while_sequential_279_lstm_839_strided_slice_1_0"?
?sequential_279_lstm_839_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_839_tensorarrayunstack_tensorlistfromtensor?sequential_279_lstm_839_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_839_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_279/lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOpBsequential_279/lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp2?
Asequential_279/lstm_839/while/lstm_cell_755/MatMul/ReadVariableOpAsequential_279/lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp2?
Csequential_279/lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOpCsequential_279/lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_838_layer_call_fn_4569973
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4566858|
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
while_body_4569438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4570754
inputs_0>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4570670*
condR
while_cond_4570669*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*sequential_279_lstm_838_while_cond_4565937L
Hsequential_279_lstm_838_while_sequential_279_lstm_838_while_loop_counterR
Nsequential_279_lstm_838_while_sequential_279_lstm_838_while_maximum_iterations-
)sequential_279_lstm_838_while_placeholder/
+sequential_279_lstm_838_while_placeholder_1/
+sequential_279_lstm_838_while_placeholder_2/
+sequential_279_lstm_838_while_placeholder_3N
Jsequential_279_lstm_838_while_less_sequential_279_lstm_838_strided_slice_1e
asequential_279_lstm_838_while_sequential_279_lstm_838_while_cond_4565937___redundant_placeholder0e
asequential_279_lstm_838_while_sequential_279_lstm_838_while_cond_4565937___redundant_placeholder1e
asequential_279_lstm_838_while_sequential_279_lstm_838_while_cond_4565937___redundant_placeholder2e
asequential_279_lstm_838_while_sequential_279_lstm_838_while_cond_4565937___redundant_placeholder3*
&sequential_279_lstm_838_while_identity
?
"sequential_279/lstm_838/while/LessLess)sequential_279_lstm_838_while_placeholderJsequential_279_lstm_838_while_less_sequential_279_lstm_838_strided_slice_1*
T0*
_output_shapes
: {
&sequential_279/lstm_838/while/IdentityIdentity&sequential_279/lstm_838/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_279_lstm_838_while_identity/sequential_279/lstm_838/while/Identity:output:0*(
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
while_body_4570197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4567582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4570670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_4567139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_755_4567163_0:2(/
while_lstm_cell_755_4567165_0:
(+
while_lstm_cell_755_4567167_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_755_4567163:2(-
while_lstm_cell_755_4567165:
()
while_lstm_cell_755_4567167:(??+while/lstm_cell_755/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_755_4567163_0while_lstm_cell_755_4567165_0while_lstm_cell_755_4567167_0*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4567080?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_755/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_755/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_755/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_755_4567163while_lstm_cell_755_4567163_0"<
while_lstm_cell_755_4567165while_lstm_cell_755_4567165_0"<
while_lstm_cell_755_4567167while_lstm_cell_755_4567167_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_755/StatefulPartitionedCall+while/lstm_cell_755/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4566247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4566247___redundant_placeholder05
1while_while_cond_4566247___redundant_placeholder15
1while_while_cond_4566247___redundant_placeholder25
1while_while_cond_4566247___redundant_placeholder3
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
/__inference_lstm_cell_754_layer_call_fn_4571334

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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566730o
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
?#
?
while_body_4566789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_754_4566813_0:	d?0
while_lstm_cell_754_4566815_0:	2?,
while_lstm_cell_754_4566817_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_754_4566813:	d?.
while_lstm_cell_754_4566815:	2?*
while_lstm_cell_754_4566817:	???+while/lstm_cell_754/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_754_4566813_0while_lstm_cell_754_4566815_0while_lstm_cell_754_4566817_0*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566730?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_754/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_754/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_754/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_754/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_754_4566813while_lstm_cell_754_4566813_0"<
while_lstm_cell_754_4566815while_lstm_cell_754_4566815_0"<
while_lstm_cell_754_4566817while_lstm_cell_754_4566817_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_754/StatefulPartitionedCall+while/lstm_cell_754/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?J
?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570424

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4570340*
condR
while_cond_4570339*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4569581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4571464

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
?
*__inference_lstm_837_layer_call_fn_4569368

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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4567366s
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
while_cond_4570053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570053___redundant_placeholder05
1while_while_cond_4570053___redundant_placeholder15
1while_while_cond_4570053___redundant_placeholder25
1while_while_cond_4570053___redundant_placeholder3
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
while_body_4570813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_4571639
file_prefix/
+savev2_dense_279_kernel_read_readvariableop-
)savev2_dense_279_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_837_lstm_cell_837_kernel_read_readvariableopF
Bsavev2_lstm_837_lstm_cell_837_recurrent_kernel_read_readvariableop:
6savev2_lstm_837_lstm_cell_837_bias_read_readvariableop<
8savev2_lstm_838_lstm_cell_838_kernel_read_readvariableopF
Bsavev2_lstm_838_lstm_cell_838_recurrent_kernel_read_readvariableop:
6savev2_lstm_838_lstm_cell_838_bias_read_readvariableop<
8savev2_lstm_839_lstm_cell_839_kernel_read_readvariableopF
Bsavev2_lstm_839_lstm_cell_839_recurrent_kernel_read_readvariableop:
6savev2_lstm_839_lstm_cell_839_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_279_kernel_m_read_readvariableop4
0savev2_adam_dense_279_bias_m_read_readvariableopC
?savev2_adam_lstm_837_lstm_cell_837_kernel_m_read_readvariableopM
Isavev2_adam_lstm_837_lstm_cell_837_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_837_lstm_cell_837_bias_m_read_readvariableopC
?savev2_adam_lstm_838_lstm_cell_838_kernel_m_read_readvariableopM
Isavev2_adam_lstm_838_lstm_cell_838_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_838_lstm_cell_838_bias_m_read_readvariableopC
?savev2_adam_lstm_839_lstm_cell_839_kernel_m_read_readvariableopM
Isavev2_adam_lstm_839_lstm_cell_839_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_839_lstm_cell_839_bias_m_read_readvariableop6
2savev2_adam_dense_279_kernel_v_read_readvariableop4
0savev2_adam_dense_279_bias_v_read_readvariableopC
?savev2_adam_lstm_837_lstm_cell_837_kernel_v_read_readvariableopM
Isavev2_adam_lstm_837_lstm_cell_837_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_837_lstm_cell_837_bias_v_read_readvariableopC
?savev2_adam_lstm_838_lstm_cell_838_kernel_v_read_readvariableopM
Isavev2_adam_lstm_838_lstm_cell_838_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_838_lstm_cell_838_bias_v_read_readvariableopC
?savev2_adam_lstm_839_lstm_cell_839_kernel_v_read_readvariableopM
Isavev2_adam_lstm_839_lstm_cell_839_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_839_lstm_cell_839_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_279_kernel_read_readvariableop)savev2_dense_279_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_837_lstm_cell_837_kernel_read_readvariableopBsavev2_lstm_837_lstm_cell_837_recurrent_kernel_read_readvariableop6savev2_lstm_837_lstm_cell_837_bias_read_readvariableop8savev2_lstm_838_lstm_cell_838_kernel_read_readvariableopBsavev2_lstm_838_lstm_cell_838_recurrent_kernel_read_readvariableop6savev2_lstm_838_lstm_cell_838_bias_read_readvariableop8savev2_lstm_839_lstm_cell_839_kernel_read_readvariableopBsavev2_lstm_839_lstm_cell_839_recurrent_kernel_read_readvariableop6savev2_lstm_839_lstm_cell_839_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_279_kernel_m_read_readvariableop0savev2_adam_dense_279_bias_m_read_readvariableop?savev2_adam_lstm_837_lstm_cell_837_kernel_m_read_readvariableopIsavev2_adam_lstm_837_lstm_cell_837_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_837_lstm_cell_837_bias_m_read_readvariableop?savev2_adam_lstm_838_lstm_cell_838_kernel_m_read_readvariableopIsavev2_adam_lstm_838_lstm_cell_838_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_838_lstm_cell_838_bias_m_read_readvariableop?savev2_adam_lstm_839_lstm_cell_839_kernel_m_read_readvariableopIsavev2_adam_lstm_839_lstm_cell_839_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_839_lstm_cell_839_bias_m_read_readvariableop2savev2_adam_dense_279_kernel_v_read_readvariableop0savev2_adam_dense_279_bias_v_read_readvariableop?savev2_adam_lstm_837_lstm_cell_837_kernel_v_read_readvariableopIsavev2_adam_lstm_837_lstm_cell_837_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_837_lstm_cell_837_bias_v_read_readvariableop?savev2_adam_lstm_838_lstm_cell_838_kernel_v_read_readvariableopIsavev2_adam_lstm_838_lstm_cell_838_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_838_lstm_cell_838_bias_v_read_readvariableop?savev2_adam_lstm_839_lstm_cell_839_kernel_v_read_readvariableopIsavev2_adam_lstm_839_lstm_cell_839_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_839_lstm_cell_839_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?T
?
*sequential_279_lstm_837_while_body_4565799L
Hsequential_279_lstm_837_while_sequential_279_lstm_837_while_loop_counterR
Nsequential_279_lstm_837_while_sequential_279_lstm_837_while_maximum_iterations-
)sequential_279_lstm_837_while_placeholder/
+sequential_279_lstm_837_while_placeholder_1/
+sequential_279_lstm_837_while_placeholder_2/
+sequential_279_lstm_837_while_placeholder_3K
Gsequential_279_lstm_837_while_sequential_279_lstm_837_strided_slice_1_0?
?sequential_279_lstm_837_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_837_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_279_lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0:	?a
Nsequential_279_lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?\
Msequential_279_lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0:	?*
&sequential_279_lstm_837_while_identity,
(sequential_279_lstm_837_while_identity_1,
(sequential_279_lstm_837_while_identity_2,
(sequential_279_lstm_837_while_identity_3,
(sequential_279_lstm_837_while_identity_4,
(sequential_279_lstm_837_while_identity_5I
Esequential_279_lstm_837_while_sequential_279_lstm_837_strided_slice_1?
?sequential_279_lstm_837_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_837_tensorarrayunstack_tensorlistfromtensor]
Jsequential_279_lstm_837_while_lstm_cell_753_matmul_readvariableop_resource:	?_
Lsequential_279_lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource:	d?Z
Ksequential_279_lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource:	???Bsequential_279/lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp?Asequential_279/lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp?Csequential_279/lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp?
Osequential_279/lstm_837/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_279/lstm_837/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_279_lstm_837_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_837_tensorarrayunstack_tensorlistfromtensor_0)sequential_279_lstm_837_while_placeholderXsequential_279/lstm_837/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_279/lstm_837/while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOpLsequential_279_lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_279/lstm_837/while/lstm_cell_753/MatMulMatMulHsequential_279/lstm_837/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_279/lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_279/lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOpNsequential_279_lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_279/lstm_837/while/lstm_cell_753/MatMul_1MatMul+sequential_279_lstm_837_while_placeholder_2Ksequential_279/lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_279/lstm_837/while/lstm_cell_753/addAddV2<sequential_279/lstm_837/while/lstm_cell_753/MatMul:product:0>sequential_279/lstm_837/while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_279/lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOpMsequential_279_lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_279/lstm_837/while/lstm_cell_753/BiasAddBiasAdd3sequential_279/lstm_837/while/lstm_cell_753/add:z:0Jsequential_279/lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_279/lstm_837/while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_279/lstm_837/while/lstm_cell_753/splitSplitDsequential_279/lstm_837/while/lstm_cell_753/split/split_dim:output:0<sequential_279/lstm_837/while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_279/lstm_837/while/lstm_cell_753/SigmoidSigmoid:sequential_279/lstm_837/while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_279/lstm_837/while/lstm_cell_753/Sigmoid_1Sigmoid:sequential_279/lstm_837/while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_279/lstm_837/while/lstm_cell_753/mulMul9sequential_279/lstm_837/while/lstm_cell_753/Sigmoid_1:y:0+sequential_279_lstm_837_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_279/lstm_837/while/lstm_cell_753/ReluRelu:sequential_279/lstm_837/while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_279/lstm_837/while/lstm_cell_753/mul_1Mul7sequential_279/lstm_837/while/lstm_cell_753/Sigmoid:y:0>sequential_279/lstm_837/while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_279/lstm_837/while/lstm_cell_753/add_1AddV23sequential_279/lstm_837/while/lstm_cell_753/mul:z:05sequential_279/lstm_837/while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_279/lstm_837/while/lstm_cell_753/Sigmoid_2Sigmoid:sequential_279/lstm_837/while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_279/lstm_837/while/lstm_cell_753/Relu_1Relu5sequential_279/lstm_837/while/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_279/lstm_837/while/lstm_cell_753/mul_2Mul9sequential_279/lstm_837/while/lstm_cell_753/Sigmoid_2:y:0@sequential_279/lstm_837/while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_279/lstm_837/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_279_lstm_837_while_placeholder_1)sequential_279_lstm_837_while_placeholder5sequential_279/lstm_837/while/lstm_cell_753/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_279/lstm_837/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_279/lstm_837/while/addAddV2)sequential_279_lstm_837_while_placeholder,sequential_279/lstm_837/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_279/lstm_837/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_279/lstm_837/while/add_1AddV2Hsequential_279_lstm_837_while_sequential_279_lstm_837_while_loop_counter.sequential_279/lstm_837/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_279/lstm_837/while/IdentityIdentity'sequential_279/lstm_837/while/add_1:z:0#^sequential_279/lstm_837/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_837/while/Identity_1IdentityNsequential_279_lstm_837_while_sequential_279_lstm_837_while_maximum_iterations#^sequential_279/lstm_837/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_837/while/Identity_2Identity%sequential_279/lstm_837/while/add:z:0#^sequential_279/lstm_837/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_837/while/Identity_3IdentityRsequential_279/lstm_837/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_279/lstm_837/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_837/while/Identity_4Identity5sequential_279/lstm_837/while/lstm_cell_753/mul_2:z:0#^sequential_279/lstm_837/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_279/lstm_837/while/Identity_5Identity5sequential_279/lstm_837/while/lstm_cell_753/add_1:z:0#^sequential_279/lstm_837/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_279/lstm_837/while/NoOpNoOpC^sequential_279/lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOpB^sequential_279/lstm_837/while/lstm_cell_753/MatMul/ReadVariableOpD^sequential_279/lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_279_lstm_837_while_identity/sequential_279/lstm_837/while/Identity:output:0"]
(sequential_279_lstm_837_while_identity_11sequential_279/lstm_837/while/Identity_1:output:0"]
(sequential_279_lstm_837_while_identity_21sequential_279/lstm_837/while/Identity_2:output:0"]
(sequential_279_lstm_837_while_identity_31sequential_279/lstm_837/while/Identity_3:output:0"]
(sequential_279_lstm_837_while_identity_41sequential_279/lstm_837/while/Identity_4:output:0"]
(sequential_279_lstm_837_while_identity_51sequential_279/lstm_837/while/Identity_5:output:0"?
Ksequential_279_lstm_837_while_lstm_cell_753_biasadd_readvariableop_resourceMsequential_279_lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0"?
Lsequential_279_lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resourceNsequential_279_lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0"?
Jsequential_279_lstm_837_while_lstm_cell_753_matmul_readvariableop_resourceLsequential_279_lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0"?
Esequential_279_lstm_837_while_sequential_279_lstm_837_strided_slice_1Gsequential_279_lstm_837_while_sequential_279_lstm_837_strided_slice_1_0"?
?sequential_279_lstm_837_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_837_tensorarrayunstack_tensorlistfromtensor?sequential_279_lstm_837_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_837_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_279/lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOpBsequential_279/lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp2?
Asequential_279/lstm_837/while/lstm_cell_753/MatMul/ReadVariableOpAsequential_279/lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp2?
Csequential_279/lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOpCsequential_279/lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4566438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4566438___redundant_placeholder05
1while_while_cond_4566438___redundant_placeholder15
1while_while_cond_4566438___redundant_placeholder25
1while_while_cond_4566438___redundant_placeholder3
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566584

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
?J
?
E__inference_lstm_837_layer_call_and_return_conditional_losses_4568212

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4568128*
condR
while_cond_4568127*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4567281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4567281___redundant_placeholder05
1while_while_cond_4567281___redundant_placeholder15
1while_while_cond_4567281___redundant_placeholder25
1while_while_cond_4567281___redundant_placeholder3
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
while_cond_4567797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4567797___redundant_placeholder05
1while_while_cond_4567797___redundant_placeholder15
1while_while_cond_4567797___redundant_placeholder25
1while_while_cond_4567797___redundant_placeholder3
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
*sequential_279_lstm_838_while_body_4565938L
Hsequential_279_lstm_838_while_sequential_279_lstm_838_while_loop_counterR
Nsequential_279_lstm_838_while_sequential_279_lstm_838_while_maximum_iterations-
)sequential_279_lstm_838_while_placeholder/
+sequential_279_lstm_838_while_placeholder_1/
+sequential_279_lstm_838_while_placeholder_2/
+sequential_279_lstm_838_while_placeholder_3K
Gsequential_279_lstm_838_while_sequential_279_lstm_838_strided_slice_1_0?
?sequential_279_lstm_838_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_838_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_279_lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0:	d?a
Nsequential_279_lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?\
Msequential_279_lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0:	?*
&sequential_279_lstm_838_while_identity,
(sequential_279_lstm_838_while_identity_1,
(sequential_279_lstm_838_while_identity_2,
(sequential_279_lstm_838_while_identity_3,
(sequential_279_lstm_838_while_identity_4,
(sequential_279_lstm_838_while_identity_5I
Esequential_279_lstm_838_while_sequential_279_lstm_838_strided_slice_1?
?sequential_279_lstm_838_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_838_tensorarrayunstack_tensorlistfromtensor]
Jsequential_279_lstm_838_while_lstm_cell_754_matmul_readvariableop_resource:	d?_
Lsequential_279_lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource:	2?Z
Ksequential_279_lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource:	???Bsequential_279/lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp?Asequential_279/lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp?Csequential_279/lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp?
Osequential_279/lstm_838/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_279/lstm_838/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_279_lstm_838_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_838_tensorarrayunstack_tensorlistfromtensor_0)sequential_279_lstm_838_while_placeholderXsequential_279/lstm_838/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_279/lstm_838/while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOpLsequential_279_lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_279/lstm_838/while/lstm_cell_754/MatMulMatMulHsequential_279/lstm_838/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_279/lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_279/lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOpNsequential_279_lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_279/lstm_838/while/lstm_cell_754/MatMul_1MatMul+sequential_279_lstm_838_while_placeholder_2Ksequential_279/lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_279/lstm_838/while/lstm_cell_754/addAddV2<sequential_279/lstm_838/while/lstm_cell_754/MatMul:product:0>sequential_279/lstm_838/while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_279/lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOpMsequential_279_lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_279/lstm_838/while/lstm_cell_754/BiasAddBiasAdd3sequential_279/lstm_838/while/lstm_cell_754/add:z:0Jsequential_279/lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_279/lstm_838/while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_279/lstm_838/while/lstm_cell_754/splitSplitDsequential_279/lstm_838/while/lstm_cell_754/split/split_dim:output:0<sequential_279/lstm_838/while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_279/lstm_838/while/lstm_cell_754/SigmoidSigmoid:sequential_279/lstm_838/while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_279/lstm_838/while/lstm_cell_754/Sigmoid_1Sigmoid:sequential_279/lstm_838/while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_279/lstm_838/while/lstm_cell_754/mulMul9sequential_279/lstm_838/while/lstm_cell_754/Sigmoid_1:y:0+sequential_279_lstm_838_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_279/lstm_838/while/lstm_cell_754/ReluRelu:sequential_279/lstm_838/while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_279/lstm_838/while/lstm_cell_754/mul_1Mul7sequential_279/lstm_838/while/lstm_cell_754/Sigmoid:y:0>sequential_279/lstm_838/while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_279/lstm_838/while/lstm_cell_754/add_1AddV23sequential_279/lstm_838/while/lstm_cell_754/mul:z:05sequential_279/lstm_838/while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_279/lstm_838/while/lstm_cell_754/Sigmoid_2Sigmoid:sequential_279/lstm_838/while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_279/lstm_838/while/lstm_cell_754/Relu_1Relu5sequential_279/lstm_838/while/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_279/lstm_838/while/lstm_cell_754/mul_2Mul9sequential_279/lstm_838/while/lstm_cell_754/Sigmoid_2:y:0@sequential_279/lstm_838/while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_279/lstm_838/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_279_lstm_838_while_placeholder_1)sequential_279_lstm_838_while_placeholder5sequential_279/lstm_838/while/lstm_cell_754/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_279/lstm_838/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_279/lstm_838/while/addAddV2)sequential_279_lstm_838_while_placeholder,sequential_279/lstm_838/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_279/lstm_838/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_279/lstm_838/while/add_1AddV2Hsequential_279_lstm_838_while_sequential_279_lstm_838_while_loop_counter.sequential_279/lstm_838/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_279/lstm_838/while/IdentityIdentity'sequential_279/lstm_838/while/add_1:z:0#^sequential_279/lstm_838/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_838/while/Identity_1IdentityNsequential_279_lstm_838_while_sequential_279_lstm_838_while_maximum_iterations#^sequential_279/lstm_838/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_838/while/Identity_2Identity%sequential_279/lstm_838/while/add:z:0#^sequential_279/lstm_838/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_838/while/Identity_3IdentityRsequential_279/lstm_838/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_279/lstm_838/while/NoOp*
T0*
_output_shapes
: ?
(sequential_279/lstm_838/while/Identity_4Identity5sequential_279/lstm_838/while/lstm_cell_754/mul_2:z:0#^sequential_279/lstm_838/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_279/lstm_838/while/Identity_5Identity5sequential_279/lstm_838/while/lstm_cell_754/add_1:z:0#^sequential_279/lstm_838/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_279/lstm_838/while/NoOpNoOpC^sequential_279/lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOpB^sequential_279/lstm_838/while/lstm_cell_754/MatMul/ReadVariableOpD^sequential_279/lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_279_lstm_838_while_identity/sequential_279/lstm_838/while/Identity:output:0"]
(sequential_279_lstm_838_while_identity_11sequential_279/lstm_838/while/Identity_1:output:0"]
(sequential_279_lstm_838_while_identity_21sequential_279/lstm_838/while/Identity_2:output:0"]
(sequential_279_lstm_838_while_identity_31sequential_279/lstm_838/while/Identity_3:output:0"]
(sequential_279_lstm_838_while_identity_41sequential_279/lstm_838/while/Identity_4:output:0"]
(sequential_279_lstm_838_while_identity_51sequential_279/lstm_838/while/Identity_5:output:0"?
Ksequential_279_lstm_838_while_lstm_cell_754_biasadd_readvariableop_resourceMsequential_279_lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0"?
Lsequential_279_lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resourceNsequential_279_lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0"?
Jsequential_279_lstm_838_while_lstm_cell_754_matmul_readvariableop_resourceLsequential_279_lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0"?
Esequential_279_lstm_838_while_sequential_279_lstm_838_strided_slice_1Gsequential_279_lstm_838_while_sequential_279_lstm_838_strided_slice_1_0"?
?sequential_279_lstm_838_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_838_tensorarrayunstack_tensorlistfromtensor?sequential_279_lstm_838_while_tensorarrayv2read_tensorlistgetitem_sequential_279_lstm_838_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_279/lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOpBsequential_279/lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp2?
Asequential_279/lstm_838/while/lstm_cell_754/MatMul/ReadVariableOpAsequential_279/lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp2?
Csequential_279/lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOpCsequential_279/lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4570897
inputs_0>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4570813*
condR
while_cond_4570812*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_839_while_body_4569245.
*lstm_839_while_lstm_839_while_loop_counter4
0lstm_839_while_lstm_839_while_maximum_iterations
lstm_839_while_placeholder 
lstm_839_while_placeholder_1 
lstm_839_while_placeholder_2 
lstm_839_while_placeholder_3-
)lstm_839_while_lstm_839_strided_slice_1_0i
elstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0:2(Q
?lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(L
>lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0:(
lstm_839_while_identity
lstm_839_while_identity_1
lstm_839_while_identity_2
lstm_839_while_identity_3
lstm_839_while_identity_4
lstm_839_while_identity_5+
'lstm_839_while_lstm_839_strided_slice_1g
clstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensorM
;lstm_839_while_lstm_cell_755_matmul_readvariableop_resource:2(O
=lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource:
(J
<lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource:(??3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp?2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp?4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp?
@lstm_839/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_839/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensor_0lstm_839_while_placeholderIlstm_839/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp=lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_839/while/lstm_cell_755/MatMulMatMul9lstm_839/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp?lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_839/while/lstm_cell_755/MatMul_1MatMullstm_839_while_placeholder_2<lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_839/while/lstm_cell_755/addAddV2-lstm_839/while/lstm_cell_755/MatMul:product:0/lstm_839/while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp>lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_839/while/lstm_cell_755/BiasAddBiasAdd$lstm_839/while/lstm_cell_755/add:z:0;lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_839/while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_839/while/lstm_cell_755/splitSplit5lstm_839/while/lstm_cell_755/split/split_dim:output:0-lstm_839/while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_839/while/lstm_cell_755/SigmoidSigmoid+lstm_839/while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_839/while/lstm_cell_755/Sigmoid_1Sigmoid+lstm_839/while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_839/while/lstm_cell_755/mulMul*lstm_839/while/lstm_cell_755/Sigmoid_1:y:0lstm_839_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_839/while/lstm_cell_755/ReluRelu+lstm_839/while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_839/while/lstm_cell_755/mul_1Mul(lstm_839/while/lstm_cell_755/Sigmoid:y:0/lstm_839/while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_839/while/lstm_cell_755/add_1AddV2$lstm_839/while/lstm_cell_755/mul:z:0&lstm_839/while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_839/while/lstm_cell_755/Sigmoid_2Sigmoid+lstm_839/while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_839/while/lstm_cell_755/Relu_1Relu&lstm_839/while/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_839/while/lstm_cell_755/mul_2Mul*lstm_839/while/lstm_cell_755/Sigmoid_2:y:01lstm_839/while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_839/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_839_while_placeholder_1lstm_839_while_placeholder&lstm_839/while/lstm_cell_755/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_839/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_839/while/addAddV2lstm_839_while_placeholderlstm_839/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_839/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_839/while/add_1AddV2*lstm_839_while_lstm_839_while_loop_counterlstm_839/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_839/while/IdentityIdentitylstm_839/while/add_1:z:0^lstm_839/while/NoOp*
T0*
_output_shapes
: ?
lstm_839/while/Identity_1Identity0lstm_839_while_lstm_839_while_maximum_iterations^lstm_839/while/NoOp*
T0*
_output_shapes
: t
lstm_839/while/Identity_2Identitylstm_839/while/add:z:0^lstm_839/while/NoOp*
T0*
_output_shapes
: ?
lstm_839/while/Identity_3IdentityClstm_839/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_839/while/NoOp*
T0*
_output_shapes
: ?
lstm_839/while/Identity_4Identity&lstm_839/while/lstm_cell_755/mul_2:z:0^lstm_839/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_839/while/Identity_5Identity&lstm_839/while/lstm_cell_755/add_1:z:0^lstm_839/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_839/while/NoOpNoOp4^lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp3^lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp5^lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_839_while_identity lstm_839/while/Identity:output:0"?
lstm_839_while_identity_1"lstm_839/while/Identity_1:output:0"?
lstm_839_while_identity_2"lstm_839/while/Identity_2:output:0"?
lstm_839_while_identity_3"lstm_839/while/Identity_3:output:0"?
lstm_839_while_identity_4"lstm_839/while/Identity_4:output:0"?
lstm_839_while_identity_5"lstm_839/while/Identity_5:output:0"T
'lstm_839_while_lstm_839_strided_slice_1)lstm_839_while_lstm_839_strided_slice_1_0"~
<lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource>lstm_839_while_lstm_cell_755_biasadd_readvariableop_resource_0"?
=lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource?lstm_839_while_lstm_cell_755_matmul_1_readvariableop_resource_0"|
;lstm_839_while_lstm_cell_755_matmul_readvariableop_resource=lstm_839_while_lstm_cell_755_matmul_readvariableop_resource_0"?
clstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensorelstm_839_while_tensorarrayv2read_tensorlistgetitem_lstm_839_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp3lstm_839/while/lstm_cell_755/BiasAdd/ReadVariableOp2h
2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp2lstm_839/while/lstm_cell_755/MatMul/ReadVariableOp2l
4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp4lstm_839/while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4568128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4566934

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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4567366

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4567282*
condR
while_cond_4567281*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_279_layer_call_fn_4568454

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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4567691o
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
while_body_4570054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568908

inputsH
5lstm_837_lstm_cell_753_matmul_readvariableop_resource:	?J
7lstm_837_lstm_cell_753_matmul_1_readvariableop_resource:	d?E
6lstm_837_lstm_cell_753_biasadd_readvariableop_resource:	?H
5lstm_838_lstm_cell_754_matmul_readvariableop_resource:	d?J
7lstm_838_lstm_cell_754_matmul_1_readvariableop_resource:	2?E
6lstm_838_lstm_cell_754_biasadd_readvariableop_resource:	?G
5lstm_839_lstm_cell_755_matmul_readvariableop_resource:2(I
7lstm_839_lstm_cell_755_matmul_1_readvariableop_resource:
(D
6lstm_839_lstm_cell_755_biasadd_readvariableop_resource:(:
(dense_279_matmul_readvariableop_resource:
7
)dense_279_biasadd_readvariableop_resource:
identity?? dense_279/BiasAdd/ReadVariableOp?dense_279/MatMul/ReadVariableOp?-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp?,lstm_837/lstm_cell_753/MatMul/ReadVariableOp?.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp?lstm_837/while?-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp?,lstm_838/lstm_cell_754/MatMul/ReadVariableOp?.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp?lstm_838/while?-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp?,lstm_839/lstm_cell_755/MatMul/ReadVariableOp?.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp?lstm_839/whileD
lstm_837/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_837/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_837/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_837/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_sliceStridedSlicelstm_837/Shape:output:0%lstm_837/strided_slice/stack:output:0'lstm_837/strided_slice/stack_1:output:0'lstm_837/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_837/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_837/zeros/packedPacklstm_837/strided_slice:output:0 lstm_837/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_837/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_837/zerosFilllstm_837/zeros/packed:output:0lstm_837/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_837/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_837/zeros_1/packedPacklstm_837/strided_slice:output:0"lstm_837/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_837/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_837/zeros_1Fill lstm_837/zeros_1/packed:output:0lstm_837/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_837/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_837/transpose	Transposeinputs lstm_837/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_837/Shape_1Shapelstm_837/transpose:y:0*
T0*
_output_shapes
:h
lstm_837/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_837/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_837/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_slice_1StridedSlicelstm_837/Shape_1:output:0'lstm_837/strided_slice_1/stack:output:0)lstm_837/strided_slice_1/stack_1:output:0)lstm_837/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_837/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_837/TensorArrayV2TensorListReserve-lstm_837/TensorArrayV2/element_shape:output:0!lstm_837/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_837/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_837/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_837/transpose:y:0Glstm_837/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_837/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_837/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_837/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_slice_2StridedSlicelstm_837/transpose:y:0'lstm_837/strided_slice_2/stack:output:0)lstm_837/strided_slice_2/stack_1:output:0)lstm_837/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_837/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp5lstm_837_lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_837/lstm_cell_753/MatMulMatMul!lstm_837/strided_slice_2:output:04lstm_837/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp7lstm_837_lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_837/lstm_cell_753/MatMul_1MatMullstm_837/zeros:output:06lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_837/lstm_cell_753/addAddV2'lstm_837/lstm_cell_753/MatMul:product:0)lstm_837/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp6lstm_837_lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_837/lstm_cell_753/BiasAddBiasAddlstm_837/lstm_cell_753/add:z:05lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_837/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_837/lstm_cell_753/splitSplit/lstm_837/lstm_cell_753/split/split_dim:output:0'lstm_837/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_837/lstm_cell_753/SigmoidSigmoid%lstm_837/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_837/lstm_cell_753/Sigmoid_1Sigmoid%lstm_837/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/mulMul$lstm_837/lstm_cell_753/Sigmoid_1:y:0lstm_837/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_837/lstm_cell_753/ReluRelu%lstm_837/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/mul_1Mul"lstm_837/lstm_cell_753/Sigmoid:y:0)lstm_837/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/add_1AddV2lstm_837/lstm_cell_753/mul:z:0 lstm_837/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_837/lstm_cell_753/Sigmoid_2Sigmoid%lstm_837/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_837/lstm_cell_753/Relu_1Relu lstm_837/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_837/lstm_cell_753/mul_2Mul$lstm_837/lstm_cell_753/Sigmoid_2:y:0+lstm_837/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_837/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_837/TensorArrayV2_1TensorListReserve/lstm_837/TensorArrayV2_1/element_shape:output:0!lstm_837/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_837/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_837/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_837/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_837/whileWhile$lstm_837/while/loop_counter:output:0*lstm_837/while/maximum_iterations:output:0lstm_837/time:output:0!lstm_837/TensorArrayV2_1:handle:0lstm_837/zeros:output:0lstm_837/zeros_1:output:0!lstm_837/strided_slice_1:output:0@lstm_837/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_837_lstm_cell_753_matmul_readvariableop_resource7lstm_837_lstm_cell_753_matmul_1_readvariableop_resource6lstm_837_lstm_cell_753_biasadd_readvariableop_resource*
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
lstm_837_while_body_4568540*'
condR
lstm_837_while_cond_4568539*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_837/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_837/TensorArrayV2Stack/TensorListStackTensorListStacklstm_837/while:output:3Blstm_837/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_837/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_837/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_837/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_837/strided_slice_3StridedSlice4lstm_837/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_837/strided_slice_3/stack:output:0)lstm_837/strided_slice_3/stack_1:output:0)lstm_837/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_837/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_837/transpose_1	Transpose4lstm_837/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_837/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_837/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_838/ShapeShapelstm_837/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_838/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_838/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_838/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_sliceStridedSlicelstm_838/Shape:output:0%lstm_838/strided_slice/stack:output:0'lstm_838/strided_slice/stack_1:output:0'lstm_838/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_838/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_838/zeros/packedPacklstm_838/strided_slice:output:0 lstm_838/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_838/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_838/zerosFilllstm_838/zeros/packed:output:0lstm_838/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_838/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_838/zeros_1/packedPacklstm_838/strided_slice:output:0"lstm_838/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_838/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_838/zeros_1Fill lstm_838/zeros_1/packed:output:0lstm_838/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_838/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_838/transpose	Transposelstm_837/transpose_1:y:0 lstm_838/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_838/Shape_1Shapelstm_838/transpose:y:0*
T0*
_output_shapes
:h
lstm_838/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_838/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_838/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_slice_1StridedSlicelstm_838/Shape_1:output:0'lstm_838/strided_slice_1/stack:output:0)lstm_838/strided_slice_1/stack_1:output:0)lstm_838/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_838/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_838/TensorArrayV2TensorListReserve-lstm_838/TensorArrayV2/element_shape:output:0!lstm_838/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_838/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_838/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_838/transpose:y:0Glstm_838/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_838/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_838/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_838/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_slice_2StridedSlicelstm_838/transpose:y:0'lstm_838/strided_slice_2/stack:output:0)lstm_838/strided_slice_2/stack_1:output:0)lstm_838/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_838/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp5lstm_838_lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_838/lstm_cell_754/MatMulMatMul!lstm_838/strided_slice_2:output:04lstm_838/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp7lstm_838_lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_838/lstm_cell_754/MatMul_1MatMullstm_838/zeros:output:06lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_838/lstm_cell_754/addAddV2'lstm_838/lstm_cell_754/MatMul:product:0)lstm_838/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp6lstm_838_lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_838/lstm_cell_754/BiasAddBiasAddlstm_838/lstm_cell_754/add:z:05lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_838/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_838/lstm_cell_754/splitSplit/lstm_838/lstm_cell_754/split/split_dim:output:0'lstm_838/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_838/lstm_cell_754/SigmoidSigmoid%lstm_838/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_838/lstm_cell_754/Sigmoid_1Sigmoid%lstm_838/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/mulMul$lstm_838/lstm_cell_754/Sigmoid_1:y:0lstm_838/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_838/lstm_cell_754/ReluRelu%lstm_838/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/mul_1Mul"lstm_838/lstm_cell_754/Sigmoid:y:0)lstm_838/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/add_1AddV2lstm_838/lstm_cell_754/mul:z:0 lstm_838/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_838/lstm_cell_754/Sigmoid_2Sigmoid%lstm_838/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_838/lstm_cell_754/Relu_1Relu lstm_838/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_838/lstm_cell_754/mul_2Mul$lstm_838/lstm_cell_754/Sigmoid_2:y:0+lstm_838/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_838/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_838/TensorArrayV2_1TensorListReserve/lstm_838/TensorArrayV2_1/element_shape:output:0!lstm_838/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_838/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_838/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_838/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_838/whileWhile$lstm_838/while/loop_counter:output:0*lstm_838/while/maximum_iterations:output:0lstm_838/time:output:0!lstm_838/TensorArrayV2_1:handle:0lstm_838/zeros:output:0lstm_838/zeros_1:output:0!lstm_838/strided_slice_1:output:0@lstm_838/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_838_lstm_cell_754_matmul_readvariableop_resource7lstm_838_lstm_cell_754_matmul_1_readvariableop_resource6lstm_838_lstm_cell_754_biasadd_readvariableop_resource*
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
lstm_838_while_body_4568679*'
condR
lstm_838_while_cond_4568678*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_838/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_838/TensorArrayV2Stack/TensorListStackTensorListStacklstm_838/while:output:3Blstm_838/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_838/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_838/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_838/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_838/strided_slice_3StridedSlice4lstm_838/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_838/strided_slice_3/stack:output:0)lstm_838/strided_slice_3/stack_1:output:0)lstm_838/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_838/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_838/transpose_1	Transpose4lstm_838/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_838/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_838/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_839/ShapeShapelstm_838/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_839/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_839/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_839/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_sliceStridedSlicelstm_839/Shape:output:0%lstm_839/strided_slice/stack:output:0'lstm_839/strided_slice/stack_1:output:0'lstm_839/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_839/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_839/zeros/packedPacklstm_839/strided_slice:output:0 lstm_839/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_839/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_839/zerosFilllstm_839/zeros/packed:output:0lstm_839/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_839/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_839/zeros_1/packedPacklstm_839/strided_slice:output:0"lstm_839/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_839/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_839/zeros_1Fill lstm_839/zeros_1/packed:output:0lstm_839/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_839/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_839/transpose	Transposelstm_838/transpose_1:y:0 lstm_839/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_839/Shape_1Shapelstm_839/transpose:y:0*
T0*
_output_shapes
:h
lstm_839/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_839/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_839/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_slice_1StridedSlicelstm_839/Shape_1:output:0'lstm_839/strided_slice_1/stack:output:0)lstm_839/strided_slice_1/stack_1:output:0)lstm_839/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_839/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_839/TensorArrayV2TensorListReserve-lstm_839/TensorArrayV2/element_shape:output:0!lstm_839/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_839/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_839/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_839/transpose:y:0Glstm_839/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_839/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_839/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_839/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_slice_2StridedSlicelstm_839/transpose:y:0'lstm_839/strided_slice_2/stack:output:0)lstm_839/strided_slice_2/stack_1:output:0)lstm_839/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_839/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp5lstm_839_lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_839/lstm_cell_755/MatMulMatMul!lstm_839/strided_slice_2:output:04lstm_839/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp7lstm_839_lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_839/lstm_cell_755/MatMul_1MatMullstm_839/zeros:output:06lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_839/lstm_cell_755/addAddV2'lstm_839/lstm_cell_755/MatMul:product:0)lstm_839/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp6lstm_839_lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_839/lstm_cell_755/BiasAddBiasAddlstm_839/lstm_cell_755/add:z:05lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_839/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_839/lstm_cell_755/splitSplit/lstm_839/lstm_cell_755/split/split_dim:output:0'lstm_839/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_839/lstm_cell_755/SigmoidSigmoid%lstm_839/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_839/lstm_cell_755/Sigmoid_1Sigmoid%lstm_839/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/mulMul$lstm_839/lstm_cell_755/Sigmoid_1:y:0lstm_839/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_839/lstm_cell_755/ReluRelu%lstm_839/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/mul_1Mul"lstm_839/lstm_cell_755/Sigmoid:y:0)lstm_839/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/add_1AddV2lstm_839/lstm_cell_755/mul:z:0 lstm_839/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_839/lstm_cell_755/Sigmoid_2Sigmoid%lstm_839/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_839/lstm_cell_755/Relu_1Relu lstm_839/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_839/lstm_cell_755/mul_2Mul$lstm_839/lstm_cell_755/Sigmoid_2:y:0+lstm_839/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_839/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_839/TensorArrayV2_1TensorListReserve/lstm_839/TensorArrayV2_1/element_shape:output:0!lstm_839/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_839/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_839/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_839/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_839/whileWhile$lstm_839/while/loop_counter:output:0*lstm_839/while/maximum_iterations:output:0lstm_839/time:output:0!lstm_839/TensorArrayV2_1:handle:0lstm_839/zeros:output:0lstm_839/zeros_1:output:0!lstm_839/strided_slice_1:output:0@lstm_839/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_839_lstm_cell_755_matmul_readvariableop_resource7lstm_839_lstm_cell_755_matmul_1_readvariableop_resource6lstm_839_lstm_cell_755_biasadd_readvariableop_resource*
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
lstm_839_while_body_4568818*'
condR
lstm_839_while_cond_4568817*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_839/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_839/TensorArrayV2Stack/TensorListStackTensorListStacklstm_839/while:output:3Blstm_839/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_839/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_839/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_839/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_839/strided_slice_3StridedSlice4lstm_839/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_839/strided_slice_3/stack:output:0)lstm_839/strided_slice_3/stack_1:output:0)lstm_839/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_839/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_839/transpose_1	Transpose4lstm_839/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_839/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_839/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_279/MatMul/ReadVariableOpReadVariableOp(dense_279_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_279/MatMulMatMul!lstm_839/strided_slice_3:output:0'dense_279/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_279/BiasAdd/ReadVariableOpReadVariableOp)dense_279_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_279/BiasAddBiasAdddense_279/MatMul:product:0(dense_279/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_279/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_279/BiasAdd/ReadVariableOp ^dense_279/MatMul/ReadVariableOp.^lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp-^lstm_837/lstm_cell_753/MatMul/ReadVariableOp/^lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp^lstm_837/while.^lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp-^lstm_838/lstm_cell_754/MatMul/ReadVariableOp/^lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp^lstm_838/while.^lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp-^lstm_839/lstm_cell_755/MatMul/ReadVariableOp/^lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp^lstm_839/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_279/BiasAdd/ReadVariableOp dense_279/BiasAdd/ReadVariableOp2B
dense_279/MatMul/ReadVariableOpdense_279/MatMul/ReadVariableOp2^
-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp-lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp2\
,lstm_837/lstm_cell_753/MatMul/ReadVariableOp,lstm_837/lstm_cell_753/MatMul/ReadVariableOp2`
.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp.lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp2 
lstm_837/whilelstm_837/while2^
-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp-lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp2\
,lstm_838/lstm_cell_754/MatMul/ReadVariableOp,lstm_838/lstm_cell_754/MatMul/ReadVariableOp2`
.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp.lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp2 
lstm_838/whilelstm_838/while2^
-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp-lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp2\
,lstm_839/lstm_cell_755/MatMul/ReadVariableOp,lstm_839/lstm_cell_755/MatMul/ReadVariableOp2`
.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp.lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp2 
lstm_839/whilelstm_839/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_838_while_cond_4568678.
*lstm_838_while_lstm_838_while_loop_counter4
0lstm_838_while_lstm_838_while_maximum_iterations
lstm_838_while_placeholder 
lstm_838_while_placeholder_1 
lstm_838_while_placeholder_2 
lstm_838_while_placeholder_30
,lstm_838_while_less_lstm_838_strided_slice_1G
Clstm_838_while_lstm_838_while_cond_4568678___redundant_placeholder0G
Clstm_838_while_lstm_838_while_cond_4568678___redundant_placeholder1G
Clstm_838_while_lstm_838_while_cond_4568678___redundant_placeholder2G
Clstm_838_while_lstm_838_while_cond_4568678___redundant_placeholder3
lstm_838_while_identity
?
lstm_838/while/LessLesslstm_838_while_placeholder,lstm_838_while_less_lstm_838_strided_slice_1*
T0*
_output_shapes
: ]
lstm_838/while/IdentityIdentitylstm_838/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_838_while_identity lstm_838/while/Identity:output:0*(
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
while_cond_4570482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570482___redundant_placeholder05
1while_while_cond_4570482___redundant_placeholder15
1while_while_cond_4570482___redundant_placeholder25
1while_while_cond_4570482___redundant_placeholder3
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
?
?
*__inference_lstm_839_layer_call_fn_4570611

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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567882o
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
?
while_body_4567282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_753_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_753_matmul_readvariableop_resource:	?G
4while_lstm_cell_753_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_753_biasadd_readvariableop_resource:	???*while/lstm_cell_753/BiasAdd/ReadVariableOp?)while/lstm_cell_753/MatMul/ReadVariableOp?+while/lstm_cell_753/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_753/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_753/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_753/addAddV2$while/lstm_cell_753/MatMul:product:0&while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_753/BiasAddBiasAddwhile/lstm_cell_753/add:z:02while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_753/splitSplit,while/lstm_cell_753/split/split_dim:output:0$while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_753/SigmoidSigmoid"while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_1Sigmoid"while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mulMul!while/lstm_cell_753/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_753/ReluRelu"while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_1Mulwhile/lstm_cell_753/Sigmoid:y:0&while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/add_1AddV2while/lstm_cell_753/mul:z:0while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_753/Sigmoid_2Sigmoid"while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_753/Relu_1Reluwhile/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_753/mul_2Mul!while/lstm_cell_753/Sigmoid_2:y:0(while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_753/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_753/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_753/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_753/BiasAdd/ReadVariableOp*^while/lstm_cell_753/MatMul/ReadVariableOp,^while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_753_biasadd_readvariableop_resource5while_lstm_cell_753_biasadd_readvariableop_resource_0"n
4while_lstm_cell_753_matmul_1_readvariableop_resource6while_lstm_cell_753_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_753_matmul_readvariableop_resource4while_lstm_cell_753_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_753/BiasAdd/ReadVariableOp*while/lstm_cell_753/BiasAdd/ReadVariableOp2V
)while/lstm_cell_753/MatMul/ReadVariableOp)while/lstm_cell_753/MatMul/ReadVariableOp2Z
+while/lstm_cell_753/MatMul_1/ReadVariableOp+while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4571496

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
?
?
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566730

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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4571268

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
?
?
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4571398

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

?
lstm_839_while_cond_4568817.
*lstm_839_while_lstm_839_while_loop_counter4
0lstm_839_while_lstm_839_while_maximum_iterations
lstm_839_while_placeholder 
lstm_839_while_placeholder_1 
lstm_839_while_placeholder_2 
lstm_839_while_placeholder_30
,lstm_839_while_less_lstm_839_strided_slice_1G
Clstm_839_while_lstm_839_while_cond_4568817___redundant_placeholder0G
Clstm_839_while_lstm_839_while_cond_4568817___redundant_placeholder1G
Clstm_839_while_lstm_839_while_cond_4568817___redundant_placeholder2G
Clstm_839_while_lstm_839_while_cond_4568817___redundant_placeholder3
lstm_839_while_identity
?
lstm_839/while/LessLesslstm_839_while_placeholder,lstm_839_while_less_lstm_839_strided_slice_1*
T0*
_output_shapes
: ]
lstm_839/while/IdentityIdentitylstm_839/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_839_while_identity lstm_839/while/Identity:output:0*(
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
"__inference__wrapped_model_4566167
lstm_837_inputW
Dsequential_279_lstm_837_lstm_cell_753_matmul_readvariableop_resource:	?Y
Fsequential_279_lstm_837_lstm_cell_753_matmul_1_readvariableop_resource:	d?T
Esequential_279_lstm_837_lstm_cell_753_biasadd_readvariableop_resource:	?W
Dsequential_279_lstm_838_lstm_cell_754_matmul_readvariableop_resource:	d?Y
Fsequential_279_lstm_838_lstm_cell_754_matmul_1_readvariableop_resource:	2?T
Esequential_279_lstm_838_lstm_cell_754_biasadd_readvariableop_resource:	?V
Dsequential_279_lstm_839_lstm_cell_755_matmul_readvariableop_resource:2(X
Fsequential_279_lstm_839_lstm_cell_755_matmul_1_readvariableop_resource:
(S
Esequential_279_lstm_839_lstm_cell_755_biasadd_readvariableop_resource:(I
7sequential_279_dense_279_matmul_readvariableop_resource:
F
8sequential_279_dense_279_biasadd_readvariableop_resource:
identity??/sequential_279/dense_279/BiasAdd/ReadVariableOp?.sequential_279/dense_279/MatMul/ReadVariableOp?<sequential_279/lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp?;sequential_279/lstm_837/lstm_cell_753/MatMul/ReadVariableOp?=sequential_279/lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp?sequential_279/lstm_837/while?<sequential_279/lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp?;sequential_279/lstm_838/lstm_cell_754/MatMul/ReadVariableOp?=sequential_279/lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp?sequential_279/lstm_838/while?<sequential_279/lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp?;sequential_279/lstm_839/lstm_cell_755/MatMul/ReadVariableOp?=sequential_279/lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp?sequential_279/lstm_839/while[
sequential_279/lstm_837/ShapeShapelstm_837_input*
T0*
_output_shapes
:u
+sequential_279/lstm_837/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_279/lstm_837/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_279/lstm_837/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_279/lstm_837/strided_sliceStridedSlice&sequential_279/lstm_837/Shape:output:04sequential_279/lstm_837/strided_slice/stack:output:06sequential_279/lstm_837/strided_slice/stack_1:output:06sequential_279/lstm_837/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_279/lstm_837/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_279/lstm_837/zeros/packedPack.sequential_279/lstm_837/strided_slice:output:0/sequential_279/lstm_837/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_279/lstm_837/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_279/lstm_837/zerosFill-sequential_279/lstm_837/zeros/packed:output:0,sequential_279/lstm_837/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_279/lstm_837/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_279/lstm_837/zeros_1/packedPack.sequential_279/lstm_837/strided_slice:output:01sequential_279/lstm_837/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_279/lstm_837/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_279/lstm_837/zeros_1Fill/sequential_279/lstm_837/zeros_1/packed:output:0.sequential_279/lstm_837/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_279/lstm_837/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_279/lstm_837/transpose	Transposelstm_837_input/sequential_279/lstm_837/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_279/lstm_837/Shape_1Shape%sequential_279/lstm_837/transpose:y:0*
T0*
_output_shapes
:w
-sequential_279/lstm_837/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_837/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_279/lstm_837/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_837/strided_slice_1StridedSlice(sequential_279/lstm_837/Shape_1:output:06sequential_279/lstm_837/strided_slice_1/stack:output:08sequential_279/lstm_837/strided_slice_1/stack_1:output:08sequential_279/lstm_837/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_279/lstm_837/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_279/lstm_837/TensorArrayV2TensorListReserve<sequential_279/lstm_837/TensorArrayV2/element_shape:output:00sequential_279/lstm_837/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_279/lstm_837/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_279/lstm_837/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_279/lstm_837/transpose:y:0Vsequential_279/lstm_837/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_279/lstm_837/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_837/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_279/lstm_837/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_837/strided_slice_2StridedSlice%sequential_279/lstm_837/transpose:y:06sequential_279/lstm_837/strided_slice_2/stack:output:08sequential_279/lstm_837/strided_slice_2/stack_1:output:08sequential_279/lstm_837/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_279/lstm_837/lstm_cell_753/MatMul/ReadVariableOpReadVariableOpDsequential_279_lstm_837_lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_279/lstm_837/lstm_cell_753/MatMulMatMul0sequential_279/lstm_837/strided_slice_2:output:0Csequential_279/lstm_837/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_279/lstm_837/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOpFsequential_279_lstm_837_lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_279/lstm_837/lstm_cell_753/MatMul_1MatMul&sequential_279/lstm_837/zeros:output:0Esequential_279/lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_279/lstm_837/lstm_cell_753/addAddV26sequential_279/lstm_837/lstm_cell_753/MatMul:product:08sequential_279/lstm_837/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_279/lstm_837/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOpEsequential_279_lstm_837_lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_279/lstm_837/lstm_cell_753/BiasAddBiasAdd-sequential_279/lstm_837/lstm_cell_753/add:z:0Dsequential_279/lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_279/lstm_837/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_279/lstm_837/lstm_cell_753/splitSplit>sequential_279/lstm_837/lstm_cell_753/split/split_dim:output:06sequential_279/lstm_837/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_279/lstm_837/lstm_cell_753/SigmoidSigmoid4sequential_279/lstm_837/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_279/lstm_837/lstm_cell_753/Sigmoid_1Sigmoid4sequential_279/lstm_837/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_279/lstm_837/lstm_cell_753/mulMul3sequential_279/lstm_837/lstm_cell_753/Sigmoid_1:y:0(sequential_279/lstm_837/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_279/lstm_837/lstm_cell_753/ReluRelu4sequential_279/lstm_837/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_279/lstm_837/lstm_cell_753/mul_1Mul1sequential_279/lstm_837/lstm_cell_753/Sigmoid:y:08sequential_279/lstm_837/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_279/lstm_837/lstm_cell_753/add_1AddV2-sequential_279/lstm_837/lstm_cell_753/mul:z:0/sequential_279/lstm_837/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_279/lstm_837/lstm_cell_753/Sigmoid_2Sigmoid4sequential_279/lstm_837/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_279/lstm_837/lstm_cell_753/Relu_1Relu/sequential_279/lstm_837/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_279/lstm_837/lstm_cell_753/mul_2Mul3sequential_279/lstm_837/lstm_cell_753/Sigmoid_2:y:0:sequential_279/lstm_837/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_279/lstm_837/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_279/lstm_837/TensorArrayV2_1TensorListReserve>sequential_279/lstm_837/TensorArrayV2_1/element_shape:output:00sequential_279/lstm_837/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_279/lstm_837/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_279/lstm_837/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_279/lstm_837/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_279/lstm_837/whileWhile3sequential_279/lstm_837/while/loop_counter:output:09sequential_279/lstm_837/while/maximum_iterations:output:0%sequential_279/lstm_837/time:output:00sequential_279/lstm_837/TensorArrayV2_1:handle:0&sequential_279/lstm_837/zeros:output:0(sequential_279/lstm_837/zeros_1:output:00sequential_279/lstm_837/strided_slice_1:output:0Osequential_279/lstm_837/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_279_lstm_837_lstm_cell_753_matmul_readvariableop_resourceFsequential_279_lstm_837_lstm_cell_753_matmul_1_readvariableop_resourceEsequential_279_lstm_837_lstm_cell_753_biasadd_readvariableop_resource*
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
*sequential_279_lstm_837_while_body_4565799*6
cond.R,
*sequential_279_lstm_837_while_cond_4565798*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_279/lstm_837/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_279/lstm_837/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_279/lstm_837/while:output:3Qsequential_279/lstm_837/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_279/lstm_837/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_279/lstm_837/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_837/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_837/strided_slice_3StridedSliceCsequential_279/lstm_837/TensorArrayV2Stack/TensorListStack:tensor:06sequential_279/lstm_837/strided_slice_3/stack:output:08sequential_279/lstm_837/strided_slice_3/stack_1:output:08sequential_279/lstm_837/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_279/lstm_837/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_279/lstm_837/transpose_1	TransposeCsequential_279/lstm_837/TensorArrayV2Stack/TensorListStack:tensor:01sequential_279/lstm_837/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_279/lstm_837/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_279/lstm_838/ShapeShape'sequential_279/lstm_837/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_279/lstm_838/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_279/lstm_838/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_279/lstm_838/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_279/lstm_838/strided_sliceStridedSlice&sequential_279/lstm_838/Shape:output:04sequential_279/lstm_838/strided_slice/stack:output:06sequential_279/lstm_838/strided_slice/stack_1:output:06sequential_279/lstm_838/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_279/lstm_838/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_279/lstm_838/zeros/packedPack.sequential_279/lstm_838/strided_slice:output:0/sequential_279/lstm_838/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_279/lstm_838/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_279/lstm_838/zerosFill-sequential_279/lstm_838/zeros/packed:output:0,sequential_279/lstm_838/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_279/lstm_838/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_279/lstm_838/zeros_1/packedPack.sequential_279/lstm_838/strided_slice:output:01sequential_279/lstm_838/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_279/lstm_838/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_279/lstm_838/zeros_1Fill/sequential_279/lstm_838/zeros_1/packed:output:0.sequential_279/lstm_838/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_279/lstm_838/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_279/lstm_838/transpose	Transpose'sequential_279/lstm_837/transpose_1:y:0/sequential_279/lstm_838/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_279/lstm_838/Shape_1Shape%sequential_279/lstm_838/transpose:y:0*
T0*
_output_shapes
:w
-sequential_279/lstm_838/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_838/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_279/lstm_838/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_838/strided_slice_1StridedSlice(sequential_279/lstm_838/Shape_1:output:06sequential_279/lstm_838/strided_slice_1/stack:output:08sequential_279/lstm_838/strided_slice_1/stack_1:output:08sequential_279/lstm_838/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_279/lstm_838/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_279/lstm_838/TensorArrayV2TensorListReserve<sequential_279/lstm_838/TensorArrayV2/element_shape:output:00sequential_279/lstm_838/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_279/lstm_838/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_279/lstm_838/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_279/lstm_838/transpose:y:0Vsequential_279/lstm_838/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_279/lstm_838/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_838/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_279/lstm_838/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_838/strided_slice_2StridedSlice%sequential_279/lstm_838/transpose:y:06sequential_279/lstm_838/strided_slice_2/stack:output:08sequential_279/lstm_838/strided_slice_2/stack_1:output:08sequential_279/lstm_838/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_279/lstm_838/lstm_cell_754/MatMul/ReadVariableOpReadVariableOpDsequential_279_lstm_838_lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_279/lstm_838/lstm_cell_754/MatMulMatMul0sequential_279/lstm_838/strided_slice_2:output:0Csequential_279/lstm_838/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_279/lstm_838/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOpFsequential_279_lstm_838_lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_279/lstm_838/lstm_cell_754/MatMul_1MatMul&sequential_279/lstm_838/zeros:output:0Esequential_279/lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_279/lstm_838/lstm_cell_754/addAddV26sequential_279/lstm_838/lstm_cell_754/MatMul:product:08sequential_279/lstm_838/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_279/lstm_838/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOpEsequential_279_lstm_838_lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_279/lstm_838/lstm_cell_754/BiasAddBiasAdd-sequential_279/lstm_838/lstm_cell_754/add:z:0Dsequential_279/lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_279/lstm_838/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_279/lstm_838/lstm_cell_754/splitSplit>sequential_279/lstm_838/lstm_cell_754/split/split_dim:output:06sequential_279/lstm_838/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_279/lstm_838/lstm_cell_754/SigmoidSigmoid4sequential_279/lstm_838/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_279/lstm_838/lstm_cell_754/Sigmoid_1Sigmoid4sequential_279/lstm_838/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_279/lstm_838/lstm_cell_754/mulMul3sequential_279/lstm_838/lstm_cell_754/Sigmoid_1:y:0(sequential_279/lstm_838/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_279/lstm_838/lstm_cell_754/ReluRelu4sequential_279/lstm_838/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_279/lstm_838/lstm_cell_754/mul_1Mul1sequential_279/lstm_838/lstm_cell_754/Sigmoid:y:08sequential_279/lstm_838/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_279/lstm_838/lstm_cell_754/add_1AddV2-sequential_279/lstm_838/lstm_cell_754/mul:z:0/sequential_279/lstm_838/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_279/lstm_838/lstm_cell_754/Sigmoid_2Sigmoid4sequential_279/lstm_838/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_279/lstm_838/lstm_cell_754/Relu_1Relu/sequential_279/lstm_838/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_279/lstm_838/lstm_cell_754/mul_2Mul3sequential_279/lstm_838/lstm_cell_754/Sigmoid_2:y:0:sequential_279/lstm_838/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_279/lstm_838/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_279/lstm_838/TensorArrayV2_1TensorListReserve>sequential_279/lstm_838/TensorArrayV2_1/element_shape:output:00sequential_279/lstm_838/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_279/lstm_838/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_279/lstm_838/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_279/lstm_838/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_279/lstm_838/whileWhile3sequential_279/lstm_838/while/loop_counter:output:09sequential_279/lstm_838/while/maximum_iterations:output:0%sequential_279/lstm_838/time:output:00sequential_279/lstm_838/TensorArrayV2_1:handle:0&sequential_279/lstm_838/zeros:output:0(sequential_279/lstm_838/zeros_1:output:00sequential_279/lstm_838/strided_slice_1:output:0Osequential_279/lstm_838/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_279_lstm_838_lstm_cell_754_matmul_readvariableop_resourceFsequential_279_lstm_838_lstm_cell_754_matmul_1_readvariableop_resourceEsequential_279_lstm_838_lstm_cell_754_biasadd_readvariableop_resource*
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
*sequential_279_lstm_838_while_body_4565938*6
cond.R,
*sequential_279_lstm_838_while_cond_4565937*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_279/lstm_838/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_279/lstm_838/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_279/lstm_838/while:output:3Qsequential_279/lstm_838/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_279/lstm_838/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_279/lstm_838/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_838/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_838/strided_slice_3StridedSliceCsequential_279/lstm_838/TensorArrayV2Stack/TensorListStack:tensor:06sequential_279/lstm_838/strided_slice_3/stack:output:08sequential_279/lstm_838/strided_slice_3/stack_1:output:08sequential_279/lstm_838/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_279/lstm_838/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_279/lstm_838/transpose_1	TransposeCsequential_279/lstm_838/TensorArrayV2Stack/TensorListStack:tensor:01sequential_279/lstm_838/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_279/lstm_838/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_279/lstm_839/ShapeShape'sequential_279/lstm_838/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_279/lstm_839/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_279/lstm_839/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_279/lstm_839/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_279/lstm_839/strided_sliceStridedSlice&sequential_279/lstm_839/Shape:output:04sequential_279/lstm_839/strided_slice/stack:output:06sequential_279/lstm_839/strided_slice/stack_1:output:06sequential_279/lstm_839/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_279/lstm_839/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_279/lstm_839/zeros/packedPack.sequential_279/lstm_839/strided_slice:output:0/sequential_279/lstm_839/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_279/lstm_839/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_279/lstm_839/zerosFill-sequential_279/lstm_839/zeros/packed:output:0,sequential_279/lstm_839/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_279/lstm_839/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_279/lstm_839/zeros_1/packedPack.sequential_279/lstm_839/strided_slice:output:01sequential_279/lstm_839/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_279/lstm_839/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_279/lstm_839/zeros_1Fill/sequential_279/lstm_839/zeros_1/packed:output:0.sequential_279/lstm_839/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_279/lstm_839/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_279/lstm_839/transpose	Transpose'sequential_279/lstm_838/transpose_1:y:0/sequential_279/lstm_839/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_279/lstm_839/Shape_1Shape%sequential_279/lstm_839/transpose:y:0*
T0*
_output_shapes
:w
-sequential_279/lstm_839/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_839/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_279/lstm_839/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_839/strided_slice_1StridedSlice(sequential_279/lstm_839/Shape_1:output:06sequential_279/lstm_839/strided_slice_1/stack:output:08sequential_279/lstm_839/strided_slice_1/stack_1:output:08sequential_279/lstm_839/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_279/lstm_839/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_279/lstm_839/TensorArrayV2TensorListReserve<sequential_279/lstm_839/TensorArrayV2/element_shape:output:00sequential_279/lstm_839/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_279/lstm_839/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_279/lstm_839/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_279/lstm_839/transpose:y:0Vsequential_279/lstm_839/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_279/lstm_839/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_839/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_279/lstm_839/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_839/strided_slice_2StridedSlice%sequential_279/lstm_839/transpose:y:06sequential_279/lstm_839/strided_slice_2/stack:output:08sequential_279/lstm_839/strided_slice_2/stack_1:output:08sequential_279/lstm_839/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_279/lstm_839/lstm_cell_755/MatMul/ReadVariableOpReadVariableOpDsequential_279_lstm_839_lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_279/lstm_839/lstm_cell_755/MatMulMatMul0sequential_279/lstm_839/strided_slice_2:output:0Csequential_279/lstm_839/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_279/lstm_839/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOpFsequential_279_lstm_839_lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_279/lstm_839/lstm_cell_755/MatMul_1MatMul&sequential_279/lstm_839/zeros:output:0Esequential_279/lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_279/lstm_839/lstm_cell_755/addAddV26sequential_279/lstm_839/lstm_cell_755/MatMul:product:08sequential_279/lstm_839/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_279/lstm_839/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOpEsequential_279_lstm_839_lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_279/lstm_839/lstm_cell_755/BiasAddBiasAdd-sequential_279/lstm_839/lstm_cell_755/add:z:0Dsequential_279/lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_279/lstm_839/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_279/lstm_839/lstm_cell_755/splitSplit>sequential_279/lstm_839/lstm_cell_755/split/split_dim:output:06sequential_279/lstm_839/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_279/lstm_839/lstm_cell_755/SigmoidSigmoid4sequential_279/lstm_839/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_279/lstm_839/lstm_cell_755/Sigmoid_1Sigmoid4sequential_279/lstm_839/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_279/lstm_839/lstm_cell_755/mulMul3sequential_279/lstm_839/lstm_cell_755/Sigmoid_1:y:0(sequential_279/lstm_839/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_279/lstm_839/lstm_cell_755/ReluRelu4sequential_279/lstm_839/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_279/lstm_839/lstm_cell_755/mul_1Mul1sequential_279/lstm_839/lstm_cell_755/Sigmoid:y:08sequential_279/lstm_839/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_279/lstm_839/lstm_cell_755/add_1AddV2-sequential_279/lstm_839/lstm_cell_755/mul:z:0/sequential_279/lstm_839/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_279/lstm_839/lstm_cell_755/Sigmoid_2Sigmoid4sequential_279/lstm_839/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_279/lstm_839/lstm_cell_755/Relu_1Relu/sequential_279/lstm_839/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_279/lstm_839/lstm_cell_755/mul_2Mul3sequential_279/lstm_839/lstm_cell_755/Sigmoid_2:y:0:sequential_279/lstm_839/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_279/lstm_839/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_279/lstm_839/TensorArrayV2_1TensorListReserve>sequential_279/lstm_839/TensorArrayV2_1/element_shape:output:00sequential_279/lstm_839/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_279/lstm_839/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_279/lstm_839/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_279/lstm_839/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_279/lstm_839/whileWhile3sequential_279/lstm_839/while/loop_counter:output:09sequential_279/lstm_839/while/maximum_iterations:output:0%sequential_279/lstm_839/time:output:00sequential_279/lstm_839/TensorArrayV2_1:handle:0&sequential_279/lstm_839/zeros:output:0(sequential_279/lstm_839/zeros_1:output:00sequential_279/lstm_839/strided_slice_1:output:0Osequential_279/lstm_839/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_279_lstm_839_lstm_cell_755_matmul_readvariableop_resourceFsequential_279_lstm_839_lstm_cell_755_matmul_1_readvariableop_resourceEsequential_279_lstm_839_lstm_cell_755_biasadd_readvariableop_resource*
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
*sequential_279_lstm_839_while_body_4566077*6
cond.R,
*sequential_279_lstm_839_while_cond_4566076*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_279/lstm_839/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_279/lstm_839/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_279/lstm_839/while:output:3Qsequential_279/lstm_839/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_279/lstm_839/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_279/lstm_839/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_279/lstm_839/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_279/lstm_839/strided_slice_3StridedSliceCsequential_279/lstm_839/TensorArrayV2Stack/TensorListStack:tensor:06sequential_279/lstm_839/strided_slice_3/stack:output:08sequential_279/lstm_839/strided_slice_3/stack_1:output:08sequential_279/lstm_839/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_279/lstm_839/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_279/lstm_839/transpose_1	TransposeCsequential_279/lstm_839/TensorArrayV2Stack/TensorListStack:tensor:01sequential_279/lstm_839/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_279/lstm_839/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_279/dense_279/MatMul/ReadVariableOpReadVariableOp7sequential_279_dense_279_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_279/dense_279/MatMulMatMul0sequential_279/lstm_839/strided_slice_3:output:06sequential_279/dense_279/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_279/dense_279/BiasAdd/ReadVariableOpReadVariableOp8sequential_279_dense_279_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_279/dense_279/BiasAddBiasAdd)sequential_279/dense_279/MatMul:product:07sequential_279/dense_279/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_279/dense_279/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_279/dense_279/BiasAdd/ReadVariableOp/^sequential_279/dense_279/MatMul/ReadVariableOp=^sequential_279/lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp<^sequential_279/lstm_837/lstm_cell_753/MatMul/ReadVariableOp>^sequential_279/lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp^sequential_279/lstm_837/while=^sequential_279/lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp<^sequential_279/lstm_838/lstm_cell_754/MatMul/ReadVariableOp>^sequential_279/lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp^sequential_279/lstm_838/while=^sequential_279/lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp<^sequential_279/lstm_839/lstm_cell_755/MatMul/ReadVariableOp>^sequential_279/lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp^sequential_279/lstm_839/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_279/dense_279/BiasAdd/ReadVariableOp/sequential_279/dense_279/BiasAdd/ReadVariableOp2`
.sequential_279/dense_279/MatMul/ReadVariableOp.sequential_279/dense_279/MatMul/ReadVariableOp2|
<sequential_279/lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp<sequential_279/lstm_837/lstm_cell_753/BiasAdd/ReadVariableOp2z
;sequential_279/lstm_837/lstm_cell_753/MatMul/ReadVariableOp;sequential_279/lstm_837/lstm_cell_753/MatMul/ReadVariableOp2~
=sequential_279/lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp=sequential_279/lstm_837/lstm_cell_753/MatMul_1/ReadVariableOp2>
sequential_279/lstm_837/whilesequential_279/lstm_837/while2|
<sequential_279/lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp<sequential_279/lstm_838/lstm_cell_754/BiasAdd/ReadVariableOp2z
;sequential_279/lstm_838/lstm_cell_754/MatMul/ReadVariableOp;sequential_279/lstm_838/lstm_cell_754/MatMul/ReadVariableOp2~
=sequential_279/lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp=sequential_279/lstm_838/lstm_cell_754/MatMul_1/ReadVariableOp2>
sequential_279/lstm_838/whilesequential_279/lstm_838/while2|
<sequential_279/lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp<sequential_279/lstm_839/lstm_cell_755/BiasAdd/ReadVariableOp2z
;sequential_279/lstm_839/lstm_cell_755/MatMul/ReadVariableOp;sequential_279/lstm_839/lstm_cell_755/MatMul/ReadVariableOp2~
=sequential_279/lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp=sequential_279/lstm_839/lstm_cell_755/MatMul_1/ReadVariableOp2>
sequential_279/lstm_839/whilesequential_279/lstm_839/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_837_input
?
?
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566380

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
?	
?
F__inference_dense_279_layer_call_and_return_conditional_losses_4567684

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
?

?
lstm_838_while_cond_4569105.
*lstm_838_while_lstm_838_while_loop_counter4
0lstm_838_while_lstm_838_while_maximum_iterations
lstm_838_while_placeholder 
lstm_838_while_placeholder_1 
lstm_838_while_placeholder_2 
lstm_838_while_placeholder_30
,lstm_838_while_less_lstm_838_strided_slice_1G
Clstm_838_while_lstm_838_while_cond_4569105___redundant_placeholder0G
Clstm_838_while_lstm_838_while_cond_4569105___redundant_placeholder1G
Clstm_838_while_lstm_838_while_cond_4569105___redundant_placeholder2G
Clstm_838_while_lstm_838_while_cond_4569105___redundant_placeholder3
lstm_838_while_identity
?
lstm_838/while/LessLesslstm_838_while_placeholder,lstm_838_while_less_lstm_838_strided_slice_1*
T0*
_output_shapes
: ]
lstm_838/while/IdentityIdentitylstm_838/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_838_while_identity lstm_838/while/Identity:output:0*(
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570138
inputs_0?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4570054*
condR
while_cond_4570053*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4566858

inputs(
lstm_cell_754_4566776:	d?(
lstm_cell_754_4566778:	2?$
lstm_cell_754_4566780:	?
identity??%lstm_cell_754/StatefulPartitionedCall?while;
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
%lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_754_4566776lstm_cell_754_4566778lstm_cell_754_4566780*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566730n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_754_4566776lstm_cell_754_4566778lstm_cell_754_4566780*
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
while_body_4566789*
condR
while_cond_4566788*K
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
NoOpNoOp&^lstm_cell_754/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_754/StatefulPartitionedCall%lstm_cell_754/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569522
inputs_0?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4569438*
condR
while_cond_4569437*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4567138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4567138___redundant_placeholder05
1while_while_cond_4567138___redundant_placeholder15
1while_while_cond_4567138___redundant_placeholder25
1while_while_cond_4567138___redundant_placeholder3
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566234

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
?
?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4567691

inputs#
lstm_837_4567367:	?#
lstm_837_4567369:	d?
lstm_837_4567371:	?#
lstm_838_4567517:	d?#
lstm_838_4567519:	2?
lstm_838_4567521:	?"
lstm_839_4567667:2("
lstm_839_4567669:
(
lstm_839_4567671:(#
dense_279_4567685:

dense_279_4567687:
identity??!dense_279/StatefulPartitionedCall? lstm_837/StatefulPartitionedCall? lstm_838/StatefulPartitionedCall? lstm_839/StatefulPartitionedCall?
 lstm_837/StatefulPartitionedCallStatefulPartitionedCallinputslstm_837_4567367lstm_837_4567369lstm_837_4567371*
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4567366?
 lstm_838/StatefulPartitionedCallStatefulPartitionedCall)lstm_837/StatefulPartitionedCall:output:0lstm_838_4567517lstm_838_4567519lstm_838_4567521*
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4567516?
 lstm_839/StatefulPartitionedCallStatefulPartitionedCall)lstm_838/StatefulPartitionedCall:output:0lstm_839_4567667lstm_839_4567669lstm_839_4567671*
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567666?
!dense_279/StatefulPartitionedCallStatefulPartitionedCall)lstm_839/StatefulPartitionedCall:output:0dense_279_4567685dense_279_4567687*
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
F__inference_dense_279_layer_call_and_return_conditional_losses_4567684y
IdentityIdentity*dense_279/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_279/StatefulPartitionedCall!^lstm_837/StatefulPartitionedCall!^lstm_838/StatefulPartitionedCall!^lstm_839/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_279/StatefulPartitionedCall!dense_279/StatefulPartitionedCall2D
 lstm_837/StatefulPartitionedCall lstm_837/StatefulPartitionedCall2D
 lstm_838/StatefulPartitionedCall lstm_838/StatefulPartitionedCall2D
 lstm_839/StatefulPartitionedCall lstm_839/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_279_layer_call_fn_4567716
lstm_837_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_837_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4567691o
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
_user_specified_namelstm_837_input
?
?
*__inference_lstm_838_layer_call_fn_4569962
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4566667|
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569665
inputs_0?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4569581*
condR
while_cond_4569580*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4570339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570339___redundant_placeholder05
1while_while_cond_4570339___redundant_placeholder15
1while_while_cond_4570339___redundant_placeholder25
1while_while_cond_4570339___redundant_placeholder3
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
?C
?

lstm_838_while_body_4568679.
*lstm_838_while_lstm_838_while_loop_counter4
0lstm_838_while_lstm_838_while_maximum_iterations
lstm_838_while_placeholder 
lstm_838_while_placeholder_1 
lstm_838_while_placeholder_2 
lstm_838_while_placeholder_3-
)lstm_838_while_lstm_838_strided_slice_1_0i
elstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0:	d?R
?lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?M
>lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
lstm_838_while_identity
lstm_838_while_identity_1
lstm_838_while_identity_2
lstm_838_while_identity_3
lstm_838_while_identity_4
lstm_838_while_identity_5+
'lstm_838_while_lstm_838_strided_slice_1g
clstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensorN
;lstm_838_while_lstm_cell_754_matmul_readvariableop_resource:	d?P
=lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource:	2?K
<lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource:	???3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp?2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp?4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp?
@lstm_838/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_838/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensor_0lstm_838_while_placeholderIlstm_838/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp=lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_838/while/lstm_cell_754/MatMulMatMul9lstm_838/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp?lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_838/while/lstm_cell_754/MatMul_1MatMullstm_838_while_placeholder_2<lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_838/while/lstm_cell_754/addAddV2-lstm_838/while/lstm_cell_754/MatMul:product:0/lstm_838/while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp>lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_838/while/lstm_cell_754/BiasAddBiasAdd$lstm_838/while/lstm_cell_754/add:z:0;lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_838/while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_838/while/lstm_cell_754/splitSplit5lstm_838/while/lstm_cell_754/split/split_dim:output:0-lstm_838/while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_838/while/lstm_cell_754/SigmoidSigmoid+lstm_838/while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_838/while/lstm_cell_754/Sigmoid_1Sigmoid+lstm_838/while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_838/while/lstm_cell_754/mulMul*lstm_838/while/lstm_cell_754/Sigmoid_1:y:0lstm_838_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_838/while/lstm_cell_754/ReluRelu+lstm_838/while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_838/while/lstm_cell_754/mul_1Mul(lstm_838/while/lstm_cell_754/Sigmoid:y:0/lstm_838/while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_838/while/lstm_cell_754/add_1AddV2$lstm_838/while/lstm_cell_754/mul:z:0&lstm_838/while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_838/while/lstm_cell_754/Sigmoid_2Sigmoid+lstm_838/while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_838/while/lstm_cell_754/Relu_1Relu&lstm_838/while/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_838/while/lstm_cell_754/mul_2Mul*lstm_838/while/lstm_cell_754/Sigmoid_2:y:01lstm_838/while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_838/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_838_while_placeholder_1lstm_838_while_placeholder&lstm_838/while/lstm_cell_754/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_838/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_838/while/addAddV2lstm_838_while_placeholderlstm_838/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_838/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_838/while/add_1AddV2*lstm_838_while_lstm_838_while_loop_counterlstm_838/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_838/while/IdentityIdentitylstm_838/while/add_1:z:0^lstm_838/while/NoOp*
T0*
_output_shapes
: ?
lstm_838/while/Identity_1Identity0lstm_838_while_lstm_838_while_maximum_iterations^lstm_838/while/NoOp*
T0*
_output_shapes
: t
lstm_838/while/Identity_2Identitylstm_838/while/add:z:0^lstm_838/while/NoOp*
T0*
_output_shapes
: ?
lstm_838/while/Identity_3IdentityClstm_838/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_838/while/NoOp*
T0*
_output_shapes
: ?
lstm_838/while/Identity_4Identity&lstm_838/while/lstm_cell_754/mul_2:z:0^lstm_838/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_838/while/Identity_5Identity&lstm_838/while/lstm_cell_754/add_1:z:0^lstm_838/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_838/while/NoOpNoOp4^lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp3^lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp5^lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_838_while_identity lstm_838/while/Identity:output:0"?
lstm_838_while_identity_1"lstm_838/while/Identity_1:output:0"?
lstm_838_while_identity_2"lstm_838/while/Identity_2:output:0"?
lstm_838_while_identity_3"lstm_838/while/Identity_3:output:0"?
lstm_838_while_identity_4"lstm_838/while/Identity_4:output:0"?
lstm_838_while_identity_5"lstm_838/while/Identity_5:output:0"T
'lstm_838_while_lstm_838_strided_slice_1)lstm_838_while_lstm_838_strided_slice_1_0"~
<lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource>lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0"?
=lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource?lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0"|
;lstm_838_while_lstm_cell_754_matmul_readvariableop_resource=lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0"?
clstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensorelstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp2h
2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp2l
4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4570812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570812___redundant_placeholder05
1while_while_cond_4570812___redundant_placeholder15
1while_while_cond_4570812___redundant_placeholder25
1while_while_cond_4570812___redundant_placeholder3
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
%__inference_signature_wrapper_4568427
lstm_837_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_837_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4566167o
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
_user_specified_namelstm_837_input
?#
?
while_body_4566439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_753_4566463_0:	?0
while_lstm_cell_753_4566465_0:	d?,
while_lstm_cell_753_4566467_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_753_4566463:	?.
while_lstm_cell_753_4566465:	d?*
while_lstm_cell_753_4566467:	???+while/lstm_cell_753/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_753_4566463_0while_lstm_cell_753_4566465_0while_lstm_cell_753_4566467_0*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566380?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_753/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_753/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_753/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_753/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_753_4566463while_lstm_cell_753_4566463_0"<
while_lstm_cell_753_4566465while_lstm_cell_753_4566465_0"<
while_lstm_cell_753_4566467while_lstm_cell_753_4566467_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_753/StatefulPartitionedCall+while/lstm_cell_753/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4569723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4569723___redundant_placeholder05
1while_while_cond_4569723___redundant_placeholder15
1while_while_cond_4569723___redundant_placeholder25
1while_while_cond_4569723___redundant_placeholder3
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
while_cond_4570196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4570196___redundant_placeholder05
1while_while_cond_4570196___redundant_placeholder15
1while_while_cond_4570196___redundant_placeholder25
1while_while_cond_4570196___redundant_placeholder3
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567882

inputs>
,lstm_cell_755_matmul_readvariableop_resource:2(@
.lstm_cell_755_matmul_1_readvariableop_resource:
(;
-lstm_cell_755_biasadd_readvariableop_resource:(
identity??$lstm_cell_755/BiasAdd/ReadVariableOp?#lstm_cell_755/MatMul/ReadVariableOp?%lstm_cell_755/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_755/MatMul/ReadVariableOpReadVariableOp,lstm_cell_755_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_755/MatMulMatMulstrided_slice_2:output:0+lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_755_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_755/MatMul_1MatMulzeros:output:0-lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_755/addAddV2lstm_cell_755/MatMul:product:0 lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_755_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_755/BiasAddBiasAddlstm_cell_755/add:z:0,lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_755/splitSplit&lstm_cell_755/split/split_dim:output:0lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_755/SigmoidSigmoidlstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_1Sigmoidlstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_755/mulMullstm_cell_755/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_755/ReluRelulstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_1Mullstm_cell_755/Sigmoid:y:0 lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_755/add_1AddV2lstm_cell_755/mul:z:0lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_755/Sigmoid_2Sigmoidlstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_755/Relu_1Relulstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_755/mul_2Mullstm_cell_755/Sigmoid_2:y:0"lstm_cell_755/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_755_matmul_readvariableop_resource.lstm_cell_755_matmul_1_readvariableop_resource-lstm_cell_755_biasadd_readvariableop_resource*
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
while_body_4567798*
condR
while_cond_4567797*K
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
NoOpNoOp%^lstm_cell_755/BiasAdd/ReadVariableOp$^lstm_cell_755/MatMul/ReadVariableOp&^lstm_cell_755/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_755/BiasAdd/ReadVariableOp$lstm_cell_755/BiasAdd/ReadVariableOp2J
#lstm_cell_755/MatMul/ReadVariableOp#lstm_cell_755/MatMul/ReadVariableOp2N
%lstm_cell_755/MatMul_1/ReadVariableOp%lstm_cell_755/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4569866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4569866___redundant_placeholder05
1while_while_cond_4569866___redundant_placeholder15
1while_while_cond_4569866___redundant_placeholder25
1while_while_cond_4569866___redundant_placeholder3
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
while_cond_4571098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4571098___redundant_placeholder05
1while_while_cond_4571098___redundant_placeholder15
1while_while_cond_4571098___redundant_placeholder25
1while_while_cond_4571098___redundant_placeholder3
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
while_body_4566248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_753_4566272_0:	?0
while_lstm_cell_753_4566274_0:	d?,
while_lstm_cell_753_4566276_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_753_4566272:	?.
while_lstm_cell_753_4566274:	d?*
while_lstm_cell_753_4566276:	???+while/lstm_cell_753/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_753_4566272_0while_lstm_cell_753_4566274_0while_lstm_cell_753_4566276_0*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566234?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_753/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_753/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_753/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_753/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_753_4566272while_lstm_cell_753_4566272_0"<
while_lstm_cell_753_4566274while_lstm_cell_753_4566274_0"<
while_lstm_cell_753_4566276while_lstm_cell_753_4566276_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_753/StatefulPartitionedCall+while/lstm_cell_753/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_279_layer_call_fn_4568332
lstm_837_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_837_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568280o
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
_user_specified_namelstm_837_input
?

?
lstm_837_while_cond_4568966.
*lstm_837_while_lstm_837_while_loop_counter4
0lstm_837_while_lstm_837_while_maximum_iterations
lstm_837_while_placeholder 
lstm_837_while_placeholder_1 
lstm_837_while_placeholder_2 
lstm_837_while_placeholder_30
,lstm_837_while_less_lstm_837_strided_slice_1G
Clstm_837_while_lstm_837_while_cond_4568966___redundant_placeholder0G
Clstm_837_while_lstm_837_while_cond_4568966___redundant_placeholder1G
Clstm_837_while_lstm_837_while_cond_4568966___redundant_placeholder2G
Clstm_837_while_lstm_837_while_cond_4568966___redundant_placeholder3
lstm_837_while_identity
?
lstm_837/while/LessLesslstm_837_while_placeholder,lstm_837_while_less_lstm_837_strided_slice_1*
T0*
_output_shapes
: ]
lstm_837/while/IdentityIdentitylstm_837/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_837_while_identity lstm_837/while/Identity:output:0*(
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
?J
?
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569808

inputs?
,lstm_cell_753_matmul_readvariableop_resource:	?A
.lstm_cell_753_matmul_1_readvariableop_resource:	d?<
-lstm_cell_753_biasadd_readvariableop_resource:	?
identity??$lstm_cell_753/BiasAdd/ReadVariableOp?#lstm_cell_753/MatMul/ReadVariableOp?%lstm_cell_753/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_753/MatMul/ReadVariableOpReadVariableOp,lstm_cell_753_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_753/MatMulMatMulstrided_slice_2:output:0+lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_753_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_753/MatMul_1MatMulzeros:output:0-lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_753/addAddV2lstm_cell_753/MatMul:product:0 lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_753_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_753/BiasAddBiasAddlstm_cell_753/add:z:0,lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_753/splitSplit&lstm_cell_753/split/split_dim:output:0lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_753/SigmoidSigmoidlstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_1Sigmoidlstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_753/mulMullstm_cell_753/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_753/ReluRelulstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_1Mullstm_cell_753/Sigmoid:y:0 lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_753/add_1AddV2lstm_cell_753/mul:z:0lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_753/Sigmoid_2Sigmoidlstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_753/Relu_1Relulstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_753/mul_2Mullstm_cell_753/Sigmoid_2:y:0"lstm_cell_753/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_753_matmul_readvariableop_resource.lstm_cell_753_matmul_1_readvariableop_resource-lstm_cell_753_biasadd_readvariableop_resource*
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
while_body_4569724*
condR
while_cond_4569723*K
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
NoOpNoOp%^lstm_cell_753/BiasAdd/ReadVariableOp$^lstm_cell_753/MatMul/ReadVariableOp&^lstm_cell_753/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_753/BiasAdd/ReadVariableOp$lstm_cell_753/BiasAdd/ReadVariableOp2J
#lstm_cell_753/MatMul/ReadVariableOp#lstm_cell_753/MatMul/ReadVariableOp2N
%lstm_cell_753/MatMul_1/ReadVariableOp%lstm_cell_753/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4566598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_754_4566622_0:	d?0
while_lstm_cell_754_4566624_0:	2?,
while_lstm_cell_754_4566626_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_754_4566622:	d?.
while_lstm_cell_754_4566624:	2?*
while_lstm_cell_754_4566626:	???+while/lstm_cell_754/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_754/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_754_4566622_0while_lstm_cell_754_4566624_0while_lstm_cell_754_4566626_0*
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566584?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_754/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_754/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_754/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_754/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_754_4566622while_lstm_cell_754_4566622_0"<
while_lstm_cell_754_4566624while_lstm_cell_754_4566624_0"<
while_lstm_cell_754_4566626while_lstm_cell_754_4566626_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_754/StatefulPartitionedCall+while/lstm_cell_754/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_753_layer_call_fn_4571219

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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566234o
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
?J
?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570567

inputs?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4570483*
condR
while_cond_4570482*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4567581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4567581___redundant_placeholder05
1while_while_cond_4567581___redundant_placeholder15
1while_while_cond_4567581___redundant_placeholder25
1while_while_cond_4567581___redundant_placeholder3
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4566317

inputs(
lstm_cell_753_4566235:	?(
lstm_cell_753_4566237:	d?$
lstm_cell_753_4566239:	?
identity??%lstm_cell_753/StatefulPartitionedCall?while;
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
%lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_753_4566235lstm_cell_753_4566237lstm_cell_753_4566239*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566234n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_753_4566235lstm_cell_753_4566237lstm_cell_753_4566239*
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
while_body_4566248*
condR
while_cond_4566247*K
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
NoOpNoOp&^lstm_cell_753/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_753/StatefulPartitionedCall%lstm_cell_753/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568362
lstm_837_input#
lstm_837_4568335:	?#
lstm_837_4568337:	d?
lstm_837_4568339:	?#
lstm_838_4568342:	d?#
lstm_838_4568344:	2?
lstm_838_4568346:	?"
lstm_839_4568349:2("
lstm_839_4568351:
(
lstm_839_4568353:(#
dense_279_4568356:

dense_279_4568358:
identity??!dense_279/StatefulPartitionedCall? lstm_837/StatefulPartitionedCall? lstm_838/StatefulPartitionedCall? lstm_839/StatefulPartitionedCall?
 lstm_837/StatefulPartitionedCallStatefulPartitionedCalllstm_837_inputlstm_837_4568335lstm_837_4568337lstm_837_4568339*
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4567366?
 lstm_838/StatefulPartitionedCallStatefulPartitionedCall)lstm_837/StatefulPartitionedCall:output:0lstm_838_4568342lstm_838_4568344lstm_838_4568346*
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4567516?
 lstm_839/StatefulPartitionedCallStatefulPartitionedCall)lstm_838/StatefulPartitionedCall:output:0lstm_839_4568349lstm_839_4568351lstm_839_4568353*
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567666?
!dense_279/StatefulPartitionedCallStatefulPartitionedCall)lstm_839/StatefulPartitionedCall:output:0dense_279_4568356dense_279_4568358*
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
F__inference_dense_279_layer_call_and_return_conditional_losses_4567684y
IdentityIdentity*dense_279/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_279/StatefulPartitionedCall!^lstm_837/StatefulPartitionedCall!^lstm_838/StatefulPartitionedCall!^lstm_839/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_279/StatefulPartitionedCall!dense_279/StatefulPartitionedCall2D
 lstm_837/StatefulPartitionedCall lstm_837/StatefulPartitionedCall2D
 lstm_838/StatefulPartitionedCall lstm_838/StatefulPartitionedCall2D
 lstm_839/StatefulPartitionedCall lstm_839/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_837_input
?8
?
while_body_4571099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_755_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_755_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_755_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_755_matmul_readvariableop_resource:2(F
4while_lstm_cell_755_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_755_biasadd_readvariableop_resource:(??*while/lstm_cell_755/BiasAdd/ReadVariableOp?)while/lstm_cell_755/MatMul/ReadVariableOp?+while/lstm_cell_755/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_755/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_755_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_755/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_755/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_755/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_755_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_755/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_755/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_755/addAddV2$while/lstm_cell_755/MatMul:product:0&while/lstm_cell_755/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_755/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_755_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_755/BiasAddBiasAddwhile/lstm_cell_755/add:z:02while/lstm_cell_755/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_755/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_755/splitSplit,while/lstm_cell_755/split/split_dim:output:0$while/lstm_cell_755/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_755/SigmoidSigmoid"while/lstm_cell_755/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_1Sigmoid"while/lstm_cell_755/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mulMul!while/lstm_cell_755/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_755/ReluRelu"while/lstm_cell_755/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_1Mulwhile/lstm_cell_755/Sigmoid:y:0&while/lstm_cell_755/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/add_1AddV2while/lstm_cell_755/mul:z:0while/lstm_cell_755/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_755/Sigmoid_2Sigmoid"while/lstm_cell_755/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_755/Relu_1Reluwhile/lstm_cell_755/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_755/mul_2Mul!while/lstm_cell_755/Sigmoid_2:y:0(while/lstm_cell_755/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_755/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_755/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_755/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_755/BiasAdd/ReadVariableOp*^while/lstm_cell_755/MatMul/ReadVariableOp,^while/lstm_cell_755/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_755_biasadd_readvariableop_resource5while_lstm_cell_755_biasadd_readvariableop_resource_0"n
4while_lstm_cell_755_matmul_1_readvariableop_resource6while_lstm_cell_755_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_755_matmul_readvariableop_resource4while_lstm_cell_755_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_755/BiasAdd/ReadVariableOp*while/lstm_cell_755/BiasAdd/ReadVariableOp2V
)while/lstm_cell_755/MatMul/ReadVariableOp)while/lstm_cell_755/MatMul/ReadVariableOp2Z
+while/lstm_cell_755/MatMul_1/ReadVariableOp+while/lstm_cell_755/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
/__inference_lstm_cell_754_layer_call_fn_4571317

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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4566584o
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
while_cond_4567431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4567431___redundant_placeholder05
1while_while_cond_4567431___redundant_placeholder15
1while_while_cond_4567431___redundant_placeholder25
1while_while_cond_4567431___redundant_placeholder3
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
*__inference_lstm_837_layer_call_fn_4569346
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4566317|
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
?
?
/__inference_lstm_cell_755_layer_call_fn_4571415

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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4566934o
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
?
?
/__inference_lstm_cell_753_layer_call_fn_4571236

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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566380o
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
while_cond_4566597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4566597___redundant_placeholder05
1while_while_cond_4566597___redundant_placeholder15
1while_while_cond_4566597___redundant_placeholder25
1while_while_cond_4566597___redundant_placeholder3
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
while_cond_4569580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4569580___redundant_placeholder05
1while_while_cond_4569580___redundant_placeholder15
1while_while_cond_4569580___redundant_placeholder25
1while_while_cond_4569580___redundant_placeholder3
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
while_body_4570340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4566947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4566947___redundant_placeholder05
1while_while_cond_4566947___redundant_placeholder15
1while_while_cond_4566947___redundant_placeholder25
1while_while_cond_4566947___redundant_placeholder3
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
*__inference_lstm_839_layer_call_fn_4570589
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4567208o
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
?
*__inference_lstm_837_layer_call_fn_4569357
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4566508|
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
?C
?

lstm_838_while_body_4569106.
*lstm_838_while_lstm_838_while_loop_counter4
0lstm_838_while_lstm_838_while_maximum_iterations
lstm_838_while_placeholder 
lstm_838_while_placeholder_1 
lstm_838_while_placeholder_2 
lstm_838_while_placeholder_3-
)lstm_838_while_lstm_838_strided_slice_1_0i
elstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0:	d?R
?lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?M
>lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
lstm_838_while_identity
lstm_838_while_identity_1
lstm_838_while_identity_2
lstm_838_while_identity_3
lstm_838_while_identity_4
lstm_838_while_identity_5+
'lstm_838_while_lstm_838_strided_slice_1g
clstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensorN
;lstm_838_while_lstm_cell_754_matmul_readvariableop_resource:	d?P
=lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource:	2?K
<lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource:	???3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp?2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp?4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp?
@lstm_838/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_838/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensor_0lstm_838_while_placeholderIlstm_838/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp=lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_838/while/lstm_cell_754/MatMulMatMul9lstm_838/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp?lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_838/while/lstm_cell_754/MatMul_1MatMullstm_838_while_placeholder_2<lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_838/while/lstm_cell_754/addAddV2-lstm_838/while/lstm_cell_754/MatMul:product:0/lstm_838/while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp>lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_838/while/lstm_cell_754/BiasAddBiasAdd$lstm_838/while/lstm_cell_754/add:z:0;lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_838/while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_838/while/lstm_cell_754/splitSplit5lstm_838/while/lstm_cell_754/split/split_dim:output:0-lstm_838/while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_838/while/lstm_cell_754/SigmoidSigmoid+lstm_838/while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_838/while/lstm_cell_754/Sigmoid_1Sigmoid+lstm_838/while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_838/while/lstm_cell_754/mulMul*lstm_838/while/lstm_cell_754/Sigmoid_1:y:0lstm_838_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_838/while/lstm_cell_754/ReluRelu+lstm_838/while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_838/while/lstm_cell_754/mul_1Mul(lstm_838/while/lstm_cell_754/Sigmoid:y:0/lstm_838/while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_838/while/lstm_cell_754/add_1AddV2$lstm_838/while/lstm_cell_754/mul:z:0&lstm_838/while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_838/while/lstm_cell_754/Sigmoid_2Sigmoid+lstm_838/while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_838/while/lstm_cell_754/Relu_1Relu&lstm_838/while/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_838/while/lstm_cell_754/mul_2Mul*lstm_838/while/lstm_cell_754/Sigmoid_2:y:01lstm_838/while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_838/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_838_while_placeholder_1lstm_838_while_placeholder&lstm_838/while/lstm_cell_754/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_838/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_838/while/addAddV2lstm_838_while_placeholderlstm_838/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_838/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_838/while/add_1AddV2*lstm_838_while_lstm_838_while_loop_counterlstm_838/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_838/while/IdentityIdentitylstm_838/while/add_1:z:0^lstm_838/while/NoOp*
T0*
_output_shapes
: ?
lstm_838/while/Identity_1Identity0lstm_838_while_lstm_838_while_maximum_iterations^lstm_838/while/NoOp*
T0*
_output_shapes
: t
lstm_838/while/Identity_2Identitylstm_838/while/add:z:0^lstm_838/while/NoOp*
T0*
_output_shapes
: ?
lstm_838/while/Identity_3IdentityClstm_838/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_838/while/NoOp*
T0*
_output_shapes
: ?
lstm_838/while/Identity_4Identity&lstm_838/while/lstm_cell_754/mul_2:z:0^lstm_838/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_838/while/Identity_5Identity&lstm_838/while/lstm_cell_754/add_1:z:0^lstm_838/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_838/while/NoOpNoOp4^lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp3^lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp5^lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_838_while_identity lstm_838/while/Identity:output:0"?
lstm_838_while_identity_1"lstm_838/while/Identity_1:output:0"?
lstm_838_while_identity_2"lstm_838/while/Identity_2:output:0"?
lstm_838_while_identity_3"lstm_838/while/Identity_3:output:0"?
lstm_838_while_identity_4"lstm_838/while/Identity_4:output:0"?
lstm_838_while_identity_5"lstm_838/while/Identity_5:output:0"T
'lstm_838_while_lstm_838_strided_slice_1)lstm_838_while_lstm_838_strided_slice_1_0"~
<lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource>lstm_838_while_lstm_cell_754_biasadd_readvariableop_resource_0"?
=lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource?lstm_838_while_lstm_cell_754_matmul_1_readvariableop_resource_0"|
;lstm_838_while_lstm_cell_754_matmul_readvariableop_resource=lstm_838_while_lstm_cell_754_matmul_readvariableop_resource_0"?
clstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensorelstm_838_while_tensorarrayv2read_tensorlistgetitem_lstm_838_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp3lstm_838/while/lstm_cell_754/BiasAdd/ReadVariableOp2h
2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp2lstm_838/while/lstm_cell_754/MatMul/ReadVariableOp2l
4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp4lstm_838/while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4570483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_754_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_754_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_754_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_754_matmul_readvariableop_resource:	d?G
4while_lstm_cell_754_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_754_biasadd_readvariableop_resource:	???*while/lstm_cell_754/BiasAdd/ReadVariableOp?)while/lstm_cell_754/MatMul/ReadVariableOp?+while/lstm_cell_754/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_754/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_754_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_754/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_754_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_754/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_754/addAddV2$while/lstm_cell_754/MatMul:product:0&while/lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_754_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_754/BiasAddBiasAddwhile/lstm_cell_754/add:z:02while/lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_754/splitSplit,while/lstm_cell_754/split/split_dim:output:0$while/lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_754/SigmoidSigmoid"while/lstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_1Sigmoid"while/lstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mulMul!while/lstm_cell_754/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_754/ReluRelu"while/lstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_1Mulwhile/lstm_cell_754/Sigmoid:y:0&while/lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/add_1AddV2while/lstm_cell_754/mul:z:0while/lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_754/Sigmoid_2Sigmoid"while/lstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_754/Relu_1Reluwhile/lstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_754/mul_2Mul!while/lstm_cell_754/Sigmoid_2:y:0(while/lstm_cell_754/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_754/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_754/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_754/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_754/BiasAdd/ReadVariableOp*^while/lstm_cell_754/MatMul/ReadVariableOp,^while/lstm_cell_754/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_754_biasadd_readvariableop_resource5while_lstm_cell_754_biasadd_readvariableop_resource_0"n
4while_lstm_cell_754_matmul_1_readvariableop_resource6while_lstm_cell_754_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_754_matmul_readvariableop_resource4while_lstm_cell_754_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_754/BiasAdd/ReadVariableOp*while/lstm_cell_754/BiasAdd/ReadVariableOp2V
)while/lstm_cell_754/MatMul/ReadVariableOp)while/lstm_cell_754/MatMul/ReadVariableOp2Z
+while/lstm_cell_754/MatMul_1/ReadVariableOp+while/lstm_cell_754/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4566948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_755_4566972_0:2(/
while_lstm_cell_755_4566974_0:
(+
while_lstm_cell_755_4566976_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_755_4566972:2(-
while_lstm_cell_755_4566974:
()
while_lstm_cell_755_4566976:(??+while/lstm_cell_755/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_755/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_755_4566972_0while_lstm_cell_755_4566974_0while_lstm_cell_755_4566976_0*
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4566934?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_755/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_755/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_755/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_755/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_755_4566972while_lstm_cell_755_4566972_0"<
while_lstm_cell_755_4566974while_lstm_cell_755_4566974_0"<
while_lstm_cell_755_4566976while_lstm_cell_755_4566976_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_755/StatefulPartitionedCall+while/lstm_cell_755/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_837_while_body_4568967.
*lstm_837_while_lstm_837_while_loop_counter4
0lstm_837_while_lstm_837_while_maximum_iterations
lstm_837_while_placeholder 
lstm_837_while_placeholder_1 
lstm_837_while_placeholder_2 
lstm_837_while_placeholder_3-
)lstm_837_while_lstm_837_strided_slice_1_0i
elstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0:	?R
?lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0:	d?M
>lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0:	?
lstm_837_while_identity
lstm_837_while_identity_1
lstm_837_while_identity_2
lstm_837_while_identity_3
lstm_837_while_identity_4
lstm_837_while_identity_5+
'lstm_837_while_lstm_837_strided_slice_1g
clstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensorN
;lstm_837_while_lstm_cell_753_matmul_readvariableop_resource:	?P
=lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource:	d?K
<lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource:	???3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp?2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp?4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp?
@lstm_837/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_837/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensor_0lstm_837_while_placeholderIlstm_837/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOpReadVariableOp=lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_837/while/lstm_cell_753/MatMulMatMul9lstm_837/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOpReadVariableOp?lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_837/while/lstm_cell_753/MatMul_1MatMullstm_837_while_placeholder_2<lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_837/while/lstm_cell_753/addAddV2-lstm_837/while/lstm_cell_753/MatMul:product:0/lstm_837/while/lstm_cell_753/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOpReadVariableOp>lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_837/while/lstm_cell_753/BiasAddBiasAdd$lstm_837/while/lstm_cell_753/add:z:0;lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_837/while/lstm_cell_753/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_837/while/lstm_cell_753/splitSplit5lstm_837/while/lstm_cell_753/split/split_dim:output:0-lstm_837/while/lstm_cell_753/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_837/while/lstm_cell_753/SigmoidSigmoid+lstm_837/while/lstm_cell_753/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_837/while/lstm_cell_753/Sigmoid_1Sigmoid+lstm_837/while/lstm_cell_753/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_837/while/lstm_cell_753/mulMul*lstm_837/while/lstm_cell_753/Sigmoid_1:y:0lstm_837_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_837/while/lstm_cell_753/ReluRelu+lstm_837/while/lstm_cell_753/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_837/while/lstm_cell_753/mul_1Mul(lstm_837/while/lstm_cell_753/Sigmoid:y:0/lstm_837/while/lstm_cell_753/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_837/while/lstm_cell_753/add_1AddV2$lstm_837/while/lstm_cell_753/mul:z:0&lstm_837/while/lstm_cell_753/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_837/while/lstm_cell_753/Sigmoid_2Sigmoid+lstm_837/while/lstm_cell_753/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_837/while/lstm_cell_753/Relu_1Relu&lstm_837/while/lstm_cell_753/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_837/while/lstm_cell_753/mul_2Mul*lstm_837/while/lstm_cell_753/Sigmoid_2:y:01lstm_837/while/lstm_cell_753/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_837/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_837_while_placeholder_1lstm_837_while_placeholder&lstm_837/while/lstm_cell_753/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_837/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_837/while/addAddV2lstm_837_while_placeholderlstm_837/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_837/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_837/while/add_1AddV2*lstm_837_while_lstm_837_while_loop_counterlstm_837/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_837/while/IdentityIdentitylstm_837/while/add_1:z:0^lstm_837/while/NoOp*
T0*
_output_shapes
: ?
lstm_837/while/Identity_1Identity0lstm_837_while_lstm_837_while_maximum_iterations^lstm_837/while/NoOp*
T0*
_output_shapes
: t
lstm_837/while/Identity_2Identitylstm_837/while/add:z:0^lstm_837/while/NoOp*
T0*
_output_shapes
: ?
lstm_837/while/Identity_3IdentityClstm_837/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_837/while/NoOp*
T0*
_output_shapes
: ?
lstm_837/while/Identity_4Identity&lstm_837/while/lstm_cell_753/mul_2:z:0^lstm_837/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_837/while/Identity_5Identity&lstm_837/while/lstm_cell_753/add_1:z:0^lstm_837/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_837/while/NoOpNoOp4^lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp3^lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp5^lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_837_while_identity lstm_837/while/Identity:output:0"?
lstm_837_while_identity_1"lstm_837/while/Identity_1:output:0"?
lstm_837_while_identity_2"lstm_837/while/Identity_2:output:0"?
lstm_837_while_identity_3"lstm_837/while/Identity_3:output:0"?
lstm_837_while_identity_4"lstm_837/while/Identity_4:output:0"?
lstm_837_while_identity_5"lstm_837/while/Identity_5:output:0"T
'lstm_837_while_lstm_837_strided_slice_1)lstm_837_while_lstm_837_strided_slice_1_0"~
<lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource>lstm_837_while_lstm_cell_753_biasadd_readvariableop_resource_0"?
=lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource?lstm_837_while_lstm_cell_753_matmul_1_readvariableop_resource_0"|
;lstm_837_while_lstm_cell_753_matmul_readvariableop_resource=lstm_837_while_lstm_cell_753_matmul_readvariableop_resource_0"?
clstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensorelstm_837_while_tensorarrayv2read_tensorlistgetitem_lstm_837_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp3lstm_837/while/lstm_cell_753/BiasAdd/ReadVariableOp2h
2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp2lstm_837/while/lstm_cell_753/MatMul/ReadVariableOp2l
4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp4lstm_837/while/lstm_cell_753/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4567080

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
?8
?
E__inference_lstm_837_layer_call_and_return_conditional_losses_4566508

inputs(
lstm_cell_753_4566426:	?(
lstm_cell_753_4566428:	d?$
lstm_cell_753_4566430:	?
identity??%lstm_cell_753/StatefulPartitionedCall?while;
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
%lstm_cell_753/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_753_4566426lstm_cell_753_4566428lstm_cell_753_4566430*
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4566380n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_753_4566426lstm_cell_753_4566428lstm_cell_753_4566430*
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
while_body_4566439*
condR
while_cond_4566438*K
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
NoOpNoOp&^lstm_cell_753/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_753/StatefulPartitionedCall%lstm_cell_753/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570281
inputs_0?
,lstm_cell_754_matmul_readvariableop_resource:	d?A
.lstm_cell_754_matmul_1_readvariableop_resource:	2?<
-lstm_cell_754_biasadd_readvariableop_resource:	?
identity??$lstm_cell_754/BiasAdd/ReadVariableOp?#lstm_cell_754/MatMul/ReadVariableOp?%lstm_cell_754/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_754/MatMul/ReadVariableOpReadVariableOp,lstm_cell_754_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_754/MatMulMatMulstrided_slice_2:output:0+lstm_cell_754/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_754/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_754_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_754/MatMul_1MatMulzeros:output:0-lstm_cell_754/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_754/addAddV2lstm_cell_754/MatMul:product:0 lstm_cell_754/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_754/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_754_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_754/BiasAddBiasAddlstm_cell_754/add:z:0,lstm_cell_754/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_754/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_754/splitSplit&lstm_cell_754/split/split_dim:output:0lstm_cell_754/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_754/SigmoidSigmoidlstm_cell_754/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_1Sigmoidlstm_cell_754/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_754/mulMullstm_cell_754/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_754/ReluRelulstm_cell_754/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_1Mullstm_cell_754/Sigmoid:y:0 lstm_cell_754/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_754/add_1AddV2lstm_cell_754/mul:z:0lstm_cell_754/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_754/Sigmoid_2Sigmoidlstm_cell_754/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_754/Relu_1Relulstm_cell_754/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_754/mul_2Mullstm_cell_754/Sigmoid_2:y:0"lstm_cell_754/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_754_matmul_readvariableop_resource.lstm_cell_754_matmul_1_readvariableop_resource-lstm_cell_754_biasadd_readvariableop_resource*
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
while_body_4570197*
condR
while_cond_4570196*K
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
NoOpNoOp%^lstm_cell_754/BiasAdd/ReadVariableOp$^lstm_cell_754/MatMul/ReadVariableOp&^lstm_cell_754/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_754/BiasAdd/ReadVariableOp$lstm_cell_754/BiasAdd/ReadVariableOp2J
#lstm_cell_754/MatMul/ReadVariableOp#lstm_cell_754/MatMul/ReadVariableOp2N
%lstm_cell_754/MatMul_1/ReadVariableOp%lstm_cell_754/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_837_input;
 serving_default_lstm_837_input:0?????????=
	dense_2790
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
2dense_279/kernel
:2dense_279/bias
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
0:.	?2lstm_837/lstm_cell_837/kernel
::8	d?2'lstm_837/lstm_cell_837/recurrent_kernel
*:(?2lstm_837/lstm_cell_837/bias
0:.	d?2lstm_838/lstm_cell_838/kernel
::8	2?2'lstm_838/lstm_cell_838/recurrent_kernel
*:(?2lstm_838/lstm_cell_838/bias
/:-2(2lstm_839/lstm_cell_839/kernel
9:7
(2'lstm_839/lstm_cell_839/recurrent_kernel
):'(2lstm_839/lstm_cell_839/bias
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
2Adam/dense_279/kernel/m
!:2Adam/dense_279/bias/m
5:3	?2$Adam/lstm_837/lstm_cell_837/kernel/m
?:=	d?2.Adam/lstm_837/lstm_cell_837/recurrent_kernel/m
/:-?2"Adam/lstm_837/lstm_cell_837/bias/m
5:3	d?2$Adam/lstm_838/lstm_cell_838/kernel/m
?:=	2?2.Adam/lstm_838/lstm_cell_838/recurrent_kernel/m
/:-?2"Adam/lstm_838/lstm_cell_838/bias/m
4:22(2$Adam/lstm_839/lstm_cell_839/kernel/m
>:<
(2.Adam/lstm_839/lstm_cell_839/recurrent_kernel/m
.:,(2"Adam/lstm_839/lstm_cell_839/bias/m
':%
2Adam/dense_279/kernel/v
!:2Adam/dense_279/bias/v
5:3	?2$Adam/lstm_837/lstm_cell_837/kernel/v
?:=	d?2.Adam/lstm_837/lstm_cell_837/recurrent_kernel/v
/:-?2"Adam/lstm_837/lstm_cell_837/bias/v
5:3	d?2$Adam/lstm_838/lstm_cell_838/kernel/v
?:=	2?2.Adam/lstm_838/lstm_cell_838/recurrent_kernel/v
/:-?2"Adam/lstm_838/lstm_cell_838/bias/v
4:22(2$Adam/lstm_839/lstm_cell_839/kernel/v
>:<
(2.Adam/lstm_839/lstm_cell_839/recurrent_kernel/v
.:,(2"Adam/lstm_839/lstm_cell_839/bias/v
?2?
0__inference_sequential_279_layer_call_fn_4567716
0__inference_sequential_279_layer_call_fn_4568454
0__inference_sequential_279_layer_call_fn_4568481
0__inference_sequential_279_layer_call_fn_4568332?
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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568908
K__inference_sequential_279_layer_call_and_return_conditional_losses_4569335
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568362
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568392?
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
"__inference__wrapped_model_4566167lstm_837_input"?
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
*__inference_lstm_837_layer_call_fn_4569346
*__inference_lstm_837_layer_call_fn_4569357
*__inference_lstm_837_layer_call_fn_4569368
*__inference_lstm_837_layer_call_fn_4569379?
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569522
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569665
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569808
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569951?
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
*__inference_lstm_838_layer_call_fn_4569962
*__inference_lstm_838_layer_call_fn_4569973
*__inference_lstm_838_layer_call_fn_4569984
*__inference_lstm_838_layer_call_fn_4569995?
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570138
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570281
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570424
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570567?
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
*__inference_lstm_839_layer_call_fn_4570578
*__inference_lstm_839_layer_call_fn_4570589
*__inference_lstm_839_layer_call_fn_4570600
*__inference_lstm_839_layer_call_fn_4570611?
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4570754
E__inference_lstm_839_layer_call_and_return_conditional_losses_4570897
E__inference_lstm_839_layer_call_and_return_conditional_losses_4571040
E__inference_lstm_839_layer_call_and_return_conditional_losses_4571183?
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
+__inference_dense_279_layer_call_fn_4571192?
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
F__inference_dense_279_layer_call_and_return_conditional_losses_4571202?
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
%__inference_signature_wrapper_4568427lstm_837_input"?
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
/__inference_lstm_cell_753_layer_call_fn_4571219
/__inference_lstm_cell_753_layer_call_fn_4571236?
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4571268
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4571300?
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
/__inference_lstm_cell_754_layer_call_fn_4571317
/__inference_lstm_cell_754_layer_call_fn_4571334?
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4571366
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4571398?
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
/__inference_lstm_cell_755_layer_call_fn_4571415
/__inference_lstm_cell_755_layer_call_fn_4571432?
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4571464
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4571496?
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
"__inference__wrapped_model_4566167?-./012345!";?8
1?.
,?)
lstm_837_input?????????
? "5?2
0
	dense_279#? 
	dense_279??????????
F__inference_dense_279_layer_call_and_return_conditional_losses_4571202\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_279_layer_call_fn_4571192O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569522?-./O?L
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569665?-./O?L
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569808q-./??<
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
E__inference_lstm_837_layer_call_and_return_conditional_losses_4569951q-./??<
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
*__inference_lstm_837_layer_call_fn_4569346}-./O?L
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
*__inference_lstm_837_layer_call_fn_4569357}-./O?L
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
*__inference_lstm_837_layer_call_fn_4569368d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_837_layer_call_fn_4569379d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570138?012O?L
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570281?012O?L
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570424q012??<
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
E__inference_lstm_838_layer_call_and_return_conditional_losses_4570567q012??<
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
*__inference_lstm_838_layer_call_fn_4569962}012O?L
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
*__inference_lstm_838_layer_call_fn_4569973}012O?L
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
*__inference_lstm_838_layer_call_fn_4569984d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_838_layer_call_fn_4569995d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_839_layer_call_and_return_conditional_losses_4570754}345O?L
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4570897}345O?L
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4571040m345??<
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
E__inference_lstm_839_layer_call_and_return_conditional_losses_4571183m345??<
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
*__inference_lstm_839_layer_call_fn_4570578p345O?L
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
*__inference_lstm_839_layer_call_fn_4570589p345O?L
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
*__inference_lstm_839_layer_call_fn_4570600`345??<
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
*__inference_lstm_839_layer_call_fn_4570611`345??<
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4571268?-./??}
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
J__inference_lstm_cell_753_layer_call_and_return_conditional_losses_4571300?-./??}
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
/__inference_lstm_cell_753_layer_call_fn_4571219?-./??}
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
/__inference_lstm_cell_753_layer_call_fn_4571236?-./??}
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4571366?012??}
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
J__inference_lstm_cell_754_layer_call_and_return_conditional_losses_4571398?012??}
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
/__inference_lstm_cell_754_layer_call_fn_4571317?012??}
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
/__inference_lstm_cell_754_layer_call_fn_4571334?012??}
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4571464?345??}
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
J__inference_lstm_cell_755_layer_call_and_return_conditional_losses_4571496?345??}
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
/__inference_lstm_cell_755_layer_call_fn_4571415?345??}
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
/__inference_lstm_cell_755_layer_call_fn_4571432?345??}
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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568362y-./012345!"C?@
9?6
,?)
lstm_837_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568392y-./012345!"C?@
9?6
,?)
lstm_837_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_279_layer_call_and_return_conditional_losses_4568908q-./012345!";?8
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
K__inference_sequential_279_layer_call_and_return_conditional_losses_4569335q-./012345!";?8
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
0__inference_sequential_279_layer_call_fn_4567716l-./012345!"C?@
9?6
,?)
lstm_837_input?????????
p 

 
? "???????????
0__inference_sequential_279_layer_call_fn_4568332l-./012345!"C?@
9?6
,?)
lstm_837_input?????????
p

 
? "???????????
0__inference_sequential_279_layer_call_fn_4568454d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_279_layer_call_fn_4568481d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4568427?-./012345!"M?J
? 
C?@
>
lstm_837_input,?)
lstm_837_input?????????"5?2
0
	dense_279#? 
	dense_279?????????